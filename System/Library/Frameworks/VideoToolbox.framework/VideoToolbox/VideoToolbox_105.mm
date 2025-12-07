uint64_t VTMetalTransferSessionGenerateColorBars(void *a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  cf = 0;
  values[0] = a1;
  if (a1 && (v4 = CFGetTypeID(a1), TypeID = CVPixelBufferGetTypeID(), v4 == TypeID))
  {
    v6 = VTMetalTransferSessionCreate(TypeID, 0, &cf);
    if (!v6)
    {
      if (cf)
      {
        v7 = CFGetTypeID(cf);
        if (v7 == VTPixelTransferNodeGetTypeID())
        {
          v8 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
          *(CMBaseObjectGetDerivedStorage() + 24) = 1;
          v9 = vtMetalTransferSessionTransferImageCommonSync(cf, 0, v8, 0);
          goto LABEL_7;
        }
      }

      v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3F10, 4294954394, "<<<< VTMetalTransferSession >>>>", 18230, v1);
    }
  }

  else
  {
    v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED6D3F10, 4294954394, "<<<< VTMetalTransferSession >>>>", 18226, v1);
  }

  v9 = v6;
  v8 = 0;
LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  objc_autoreleasePoolPop(v3);
  return v9;
}

uint64_t VTMetalTransferSessionCanTransferWithSession(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, const __CFDictionary *a5)
{
  if (!a1)
  {
    return 0;
  }

  v10 = objc_autoreleasePoolPush();
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 1793);
  if (a5)
  {
    VTPixelTransferChainNodeSessionSetProperties(a1, a5);
  }

  getKernelTypeCapabilities((DerivedStorage + 2161), a2, a3, &v16 + 1, &v16);
  if (a4 | v12 || VTMetalTransferSessionCanDoHighQualityScaling(a1, a2))
  {
    OUTLINED_FUNCTION_43_0();
    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v14;
}

uint64_t processBooleanProperty(uint64_t a1, char a2, char *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!a1 || FigCFEqual())
  {
    goto LABEL_8;
  }

  if (FigCFEqual())
  {
    a2 = 1;
LABEL_8:
    result = 0;
    *a3 = a2;
    return result;
  }

  if (FigCFEqual())
  {
    a2 = 0;
    goto LABEL_8;
  }

  return 4294954392;
}

uint64_t vtMetalTransferSessionRebuild(uint64_t a1, const __CFArray *a2, const __CFArray *a3, int a4)
{
  v615 = *MEMORY[0x1E69E9840];
  bzero(v602, 0x638uLL);
  cf = 0;
  if (a2 && CFArrayGetCount(a2) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    ValueAtIndex = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  if (CFArrayGetCount(a3) >= 1)
  {
    v8 = CFArrayGetValueAtIndex(a3, 0);
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:
  LODWORD(__dst[0]) = 0;
  FigCFDictionaryGetInt32IfPresent();
  v596 = __dst[0];
  OUTLINED_FUNCTION_58_0();
  FigCFDictionaryGetInt32IfPresent();
  v591 = __dst[0];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 1936) = 0;
  v10 = *MEMORY[0x1E695E480];
  if (a2)
  {
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a2);
  }

  else
  {
    Copy = 0;
  }

  allocator = v10;
  theArray = CFArrayCreateCopy(v10, a3);
  v12 = CFArrayGetValueAtIndex(theArray, 0);
  if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CFDictionaryGetTypeID()))
  {
LABEL_723:
    OUTLINED_FUNCTION_12_6();
    v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_724;
  }

  IntermediateScalingFormat = 0;
  *(DerivedStorage + 72) = 0;
  v593 = Copy;
  if (!*(DerivedStorage + 2136))
  {
    __dst[0] = 0;
    v16 = CMBaseObjectGetDerivedStorage();
    v17 = v16;
    if ((*(v16 + 2000) || (vtmtsCreateDefaultDevice((v16 + 2000), (v16 + 2008)), *(v17 + 2000))) && (v18 = OUTLINED_FUNCTION_17(), CVMetalTextureCacheCreate(v18, v19, v20, 0, v21), *(v17 + 48)))
    {
      OUTLINED_FUNCTION_17();
      CVMetalBufferCacheCreate();
      v22 = objc_alloc_init(MEMORY[0x1E6974170]);
      v23 = v22;
      if (v22)
      {
        *(v17 + 152) = 0;
        [v22 setMagFilter:1];
        [v23 setMinFilter:1];
        [v23 setNormalizedCoordinates:0];
        v24 = OUTLINED_FUNCTION_85();
        *(v17 + 168) = v24;
        if (v24)
        {
          [v23 setNormalizedCoordinates:1];
          v25 = OUTLINED_FUNCTION_85();
          *(v17 + 184) = v25;
          if (v25)
          {
            [v23 setMagFilter:0];
            [v23 setMinFilter:0];
            [v23 setNormalizedCoordinates:0];
            v26 = OUTLINED_FUNCTION_85();
            *(v17 + 160) = v26;
            if (v26)
            {
              [v23 setNormalizedCoordinates:1];
              v27 = OUTLINED_FUNCTION_85();
              *(v17 + 176) = v27;
              if (v27)
              {
                *(v17 + 2128) = 0;
                v28 = MEMORY[0x1E696AAE8];
                v29 = objc_opt_class();
                v30 = v28;
                Copy = v593;
                v31 = [*(v17 + 2000) newDefaultLibraryWithBundle:objc_msgSend(v30 error:{"bundleForClass:", v29), __dst}];
                *(v17 + 2136) = v31;
                if (*(v17 + 1784))
                {
                  v32 = *(v17 + 1784);
                }

                else
                {
                  v32 = @"com.apple.VideoToolbox.VTMetalTransferSession";
                }

                [v31 setLabel:v32];
                IntermediateScalingFormat = 0;
                goto LABEL_27;
              }
            }
          }
        }
      }
    }

    else
    {
      v23 = 0;
    }

    IntermediateScalingFormat = 4294954392;
LABEL_27:
  }

  v33 = [*(DerivedStorage + 2000) newCommandQueue];
  *(DerivedStorage + 2016) = v33;
  if (IntermediateScalingFormat)
  {
    goto LABEL_712;
  }

  if (!v33)
  {
    goto LABEL_723;
  }

  v595 = (DerivedStorage + 1784);
  if (*(DerivedStorage + 1784))
  {
    v34 = *(DerivedStorage + 1784);
  }

  else
  {
    v34 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v33 setLabel:v34];
  getpid();
  if (proc_can_use_foreground_hw())
  {
    v35 = theArray;
    if (a4)
    {
      v36 = 2;
    }

    else
    {
      v36 = 1;
    }

    [*(DerivedStorage + 2016) setGPUPriority:v36];
  }

  else
  {
    [*(DerivedStorage + 2016) setGPUPriority:2];
    v35 = theArray;
  }

  *(DerivedStorage + 2160) = a4;
  if (*(DerivedStorage + 1912))
  {
    [*(DerivedStorage + 2016) setSubmissionQueue:?];
  }

  if (*(DerivedStorage + 1920))
  {
    [*(DerivedStorage + 2016) setCompletionQueue:?];
  }

  v599 = DerivedStorage;
  if (Copy && CFArrayGetCount(Copy) >= 1)
  {
    v37 = 0;
    v38 = 1;
    while (1)
    {
      v39 = *(v599 + 2000);
      v40 = CFArrayGetCount(Copy) <= v37 ? 0 : CFArrayGetValueAtIndex(Copy, v37);
      v41 = vtCheckTextureLimits(v39, v40);
      if (v41)
      {
        break;
      }

      v37 = v38;
      v42 = CFArrayGetCount(Copy) <= v38++;
      v35 = theArray;
      if (v42)
      {
        goto LABEL_52;
      }
    }

LABEL_724:
    IntermediateScalingFormat = v41;
    goto LABEL_712;
  }

LABEL_52:
  if (v35 && CFArrayGetCount(v35) >= 1)
  {
    v43 = 0;
    v44 = 1;
    do
    {
      v45 = *(v599 + 2000);
      v46 = CFArrayGetCount(v35) <= v43 ? 0 : CFArrayGetValueAtIndex(v35, v43);
      v41 = vtCheckTextureLimits(v45, v46);
      if (v41)
      {
        goto LABEL_724;
      }

      v43 = v44;
      v35 = theArray;
      v42 = CFArrayGetCount(theArray) <= v44++;
    }

    while (!v42);
  }

  v47 = v599;
  v551 = (v599 + 1936);
  if (Copy)
  {
    if (*(v599 + 56))
    {
      Count = CFArrayGetCount(Copy);
      if (v35)
      {
        if (Count == 1 && CFArrayGetCount(v35) == 1)
        {
          v49 = v596 == 1651798066 || v596 == 1650946098;
          if (v49 && (v591 == 1651798066 || v591 == 1650946098))
          {
            LODWORD(__dst[0]) = 1065353216;
            *v604 = 1065353216;
            IsCropped = vtmtsGetIsCropped(ValueAtIndex);
            v52 = vtmtsGetIsCropped(v8);
            v53 = OUTLINED_FUNCTION_61_0();
            vtmtsGetRotationAndScale(v53, v54, v55, v56);
            IntermediateScalingFormat = 4294954391;
            if (!IsCropped && !v52 && *__dst == 1.0 && *v604 == 1.0)
            {
              IntermediateScalingFormat = vtmtsSetupMetalDirectBlitter(*(v599 + 2000), *(v599 + 1784), *(v599 + 2136), ValueAtIndex, v8, &cf);
              if (IntermediateScalingFormat)
              {
                goto LABEL_712;
              }
            }

            Mutable = cf;
            v59 = __src;
            if (cf)
            {
              goto LABEL_615;
            }

            goto LABEL_606;
          }
        }
      }
    }
  }

  v60 = *(v599 + 2000);
  LODWORD(v558) = *(v599 + 24);
  v592 = *(v599 + 88);
  v61 = *(v599 + 2008);
  bzero(__src, 0xA8uLL);
  Mutable = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  __src[12] = v60;
  __src[13] = v595;
  LOBYTE(__src[18]) = v61 == 0;
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_41_1();
  FigCFDictionaryGetInt32IfPresent();
  LODWORD(__src[0]) = __dst[0];
  __src[1] = v13;
  DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  HIDWORD(__src[16]) = getNativeTextureTypeForPixelFormat(__src[0]);
  v556 = DescriptionWithPixelFormatType;
  getSubsamplingFromPixelDescription(DescriptionWithPixelFormatType, &__src[17], &__src[17] + 1);
  v59 = __src;
  *(&__src[18] + 4) = xmmword_18FED05D0;
  v63 = FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() && FigCFDictionaryGetFloatIfPresent() || *(v599 + 1794) != 0;
  HIDWORD(v558) = v63;
  vtmtsGetDstCropDimensions(v13, &__src[10], &__src[10] + 1, &__src[9], &__src[9] + 1, &__src[11], &__src[11] + 1);
  v587 = Mutable;
  if (v558 != 2)
  {
    if (v558 != 1)
    {
      OUTLINED_FUNCTION_12_6();
      IntermediateScalingFormat = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v501, v502);
      cf = Mutable;
      if (IntermediateScalingFormat)
      {
        Copy = v593;
        goto LABEL_712;
      }

      Copy = v593;
      if (Mutable)
      {
        goto LABEL_615;
      }

      goto LABEL_606;
    }

    v64 = v593;
    if (!v593)
    {
      goto LABEL_158;
    }

    goto LABEL_159;
  }

  v64 = v593;
  if (!v593)
  {
LABEL_158:
    v108 = 0;
    v109 = 1;
    goto LABEL_164;
  }

  if (CFArrayGetCount(v593) <= 1)
  {
LABEL_159:
    if (CFArrayGetCount(v64) < 1)
    {
      v109 = 0;
      v108 = 0;
    }

    else
    {
      v110 = OUTLINED_FUNCTION_27();
      v108 = CFArrayGetValueAtIndex(v110, v111);
      v109 = 0;
    }

LABEL_164:
    bzero(v604, 0xD8uLL);
    *&v604[204] = 1065353216;
    *&v604[152] = v60;
    *&v604[160] = v595;
    v604[72] = 1;
    if (__src[9] || __src[10] != __src[11])
    {
      v604[72] = 0;
    }

    if (v108)
    {
      LOBYTE(v613[0]) = 1;
      OUTLINED_FUNCTION_58_0();
      FigCFDictionaryGetInt32IfPresent();
      *v604 = __dst[0];
      v121 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetBooleanIfPresent();
      FigCFDictionaryGetIntIfPresent();
      BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
      if (BooleanIfPresent && LOBYTE(v613[0]))
      {
        v604[72] = 0;
      }

      if (v121)
      {
        FigCFDictionaryGetBooleanIfPresent();
        CFDictionaryGetValue(v121, *MEMORY[0x1E6965CB8]);
        BooleanIfPresent = FigCFEqual();
        if (BooleanIfPresent)
        {
          v604[192] = 0;
        }
      }
    }

    else
    {
      v121 = 0;
    }

    v122 = v556;
    if (v556)
    {
      BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
      v122 = v556;
    }

    if (v109)
    {
      v123 = 0;
    }

    else
    {
      if (OUTLINED_FUNCTION_82(BooleanIfPresent, v114, v115, v116, v117, v118, v119, v120, v499, v501, v502, v503, v505, v506, v507, v508, v509, v510, v511, v512, v515, v516, v518, v520, v522, v524, v525, v526, v528, v530, v533, v536, v539, v542, v543, v544, v545[0], v545[1], v546, v547, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v559, v562, v563, v566, v567, theDict, v573, v577, v581, v585, v586, Mutable, v589) < 1)
      {
        v123 = 0;
      }

      else
      {
        v124 = OUTLINED_FUNCTION_17();
        v123 = CFArrayGetValueAtIndex(v124, v125);
      }

      v122 = v556;
    }

    vtmtsLoadColorFunctionConstantValues(v123, v13, v121, v122, &v604[180], &v604[176], &v604[168], &v604[184], &__src[15] + 1, &__src[15], &__src[14], &__src[16]);
    *&v604[188] = getNativeTextureTypeForPixelFormat(*v604);
    SubsamplingFromPixelDescription = getSubsamplingFromPixelDescription(v121, &v604[196], &v604[200]);
    if ((v109 & 1) != 0 || OUTLINED_FUNCTION_82(SubsamplingFromPixelDescription, v127, v128, v129, v130, v131, v132, v133, v500, v501, v502, v504, v505, v506, v507, v508, v509, v510, v511, v512, v515, v516, v518, v520, v522, v524, v525, v526, v528, v530, v533, v536, v539, v542, v543, v544, v545[0], v545[1], v546, v547, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v559, v562, v563, v566, v567, theDict, v573, v577, v581, v585, v586, v587, v589) < 1)
    {
      v136 = 0;
    }

    else
    {
      v134 = OUTLINED_FUNCTION_17();
      v136 = CFArrayGetValueAtIndex(v134, v135);
    }

    SrcCropDimensions = vtmtsGetSrcCropDimensions(v136, &v604[136], &v604[140], &v604[128], &v604[132], &v604[144], &v604[148], &v604[80], &v604[74]);
    if (*&v604[128] != 0.0 || *&v604[132] != 0.0 || *&v604[136] != *&v604[144] || *&v604[140] != *&v604[148])
    {
      v604[208] = 1;
    }

    if ((v109 & 1) != 0 || OUTLINED_FUNCTION_82(SrcCropDimensions, v138, v139, v140, v141, v142, v143, v144, v499, v501, v502, v504, v505, v506, v507, v508, v509, v510, v511, v512, v515, v516, v518, v520, v522, v524, v525, v526, v528, v530, v533, v536, v539, v542, v543, v544, v545[0], v545[1], v546, v547, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v559, v562, v563, v566, v567, theDict, v573, v577, v581, v585, v586, v587, v589) < 1)
    {
      v147 = 0;
    }

    else
    {
      v145 = OUTLINED_FUNCTION_17();
      v147 = CFArrayGetValueAtIndex(v145, v146);
    }

    theDicta = v121;
    *&v604[8] = v147;
    FigCFDictionaryGetFloatIfPresent();
    v148 = *v604 == 1647392369 || *v604 == 1651521076;
    v149 = MEMORY[0x1E6966218];
    if (!v148)
    {
      v590 = 0;
      v548 = *MEMORY[0x1E6966218];
      v153 = allocator;
LABEL_207:
      v534 = &__dst[21];
      v537 = &__dst[22];
      v531 = &v604[172];
      v517 = *MEMORY[0x1E69662D8];
      v519 = *MEMORY[0x1E6966290];
      v527 = &v604[73];
      v529 = &v613[14] + 1;
      v521 = &v613[4];
      v568 = &__dst[5];
      *v523 = xmmword_18FED05F0;
      *v540 = xmmword_18FED05E0;
      v154 = 1;
      while (1)
      {
        v155 = 0;
        LODWORD(v555) = v154;
        LOBYTE(__dst[0]) = 0;
        LOBYTE(v613[0]) = 0;
        if (!*&v604[212])
        {
          v155 = *(v47 + 1848) != 0;
        }

        v156 = __src[0];
        getKernelTypeCapabilities((v47 + 2161), *v604, LODWORD(__src[0]), __dst, v613);
        if (LOBYTE(__dst[0]))
        {
          v157 = *(v47 + 1792) == 0;
        }

        else
        {
          v157 = 1;
        }

        v158 = v157;
        if (v604[74])
        {
          v159 = 0;
        }

        else
        {
          v159 = v158;
        }

        if (LOBYTE(v613[0]))
        {
          v160 = v159;
        }

        else
        {
          v160 = 0;
        }

        v161 = v160 & v155;
        if (__src[10] != __src[11] && *(v47 + 1794))
        {
          v161 = 0;
        }

        if (v156 == 846624102 || v156 == 846624121 || v156 == 1983000886 || v156 == 2037741171 || v156 == 2037741158)
        {
          v161 = 0;
        }

        v583 = v161;
        v166 = [(__CFDictionary *)v60 newBufferWithLength:16 options:0];
        v167 = v166;
        if (v166)
        {
          v168 = [v166 contents];
          if (v168)
          {
            *v168 = *v540;
          }
        }

        if (*v595)
        {
          v169 = *v595;
        }

        else
        {
          v169 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        [v167 setLabel:v169];
        v170 = [(__CFDictionary *)v60 newBufferWithLength:212 options:0];
        if (*v595)
        {
          v171 = *v595;
        }

        else
        {
          v171 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        v575 = v170;
        [v170 setLabel:v171];
        memcpy(v613, __src, sizeof(v613));
        memcpy(__dst, v604, sizeof(__dst));
        if (*&v604[212])
        {
          v173 = *&v604[212] == 180;
        }

        else
        {
          v173 = 1;
        }

        *&v172 = *&v604[136];
        *v564 = v172;
        if (v173)
        {
          v174 = *&v604[136];
        }

        else
        {
          v174 = *&v604[140];
        }

        if (v173)
        {
          v175 = *&v604[140];
        }

        else
        {
          v175 = *&v604[136];
        }

        v176 = 1;
        v177 = *&v604[212] | v604[209];
        v178 = v177 == 0;
        if (v177)
        {
          v179 = v583;
          if (!v174)
          {
            goto LABEL_266;
          }
        }

        else
        {
          v179 = v583;
          if (!v604[210])
          {
            v176 = *(v47 + 1793) != 0;
          }

          if (!v174)
          {
            goto LABEL_266;
          }
        }

        if (v174 != LODWORD(__src[10]) && !v176)
        {
          v180 = v604[74] == 0;
          if (!v175)
          {
            goto LABEL_268;
          }

          goto LABEL_267;
        }

LABEL_266:
        v180 = 0;
        if (!v175)
        {
          goto LABEL_268;
        }

LABEL_267:
        if (v175 == HIDWORD(__src[10]) || v176)
        {
LABEL_268:
          v181 = 0;
          if (v178)
          {
            goto LABEL_269;
          }

          goto LABEL_271;
        }

        v181 = v604[74] == 0;
        if (v178)
        {
LABEL_269:
          v182 = (v604[210] | v179) == 0;
          goto LABEL_272;
        }

LABEL_271:
        v182 = 0;
LABEL_272:
        LODWORD(v550) = v176;
        v579 = v167;
        v604[72] = v182;
        LOBYTE(v606) = 0;
        if ((v179 & (v180 && v181)) == 1)
        {
          LOBYTE(v613[18]) = 0;
        }

        *&v172 = v59[10];
        *v560 = v172;
        v183 = v174 > v172 && v180;
        HIDWORD(v554) = v183;
        v184 = v181;
        v185 = v175 > DWORD1(v172) && v181;
        LODWORD(v553) = v185;
        OUTLINED_FUNCTION_1_21();
        MEMORY[0x193AE3010](&_MergedGlobals_1);
        v186 = OUTLINED_FUNCTION_86(v153, _MergedGlobals_393);
        *&v187 = LODWORD(v564[0]);
        *(&v187 + 1) = HIDWORD(v564[0]);
        v188 = v187;
        *&v187 = LODWORD(v560[0]);
        *(&v187 + 1) = HIDWORD(v560[0]);
        *(v186 + 40) = v187;
        *(v186 + 24) = v188;
        *(v186 + 64) = 0;
        *(v186 + 66) = *(v47 + 1794);
        *(v186 + 1684) = 1;
        v189 = [(__CFDictionary *)v60 newBufferWithLength:1000 options:0];
        *(v186 + 104) = v189;
        if (*(v47 + 1784))
        {
          v190 = *(v47 + 1784);
        }

        else
        {
          v190 = @"com.apple.VideoToolbox.VTMetalTransferSession";
        }

        [v189 setLabel:v190];
        v564[0] = [*(v186 + 104) contents];
        if (v558 == 2 && (v604[192] || *&v604[204] < 1.0))
        {
          *(v186 + 1694) = 1;
          v604[72] = 0;
        }

        v191 = CFArrayCreateMutable(v153, 0, MEMORY[0x1E695E9C0]);
        v192 = v180 && v184;
        if (v583 && v192)
        {
          OUTLINED_FUNCTION_31_1();
          v193 = OUTLINED_FUNCTION_26_2();
          getKernelTypeCapabilities(v193, v194, v195, v196, v197);
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_30_1();
          if (!v49)
          {
            v198 = v200;
          }

          if (v199)
          {
            OUTLINED_FUNCTION_49_0();
            if (!v49)
            {
              v198 = v201;
            }
          }

          v202 = 0;
          v203 = 0;
          *&v604[68] = v198;
          *(v186 + 16) = v198;
          *(v186 + 401) = 257;
          *(v186 + 64) = 1;
          v604[75] = 1;
          LODWORD(v613[3]) = v198;
          v59[50] = v59[10];
          goto LABEL_295;
        }

        if (v192)
        {
          v205 = *v604;
          LODWORD(v613[10]) = *&v604[136];
          v613[11] = __PAIR64__(HIDWORD(v613[10]), *&v604[136]);
          __dst[18] = __PAIR64__(HIDWORD(v613[10]), *&v604[136]);
          HIDWORD(__dst[17]) = HIDWORD(v613[10]);
          __dst[16] = 0;
          v613[9] = 0;
          v613[17] = *&v604[196];
          v610[0] = 0;
          v609[0] = 0;
          getKernelTypeCapabilities_source((v47 + 2161), *v604, v610, v609);
          v206 = 2 * (v610[0] != 0);
          if (v609[0])
          {
            v206 = 3;
          }

          if (*(v47 + 1945))
          {
            v206 = 2;
          }

          *&v604[68] = v206;
          v604[75] = 0;
          *(v186 + 16) = v206;
          v561 = v206;
          LODWORD(v613[3]) = v206;
          IntermediateScalingFormat = vtmtsGetIntermediateScalingFormat((v47 + 2161), v205, __dst, &__dst[4], 1, &__dst[8]);
          OUTLINED_FUNCTION_45_0();
          if (v207)
          {
            v208 = 2;
            LODWORD(__dst[8]) = 2;
          }

          else
          {
            v208 = __dst[8];
          }

          LODWORD(v613[0]) = __dst[0];
          LODWORD(v613[8]) = v208;
          if (IntermediateScalingFormat)
          {
            goto LABEL_448;
          }

          v218 = CVPixelFormatDescriptionCreateWithPixelFormatType(allocator, __dst[0]);
          if (v218)
          {
            v219 = v218;
            LOBYTE(v614[0]) = 0;
            FigCFDictionaryGetBooleanIfPresent();
            if (LOBYTE(v614[0]))
            {
              Value = FigCFDictionaryGetValue();
              if (Value)
              {
                v221 = Value;
                v222 = CFGetTypeID(Value);
                if (v222 == CFArrayGetTypeID())
                {
                  LODWORD(Value) = CFArrayGetCount(v221);
                }

                else
                {
                  LODWORD(Value) = 0;
                }
              }

              if (Value)
              {
                v231 = (Value - 1);
              }

              else
              {
                v231 = 0;
              }
            }

            else
            {
              v231 = 0xFFFFFFFFLL;
            }

            CFRelease(v219);
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v501, v502);
            v231 = 0xFFFFFFFFLL;
          }

          v245 = 0;
          v246 = __dst[4];
          v247 = v521;
          v248 = 32;
          while (1)
          {
            v249 = v613[10];
            v250 = HIDWORD(v613[10]);
            *v247 = v246;
            if (v245)
            {
              if (LODWORD(v613[17]) == 2 && v231 != v245)
              {
                v249 = (v249 + 1) / 2;
                if (HIDWORD(v613[17]) == 2)
                {
                  v250 = (v250 + 1) / 2;
                }
              }
            }

            MetalTextureForList = vtAllocateMetalTextureForList(v60, v249, v250, v246, v245, v592);
            if (MetalTextureForList)
            {
              IntermediateScalingFormat = MetalTextureForList;
              goto LABEL_399;
            }

            if (v245 == 3)
            {
              break;
            }

            v246 = v568[v245];
            v248 -= 8;
            ++v247;
            ++v245;
            if (!v246)
            {
              if ((v245 - 1) <= 2)
              {
                bzero(v247, v248);
              }

              break;
            }
          }

          v203 = 0;
          v202 = 1;
          *(v186 + 402) = 1;
          *(v186 + 66) = 0;
          v59 = __src;
          v204 = v561;
          if (!*(v186 + 16))
          {
            goto LABEL_311;
          }
        }

        else
        {
          if (!v180)
          {
            if (v184)
            {
              OUTLINED_FUNCTION_31_1();
              v223 = LODWORD(v613[0]);
              v224 = OUTLINED_FUNCTION_26_2();
              getKernelTypeCapabilities(v224, v225, v223, v226, v227);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_30_1();
              if (!v49)
              {
                v198 = v229;
              }

              if (v228)
              {
                OUTLINED_FUNCTION_49_0();
                if (!v49)
                {
                  v198 = v230;
                }
              }

              v202 = 0;
              v203 = 0;
              *&v604[68] = v198;
              v604[75] = 0;
              *(v186 + 16) = v198;
              *(v186 + 402) = 1;
              HIDWORD(__dst[18]) = HIDWORD(v613[10]);
              LODWORD(v613[3]) = v198;
              HIDWORD(v613[11]) = HIDWORD(__src[11]);
              HIDWORD(__dst[17]) = HIDWORD(v613[10]);
              LODWORD(__dst[0]) = v223;
            }

            else
            {
              OUTLINED_FUNCTION_31_1();
              v232 = OUTLINED_FUNCTION_26_2();
              getKernelTypeCapabilities(v232, v233, v234, v235, v236);
              OUTLINED_FUNCTION_7_9();
              OUTLINED_FUNCTION_30_1();
              if (!v49)
              {
                v198 = v238;
              }

              if (v237)
              {
                OUTLINED_FUNCTION_49_0();
                if (!v49)
                {
                  v198 = v239;
                }
              }

              *&v604[68] = v198;
              v240 = v604[74];
              v604[75] = v604[74] == 0;
              *(v186 + 16) = v198;
              LODWORD(v613[3]) = v198;
              v241 = __src[10];
              v242 = HIDWORD(__src[10]);
              v244 = v174 == LODWORD(__src[10]) && v175 == HIDWORD(__src[10]) && (*(v47 + 1958) | v240) == 0;
              v202 = 0;
              v203 = 0;
              *(v186 + 400) = v244;
              *(v186 + 404) = *(v47 + 1959);
              __dst[17] = __PAIR64__(v242, v241);
            }

LABEL_295:
            v204 = v198;
            if (!v198)
            {
              goto LABEL_311;
            }

            goto LABEL_356;
          }

          OUTLINED_FUNCTION_31_1();
          v209 = LODWORD(v613[0]);
          v210 = OUTLINED_FUNCTION_26_2();
          getKernelTypeCapabilities(v210, v211, v209, v212, v213);
          OUTLINED_FUNCTION_7_9();
          OUTLINED_FUNCTION_30_1();
          if (!v49)
          {
            v214 = v216;
          }

          if (v215)
          {
            OUTLINED_FUNCTION_49_0();
            if (!v49)
            {
              v214 = v217;
            }
          }

          v202 = 0;
          *&v604[68] = v214;
          *(v186 + 16) = v214;
          *(v186 + 401) = 1;
          v604[75] = 0;
          LODWORD(__dst[18]) = v613[10];
          LODWORD(v613[3]) = v214;
          LODWORD(v613[11]) = __src[11];
          LODWORD(__dst[17]) = v613[10];
          LODWORD(__dst[0]) = v209;
          v204 = v214;
          v203 = v184;
          if (!v214)
          {
LABEL_311:
            IntermediateScalingFormat = 4294954391;
LABEL_448:
            CFRelease(v186);
            goto LABEL_449;
          }
        }

LABEL_356:
        LODWORD(v560[0]) = v204;
        v254 = v204 == 2 && (LODWORD(v613[11]) != LODWORD(v613[10]) || HIDWORD(v613[11]) != HIDWORD(v613[10]));
        *(v186 + 65) = v254;
        if (((v202 | v203) & 1) == 0)
        {
          v255 = v203;
          v256 = v202;
          OUTLINED_FUNCTION_51_0();
          OUTLINED_FUNCTION_25_2();
          v262 = OUTLINED_FUNCTION_77(v257, v258, v259, v260, v261, v537, v499, v501, v502, v504, v505, v506, v186 + 280, v531, v529, v579, (v186 + 2200), v527, &v606, v517, v519, v521, v523[0], v523[1], v525, v527, v529, v531, v534, v537, v540[0], v540[1], v543, v544, v545[0], v545[1], v546, v548, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v560[0], v560[1], v564[0], v564[1], v568, theDicta);
          v202 = v256;
          v203 = v255;
          if (v262)
          {
LABEL_469:
            IntermediateScalingFormat = v262;
            goto LABEL_448;
          }
        }

        LODWORD(v545[0]) = v203;
        LODWORD(v544) = v202;
        if (*&v604[32])
        {
          v263 = 0;
          *(v186 + 280) = *v604;
          while (1)
          {
            v264 = *&v604[8 * v263 + 32];
            if (!v264)
            {
LABEL_371:
              LODWORD(v549[0]) = v263 + v590;
              v47 = v599;
              goto LABEL_376;
            }

            TexDescGlobalSample = vtCreateTexDescGlobalSample(v60, v191, v186 + 280, *v604, v264, *&v604[64], v590 + v263, v263, v263);
            if (TexDescGlobalSample)
            {
              break;
            }

            if (++v263 == 4)
            {
              goto LABEL_371;
            }
          }

          IntermediateScalingFormat = TexDescGlobalSample;
          v47 = v599;
        }

        else
        {
          OUTLINED_FUNCTION_45_0();
          v267 = (v266 & 1) != 0 || v606 != 0;
          v262 = vtmtsBuildSource(v60, v604, v267, v186 + 280, v564[0], v191);
          LODWORD(v549[0]) = v590;
          if (v262)
          {
            goto LABEL_469;
          }

LABEL_376:
          if (v613[4])
          {
            v59 = 0;
            v47 = 0;
            while (1)
            {
              v268 = v613[v59 + 4];
              if (!v268)
              {
LABEL_383:
                OUTLINED_FUNCTION_55_0();
                goto LABEL_384;
              }

              v269 = *v604;
              v270 = v613[0];
              v271 = v613[8];
              if (v191)
              {
                CFArrayGetCount(v191);
              }

              OUTLINED_FUNCTION_60_0();
              v274 = vtCreateTexDescGlobalWrite(v60, v269, v191, v186 + 1564, v270, v268, v271, v273, v59, v272, v501, SHIDWORD(v501));
              if (v274)
              {
                break;
              }

              v59 = (v59 + 1);
              if (v59 == 4)
              {
                goto LABEL_383;
              }
            }

            IntermediateScalingFormat = v274;
            v47 = v599;
LABEL_399:
            v59 = __src;
          }

          else
          {
            if (v191)
            {
              v316 = CFArrayGetCount(v191);
            }

            else
            {
              v316 = 0;
            }

            HIDWORD(v613[0]) = v316;
            OUTLINED_FUNCTION_45_0();
            v318 = (v317 & 1) != 0 || v606 != 0;
            v319 = vtmtsBuildDestination(v60, v613, v318, v186 + 280, v191);
            if (!v319)
            {
LABEL_384:
              if (*(v186 + 64))
              {
                *(v186 + 404) = 0;
              }

              else if (*(v186 + 401) || *(v186 + 402))
              {
                *(v186 + 396) = 0;
              }

              if (v191)
              {
                v275 = CFRetain(v191);
              }

              else
              {
                v275 = 0;
              }

              *(v186 + 272) = v275;
              vtmtsFixUpProcessingShortcuts((v186 + 280), v606);
              *(v186 + 428) = *&v604[176];
              v282 = *&v604[184];
              *(v186 + 420) = *&v604[168];
              *(v186 + 436) = v282;
              *(v186 + 1672) = v613[15];
              v283 = v613[16];
              *(v186 + 1664) = v613[14];
              *(v186 + 1680) = v283;
              if (v604[74])
              {
                v614[0] = *&v604[80];
                OUTLINED_FUNCTION_75();
                *(v284 + 184) = v285;
                *(v284 + 200) = *(v286 + 112);
                setupAffine(0, v287, v614, v288, v289, v290, v291, v292, v293, v564[0]);
                *(v186 + 400) = 0;
                *(v186 + 396) = 0;
              }

              else
              {
                v294 = *(v186 + 396);
                if (v294)
                {
                  *(v186 + 404) = 0;
                }

                if (*(v186 + 66))
                {
                  v295 = *(v186 + 65) != 0;
                }

                else
                {
                  v295 = 1;
                }

                v296 = (v550 & 1) != 0 || *(v47 + 1958) != 0;
                *&v513 = v186 + 2184;
                *(&v513 + 1) = v186 + 2192;
                setupRenderRotationAndCrop(v60, v294 != 0, v613, (v47 + 2161), v595, 0, *v604, v295, *&v604[136], *&v613[9], v276, v277, v278, v279, v280, v281, *(v186 + 64), LODWORD(v560[0]) == 2, *(v186 + 400), v296, (*(v186 + 404) != 0) & (v544 & LOBYTE(v545[0]) ^ 1), v604[209], v604[210], *&v604[212], *&v604[128], *&v604[132], *&v604[136], *&v604[140], *&v604[144], *&v604[148], v613[9], SHIDWORD(v613[9]), v613[10], SHIDWORD(v613[10]), v613[11], SHIDWORD(v613[11]), (v186 + 80), (v186 + 88), v564[0], v513);
              }

              if (HIDWORD(v558) && (v558 == 2 || *(v186 + 66)))
              {
                LODWORD(v614[0]) = 0;
                if (v613[2])
                {
                  FigCFDictionaryGetInt32IfPresent();
                }

                v298 = OUTLINED_FUNCTION_33_1();
                setupBackgroundColor(v299, v300, v301, v302, v303, *(v186 + 104), v298, v306, v307, v308, v304, v305);
                *(v186 + 1695) = 1;
                *(v564[0] + 104) = *&v604[204];
                if (!v191)
                {
                  goto LABEL_415;
                }

LABEL_411:
                v297 = CFArrayGetCount(v191);
              }

              else
              {
                if (v191)
                {
                  goto LABEL_411;
                }

LABEL_415:
                v297 = 0;
              }

              if (*(v186 + 2184))
              {
                *(v186 + 380) = v297++;
              }

              if (*(v186 + 2192))
              {
                *(v186 + 384) = v297++;
              }

              if (*(v186 + 2200))
              {
                *(v186 + 388) = v297;
              }

              if (v583 && *(v186 + 64))
              {
                v309 = 0;
                goto LABEL_429;
              }

              if (!*(v186 + 400))
              {
                v309 = 1;
                goto LABEL_429;
              }

              v310 = v560[0];
              if (*(v186 + 405))
              {
                v309 = 1;
                goto LABEL_430;
              }

              v309 = 1;
              if (!*(v186 + 1644) && *&v604[196] == 1)
              {
                if (*&v604[200] == 1 && LODWORD(v613[17]) == 1)
                {
                  v309 = HIDWORD(v613[17]) != 1;
                }

LABEL_429:
                v310 = v560[0];
              }

LABEL_430:
              if (v310 == 2)
              {
                VTMTSRenderPassDescriptorSetFunctionName(v186, @"VTMTSFragmentFunction");
                goto LABEL_435;
              }

              if (v310 == 3)
              {
                if (v309)
                {
                  VTMTSRenderPassDescriptorSetFunctionName(v186, @"VTMTSComputeFunction");
                  goto LABEL_436;
                }

                VTMTSRenderPassDescriptorSetFunctionName(v186, @"VTMTSComputeFunction1x1");
LABEL_446:
                v311 = vdupq_n_s64(1uLL);
              }

              else
              {
LABEL_435:
                if (!v309)
                {
                  goto LABEL_446;
                }

LABEL_436:
                v311 = *v523;
              }

              *(v186 + 176) = v311;
              *(v186 + 192) = 1;
              v313 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(*(v186 + 66) == 0), 0x1FuLL)), v613[10], v613[11]);
              *&v314 = v313.i32[0];
              *(&v314 + 1) = v313.i32[1];
              *(v186 + 152) = v314;
              *(v186 + 168) = 1;
              HIDWORD(__dst[25]) = 1065353216;
              memcpy(v604, __dst, sizeof(v604));
              CFArrayAppendValue(v587, v186);
              IntermediateScalingFormat = 0;
              *(v186 + 120) = v579;
              *(v186 + 128) = v575;
              v590 = v549[0];
              v575 = 0;
              v579 = 0;
              goto LABEL_448;
            }

            IntermediateScalingFormat = v319;
          }
        }

        if (v186)
        {
          goto LABEL_448;
        }

LABEL_449:
        if (v191)
        {
          CFRelease(v191);
        }

        Mutable = v587;
        if (IntermediateScalingFormat)
        {
          goto LABEL_721;
        }

        v153 = allocator;
        if (*&v604[136] != __src[10])
        {
          OUTLINED_FUNCTION_9_8();
          MEMORY[0x193AE3010](&unk_1ED6D3CE8);
          Instance = _CFRuntimeCreateInstance();
          CFArrayAppendValue(v587, Instance);
          if (Instance)
          {
            CFRelease(Instance);
          }

          v154 = 0;
          if (v555)
          {
            continue;
          }
        }

        goto LABEL_604;
      }
    }

    v603 = 0;
    memset(v614, 0, sizeof(v614));
    FigCFDictionaryGetBooleanIfPresent();
    if (*v604 == 1647392369)
    {
      *&v614[0] = 0x300000002;
      v150 = 2;
      if (!v603)
      {
        v152 = 2;
        goto LABEL_474;
      }

      v151 = v614 + 8;
      v152 = 3;
    }

    else
    {
      v150 = 4;
      LODWORD(v614[0]) = 4;
      if (!v603)
      {
        v152 = 1;
        goto LABEL_474;
      }

      v151 = v614 + 4;
      v152 = 2;
    }

    *v151 = 5;
LABEL_474:
    v153 = allocator;
    v320 = 0;
    v590 = 0;
    HIDWORD(v554) = 0;
    v550 = v152 - 1;
    v544 = &__dst[21];
    v541 = &__dst[22];
    v553 = *MEMORY[0x1E69661F8];
    v535 = &v613[14] + 1;
    v538 = &v604[172];
    v532 = &v604[73];
    v548 = *v149;
    v555 = v152;
    *v549 = xmmword_18FED05F0;
    *v545 = xmmword_18FED05E0;
    while (1)
    {
      v321 = [(__CFDictionary *)v60 newBufferWithLength:16 options:0];
      v322 = v321;
      if (v321)
      {
        v323 = [v321 contents];
        if (v323)
        {
          *v323 = *v545;
        }
      }

      v324 = *v595 ? *v595 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      v580 = v322;
      [v322 setLabel:v324];
      v325 = [(__CFDictionary *)v60 newBufferWithLength:212 options:0];
      v326 = *v595 ? *v595 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      v569 = v325;
      [v325 setLabel:v326];
      memcpy(v613, __src, sizeof(v613));
      memcpy(__dst, v604, sizeof(__dst));
      v611 = 0;
      *&v327 = *&v604[136];
      *(&v327 + 1) = *&v604[140];
      OUTLINED_FUNCTION_1_21();
      MEMORY[0x193AE3010](&_MergedGlobals_1);
      v328 = v153;
      v329 = OUTLINED_FUNCTION_86(v153, _MergedGlobals_393);
      *(v329 + 24) = v327;
      *&v330 = OUTLINED_FUNCTION_64_0(v329);
      *(v331 + 1694) = 0;
      v332 = [(__CFDictionary *)v60 newBufferWithLength:1000 options:0, v330];
      *(v329 + 104) = v332;
      v333 = *v595 ? *v595 : @"com.apple.VideoToolbox.VTMetalTransferSession";
      [v332 setLabel:v333];
      v584 = [*(v329 + 104) contents];
      v334 = CFArrayCreateMutable(v328, 0, MEMORY[0x1E695E9C0]);
      if (!*&v604[212] && !v604[209] && !v604[210])
      {
        v335 = v320 == v550 && *&v604[136] == LODWORD(__src[10]);
        v336 = v335 && *&v604[140] == HIDWORD(__src[10]);
        if (v336 && !v604[74])
        {
          break;
        }
      }

      v338 = VTGetBitsPerComponentFromPixelFormatType(LODWORD(__src[0])) > 12 && LODWORD(__src[0]) != 1380411457;
      v339 = *(v47 + 2185);
      if (*(v47 + 2185))
      {
        v339 = *(v47 + 2201) != 0;
      }

      v340 = (v338 & v339) == 0;
      if ((v338 & v339) != 0)
      {
        v341 = 1380410945;
      }

      else
      {
        v341 = 1380411457;
      }

      v59[69] = vcvt_s32_f32(v59[49]);
      *&v342 = *&v604[136];
      v59[51] = *&v604[136];
      *(&v342 + 1) = v342;
      *(v59 + 35) = v342;
      v343 = 65;
      if (!v340)
      {
        v343 = 105;
      }

      v344 = 115;
      if (!v340)
      {
        v344 = 125;
      }

      if (v150 == 2)
      {
        v345 = v343;
      }

      else
      {
        v345 = v344;
      }

      v59[37] = v345;
      v59[38] = 0;
      LODWORD(__dst[8]) = 2;
      LODWORD(v613[0]) = v341;
      LODWORD(v613[8]) = 2;
      v59[64] = v345;
      v59[65] = 0;
      LODWORD(v613[14]) = __dst[21];
      LODWORD(v613[15]) = __dst[22];
      LODWORD(v613[16]) = __dst[23];
      if (!vtAllocateMetalTextureForList(v60, v342, SDWORD1(v342), v345, 0, v592))
      {
        goto LABEL_519;
      }

LABEL_521:
      v565 = v320;
      v346 = v59[64];
      LODWORD(v559) = v346 == 0;
      v576 = v613[3];
      if (!v346)
      {
        OUTLINED_FUNCTION_51_0();
        OUTLINED_FUNCTION_25_2();
        v352 = OUTLINED_FUNCTION_77(v347, v348, v349, v350, v351, v541, v499, v501, v502, v504, v505, v506, v329 + 280, v538, v535, v580, (v329 + 2200), v532, &v611, v516, v518, v520, v522, v524, v525, v526, v528, v532, v535, v538, v541, v542, v543, v544, v545[0], v545[1], v546, v548, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v559, v562, v320, v566, v569, theDicta);
        if (v352)
        {
          goto LABEL_597;
        }
      }

      if (*&v604[32])
      {
        v353 = 0;
        *(v329 + 280) = *v604;
        while (1)
        {
          v354 = *&v604[8 * v353 + 32];
          if (!v354)
          {
LABEL_528:
            v356 = v353 + v590;
            v47 = v599;
            goto LABEL_530;
          }

          v355 = vtCreateTexDescGlobalSample(v60, v334, v329 + 280, *v604, v354, *&v604[64], v590 + v353, v353, v353);
          if (v355)
          {
            break;
          }

          if (++v353 == 4)
          {
            goto LABEL_528;
          }
        }

        IntermediateScalingFormat = v355;
      }

      else
      {
        v352 = vtmtsBuildSource(v60, v604, 0, v329 + 280, v584, v334);
        v356 = v590;
        if (v352)
        {
          goto LABEL_597;
        }

LABEL_530:
        theDictb = v356;
        if (!v59[64])
        {
          if (v334)
          {
            v408 = CFArrayGetCount(v334);
          }

          else
          {
            v408 = 0;
          }

          HIDWORD(v613[0]) = v408;
          v352 = vtmtsBuildDestination(v60, v613, *(v329 + 392), v329 + 280, v334);
          if (v352)
          {
LABEL_597:
            IntermediateScalingFormat = v352;
            theDictb = v590;
            v406 = v580;
            v405 = v569;
            v404 = HIDWORD(v554);
            goto LABEL_582;
          }

LABEL_538:
          if (v334)
          {
            v363 = CFRetain(v334);
          }

          else
          {
            v363 = 0;
          }

          *(v329 + 272) = v363;
          vtmtsFixUpProcessingShortcuts((v329 + 280), v611);
          *(v329 + 428) = *&v604[176];
          v370 = *&v604[184];
          *(v329 + 420) = *&v604[168];
          *(v329 + 436) = v370;
          *(v329 + 1672) = v59[75];
          v371 = v613[16];
          *(v329 + 1664) = v613[14];
          *(v329 + 1680) = v371;
          if (v346)
          {
            v372 = 0;
            v373 = 0;
            v374 = 0;
            v59[29] = 0;
            v59[30] = 0;
            v375 = 1.0;
            v59[27] = 0;
            v59[28] = 0;
          }

          else
          {
            HIDWORD(v375) = *&v604[84];
            *(v59 + 29) = *&v604[88];
            v364 = *&v604[112];
            *(v59 + 27) = *&v604[112];
            v372 = v604[209];
            v373 = v604[210];
            v374 = *&v604[212];
          }

          v376 = v580;
          if (v604[74])
          {
            OUTLINED_FUNCTION_75();
            v59[21] = v377;
            v607 = *(v59 + 29);
            v59[24] = v378;
            v608 = *(v59 + 27);
            setupAffine(0, v379, &v606, v380, v381, v382, v383, v384, v385, v584);
            *(v329 + 400) = 0;
          }

          else
          {
            LODWORD(v375) = *&v604[132];
            v386 = *(v47 + 1794) == 0;
            v387 = *(v47 + 1793);
            *&v514 = v329 + 2184;
            *(&v514 + 1) = v329 + 2192;
            v376 = v580;
            v47 = v599;
            setupRenderRotationAndCrop(v60, 0, 0, (v599 + 2161), v595, 0, *v604, v386, *&v613[9], v375, v364, v365, v366, v367, v368, v369, v576 == 2, *(v329 + 64), *(v329 + 400), v387, *(v329 + 404), v372, v373, v374, *&v604[128], *&v604[132], *&v604[136], *&v604[140], *&v604[144], *&v604[148], v613[9], SHIDWORD(v613[9]), v613[10], SHIDWORD(v613[10]), v613[11], SHIDWORD(v613[11]), (v329 + 80), (v329 + 88), v584, v514);
          }

          if (HIDWORD(v558))
          {
            v606 = 0;
            if (v613[2])
            {
              FigCFDictionaryGetInt32IfPresent();
            }

            v388 = OUTLINED_FUNCTION_33_1();
            setupBackgroundColor(v389, v390, v391, v392, v393, *(v329 + 104), v388, v396, v397, v398, v394, v395);
            *(v329 + 1695) = 1;
            v584[13].i32[0] = *&v604[204];
          }

          if (v334)
          {
            v399 = CFArrayGetCount(v334);
          }

          else
          {
            v399 = 0;
          }

          if (*(v329 + 2184))
          {
            *(v329 + 380) = v399++;
          }

          if (*(v329 + 2192))
          {
            *(v329 + 384) = v399++;
          }

          if (*(v329 + 2200))
          {
            *(v329 + 388) = v399;
          }

          if (*(v329 + 400) && !*(v329 + 405))
          {
            v400 = 0;
            if (!*(v329 + 1644) && *&v604[196] == 1)
            {
              if (*&v604[200] != 1 || LODWORD(v613[17]) != 1)
              {
                goto LABEL_562;
              }

              v400 = HIDWORD(v613[17]) == 1;
            }
          }

          else
          {
LABEL_562:
            v400 = 0;
          }

          if (v576 == 3)
          {
            if (!v400)
            {
              VTMTSRenderPassDescriptorSetFunctionName(v329, @"VTMTSComputeFunction");
              goto LABEL_580;
            }

            VTMTSRenderPassDescriptorSetFunctionName(v329, @"VTMTSComputeFunction1x1");
          }

          else
          {
            if (v576 == 2)
            {
              VTMTSRenderPassDescriptorSetFunctionName(v329, @"VTMTSFragmentFunction");
            }

            if (!v400)
            {
LABEL_580:
              v401 = *v549;
              goto LABEL_581;
            }
          }

          v401 = vdupq_n_s64(1uLL);
LABEL_581:
          *(v329 + 176) = v401;
          *(v329 + 192) = 1;
          *&v403 = SLODWORD(v613[10]);
          *(&v403 + 1) = SHIDWORD(v613[10]);
          *(v329 + 152) = v403;
          *(v329 + 168) = 1;
          HIDWORD(__dst[25]) = 1065353216;
          LODWORD(__dst[0]) = v613[0];
          memcpy(v604, __dst, sizeof(v604));
          CFArrayAppendValue(Mutable, v329);
          IntermediateScalingFormat = 0;
          *(v329 + 120) = v376;
          *(v329 + 128) = v569;
          v404 = v559;
          v405 = 0;
          v406 = 0;
LABEL_582:
          CFRelease(v329);
          v590 = theDictb;
          goto LABEL_583;
        }

        v59 = 0;
        v47 = 0;
        while (1)
        {
          v357 = v613[v59 + 4];
          if (!v357)
          {
LABEL_537:
            OUTLINED_FUNCTION_55_0();
            Mutable = v587;
            goto LABEL_538;
          }

          v358 = LODWORD(v613[0]);
          v359 = v613[8];
          if (v334)
          {
            CFArrayGetCount(v334);
          }

          OUTLINED_FUNCTION_60_0();
          v362 = vtCreateTexDescGlobalWrite(v60, v358, v334, v329 + 1564, v358, v357, v359, v361, v59, v360, v501, SHIDWORD(v501));
          if (v362)
          {
            break;
          }

          v59 = (v59 + 1);
          if (v59 == 4)
          {
            goto LABEL_537;
          }
        }

        IntermediateScalingFormat = v362;
        v59 = __src;
        Mutable = v587;
      }

      v405 = v569;
      theDictb = v590;
      v47 = v599;
      v406 = v580;
      v404 = HIDWORD(v554);
      if (v329)
      {
        goto LABEL_582;
      }

LABEL_583:
      if (v334)
      {
        CFRelease(v334);
      }

      v153 = allocator;
      if (IntermediateScalingFormat)
      {
LABEL_721:
        Copy = v593;
        if (!Mutable)
        {
          goto LABEL_712;
        }

LABEL_156:
        CFRelease(Mutable);
        goto LABEL_712;
      }

      theDicta = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
      if (v404)
      {
        v320 = v565 + 1;
        if (v565 + 1 == v555)
        {
LABEL_604:
          Copy = v593;
          goto LABEL_605;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_8();
        MEMORY[0x193AE3010](&unk_1ED6D3CE8);
        v407 = _CFRuntimeCreateInstance();
        CFArrayAppendValue(Mutable, v407);
        if (v407)
        {
          CFRelease(v407);
        }

        v320 = v565 + 1;
        if (v565 + 1 == v555)
        {
          goto LABEL_207;
        }
      }

      HIDWORD(v554) = v404;
      v150 = *(v614 + v320);
    }

    __dst[17] = __PAIR64__(*&v604[140], __src[10]);
LABEL_519:
    LOBYTE(v606) = 0;
    getKernelTypeCapabilities_source((v47 + 2161), *v604, 0, &v606);
    if (v606)
    {
      *&v604[68] = 3;
      LODWORD(v613[3]) = 3;
      *(v329 + 16) = 3;
      FigCFDictionaryGetIntIfPresent();
      *(v329 + 2168) = v150;
      *(v329 + 400) = 1;
      *(v329 + 404) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_12_6();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v501, v502);
    }

    goto LABEL_521;
  }

  v65 = CFArrayGetCount(v593);
  v604[0] = 0;
  LOBYTE(v613[0]) = 0;
  if (CFArrayGetCount(v593) >= 1)
  {
    v66 = OUTLINED_FUNCTION_27();
    CFArrayGetValueAtIndex(v66, v67);
  }

  OUTLINED_FUNCTION_58_0();
  FigCFDictionaryGetInt32IfPresent();
  v68 = __dst[0];
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_41_1();
  FigCFDictionaryGetInt32IfPresent();
  KernelTypeCapabilities = getKernelTypeCapabilities((v599 + 2161), v68, LODWORD(__dst[0]), v604, v613);
  if (LOBYTE(v613[0]))
  {
    v77 = 3;
  }

  else
  {
    v77 = 2 * (v604[0] != 0);
  }

  if (*(v599 + 1945))
  {
    v78 = 2;
  }

  else
  {
    v78 = v77;
  }

  if (v604[0])
  {
    OUTLINED_FUNCTION_49_0();
    if (!v49)
    {
      v78 = v79;
    }
  }

  if (v65 <= 8)
  {
    v112 = v60;
    Copy = v593;
    IntermediateScalingFormat = vtmtsAppendCompositePass(v112, (v599 + 2161), v593, 0, 0, __src, v556, v78, v592, v595, Mutable);
    if (IntermediateScalingFormat)
    {
      goto LABEL_155;
    }
  }

  else
  {
    v80 = OUTLINED_FUNCTION_82(KernelTypeCapabilities, v70, v71, v72, v73, v74, v75, v76, v499, v501, v502, v503, v505, v506, v507, v508, v509, v510, v511, v512, v515, v516, v518, v520, v522, v524, v525, v526, v528, v530, v533, v536, v539, v542, v543, v544, v545[0], v545[1], v546, v547, v549[0], v549[1], v550, v551, v552, v553, v554, v555, v556, v558, v559, v562, v563, v566, v567, theDict, &__src[18] + 4, v577, v581, v585, v586, Mutable, v589);
    bzero(__dst, 0xA8uLL);
    v597 = v80;
    MutableCopy = CFArrayCreateMutableCopy(allocator, v80, v65);
    v82 = vtAllocateMetalTextureForList(v60, SLODWORD(__src[11]), SHIDWORD(__src[11]), 0x73, 0, v592);
    if (v82)
    {
      IntermediateScalingFormat = v82;
      v107 = 0;
      v87 = 0;
      v94 = 0;
      v95 = 0;
    }

    else
    {
      v83 = OUTLINED_FUNCTION_27();
      v87 = CFDictionaryCreateMutable(v83, v84, v85, v86);
      if (v87)
      {
        FigCFDictionarySetFloat();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        FigCFDictionarySetInt32();
        v88 = FigCFDictionarySetFloat();
        v89 = OUTLINED_FUNCTION_80(v88, @"AffineTransform_b");
        OUTLINED_FUNCTION_80(v89, @"AffineTransform_c");
        v90 = FigCFDictionarySetFloat();
        v91 = OUTLINED_FUNCTION_80(v90, @"AffineTransform_tx");
        OUTLINED_FUNCTION_80(v91, @"AffineTransform_ty");
      }

      v92 = CFDictionaryCreateMutableCopy(allocator, 0, __src[1]);
      if (v92)
      {
        FigCFDictionarySetInt32();
      }

      v582 = v92;
      v93 = v597;
      if (v597 >= 1)
      {
        v578 = v78;
        v94 = 0;
        v96 = 0;
        while (1)
        {
          v97 = v93;
          if (v94)
          {
            CFRelease(v94);
          }

          if (v93 == v597)
          {
            v98 = 8;
          }

          else
          {
            v98 = 7;
          }

          if (v98 < v93)
          {
            v93 = v98;
          }

          v99 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
          v94 = v99;
          if (v97 != v597)
          {
            CFArrayAppendValue(v99, v87);
          }

          do
          {
            v100 = CFArrayGetValueAtIndex(MutableCopy, 0);
            CFArrayAppendValue(v94, v100);
            CFArrayRemoveValueAtIndex(MutableCopy, 0);
            --v93;
          }

          while (v93);
          if (v97 <= v98)
          {
            v101 = __src;
            v103 = v557;
            v104 = v574;
          }

          else
          {
            v101 = __dst;
            memcpy(__dst, __src, 0xA8uLL);
            LODWORD(__dst[0]) = 1380411457;
            __dst[1] = v582;
            v102 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
            __dst[2] = v102;
            __dst[4] = 115;
            LODWORD(__dst[8]) = 2;
            HIDWORD(__dst[16]) = getNativeTextureTypeForPixelFormat(__dst[0]);
            getSubsamplingFromPixelDescription(v102, &__dst[17], &__dst[17] + 1);
            v103 = __dst[2];
            v104 = (&__dst[18] + 4);
          }

          v95 = CFRetain(v103);
          if (v97 != v597)
          {
            *v104 = 0;
            v104[1] = 0;
          }

          v47 = v599;
          appended = vtmtsAppendCompositePass(v60, (v599 + 2161), v94, v97 != v597, v96, v101, v95, v578, v592, v595, v588);
          if (appended)
          {
            break;
          }

          if (MutableCopy)
          {
            v93 = CFArrayGetCount(MutableCopy);
          }

          else
          {
            v93 = 0;
          }

          if (v97 > v98)
          {
            OUTLINED_FUNCTION_9_8();
            MEMORY[0x193AE3010](&unk_1ED6D3CE8);
            v106 = _CFRuntimeCreateInstance();
            CFArrayAppendValue(v588, v106);
            if (v106)
            {
              CFRelease(v106);
            }
          }

          v96 = v597 + ~v93;
          v59 = __src;
          if (v93 <= 0)
          {
            goto LABEL_142;
          }
        }

        IntermediateScalingFormat = appended;
        v59 = __src;
      }

      else
      {
        v94 = 0;
        v95 = 0;
LABEL_142:
        IntermediateScalingFormat = 0;
      }

      v107 = v582;
    }

    Copy = v593;
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    if (v95)
    {
      CFRelease(v95);
    }

    if (v87)
    {
      CFRelease(v87);
    }

    if (v107)
    {
      CFRelease(v107);
    }

    Mutable = v588;
    if (IntermediateScalingFormat)
    {
LABEL_155:
      if (!Mutable)
      {
        goto LABEL_712;
      }

      goto LABEL_156;
    }
  }

LABEL_605:
  IntermediateScalingFormat = 0;
  cf = Mutable;
  if (!Mutable)
  {
LABEL_606:
    v409 = *(v47 + 2096);
    *(v47 + 2096) = 0;

    v410 = *(v47 + 2104);
    *(v47 + 2104) = 0;

    v411 = *(v47 + 2112);
    *(v47 + 2112) = 0;

    v412 = *(v47 + 2120);
    *(v47 + 2120) = 0;

    v413 = *(v47 + 2040);
    *(v47 + 2040) = 0;

    v414 = *(v47 + 2024);
    *(v47 + 2024) = 0;

    v415 = *(v47 + 2032);
    *(v47 + 2032) = 0;

    v416 = *(v47 + 32);
    *(v47 + 32) = Copy;
    if (Copy)
    {
      CFRetain(Copy);
    }

    if (v416)
    {
      CFRelease(v416);
    }

    v417 = *(v47 + 40);
    *(v47 + 40) = theArray;
    if (theArray)
    {
      CFRetain(theArray);
    }

    if (v417)
    {
      CFRelease(v417);
    }

    memcpy((v47 + 192), v602, 0x638uLL);
    Mutable = cf;
    if (!cf)
    {
      goto LABEL_711;
    }
  }

LABEL_615:
  v418 = 0;
  v419 = &_MergedGlobals_1;
  while (1)
  {
    v420 = CFArrayGetCount(Mutable);
    v421 = cf;
    if (v420 <= v418)
    {
      break;
    }

    v422 = CFArrayGetValueAtIndex(cf, v418);
    if (v422)
    {
      v423 = v422;
      v424 = CFGetTypeID(v422);
      OUTLINED_FUNCTION_1_21();
      MEMORY[0x193AE3010](v419);
      if (v424 == _MergedGlobals_393)
      {
        v425 = *(v423 + 34);
        if (v425)
        {
          v426 = CFArrayGetCount(v425);
          if (v426)
          {
            v427 = v426;

            v428 = [*(v47 + 2000) newBufferWithLength:16 * v427 options:0];
            *(v423 + 14) = v428;
            if (*(v47 + 1784))
            {
              v429 = *(v47 + 1784);
            }

            else
            {
              v429 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v428 setLabel:v429];
          }
        }

        v430 = *(v47 + 2000);
        v431 = *(v47 + 1784);
        v432 = *(v47 + 2136);
        v423[1692] = 0;
        v423[1693] = *(v47 + 1973);
        v433 = *(v423 + 4);
        if (v433 == 3)
        {

          OUTLINED_FUNCTION_65_0();
          if (v444 != 3)
          {
            OUTLINED_FUNCTION_12_6();
            IntermediateScalingFormat = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v501, v502);
            v446 = 0;
            v447 = 0;
            v452 = 0;
            goto LABEL_692;
          }

          loadMTLFunctionConstants(v423 + 70, __dst);
          Current = CFAbsoluteTimeGetCurrent();
          v446 = __dst[0];
          v447 = [v432 newFunctionWithName:*(v423 + 7) constantValues:__dst[0] error:v604];
          v448 = CFAbsoluteTimeGetCurrent();
          if (v447)
          {
            v449 = v448;
            if (v431)
            {
              v450 = v431;
            }

            else
            {
              v450 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v447 setLabel:v450];
            v451 = [v430 newComputePipelineStateWithFunction:v447 error:v604];
            v452 = v451;
            if (!*v604)
            {
              v453 = v419;
              v454 = [v451 threadExecutionWidth];
              v455 = [v452 maxTotalThreadsPerThreadgroup];
              v456 = v455;
              v457 = *(v423 + 23);
              if (v423[64])
              {
                v458 = *(v423 + 13);
                if (v458 && [v458 contents])
                {
                  OUTLINED_FUNCTION_48_0();
                  if (v456 < v461)
                  {
                    goto LABEL_645;
                  }

                  v479 = *(v423 + 3);
                  v480 = *(v423 + 5);
                  v462.i32[0] = *(v459 + 40);
                  v481 = *(v459 + 56);
                  v482 = *v462.i32 * v456;
                  v483 = fabsf(v482);
                  *v463.i32 = (v456 - v461);
                  v484 = v456;
                  if ((v483 + v461) > v456)
                  {
                    v485.i64[0] = 0x8000000080000000;
                    v485.i64[1] = 0x8000000080000000;
                    v484 = vcvtms_u32_f32(fabsf(*vbslq_s8(v485, v463, v462).i32 / *v462.i32));
                    if (v484)
                    {
                      v482 = *v462.i32 * v484;
                      v483 = fabsf(v482);
                      goto LABEL_679;
                    }

LABEL_645:
                    IntermediateScalingFormat = 4294954394;
LABEL_691:
                    v419 = v453;
LABEL_692:

LABEL_693:
                    Copy = v593;
                    if (IntermediateScalingFormat)
                    {
                      goto LABEL_712;
                    }

                    v59 = __src;
                    goto LABEL_695;
                  }

LABEL_679:
                  v486 = v481 - *v463.i32;
                  v487 = v456 - 1;
                  v488 = v461 + vcvtps_u32_f32(v483);
                  if (v456 - 1 < v488)
                  {
                    v488 = v456 - 1;
                  }

                  v489 = vcvtms_u32_f32(v479 / v483);
                  if (*v462.i32 >= 0.0)
                  {
                    v487 = v488;
                  }

                  v490 = vcvtms_u32_f32(v483 * v489);
                  if (*v462.i32 < 0.0)
                  {
                    v481 = v486;
                  }

                  *(v459 + 136) = v482;
                  *(v459 + 140) = v481;
                  *(v459 + 144) = v487;
                  *(v459 + 148) = v461 + v479 + v456 * v489 - v490 - 1;
                  v491 = v479 / v483;
                  v492 = vcvtps_u32_f32(v491);
                  *(v459 + 152) = v484;
                  *(v459 + 156) = v480 - 1;
                  *(v423 + 28) = v456;
                  *(v423 + 232) = vdupq_n_s64(1uLL);
                  if (v456)
                  {
                    v493 = (v456 + v456 * v492 - 1) / v456;
                  }

                  else
                  {
                    v493 = 0;
                  }

                  *(v423 + 31) = v493;
                  *(v423 + 32) = v460;
                  *(v423 + 33) = 1;
                  OUTLINED_FUNCTION_48_0();
                  *(v423 + 25) = v494;
LABEL_689:
                  *(v423 + 26) = v475;
                  *(v423 + 27) = v478;
                }

                IntermediateScalingFormat = 0;
                *(v423 + 12) = v452;
                *v551 = v449 - Current;
                v452 = 0;
                goto LABEL_691;
              }

              v472 = *(v423 + 22);
              v473 = *(v423 + 19);
              v474 = v473;
              if (v472)
              {
                v474 = (v472 + v473 - 1) / v472;
              }

              v475 = *(v423 + 20);
              v476 = v475;
              if (v457)
              {
                v476 = (v457 + v475 - 1) / v457;
              }

              v477 = v455 / v454;
              if (v454 <= v455)
              {
                v476 = (v477 + v476 - 1) / v477;
              }

              *(v423 + 28) = v454;
              *(v423 + 29) = v477;
              v478 = 1;
              *(v423 + 30) = 1;
              *(v423 + 31) = (v454 + v474 - 1) / v454;
              *(v423 + 32) = v476;
              *(v423 + 33) = 1;
              if (v472)
              {
                v473 = (v472 + v473 - 1) / v472;
              }

              if (v457)
              {
                v475 = (v457 + v475 - 1) / v457;
              }

              *(v423 + 25) = v473;
              goto LABEL_689;
            }
          }

          else
          {
            v452 = 0;
          }

          IntermediateScalingFormat = 4294954394;
          goto LABEL_692;
        }

        if (v433 == 2)
        {

          OUTLINED_FUNCTION_65_0();
          if (v434 == 2)
          {
            loadMTLFunctionConstants(v423 + 70, __dst);
            v435 = CFAbsoluteTimeGetCurrent();
            v436 = v59[33];
            v437 = [v432 newFunctionWithName:@"VTMTSVertexFunction" constantValues:v436 error:v604];
            v438 = CFAbsoluteTimeGetCurrent();
            v600 = v436;
            if (!v437)
            {
              goto LABEL_660;
            }

            v439 = v438;
            if (v431)
            {
              v440 = v431;
            }

            else
            {
              v440 = @"com.apple.VideoToolbox.VTMetalTransferSession";
            }

            [v437 setLabel:v440];
            v441 = CFAbsoluteTimeGetCurrent();
            v442 = *(v423 + 410);
            if (v442 == 1)
            {
              v443 = @"VTMTSFragmentFunction";
LABEL_650:
              v464 = [v432 newFunctionWithName:v443 constantValues:v436 error:v604];
              v465 = CFAbsoluteTimeGetCurrent();
              if (!v464)
              {
                goto LABEL_661;
              }

              v466 = v465;
              [v464 setLabel:v440];
              v467 = objc_alloc_init(MEMORY[0x1E6974148]);
              [v467 setVertexFunction:v437];
              [v467 setFragmentFunction:v464];
              v468 = *(v423 + 34);
              if (v468)
              {
                v469 = 0;
                do
                {
                  if (CFArrayGetCount(v468) <= v469)
                  {
                    break;
                  }

                  v470 = CFArrayGetValueAtIndex(*(v423 + 34), v469);
                  if (*(v470 + 16) == 1)
                  {
                    [objc_msgSend(objc_msgSend(v467 "colorAttachments")];
                  }

                  ++v469;
                  v468 = *(v423 + 34);
                }

                while (v468);
              }

              v471 = [v430 newRenderPipelineStateWithDescriptor:v467 error:v604];
              if (*v604)
              {
                IntermediateScalingFormat = 4294954394;
              }

              else
              {
                IntermediateScalingFormat = 0;
                *(v423 + 9) = v471;
                *v551 = v439 - v435 + v466 - v441;
                v471 = 0;
              }

              v419 = &_MergedGlobals_1;
            }

            else
            {
              if (v442 == 2)
              {
                v443 = @"VTMTSFragmentFunctionf";
                goto LABEL_650;
              }

              CFAbsoluteTimeGetCurrent();
LABEL_660:
              v464 = 0;
LABEL_661:
              v467 = 0;
              v471 = 0;
              IntermediateScalingFormat = 4294954394;
            }
          }

          else
          {
            OUTLINED_FUNCTION_12_6();
            IntermediateScalingFormat = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v499, v501, v502);
            v600 = 0;
            v437 = 0;
            v464 = 0;
            v467 = 0;
            v471 = 0;
          }

          goto LABEL_693;
        }

        IntermediateScalingFormat = 0;
        Copy = v593;
      }
    }

LABEL_695:
    ++v418;
    Mutable = cf;
    if (!cf)
    {
      v495 = *(v47 + 2152);
      *(v47 + 2152) = 0;
      goto LABEL_701;
    }
  }

  v495 = *(v47 + 2152);
  *(v47 + 2152) = cf;
  if (v421)
  {
    CFRetain(v421);
  }

LABEL_701:
  if (v495)
  {
    CFRelease(v495);
  }

  v496 = *(v47 + 32);
  *(v47 + 32) = Copy;
  if (Copy)
  {
    CFRetain(Copy);
  }

  if (v496)
  {
    CFRelease(v496);
  }

  v497 = *(v47 + 40);
  *(v47 + 40) = theArray;
  if (theArray)
  {
    CFRetain(theArray);
  }

  if (v497)
  {
    CFRelease(v497);
  }

LABEL_711:
  *(v47 + 72) = 1;
  *(v47 + 21) = 0;
LABEL_712:
  if (Copy)
  {
    CFRelease(Copy);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return IntermediateScalingFormat;
}

uint64_t vtmtsSetupMetalDirectBlitter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, CFMutableArrayRef *a6)
{
  v10 = 0;
  v11 = 0;
  v35 = 0;
  v36 = 0;
  if (!a1 || !a3 || !a4 || !a5 || !a6)
  {
    OUTLINED_FUNCTION_70();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_70();
  if (!v16)
  {
    goto LABEL_21;
  }

  v17 = v13;
  v33 = v14;
  v34 = v15;
  v32 = v16;
  if (*a6)
  {
    CFRelease(*a6);
    *a6 = 0;
  }

  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetBooleanIfPresent();
  FigCFDictionaryGetInt64IfPresent();
  FigCFDictionaryGetInt64IfPresent();
  v18 = *MEMORY[0x1E695E480];
  v19 = OUTLINED_FUNCTION_17();
  Mutable = CFArrayCreateMutable(v19, v20, v21);
  if (!Mutable)
  {
    v11 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_1_21();
  MEMORY[0x193AE3010]();
  v8 = OUTLINED_FUNCTION_86(v18, _MergedGlobals_393);
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 64) = 0;
  *(v8 + 66) = 0;
  loadMTLFunctionConstants((v8 + 280), &v35);
  v11 = v35;
  if (!v35 || (*(v8 + 56) = @"VTMTSComputeDirect_btp2_to_btp2", *(v8 + 16) = 4, v22 = [v17 newBufferWithLength:20 options:0], (*(v8 + 144) = v22) == 0) || (v23 = objc_msgSend(v22, "contents")) == 0)
  {
    v10 = 0;
LABEL_29:
    v9 = 0;
    v6 = 0;
    goto LABEL_21;
  }

  *v23 = 0;
  *(v23 + 1) = 0;
  *(v23 + 2) = 0;
  *(v23 + 4) = 0;
  *(v23 + 8) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v9 = [v34 newFunctionWithName:*(v8 + 56) constantValues:v11 error:&v36];
  v25 = CFAbsoluteTimeGetCurrent();
  if (v9)
  {
    v26 = v25;
    if (v33)
    {
      v27 = v33;
    }

    else
    {
      v27 = @"com.apple.VideoToolbox.VTMetalTransferSession";
    }

    [v9 setLabel:v27];
    v28 = [v17 newComputePipelineStateWithFunction:v9 error:&v36];
    v6 = v28;
    if (!v36)
    {
      *(v8 + 232) = [v28 maxTotalThreadsPerThreadgroup] >> 6;
      *(v8 + 240) = 1;
      *(v8 + 200) = 0;
      *(v8 + 208) = 0;
      *(v8 + 216) = xmmword_18FED0600;
      *(v8 + 96) = v6;
      v29 = OUTLINED_FUNCTION_61_0();
      CFArrayAppendValue(v29, v30);
      v10 = 0;
      *a6 = Mutable;
      *v32 = v26 - Current;
      Mutable = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = 4294954394;
LABEL_21:

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v10;
}

const __CFDictionary *getCharacteristicsFromPixelDescription(const __CFDictionary *theDict, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (theDict)
  {
    v14 = theDict;
    if (a3)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a2)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a4)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a5)
    {
      CFDictionaryGetValue(v14, *MEMORY[0x1E6966248]);
      theDict = FigCFEqual();
      if (theDict)
      {
        v15 = 1;
      }

      else
      {
        theDict = FigCFEqual();
        if (theDict)
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }
      }

      *a5 = v15;
    }

    if (a6)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a7)
    {
      theDict = FigCFDictionaryGetBooleanIfPresent();
    }

    if (a8)
    {

      return FigCFDictionaryGetInt32IfPresent();
    }
  }

  return theDict;
}

void vtmtsLoadColorFunctionConstantValues(const __CFDictionary *a1, const __CFDictionary *a2, CFDictionaryRef theDict, const __CFDictionary *a4, int *a5, int *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12)
{
  v57 = 0;
  v58 = 0;
  v56 = 0;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  yCbCrMatrixString = 0;
  getCharacteristicsFromPixelDescription(theDict, &v56 + 1, &v55 + 1, &v54 + 1, a8, 0, 0, 0);
  getCharacteristicsFromPixelDescription(a4, &v56, &v55, &v54, a12, 0, 0, 0);
  Value = 0;
  v18 = *MEMORY[0x1E6965F98];
  if (a1 && v18)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6965F98]);
  }

  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  if (a2 && v18)
  {
    CFDictionaryGetValue(a2, v18);
  }

  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  VTCreateYCbCrCFStringsAndProvideDefaults(Value, v20, v21, v22, &v53, &yCbCrMatrixString);
  v23 = 0;
  v24 = *MEMORY[0x1E6965CE8];
  if (a1 && v24)
  {
    v23 = CFDictionaryGetValue(a1, *MEMORY[0x1E6965CE8]);
  }

  v25 = 0;
  v26 = *MEMORY[0x1E6965EC8];
  v50 = a6;
  if (a1 && v26)
  {
    v25 = CFDictionaryGetValue(a1, v26);
  }

  v27 = 0;
  v28 = *MEMORY[0x1E6965D88];
  v51 = a7;
  if (a1 && v28)
  {
    v27 = CFDictionaryGetValue(a1, v28);
  }

  v29 = 0;
  v30 = *MEMORY[0x1E6965F30];
  v48 = v25;
  if (a1 && v30)
  {
    v29 = CFDictionaryGetValue(a1, v30);
  }

  v46 = v29;
  v31 = 0;
  v32 = *MEMORY[0x1E6965ED0];
  v47 = v27;
  if (a1 && v32)
  {
    v31 = CFDictionaryGetValue(a1, v32);
  }

  v33 = 0;
  v45 = v53;
  if (a2 && v24)
  {
    v33 = CFDictionaryGetValue(a2, v24);
  }

  v34 = 0;
  if (a2 && v26)
  {
    v34 = CFDictionaryGetValue(a2, v26);
  }

  v35 = 0;
  v36 = v23;
  if (a2 && v28)
  {
    v35 = CFDictionaryGetValue(a2, v28);
  }

  v37 = 0;
  if (a2 && v30)
  {
    v37 = CFDictionaryGetValue(a2, v30);
  }

  v38 = 0;
  if (a2 && v32)
  {
    v38 = CFDictionaryGetValue(a2, v32);
  }

  VTCreateColorAttachments(v36, v48, v47, v46, v31, v45, 0, v33, v34, v35, v37, v38, 0, 0, 0, &v58, &v57);
  v39 = 0;
  v40 = v58;
  if (v28 && v58)
  {
    v39 = CFDictionaryGetValue(v58, v28);
    v40 = v58;
  }

  v41 = 0;
  if (v30 && v40)
  {
    v41 = CFDictionaryGetValue(v40, v30);
  }

  v42 = 0;
  v43 = v57;
  if (v28 && v57)
  {
    v42 = CFDictionaryGetValue(v57, v28);
    v43 = v57;
  }

  v44 = 0;
  if (v30 && v43)
  {
    v44 = CFDictionaryGetValue(v43, v30);
  }

  if (a5)
  {
    *a5 = CVColorPrimariesGetIntegerCodePointForString(v39);
  }

  if (v50)
  {
    *v50 = CVTransferFunctionGetIntegerCodePointForString(v41);
  }

  if (v51)
  {
    *v51 = CVYCbCrMatrixGetIntegerCodePointForString(v53);
  }

  if (a9)
  {
    *a9 = CVColorPrimariesGetIntegerCodePointForString(v42);
  }

  if (a10)
  {
    *a10 = CVTransferFunctionGetIntegerCodePointForString(v44);
  }

  if (a11)
  {
    *a11 = CVYCbCrMatrixGetIntegerCodePointForString(yCbCrMatrixString);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (yCbCrMatrixString)
  {
    CFRelease(yCbCrMatrixString);
  }
}

uint64_t vtmtsAppendCompositePass(void *a1, unsigned __int8 *a2, const __CFArray *a3, int a4, int a5, unsigned int *a6, const __CFDictionary *a7, int a8, uint64_t a9, uint64_t a10, __CFArray *a11)
{
  HIDWORD(v133) = a8;
  HIDWORD(v125) = a5;
  HIDWORD(v127) = a4;
  v14 = a1;
  v15 = [a1 newBufferWithLength:16 options:0];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 contents];
    if (v17)
    {
      *v17 = xmmword_18FED05E0;
    }
  }

  if (*a10)
  {
    v18 = *a10;
  }

  else
  {
    v18 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v16 setLabel:v18];
  v158 = 0;
  v19 = *MEMORY[0x1E695E480];
  OUTLINED_FUNCTION_1_21();
  MEMORY[0x193AE3010]();
  v20 = OUTLINED_FUNCTION_86(v19, _MergedGlobals_393);
  *(v20 + 24) = 0;
  *(v20 + 32) = 0;
  OUTLINED_FUNCTION_64_0(v20);
  *(v21 + 16) = HIDWORD(v133);
  if (HIDWORD(v133) == 3)
  {
    VTMTSRenderPassDescriptorSetFunctionName(v20, @"VTMTSComputeComposite");
  }

  v22 = [v14 newBufferWithLength:1000 options:0];
  *(v20 + 104) = v22;
  if (*a10)
  {
    v23 = *a10;
  }

  else
  {
    v23 = @"com.apple.VideoToolbox.VTMetalTransferSession";
  }

  [v22 setLabel:v23];
  v130 = [*(v20 + 104) contents];
  Mutable = CFArrayCreateMutable(v19, 0, MEMORY[0x1E695E9C0]);
  v134 = (v20 + 280);
  *(v20 + 404) = *(a10 + 175);
  cf = Mutable;
  v129 = v16;
  if (!a3)
  {
    *(v20 + 1684) = 0;
    goto LABEL_50;
  }

  Count = CFArrayGetCount(a3);
  *(v20 + 1684) = Count;
  if (Count > 8)
  {
    v61 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v88, v90);
    goto LABEL_71;
  }

  v103 = v11;
  if (!Count)
  {
LABEL_50:
    a6[1] = 8;
    v60 = *(a6 + 4);
    if (v60)
    {
      v61 = vtCreateTexDescGlobalWrite(v14, *a6, Mutable, v20 + 1564, *a6, v60, a6[16], 0, 0, 8, a6[34], a6[35]);
    }

    else
    {
      v83 = OUTLINED_FUNCTION_41_1();
      v61 = vtmtsBuildDestination(v83, v84, v85, v134, Mutable);
    }

    v16 = v129;
    if (!v61)
    {
      if ((*(v20 + 1640) - 3) <= 2)
      {
        *(v20 + 1660) = 1;
      }

      v69 = cf;
      if (cf)
      {
        v70 = CFRetain(cf);
        *(v20 + 272) = v70;
        OUTLINED_FUNCTION_79(v70, v71, v72, v73, v74, v75, v76, v77, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v101, v102, v103, v104, v105, v106, v107, v108, v109, a2, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, a7, v129, v130, cf, v133, v134);
        v78 = CFArrayGetCount(v69);
      }

      else
      {
        *(v20 + 272) = 0;
        OUTLINED_FUNCTION_79(v61, v62, v63, v64, v65, v66, v67, v68, v86, v88, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v101, v102, v103, v104, v105, v106, v107, v108, v109, a2, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, a7, v129, v130, 0, v133, v134);
        v78 = 0;
      }

      if (*(v20 + 2200))
      {
        *(v20 + 388) = v78;
      }

      *(v20 + 184) = xmmword_18FED0610;
      v80 = *(a6 + 10);
      *&v81 = v80;
      *(&v81 + 1) = SHIDWORD(v80);
      *(v20 + 152) = v81;
      *(v20 + 168) = xmmword_18FED0620;
      CFArrayAppendValue(a11, v20);
      v79 = 0;
      *(v20 + 120) = v16;
      v16 = 0;
      Mutable = cfa;
      goto LABEL_62;
    }

LABEL_71:
    v79 = v61;
    goto LABEL_62;
  }

  v26 = 0;
  v124 = &v140 + 1;
  v126 = *MEMORY[0x1E6966130];
  v122 = &v153;
  v123 = v141;
  v119 = (a6 + 31);
  v120 = &v151;
  v117 = (a6 + 28);
  v118 = (a6 + 30);
  v115 = (v20 + 428);
  v116 = (a6 + 32);
  v113 = (a6 + 29);
  v114 = &v152;
  v112 = (v20 + 2200);
  HIDWORD(v109) = HIDWORD(v133) == 2;
  v107 = (v20 + 88);
  v108 = (v20 + 80);
  v105 = v20 + 2192;
  v106 = v20 + 2184;
  v104 = *MEMORY[0x1E6966218];
  v27 = v130 + 13;
  v111 = a3;
  v121 = v14;
  while (1)
  {
    bzero(&v136, 0xD8uLL);
    v157[0] = 1065353216;
    v28 = OUTLINED_FUNCTION_61_0();
    ValueAtIndex = CFArrayGetValueAtIndex(v28, v29);
    v137 = ValueAtIndex;
    v140 = 256;
    v149 = v14;
    v150 = a10;
    v139 = HIDWORD(v133);
    v138 = v26;
    LODWORD(v135[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v136 = v135[0];
    FigCFDictionaryGetFloatIfPresent();
    DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
    if (v136 != 1111970369 && v136 != 1380410945 && v136 != 1380411457 && v136 != 1815162994)
    {
      v79 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v86, v88, v90);
      Mutable = cf;
      goto LABEL_57;
    }

    v35 = DescriptionWithPixelFormatType;
    v154[1] = 2;
    getSubsamplingFromPixelDescription(DescriptionWithPixelFormatType, &v155, &v156);
    vtmtsGetSrcCropDimensions(ValueAtIndex, &v145, &v146, &v143, &v144, &v147, &v148, v142, v141);
    if (CFArrayGetCount(a3) <= v26)
    {
      v38 = 0;
    }

    else
    {
      v36 = OUTLINED_FUNCTION_61_0();
      v38 = CFArrayGetValueAtIndex(v36, v37);
    }

    Mutable = cf;
    vtmtsLoadColorFunctionConstantValues(v38, *(a6 + 1), v35, a7, &v153 + 1, &v153, &v151, v154, v119, v118, v117, v116);
    *v115 = v153;
    v39 = v136;
    *(v20 + 420) = v151;
    v40 = v154[0];
    *(v20 + 436) = v154[0];
    v41 = a6[31];
    *(v20 + 1676) = v41;
    v42 = a6[30];
    *(v20 + 1672) = v42;
    v43 = a6[28];
    *(v20 + 1664) = v43;
    v44 = a6[32];
    *(v20 + 1680) = v44;
    v14 = v121;
    v45 = vtmtsSetUpProcessingNeeds(v121, v39, *a6, &v137, *(a6 + 1), v35, a7, &v153 + 1, &v153, &v151, v40, v41, v42, v43, v44, a10, v134, &v152, v113, v129, v112, &v140 + 1, &v158);
    if (v45)
    {
      break;
    }

    if (!HIDWORD(v127) || v26)
    {
      v45 = vtmtsBuildSource(v121, &v136, 1, v134, v130, cf);
      a3 = v111;
      if (v45)
      {
        break;
      }

      if (HIDWORD(v125))
      {
        if (!cf || (v53 = CFArrayGetCount(cf), v53 < 2))
        {
          v45 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v87, v89, v90);
          break;
        }

        v54 = CFArrayGetValueAtIndex(cf, v53 - 1);
        v54[5] += HIDWORD(v125);
      }
    }

    else
    {
      vtCreateTexDescGlobalSample(v121, cf, v134, v136, 115, 2, 0, 0, 0);
      a3 = v111;
    }

    if (v141[0])
    {
      v55 = *(v20 + 404);
      v135[0] = v142[0];
      v135[1] = v142[1];
      v135[2] = v142[2];
      setupAffine(v26, v55, v135, v143, v144, v145, v146, v147, v148, v130);
    }

    else
    {
      *&v46 = v144;
      *&v100 = v20 + 2184;
      *(&v100 + 1) = v20 + 2192;
      setupRenderRotationAndCrop(v121, 0, a6, a2, a10, v26, v136, *(a10 + 10) == 0, *(a6 + 9), v46, v47, v48, v49, v50, v51, v52, SBYTE4(v109), *(v20 + 64), *(v20 + 400), *(a10 + 9), *(v20 + 404), 0, 0, 0, v143, v144, v145, v146, v147, v148, *(a6 + 18), HIDWORD(*(a6 + 9)), *(a6 + 10), HIDWORD(*(a6 + 18)), a6[22], a6[23], v108, v107, v130, v100);
    }

    *(v20 + 400) = 0;
    if (!v26)
    {
      LODWORD(v135[0]) = 0;
      if (*(a6 + 2))
      {
        FigCFDictionaryGetInt32IfPresent();
        v59 = LODWORD(v135[0]);
      }

      else
      {
        v59 = 0;
      }

      v58.n128_u32[0] = a6[40];
      setupBackgroundColor(v136, *(v20 + 392), v151, v154[0], v59, *(v20 + 104), *(a6 + 37), *(a6 + 38), *(a6 + 39), v58, v56, v57);
      *(v20 + 1695) = 1;
    }

    v27->i32[0] = v157[0];
    v27 += 15;
    if (++v26 >= *(v20 + 1684))
    {
      goto LABEL_50;
    }
  }

  v79 = v45;
LABEL_57:
  v16 = v129;
LABEL_62:
  CFRelease(v20);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v79;
}

uint64_t vtmtsBuildDestination(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, __CFArray *a5)
{
  v8 = *a2;
  getEquivalentUncompressedPixelFormat(*a2);
  v9 = *a2;
  if (a4)
  {
    *(a4 + 1284) = v9;
  }

  if (v9 == 32)
  {
    goto LABEL_286;
  }

  if (v9 == 40)
  {
    goto LABEL_178;
  }

  v10 = v9 == 590898736 || v9 == 590902832;
  if (v10)
  {
    goto LABEL_183;
  }

  if (v9 == 640955504)
  {
    goto LABEL_264;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_183;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
LABEL_226:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    if (v8 == v86)
    {
      v88 = 53;
    }

    else
    {
      v88 = 0;
    }

    if (v8 == v86)
    {
      v89 = 70;
    }

    else
    {
      v89 = 0;
    }

    v90 = 13;
    if (v8 != v86)
    {
      v90 = 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = v87;
    *(&v156[0] + 1) = 10;
    v156[1] = 0x1EuLL;
    *(&v155 + 1) = 0x100000001;
    *&v154[16] = 0;
    *&v155 = v87;
    LODWORD(v153) = 0;
    v151 = v87;
    v148 = 0x46uLL;
    *(&v141 + 1) = 0x200000004;
    *&v138[16] = 0;
    *&v141 = v87;
    v137 = 3;
    *v154 = v90;
    *&v154[8] = 23;
    v146 = v89;
    *v138 = v88;
    *&v138[8] = 53;
    v91 = OUTLINED_FUNCTION_3_16();
    v96 = 502;
    v97 = 541;
LABEL_246:
    if (!appendDstTextureDescriptions(v91, v92, v93, v94, v95, v96, 3, v97, v137, *v138, *&v138[8], *&v138[16], v141, *(&v141 + 1), 0, 0, v146, v148, *(&v148 + 1), v151, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), 0, 0, *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
    {
      if (a2[6] == 2 && !*(a4 + 1365))
      {
        v107 = OUTLINED_FUNCTION_57_0();

        return vtAllocateMetalTextureForList(v107, v108, v109, v110, v111, v112);
      }

      return 0;
    }

    return 4294954391;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_236;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
LABEL_183:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    if (v8 == v44)
    {
      v46 = 53;
    }

    else
    {
      v46 = 0;
    }

    if (v8 == v44)
    {
      v47 = 70;
    }

    else
    {
      v47 = 0;
    }

    v48 = 13;
    if (v8 != v44)
    {
      v48 = 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = v45;
    *(&v156[0] + 1) = 10;
    v156[1] = 0x1EuLL;
    *(&v155 + 1) = 0x100000001;
    *&v156[0] = 0;
    *&v154[16] = 0;
    *&v155 = v45;
    LODWORD(v153) = 0;
    v150 = v45;
    v147 = 0x46uLL;
    *(&v140 + 1) = 0x200000004;
    v144 = 0;
    *&v138[16] = 0;
    *&v140 = v45;
    v137 = 3;
    *v154 = v48;
    *&v154[8] = 23;
    v145 = v47;
    *v138 = v46;
    *&v138[8] = 53;
    v49 = OUTLINED_FUNCTION_3_16();
    v54 = 500;
    v55 = 3;
    v56 = 540;
LABEL_193:
    if (!appendDstTextureDescriptions(v49, v50, v51, v52, v53, v54, v55, v56, v137, *v138, *&v138[8], *&v138[16], v140, *(&v140 + 1), v144, SHIDWORD(v144), v145, v147, *(&v147 + 1), v150, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), v156[0], SDWORD1(v156[0]), *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
    {
      if (a2[6] == 2 && !*(a4 + 1365))
      {
        v57 = OUTLINED_FUNCTION_57_0();
        result = vtAllocateMetalTextureForList(v57, v58, v59, v60, v61, v62);
        if (result)
        {
          return 4294954391;
        }

        return result;
      }

      return 0;
    }

    return 4294954391;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_226;
  }

  OUTLINED_FUNCTION_39_1();
  if (v10)
  {
    goto LABEL_236;
  }

  if (v11 == 641877825)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_178;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_276;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
    goto LABEL_266;
  }

  OUTLINED_FUNCTION_71();
  if (v10)
  {
LABEL_256:
    if (!a4)
    {
      return 0;
    }

    *&v120 = OUTLINED_FUNCTION_4_16();
    v121 = 20;
    goto LABEL_313;
  }

  switch(v12)
  {
    case 642934849:
      goto LABEL_268;
    case 643969848:
      goto LABEL_205;
    case 644232304:
      goto LABEL_258;
    case 644624754:
    case 645346162:
LABEL_205:
      if (a4)
      {
        if (v12 == 644624754 || v12 == 645346162 || v12 == 1999843442 || v12 == 1815162994)
        {
          OUTLINED_FUNCTION_15_6();
          v149 = 0uLL;
          *(&v157 + 1) = v77;
          v158 = 0x100000000;
          OUTLINED_FUNCTION_6_13();
          *&v156[0] = v78;
          *(&v156[0] + 1) = 90;
          OUTLINED_FUNCTION_35_1();
          OUTLINED_FUNCTION_23_2();
          *(&v139 + 1) = v79;
          *v143 = v80;
          OUTLINED_FUNCTION_54_0();
LABEL_282:
          v65 = a2;
LABEL_315:
          v67 = a4;
          v68 = a5;
          v69 = 0;
          goto LABEL_316;
        }

        OUTLINED_FUNCTION_15_6();
        *(&v157 + 1) = 0x100000001;
        v158 = 0x100000000;
        *&v157 = v136;
        v156[1] = 0xAuLL;
        *&v156[0] = 0;
        *(&v156[0] + 1) = 90;
        v41 = 0uLL;
        goto LABEL_279;
      }

      return 0;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_238;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_220;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
LABEL_283:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v125 = OUTLINED_FUNCTION_2_19();
    v139 = v125;
    *v143 = v125;
    v65 = OUTLINED_FUNCTION_0_21();
    v70 = 510;
    v71 = 3;
    goto LABEL_285;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_27_2();
  if (v10)
  {
LABEL_238:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v101 = OUTLINED_FUNCTION_2_19();
    v139 = v101;
    *v143 = v101;
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_46_0();
LABEL_285:
    v83 = 548;
    goto LABEL_319;
  }

  if (v14 == 758670896 || v14 == 758674992)
  {
    goto LABEL_183;
  }

  if (v14 == 759318337)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_200;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_69();
  if (v10)
  {
LABEL_220:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v84 = OUTLINED_FUNCTION_2_19();
    v139 = v84;
    *v143 = v84;
    v65 = OUTLINED_FUNCTION_0_21();
    v70 = 509;
    v71 = 3;
    goto LABEL_222;
  }

  if (v16 == 792225328 || v16 == 792229424)
  {
    goto LABEL_183;
  }

  if (v16 == 792872769)
  {
    goto LABEL_218;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_198;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
LABEL_200:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    *&v72 = OUTLINED_FUNCTION_2_19();
    v139 = v72;
    *v143 = v72;
    OUTLINED_FUNCTION_0_21();
    OUTLINED_FUNCTION_46_0();
LABEL_222:
    v83 = 547;
    goto LABEL_319;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_223;
  }

  OUTLINED_FUNCTION_68();
  if (v10)
  {
    goto LABEL_220;
  }

  switch(v18)
  {
    case 846624102:
    case 846624121:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      v149 = 0uLL;
      OUTLINED_FUNCTION_4_16();
      *&v156[0] = 0;
      *(&v156[0] + 1) = 70;
      OUTLINED_FUNCTION_20_2();
      *v143 = v123;
      *&v143[16] = v123;
      OUTLINED_FUNCTION_72();
      v65 = OUTLINED_FUNCTION_3_16();
      v70 = 562;
      goto LABEL_317;
    case 875704422:
    case 875704438:
      goto LABEL_183;
    case 875704934:
    case 875704950:
      goto LABEL_226;
    case 875836518:
    case 875836534:
LABEL_236:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        *(&v157 + 1) = 0x100000001;
        v158 = 0;
        *&v157 = v98;
        *(&v156[0] + 1) = 10;
        v156[1] = 0x1EuLL;
        *(&v155 + 1) = 0x100000001;
        *&v156[0] = 0;
        *&v154[16] = 0;
        *&v155 = v98;
        LODWORD(v153) = 0;
        *&v143[16] = 0u;
        v149 = 0u;
        OUTLINED_FUNCTION_11_7();
        v137 = 3;
        *v154 = v100;
        *&v154[8] = v99;
        v65 = OUTLINED_FUNCTION_3_16();
        v70 = 503;
        v71 = 3;
        v83 = 542;
        goto LABEL_319;
      }

      return 0;
    case 1111970369:
      goto LABEL_218;
  }

  OUTLINED_FUNCTION_66_0();
  if (v10)
  {
    goto LABEL_220;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
    if (!a4)
    {
      return 0;
    }

    *&v120 = OUTLINED_FUNCTION_4_16();
    v121 = 55;
    goto LABEL_313;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
LABEL_276:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      *&v41 = OUTLINED_FUNCTION_4_16();
      v42 = 25;
      goto LABEL_278;
    }

    return 0;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
LABEL_266:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      *&v41 = OUTLINED_FUNCTION_4_16();
      v42 = 20;
      goto LABEL_278;
    }

    return 0;
  }

  OUTLINED_FUNCTION_52_0();
  if (v10)
  {
    goto LABEL_256;
  }

  switch(v12)
  {
    case 1378955371:
      goto LABEL_260;
    case 1380410945:
      if (!a4)
      {
        return 0;
      }

      *&v120 = OUTLINED_FUNCTION_4_16();
      v121 = 125;
      goto LABEL_313;
    case 1380411457:
LABEL_268:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        *&v41 = OUTLINED_FUNCTION_4_16();
        v42 = 115;
        goto LABEL_278;
      }

      return 0;
    case 1647534392:
      goto LABEL_205;
    case 1647719521:
      if (!a4)
      {
        return 0;
      }

      v158 = 0;
      v157 = 0u;
      memset(v156, 0, sizeof(v156));
      OUTLINED_FUNCTION_35_1();
      *v154 = 103;
LABEL_314:
      LODWORD(v153) = 0;
      *&v143[16] = v120;
      v149 = v120;
      OUTLINED_FUNCTION_11_7();
      v137 = 0;
      v65 = a2;
      v66 = 2;
      goto LABEL_315;
    case 1751527984:
    case 1751527986:
    case 1751528500:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_29_1();
      *&v156[1] = 65;
      *&v156[0] = 0;
      *(&v156[0] + 1) = 25;
      *&v102 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 0;
      goto LABEL_272;
    case 1815162994:
      goto LABEL_205;
    case 1815491698:
      if (!a4)
      {
        return 0;
      }

      v158 = 0;
LABEL_312:
      *&v157 = 0;
      *(&v157 + 1) = 1;
      v120 = 0uLL;
      v156[1] = 0u;
      v121 = 110;
LABEL_313:
      *&v156[0] = 0;
      *(&v156[0] + 1) = v121;
      v155 = v120;
      *&v154[16] = 0;
      *v154 = v120;
      goto LABEL_314;
    case 1882468912:
LABEL_223:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      *&v85 = OUTLINED_FUNCTION_2_19();
      v139 = v85;
      *v143 = v85;
      v65 = OUTLINED_FUNCTION_0_21();
      v70 = 508;
      v71 = 3;
      goto LABEL_225;
    case 1882468914:
      goto LABEL_220;
    case 1882469428:
      goto LABEL_283;
    case 1885745712:
      goto LABEL_198;
    case 1885745714:
      goto LABEL_200;
    case 1885746228:
      goto LABEL_238;
    case 1886859824:
      goto LABEL_198;
    case 1886859826:
      goto LABEL_200;
    case 1886860340:
      goto LABEL_238;
    case 1915892016:
LABEL_260:
      if (a4)
      {
        OUTLINED_FUNCTION_15_6();
        v158 = 0;
        v41 = 0uLL;
        v157 = 0u;
        memset(v156 + 8, 0, 24);
        *(&v155 + 1) = v122;
        *&v156[0] = 0x100000000;
        *&v155 = 0;
        *&v154[8] = 0u;
        *v154 = 53;
LABEL_280:
        LODWORD(v153) = 0;
        *&v143[16] = v41;
        v149 = v41;
        OUTLINED_FUNCTION_11_7();
LABEL_281:
        v137 = 0;
        goto LABEL_282;
      }

      return 0;
    case 1932681587:
    case 1932812659:
      goto LABEL_202;
    case 1936077360:
    case 1936077362:
    case 1936077876:
    case 1937125936:
    case 1937125938:
    case 1937126452:
      goto LABEL_180;
    case 1949458803:
    case 1949589875:
      goto LABEL_202;
  }

  v32 = v12 == 1952854576 || v12 == 1952854578;
  v33 = v32 || v12 == 1952855092;
  v34 = v33 || v12 == 1953903152;
  v35 = v34 || v12 == 1953903154;
  if (v35 || v12 == 1953903668)
  {
LABEL_180:
    if (!a4)
    {
      return 0;
    }

    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    *&v157 = 1;
    v156[1] = 0x3CuLL;
    *&v156[0] = 0;
    *(&v156[0] + 1) = 20;
    *&v43 = OUTLINED_FUNCTION_10_8();
    goto LABEL_182;
  }

  switch(v12)
  {
    case 1982882104:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      if (v8 == v131)
      {
        v133 = 53;
      }

      else
      {
        v133 = 0;
      }

      if (v8 == v131)
      {
        v134 = 70;
      }

      else
      {
        v134 = 0;
      }

      if (v8 == v131)
      {
        v135 = 13;
      }

      else
      {
        v135 = 0;
      }

      *(&v157 + 1) = 0x100000001;
      v158 = v132;
      *(&v156[1] + 1) = 10;
      *&v157 = 0x200000001;
      *(&v156[0] + 1) = 10;
      *&v156[1] = 30;
      *(&v155 + 1) = 0x100000001;
      *&v156[0] = v132;
      *&v154[16] = 13;
      *&v155 = 0x200000001;
      LODWORD(v153) = 4;
      v150 = 0x200000001;
      *&v147 = 70;
      *(&v147 + 1) = 70;
      *(&v140 + 1) = 0x200000004;
      v144 = 4;
      *&v138[16] = 53;
      *&v140 = 0x200000001;
      v137 = 0;
      *v154 = v135;
      *&v154[8] = 23;
      v145 = v134;
      *v138 = v133;
      *&v138[8] = 53;
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_46_0();
      v56 = 0;
      goto LABEL_193;
    case 1983000886:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_4_16();
      *&v156[0] = 0;
      *(&v156[0] + 1) = 110;
      OUTLINED_FUNCTION_35_1();
      *v154 = 103;
LABEL_182:
      LODWORD(v153) = 0;
      *&v143[16] = v43;
      v149 = v43;
      *v143 = v43;
LABEL_204:
      v139 = v43;
      *&v138[16] = 0;
      *v138 = v43;
      v137 = 0;
      v65 = a2;
      v66 = 2;
LABEL_273:
      v67 = a4;
      v68 = a5;
      v69 = 1;
LABEL_316:
      v70 = 0;
      goto LABEL_317;
    case 1983013176:
    case 1983144248:
      if (!a4)
      {
        return 0;
      }

      OUTLINED_FUNCTION_15_6();
      *(&v157 + 1) = 0x100000001;
      v158 = v124;
      *(&v156[1] + 1) = 10;
      *&v157 = 0x200000001;
      *(&v156[0] + 1) = 10;
      *&v156[1] = 30;
      *(&v155 + 1) = 0x100000001;
      *&v156[0] = v124;
      *&v154[16] = 13;
      *&v155 = 0x200000001;
      *v154 = 13;
      *&v154[8] = 23;
      LODWORD(v153) = 0;
      v102 = 0uLL;
LABEL_272:
      *&v143[16] = v102;
      v149 = v102;
      OUTLINED_FUNCTION_11_7();
      v137 = 0;
      v65 = a2;
      goto LABEL_273;
    case 1999843442:
      goto LABEL_205;
    case 2016567667:
LABEL_202:
      if (!a4)
      {
        return 0;
      }

      v158 = 1;
      *&v157 = 0x200000001;
      *(&v157 + 1) = 0x100000001;
      *&v156[1] = 60;
      *(&v156[1] + 1) = 20;
      *&v156[0] = 0;
      *(&v156[0] + 1) = 20;
      *&v43 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 4;
      *&v149 = v73;
      *(&v149 + 1) = 0x200000004;
      *&v143[16] = 110;
      *&v143[24] = 110;
      *v143 = 0;
      *&v143[8] = 110;
      goto LABEL_204;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_244:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_29_1();
    *&v156[1] = 60;
    *(&v156[0] + 1) = 20;
    *&v105 = OUTLINED_FUNCTION_10_8();
    LODWORD(v153) = 0;
    v151 = v106;
    v148 = 0x6EuLL;
    v146 = 110;
    v141 = v105;
    v91 = OUTLINED_FUNCTION_0_21();
    v96 = 505;
    v97 = 543;
    goto LABEL_246;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_242:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    OUTLINED_FUNCTION_29_1();
    *&v156[1] = 60;
    *&v156[0] = 0;
    *(&v156[0] + 1) = 20;
    *&v103 = OUTLINED_FUNCTION_10_8();
    LODWORD(v153) = 0;
    v150 = v104;
    v147 = 0x6EuLL;
    v144 = 0;
    v145 = 110;
    v140 = v103;
    v49 = OUTLINED_FUNCTION_0_21();
    v54 = 506;
    v55 = 3;
    v56 = 544;
    goto LABEL_193;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
    goto LABEL_252;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
LABEL_264:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    v149 = 0uLL;
    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_17_5();
    goto LABEL_292;
  }

  OUTLINED_FUNCTION_50_0();
  if (v10)
  {
    goto LABEL_202;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_244;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_242;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
    goto LABEL_252;
  }

  OUTLINED_FUNCTION_63_0();
  if (v10)
  {
LABEL_258:
    if (!a4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_15_6();
    v149 = 0uLL;
    *(&v157 + 1) = 0x100000001;
    v158 = 0;
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_18_4();
    OUTLINED_FUNCTION_17_5();
    v65 = OUTLINED_FUNCTION_5_14();
    v69 = 0;
    v70 = 504;
    goto LABEL_317;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
    goto LABEL_244;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
    goto LABEL_242;
  }

  OUTLINED_FUNCTION_62_0();
  if (v10)
  {
LABEL_252:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      OUTLINED_FUNCTION_29_1();
      *&v113 = OUTLINED_FUNCTION_10_8();
      LODWORD(v153) = 0;
      v152 = v114;
      v142 = v113;
      v115 = OUTLINED_FUNCTION_0_21();
      if (appendDstTextureDescriptions(v115, v116, v117, v118, v119, 507, 3, 545, v137, *v138, *&v138[8], *&v138[16], v142, *(&v142 + 1), 0, 0, 110, 110, 0, v152, 0x200000004, v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), 0, 0, 20, 60, *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158)))
      {
        return 4294954391;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  OUTLINED_FUNCTION_62_0();
  if (!v10)
  {
    if (v38 != 2033463352)
    {
      if (v38 != 2033463606)
      {
        if (v38 != 2037741158 && v38 != 2037741171)
        {
          if (v38 != 2084070960 && v38 != 2084075056)
          {
            if (v38 != 2084718401)
            {
              OUTLINED_FUNCTION_66_0();
              if (!v10)
              {
                OUTLINED_FUNCTION_66_0();
                if (!v10)
                {
                  OUTLINED_FUNCTION_66_0();
                  if (!v10)
                  {
                    OUTLINED_FUNCTION_52_0();
                    if (!v10)
                    {
                      return 4294954391;
                    }

LABEL_178:
                    if (a4)
                    {
                      OUTLINED_FUNCTION_15_6();
                      *&v41 = OUTLINED_FUNCTION_4_16();
                      v42 = 10;
LABEL_278:
                      *&v156[0] = 0;
                      *(&v156[0] + 1) = v42;
LABEL_279:
                      v155 = v41;
                      *&v154[16] = 0;
                      *v154 = v41;
                      goto LABEL_280;
                    }

                    return 0;
                  }

                  goto LABEL_223;
                }

                goto LABEL_200;
              }

LABEL_198:
              if (!a4)
              {
                return 0;
              }

              OUTLINED_FUNCTION_15_6();
              *&v64 = OUTLINED_FUNCTION_2_19();
              v139 = v64;
              *v143 = v64;
              OUTLINED_FUNCTION_0_21();
              OUTLINED_FUNCTION_46_0();
LABEL_225:
              v83 = 546;
              goto LABEL_319;
            }

LABEL_218:
            if (a4)
            {
              OUTLINED_FUNCTION_15_6();
              v149 = 0uLL;
              OUTLINED_FUNCTION_4_16();
              *&v156[0] = 0x100000000;
              *(&v156[0] + 1) = 80;
              OUTLINED_FUNCTION_35_1();
              OUTLINED_FUNCTION_23_2();
              *(&v139 + 1) = v81;
              *v143 = v82;
              OUTLINED_FUNCTION_54_0();
              OUTLINED_FUNCTION_5_14();
              OUTLINED_FUNCTION_46_0();
              v83 = 80;
              goto LABEL_319;
            }

            return 0;
          }

          goto LABEL_183;
        }

        if (!a4)
        {
          return 0;
        }

        OUTLINED_FUNCTION_15_6();
        v149 = 0uLL;
        *(&v157 + 1) = 2;
        v158 = 0;
        OUTLINED_FUNCTION_6_13();
        OUTLINED_FUNCTION_18_4();
        OUTLINED_FUNCTION_17_5();
        v65 = OUTLINED_FUNCTION_3_16();
        v70 = 501;
LABEL_317:
        v71 = 0;
        goto LABEL_318;
      }

      if (!a4)
      {
        return 0;
      }

      v158 = 0x200000000;
      goto LABEL_312;
    }

LABEL_286:
    if (a4)
    {
      OUTLINED_FUNCTION_15_6();
      v149 = 0uLL;
      *(&v157 + 1) = v126;
      v158 = 0x200000000;
      OUTLINED_FUNCTION_6_13();
      *&v156[0] = v127;
      *(&v156[0] + 1) = 70;
      OUTLINED_FUNCTION_20_2();
      *&v143[24] = 0;
      *&v143[8] = v128;
      *(&v139 + 1) = 4;
      *v143 = v129;
      *&v139 = 0;
      *&v138[8] = v128;
      *v138 = 123;
      goto LABEL_281;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_15_6();
  v149 = 0uLL;
  OUTLINED_FUNCTION_4_16();
  *&v156[0] = 0;
  *(&v156[0] + 1) = 90;
  OUTLINED_FUNCTION_20_2();
  *v143 = v130;
  *&v143[16] = v130;
  OUTLINED_FUNCTION_72();
LABEL_292:
  v65 = OUTLINED_FUNCTION_5_14();
  v69 = 0;
  v70 = 504;
  v71 = 3;
LABEL_318:
  v83 = 0;
LABEL_319:
  result = appendDstTextureDescriptions(v65, v66, v67, v68, v69, v70, v71, v83, v137, *v138, *&v138[8], *&v138[16], v139, *(&v139 + 1), *v143, *&v143[4], *&v143[8], *&v143[16], *&v143[24], v149, *(&v149 + 1), v153, *v154, *&v154[8], *&v154[16], v155, *(&v155 + 1), v156[0], SDWORD1(v156[0]), *(&v156[0] + 1), *&v156[1], *(&v156[1] + 1), v157, SDWORD1(v157), SDWORD2(v157), SHIDWORD(v157), v158, SHIDWORD(v158));
  if (result)
  {
    return 4294954391;
  }

  return result;
}

uint64_t appendSrcTextureDescriptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFArrayRef theArray, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, uint64_t a19, uint64_t a20, int a21, int a22, int a23, int a24, uint64_t a25, uint64_t a26, int a27, int a28, int a29, int a30, int a31)
{
  v243 = a4;
  HIDWORD(v241) = a2;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v37 = *(a1 + 160);
  if (v37[178] || !*(a1 + 72))
  {
    a9 = 0;
    a10 = 0;
  }

  if (v37[179] || !*(a1 + 72))
  {
    a14 = 0;
  }

  v242 = theArray;
  if (v37[176])
  {
    a19 = 0;
    a20 = 0;
  }

  v38 = *(a1 + 24);
  v39 = *(a1 + 16);
  v244 = a3;
  v40 = a3 + 160 * v38;
  v41 = *(a1 + 172);
  HIDWORD(v245) = 0;
  WORD1(v245) = 0;
  OUTLINED_FUNCTION_78(v39, a2, &v245 + 3, a4, &v245 + 1, &v245 + 2);
  v42 = 0;
  if (v37[166])
  {
    v68 = OUTLINED_FUNCTION_38_1();
    if (!selectFunctionConstantForMetalDevice(v68, a6, SHIDWORD(v241), v69, v70, v71, v72))
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_47_0();
    OUTLINED_FUNCTION_34_1();
    v42 = 0;
    if (!vtAppendTexDescSample(v73, v74, v75, v76, v77, v78, v79, v38, v224, SHIDWORD(v224), v232, HIDWORD(v232)))
    {
      *(v40 + 135) = 0;
      *(v244 + 52 * v41 + 1416) = -1;
      *(v40 + 134) = 0;
      *(v40 + 128) = 0;
      v42 = 1;
    }
  }

  if (v37[167] || a7 && !(v37[164] | v42))
  {
    v56 = OUTLINED_FUNCTION_38_1();
    if (selectFunctionConstantForMetalDevice(v56, a7, SHIDWORD(v241), v57, v58, v59, v60))
    {
      OUTLINED_FUNCTION_47_0();
      OUTLINED_FUNCTION_34_1();
      if (!vtAppendTexDescSample(v61, v62, v63, v64, v65, v66, v67, v38, v224, SHIDWORD(v224), v232, HIDWORD(v232)))
      {
        *(v40 + 128) = a8;
        v42 = 1;
      }
    }
  }

  if (v42)
  {
    v43 = *(a1 + 24);
    *(v244 + 160 * v43 + 132) = 0;
    if (!*(a1 + 75))
    {
      result = 0;
      v55 = (v244 + 160 * v43);
      v55[124] = 1;
      v55[126] = 1;
      v55[120] = 0;
      return result;
    }

    v44 = *(a1 + 144);
    v45.i64[0] = v44;
    v45.i64[1] = SHIDWORD(v44);
    v46 = vcvtq_f64_s64(v45);
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V2.2D, #1.0
    }

    *(v243 + 120 * v43 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(_Q2, v46)), vdivq_f64(_Q1, v46));
    v52 = v244 + 160 * v43;
    v53 = *(v52 + 112);
    if (v53 == 1 || v53 == 2)
    {
      result = 0;
      *(v52 + 116) = v53;
      return result;
    }

    return 0;
  }

LABEL_28:
  v81 = a27;
  v80 = a28;
  v83 = a25;
  v82 = a26;
  ensureReadableFormatPair(*(a1 + 152), &a9, &a10);
  ensureReadableFormatPair(*(a1 + 152), &a14, &a15);
  ensureReadableFormatPair(*(a1 + 152), &a19, &a20);
  if (*(a1 + 152))
  {
    if (v83)
    {
      OUTLINED_FUNCTION_42_0();
      MTLPixelFormatGetInfoForDevice();
      if ((v247 & 4) != 0)
      {
        v91 = v83;
      }

      else
      {
        v91 = 0;
      }
    }

    else
    {
      v91 = 0;
    }

    v92 = v244;
    if (v82)
    {
      OUTLINED_FUNCTION_42_0();
      MTLPixelFormatGetInfoForDevice();
      if ((v247 & 4) != 0)
      {
        v93 = v82;
      }

      else
      {
        v93 = 0;
      }
    }

    else
    {
      v93 = 0;
    }

    if (v93)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v82 == 0;
    }

    if (_ZF)
    {
      v95 = v91;
    }

    else
    {
      v95 = 0;
    }

    if (v95)
    {
      v96 = 1;
    }

    else
    {
      v96 = v83 == 0;
    }

    if (v96)
    {
      v82 = v93;
    }

    else
    {
      v82 = 0;
    }

    v83 = v95;
  }

  else
  {
    v92 = v244;
  }

  v97 = a14;
  v98 = a9;
  if (*(a1 + 68) == 3)
  {
    if (!(a9 | a14))
    {
LABEL_61:
      v103 = 0;
LABEL_62:
      v104 = Count;
      if (a9)
      {
        if (!*(a1 + 73))
        {
          v126 = *(a1 + 24);
          v127 = v92 + 160 * v126;
          if (*(v127 + 125))
          {
            if (!*(v127 + 132))
            {
              v128 = a10;
              result = vtAppendTexDescRead(*(a1 + 152), v242, (v127 + 4), a9, 0, 4, v126, Count, 1, 1);
              if (result)
              {
                return result;
              }

              v129 = a13;
              v130 = *(a1 + 24);
              v131 = v92 + 160 * v130;
              *(v131 + 112) = *(a1 + 188);
              *(v131 + 128) = v129;
              if (v128)
              {
                v132 = OUTLINED_FUNCTION_56_0();
                result = vtAppendTexDescRead(v132, v242, (v133 + 8), v128, v134, v135, v136, Count + 1, v226, SHIDWORD(v226));
                if (result)
                {
                  return result;
                }

                v130 = *(a1 + 24);
              }

              v137 = v92 + 160 * v130;
              if (!*(v137 + 120))
              {
                result = 0;
                *(v137 + 112) = HIDWORD(v241);
                return result;
              }

              return 0;
            }
          }
        }
      }

      v105 = a19;
      v246 = 0;
      if (!v83)
      {
LABEL_71:
        v108 = a20;
        v246 = 0;
        if (!v105)
        {
          return 4294954391;
        }

        LODWORD(v244) = v103;
        LODWORD(Count) = v81;
        result = vtAppendTexDescRead(*(a1 + 152), v242, (v92 + 160 * *(a1 + 24) + 20), v105, 0, 1, *(a1 + 24), v104, 1, 1);
        if (result)
        {
          return result;
        }

        v113 = a23;
        v114 = v104 + 1;
        v115 = *(a1 + 24);
        v116 = v92 + 160 * v115;
        *(v116 + 112) = *(a1 + 188);
        *(v116 + 128) = v113;
        *(v116 + 125) = 0;
        if (v108)
        {
          v117 = OUTLINED_FUNCTION_56_0();
          result = vtAppendTexDescRead(v117, v242, (v118 + 24), v108, v119, v120, v121, v104 + 1, v225, SHIDWORD(v225));
          if (result)
          {
            return result;
          }

          v114 = v104 + 2;
          v115 = *(a1 + 24);
        }

        if (v82)
        {
          if (!OUTLINED_FUNCTION_37_1(*(a1 + 152), v109, v110, v92 + 160 * v115 + 52, v92 + 160 * v115 + 84, v111, v115, v112, v225, HIDWORD(v225), v232, Count, v241, v242, v243, v244, v245))
          {
            return 4294954391;
          }

          OUTLINED_FUNCTION_36_1();
          v229 = v162;
          OUTLINED_FUNCTION_34_1();
          result = vtAppendTexDescSample(v163, v164, v165, v166, v167, v168, v169, v170, v114, v229, 1, 1u);
          if (result)
          {
            return result;
          }

          OUTLINED_FUNCTION_13_7();
          OUTLINED_FUNCTION_40_1();
          if (!selectFunctionConstantForMetalDevice(v171, v172, v173, v174, v175, v176, 0))
          {
            return 4294954391;
          }

          OUTLINED_FUNCTION_36_1();
          v233 = *(a1 + 196);
          v236 = *(a1 + 200);
          v228 = v177;
          v230 = v178;
          OUTLINED_FUNCTION_44_0();
          result = vtAppendTexDescSample(v179, v180, v181, v182, v183, v240, v80, v184, v228, v230, v233, v236);
          if (result)
          {
            return result;
          }

          LODWORD(v115) = *(a1 + 24);
        }

        v122 = a24;
        v123 = v92 + 160 * v115;
        if (!*(v123 + 120))
        {
          *(v123 + 112) = HIDWORD(v241);
        }

        if (v122 && *(a1 + 75))
        {
          result = 0;
          v124 = v243 + 120 * v115;
          v125.i32[1] = 1065353216;
          *(v124 + 64) = xmmword_18FED0640;
          *v125.i32 = 1.0 / *(a1 + 196);
          *(v124 + 80) = vdup_lane_s32(v125, 0);
          *(v124 + 88) = 0x3F0000003F000000;
          *(v92 + 160 * v115 + 116) = v122;
          return result;
        }

        return 0;
      }

      v106 = *(a1 + 24);
      if (a19)
      {
        v107 = v92 + 160 * v106;
        if (!*(v107 + 132) && *(a1 + 68) != 2 && *(v107 + 120) && !*(a1 + 73))
        {
LABEL_70:
          v105 = a19;
          goto LABEL_71;
        }
      }

      v138 = v103;
      if (selectFunctionConstantForMetalDevice(*(a1 + 152), v83, SHIDWORD(v241), v92 + 160 * v106 + 52, v92 + 160 * v106 + 84, &v246, (v92 + 160 * v106 + 112)))
      {
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_34_1();
        result = vtAppendTexDescSample(v140, v141, v142, v143, v144, v145, v146, v147, Count, v138, 1, 1u);
        if (result)
        {
          return result;
        }

        if (!v82)
        {
LABEL_99:
          v148 = a29;
          v149 = *(a1 + 24);
          v150 = v92 + 160 * v149;
          *(v150 + 132) = 0;
          *(v150 + 128) = v148;
          *(v150 + 125) = 0;
          if (*(a1 + 75))
          {
            v151 = v92 + 160 * v149;
            v152 = *(v151 + 112);
            if (v152 == 1)
            {
              v153 = a30;
              goto LABEL_112;
            }

            if (v152 == 2)
            {
              v153 = a31;
LABEL_112:
              *(v151 + 116) = v153;
            }
          }

          result = 0;
          v160 = v243 + 120 * v149;
          *(v160 + 64) = xmmword_18FED0640;
          __asm { FMOV            V1.2S, #1.0 }

          *(v160 + 80) = vdiv_f32(_D1, vcvt_f32_s32(*(a1 + 196)));
          *(v160 + 88) = 0x3F0000003F000000;
          return result;
        }

        v104 = Count + 1;
        ++v138;
        OUTLINED_FUNCTION_13_7();
        OUTLINED_FUNCTION_40_1();
        if (selectFunctionConstantForMetalDevice(v185, v186, v187, v188, v189, v190, v191))
        {
          OUTLINED_FUNCTION_36_1();
          v234 = *(a1 + 196);
          v237 = *(a1 + 200);
          OUTLINED_FUNCTION_44_0();
          result = vtAppendTexDescSample(v192, v193, v194, v195, v196, v81, v80, v197, v104, v138, v234, v237);
          if (result)
          {
            return result;
          }

          goto LABEL_99;
        }
      }

      v103 = v138;
      goto LABEL_70;
    }

    v99 = *(a1 + 24);
    if (!*(a1 + 208))
    {
      v100 = *(v92 + 160 * v99 + 120);
      if (!v100)
      {
        goto LABEL_56;
      }

      v89.i32[0] = *(a1 + 128);
      *v90.i32 = *v89.i32 + (truncf(*v89.i32 * 0.25) * -4.0);
      v139.i64[0] = 0x8000000080000000;
      v139.i64[1] = 0x8000000080000000;
      v89.i32[0] = vbslq_s8(v139, v90, v89).i32[0];
      if (*v89.i32 < 0.001 || *v89.i32 > 3.99)
      {
        v100 = (*(a1 + 136) & 3) == 0;
        goto LABEL_56;
      }
    }

    v100 = 0;
LABEL_56:
    *(v92 + 160 * v99 + 125) = v100;
  }

  v101 = a15;
  v246 = 0;
  if (!v97)
  {
    goto LABEL_61;
  }

  v102 = v92 + 160 * *(a1 + 24);
  if (!*(v102 + 125) || v98 && !*(v102 + 132))
  {
    goto LABEL_61;
  }

  if (!OUTLINED_FUNCTION_37_1(*(a1 + 152), v84, v85, v102 + 36, v102 + 68, v86, v87, v88, v224, HIDWORD(v224), v232, Count, v241, v242, v243, v244, v245))
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescRead(v154, v242, v155, v97, 0, v156, v157, Count, v227, SHIDWORD(v227));
  if (result)
  {
    return result;
  }

  v158 = v92 + 160 * *(a1 + 24);
  *(v158 + 132) = 0;
  *(v158 + 128) = 0;
  if (v101 && !*(a1 + 73))
  {
    OUTLINED_FUNCTION_40_1();
    if (!selectFunctionConstantForMetalDevice(v198, v199, v200, v201, v202, v203, v204))
    {
      v103 = 1;
      Count = (Count + 1);
LABEL_133:
      v92 = v244;
      goto LABEL_62;
    }

    v205 = OUTLINED_FUNCTION_36_1();
    result = vtAppendTexDescRead(v205, v242, v206, v101, v207, v208, *(a1 + 24), Count + 1, *(a1 + 196), *(a1 + 200));
    if (result)
    {
      return result;
    }

    v159 = (Count + 2);
    if (!v82)
    {
      return 0;
    }
  }

  else
  {
    v159 = (Count + 1);
    if (!v82)
    {
      return 0;
    }
  }

  if (!*(a1 + 73))
  {
    return 0;
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_40_1();
  v216 = selectFunctionConstantForMetalDevice(v209, v210, v211, v212, v213, v214, v215);
  v103 = 1;
  if (!v216)
  {
    Count = v159;
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_36_1();
  v235 = *(a1 + 196);
  v238 = *(a1 + 200);
  v231 = v217;
  OUTLINED_FUNCTION_44_0();
  result = vtAppendTexDescSample(v218, v219, v220, v221, v222, v81, v80, v223, v159, v231, v235, v238);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t appendSrcTextureDescriptions_3PlaneSample(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFArrayRef theArray, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37[3] = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v16 = 0;
  v34 = 0;
  v37[0] = a6;
  v37[1] = a7;
  v37[2] = a8;
  v17 = a4 + 40;
  v18 = a3 + 84;
  v19 = a4 + 64;
  v35 = 0x100000001;
  v36 = 1;
  v20 = Count;
  while (1)
  {
    v21 = v37[v16];
    v22 = *(a1 + 24);
    if (!v21)
    {
      goto LABEL_20;
    }

    v23 = *(&v35 + v16);
    result = selectFunctionConstantForMetalDevice(*(a1 + 152), v21, a2, v18 + 160 * v22 - 32, v18 + 160 * v22, &v34, (a3 + 160 * v22 + 112));
    if (!result)
    {
      return result;
    }

    if (vtAppendTexDescSample(*(a1 + 152), theArray, v34, v21, 2, v16, v23, *(a1 + 24), v20 + v16, v16, 1, 1u))
    {
      return 4294954391;
    }

    if (*(a1 + 75))
    {
      v25 = *(a1 + 24);
      v26 = a3 + 160 * v25;
      v27 = *(v26 + 112);
      if (v27 == 1)
      {
        v28 = 54;
LABEL_13:
        *(v26 + 116) = v28;
      }

      else if (v27 == 2)
      {
        v28 = 56;
        goto LABEL_13;
      }

      if (v16 == 1)
      {
        *(v17 + 120 * v25 + 40) = 1.0 / *(a1 + 196);
        v29 = 1.0 / *(a1 + 200);
        v30 = 1;
      }

      else
      {
        *(v19 + 120 * v25) = 1065353216;
        v29 = 1.0;
        v30 = v16;
      }

      v31 = v17 + 120 * v25 + 16 * v30;
      *(v31 + 28) = v29;
      *(v31 + 32) = 0;
    }

    ++v16;
    v18 += 4;
    v19 += 16;
    if (v16 == 3)
    {
      v22 = *(a1 + 24);
LABEL_20:
      result = 0;
      v32 = a3 + 160 * v22;
      *(v32 + 132) = 0;
      *(v32 + 128) = 0;
      *(v32 + 125) = 0;
      return result;
    }
  }
}

uint64_t appendSrcTextureDescriptions_4PlaneSample(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v19 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v7 = 0;
  v16 = 0;
  v18[0] = vdupq_n_s64(0x14uLL);
  v18[1] = v18[0];
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  v17 = v8;
  v9 = a2 + 84;
  v10 = Count;
  while (1)
  {
    v11 = *(v18 + v7);
    if (!v11)
    {
LABEL_9:
      result = 0;
      v15 = a2 + 160 * *(a1 + 24);
      *(v15 + 132) = 0;
      *(v15 + 128) = 0;
      *(v15 + 125) = 0;
      return result;
    }

    v12 = *(&v18[-1] + v7);
    v13 = v9 + 160 * *(a1 + 24);
    result = selectFunctionConstantForMetalDevice(*(a1 + 152), *(v18 + v7), 2, v13 - 32, v13, &v16, (a2 + 160 * *(a1 + 24) + 112));
    if (!result)
    {
      return result;
    }

    if (vtAppendTexDescSample(*(a1 + 152), theArray, v16, v11, 2, v7, v12, *(a1 + 24), v10 + v7, v7, 1, 1u))
    {
      return 4294954391;
    }

    ++v7;
    v9 += 4;
    if (v7 == 4)
    {
      goto LABEL_9;
    }
  }
}

void *ensureReadableFormatPair(void *result, uint64_t *a2, uint64_t *a3)
{
  if (!result || !a2 || !a3)
  {
    return result;
  }

  v5 = *a2;
  v6 = *a3;
  if (*a2)
  {
    OUTLINED_FUNCTION_8_9();
    OUTLINED_FUNCTION_41_1();
    result = MTLPixelFormatGetInfoForDevice();
    if (v12)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_9:
  OUTLINED_FUNCTION_8_9();
  result = MTLPixelFormatGetInfoForDevice();
  if (v12)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

LABEL_14:
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = v5 == 0;
  }

  if (!v11)
  {
    v8 = 0;
  }

  *a2 = v10;
  *a3 = v8;
  return result;
}

uint64_t selectFunctionConstantForMetalDevice(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, int *a7)
{
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  MTLPixelFormatGetInfoForDevice();
  if ((*v15 & 0x20000) != 0)
  {
    result = 1;
    v14 = 1;
    if (a3 == 1 || (v15[2] & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v15[2])
  {
LABEL_8:
    v14 = 2;
    result = 1;
    a4 = a5;
    goto LABEL_9;
  }

  result = 0;
  a4 = 0;
  v14 = 0;
LABEL_9:
  if (a6)
  {
    *a6 = a4;
  }

  if (a7)
  {
    *a7 = v14;
  }

  return result;
}

uint64_t appendDstTextureDescriptions(unsigned int *a1, uint64_t a2, uint64_t a3, __CFArray *a4, int a5, uint64_t a6, int a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, int a34, int a35, int a36, int a37, int a38)
{
  v41 = a5;
  v44 = a2;
  v46 = a1[1];
  v47 = *(a1 + 13);
  if (v47[182] || *(a1 + 68))
  {
    a10 = 0;
    a11 = 0;
    a12 = 0;
  }

  if (v47[183] || *(a1 + 68))
  {
    a17 = 0;
    a18 = 0;
    a19 = 0;
  }

  if (v47[180])
  {
    a23 = 0;
    a24 = 0;
    a25 = 0;
  }

  if (v47[181])
  {
    a30 = 0;
    a31 = 0;
    a32 = 0;
  }

  v48 = a1[6];
  v179 = a2;
  if (v48 == 2)
  {
    v176 = v46;
    v49 = *(a1 + 2);
    v50 = *(a1 + 12);
    v51 = a1[29];
    v181 = 0;
    v180 = 0;
    OUTLINED_FUNCTION_78(v49, a2, &v180 + 1, a4, &v181, &v180);
    if (v47[172])
    {
      if (!selectFunctionConstantForMetalDevice(v50, a6, v44, 0, 0, 0, (a3 + 1360)))
      {
LABEL_31:
        v48 = a1[6];
        v46 = v176;
        v41 = a5;
        v44 = v179;
        goto LABEL_32;
      }

      v52 = 1;
      OUTLINED_FUNCTION_34_1();
      if (!vtAppendTexDescRender(v63, v64, v65, v66, v67, v68, v69, 1))
      {
        v52 = 0;
        *(a3 + 1369) = 0;
        *(a3 + 52 * v51 + 1416) = -1;
        *(a3 + 1376) = a7;
      }
    }

    else
    {
      v52 = 1;
    }

    if (v47[173] || (!v47[170] ? (v53 = a8 == 0) : (v53 = 1), !v53 ? (v54 = v52) : (v54 = 0), v54 == 1))
    {
      if (selectFunctionConstantForMetalDevice(v50, a8, v179, 0, 0, 0, (a3 + 1360)))
      {
        OUTLINED_FUNCTION_34_1();
        if (!vtAppendTexDescRender(v56, v57, v58, v59, v60, v61, v62, 1))
        {
          *(a3 + 1376) = a9;
          goto LABEL_23;
        }
      }
    }

    if ((v52 & 1) == 0)
    {
LABEL_23:
      result = 0;
      *(a3 + 1365) = 1;
LABEL_24:
      *(a3 + 1380) = 0;
      return result;
    }

    goto LABEL_31;
  }

LABEL_32:
  v70 = *(a1 + 12);
  if (v48 == 3)
  {
    ensureWritableFormatTriple(v70, *a1, &a10, &a11, &a12);
    v71 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v71, v72, &a17, &a18, &a19);
    v73 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v73, v74, &a23, &a24, &a25);
    v75 = OUTLINED_FUNCTION_16_6();
    ensureWritableFormatTriple(v75, v76, &a30, &a31, &a32);
  }

  else
  {
    ensureRenderableFormatTriple(v70, &a10, &a11, &a12);
    ensureRenderableFormatTriple(*(a1 + 12), &a17, &a18, &a19);
    ensureRenderableFormatTriple(*(a1 + 12), &a23, &a24, &a25);
    ensureRenderableFormatTriple(*(a1 + 12), &a30, &a31, &a32);
  }

  v77 = a1[6];
  v78 = a17;
  v79 = a10;
  if (v77 == 3)
  {
    if (!(a10 | a17))
    {
      goto LABEL_47;
    }

    if (*(a1 + 144))
    {
      v80 = (a1[18] & 3) == 0 && (a1[20] & 3) == 0;
      *(a3 + 1364) = v80;
    }
  }

  v82 = a18;
  v81 = a19;
  v182 = 0;
  if (v77 == 2 || !v78 || !*(a3 + 1364) || v79 && !*(a3 + 1380))
  {
    goto LABEL_47;
  }

  *(a3 + 1380) = 0;
  *(a3 + 1376) = 0;
  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v78, v44, a3 + 1312, a3 + 1336, &v182, (a3 + 1360)))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescWrite(v123, v124, a4, v125, v78, 0, v126, v46, v170, SHIDWORD(v170));
  if (result)
  {
    return result;
  }

  if (!v82)
  {
LABEL_75:
    result = 0;
    goto LABEL_24;
  }

  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v82, v44, a3 + 1316, a3 + 1340, &v182, (a3 + 1360)))
  {
    ++v46;
    goto LABEL_47;
  }

  v136 = OUTLINED_FUNCTION_16_6();
  v140 = v182;
  if (v41 == 1)
  {
    v141 = a1[34];
    v142 = a1[35];
  }

  else
  {
    OUTLINED_FUNCTION_73();
  }

  result = vtAppendTexDescWrite(v136, v137, a4, v140, v82, v138, v139, v46 + 1, v141, v142);
  if (result)
  {
    return result;
  }

  if (!v81)
  {
    goto LABEL_75;
  }

  v46 += 2;
  if (!selectFunctionConstantForMetalDevice(*(a1 + 12), v81, v44, a3 + 1320, a3 + 1344, &v182, (a3 + 1360)))
  {
LABEL_47:
    if (a10 && a1[6] != 2 && *(a3 + 1364))
    {
      v83 = a16;
      v84 = a11;
      v85 = a12;
      *(a3 + 1360) = a1[33];
      *(a3 + 1376) = v83;
      v86 = OUTLINED_FUNCTION_14_6();
      result = vtAppendTexDescWrite(v86, v87, a4, (a3 + 1288), v88, 0, v89, v46, v170, SHIDWORD(v170));
      if (!result)
      {
        if (!v84)
        {
          return 0;
        }

        v90 = OUTLINED_FUNCTION_16_6();
        if (v41 == 1)
        {
          v94 = a1[34];
          v95 = a1[35];
        }

        else
        {
          OUTLINED_FUNCTION_73();
        }

        result = vtAppendTexDescWrite(v90, v91, a4, (a3 + 1292), v84, v92, v93, v46 + 1, v94, v95);
        if (!result)
        {
          if (!v85)
          {
            return 0;
          }

          v119 = OUTLINED_FUNCTION_14_6();
          result = vtAppendTexDescWrite(v119, v120, a4, (a3 + 1296), v85, v121, v122, v46 + 2, v171, SHIDWORD(v171));
          if (!result)
          {
            return 0;
          }
        }
      }

      return result;
    }

    v96 = a30;
    v183[0] = 0;
    if (a30)
    {
      v97 = a36;
      v98 = a33;
      v100 = a37;
      v99 = a38;
      if (!a23 || *(a3 + 1380))
      {
        *(a3 + 1360) = v179;
        v104 = (a3 + 1380);
        v105 = OUTLINED_FUNCTION_67(v99);
        v177 = v100;
        if (v111 == 2)
        {
          v101 = v110;
          v102 = v109;
          v103 = v108;
          goto LABEL_61;
        }

        v127 = v107;
        v174 = v109;
        v175 = v110;
        v173 = v108;
        if (selectFunctionConstantForMetalDevice(v105, v96, v106, a3 + 1324, a3 + 1348, v183, (a3 + 1360)))
        {
          OUTLINED_FUNCTION_16_6();
          OUTLINED_FUNCTION_24_2();
          result = vtAppendTexDescWrite(v128, v129, a4, v130, v96, 0, v127, v46, v170, SHIDWORD(v170));
          if (result)
          {
            return result;
          }

          if (!v175)
          {
            goto LABEL_66;
          }

          if (selectFunctionConstantForMetalDevice(*(a1 + 12), v175, v179, a3 + 1328, a3 + 1352, v183, (a3 + 1360)))
          {
            v131 = OUTLINED_FUNCTION_16_6();
            v133 = v183[0];
            if (a5 == 1)
            {
              v134 = a1[34];
              v135 = a1[35];
            }

            else
            {
              OUTLINED_FUNCTION_73();
            }

            result = vtAppendTexDescWrite(v131, v132, a4, v133, v175, v98, v97, v46 + 1, v134, v135);
            if (result)
            {
              return result;
            }

            if (!v174)
            {
LABEL_66:
              result = 0;
              *v104 = 0;
              return result;
            }

            v46 += 2;
            if (selectFunctionConstantForMetalDevice(*(a1 + 12), v174, v179, a3 + 1332, a3 + 1356, v183, (a3 + 1360)))
            {
              OUTLINED_FUNCTION_16_6();
              OUTLINED_FUNCTION_24_2();
              result = vtAppendTexDescWrite(v148, v149, a4, v150, v174, v173, v100, v46, v170, SHIDWORD(v170));
              if (result)
              {
                return result;
              }

              goto LABEL_66;
            }
          }

          else
          {
            ++v46;
          }
        }
      }

      else if (a1[6] == 2)
      {
        v101 = a31;
        v102 = a32;
        v177 = a37;
        v103 = a34;
        v104 = (a3 + 1380);
        *(a3 + 1360) = v179;
        OUTLINED_FUNCTION_67(v99);
LABEL_61:
        OUTLINED_FUNCTION_34_1();
        result = vtAppendTexDescRender(v112, v113, v114, v115, v116, v117, v118, 1);
        if (result)
        {
          return result;
        }

        if (v101)
        {
          result = vtAppendTexDescRender(*(a1 + 12), a4, v101, v98, v97, 1, a1[34], a1[35]);
          if (result)
          {
            return result;
          }

          if (v102)
          {
            result = vtAppendTexDescRender(*(a1 + 12), a4, v102, v103, v177, 2, a1[34], a1[35]);
            if (result)
            {
              return result;
            }
          }
        }

        goto LABEL_66;
      }
    }

    if (a23 && a1[6] != 2)
    {
      v152 = a29;
      v153 = a24;
      v154 = a25;
      *(a3 + 1360) = a1[33];
      *(a3 + 1376) = v152;
      *(a3 + 1364) = 0;
      v155 = OUTLINED_FUNCTION_14_6();
      LODWORD(result) = vtAppendTexDescWrite(v155, v156, a4, (a3 + 1300), v157, 0, v158, v46, v170, SHIDWORD(v170));
      if (result)
      {
        goto LABEL_117;
      }

      if (!v153)
      {
        goto LABEL_110;
      }

      v159 = OUTLINED_FUNCTION_16_6();
      if (v163 == 1)
      {
        v164 = a1[34];
        v165 = a1[35];
      }

      else
      {
        OUTLINED_FUNCTION_73();
      }

      LODWORD(result) = vtAppendTexDescWrite(v159, v160, a4, (a3 + 1304), v153, v161, v162, v46 + 1, v164, v165);
      if (result || v154 && (v166 = OUTLINED_FUNCTION_14_6(), LODWORD(result) = vtAppendTexDescWrite(v166, v167, a4, (a3 + 1308), v154, v168, v169, v46 + 2, v172, SHIDWORD(v172)), result))
      {
LABEL_117:
        v151 = 0;
      }

      else
      {
LABEL_110:
        LODWORD(result) = 0;
        v151 = 1;
      }
    }

    else
    {
      v151 = 0;
      LODWORD(result) = 0;
    }

    if (result)
    {
      v151 = 1;
    }

    if (v151)
    {
      return result;
    }

    else
    {
      return 4294954391;
    }
  }

  OUTLINED_FUNCTION_16_6();
  OUTLINED_FUNCTION_24_2();
  result = vtAppendTexDescWrite(v143, v144, a4, v145, v81, v146, v147, v46, v170, SHIDWORD(v170));
  if (!result)
  {
    goto LABEL_75;
  }

  return result;
}

uint64_t ensureWritableFormatTriple(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (result && a3 && a4 && a5)
  {
    v9 = result;
    v10 = *a3;
    v11 = *a4;
    v12 = *a5;
    v13 = returnMetalFormatIfWritable(result, a2, *a3);
    v14 = returnMetalFormatIfWritable(v9, a2, v11);
    result = returnMetalFormatIfWritable(v9, a2, v12);
    if (v10)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    v16 = !v15;
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    if (v11)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = !v18;
    if ((v19 & v16) != 0)
    {
      v20 = result;
    }

    else
    {
      v20 = 0;
    }

    if (v12)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 0;
    }

    v22 = !v21;
    if ((v22 & v19) != 0)
    {
      v23 = v13;
    }

    else
    {
      v23 = 0;
    }

    *a3 = v23;
    if (!v22)
    {
      v17 = 0;
    }

    *a4 = v17;
    *a5 = v20;
  }

  return result;
}

void *ensureRenderableFormatTriple(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!result || !a2 || !a3 || !a4)
  {
    return result;
  }

  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  if (*a2)
  {
    OUTLINED_FUNCTION_8_9();
    result = MTLPixelFormatGetInfoForDevice();
    if ((v22 & 0x10) != 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
LABEL_10:
      OUTLINED_FUNCTION_8_9();
      result = MTLPixelFormatGetInfoForDevice();
      if ((v22 & 0x10) != 0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      if (v9)
      {
        goto LABEL_14;
      }

LABEL_19:
      v12 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_10;
    }
  }

  v11 = 0;
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_14:
  OUTLINED_FUNCTION_8_9();
  result = MTLPixelFormatGetInfoForDevice();
  if ((v22 & 0x10) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_20:
  if (v7)
  {
    v13 = v10 == 0;
  }

  else
  {
    v13 = 0;
  }

  v14 = !v13;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  if (v8)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if ((v14 & v17) == 0)
  {
    v12 = 0;
  }

  if (v9)
  {
    v18 = v12 == 0;
  }

  else
  {
    v18 = 0;
  }

  v19 = !v18;
  if ((v19 & v17) != 0)
  {
    v20 = v10;
  }

  else
  {
    v20 = 0;
  }

  *a2 = v20;
  if (v19)
  {
    v21 = v15;
  }

  else
  {
    v21 = 0;
  }

  *a3 = v21;
  *a4 = v12;
  return result;
}

void vtmtsBuildScalingTable(void *a1, int a2, float *a3, void *a4, _DWORD *a5, _DWORD *a6, float a7, float a8)
{
  v8 = 0;
  if (a7 >= -1.0)
  {
    v9 = a7;
  }

  else
  {
    v9 = -1.0;
  }

  if (a7 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  if (a3 && a1 && a4 && a5 && a6)
  {
    if (fabsf(a7) <= 0.001)
    {
      v8 = 0;
    }

    else
    {
      v11 = (fabsf(3.0 / v10) * 2.0 + 0.5);
      if (v11 <= 6)
      {
        v12 = 6;
      }

      else
      {
        v12 = v11;
      }

      v13 = (v12 + 3);
      v14 = v13 & 0x7FFFFFFC;
      v15 = malloc_type_calloc(1uLL, 4 * (v14 << 6), 0x100004052888210uLL);
      v16 = v15;
      v17 = 0;
      v18 = 1.0;
      v19 = 4 * v12;
      if (v14 <= v12 + 1)
      {
        v20 = v12 + 1;
      }

      else
      {
        v20 = v13 & 0x7FFFFFFC;
      }

      v46 = 4 * (v20 - v12);
      v36 = v12 + 3;
      v21 = (4 * v13) & 0x3FFFFFFF0;
      v22 = v15;
      v39 = v15;
      do
      {
        v23 = ((v12 * -0.5) + 1.0) + (v17 * -0.015625);
        v24 = 0.0;
        v25 = v22;
        v26 = v12;
        v27 = v16;
        do
        {
          v28 = v10 * v23;
          v29 = fabsf(v10 * v23);
          v30 = 0.0;
          if (v29 < 3.0)
          {
            v30 = 1.0;
            if (v29 >= 0.000000059605)
            {
              v31 = sinf(v28 * 3.1416);
              v18 = 1.0;
              v30 = (v31 * sinf((v28 * 3.1416) / 3.0)) / ((v28 * ((v28 * 3.1416) * 3.1416)) / 3.0);
            }
          }

          *v25++ = v30;
          v24 = v24 + v30;
          v23 = v23 + v18;
          v27 += 4;
          --v26;
        }

        while (v26);
        if (v12 < v14)
        {
          bzero(v27, v46);
        }

        v32 = 0;
        do
        {
          v22[v32 / 4] = (v18 / v24) * v22[v32 / 4];
          v32 += 4;
        }

        while (v19 != v32);
        ++v17;
        v16 += (v19 + 12) & 0x3FFFFFFF0;
        v22 = (v22 + v21);
      }

      while (v17 != 64);
      v33 = [a1 newTextureWithDescriptor:{objc_msgSend(MEMORY[0x1E69741C0], "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", 125, v36 >> 2, 64, 0)}];
      memset(v47, 0, 24);
      v47[3] = v36 >> 2;
      v48 = xmmword_18FED0650;
      v8 = v39;
      [v33 replaceRegion:v47 mipmapLevel:0 withBytes:v39 bytesPerRow:4 * v14];
      v34 = (0.5 / a7) - v12 * 0.5 + 0.5;
      if (!a2)
      {
        v34 = 0.5 - v12 * 0.5;
      }

      v35 = v34;
      *a3 = v35 * a8;
      *a5 = v12;
      *a6 = 64;
      *a4 = v33;
    }
  }

  free(v8);
}

uint64_t VTMetalTransferSessionCopyProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyProperty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyDefaultProperty_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCopyDefaultProperty_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionCreatePixelBufferDescriptionWithOptions_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionConfigureForSourceAndDest_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionTransferImageSync_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

double vtMetalTransferSessionTransferImageCommonSync_cold_4(const __CFData *a1, uint64_t a2)
{
  if (CFDataGetLength(a1) >= 0x24)
  {
    v4 = OUTLINED_FUNCTION_27();
    v9.length = 36;
    CFDataGetBytes(v4, v9, v5);
    result = *&v6;
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
  }

  return result;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_5(__CVBuffer *a1, _DWORD *a2)
{
  CVPixelBufferGetPixelFormatType(a1);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, vars0);
  *a2 = result;
  return result;
}

BOOL vtMetalTransferSessionTransferImageCommonSync_cold_6(uint64_t a1, _DWORD *a2)
{
  v3 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, vars0);
  *a2 = v3;
  return v3 == 0;
}

uint64_t vtMetalTransferSessionTransferImageCommonSync_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionCompositeImageSync_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTMetalTransferSessionComposeImageWithAffineMatrix_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtmtsSetUpProcessingNeeds_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtmtsSetUpProcessingNeeds_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalSample_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtCreateTexDescGlobalWrite_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t vtAllocateMetalTextureForList_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t __VTPopulateColorPrimariesAndTransferFunctionValuesModern_block_invoke_4_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTDecompressionSessionRemoteServer_EnableMIO(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, cf))
  {
    OUTLINED_FUNCTION_4_17(cfa[3], v8, cfa);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return 0;
}

uint64_t vtdss_findAndRetainClientFromCommandPort(uint64_t a1, uint64_t a2)
{
  result = FigRPCLookupClientConnection();
  if (!result)
  {
    result = FigRPCGetConnectionInfo();
    if (!result)
    {
      if (a2)
      {
        result = 4294954393;
        if (*a2)
        {
          if (*(*a2 + 185))
          {
            return 4294954393;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        return 4294954393;
      }
    }
  }

  return result;
}

uint64_t vtdss_createTimeoutDebugContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v10, cf);
  if (!cfa)
  {
    return 0;
  }

  v8 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  CFRelease(cfa);
  return v8;
}

uint64_t VTDecompressionSessionRemoteServer_Destroy(uint64_t a1)
{
  v9 = 0;
  vtdss_findAndRetainClientFromCommandPort(a1, &v9);
  v1 = v9;
  if (v9)
  {
    *(v9 + 184) = 1;
    if (*(v1 + 160) && *(v1 + 168))
    {
      FigSemaphoreSignal();
      dispatch_group_wait(*(v9 + 168), 0xFFFFFFFFFFFFFFFFLL);
    }

    FigRPCDisposeClientConnection();
    v4 = v9;
    *(v9 + 16) = 0;
    if (*(v4 + 24))
    {
      VTDecompressionSessionInvalidate(*(v4 + 24));
      v4 = v9;
    }

    if (*(v4 + 32))
    {
      VTTileDecompressionSessionInvalidate(*(v4 + 32), v2, v3);
      v4 = v9;
    }

    if (*(v4 + 144))
    {
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v8[2] = __VTDecompressionSessionRemoteServer_Destroy_block_invoke;
      v8[3] = &__block_descriptor_tmp_25;
      v8[4] = v5;
      dispatch_sync(v6, v8);
      v4 = v9;
    }

    CFRelease(v4);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_Create(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, const char *a11, _DWORD *a12, void *a13, uint64_t *a14, int *a15)
{
  v19 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v19;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  theArray = 0;
  decompressionSessionOut = 0;
  outputCallback = xmmword_1F0390B98;
  *a12 = 0;
  *a13 = 0;
  *a14 = 0;
  v21 = *MEMORY[0x1E695E480];
  if (a11)
  {
    v22 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a11, 0x8000100u);
  }

  else
  {
    v22 = 0;
  }

  cf = v22;
  FigProcessInfoCreateWithDetails();
  v44 = a6;
  FormatDescriptionArrayFromSerializedAtomData = FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData();
  v45 = a7;
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
    goto LABEL_35;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    v26 = 0;
    MutableCopy = 0;
    v37 = -12902;
LABEL_40:
    v34 = v44;
    goto LABEL_24;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData();
  if (FormatDescriptionArrayFromSerializedAtomData || (FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData()) != 0)
  {
LABEL_35:
    v37 = FormatDescriptionArrayFromSerializedAtomData;
    v26 = 0;
LABEL_39:
    MutableCopy = 0;
    goto LABEL_40;
  }

  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_3_17(&_MergedGlobals_16);
  }

  Instance = _CFRuntimeCreateInstance();
  v26 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    v28 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, v41, a14);
    goto LABEL_38;
  }

  outputCallback.decompressionOutputRefCon = Instance;
  v27 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v27;
  v28 = VTFigAudioSessionCreate(&token, ClientPIDFromAuditToken, @"VTDecompressionSessionClient", Instance + 13);
  if (v28)
  {
LABEL_38:
    v37 = v28;
    goto LABEL_39;
  }

  v29 = a3[1];
  *token.val = *a3;
  *&token.val[4] = v29;
  v30 = SecTaskCreateWithAuditToken(v21, &token);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!VTIsSecTaskEntitledForSpecifyingVP9Decode(v30))
  {
    if (VTIsSecTaskEntitledForVP9Decode(v30))
    {
      CFDictionarySetValue(MutableCopy, @"AllowAlternateDecoderSelection", *MEMORY[0x1E695E4D0]);
    }

    else if (CFDictionaryContainsKey(MutableCopy, @"AllowAlternateDecoderSelection"))
    {
      CFDictionaryRemoveValue(MutableCopy, @"AllowAlternateDecoderSelection");
    }
  }

  v32 = VTDecompressionSessionCreate(v21, ValueAtIndex, MutableCopy, 0, &outputCallback, &decompressionSessionOut);
  if (v32)
  {
    v37 = v32;
LABEL_43:
    v34 = v44;
    goto LABEL_22;
  }

  v33 = vtdss_initializeClient(v26, decompressionSessionOut, 0, a2, a4, ClientPIDFromAuditToken, 0, a12, a13);
  if (v33)
  {
    v37 = v33;
    a2 = 0;
    goto LABEL_43;
  }

  v34 = v44;
  if (v26[13] && (CMNotificationCenterGetDefaultLocalCenter(), (v35 = FigNotificationCenterAddWeakListener()) != 0))
  {
    v37 = v35;
    a2 = 0;
  }

  else
  {
    token.val[0] = ClientPIDFromAuditToken;
    v36 = CFNumberCreate(v21, kCFNumberSInt32Type, &token);
    VTSessionSetProperty(decompressionSessionOut, @"ClientPID", v36);
    CFRelease(v36);
    v37 = 0;
    a2 = 0;
    *a14 = FigRemote_GetServerTimeoutToken();
  }

LABEL_22:
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_24:
  if (cf)
  {
    CFRelease(cf);
  }

  if (decompressionSessionOut)
  {
    CFRelease(decompressionSessionOut);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  OUTLINED_FUNCTION_2_20(a2);
  v38 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a5, v34);
  MEMORY[0x193AE4440](*v38, v45, a8);
  MEMORY[0x193AE4440](*v38, a9, a10);
  *a15 = v37;
  return 0;
}

uint64_t vtdss_initializeClient(uint64_t a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CFTypeRef cf, uint64_t a8, void *a9)
{
  *(a1 + 88) = a6;
  if (cf)
  {
    v14 = CFRetain(cf);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 96) = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 24) = v15;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  *(a1 + 120) = 0;
  *(a1 + 32) = v16;
  *(a1 + 56) = a4;
  *(a1 + 64) = a5;
  *(a1 + 128) = a1 + 120;
  *(a1 + 144) = dispatch_queue_create("DecompressionSessionQueuedFrames", 0);
  *(a1 + 152) = 1;
  *(a1 + 168) = dispatch_group_create();
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v18 = dispatch_queue_create("DecompressionSessionMessageQueue", initially_inactive);
  *(a1 + 176) = v18;
  dispatch_set_qos_class_floor(v18, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(*(a1 + 176));
  *(a1 + 160) = FigSemaphoreCreate();
  if (!*(a1 + 256))
  {
    v19 = FigOSTransactionCreate();
    *(a1 + 256) = v19;
    if (!v19)
    {
      fig_log_get_emitter();
      v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v24, v25);
      goto LABEL_15;
    }
  }

  v20 = FigRPCCreateClientConnection();
  if (v20)
  {
    v21 = v20;
    goto LABEL_17;
  }

  v21 = FigRPCGetConnectionInfo();
  if (v21)
  {
LABEL_17:
    a4 = 0;
    goto LABEL_15;
  }

  a4 = 0;
  *a9 = 0;
LABEL_15:
  OUTLINED_FUNCTION_2_20(a4);
  return v21;
}

uint64_t VTDecompressionSessionRemoteServer_Invalidate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v12, cf))
  {
    v10 = cfa;
    *(cfa + 186) = 1;
    if (cfa[20] && cfa[21])
    {
      FigSemaphoreSignal();
      dispatch_group_wait(cfa[21], 0xFFFFFFFFFFFFFFFFLL);
      v10 = cfa;
    }

    if (v10[3])
    {
      VTDecompressionSessionInvalidate(v10[3]);
      v10 = cfa;
    }

    if (!v10[4])
    {
      goto LABEL_10;
    }

    VTTileDecompressionSessionInvalidate(v10[4], v8, v9);
  }

  v10 = cfa;
  if (cfa)
  {
LABEL_10:
    CFRelease(v10);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DecodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t a6, unsigned int a7, uint64_t a8, int a9)
{
  v36 = 0;
  v37 = 0;
  cf = 0;
  v16 = vtdss_findAndRetainClientFromCommandPort(a1, &v37);
  if (v16)
  {
    v25 = v16;
  }

  else
  {
    SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
    if (!SampleBufferFromSerializedAtomData && (!a7 || (SampleBufferFromSerializedAtomData = FigCreateCFPropertyListFromData()) == 0))
    {
      v19 = v37;
      if (a9)
      {
        v20 = v37[3];
        if (!*(v20 + 14))
        {
          OUTLINED_FUNCTION_4_17(v20, v18, v37);
          v19 = v37;
        }
      }

      CFRetain(v19);
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v31[2] = __VTDecompressionSessionRemoteServer_DecodeFrame_block_invoke;
      v31[3] = &__block_descriptor_tmp_8_1;
      v31[4] = v21;
      v31[5] = v36;
      v31[6] = a8;
      v31[7] = cf;
      v32 = a5;
      v33 = a2;
      v34 = a7;
      v31[8] = a6;
      dispatch_group_async(v22, v23, v31);
      goto LABEL_9;
    }

    v25 = SampleBufferFromSerializedAtomData;
    a4 = 0;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_20(a2);
  }

  v26 = MEMORY[0x1E69E9A60];
  if (a4)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

  if (a7)
  {
    MEMORY[0x193AE4440](*v26, a6, a7);
  }

  if (v37)
  {
    v27 = OUTLINED_FUNCTION_16_7(v37);
    VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(v27, v28, v29, v30, v25);
LABEL_9:
    if (v37)
    {
      CFRelease(v37);
    }
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DequeueNextPendingFrame(uint64_t a1, _DWORD *a2, void *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, void *a7, _DWORD *a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, uint64_t a21, void *a22, void *a23, _DWORD *a24, kern_return_t *a25)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v32 = v26;
  v33 = 0;
  v35 = a24;
  v34 = a25;
  v109 = *MEMORY[0x1E69E9840];
  cf = 0;
  HIDWORD(v94) = 0;
  v92 = 0;
  v93 = 0;
  v105 = a9;
  v106 = a10;
  v107[0] = a11;
  v107[1] = a12;
  v107[2] = a13;
  v107[3] = a14;
  v107[4] = a15;
  v107[5] = a16;
  v107[6] = a17;
  v107[7] = a18;
  v107[8] = a19;
  v107[9] = a20;
  v108 = a21;
  v91 = a2;
  *a2 = 0;
  v89 = a3;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  do
  {
    v36 = *(&v105 + v33 + 8);
    **(&v105 + v33) = 0;
    *v36 = 0;
    v37 = *(&v106 + v33 + 8);
    **(&v105 + v33 + 16) = 0;
    *v37 = 0;
    **(v107 + v33) = 0;
    v33 += 40;
  }

  while (v33 != 200);
  *a22 = 0;
  a22[1] = 0;
  a22[2] = 0;
  *a23 = 0;
  a23[1] = 0;
  v88 = a23;
  a23[2] = 0;
  *a24 = 0;
  v38 = vtdss_findAndRetainClientFromCommandPort(a1, &cf);
  v39 = v38 != -12903 || cf == 0;
  if (!v39 || (v25 = v38) == 0)
  {
    v87 = a4;
    v101 = 0;
    v102 = &v101;
    v103 = 0x2000000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2000000000;
    v100 = 0;
    v40 = *(cf + 18);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __vtdss_dequeueFrame_block_invoke;
    block[3] = &unk_1E72C93C8;
    block[5] = &v97;
    block[6] = cf;
    block[4] = &v101;
    dispatch_sync(v40, block);
    HIDWORD(v90) = *(v98 + 24);
    v41 = v102[3];
    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(&v101, 8);
    if (v41)
    {
      v86 = a5;
      if (*(v41 + 24))
      {
        SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
        if (SerializedAtomDataForPixelBuffer)
        {
          OUTLINED_FUNCTION_14_7(SerializedAtomDataForPixelBuffer, v43, v44, v45, v46, v47, v48, v49, v74, v76, v78, v80, v82, v84, a5, v87, a23, v89, v90, v91, 0, 0, v94, cf);
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_9_9(0, v74, v76, v78, v80, v82, v84, a5, v87, a23, v89, v90, v91, 0, 0, v94, cf);
      }

      v75 = v26;
      v77 = a24;
      v79 = a25;
      v81 = v29;
      v83 = v28;
      v85 = v27;
      v51 = *(v41 + 32);
      if (v51)
      {
        Count = CMTaggedBufferGroupGetCount(v51);
        if (Count > 5)
        {
LABEL_40:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v25 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
          v32 = 0;
LABEL_37:
          v28 = v83;
          v27 = v85;
          v34 = v79;
          v29 = v81;
          goto LABEL_29;
        }

        v53 = Count;
        if (Count >= 1)
        {
          v54 = 0;
          v55 = *MEMORY[0x1E695E480];
          v56 = &v106;
          while (1)
          {
            TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(*(v41 + 32), v54);
            v58 = MEMORY[0x193AE2F00](TagCollectionAtIndex, v55);
            v32 = v58;
            if (!v58)
            {
              break;
            }

            Length = CFDataGetLength(v58);
            v60 = *(v56 + 1);
            v61 = vm_allocate(*MEMORY[0x1E69E9A60], v60, Length, 1543503873);
            if (v61)
            {
              goto LABEL_39;
            }

            v110.location = 0;
            v110.length = Length;
            CFDataGetBytes(v32, v110, *v60);
            **(v56 + 2) = Length;
            CFRelease(v32);
            if (!FigTaggedBufferGroupGetCVPixelBufferAtIndex())
            {
              goto LABEL_40;
            }

            block[0] = 0;
            v62 = FigRemote_CreateSerializedAtomDataForPixelBuffer();
            v70 = block[0];
            **v56 = block[0];
            if (v62)
            {
              OUTLINED_FUNCTION_14_7(v62, v63, v64, v65, v66, v67, v68, v69, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, cf);
              goto LABEL_37;
            }

            OUTLINED_FUNCTION_9_9(v70, v75, v77, v79, v81, v83, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, cf);
            ++v54;
            v56 = (v56 + 40);
            if (v53 == v54)
            {
              goto LABEL_24;
            }
          }

          fig_log_get_emitter();
          OUTLINED_FUNCTION_9_1();
          v61 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v75, v77, v79);
LABEL_39:
          v25 = v61;
          goto LABEL_37;
        }
      }

LABEL_24:
      *v91 = 1;
      *v89 = *(v41 + 8);
      *v87 = *(v41 + 16);
      *v86 = *(v41 + 20);
      if (a22)
      {
        v71 = *(v41 + 40);
        a22[2] = *(v41 + 56);
        *a22 = v71;
      }

      v28 = v83;
      v27 = v85;
      v34 = v79;
      v29 = v81;
      v35 = v77;
      v50 = HIDWORD(v90);
      if (v88)
      {
        v72 = *(v41 + 64);
        v88[2] = *(v41 + 80);
        *v88 = v72;
      }
    }

    else
    {
      *v91 = 0;
      v50 = HIDWORD(v90);
    }

    v32 = 0;
    v25 = 0;
    *v35 = v50;
    goto LABEL_29;
  }

  v32 = 0;
  v41 = 0;
LABEL_29:
  vtdss_freeQueuedFrame(v41);
  *v29 = HIDWORD(v94);
  *v28 = v93;
  *v27 = v92;
  if (v34)
  {
    *v34 = v25;
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopySupportedPropertyDictionary(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4, a5, a6, a7, a8, v33, theData, cf, v38);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_20;
  }

  v17 = *(v38 + 3);
  if (v17)
  {
    v18 = VTDecompressionSessionCopySupportedPropertyDictionary(v17, &cf);
  }

  else
  {
    v19 = *(v38 + 4);
    if (v19)
    {
      v18 = VTTileDecompressionSessionCopySupportedPropertyDictionary(v19, &cf);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, theDataa, cf);
    }
  }

  v20 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v29 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v22, v23, v24, v25, v26, v27, v28, v34);
      if (v29)
      {
        v20 = v29;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v34, BytePtr, Length);
        v20 = 0;
      }

      goto LABEL_11;
    }

LABEL_20:
    v20 = CFDataFromCFPropertyList;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v31, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v8)
  {
    *v8 = v20;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopySerializableProperties(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDataFromCFPropertyList = OUTLINED_FUNCTION_7_10(a1, a2, a3, a4, a5, a6, a7, a8, v33, theData, cf, v38);
  if (CFDataFromCFPropertyList)
  {
    goto LABEL_20;
  }

  v17 = *(v38 + 3);
  if (v17)
  {
    v18 = VTDecompressionSessionCopySerializableProperties(v17, *MEMORY[0x1E695E480], &cf);
  }

  else
  {
    v19 = *(v38 + 4);
    if (v19)
    {
      v18 = VTTileDecompressionSessionCopySerializableProperties(v19, *MEMORY[0x1E695E480], &cf);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, theDataa, cf);
    }
  }

  v20 = v18;
  if (!v18)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (!CFDataFromCFPropertyList)
    {
      Length = CFDataGetLength(theDataa);
      v29 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v22, v23, v24, v25, v26, v27, v28, v34);
      if (v29)
      {
        v20 = v29;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theDataa);
        memcpy(v34, BytePtr, Length);
        v20 = 0;
      }

      goto LABEL_11;
    }

LABEL_20:
    v20 = CFDataFromCFPropertyList;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  v31 = theDataa;
  if (theDataa)
  {
    CFRelease(theDataa);
  }

  OUTLINED_FUNCTION_16_1(v31, v10, v11, v12, v13, v14, v15, v16, v34);
  if (v8)
  {
    *v8 = v20;
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopyProperty()
{
  OUTLINED_FUNCTION_13_8();
  cf = 0;
  v41 = 0;
  v38 = 0;
  theData = 0;
  *v2 = 0;
  *v3 = 0;
  v5 = vtdss_findAndRetainClientFromCommandPort(v4, &v41);
  if (v5)
  {
    goto LABEL_22;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v1, 0);
  if (!v13)
  {
    fig_log_get_emitter();
    v5 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
LABEL_22:
    v24 = v5;
    goto LABEL_14;
  }

  v14 = v13;
  if (*(v41 + 3))
  {
    OUTLINED_FUNCTION_15_7();
    v19 = VTDecompressionSessionCopyProperty(v15, v16, v17, v18);
  }

  else if (*(v41 + 4))
  {
    OUTLINED_FUNCTION_15_7();
    v19 = VTTileDecompressionSessionCopyProperty(v20, v21, v22, v23);
  }

  else
  {
    fig_log_get_emitter();
    v19 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0, 0);
  }

  v24 = v19;
  if (!v19)
  {
    CFDataFromCFPropertyList = FigCreateCFDataFromCFPropertyList();
    if (CFDataFromCFPropertyList)
    {
      v24 = CFDataFromCFPropertyList;
    }

    else
    {
      Length = CFDataGetLength(theData);
      v34 = OUTLINED_FUNCTION_14_1(*MEMORY[0x1E69E9A60], v27, v28, v29, v30, v31, v32, v33, v38);
      if (v34)
      {
        v24 = v34;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(theData);
        memcpy(v38, BytePtr, Length);
        v24 = 0;
      }
    }
  }

  CFRelease(v14);
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_14:
  v36 = theData;
  if (theData)
  {
    CFRelease(theData);
  }

  OUTLINED_FUNCTION_16_1(v36, v6, v7, v8, v9, v10, v11, v12, v38);
  if (v0)
  {
    *v0 = v24;
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_SetProperty(uint64_t a1, const char *a2, uint64_t a3, unsigned int a4, _DWORD *a5)
{
  cf = 0;
  v20 = 0;
  v9 = vtdss_findAndRetainClientFromCommandPort(a1, &v20);
  if (!v9)
  {
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0);
    if (!v10)
    {
      goto LABEL_11;
    }

    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (CFPropertyListFromData)
    {
      goto LABEL_12;
    }

    v12 = FigCFEqual();
    v13 = v20;
    if (v12)
    {
      v14 = *(v20 + 24);
      if (v14)
      {
        CFRelease(v14);
        v13 = v20;
        *(v20 + 24) = 0;
      }
    }

    v15 = v13[3];
    if (v15)
    {
      CFPropertyListFromData = VTDecompressionSessionSetProperty(v15, v10, 0);
      goto LABEL_12;
    }

    v16 = v13[4];
    if (v16)
    {
      CFPropertyListFromData = VTTileDecompressionSessionSetProperty(v16, v10, 0);
    }

    else
    {
LABEL_11:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_10_0();
      CFPropertyListFromData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }

LABEL_12:
    v17 = CFPropertyListFromData;
    if (!a4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = v9;
  v10 = 0;
  if (a4)
  {
LABEL_13:
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a3, a4);
  }

LABEL_14:
  if (v10)
  {
    CFRelease(v10);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a5)
  {
    *a5 = v17;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_SetProperties(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  cf = 0;
  v14 = 0;
  CFPropertyListFromData = vtdss_findAndRetainClientFromCommandPort(a1, &v14);
  if (!CFPropertyListFromData)
  {
    CFPropertyListFromData = FigCreateCFPropertyListFromData();
    if (!CFPropertyListFromData)
    {
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(0))
      {
        goto LABEL_8;
      }

      v9 = *(v14 + 3);
      if (v9)
      {
        CFPropertyListFromData = VTDecompressionSessionSetProperties(v9, 0);
        goto LABEL_9;
      }

      v10 = *(v14 + 4);
      if (v10)
      {
        CFPropertyListFromData = VTTileDecompressionSessionSetProperties(v10, 0);
      }

      else
      {
LABEL_8:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_10_0();
        CFPropertyListFromData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

LABEL_9:
  v11 = CFPropertyListFromData;
  if (a3)
  {
    MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a2, a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FinishDelayedFrames(uint64_t a1)
{
  v7 = 0;
  v1 = vtdss_findAndRetainClientFromCommandPort(a1, &v7);
  if (v1)
  {
    if (!v7)
    {
      return 0;
    }

    VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(v7 + 14), *(v7 + 8), v1);
  }

  else
  {
    CFRetain(v7);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v6[2] = __VTDecompressionSessionRemoteServer_FinishDelayedFrames_block_invoke;
    v6[3] = &__block_descriptor_tmp_9_1;
    v6[4] = v2;
    dispatch_group_async(v3, v4, v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CanAcceptFormatDescription(uint64_t a1, uint64_t a2, unsigned int a3, _DWORD *a4)
{
  cf = 0;
  *a4 = 0;
  if (vtdss_findAndRetainClientFromCommandPort(a1, &cf))
  {
    *a4 = 0;
  }

  else
  {
    if (FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData() || CFArrayGetCount(0) < 1)
    {
      CanAcceptFormatDescription = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(0, 0);
      CanAcceptFormatDescription = VTDecompressionSessionCanAcceptFormatDescription(*(cf + 3), ValueAtIndex);
    }

    *a4 = CanAcceptFormatDescription;
  }

  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a2, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_CopyBlackPixelBuffer()
{
  OUTLINED_FUNCTION_13_8();
  pixelBufferOut = 0;
  cf = 0;
  *v4 = 0;
  *v5 = 0;
  *v6 = 0;
  SerializedAtomDataForPixelBuffer = vtdss_findAndRetainClientFromCommandPort(v7, &cf);
  if (!SerializedAtomDataForPixelBuffer)
  {
    SerializedAtomDataForPixelBuffer = VTDecompressionSessionCopyBlackPixelBuffer(*(cf + 3), &pixelBufferOut);
    if (!SerializedAtomDataForPixelBuffer)
    {
      SerializedAtomDataForPixelBuffer = FigRemote_CreateSerializedAtomDataForPixelBuffer();
      if (SerializedAtomDataForPixelBuffer)
      {
        *(cf + 10) = 0;
      }

      else
      {
        *(cf + 10) = (*MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      }
    }
  }

  *v3 = 0;
  *v2 = 0;
  *v1 = 0;
  if (v0)
  {
    *v0 = SerializedAtomDataForPixelBuffer;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FlushPixelBufferPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!OUTLINED_FUNCTION_17_6(a1, a2, a3, a4, a5, a6, a7, a8, v11, cf))
  {
    VTDecompressionSessionFlushPixelBufferPool(cfa[3], v8, v9);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, void *a2)
{
  v17 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = *"";
  v15 = *MEMORY[0x1E6960C70];
  v16 = *(MEMORY[0x1E6960C70] + 16);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (!vtdss_findAndRetainClientFromCommandPort(a1, &v17))
  {
    VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v17[3], &v10, v3);
    v4 = v13;
    *(v13 + 3) = v10;
    v4[5] = v11;
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v9[2] = __VTDecompressionSessionRemoteServer_GetMinOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
    v9[3] = &unk_1E72C92D0;
    v9[4] = &v12;
    v9[5] = v5;
    dispatch_sync(v6, v9);
  }

  if (a2)
  {
    v7 = v13[5];
    *a2 = *(v13 + 3);
    a2[2] = v7;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  _Block_object_dispose(&v12, 8);
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  v24 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = *"";
  v22 = *MEMORY[0x1E6960C70];
  v23 = *(MEMORY[0x1E6960C70] + 16);
  v14 = 0;
  v15 = &v14;
  v16 = *"";
  v17 = v22;
  v18 = v23;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = vtdss_findAndRetainClientFromCommandPort(a1, &v24);
  if (!MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded)
  {
    MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(v24[3], v20 + 1, v15 + 1);
    if (!MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded)
    {
      OUTLINED_FUNCTION_0_22();
      OUTLINED_FUNCTION_10_9();
      v13[2] = __VTDecompressionSessionRemoteServer_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded_block_invoke;
      v13[3] = &unk_1E72C92F8;
      v13[4] = &v19;
      v13[5] = &v14;
      v13[6] = v8;
      dispatch_sync(v9, v13);
      if (a2)
      {
        epoch = v20[1].epoch;
        *a2 = *&v20[1].value;
        a2[2] = epoch;
      }

      MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded = 0;
      if (a3)
      {
        v11 = v15[1].epoch;
        *a3 = *&v15[1].value;
        a3[2] = v11;
      }
    }
  }

  if (a4)
  {
    *a4 = MinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v19, 8);
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_TileCreate(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int a8, const char *a9, _DWORD *a10, void *a11, uint64_t *a12, int *a13)
{
  v16 = a3[1];
  *session = *a3;
  v39 = v16;
  ClientPIDFromAuditToken = FigServer_GetClientPIDFromAuditToken();
  theArray = 0;
  session[0] = 0;
  v35 = 0;
  cf = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  v18 = *MEMORY[0x1E695E480];
  if (a9)
  {
    v19 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a9, 0x8000100u);
  }

  else
  {
    v19 = 0;
  }

  FigProcessInfoCreateWithDetails();
  v30 = a6;
  FormatDescriptionArrayFromSerializedAtomData = FigRemote_CreateFormatDescriptionArrayFromSerializedAtomData();
  v31 = a7;
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
    goto LABEL_27;
  }

  if (CFArrayGetCount(theArray) < 1)
  {
    Instance = 0;
    v25 = -12902;
    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  FormatDescriptionArrayFromSerializedAtomData = FigCreateCFPropertyListFromData();
  if (FormatDescriptionArrayFromSerializedAtomData)
  {
LABEL_27:
    v25 = FormatDescriptionArrayFromSerializedAtomData;
    Instance = 0;
    goto LABEL_14;
  }

  if (_MergedGlobals_16 != -1)
  {
    OUTLINED_FUNCTION_3_17(&_MergedGlobals_16);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance || (v23 = FigOSTransactionCreate(), (Instance[32] = v23) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_0();
    v24 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_30;
  }

  v24 = VTTileDecompressionSessionCreate(v18, ValueAtIndex, cf, TileDecompressionOutputCallback, Instance, session);
  if (v24)
  {
LABEL_30:
    v25 = v24;
    goto LABEL_14;
  }

  v25 = vtdss_initializeClient(Instance, 0, session[0], a2, a4, ClientPIDFromAuditToken, v35, a10, a11);
  if (v25)
  {
    a2 = 0;
  }

  else
  {
    valuePtr = ClientPIDFromAuditToken;
    v26 = CFNumberCreate(v18, kCFNumberSInt32Type, &valuePtr);
    VTSessionSetProperty(session[0], @"ClientPID", v26);
    CFRelease(v26);
    a2 = 0;
    *a12 = FigRemote_GetServerTimeoutToken();
  }

LABEL_14:
  if (session[0])
  {
    CFRelease(session[0]);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  OUTLINED_FUNCTION_2_20(a2);
  v27 = MEMORY[0x1E69E9A60];
  MEMORY[0x193AE4440](*MEMORY[0x1E69E9A60], a5, v30);
  MEMORY[0x193AE4440](*v27, v31, a8);
  *a13 = v25;
  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_DecodeTile(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, int a11, uint64_t a12)
{
  v42 = 0;
  v43[0] = 0;
  v41 = 0;
  v18 = vtdss_findAndRetainClientFromCommandPort(a1, v43);
  if (v18)
  {
    v28 = v18;
    goto LABEL_25;
  }

  SampleBufferFromSerializedAtomData = FigRemote_CreateSampleBufferFromSerializedAtomData();
  if (!SampleBufferFromSerializedAtomData)
  {
    if (!(a9 | a7))
    {
      v21 = *(v43[0] + 24);
      if (v21)
      {
        v21 = CFRetain(v21);
      }

      v41 = v21;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_15_7();
    SampleBufferFromSerializedAtomData = FigRemote_CreatePixelBufferFromSerializedAtomData();
    if (!SampleBufferFromSerializedAtomData)
    {
      v20 = v43[0];
      if (FigDebugIsInternalBuild())
      {
        v20[220] = 0;
      }

      v22 = *(v43[0] + 24);
      v23 = v41;
      *(v43[0] + 24) = v41;
      if (v23)
      {
        CFRetain(v23);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      v21 = v41;
LABEL_15:
      if (v21)
      {
        v24 = v43[0];
        if (*(v43[0] + 220))
        {
          ++*(v43[0] + 50);
        }

        CFRetain(v24);
        v25 = *(v43[0] + 21);
        v26 = *(v43[0] + 22);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __VTDecompressionSessionRemoteServer_DecodeTile_block_invoke;
        block[3] = &__block_descriptor_tmp_13_3;
        block[4] = v43[0];
        block[5] = v42;
        block[8] = a5;
        block[9] = a6;
        block[10] = a10;
        block[6] = v41;
        block[7] = a12;
        v38 = a11;
        v39 = a2;
        v40 = a7;
        dispatch_group_async(v25, v26, block);
        goto LABEL_19;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_0();
      SampleBufferFromSerializedAtomData = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
    }
  }

  v28 = SampleBufferFromSerializedAtomData;
  a4 = 0;
LABEL_25:
  v29 = MEMORY[0x1E69E9A60];
  if (a9)
  {
    OUTLINED_FUNCTION_15_7();
    MEMORY[0x193AE4440]();
  }

  if (!v28)
  {
    goto LABEL_19;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_2_20(a2);
  }

  if (a7)
  {
    OUTLINED_FUNCTION_2_20(a7);
  }

  if (a4)
  {
    MEMORY[0x193AE4440](*v29, a3, a4);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v43[0])
  {
    v30 = OUTLINED_FUNCTION_16_7(v43[0]);
    VTDecompressionSessionRemoteCallbackClient_DecodeFrameReturn(v30, v31, v32, v33, v28);
LABEL_19:
    if (v43[0])
    {
      CFRelease(v43[0]);
    }
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_FinishDelayedTiles(uint64_t a1)
{
  v7 = 0;
  v1 = vtdss_findAndRetainClientFromCommandPort(a1, &v7);
  if (v1)
  {
    if (!v7)
    {
      return 0;
    }

    VTDecompressionSessionRemoteCallbackClient_FinishDelayedFramesReturn(*(v7 + 14), *(v7 + 8), v1);
  }

  else
  {
    CFRetain(v7);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_10_9();
    v6[2] = __VTDecompressionSessionRemoteServer_FinishDelayedTiles_block_invoke;
    v6[3] = &__block_descriptor_tmp_14_4;
    v6[4] = v2;
    dispatch_group_async(v3, v4, v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return 0;
}

uint64_t VTDecompressionSessionRemoteServer_GetNextPendingNotification(uint64_t a1, _DWORD *a2, void *a3, char *a4, vm_address_t *a5, unsigned int *a6)
{
  v16 = 0;
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  vtdss_findAndRetainClientFromCommandPort(a1, &v16);
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
      v12 = vm_allocate(*MEMORY[0x1E69E9A60], a5, Length, 1560281089);
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

  if (v16)
  {
    CFRelease(v16);
  }

  return v12;
}

uint64_t vtdss_enqueueTaggedBufferGroup_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t DecompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t TileDecompressionOutputCallback_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTileDecompressionSessionFinishDelayedTiles(uint64_t a1)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (*(a1 + 168) == 1)
  {
    return 4294954393;
  }

  if (*(a1 + 152))
  {
    v1 = *(a1 + 152);

    return VTDecompressionSessionRemoteBridge_FinishDelayedTiles(v1);
  }

  else
  {
    v3 = *(a1 + 80);
    v4 = *(CMBaseObjectGetVTable() + 16);
    if (*v4 >= 3uLL && (v5 = v4[10]) != 0)
    {

      return v5(v3);
    }

    else
    {
      return 4294954514;
    }
  }
}

uint64_t VTTileDecompressionSessionCreate(uint64_t a1, CMVideoFormatDescriptionRef videoDesc, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  if (Dimensions.width * Dimensions.height <= 1073741820.0)
  {
    v13 = 4294954394;
    if (!a4 || !videoDesc || !a6)
    {
      return v13;
    }

    *a6 = 0;
    MEMORY[0x193AE3010](&VTTileDecompressionSessionGetTypeID_sRegisterVTTileDecompressionSessionOnce, RegisterVTTileDecompressionSession);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = Instance;
      if (VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode(Instance, v15))
      {
        IsVideocodecd = FigServer_IsVideocodecd();
        if (IsVideocodecd)
        {
          goto LABEL_14;
        }
      }

      else
      {
        IsVideocodecd = FigServer_IsServerProcess();
        if (IsVideocodecd)
        {
          goto LABEL_14;
        }
      }

      if (!VTShouldRunVideoDecodersInProcess(IsVideocodecd, v18))
      {
        v49 = VTTileDecompressionSessionRemoteBridge_Create(v16, a1, videoDesc, a3, a4, a5, (v16 + 152));
        if (!v49)
        {
LABEL_44:
          v13 = 0;
          *(v16 + 176) = MEMORY[0x193AE2670]();
          *a6 = v16;
          return v13;
        }

        v13 = v49;
LABEL_41:
        CFRelease(v16);
        return v13;
      }

LABEL_14:
      *(v16 + 32) = CFRetain(videoDesc);
      if (a3)
      {
        v20 = CFRetain(a3);
      }

      else
      {
        v20 = 0;
      }

      *(v16 + 40) = v20;
      *(v16 + 48) = a4;
      *(v16 + 56) = a5;
      *(v16 + 16) = CMFormatDescriptionGetMediaSubType(videoDesc);
      *(v16 + 128) = FigReadWriteLockCreate();
      *(v16 + 136) = 0;
      *(v16 + 112) = FigReadWriteLockCreate();
      v21 = *MEMORY[0x1E695E480];
      v22 = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v22)
      {
        v23 = v22;
        Mutable = CFDictionaryCreateMutable(v21, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v25 = Mutable;
        if (Mutable)
        {
          OUTLINED_FUNCTION_1_22(Mutable, @"CanvasPixelBufferAttributes");
          OUTLINED_FUNCTION_1_22(v26, @"ForgetCachedIOSurfaces");
          OUTLINED_FUNCTION_1_22(v27, @"TileDecoderRequirements");
          OUTLINED_FUNCTION_1_22(v28, @"ClientPID");
        }

        CFRelease(v23);
      }

      else
      {
        v25 = 0;
      }

      *(v16 + 144) = v25;
      v52 = 0;
      v29 = *(v16 + 16);
      v30 = CFGetAllocator(v16);
      v13 = VTSelectAndCreateVideoDecoderInstanceInternal(v29, v30, 0, *(v16 + 40), 0, (v16 + 80), &v52, (v16 + 88));
      if (!v13)
      {
        do
        {
          *(v16 + 64) = v16;
          v31 = *(v16 + 40);
          if (v31)
          {
            Value = CFDictionaryGetValue(v31, @"DecoderUsage");
            if (Value)
            {
              v33 = Value;
              VTVideoDecoderGetCMBaseObject();
              v35 = v34;
              v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (v36)
              {
                v36(v35, @"DecoderUsage", v33);
              }
            }
          }

          v37 = *(v16 + 80);
          v38 = *(v16 + 32);
          v39 = *(CMBaseObjectGetVTable() + 16);
          if (*v39 >= 3uLL && (v40 = v39[8]) != 0)
          {
            v41 = v40(v37, v16 + 64, v38);
            if (!v41)
            {
              goto LABEL_44;
            }
          }

          else
          {
            v41 = -12782;
          }

          if (v13)
          {
            v13 = v13;
          }

          else
          {
            v13 = v41;
          }

          v42 = *(v16 + 88);
          VTVideoDecoderGetCMBaseObject();
          if (v43)
          {
            v44 = v43;
            v45 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v45)
            {
              v45(v44);
            }
          }

          v46 = *(v16 + 80);
          if (v46)
          {
            CFRelease(v46);
            *(v16 + 80) = 0;
          }

          v52 = 0;
          v47 = *(v16 + 16);
          v48 = CFGetAllocator(v16);
        }

        while (!VTSelectAndCreateVideoDecoderInstanceInternal(v47, v48, 0, *(v16 + 40), v42 + 1, (v16 + 80), &v52, (v16 + 88)));
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v53);
      goto LABEL_41;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t VTTileDecoderSessionSetTileDecodeRequirements(uint64_t *a1, const void *a2, const void *a3)
{
  if (!a1)
  {
    return 4294954394;
  }

  if (a1[1])
  {
    v5 = a1[1];

    return VTParavirtualizationHostDecoderSessionSetTileDecodeRequirements(v5, a2, a3);
  }

  v7 = *a1;
  if (!*a1)
  {
    return 4294954394;
  }

  if (*(v7 + 168) == 1)
  {
    return 4294954393;
  }

  FigReadWriteLockLockForWrite();
  v8 = *(v7 + 96);
  *(v7 + 96) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(v7 + 104);
  *(v7 + 104) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  FigReadWriteLockUnlockForWrite();
  return 0;
}

void VTTileDecompressionSessionInvalidate_cold_1(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 80) && *(a1 + 136))
  {
    VTTileDecompressionSessionFinishDelayedTiles(a1);
  }

  VTVideoDecoderGetCMBaseObject();
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
  if (*(a1 + 192))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      CMFormatDescriptionGetMediaSubType(*(a1 + 32));
      FigVideoFormatDescriptionContainsHDR();
      CMVideoFormatDescriptionGetDimensions(*(a1 + 32));
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

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySupportedPropertyDictionary_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopyProperty_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionSetProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t VTTileDecompressionSessionCopySerializableProperties_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

void applejpegCreateSuggestedQualityOfServiceTiers()
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = xmmword_18FED0C40;
  v11 = xmmword_18FED0C50;
  v12 = 0x3FB999999999999ALL;
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  gJPEGVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (gJPEGVideoDecoderSuggestedQualityOfServiceTiers)
  {
    v0 = 0;
    v1 = MEMORY[0x1E695E9D8];
    v2 = MEMORY[0x1E695E9E8];
    while (1)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, v1, v2);
      *(&v7 + v0) = Mutable;
      if (!Mutable)
      {
        break;
      }

      v4 = Mutable;
      if (!FigCFDictionarySetDouble())
      {
        CFArrayAppendValue(gJPEGVideoDecoderSuggestedQualityOfServiceTiers, v4);
        CFRelease(v4);
        *(&v7 + v0) = 0;
        v0 += 8;
        if (v0 != 40)
        {
          continue;
        }
      }

      goto LABEL_6;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, DWORD2(v7), v8);
LABEL_6:
  for (i = 0; i != 40; i += 8)
  {
    v6 = *(&v7 + i);
    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void AppleJPEGVideoDecoder_CreateInstance_cold_1(uint64_t a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, v5);
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t AppleJPEGVideoDecoder_CopyProperty_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t AppleJPEGVideoDecoder_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void AppleJPEGVideoDecoder_StartSession_cold_1(const void *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  *a2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);

  CFRelease(a1);
}

uint64_t AppleJPEGVideoDecoder_StartSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

uint64_t AppleJPEGVideoDecoder_DecodeFrame_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

uint64_t AppleJPEGVideoDecoder_DecodeFrame_cold_2(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t applejpegCreateSupportedPropertyDictionary_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void VTPixelTransferSessionSetCrashReporterMethod(char *a1, size_t a2, CVPixelBufferRef pixelBuffer, uint64_t *a4, __CVBuffer *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v61 = *MEMORY[0x1E69E9840];
  if (pixelBuffer && a4 && a5 && a6 && a8)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    v15 = CVPixelBufferGetPixelFormatType(a5);
    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (IOSurface)
    {
      ID = IOSurfaceGetID(IOSurface);
    }

    else
    {
      ID = 0;
    }

    v18 = CVPixelBufferGetIOSurface(a5);
    if (v18)
    {
      v50 = IOSurfaceGetID(v18);
    }

    else
    {
      v50 = 0;
    }

    copyBytesPerRowString(v60, pixelBuffer);
    copyBytesPerRowString(v59, a5);
    v19 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965CE8], 0);
    __str = a1;
    v58 = a8;
    v55 = ID;
    v56 = a2;
    cf = v19;
    if (v19 && (Name = CGColorSpaceGetName(v19)) != 0)
    {
      v46 = OUTLINED_FUNCTION_0_23(Name);
    }

    else
    {
      v46 = 0;
    }

    v21 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965EC8], 0);
    v22 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965D88], 0);
    v53 = v15;
    v48 = v22;
    if (v22)
    {
      v44 = OUTLINED_FUNCTION_0_23(v22);
    }

    else
    {
      v44 = 0;
    }

    v23 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
    v49 = v21;
    v47 = v23;
    if (v23)
    {
      v43 = OUTLINED_FUNCTION_0_23(v23);
    }

    else
    {
      v43 = 0;
    }

    v24 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F98], 0);
    v45 = v24;
    if (v24)
    {
      v42 = OUTLINED_FUNCTION_0_23(v24);
    }

    else
    {
      v42 = 0;
    }

    Value = FigCFDictionaryGetValue();
    v26 = FigCFDictionaryGetValue();
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_0_23(v26);
    }

    else
    {
      v27 = 0;
    }

    v28 = FigCFDictionaryGetValue();
    if (v28)
    {
      v29 = OUTLINED_FUNCTION_0_23(v28);
    }

    else
    {
      v29 = 0;
    }

    v30 = FigCFDictionaryGetValue();
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_0_23(v30);
    }

    else
    {
      v31 = 0;
    }

    v32 = printable4CC(PixelFormatType);
    v52 = HIBYTE(v32);
    v33 = BYTE2(v32);
    v34 = BYTE1(v32);
    v35 = v32;
    v41 = *(a4 + 2);
    v36 = *(a4 + 2);
    v37 = *(a4 + 3);
    v38 = *a4;
    v39 = a4[1];
    v40 = printable4CC(v53);
    snprintf(__str, v56, "VTPixelTransferSession  %c%c%c%c sid %zu (%.2f x %.2f) [%.2f %.2f %ld %ld] %s Color( %s, %p, %s, %s, %s) => %c%c%c%c sid %zu (%.2f x %.2f) [%.2f %.2f %ld %ld] %s Color( %p, %s, %s, %s)", v52, v33, v34, v35, v55, *&v41, *(&v41 + 1), v36, v37, v38, v39, v60, v46, v49, v44, v43, v42, HIBYTE(v40), BYTE2(v40), BYTE1(v40), v40, v50, *(a6 + 32), *(a6 + 40), *(a6 + 16), *(a6 + 24), *a6, *(a6 + 8), v59, Value, v27, v29, v31);
    qword_1ED6D3DA0 = __str;
    *v58 = 0;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v49)
    {
      CFRelease(v49);
    }

    if (v48)
    {
      CFRelease(v48);
    }

    if (v47)
    {
      CFRelease(v47);
    }

    if (v45)
    {
      CFRelease(v45);
    }
  }
}

uint64_t VTPixelTransferChainDoTransfer(uint64_t a1, void *a2, __int128 *a3, const void *a4, __int128 *a5)
{
  v40 = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  bzero(v39, 0x200uLL);
  v37 = 0;
  v9 = *(a1 + 16);
  if (!v9 || (Count = CFArrayGetCount(v9), Count < 1))
  {
LABEL_34:
    v28 = 0;
    goto LABEL_37;
  }

  v11 = Count;
  if (a2)
  {
    a2 = CFRetain(a2);
  }

  v12 = a3[1];
  v34 = *a3;
  v35 = v12;
  v36 = a3[2];
  v13 = a5[1];
  v31 = *a5;
  v32 = v13;
  v14 = (v11 - 1);
  v33 = a5[2];
  if (v11 >= 2)
  {
    while (!CFArrayGetValueAtIndex(*(a1 + 16), v14) || *(CMBaseObjectGetDerivedStorage() + 16))
    {
      if (v14-- <= 1)
      {
        LODWORD(v14) = 0;
        break;
      }
    }
  }

  v16 = 0;
  v17 = *MEMORY[0x1E695E480];
  v18 = v14;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v16);
    v20 = ValueAtIndex;
    if (v16)
    {
      a2 = pixelBufferOut;
      v34 = v31;
      v35 = v32;
      v36 = v33;
    }

    pixelBufferOut = 0;
    if (v18 == v16)
    {
      if (a4)
      {
        v23 = CFRetain(a4);
      }

      else
      {
        v23 = 0;
      }

      pixelBufferOut = v23;
      v26 = a5[1];
      v31 = *a5;
      v32 = v26;
      v27 = a5[2];
      goto LABEL_33;
    }

    if (ValueAtIndex && *(CMBaseObjectGetDerivedStorage() + 16))
    {
      if (a2)
      {
        v23 = CFRetain(a2);
      }

      else
      {
        v23 = 0;
      }

      pixelBufferOut = v23;
      v31 = v34;
      v32 = v35;
      v27 = v36;
LABEL_33:
      v33 = v27;
      goto LABEL_19;
    }

    pixelBufferOut = 0;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v22 = CVPixelBufferPoolCreatePixelBuffer(v17, *(DerivedStorage + 8), &pixelBufferOut);
    if (v22)
    {
      break;
    }

    *&v31 = CVPixelBufferGetWidth(pixelBufferOut);
    *(&v31 + 1) = CVPixelBufferGetHeight(pixelBufferOut);
    v32 = 0uLL;
    *&v33 = v31;
    *(&v33 + 1) = *(&v31 + 1);
    v23 = pixelBufferOut;
LABEL_19:
    VTPixelTransferSessionSetCrashReporterMethod(v39, 0x200uLL, a2, &v34, v23, &v31, *(a1 + 24), &v37);
    v24 = pixelBufferOut;
    v25 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v25)
    {
      qword_1ED6D3DA0 = v37;
      v28 = 4294954514;
      if (!a2)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v22 = v25(v20, a2, &v34, v24, &v31);
    qword_1ED6D3DA0 = v37;
    if (v22)
    {
      break;
    }

    if (a2)
    {
      CFRelease(a2);
    }

    a2 = 0;
    if (v11 == ++v16)
    {
      goto LABEL_34;
    }
  }

  v28 = v22;
  if (a2)
  {
LABEL_36:
    CFRelease(a2);
  }

LABEL_37:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v28;
}

uint64_t VTPixelTransferChainFlush(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), i);
        v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
        if (v9)
        {
          result = v9(ValueAtIndex, a2);
        }

        else
        {
          result = 4294954514;
        }
      }
    }
  }

  return result;
}

uint64_t VTPixelTransferChainAppendNode(uint64_t a1, const void *a2)
{
  Count = CFArrayGetCount(*(a1 + 16));
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    if (!Count)
    {
      goto LABEL_9;
    }

    v6 = result;
    if (!CFArrayGetValueAtIndex(*(a1 + 16), Count - 1))
    {
      goto LABEL_9;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 16) || *(v6 + 16))
    {
      goto LABEL_9;
    }

    v8 = DerivedStorage;
    v10 = (DerivedStorage + 8);
    v9 = *(DerivedStorage + 8);
    if (v9)
    {
      CFRelease(v9);
      *v10 = 0;
    }

    result = CVPixelBufferPoolCreate(*MEMORY[0x1E695E480], 0, *v8, v10);
    if (!result)
    {
LABEL_9:
      CFArrayAppendValue(*(a1 + 16), a2);
      return 0;
    }
  }

  return result;
}

uint64_t VTPixelTransferChainCreate(uint64_t a1, const __CFDictionary *a2, uint64_t *a3)
{
  if (a3)
  {
    MEMORY[0x193AE3010](&VTPixelTransferChainGetTypeID_sRegisterVTPixelTransferChainOnce, RegisterVTPixelTransferChain);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v7 = Instance;
      v8 = *MEMORY[0x1E695E480];
      *(Instance + 16) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      if (a2)
      {
        *(v7 + 24) = CFDictionaryCreateCopy(v8, a2);
      }

      result = 0;
      *a3 = v7;
    }

    else
    {
      return 4294954392;
    }
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", 710, v3);
  }

  return result;
}

uint64_t VTPixelTransferChainCreatePixelBufferPoolAttributes(uint64_t a1, int a2, uint64_t a3, uint64_t a4, CFMutableDictionaryRef *a5)
{
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 4294954392;
  }

  v9 = Mutable;
  v10 = FigCFDictionarySetInt32();
  if (v10 || (v10 = FigCFDictionarySetInt64(), v10) || (v10 = FigCFDictionarySetInt64(), v10))
  {
    v13 = v10;
LABEL_11:
    CFRelease(v9);
    return v13;
  }

  if (!a2)
  {
    v13 = 0;
    *a5 = v9;
    return v13;
  }

  v11 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v11)
  {
    v13 = 4294954392;
    goto LABEL_11;
  }

  v12 = v11;
  FigCFDictionarySetValue();
  *a5 = v9;
  CFRelease(v12);
  return 0;
}

uint64_t VTPixelTransferChainCopyFirstNodeProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a1 && a2 && a4)
  {
    Count = CFArrayGetCount(*(a1 + 16));
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v10 = 0;
      v4 = 0;
      v11 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10);
        if (ValueAtIndex)
        {
          v13 = ValueAtIndex;
          v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v14)
          {
            return 4294954514;
          }

          v15 = v14(v13, a2, a3, a4);
          v4 = 4294954396;
          if (v15 != -12900)
          {
            break;
          }
        }

        if (v11 == ++v10)
        {
          return v4;
        }
      }

      return v15;
    }
  }

  return v4;
}