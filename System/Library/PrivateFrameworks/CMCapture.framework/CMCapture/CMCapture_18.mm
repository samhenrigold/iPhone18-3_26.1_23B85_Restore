void FigCaptureNormalizedFocusWindowFromMetadata(void *a1)
{
  if (a1)
  {
    v1 = [a1 objectForKeyedSubscript:*off_1E7989DF8];
    if (v1)
    {
      v2 = v1;
      if ([v1 count] == 4)
      {
        [objc_msgSend(OUTLINED_FUNCTION_4_3() "objectAtIndexedSubscript:"intValue"")];
        [objc_msgSend(v2 objectAtIndexedSubscript:{1), "intValue"}];
        [objc_msgSend(v2 objectAtIndexedSubscript:{2), "intValue"}];
        [objc_msgSend(v2 objectAtIndexedSubscript:{3), "intValue"}];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, v9, v10);
  }

  OUTLINED_FUNCTION_3();
}

__CFDictionary *FigCaptureMetadataUtiliesCreateExifAuxRegionsDictForSampleBuffer(const void *a1, int a2, uint64_t a3, int a4)
{
  v9 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v10 = OUTLINED_FUNCTION_4_3();
  CMGetAttachment(v10, v11, v12);
  v13 = FigCFEqual();
  v14 = *(MEMORY[0x1E695F058] + 16);
  v163.origin = *MEMORY[0x1E695F058];
  v163.size = v14;
  memset(&rect, 0, sizeof(rect));
  v15 = OUTLINED_FUNCTION_4_3();
  v18 = CMGetAttachment(v15, v16, v17);
  if (!v18)
  {
    v19 = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    Count = 0;
    v21 = 0;
    goto LABEL_9;
  }

  v19 = CGRectMakeWithDictionaryRepresentation(v18, &rect);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v20 = [objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = [v9 objectForKeyedSubscript:*off_1E798B218];
    if (!v21)
    {
      Count = 0;
      goto LABEL_9;
    }
  }

  Count = CFArrayGetCount(v21);
LABEL_9:
  if (Count == 0 && !v19 && !v13)
  {
    return 0;
  }

  v123 = v4;
  HIDWORD(v108) = v19;
  v23 = OUTLINED_FUNCTION_26_0();
  Mutable = CFDictionaryCreateMutable(v23, v24, v25, v26);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return Mutable;
  }

  memset(&v161, 0, sizeof(v161));
  v28 = [v9 objectForKeyedSubscript:*off_1E798A960];
  if (v28)
  {
    FigCaptureAffineTransformFromDictionaryRepresentation(v28, &v161);
  }

  else
  {
    v29 = *(MEMORY[0x1E695EFD0] + 16);
    *&v161.a = *MEMORY[0x1E695EFD0];
    *&v161.c = v29;
    *&v161.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  memset(&v160, 0, sizeof(v160));
  LODWORD(v125) = v13;
  if (v13)
  {
    v160 = v161;
  }

  else
  {
    FigCaptureZoomTransformToFinalCropRect(v9, &v160);
  }

  v156 = FigCaptureUnityRect();
  v157 = v30;
  v158 = v31;
  v159 = v32;
  if (!v13)
  {
    FigCFDictionaryGetCGRectIfPresent();
  }

  v107 = v9;
  v33 = OUTLINED_FUNCTION_4_3();
  v36 = CMGetAttachment(v33, v34, v35);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D8E0], [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v36, "requestedSettings"), "outputWidth")}]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D8D8], [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(objc_msgSend(v36, "requestedSettings"), "outputHeight")}]);
  v37 = OUTLINED_FUNCTION_26_0();
  theArray = CFArrayCreateMutable(v37, v38, v39);
  if (!theArray)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return Mutable;
  }

  v109 = Mutable;
  if (Count >= 1)
  {
    v40 = 0;
    v41 = *off_1E798B5C0;
    v123 = *MEMORY[0x1E696D948];
    v121 = *MEMORY[0x1E696D940];
    v118 = *MEMORY[0x1E696D950];
    v117 = *MEMORY[0x1E696D928];
    key = *off_1E798B780;
    v106 = *MEMORY[0x1E696D908];
    v115 = *off_1E798B168;
    v105 = *MEMORY[0x1E696D8F0];
    v114 = *off_1E798B160;
    v104 = *MEMORY[0x1E696D8E8];
    v113 = *off_1E798B1F0;
    v103 = *MEMORY[0x1E696D8F8];
    v112 = *off_1E798B2B8;
    v102 = *MEMORY[0x1E696D900];
    v111 = *MEMORY[0x1E696D938];
    v42 = *MEMORY[0x1E696D918];
    v43 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, v40);
      Value = CFDictionaryGetValue(ValueAtIndex, v41);
      if (Value)
      {
        if (CGRectMakeWithDictionaryRepresentation(Value, &v163))
        {
          v46 = FigCaptureTransformRectToCoordinateSpaceOfRect(v163.origin.x, v163.origin.y, v163.size.width, v163.size.height, v156, v157, v158);
          v163.origin.x = OUTLINED_FUNCTION_21_3(v46, v47, v48, v49);
          v163.origin.y = v50;
          v163.size.width = v51;
          v163.size.height = v52;
          if (v51 * v52 >= v5 * v6 * 0.5)
          {
            v53 = OUTLINED_FUNCTION_26_0();
            v55 = CFDictionaryCreateMutable(v53, v54, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            if (v55)
            {
              v56 = v55;
              v164.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetMidX(v164);
              FigCFDictionarySetCGFloat();
              v165.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetWidth(v165);
              FigCFDictionarySetCGFloat();
              v166.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetMidY(v166);
              FigCFDictionarySetCGFloat();
              v167.origin.x = OUTLINED_FUNCTION_31_3();
              CGRectGetHeight(v167);
              FigCFDictionarySetCGFloat();
              if (CFDictionaryGetValue(ValueAtIndex, key))
              {
                v57 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v57, v106, v58);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v115))
              {
                v59 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v59, v105, v60);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v114))
              {
                v61 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v61, v104, v62);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v113))
              {
                v63 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v63, v103, v64);
              }

              if (CFDictionaryGetValue(ValueAtIndex, v112))
              {
                v65 = OUTLINED_FUNCTION_7();
                CFDictionaryAddValue(v65, v102, v66);
              }

              CFDictionaryAddValue(v56, v111, v42);
              CFArrayAppendValue(theArray, v56);
              CFRelease(v56);
            }
          }
        }
      }

      ++v40;
    }

    while (v43 != v40);
  }

  v67 = theArray;
  if (HIDWORD(v108))
  {
    FigCaptureMetadataUtilitiesGetFinalCropRect(v107);
    OUTLINED_FUNCTION_8_3();
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    FigCaptureComputeAffineTransformFromSourceAndDestRects(&v153, v156, v157, v158, v159, v68, v69, v70, v71);
    v168.origin.x = OUTLINED_FUNCTION_25_1();
    *&v152.a = v153;
    *&v152.c = v154;
    *&v152.tx = v155;
    v169 = CGRectApplyAffineTransform(v168, &v152);
    rect.origin.x = OUTLINED_FUNCTION_21_3(v169.origin.x, v169.origin.y, v169.size.width, v169.size.height);
    rect.origin.y = v72;
    rect.size.width = v73;
    rect.size.height = v74;
    if (v73 * v74 >= v5 * v6 * 0.5)
    {
      v75 = OUTLINED_FUNCTION_26_0();
      v79 = CFDictionaryCreateMutable(v75, v76, v77, v78);
      v170.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetMidX(v170);
      OUTLINED_FUNCTION_22_1();
      v171.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetWidth(v171);
      OUTLINED_FUNCTION_22_1();
      v172.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetMidY(v172);
      OUTLINED_FUNCTION_22_1();
      v173.origin.x = OUTLINED_FUNCTION_25_1();
      CGRectGetHeight(v173);
      OUTLINED_FUNCTION_22_1();
      CFDictionaryAddValue(v79, *MEMORY[0x1E696D938], *MEMORY[0x1E696D920]);
      CFArrayAppendValue(theArray, v79);
      CFRelease(v79);
    }
  }

  Mutable = v109;
  if (v125)
  {
    v153 = 0u;
    v154 = 0u;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v80 = OUTLINED_FUNCTION_26_0();
      v84 = CFDictionaryCreateMutable(v80, v81, v82, v83);
      v174.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetMidX(v174);
      OUTLINED_FUNCTION_22_1();
      v175.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetWidth(v175);
      OUTLINED_FUNCTION_22_1();
      v176.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetMidY(v176);
      OUTLINED_FUNCTION_22_1();
      v177.origin.x = OUTLINED_FUNCTION_29_0();
      CGRectGetHeight(v177);
      OUTLINED_FUNCTION_22_1();
      CFDictionaryAddValue(v84, *MEMORY[0x1E696D938], *MEMORY[0x1E696D910]);
      CFArrayAppendValue(theArray, v84);
      CFRelease(v84);
    }
  }

  v85 = FigCaptureNormalizeAngle(a4);
  if (!(v85 % 360))
  {
    goto LABEL_65;
  }

  v86 = v85;
  if (![(__CFArray *)theArray count])
  {
    goto LABEL_65;
  }

  if (!(v86 % 90))
  {
    v154 = 0u;
    v155 = 0u;
    v153 = 0u;
    LODWORD(v121) = v86;
    fcmu_rotationTransformInsideUnitSquare(v86, &v153);
    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v95 = OUTLINED_FUNCTION_19_6(v87, v88, v89, v90, v91, v92, v93, v94, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, key, v117, v118, theArray, v121, v123, v124, v125, v127, v128, v129, v130, v131, *v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
    if (v95)
    {
      v96 = v95;
      v97 = *v149;
      v126 = *MEMORY[0x1E695EFF8];
      do
      {
        for (i = 0; i != v96; ++i)
        {
          if (*v149 != v97)
          {
            objc_enumerationMutation(theArraya);
          }

          *&v152.a = v126;
          if (FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
          {
            *&v152.a = vaddq_f64(v155, vmlaq_n_f64(vmulq_n_f64(v154, v152.b), v153, v152.a));
            FigCFDictionarySetCGFloat();
            FigCFDictionarySetCGFloat();
          }

          if (v122 % 180 == 90 && FigCFDictionaryGetCGFloatIfPresent() && FigCFDictionaryGetCGFloatIfPresent())
          {
            FigCFDictionarySetCGFloat();
            FigCFDictionarySetCGFloat();
          }

          if (FigCFDictionaryGetInt32IfPresent())
          {
            FigCaptureNormalizeAngle(v122);
            FigCFDictionarySetInt32();
          }
        }

        v67 = theArraya;
        v96 = [(__CFArray *)theArraya countByEnumeratingWithState:&v148 objects:v132 count:16];
      }

      while (v96);
    }

    Mutable = v110;
LABEL_65:
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E696D930], v67);
  }

  CFRelease(v67);
  return Mutable;
}

uint64_t FigCaptureWritePackedValueForModuleAndCalibrationValidationStatusesFromMetadata(uint64_t result, _DWORD *a2)
{
  if (result && ((v3 = result, v4 = [result objectForKeyedSubscript:*off_1E798A558], v5 = objc_msgSend(v3, "objectForKeyedSubscript:", *off_1E798A590), objc_msgSend(v4, "count")) || (result = objc_msgSend(v5, "count")) != 0))
  {
    v6 = [objc_msgSend(v5 objectForKeyedSubscript:{@"RearCameraAssembly", "intValue"}];
    v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"FrontCameraAssembly", "intValue"}];
    v8 = [objc_msgSend(v4 objectForKeyedSubscript:{0x1F21ADBD0), "intValue"}];
    v9 = [objc_msgSend(v4 objectForKeyedSubscript:{@"CmPMValidationStatus", "intValue"}];
    v10 = [objc_msgSend(v4 objectForKeyedSubscript:{@"FCClValidationStatus", "intValue"}];
    if (v6 <= 1 && v7 < 2)
    {
      v18 = 0;
      result = 0;
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      v12 = v10;
      v13 = BWShiftedValueWithBitmask(0, 0xFu);
      v14 = BWShiftedValueWithBitmask(v6, 0xF0u) | v13;
      v15 = BWShiftedValueWithBitmask(v7, 0xF00u);
      v16 = v14 | v15 | BWShiftedValueWithBitmask(v8, 0xF000u);
      v17 = BWShiftedValueWithBitmask(v9, 0xF0000u);
      v18 = v16 | v17 | BWShiftedValueWithBitmask(v12, 0xF00000u);
      result = 1;
      if (!a2)
      {
        return result;
      }
    }
  }

  else
  {
    v18 = 0;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v18;
  return result;
}

void *FigCaptureMetadataUtilitiesUpdateISPSpatialMetadataForStillImageCrop(void *result, uint64_t a2)
{
  if (result)
  {
    if (a2 < 1 || SHIDWORD(a2) <= 0)
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v51, v53, v55, v57, v58, v60, *&recta.origin.x, LODWORD(recta.origin.y));
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      v4 = v3;
      if (CGRectIsNull(v66))
      {
        FigCaptureRectFromDimensions();
        OUTLINED_FUNCTION_11_1();
      }

      v5 = OUTLINED_FUNCTION_3_1();
      FigCaptureMetadataUtilitiesNormalizeCropRect(v5, v6, v7, v8, v9, v10);
      OUTLINED_FUNCTION_2_3();
      FigCaptureMetadataUtilitiesUpdateDetectedObjectsInfoAndFacesArrayWithCropRect(v4);
      FigCaptureNormalizedFocusWindowFromMetadata(v4);
      OUTLINED_FUNCTION_36_2(v11, v12, v13, v14, v15, v16, v17, v18);
      FigCaptureSetNormalizedFocusWindowToMetadata(v4);
      v19 = *off_1E798B308;
      v20 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
      [v20 count];
      v21 = [OUTLINED_FUNCTION_7() arrayWithCapacity:?];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v29 = OUTLINED_FUNCTION_35_1(v21, v22, v23, v24, v25, v26, v27, v28, v51, v53, v55, v57, v58, v60, *&recta.origin.x, *&recta.origin.y, *&recta.size.width, *&recta.size.height);
      if (v29)
      {
        v30 = v29;
        v31 = *v63;
        v56 = *(MEMORY[0x1E695F050] + 16);
        v59 = *MEMORY[0x1E695F050];
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v63 != v31)
            {
              objc_enumerationMutation(v20);
            }

            v33 = *(*(&v62 + 1) + 8 * i);
            recta.origin = v59;
            recta.size = v56;
            v34 = CGRectMakeWithDictionaryRepresentation(v33, &recta);
            if (v34)
            {
              v42.n128_u64[0] = *&recta.origin.x;
              v43.n128_u64[0] = *&recta.origin.y;
              v44.n128_u64[0] = *&recta.size.width;
              v45.n128_u64[0] = *&recta.size.height;
              v67.origin.x = OUTLINED_FUNCTION_36_2(v42, v43, v44, v45, v46, v47, v48, v49);
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v67);
              CFAutorelease(DictionaryRepresentation);
              v34 = [OUTLINED_FUNCTION_7() addObject:?];
            }
          }

          v30 = OUTLINED_FUNCTION_35_1(v34, v35, v36, v37, v38, v39, v40, v41, v52, v54, v56, *(&v56 + 1), v59, *(&v59 + 1), *&recta.origin.x, *&recta.origin.y, *&recta.size.width, *&recta.size.height);
        }

        while (v30);
      }

      return [v4 setObject:v21 forKeyedSubscript:v19];
    }
  }

  return result;
}

void FigCaptureMetadataUtilitiesUpdateDetectedObjectsInfoAndFacesArrayWithCropRect(uint64_t a1)
{
  if (a1)
  {
    OUTLINED_FUNCTION_9_7();
    v2 = v1;
    if (!CGRectIsNull(v25))
    {
      if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
      {
        v3 = OUTLINED_FUNCTION_3_1();
        FacesArrayForCropRect = FigCaptureMetadataUtilitiesCreateFacesArrayForCropRect(v4, v3, v5, v6, v7);
        [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];
      }

      v9 = *off_1E798B220;
      if ([OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?])
      {
        v10 = OUTLINED_FUNCTION_3_1();
        DetectedObjectsInfoForCropRect = FigCaptureMetadataUtilitiesCreateDetectedObjectsInfoForCropRect(v11, v10, v12, v13, v14);
        [v2 setObject:DetectedObjectsInfoForCropRect forKeyedSubscript:v9];
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v16, v17, v18, v20, v21, v22, v23);
  }
}

uint64_t FigCaptureSetNormalizedFocusWindowToMetadata(void *a1)
{
  OUTLINED_FUNCTION_9_7();
  result = CGRectIsNull(v19);
  if ((result & 1) == 0)
  {
    if (a1)
    {
      LODWORD(v7) = llround(v4 * 1000.0);
      v13 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      LODWORD(v8) = llround(v3 * 1000.0);
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      LODWORD(v9) = llround(v2 * 1000.0);
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v9];
      LODWORD(v10) = llround(v1 * 1000.0);
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      return [a1 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v13, 4), *off_1E7989DF8}];
    }

    else
    {
      OUTLINED_FUNCTION_0();
      return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return result;
}

void *FigCaptureMetadataUtilitiesUpdateDepthDataMetadataForStillImageCropAndScale(void *a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = *MEMORY[0x1E695F060];
  v46 = 0u;
  size = v13;
  v44 = 0u;
  v45 = 0u;
  point = *MEMORY[0x1E695EFF8];
  if (!a1)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, *&point.x, *&point.y, v44, *(&v44 + 1), v45, DWORD2(v45));
    v38 = qword_1ED844488;
    v39 = 4294954516;
    v40 = 2451;
    v41 = v6;
    goto LABEL_19;
  }

  v14 = [a1 objectForKeyedSubscript:*off_1E798CFE0];
  if (!v14)
  {
    OUTLINED_FUNCTION_2_23();
    v39 = 4294954512;
    v40 = 2456;
    goto LABEL_19;
  }

  if (!CGSizeMakeWithDictionaryRepresentation(v14, &size))
  {
    OUTLINED_FUNCTION_2_23();
    v39 = 4294954516;
    v40 = 2457;
    goto LABEL_19;
  }

  v15 = [a1 objectForKeyedSubscript:*off_1E798CFD8];
  if (!v15)
  {
    OUTLINED_FUNCTION_2_23();
    v39 = 4294954512;
    v40 = 2463;
    goto LABEL_19;
  }

  v16 = v15;
  result = [v15 length];
  if (result != 48)
  {
    return result;
  }

  [v16 getBytes:&v44 length:48];
  v18 = [a1 objectForKeyedSubscript:*off_1E798CFF0];
  if (!v18)
  {
    OUTLINED_FUNCTION_2_23();
    v39 = 4294954512;
    v40 = 2471;
    goto LABEL_19;
  }

  if (!CGPointMakeWithDictionaryRepresentation(v18, &point))
  {
    OUTLINED_FUNCTION_2_23();
    v39 = 4294954516;
    v40 = 2472;
LABEL_19:
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, v39, "<<<< FigCaptureMetadataUtilities >>>>", v40, v41, v36, v37, v42);
    if (result)
    {
      return result;
    }
  }

  v19 = *off_1E798D000;
  [objc_msgSend(OUTLINED_FUNCTION_27_1() "objectForKeyedSubscript:"floatValue"")];
  v21 = *&v46 - a2 * size.width;
  v22 = point.x - a2 * size.width;
  v23 = *(&v46 + 1) - a3 * size.height;
  point.x = v22;
  point.y = point.y - a3 * size.height;
  v24 = a4 * size.width;
  v25 = a5 * size.height;
  size.width = a4 * size.width;
  size.height = a5 * size.height;
  if (a6 > 0.0)
  {
    v26 = v20 / a6;
    v27 = v26;
  }

  else
  {
    v27 = v20;
  }

  v28 = v24;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(&v25 - 1));
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  v30 = v21;
  *&v31 = v30;
  v32 = v23;
  *(&v31 + 1) = v32;
  *&v46 = v31;
  v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:&v44 length:48];
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  v34 = CGPointCreateDictionaryRepresentation(point);
  [OUTLINED_FUNCTION_12_0() setObject:? forKeyedSubscript:?];

  *&v35 = v27;
  return [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v35), v19}];
}

uint64_t FigCaptureMetadataUtilitiesComputeNormalizedPixelBufferCoordinateTransformBetweenSampleBuffers(void *a1, void *a2, int a3, _OWORD *a4)
{
  if (!a4)
  {
    return 4294954516;
  }

  v10 = *(MEMORY[0x1E695EFD0] + 16);
  v11 = *MEMORY[0x1E695EFD0];
  *&v16.a = *MEMORY[0x1E695EFD0];
  *&v16.c = v10;
  v9 = *(MEMORY[0x1E695EFD0] + 32);
  *&v16.tx = v9;
  result = fcmu_transformFromNormalizedBufferCoordsToDenormalizedSensorCoordsForSampleBuffer(a1, a3 ^ 1u, &v16);
  if (!result)
  {
    *&v15.a = v11;
    *&v15.c = v10;
    *&v15.tx = v9;
    result = fcmu_transformFromNormalizedBufferCoordsToDenormalizedSensorCoordsForSampleBuffer(a2, a3 ^ 1u, &v15);
    if (!result)
    {
      v14 = v15;
      CGAffineTransformInvert(&t2, &v14);
      t1 = v16;
      CGAffineTransformConcat(&v14, &t1, &t2);
      result = 0;
      v8 = *&v14.c;
      *a4 = *&v14.a;
      a4[1] = v8;
      a4[2] = *&v14.tx;
    }
  }

  return result;
}

uint64_t fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(void *a1, unint64_t a2, int a3, _OWORD *a4)
{
  if (!a4 || !a1 || ((v5 = a2, v6 = HIDWORD(a2), a2 >= 1) ? (v7 = SHIDWORD(a2) <= 0) : (v7 = 1), v7))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294954516;
  }

  v10 = *(MEMORY[0x1E695F050] + 16);
  *&v162.a = *MEMORY[0x1E695F050];
  *&v162.c = v10;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v11 = [a1 objectForKeyedSubscript:*off_1E798B588];
    if (v11)
    {
      v12 = v11;
      v162.a = v162.a * [v11 intValue];
      v162.b = v162.b * [v12 intValue];
      v162.c = v162.c * [v12 intValue];
      v162.d = v162.d * [v12 intValue];
    }
  }

  v13 = *&v162.a;
  v14 = *&v162.c;
  v164.origin = *&v162.a;
  v164.size = *&v162.c;
  if (CGRectIsNull(v164))
  {
    return 4294954516;
  }

  FigCaptureMetadataUtilitiesGetValidBufferRect(a1);
  OUTLINED_FUNCTION_2_3();
  v23 = *MEMORY[0x1E695EFD0];
  v24 = *(MEMORY[0x1E695EFD0] + 16);
  *&v163.a = *MEMORY[0x1E695EFD0];
  *&v163.c = v24;
  v25 = *(MEMORY[0x1E695EFD0] + 32);
  *&v163.tx = v25;
  if (!a3)
  {
LABEL_17:
    v161.b = v163.b;
    *&v161.c = *&v163.c;
    *&v161.tx = *&v163.tx;
    v31 = OUTLINED_FUNCTION_34_1(v15, v16, v17, v18, v19, v20, v21, v22, v92, v98, v104, *(&v104 + 1), v115, v121, v127, *(&v127 + 1), v138, *(&v138 + 1), v149, *(&v149 + 1), *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, SLOBYTE(v163.a));
    v33 = CGAffineTransformTranslate(v32, v31, *&v13, *(&v13 + 1));
    v163 = v162;
    v161.b = v162.b;
    *&v161.c = *&v162.c;
    *&v161.tx = *&v162.tx;
    v41 = OUTLINED_FUNCTION_34_1(v33, v34, v35, v36, v37, v38, v39, v40, v93, v99, v105, v110, v116, v122, v128, v133, v139, v144, v150, v155, *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, SLOBYTE(v162.a));
    v43 = CGAffineTransformScale(v42, v41, *&v14, *(&v14 + 1));
    OUTLINED_FUNCTION_33_4(v43, v44, v45, v46, v47, v48, v49, v50, v51, v94, v100, v106, v111, v117, v123, v129, v134, v140, v145, v151, v156, *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, *&v161.a, *&v161.b, *&v161.c, *&v161.d, *&v161.tx, *&v161.ty, *&v162.a, *&v162.c, v52);
    v165.origin.x = OUTLINED_FUNCTION_3();
    v166.size.width = v5;
    v166.size.height = v6;
    if (!CGRectEqualToRect(v165, v166))
    {
      v53 = OUTLINED_FUNCTION_3();
      v57 = FigCaptureMetadataUtilitiesNormalizeCropRect(v53, v54, v55, v56, v5, v6);
      v161.b = v163.b;
      *&v161.c = *&v163.c;
      *&v161.tx = *&v163.tx;
      v65 = OUTLINED_FUNCTION_34_1(v57, v58, v59, v60, v61, v62, v63, v64, v95, v101, v107, v112, v118, v124, v130, v135, v141, v146, v152, v157, *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, SLOBYTE(v163.a));
      v69 = CGAffineTransformScale(v66, v65, v67, v68);
      v163 = v162;
      v161.b = v162.b;
      *&v161.c = *&v162.c;
      *&v161.tx = *&v162.tx;
      v77 = OUTLINED_FUNCTION_34_1(v69, v70, v71, v72, v73, v74, v75, v76, v96, v102, v108, v113, v119, v125, v131, v136, v142, v147, v153, v158, *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, SLOBYTE(v162.a));
      v81 = CGAffineTransformTranslate(v78, v77, v79, v80);
      OUTLINED_FUNCTION_33_4(v81, v82, v83, v84, v85, v86, v87, v88, v89, v97, v103, v109, v114, v120, v126, v132, v137, v143, v148, v154, v159, *&v160.a, *&v160.b, *&v160.c, *&v160.d, *&v160.tx, *&v160.ty, *&v161.a, *&v161.b, *&v161.c, *&v161.d, *&v161.tx, *&v161.ty, *&v162.a, *&v162.c, v90);
    }

    result = 0;
    v91 = *&v163.c;
    *a4 = *&v163.a;
    a4[1] = v91;
    a4[2] = *&v163.tx;
    return result;
  }

  v127 = v25;
  v138 = v24;
  v149 = v23;
  v26 = *(MEMORY[0x1E69E9B10] + 16);
  *&v162.a = *MEMORY[0x1E69E9B10];
  *&v162.c = v26;
  *&v162.tx = *(MEMORY[0x1E69E9B10] + 32);
  v27 = [a1 objectForKeyedSubscript:*off_1E798A948];
  if (!v27)
  {
    return 4294954516;
  }

  v28 = v27;
  if ([v27 length] != 48)
  {
    return 0;
  }

  [v28 getBytes:&v162 length:48];
  result = 4294954516;
  if (*&v162.a > 0.0 && *(&v162.c + 1) > 0.0)
  {
    v104 = *&v162.tx;
    v121 = *(&v13 + 1);
    v30 = *(&v162.tx + 1);
    *&v161.a = v149;
    *&v161.c = v138;
    *&v161.tx = v127;
    CGAffineTransformScale(&v163, &v161, 1.0 / *&v162.a, 1.0 / *(&v162.c + 1));
    v160 = v163;
    v15 = CGAffineTransformTranslate(&v161, &v160, 0.0 - *&v104, 0.0 - v30);
    v163 = v161;
    goto LABEL_17;
  }

  return result;
}

void FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, void *a10, unint64_t a11)
{
  OUTLINED_FUNCTION_9_7();
  memset(v36, 0, sizeof(v36));
  if (![MEMORY[0x1E69916C0] getGDCParams:v36 cameraInfo:? metadata:?])
  {
    v17 = OUTLINED_FUNCTION_3_1();
    v23 = FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(v18, v19, v17, v20, v21, v22);
    v25 = v24;
    v27 = v26;
    v29 = v28;
    FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(a10, a11, a5, a6, a7, a8);
    OUTLINED_FUNCTION_8_3();
    v30 = OUTLINED_FUNCTION_3();
    [v31 adjustCropRectangle:v30 validCropRectangle:? withGDCParams:?];
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v38.origin.x = v23;
    v38.origin.y = v25;
    v38.size.width = v27;
    v38.size.height = v29;
    if (!CGRectEqualToRect(v37, v38))
    {
      FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(a10, a11, x, y, width, height);
      OUTLINED_FUNCTION_11_1();
    }
  }

  OUTLINED_FUNCTION_3_1();
}

CFTypeRef FigCaptureMetadataUtilitiesCreateBoxedVideoOrientationBlockBuffer(__int16 a1, uint64_t a2, uint64_t a3)
{
  if (FigBoxedMetadataCreateForConstruction() || FigBoxedMetadataAppendValue() || FigBoxedMetadataEndConstruction())
  {
    return 0;
  }

  BlockBuffer = FigBoxedMetadataGetBlockBuffer();
  return CFRetain(BlockBuffer);
}

CMSampleBufferRef FigCaptureMetadataUtilitiesCreateVideoOrientationSampleBuffer(CMTime *a1, OpaqueCMBlockBuffer *cf, __int16 a3, const opaqueCMFormatDescription *a4, uint64_t a5)
{
  v12 = 0;
  if (cf)
  {
    v7 = cf;
    CFRetain(cf);
  }

  else
  {
    result = FigCaptureMetadataUtilitiesCreateBoxedVideoOrientationBlockBuffer(a3, a4, a5);
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
  __dst.presentationTimeStamp = *a1;
  sampleSizeArray = CMBlockBufferGetDataLength(v7);
  v8 = CMSampleBufferCreate(*MEMORY[0x1E695E480], v7, 1u, 0, 0, a4, 1, 1, &__dst, 1, &sampleSizeArray, &v12);
  CFRelease(v7);
  result = v12;
  if (v8)
  {
    if (v12)
    {
      CFRelease(v12);
      return 0;
    }
  }

  return result;
}

void *FigCaptureMetadataUtilitiesCreateMetadataSidecarFileURL(void *result)
{
  if (result)
  {
    v1 = [objc_msgSend(objc_msgSend(objc_msgSend(result "resourceSpecifier")];
    if (!v1 || (result = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v1]) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 0;
    }
  }

  return result;
}

void FigCaptureMetadataUtilitiesAdjustValidBufferRectForDarkShadeCropping(void *a1)
{
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v3 = [v2 objectForKeyedSubscript:*off_1E798B540];
  v5 = fcmu_darkShadeHorizontalCrop(v3, v4);
  if (v5)
  {
    v6 = v5;
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 16);
    v7 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
    v8 = [objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
    if (FigCFDictionaryGetCGRectIfPresent() || FigCFDictionaryGetCGRectIfPresent())
    {
      v10 = *(&v20 + 1);
      v9 = *&v20;
      v12 = *(&v21 + 1);
      v11 = *&v21;
    }

    else
    {
      v11 = v7;
      v12 = v8;
      v10 = 0.0;
      v9 = 0.0;
    }

    v13 = v7 - 2 * (v6 >> (v7 == 2112));
    if (v11 > v13)
    {
      v14 = v11 / v13;
      v15 = (1.0 / v14);
      fcmu_scaleValidBufferRectOverWidth(v9, v10, v11, v12, v15);
      FigCFDictionarySetCGRect();
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        height = 0.0;
        width = 0.0;
      }

      else
      {
        FormatDescription = CMSampleBufferGetFormatDescription(a1);
        Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
        width = Dimensions.width;
        height = Dimensions.height;
      }

      fcmu_scaleValidBufferRectOverWidth(0.0, 0.0, width, height, v15);
      FigCFDictionarySetCGRect();
    }
  }
}

uint64_t fcmu_addValueToAuxiliaryImageProperties(CGImageMetadata *a1, CFTypeRef value, CFStringRef xmlns, CFStringRef prefix, CFStringRef name)
{
  if (value)
  {
    v8 = CGImageMetadataTagCreate(xmlns, prefix, name, kCGImageMetadataTypeDefault, value);
    if (v8)
    {
      v9 = v8;
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@", prefix, name];
      if (v10)
      {
        if (CGImageMetadataSetTagWithPath(a1, 0, v10, v9))
        {
          v11 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v16, v17, v18, v19, v20, v21, v22);
          v11 = 4294954516;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v16, v17, v18, v19, v20, v21, v22);
        v11 = 4294954510;
      }

      CFRelease(v9);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v15, v17, v18, v19, v20, v21, v22);
      v10 = 0;
      v11 = 4294954510;
    }
  }

  else
  {
    v10 = 0;
    v11 = 4294954516;
  }

  return v11;
}

void *FigCaptureMetadataUtilitiesHasFlicker(void *result, double a2)
{
  if (result)
  {
    v3 = result;
    result = [result objectForKeyedSubscript:*off_1E798B980];
    if (result)
    {
      if ([result intValue] == 1)
      {
        result = [objc_msgSend(v3 objectForKeyedSubscript:{*off_1E798B960), "firstObject"}];
        if (result)
        {
          [objc_msgSend(result objectForKeyedSubscript:{*off_1E798B958), "doubleValue"}];
          *&v4 = v4;
          return (1.0 / (*&v4 + *&v4) > a2);
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

void FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_1(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844488, 0xFFFFBDA0, "<<<< FigCaptureMetadataUtilities >>>>", 0x1949, v8, a7, a8, v10);

  CFRelease(a1);
}

uint64_t FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_2(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:*off_1E798A640];
  [v1 objectForKeyedSubscript:*off_1E798A650];
  v2 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v2, v3, v4, v5, v6);
  [v1 objectForKeyedSubscript:*off_1E798A618];
  v7 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v7, v8, v9, v10, v11);
  [v1 objectForKeyedSubscript:*off_1E798A608];
  v12 = OUTLINED_FUNCTION_6_18();
  fcmu_addValueToAuxiliaryImageProperties(v12, v13, v14, v15, v16);
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[0].%@", @"ChannelMetadata", @"BaseOffset"];
  [v1 objectForKeyedSubscript:*off_1E798A620];
  v18 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v18, v19, v20, v21, v17);
  v23 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v22);
  [v1 objectForKeyedSubscript:*off_1E798A610];
  v24 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v24, v25, v26, v27, v23);
  v29 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v28);
  [v1 objectForKeyedSubscript:*off_1E798A648];
  v30 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v30, v31, v32, v33, v29);
  v35 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v34);
  [v1 objectForKeyedSubscript:*off_1E798A638];
  v36 = OUTLINED_FUNCTION_5_23();
  fcmu_addValueToAuxiliaryImageProperties(v36, v37, v38, v39, v35);
  v41 = OUTLINED_FUNCTION_39_1(MEMORY[0x1E696AEC0], v40);
  [v1 objectForKeyedSubscript:*off_1E798A628];
  v42 = OUTLINED_FUNCTION_5_23();

  return fcmu_addValueToAuxiliaryImageProperties(v42, v43, v44, v45, v41);
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844488, 0xFFFFBDA0, "<<<< FigCaptureMetadataUtilities >>>>", 0x1987, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_6()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_37_4(v2);
  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v3, v4, v5, v6, v7))
  {
    [*(v1 + 3480) numberWithDouble:*(v0 + 8)];
    OUTLINED_FUNCTION_17_3();
    if (!fcmu_addValueToAuxiliaryImageProperties(v8, v9, v10, v11, v12))
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_9()
{
  OUTLINED_FUNCTION_14_4();
  v1 = [v0 bytes];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 32; i += 4)
  {
    LODWORD(v3) = *(v1 + i);
    [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
  }

  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, v14, v15, v16, v17, v18);
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_10()
{
  OUTLINED_FUNCTION_14_4();
  v1 = [v0 bytes];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:8];
  for (i = 0; i != 32; i += 4)
  {
    LODWORD(v3) = *(v1 + i);
    [v2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v3)}];
  }

  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v5, v6, v7, v8, v9))
  {
    return 1;
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v12, v13, v14, v15, v16, v17, v18);
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_11()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_37_4(v2);
  OUTLINED_FUNCTION_17_3();
  if (!fcmu_addValueToAuxiliaryImageProperties(v3, v4, v5, v6, v7))
  {
    [*(v1 + 3480) numberWithDouble:*(v0 + 8)];
    OUTLINED_FUNCTION_17_3();
    if (!fcmu_addValueToAuxiliaryImageProperties(v8, v9, v10, v11, v12))
    {
      return 1;
    }
  }

  OUTLINED_FUNCTION_0_26();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  return 0;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_15(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844488, 0xFFFFBDA0, "<<<< FigCaptureMetadataUtilities >>>>", 0x1A22, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_18(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844488, 0xFFFFBDA0, "<<<< FigCaptureMetadataUtilities >>>>", 0x1A3B, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

void BWAddStillImageCaptureFrameMetadataToSampleBuffer(const void *a1, void *a2, int a3, uint64_t *a4)
{
  v4 = a4;
  HIDWORD(v57) = a3;
  target = a1;
  if (a4)
  {
    v59 = *a4;
    if (!a2)
    {
      return;
    }
  }

  else
  {
    v59 = 0;
    if (!a2)
    {
      return;
    }
  }

  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [a2 captureType];
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v10 = [a2 unifiedBracketedCaptureParams];
  if (v9 >= 1)
  {
    v11 = v10;
    switch(v8)
    {
      case 1u:
        [a2 captureFlags];
        goto LABEL_33;
      case 3u:
        v20 = [objc_msgSend(a2 "bracketSettings")];
        if ([v20 count] < v9)
        {
          return;
        }

        [objc_msgSend(v20 objectAtIndexedSubscript:{(v9 - 1)), "doubleValue"}];
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        v15 = off_1E798A830;
        goto LABEL_27;
      case 4u:
        goto LABEL_15;
      case 5u:
      case 6u:
        v12 = [objc_msgSend(objc_msgSend(a2 "bracketSettings")];
        if ([v12 count] < v9)
        {
          return;
        }

        v13 = [objc_msgSend(v12 objectAtIndexedSubscript:{(v9 - 1)), "intValue"}];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v13];
        v15 = off_1E798A5B8;
LABEL_27:
        v16 = *v15;
        goto LABEL_28;
      case 7u:
LABEL_33:
        if (v11)
        {
          goto LABEL_34;
        }

        goto LABEL_29;
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
LABEL_34:
        v22 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
        v23 = v22;
        v31 = OUTLINED_FUNCTION_1_31(v22, v24, v25, v26, v27, v28, v29, v30, v55, v57, v59, target, v62, v64, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92);
        if (!v31)
        {
          return;
        }

        v32 = v31;
        v33 = 0;
        v34 = MEMORY[0];
        v35 = *off_1E798C698;
        v56 = v4;
        break;
      default:
        goto LABEL_29;
    }

LABEL_36:
    v36 = 0;
    while (1)
    {
      if (MEMORY[0] != v34)
      {
        objc_enumerationMutation(v11);
      }

      v37 = *(8 * v36);
      v38 = [objc_msgSend(v37 objectForKeyedSubscript:{v35, v56), "intValue"}];
      if (v38 != 1)
      {
        ++v33;
      }

      v46 = v33 == v9 && v23 == (v38 == 1);
      if (v46)
      {
        break;
      }

      if (v32 == ++v36)
      {
        v32 = OUTLINED_FUNCTION_1_31(v38, v39, v40, v41, v42, v43, v44, v45, v56, v58, v60, target, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93);
        if (v32)
        {
          goto LABEL_36;
        }

        return;
      }
    }

    v4 = v56;
    if (!v37)
    {
      return;
    }

    v19 = v60;
    if (v60)
    {
      v47 = *off_1E798C918;
      v48 = *off_1E798C648;
    }

    else
    {
      v48 = *off_1E798C648;
      [objc_msgSend(v37 objectForKeyedSubscript:{*off_1E798C648), "floatValue"}];
      v50 = v49;
      v47 = *off_1E798C918;
      v51 = [objc_msgSend(v37 objectForKeyedSubscript:{*off_1E798C918), "intValue"}];
      if (v50 < 0.0)
      {
        v52 = 1;
      }

      else
      {
        v52 = v23;
      }

      v53 = 2;
      if (v51 == 2)
      {
        v53 = 64;
      }

      if (v51 == 1)
      {
        v53 = 8;
      }

      v46 = v52 == 0;
      v54 = 4;
      if (v46)
      {
        v54 = v53;
      }

      if (HIDWORD(v58))
      {
        v19 = v54 | 0x10;
      }

      else
      {
        v19 = v54;
      }
    }

    [v7 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", v47), *off_1E798A950}];
    [v7 setObject:objc_msgSend(v37 forKeyedSubscript:{"objectForKeyedSubscript:", v48), *off_1E798A830}];
LABEL_65:
    v21 = v19;
    CMSetAttachment(target, @"StillImageCaptureFrameFlags", [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19], 1u);
    if (!v4)
    {
      return;
    }

    goto LABEL_66;
  }

  if (v8 <= 0xD)
  {
    if (((1 << v8) & 0x3400) != 0)
    {
      if (!v59)
      {
        v17 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
        v18 = 2;
        if (v17)
        {
          v18 = 4;
        }

        if (HIDWORD(v57))
        {
          v18 |= 0x10uLL;
        }

        v59 = v18;
      }
    }

    else
    {
      if (((1 << v8) & 0x30) != 0)
      {
        if ([a2 expectedTimeMachineFrameCaptureCount] >= 1 && (objc_msgSend(objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798B558), "BOOLValue") & 1) == 0)
        {
LABEL_15:
          v16 = *off_1E798A5B8;
          v14 = &unk_1F2242E38;
LABEL_28:
          [v7 setObject:v14 forKeyedSubscript:v16];
        }

        goto LABEL_29;
      }

      if (v8 != 11)
      {
        goto LABEL_29;
      }
    }

    if ([a2 isUnifiedBracketingErrorRecoveryFrame:target isReferenceFrame:HIDWORD(v57)])
    {
      v19 = v59 | 0x20;
      goto LABEL_65;
    }
  }

LABEL_29:
  v19 = v59;
  if (v59)
  {
    goto LABEL_65;
  }

  v21 = 0;
  if (v4)
  {
LABEL_66:
    *v4 = v21;
  }
}

uint64_t BWReferenceFrameSelectionUsingBlurScores(void *a1, int a2, _DWORD *a3, _DWORD *a4)
{
  if (a2 < 1)
  {
    return 4294954516;
  }

  v17 = v4;
  v18 = v5;
  if ([a1 count] < a2 || objc_msgSend(a1, "count") > 4)
  {
    return 4294954516;
  }

  v15 = 0;
  v16 = 0;
  result = FigMotionComputeBlurScores(a1, 3, 1, 1);
  if (!result)
  {
    if ([a1 count] < 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 1;
      do
      {
        if (*(&v15 + v12) < *(&v15 + v11))
        {
          v11 = v12;
        }

        ++v12;
      }

      while ([a1 count] > v12);
    }

    LODWORD(v13) = v11;
    if (a2 != 1)
    {
      if (a2 == 2)
      {
        if (!v11)
        {
          LODWORD(v13) = 0;
          if (!a4)
          {
LABEL_25:
            result = 0;
            if (a3)
            {
              *a3 = v13;
            }

            return result;
          }

LABEL_24:
          *a4 = v11;
          goto LABEL_25;
        }

        v14 = [a1 count];
        v13 = v11 - 1;
        if (v14 - 1 != v11)
        {
          if (*(&v15 + v13) > *(&v15 + v11 + 1))
          {
            LODWORD(v13) = v11;
          }

          if (!a4)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      else if (v11 >= a2)
      {
        LODWORD(v13) = v11 - a2 + 1;
      }

      else
      {
        LODWORD(v13) = 0;
      }
    }

    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t BWReferenceFrameSelectionUsingMotionAndFocusScores(void *a1, void *a2, unsigned int a3, unsigned int *a4, int *a5)
{
  if (a3 < 1)
  {
    return 4294954516;
  }

  v62[2] = v12;
  v62[3] = v11;
  v62[4] = v10;
  v62[5] = v9;
  v62[6] = v8;
  v62[7] = v7;
  v62[18] = v5;
  v62[19] = v6;
  if ([a1 count] < a3 || !objc_msgSend(a1, "count") || objc_msgSend(a1, "count") > 4 || objc_msgSend(a2, "count") != 3)
  {
    return 4294954516;
  }

  v62[0] = 0;
  v62[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v60[0] = 0;
  v60[1] = 0;
  v57 = a5;
  v58 = a4;
  v56 = a3;
  if ([a1 count])
  {
    v18 = 0;
    v19 = *off_1E798B4F0;
    v20 = *off_1E798B1A0;
    v21 = *off_1E798B318;
    v22 = *off_1E798B9A0;
    v59 = *off_1E798B310;
    v23 = 0.0;
    v24 = 0.0;
    do
    {
      v25 = [a1 objectAtIndexedSubscript:v18];
      [objc_msgSend(v25 objectForKeyedSubscript:{v19), "floatValue"}];
      v27 = v26;
      *(v62 + v18) = v26;
      [objc_msgSend(v25 objectForKeyedSubscript:{v20), "floatValue"}];
      v29 = v28;
      *(v61 + v18) = v28;
      v30 = [objc_msgSend(v25 objectForKeyedSubscript:{v21), "objectForKeyedSubscript:", v22}];
      if ([v30 count])
      {
        v31 = [objc_msgSend(v25 objectForKeyedSubscript:{v59), "intValue"}] == 2;
        v32 = 0.0;
        if ([v30 count] - 1 > v31)
        {
          v33 = v31;
          do
          {
            [objc_msgSend(v30 objectAtIndexedSubscript:{v33), "floatValue"}];
            v32 = v32 + v34;
            ++v33;
          }

          while (v33 < [v30 count] - 1);
        }

        v35 = [v30 count] + ~v31;
        v36 = v32 / v35;
        if (v36 > 0.0)
        {
          *(v61 + v18) = v36;
          v29 = v32 / v35;
        }
      }

      if (v23 <= v27)
      {
        v23 = v27;
      }

      if (v24 <= v29)
      {
        v24 = v29;
      }

      ++v18;
    }

    while ([a1 count] > v18);
  }

  else
  {
    v24 = 0.0;
    v23 = 0.0;
  }

  if ([a1 count])
  {
    v37 = 0;
    do
    {
      *(v62 + v37) = *(v62 + v37) / v23;
      *(v61 + v37) = *(v61 + v37) / v24;
      ++v37;
    }

    while ([a1 count] > v37);
  }

  if ([a1 count])
  {
    v38 = 0;
    v39 = 0;
    v40 = 3.4028e38;
    do
    {
      [objc_msgSend(a2 objectAtIndexedSubscript:{0), "floatValue"}];
      v42 = v41;
      v43 = *(v61 + v38);
      [objc_msgSend(a2 objectAtIndexedSubscript:{1), "floatValue"}];
      v45 = v42 + (v43 * v44);
      v46 = *(v62 + v38);
      [objc_msgSend(a2 objectAtIndexedSubscript:{2), "floatValue"}];
      v48 = v45 + (v46 * v47);
      *(v60 + v38) = v48;
      if (v48 < v40)
      {
        v40 = v48;
        v39 = v38;
      }

      ++v38;
    }

    while ([a1 count] > v38);
  }

  else
  {
    v39 = 0;
  }

  v49 = [MEMORY[0x1E696AD50] indexSetWithIndex:v39];
  v50 = [v49 count];
  v51 = v56 - v50;
  if (v56 > v50)
  {
    do
    {
      v52 = [v49 firstIndex] - 1;
      v53 = [v49 lastIndex] + 1;
      if ((v52 & 0x8000000000000000) == 0)
      {
        if (v53 <= [a1 count] - 1)
        {
          if (*(v60 + v52) <= *(v60 + v53))
          {
            v53 = v52;
          }
        }

        else
        {
          v53 = v52;
        }
      }

      [v49 addIndex:v53];
      --v51;
    }

    while (v51);
  }

  if (v57)
  {
    *v57 = v39;
  }

  if (!v58)
  {
    return 0;
  }

  v54 = [v49 firstIndex];
  result = 0;
  *v58 = v54;
  return result;
}

void psn_blurPixelBufferBorder(void *a1, CVPixelBufferRef pixelBuffer, double a3, double a4, double a5, CGFloat a6, float a7)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  OUTLINED_FUNCTION_28_3();
  v20.size.height = a6;
  if (!CGRectContainsRect(v20, v21))
  {
    if (a1)
    {
      if (pixelBuffer)
      {
        v16 = Height - (a4 + a6);
        v17 = [objc_msgSend(objc_msgSend(MEMORY[0x1E695F658] imageWithCVPixelBuffer:{pixelBuffer), "imageByClampingToRect:", a3, v16, a5, a6), "imageByApplyingGaussianBlurWithSigma:", a7}];
        v18 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:pixelBuffer];
        if (!Width || v16 == 0.0 || (v19 = 0, OUTLINED_FUNCTION_58_4(), OUTLINED_FUNCTION_55_2(), [objc_msgSend(a1 startTaskToRender:v17 fromRect:v18 toDestination:0) atPoint:"waitUntilCompletedAndReturnError:" error:&v19], !v19))
        {
          if (!Width || Height - (a6 + v16) == 0.0 || ([objc_msgSend(OUTLINED_FUNCTION_91_0() "startTaskToRender:"waitUntilCompletedAndReturnError:" fromRect:&v19 toDestination:? atPoint:? error:?")], !v19))
          {
            if (a3 == 0.0 || a6 == 0.0 || ([objc_msgSend(OUTLINED_FUNCTION_91_0() "startTaskToRender:"waitUntilCompletedAndReturnError:" fromRect:&v19 toDestination:? atPoint:? error:?")], !v19))
            {
              if (Width - (a3 + a5) != 0.0 && a6 != 0.0)
              {
                v19 = 0;
                [objc_msgSend(a1 startTaskToRender:v17 fromRect:v18 toDestination:0) atPoint:"waitUntilCompletedAndReturnError:" error:&v19];
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_28_3();
}

uint64_t captureSourceRemote_SetPixelBufferProperty(uint64_t a1, uint64_t a2, __CVBuffer *a3)
{
  xdict = 0;
  v4 = captureSourceRemote_createBasicMessage(a1, 1937010786, &xdict);
  if (v4 || (v4 = FigXPCMessageSetCFString(), v4))
  {
    v7 = v4;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_23();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  else
  {
    if (a3)
    {
      IOSurface = CVPixelBufferGetIOSurface(a3);
      if (!IOSurface)
      {
        v7 = 4294954516;
        goto LABEL_8;
      }

      XPCObject = IOSurfaceCreateXPCObject(IOSurface);
      xpc_dictionary_set_value(xdict, kFigCaptureSourceRemoteProprietaryDefaultMessagePayload_Value, XPCObject);
      xpc_release(XPCObject);
    }

    v7 = FigXPCRemoteClientSendSyncMessage();
    if (v7)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_23();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t captureSourceRemote_CopyProperty_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t captureSourceRemote_CopyProperty_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t captureSourceRemote_CopyProperty_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_4_7(v0);
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

CFTypeRef captureSourceRemote_CopyProperty_cold_8(uint64_t a1, const void **a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (*(a1 + 48) <= 0)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  *a2 = *v2;
  return CFRetain(v3);
}

uint64_t captureSourceRemote_getObjectID_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigCaptureSourceRemote >>>>", 0xEB, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureSourceRemote_getObjectID_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFBFBBLL, "<<<< FigCaptureSourceRemote >>>>", 0xEC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureSourceRemote_ProprietaryDefaultsDomainForAuditToken_cold_2(int a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  v7 = a1;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v8, v9, v10, v11, v12, vars0, vars8);
  *a3 = *a2;
  return result;
}

uint64_t FigCapturePleaseFileRadar_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_38(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCaptureRadarUtils >>>> %s: Skipping Tap-to-Radar prompt because another prompt was shown within the past minute.", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t FigCapturePleaseFileRadar_cold_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_38(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCaptureRadarUtils >>>> %s: Skipping Tap-to-Radar prompt because the build is the same as the last time the prompt was shown.", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

uint64_t FigCapturePleaseFileRadar_cold_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_38(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadarIfNecessary");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCaptureRadarUtils >>>> %s: Skipping Tap-to-Radar prompt because the date is the same as the last time the prompt was shown.", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

void FigCapturePleaseFileRadar_cold_8(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 40);
  if (v4)
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(*(*a1 + 40));
    *(*a1 + 40) = 0;
  }

  _Block_object_dispose(a2, 8);
}

uint64_t FigCapturePleaseFileRadar_cold_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_1_38(a1, a2, a3, a4, a5, a6, a7, a8, v32, v35, v38, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v33, v36, v39, v42, v44, v45, v46);
  v17 = OUTLINED_FUNCTION_5_2(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_2_11("fcru_promptOpenTapToRadar");
    OUTLINED_FUNCTION_3_26(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCaptureRadarUtils >>>> %s: Skipping Tap-to-Radar prompt because the current process is xctest.", v34);
    OUTLINED_FUNCTION_6_2();
  }

  else
  {
    v30 = 0;
  }

  return OUTLINED_FUNCTION_0_34(v17, v18, v19, v30, v20, v21, v22, v23, v34, v37, v40, v43, v47);
}

void FigCaptureLogCameraStillImageCapturePowerEvent(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_14_10();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_14_10();
  fig_note_initialize_category_with_default_work_cf();
  if (sCameraPowerLogEventQueue)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%dx%d", a1, a2, a3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigCaptureLogCameraStillImageCapturePowerEvent_block_invoke;
    block[3] = &unk_1E7990078;
    block[4] = v8;
    v10 = a4;
    dispatch_async(sCameraPowerLogEventQueue, block);
  }
}

uint64_t FigCaptureLogCameraStreamingPowerEvent_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_13(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_2_11("FigCaptureLogCameraStreamingPowerEvent");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

uint64_t FigCaptureLogCameraStreamingPowerEvent_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_9_13(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, SWORD2(v29), SBYTE6(v29), SHIBYTE(v29));
  v16 = OUTLINED_FUNCTION_4_1(v8, v9, v10, v11, v12, v13, v14, v15, v24, v26, v28, v30, v31, v32, v33);
  if (OUTLINED_FUNCTION_5_2(v16))
  {
    OUTLINED_FUNCTION_2_11("FigCaptureLogCameraStreamingPowerEvent");
    OUTLINED_FUNCTION_13();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21);
}

void *qtmfsn_movieRecordingIsProRes(void *a1)
{
  result = [objc_msgSend(a1 "videoSettings")];
  if (result)
  {
    v2 = BWOSTypeForString(result);
    return ((v2 - 1634755432) <= 0xB && ((1 << (v2 - 104)) & 0x8C1) != 0 || v2 == 1634759278 || v2 == 1634759272);
  }

  return result;
}

void qtmfsn_setTrackProperties(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v25 = 0;
  v6 = qtmfsn_movieRecordingIsProRes(a4);
  v7 = MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6960CC0];
  if (v6)
  {
    if (a3 == 1986618469)
    {
      FigBaseObject = FigFormatWriterGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(FigBaseObject, *MEMORY[0x1E6971BE8], *v7, &v25);
      }
    }

    else
    {
      v12 = *MEMORY[0x1E695E480];
      time = **&MEMORY[0x1E6960CC0];
      v25 = CMTimeCopyAsDictionary(&time, v12);
    }

    v11 = 0x4000;
  }

  else
  {
    v11 = 0;
  }

  [MEMORY[0x1E696AD98] numberWithInt:v11];
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v13 = OUTLINED_FUNCTION_74_0();
    v14(v13);
  }

  [MEMORY[0x1E696AD98] numberWithInt:0x100000];
  if (*(*(CMBaseObjectGetVTable() + 16) + 24))
  {
    v15 = OUTLINED_FUNCTION_74_0();
    v16(v15);
  }

  if (v25)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 24))
    {
      v17 = OUTLINED_FUNCTION_74_0();
      v18(v17);
    }

    CFRelease(v25);
  }

  memset(&time, 0, sizeof(time));
  if (a4)
  {
    objc_msgSend_movieFragmentInterval(a4);
    if (time.flags)
    {
      time1 = time;
      time2 = *v8;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        dictionaryRepresentation = 0;
        if (*(*(CMBaseObjectGetVTable() + 16) + 16))
        {
          v19 = OUTLINED_FUNCTION_100_1();
          v20(v19);
        }
      }
    }
  }
}

void *qtmfsn_movieRecordingIsProResRaw(void *a1)
{
  result = [objc_msgSend(a1 "videoSettings")];
  if (result)
  {
    v2 = BWOSTypeForString(result);
    return (v2 == 1634759278 || v2 == 1634759272);
  }

  return result;
}

void *qtmfsn_formatWriterDidWriteFragment(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 763) = 1;
    return [*(a2 + 712) parseAdditionalFragments];
  }

  return result;
}

void DiskArbitrationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *DiskArbitrationLibrary(void)") description:{@"BWQuickTimeMovieFileSinkNode.m", 104, @"%s", *a1}];
  __break(1u);
}

void VisionLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *VisionLibrary(void)") description:{@"BWVisionSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getVNImageRequestHandlerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNImageRequestHandlerClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 14, @"Unable to find class %s", "VNImageRequestHandler"}];
  __break(1u);
}

void __getVNSequenceRequestHandlerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNSequenceRequestHandlerClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 15, @"Unable to find class %s", "VNSequenceRequestHandler"}];
  __break(1u);
}

void __getVNProcessingDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNProcessingDeviceClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 16, @"Unable to find class %s", "VNProcessingDevice"}];
  __break(1u);
}

void __getVNFaceObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNFaceObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 17, @"Unable to find class %s", "VNFaceObservation"}];
  __break(1u);
}

void __getVNDetectedObjectObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectedObjectObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 19, @"Unable to find class %s", "VNDetectedObjectObservation"}];
  __break(1u);
}

void __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceLandmarksRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 24, @"Unable to find class %s", "VNDetectFaceLandmarksRequest"}];
  __break(1u);
}

void __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceRectanglesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 25, @"Unable to find class %s", "VNDetectFaceRectanglesRequest"}];
  __break(1u);
}

void __getVNTranslationalImageRegistrationRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNTranslationalImageRegistrationRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 28, @"Unable to find class %s", "VNTranslationalImageRegistrationRequest"}];
  __break(1u);
}

void __getVNClassifyImageAestheticsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyImageAestheticsRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 30, @"Unable to find class %s", "VNClassifyImageAestheticsRequest"}];
  __break(1u);
}

void __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNGenerateAttentionBasedSaliencyImageRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 31, @"Unable to find class %s", "VNGenerateAttentionBasedSaliencyImageRequest"}];
  __break(1u);
}

void __getVNGenerateFaceSegmentsRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNGenerateFaceSegmentsRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 32, @"Unable to find class %s", "VNGenerateFaceSegmentsRequest"}];
  __break(1u);
}

void __getVNClassifyJunkImageRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyJunkImageRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 33, @"Unable to find class %s", "VNClassifyJunkImageRequest"}];
  __break(1u);
}

void __getVNCreateSceneprintRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNCreateSceneprintRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 34, @"Unable to find class %s", "VNCreateSceneprintRequest"}];
  __break(1u);
}

void __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVN5kJNH3eYuyaLxNpZr5Z7ziClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 35, @"Unable to find class %s", "VN5kJNH3eYuyaLxNpZr5Z7zi"}];
  __break(1u);
}

void __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNClassifyFaceAttributesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 36, @"Unable to find class %s", "VNClassifyFaceAttributesRequest"}];
  __break(1u);
}

void __getVNRecognizeFoodAndDrinkRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNRecognizeFoodAndDrinkRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 37, @"Unable to find class %s", "VNRecognizeFoodAndDrinkRequest"}];
  __break(1u);
}

void __getVNTrackObjectRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNTrackObjectRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 38, @"Unable to find class %s", "VNTrackObjectRequest"}];
  __break(1u);
}

void __getVNSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNSessionClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 39, @"Unable to find class %s", "VNSession"}];
  __break(1u);
}

void __getVNRecognizedObjectObservationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNRecognizedObjectObservationClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 41, @"Unable to find class %s", "VNRecognizedObjectObservation"}];
  __break(1u);
}

void __getVNProcessingDescriptorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNProcessingDescriptorClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 42, @"Unable to find class %s", "VNProcessingDescriptor"}];
  __break(1u);
}

void __getVNResourceVersionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNResourceVersionClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 43, @"Unable to find class %s", "VNResourceVersion"}];
  __break(1u);
}

void __getVNDetectHumanRectanglesRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectHumanRectanglesRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 44, @"Unable to find class %s", "VNDetectHumanRectanglesRequest"}];
  __break(1u);
}

void __getVNDetectFaceCaptureQualityRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getVNDetectFaceCaptureQualityRequestClass(void)_block_invoke") description:{@"BWVisionSoftLinking.m", 45, @"Unable to find class %s", "VNDetectFaceCaptureQualityRequest"}];
  __break(1u);
}

void getVNInferenceNetworkIdentifierFaceprint_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNInferenceNetworkIdentifierFaceprint) (*)(void))0)()) getVNInferenceNetworkIdentifierFaceprint(void)") description:{@"BWVisionSoftLinking.m", 52, @"%s", dlerror()}];
  __break(1u);
}

void getVNFaceAttributeEyesClosed_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNFaceAttributeEyesClosed) (*)(void))0)()) getVNFaceAttributeEyesClosed(void)") description:{@"BWVisionSoftLinking.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetRequestConcurrentTasksProcessingTimeout_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetRequestConcurrentTasksProcessingTimeout(int64_t)") description:{@"BWVisionSoftLinking.m", 54, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetRequiresHighQoS_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetRequiresHighQoS(BOOL)") description:{@"BWVisionSoftLinking.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void BWVNSetTargetDispatchQueue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void BWVNSetTargetDispatchQueue(dispatch_queue_t)") description:{@"BWVisionSoftLinking.m", 56, @"%s", dlerror()}];
  __break(1u);
}

void getVNErrorDomain_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (VNErrorDomain) (*)(void))0)()) getVNErrorDomain(void)") description:{@"BWVisionSoftLinking.m", 58, @"%s", dlerror()}];
  __break(1u);
}

uint64_t BWStereoUtilitiesComputeRectificationQuaternion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x3D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x76, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x67, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x66, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x65, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x64, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x99, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0xB7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0xB2, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0xAB, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x9C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x96, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x93, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x92, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getIntrinsicsMatrix_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x91, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x120, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x11D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x10E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x10B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x106, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x105, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x104, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x15E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x155, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x14F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x14A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x145, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_18(int *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v12, v13, v15, v17, v19, vars0, vars8);
  emitter = fig_log_get_emitter();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0xE3, v1, v4, v5, v10);
  *a1 = v6;
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  fig_log_get_emitter();
  LODWORD(v11) = v7;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, v1, v14, v16, v18, v20, vars0a, vars8a);
  return 0;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_21(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x178, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWStereoUtilitiesComputeStereoBaseline_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x1BD, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x4F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE11, "<<<< BWStereoUtilities >>>>", 0x4E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t su_getViewMatrixInCameraCoordinates_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE14, "<<<< BWStereoUtilities >>>>", 0x4B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(CMAttachmentBearerRef target)
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v110.size = *MEMORY[0x1E695EFD0];
  v111 = v4;
  v112 = *(MEMORY[0x1E695EFD0] + 32);
  v5 = MEMORY[0x1E695F050];
  if (target)
  {
    v6 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v6)
    {
      v7 = v6;
      v107 = *(v5 + 16);
      v110.origin = *v5;
      v132.origin = *v5;
      v132.size = v107;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        FigCaptureMetadataUtilitiesGetFinalCropRect(v7);
        OUTLINED_FUNCTION_8_3();
        v8 = FigCaptureComputeAffineTransformFromSourceAndDestRects(&v110.size, v132.origin.x, v132.origin.y, v132.size.width, v132.size.height, v9, v10, v11, v12);
      }

      v13 = [v7 objectForKeyedSubscript:{*off_1E798B308, v8}];
      v14 = off_1E798B218;
      v15 = off_1E798B5C0;
      if (!v13)
      {
        goto LABEL_41;
      }

      v16 = v13;
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      v17 = [v13 countByEnumeratingWithState:&v133 objects:&v132 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v134;
        while (1)
        {
          if (*v134 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (!--v18)
          {
            v18 = [v16 countByEnumeratingWithState:&v133 objects:&v132 count:16];
            if (!v18)
            {
              break;
            }
          }
        }
      }

      if ([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B2F8), "intValue"}] < 1)
      {
        goto LABEL_41;
      }

      if ([v16 count])
      {
        v20 = [v16 objectAtIndexedSubscript:{objc_msgSend(v16, "count") > 1}];
        recta.origin = v110.origin;
        recta.size = v107;
        if (CGRectMakeWithDictionaryRepresentation(v20, &recta) && !CGRectIsEmpty(recta))
        {
          v21 = [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
          if (!v21)
          {
            v21 = [v7 objectForKeyedSubscript:*off_1E798B218];
          }

          if ([v21 count])
          {
            width = recta.size.width;
            height = recta.size.height;
            FigCaptureNormalizedFocusWindowFromMetadata(v7);
            v25 = v24;
            OUTLINED_FUNCTION_5_33();
            if (CGRectIsNull(v137))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_16();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v94, v96, rect1, v103, v107, *(&v107 + 1), *&v110.origin.x, LODWORD(v110.origin.y));
            }

            else
            {
              v26 = fabs(width * height);
              rect1a = v25;
              OUTLINED_FUNCTION_4_32();
              v139 = CGRectIntersection(v138, v153);
              v27 = v139.size.width;
              v28 = v139.size.height;
              IsNull = CGRectIsNull(v139);
              v37 = 0.0;
              if (!IsNull)
              {
                v37 = fabs(v27 * v28) / fmin(fabs(v1 * v2), v26);
              }

              v129 = 0u;
              v130 = 0u;
              v127 = 0u;
              v128 = 0u;
              v38 = OUTLINED_FUNCTION_9_16(IsNull, v30, v31, v32, v33, v34, v35, v36, v94, v96, rect1a, v103, v107, *(&v107 + 1), *&v110.origin.x, *&v110.origin.y, *&v110.size.width, *&v110.size.height, v111, *(&v111 + 1), v112, *(&v112 + 1), *&v113.origin.x, *&v113.origin.y, *&v113.size.width, *&v113.size.height, *&v114.origin.x, *&v114.origin.y, *&v114.size.width, *&v114.size.height, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
              if (v38)
              {
                v39 = v38;
                v40 = *v128;
                v41 = off_1E798B5C0;
                v42 = *off_1E798B5C0;
LABEL_24:
                v43 = 0;
                while (1)
                {
                  if (*v128 != v40)
                  {
                    objc_enumerationMutation(v21);
                  }

                  if (v37 >= 0.5)
                  {
                    break;
                  }

                  v44 = [*(*(&v127 + 1) + 8 * v43) objectForKeyedSubscript:v42];
                  if (!v44 || (v113.origin = v110.origin, v113.size = v107, !CGRectMakeWithDictionaryRepresentation(v44, &v113)))
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_1_16();
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                    v15 = off_1E798B5C0;
                    v14 = off_1E798B218;
                    goto LABEL_40;
                  }

                  v140 = CGRectIntersection(v113, recta);
                  v45 = v140.size.width;
                  v46 = v140.size.height;
                  v47 = CGRectIsNull(v140);
                  v55 = 0.0;
                  if (!v47)
                  {
                    v55 = fabs(v45 * v46) / fmin(fabs(v113.size.width * v113.size.height), v26);
                  }

                  v37 = fmax(v37, v55);
                  if (v39 == ++v43)
                  {
                    v39 = OUTLINED_FUNCTION_9_16(v47, v48, v49, v50, v51, v52, v53, v54, v94, v96, rect1b, v104, v107, *(&v107 + 1), *&v110.origin.x, *&v110.origin.y, *&v110.size.width, *&v110.size.height, v111, *(&v111 + 1), v112, *(&v112 + 1), *&v113.origin.x, *&v113.origin.y, *&v113.size.width, *&v113.size.height, *&v114.origin.x, *&v114.origin.y, *&v114.size.width, *&v114.size.height, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
                    if (v39)
                    {
                      goto LABEL_24;
                    }

                    break;
                  }
                }
              }

              else
              {
                v41 = off_1E798B5C0;
              }

              v15 = v41;
              v14 = off_1E798B218;
              if (v37 < 0.5)
              {
                OUTLINED_FUNCTION_4_32();
                v56 = CGRectCreateDictionaryRepresentation(v141);
                if (v56)
                {
LABEL_52:
                  v20 = v56;
                  goto LABEL_53;
                }

                goto LABEL_38;
              }
            }
          }

LABEL_40:
          if (v20)
          {
LABEL_53:
            v67 = 0;
            goto LABEL_54;
          }

          goto LABEL_41;
        }
      }

LABEL_38:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_41:
      Value = CFDictionaryGetValue(v7, *v14);
      if (Value)
      {
        v58 = Value;
        Count = CFArrayGetCount(Value);
        FigCaptureUnityRect();
        if (Count >= 1)
        {
          OUTLINED_FUNCTION_5_33();
          v60 = 0;
          v20 = 0;
          v61 = *v15;
          v62 = Count & 0x7FFFFFFF;
          v63 = 0.0;
          while (1)
          {
            v132.origin = v110.origin;
            v132.size = v107;
            ValueAtIndex = CFArrayGetValueAtIndex(v58, v60);
            v65 = CFDictionaryGetValue(ValueAtIndex, v61);
            if (!CGRectMakeWithDictionaryRepresentation(v65, &v132))
            {
              break;
            }

            OUTLINED_FUNCTION_3_32();
            if (CGRectIntersectsRect(v142, v154))
            {
              v66 = v132.size.width * v132.size.height;
              if (v63 < v66)
              {
                v63 = v132.size.width * v132.size.height;
                v20 = v65;
              }
            }

            if (v62 == ++v60)
            {
              if (v63 <= 0.0)
              {
                break;
              }

              if (v20)
              {
                goto LABEL_53;
              }

              goto LABEL_51;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_16();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

LABEL_51:
      v143.origin.x = 0.25;
      v143.origin.y = 0.25;
      v143.size.width = 0.5;
      v143.size.height = 0.5;
      v56 = CGRectCreateDictionaryRepresentation(v143);
      goto LABEL_52;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_16();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  v20 = 0;
  v67 = 4294954516;
LABEL_54:
  v68 = *(v5 + 16);
  v114.origin = *v5;
  v114.size = v68;
  if (!CGRectMakeWithDictionaryRepresentation(v20, &v114))
  {
    CMSetAttachment(target, *off_1E798D340, v20, 1u);
LABEL_66:
    v69 = [(__CFDictionary *)v20 copy];
    goto LABEL_67;
  }

  v110.origin.x = v114.origin.x;
  v105 = *&v114.size.width;
  *&v107 = v114.origin.y;
  rect1d = *&v114.size.height;
  v69 = CGRectCreateDictionaryRepresentation(v114);
  OUTLINED_FUNCTION_6_26(v69, v70, v71, v72, v73, v74, v75, v76, v94, v96, rect1d, v105, v107, *(&v107 + 1), *&v110.origin.x, *&v110.origin.y, *&v110.size.width, *&v110.size.height, v111, *(&v111 + 1), v112);
  IsIdentity = CGAffineTransformIsIdentity(v77);
  if (!IsIdentity)
  {
    OUTLINED_FUNCTION_6_26(IsIdentity, v79, v80, v81, v82, v83, v84, v85, v95, v97, *&rect1c, *&v106, *&v108, v109, *&v110.origin.x, *&v110.origin.y, *&v110.size.width, *&v110.size.height, v111, *(&v111 + 1), v112);
    v144.origin.x = OUTLINED_FUNCTION_2_41();
    CGRectApplyAffineTransform(v144, v86);
  }

  OUTLINED_FUNCTION_16_5();
  v145.origin.x = OUTLINED_FUNCTION_2_41();
  CGRectIntersection(v145, v155);
  OUTLINED_FUNCTION_5_33();
  OUTLINED_FUNCTION_2_41();
  OUTLINED_FUNCTION_3_32();
  CGRectEqualToRect(v146, v156);
  OUTLINED_FUNCTION_16_5();
  v147.origin.x = v110.origin.x;
  v147.origin.y = v108;
  v147.size.width = v106;
  v147.size.height = rect1c;
  CGRectIntersection(v147, v157);
  OUTLINED_FUNCTION_8_3();
  v148.origin.x = v110.origin.x;
  x = v158.origin.x;
  v148.origin.y = v108;
  y = v158.origin.y;
  v148.size.width = v106;
  v89 = v158.size.width;
  v148.size.height = rect1c;
  v90 = v158.size.height;
  CGRectEqualToRect(v148, v158);
  OUTLINED_FUNCTION_3_32();
  if (!CGRectEqualToRect(v149, v159))
  {
    OUTLINED_FUNCTION_4_32();
    v91 = CGRectCreateDictionaryRepresentation(v150);
    if (v91)
    {
      v20 = v91;
    }
  }

  v151.origin.x = v110.origin.x;
  v151.size.width = v106;
  v151.origin.y = v108;
  v151.size.height = rect1c;
  v160.origin.x = x;
  v160.origin.y = y;
  v160.size.width = v89;
  v160.size.height = v90;
  if (!CGRectEqualToRect(v151, v160))
  {
    v152.origin.x = x;
    v152.origin.y = y;
    v152.size.width = v89;
    v152.size.height = v90;
    v92 = CGRectCreateDictionaryRepresentation(v152);
    if (v92)
    {
      v69 = v92;
    }
  }

  CMSetAttachment(target, *off_1E798D340, v20, 1u);
  if (!v69)
  {
    goto LABEL_66;
  }

LABEL_67:
  CMSetAttachment(target, *off_1E798D360, v69, 1u);
  return v67;
}

void __adsie_createStateMachine_block_invoke_2(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWJasperColorStillsExecutorController *)a2 _serviceNextRequest];

  objc_autoreleasePoolPop(v3);
}

void __adsie_createStateMachine_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [*(a2 + 112) setErr:-[BWJasperColorStillsExecutorController _setupJasperColorStillsExecutor](a2)];
  }

  objc_autoreleasePoolPop(v3);
}

void __adsie_createStateMachine_block_invoke_4(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  [(BWJasperColorStillsExecutorController *)a2 _execute];

  objc_autoreleasePoolPop(v3);
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2_cold_11(id *a1)
{
  fig_log_get_emitter();
  v8 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v1, v10, v11, v12, v13, vars0, vars8);
  emitter = fig_log_get_emitter();
  v4 = [*a1 code];
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v4, "<<<< ShaderPreloader >>>>", 0x723, v1, v5, v6, v9);
}

void VisionCoreLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *VisionCoreLibrary(void)") description:{@"BWVisionCoreSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

uint64_t BWMemcpyPixelBuffer(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (!PixelFormatType)
  {
    goto LABEL_46;
  }

  v15 = PixelFormatType;
  v16 = CVPixelBufferGetPixelFormatType(a2);
  if (!v16)
  {
    goto LABEL_46;
  }

  if (v15 != v16)
  {
    return 0;
  }

  if (!FigCapturePixelFormatIsDepthData(v15) || !FigCapturePixelFormatIsDepthData(v15))
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    if (Width >= 1 && Height > 0)
    {
      v21 = CVPixelBufferGetWidth(a2);
      v22 = CVPixelBufferGetHeight(a2);
      v23 = v22;
      if (v21 >= 1 && v22 > 0)
      {
        v25 = v21 | (v22 << 32);
        v78.origin.x = OUTLINED_FUNCTION_13_16();
        if (CGRectIsNull(v78) || (v26 = OUTLINED_FUNCTION_13_16(), FigCaptureRectIsFullBufferRectForPixelBuffer(a1, v26, v27, v28, v29)))
        {
          FigCaptureRectFromDimensions();
          a5 = v30;
          a6 = v31;
          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        LODWORD(v6) = llround(a5);
        LODWORD(v7) = llround(a6);
        if ((v6 | (v7 << 32)) != v25)
        {
          return 0;
        }

        CVPixelBufferGetIOSurface(a1);
        CVPixelBufferGetIOSurface(a2);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceLock(v33, v34, v35);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceUnlock(v36, v37, v38);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceLock(v39, v40, v41);
        OUTLINED_FUNCTION_12_22();
        IOSurfaceUnlock(v42, v43, v44);
        v45 = OUTLINED_FUNCTION_45();
        if (!CVPixelBufferLockBaseAddress(v45, v46))
        {
          if (!CVPixelBufferLockBaseAddress(a2, 0))
          {
            BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
            if (!BytesPerRow || (v48 = BytesPerRow, (v49 = CVPixelBufferGetBytesPerRow(a2)) == 0) || (v50 = v49, (v51 = v49 * (v23 & 0x7FFFFFFF)) == 0))
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              v17 = 0;
              goto LABEL_44;
            }

            pixelBuffera = a2;
            BaseAddress = CVPixelBufferGetBaseAddress(a1);
            if (!BaseAddress)
            {
              goto LABEL_53;
            }

            v53 = BaseAddress;
            v54 = v32;
            v55 = CVPixelBufferGetBaseAddress(pixelBuffera);
            if (v55)
            {
              v56 = v55;
              if (v54)
              {
                v57 = FigCapturePixelFormatBytesPerPixel(v15);
                if (v57 != 1.0 && v57 != 2.0)
                {
                  goto LABEL_52;
                }

                v59 = v57;
                v60 = v59 * v6;
                v61 = v60 * v7;
                if (v61)
                {
                  if (v51 >= v61)
                  {
                    v62 = &v53[v48 * vcvtad_u64_f64(a4) + v59 * vcvtad_u64_f64(a3)];
                    do
                    {
                      memcpy(v56, v62, v60);
                      v62 += v48;
                      v56 += v50;
                      --v23;
                    }

                    while (v23);
                    goto LABEL_42;
                  }

                  goto LABEL_54;
                }

LABEL_53:
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                goto LABEL_54;
              }

              v63 = v48 * v7;
              if (v63)
              {
                if (v63 == v51)
                {
                  memcpy(v55, v53, v51);
LABEL_42:
                  v17 = 1;
LABEL_43:
                  a2 = pixelBuffera;
LABEL_44:
                  v64 = OUTLINED_FUNCTION_45();
                  CVPixelBufferUnlockBaseAddress(v64, v65);
                  CVPixelBufferUnlockBaseAddress(a2, 0);
                  return v17;
                }

LABEL_54:
                v17 = 0;
                goto LABEL_43;
              }
            }

LABEL_52:
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            v17 = 0;
            a2 = pixelBuffera;
            goto LABEL_44;
          }

          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v70, v71, v72, v73, pixelBuffer, v76, v77);
          v67 = OUTLINED_FUNCTION_45();
          CVPixelBufferUnlockBaseAddress(v67, v68);
          return 0;
        }
      }
    }

LABEL_46:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  if (FigDepthScaleBuffer(a1, a2))
  {
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  return 1;
}

uint64_t BWProcessWiderAndNarrowerFOVBuffersForFacePropagation(const void *a1, const void *a2, uint64_t a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_3_39();
  fig_note_initialize_category_with_default_work_cf();
  v5 = *off_1E798A3C8;
  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v7 = *off_1E798B220;
  v8 = [v6 objectForKeyedSubscript:*off_1E798B220];
  v9 = CMGetAttachment(a2, v5, 0);
  v10 = [v9 objectForKeyedSubscript:v7];
  if (v8 | v10)
  {
    v11 = v10;
    v12 = [v8 count];
    v13 = [v11 count];
    if (v12 >= v13)
    {
      result = OUTLINED_FUNCTION_17_11(v13, v14, v15, v16, v17, v18, v19, v20, v62, a3, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113, v116, v118, v120, v122, v124, v126, v128, v130);
      if (result)
      {
        v39 = result;
        v40 = MEMORY[0];
        v41 = *off_1E798ACE8;
LABEL_14:
        v42 = 0;
        while (1)
        {
          if (MEMORY[0] != v40)
          {
            objc_enumerationMutation(v8);
          }

          v43 = *(8 * v42);
          v44 = [objc_msgSend(v8 objectForKeyedSubscript:{v43), "objectForKeyedSubscript:", v41}];
          [objc_msgSend(v11 objectForKeyedSubscript:{v43), "objectForKeyedSubscript:", v41}];
          v45 = OUTLINED_FUNCTION_6_32();
          result = bwu_propagateDetectedObjects(v45, v46, v47, v44, v48, v43);
          if (!result)
          {
            break;
          }

          if (v39 == ++v42)
          {
            result = OUTLINED_FUNCTION_17_11(result, v49, v50, v51, v52, v53, v54, v55, v64, v67, v70, v73, v76, v79, v82, v85, v88, v91, v94, v97, v100, v103, v106, v109, v112, v115, v117, v119, v121, v123, v125, v127, v129, v131);
            v39 = result;
            if (result)
            {
              goto LABEL_14;
            }

            return result;
          }
        }
      }
    }

    else
    {
      result = OUTLINED_FUNCTION_10_0(v13, v14, v15, v16, v17, v18, v19, v20, v62, a3, v68, v71, v74, v77, v80, v83, v86, v89, v92, v95, v98, v101, v104, v107, v110, v113);
      if (result)
      {
        v22 = result;
        v23 = MEMORY[0];
        v24 = *off_1E798ACE8;
LABEL_5:
        v25 = 0;
        while (1)
        {
          if (MEMORY[0] != v23)
          {
            objc_enumerationMutation(v11);
          }

          v26 = *(8 * v25);
          v27 = [objc_msgSend(v8 objectForKeyedSubscript:{v26), "objectForKeyedSubscript:", v24}];
          [objc_msgSend(v11 objectForKeyedSubscript:{v26), "objectForKeyedSubscript:", v24}];
          v28 = OUTLINED_FUNCTION_6_32();
          result = bwu_propagateDetectedObjects(v28, v29, v30, v27, v31, v26);
          if (!result)
          {
            break;
          }

          if (v22 == ++v25)
          {
            result = OUTLINED_FUNCTION_10_0(result, v32, v33, v34, v35, v36, v37, v38, v63, v66, v69, v72, v75, v78, v81, v84, v87, v90, v93, v96, v99, v102, v105, v108, v111, v114);
            v22 = result;
            if (result)
            {
              goto LABEL_5;
            }

            return result;
          }
        }
      }
    }
  }

  else
  {
    v56 = *off_1E798B218;
    v57 = [v6 objectForKeyedSubscript:*off_1E798B218];
    [v9 objectForKeyedSubscript:v56];
    v58 = OUTLINED_FUNCTION_6_32();

    return bwu_propagateDetectedObjects(v58, v59, v60, v57, v61, v56);
  }

  return result;
}

BOOL bwu_propagateDetectedObjects(const void *a1, const void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = [a3 count];
  if (v12 != 2)
  {
    return v12 == 2;
  }

  [objc_msgSend(a3 objectAtIndexedSubscript:{0), "floatValue"}];
  v14 = v13;
  [objc_msgSend(a3 objectAtIndexedSubscript:{1), "floatValue"}];
  v16 = v15;
  if ([a4 count] && !objc_msgSend(a5, "count"))
  {
    if (v14 > v16)
    {
      v17 = v14 / v16;
    }

    else
    {
      v17 = v16 / v14;
    }

    if (!a2)
    {
      return v12 == 2;
    }
  }

  else
  {
    if (![a5 count] || objc_msgSend(a4, "count"))
    {
      return v12 == 2;
    }

    v17 = v14 > v16 ? v16 / v14 : v14 / v16;
    a4 = a5;
    a2 = a1;
    if (!a1)
    {
      return v12 == 2;
    }
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v26 = OUTLINED_FUNCTION_16(v18, v19, v20, v21, v22, v23, v24, v25, v56, a6, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  if (v26)
  {
    v27 = v26;
    v28 = v17;
    v29 = *v77;
    v30 = *off_1E798B5C0;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v77 != v29)
        {
          objc_enumerationMutation(a4);
        }

        v32 = *(*(&v76 + 1) + 8 * i);
        memset(&rect, 0, sizeof(rect));
        v33 = CGRectMakeWithDictionaryRepresentation([v32 objectForKeyedSubscript:v30], &rect);
        if (v33)
        {
          v41 = rect.size.width * v28;
          v42 = rect.size.height * v28;
          v43 = (rect.origin.x + -0.5) * v28 + 0.5;
          v44 = (rect.origin.y + -0.5) * v28 + 0.5;
          v45 = [v32 mutableCopy];
          v80.origin.x = v43;
          v80.origin.y = v44;
          v80.size.width = v41;
          v80.size.height = v42;
          DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v80);
          [v45 setObject:DictionaryRepresentation forKeyedSubscript:v30];
          if (DictionaryRepresentation)
          {
            CFRelease(DictionaryRepresentation);
          }

          [v18 addObject:v45];
        }
      }

      v27 = OUTLINED_FUNCTION_16(v33, v34, v35, v36, v37, v38, v39, v40, v57, v58, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
    }

    while (v27);
  }

  v47 = *off_1E798A3C8;
  v48 = [CMGetAttachment(a2 *off_1E798A3C8];
  v49 = *off_1E798B218;
  if (objc_msgSend_isEqualToString_(v58))
  {
    v50 = v48;
    v51 = v18;
    v52 = v49;
  }

  else
  {
    v53 = *off_1E798B220;
    v54 = [v48 objectForKeyedSubscript:*off_1E798B220];
    if (!v54)
    {
      v54 = [MEMORY[0x1E695DF90] dictionary];
      [v48 setObject:v54 forKeyedSubscript:v53];
    }

    if (![v54 objectForKeyedSubscript:v58])
    {
      [v54 setObject:objc_msgSend(MEMORY[0x1E695DF90] forKeyedSubscript:{"dictionary"), v58}];
    }

    v50 = [v54 objectForKeyedSubscript:v58];
    v52 = *off_1E798ACE8;
    v51 = v18;
  }

  [v50 setObject:v51 forKeyedSubscript:v52];
  CMSetAttachment(a2, v47, v48, 1u);

  return v12 == 2;
}

uint64_t BWVersionMakeWithObject(uint64_t result, _WORD *a2)
{
  v10 = 0;
  v11 = 0;
  v9 = 0;
  if (result)
  {
    v3 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 floatValue];
      v5 = v4;
      v6 = (((v4 - v4) * 10.0) + 0.5);
      if (vabds_f32(-((10 * v4) - (v4 * 10.0)), v6) < 0.01)
      {
        v7 = 0;
LABEL_5:
        *a2 = v5;
        a2[1] = v6;
        result = 1;
        a2[2] = v7;
        return result;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        result = [v3 length];
        if (!result)
        {
          return result;
        }

        v8 = [v3 componentsSeparatedByString:@"."];
        v6 = [v8 count];
        if (!v6)
        {
          v7 = 0;
          LOWORD(v5) = 0;
          goto LABEL_5;
        }

        if (v6 == 1 || (v6 == 2 || (bwu_validateLongConversion([v8 objectAtIndexedSubscript:2], &v9)) && (bwu_validateLongConversion(objc_msgSend(v8, "objectAtIndexedSubscript:", 1), &v10)) && bwu_validateLongConversion(objc_msgSend(v8, "objectAtIndexedSubscript:", 0), &v11))
        {
          LOWORD(v6) = v10;
          LOWORD(v5) = v11;
          v7 = v9;
          goto LABEL_5;
        }

        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    return 0;
  }

  return result;
}

void *BWGetHDRImageStatisticsDictFromSampleBuffer(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:*off_1E798B368];
  if (v2)
  {
    v3 = [OUTLINED_FUNCTION_40() objectForKeyedSubscript:?];
    v4 = MEMORY[0x1E6965EB8];
    v5 = MEMORY[0x1E6965EB0];
    v6 = MEMORY[0x1E6965EA8];
    v7 = MEMORY[0x1E6965EA0];
    if (v3)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE10), *v4}];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE08), *v5}];
      [v8 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_40() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798ADF8), *v6}];
      v9 = MEMORY[0x1E6965F70];
      [v8 setObject:*MEMORY[0x1E6965F70] forKeyedSubscript:*v7];
      v10 = off_1E798ADE8;
      v11 = [objc_msgSend(OUTLINED_FUNCTION_40() "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798ADE8}")];
      v12 = MEMORY[0x1E6983CA0];
      [v8 setObject:v11 forKeyedSubscript:*MEMORY[0x1E6983CA0]];
      v13 = off_1E798ADF0;
      v14 = [objc_msgSend(OUTLINED_FUNCTION_40() "objectForKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798ADF0}")];
      v15 = MEMORY[0x1E6983CA8];
      [v8 setObject:v14 forKeyedSubscript:*MEMORY[0x1E6983CA8]];
    }

    else
    {
      v9 = MEMORY[0x1E6965F70];
      v10 = off_1E798ADE8;
      v12 = MEMORY[0x1E6983CA0];
      v13 = off_1E798ADF0;
      v15 = MEMORY[0x1E6983CA8];
      v8 = 0;
    }

    if ([OUTLINED_FUNCTION_8_6() objectForKeyedSubscript:?])
    {
      v16 = [MEMORY[0x1E695DF90] dictionary];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE10), *MEMORY[0x1E6965EB8]}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798AE08), *MEMORY[0x1E6965EB0]}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *off_1E798ADF8), *MEMORY[0x1E6965EA8]}];
      [v16 setObject:*v9 forKeyedSubscript:*MEMORY[0x1E6965EA0]];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *v10), *v12}];
      [v16 setObject:objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_8_6() forKeyedSubscript:{"objectForKeyedSubscript:"), "objectForKeyedSubscript:", *v13), *v15}];
    }

    else
    {
      v16 = 0;
    }

    if (v8 | v16)
    {
      v2 = [MEMORY[0x1E695DF90] dictionary];
      [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x1E6965E98]];
      [OUTLINED_FUNCTION_40() setObject:? forKeyedSubscript:?];
      return v2;
    }

    return 0;
  }

  return v2;
}

void *BWUtilitiesWarnIfInputFormatsMismatch(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = [result count];
    if (result)
    {
      OUTLINED_FUNCTION_43();
      result = [v3 countByEnumeratingWithState:? objects:? count:?];
      if (result)
      {
        v4 = result;
        v5 = MEMORY[0];
        do
        {
          v6 = 0;
          do
          {
            if (MEMORY[0] != v5)
            {
              objc_enumerationMutation(v3);
            }

            v7 = *(8 * v6);
            if (v7 != a2)
            {
              [objc_msgSend(v7 "format")];
            }

            v6 = v6 + 1;
          }

          while (v4 != v6);
          OUTLINED_FUNCTION_43();
          result = [v3 countByEnumeratingWithState:? objects:? count:?];
          v4 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void DuetActivitySchedulerLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *DuetActivitySchedulerLibrary(void)") description:{@"FigCaptureCalibrationMonitor.m", 48, @"%s", *a1}];
  __break(1u);
}

uint64_t BWSampleBufferHasDetectedFaces(const void *a1, int a2, int a3, int a4, int a5, int a6)
{
  v12 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  [objc_msgSend(v12 objectForKeyedSubscript:{*off_1E798A5B0), "intValue"}];
  FigCaptureMetadataUtilitiesGetFinalCropRect(v12);
  OUTLINED_FUNCTION_2_3();
  if (a2)
  {
    v13 = [BWInferenceGetAttachedInference(a1 802];
    if (v13 && a6)
    {
      v14 = OUTLINED_FUNCTION_3();
      if (simu_faceObservationsContainFacesWithinNormalizedRect(v14, v17, v18, v19, v15, v16))
      {
        return 1;
      }
    }

    else if (v13)
    {
      return 1;
    }
  }

  if (a3)
  {
    v20 = [BWInferenceGetAttachedInference(a1 802];
    if (v20 && a6)
    {
      v21 = OUTLINED_FUNCTION_3();
      if (simu_faceObservationsContainFacesWithinNormalizedRect(v21, v24, v25, v26, v22, v23))
      {
        return 1;
      }
    }

    else if (v20)
    {
      return 1;
    }
  }

  if (a4)
  {
    v28 = [BWInferenceGetAttachedInference(a1 801];
    result = v28 != 0;
    if (v28 && a6)
    {
      v29 = OUTLINED_FUNCTION_3();
      result = simu_faceObservationsContainFacesWithinNormalizedRect(v29, v32, v33, v34, v30, v31);
      if (result)
      {
        return result;
      }
    }

    else if (v28)
    {
      return result;
    }

    if (!a5)
    {
      return result;
    }
  }

  else if (!a5)
  {
    return 0;
  }

  return BWMetadataHasDetectedFaces(v12, a6);
}

void *BWMetadataHasDetectedHumanBodies(void *result)
{
  if (result)
  {
    v1 = result;
    FigCaptureMetadataUtilitiesGetFinalCropRect(result);
    OUTLINED_FUNCTION_2_3();
    [objc_msgSend(objc_msgSend(v1 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", *off_1E798ACE8}];
    v3 = OUTLINED_FUNCTION_3();

    return simu_detectedFacesArrayContainFacesWithinNormalizedRect(v2, v3, v4, v5, v6);
  }

  return result;
}

CFTypeRef BWSampleBufferHasDetectedHumanBodies(const void *a1)
{
  result = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (result)
  {
    v2 = result;
    FigCaptureMetadataUtilitiesGetFinalCropRect(result);
    OUTLINED_FUNCTION_2_3();
    [objc_msgSend(objc_msgSend(v2 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", *off_1E798ACE8}];
    v4 = OUTLINED_FUNCTION_3();

    return simu_detectedFacesArrayContainFacesWithinNormalizedRect(v3, v4, v5, v6, v7);
  }

  return result;
}

uint64_t BWFaceDetectionObservationsFromISPDetectedFacesMetadata(void *a1, CGAffineTransform *a2)
{
  v4 = [objc_msgSend(objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B220), "objectForKeyedSubscript:", *off_1E798ACB8), "objectForKeyedSubscript:", *off_1E798ACE8}];
  if (!v4)
  {
    v4 = [a1 objectForKeyedSubscript:*off_1E798B218];
  }

  if (![v4 count])
  {
    return MEMORY[0x1E695E0F0];
  }

  return BWVisionFaceObservationsFromISPDetectedFacesInBufferCoordinates(v4, a2);
}

void BWUpdateLandmarksForStillImageCrop()
{
  OUTLINED_FUNCTION_6_4();
  v1 = v0;
  v3 = v2;
  v165 = *&v4;
  v168 = *&v5;
  v171 = *&v6;
  v174 = *&v7;
  IsUnityRect = FigCaptureIsUnityRect(v4, v5, v6, v7);
  if ((v1 - 803) >= 0xFFFFFFFE && !IsUnityRect)
  {
    v9 = CMGetAttachment(v3, *off_1E798A3C8, 0);
    if (v9)
    {
      v10 = [v9 objectForKeyedSubscript:*off_1E798A5B0];
      if (v10)
      {
        memset(&v245, 0, sizeof(v245));
        BWISPBufferCoordinatesToVisionCoordinatesTransform([v10 intValue], &v245);
        memset(&v244, 0, sizeof(v244));
        OUTLINED_FUNCTION_27_6();
        CGAffineTransformInvert(&v244, &v243);
        v121 = CMGetAttachment(v3, @"Inferences", 0);
        v131 = [v121 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v1)}];
        v11 = [objc_msgSend(v131 "inferences")];
        if (![v11 count])
        {
          v11 = [objc_msgSend(v131 "inferences")];
        }

        HIDWORD(v126) = v1;
        v12 = objc_alloc(MEMORY[0x1E695DF70]);
        [v11 count];
        v13 = [OUTLINED_FUNCTION_17() initWithCapacity:?];
        v21 = OUTLINED_FUNCTION_59_5(v13, v14, v15, v16, v17, v18, v19, v20, v104, v107, v110, v113, v116, 0x1F219E5F0, v121, @"Inferences", v126, v3, v131, v134, v137, v13, v142, v146, v149, v153, v157, v161, v165, v168, v171, v174, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v227, v229, v231, v233, v235, v237, v239, v241);
        if (v21)
        {
          v22 = v21;
          v23 = MEMORY[0];
          v135 = MEMORY[0];
          v138 = v11;
          do
          {
            v24 = 0;
            v144 = v22;
            do
            {
              if (MEMORY[0] != v23)
              {
                objc_enumerationMutation(v11);
              }

              v25 = *(8 * v24);
              [v25 boundingBox];
              OUTLINED_FUNCTION_25_7(v26, v27, v28, v29);
              OUTLINED_FUNCTION_2_3();
              [v25 alignedBoundingBoxAsCGRect];
              OUTLINED_FUNCTION_25_7(v30, v31, v32, v33);
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_3_32();
              v34 = CGRectContainsRect(v246, v252);
              if (v34)
              {
                v42 = OUTLINED_FUNCTION_3();
                v46 = FigCaptureTransformRectToCoordinateSpaceOfRect(v42, v43, v44, v45, *&v166, *&v169, *&v172);
                v159 = v47;
                v163 = v46;
                v151 = v49;
                v155 = v48;
                v50 = OUTLINED_FUNCTION_3_0();
                FigCaptureTransformRectToCoordinateSpaceOfRect(v50, v51, v52, v53, *&v166, *&v169, *&v172);
                OUTLINED_FUNCTION_26_2();
                OUTLINED_FUNCTION_27_6();
                v247.origin.y = v159;
                v247.origin.x = v163;
                v247.size.height = v151;
                v247.size.width = v155;
                v248 = CGRectApplyAffineTransform(v247, &v243);
                v158 = *&v248.origin.y;
                v162 = *&v248.origin.x;
                v150 = *&v248.size.height;
                v154 = *&v248.size.width;
                OUTLINED_FUNCTION_27_6();
                v249.origin.x = OUTLINED_FUNCTION_3_0();
                CGRectApplyAffineTransform(v249, v54);
                OUTLINED_FUNCTION_2_3();
                [objc_msgSend(objc_msgSend(objc_msgSend(v25 "faceAttributes")];
                getVNFaceAttributeEyesClosed();
                v55 = [OUTLINED_FUNCTION_17() isEqual:?];
                v56 = v55;
                v57 = 0;
                if (v55)
                {
                  [objc_msgSend(objc_msgSend(objc_msgSend(v25 "faceAttributes")];
                  v57 = v58;
                }

                getVNFaceObservationClass();
                [v25 requestRevision];
                v147 = [v25 roll];
                [v25 yaw];
                [v25 pitch];
                [v25 isBoundingBoxAligned];
                [v25 landmarks];
                v59 = [v25 landmarks65];
                [v25 landmarkScore];
                v61 = v60;
                [v25 faceOrientationIndex];
                v63 = v62;
                [v25 faceJunkinessIndex];
                LODWORD(v114) = v64;
                v111 = __PAIR64__(v63, v57);
                BYTE4(v108) = v56;
                LODWORD(v108) = v61;
                v105 = v59;
                OUTLINED_FUNCTION_3_32();
                v34 = [v140 addObject:{objc_msgSend(v65, "faceObservationWithRequestRevision:boundingBox:roll:yaw:pitch:isBoundingBoxAligned:alignedBoundingBox:landmarks:landmarks65:landmarkScore:isBlinking:blinkScore:faceOrientationIndex:faceJunkinessIndex:")}];
                v23 = v135;
                v11 = v138;
                v22 = v144;
              }

              ++v24;
            }

            while (v22 != v24);
            v22 = OUTLINED_FUNCTION_59_5(v34, v35, v36, v37, v38, v39, v40, v41, v105, v108, v111, v114, v117, v119, v122, key, v127, target, v132, v135, v138, v140, v144, v147, v150, v154, v158, v162, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v228, v230, v232, v234, v236, v238, v240, v242);
          }

          while (v22);
        }

        v66 = [objc_msgSend(v132 "inferences")];
        v67 = objc_alloc(MEMORY[0x1E695DF70]);
        [v66 count];
        v68 = [OUTLINED_FUNCTION_17() initWithCapacity:?];
        v76 = OUTLINED_FUNCTION_60_5(v68, v69, v70, v71, v72, v73, v74, v75, v105, v108, v111, v114, v117, v119, v122, key, v127, target, v132, v135, v138, v140, v143, v147, v150, v154, v158, v162, v166, v169, v172, v175, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223);
        if (v76)
        {
          v77 = v76;
          v78 = MEMORY[0];
          do
          {
            for (i = 0; i != v77; ++i)
            {
              if (MEMORY[0] != v78)
              {
                objc_enumerationMutation(v66);
              }

              v80 = *(8 * i);
              [v80 boundingBox];
              OUTLINED_FUNCTION_25_7(v81, v82, v83, v84);
              OUTLINED_FUNCTION_2_3();
              OUTLINED_FUNCTION_3_32();
              v85 = CGRectContainsRect(v250, v253);
              if (v85)
              {
                v93 = OUTLINED_FUNCTION_3();
                v251.origin.x = FigCaptureTransformRectToCoordinateSpaceOfRect(v93, v94, v95, v96, *&v167, *&v170, *&v173);
                v243 = v245;
                CGRectApplyAffineTransform(v251, &v243);
                OUTLINED_FUNCTION_2_3();
                v97 = objc_alloc(getVNRecognizedObjectObservationClass());
                [v80 requestRevision];
                [v80 confidence];
                [v80 labels];
                v98 = OUTLINED_FUNCTION_3();
                v100 = [v99 initWithRequestRevision:v98 boundingBox:? confidence:? labels:?];
                [v68 addObject:v100];
              }
            }

            v77 = OUTLINED_FUNCTION_60_5(v85, v86, v87, v88, v89, v90, v91, v92, v106, v109, v112, v115, v118, v120, v123, keya, v128, targeta, v133, v136, v139, v141, v145, v148, v152, v156, v160, v164, v167, v170, v173, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224);
          }

          while (v77);
        }

        v101 = [objc_msgSend(v133 "inferences")];
        [v101 setObject:v141 forKeyedSubscript:@"VisionFaceDetectionObservations"];
        [v101 setObject:v141 forKeyedSubscript:v120];
        [v101 setObject:v68 forKeyedSubscript:0x1F219E610];
        v102 = [[BWInferenceResult alloc] initWithResult:v133 replacementInferences:v101 replacementPreventionReason:0];
        v103 = [v123 mutableCopy];
        [v103 setObject:v102 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v128))}];
        CMSetAttachment(targeta, keya, v103, 1u);
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

  OUTLINED_FUNCTION_5_5();
}

void BWCreateSushiRawDNGDictionary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 a29, void *a30, void *a31, int a32)
{
  OUTLINED_FUNCTION_6_4();
  v350 = v32;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v385 = v39;
  v387 = v40;
  LODWORD(v375) = v41;
  v43 = v42;
  v45 = v44;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  fig_note_initialize_category_with_default_work_cf();
  v46 = v36;
  OUTLINED_FUNCTION_10_4(&dword_1EB58DFC0, @"bwstillimagemetadatautilities_trace", @"com.apple.coremedia", "", "com.apple.cameracapture");
  if (!v36)
  {
    goto LABEL_82;
  }

  if (v38 == 0.0)
  {
    goto LABEL_82;
  }

  v47 = v387;
  if (!v387)
  {
    goto LABEL_82;
  }

  v48 = v385;
  if (!HIDWORD(v385) || !v385 || !HIDWORD(v43) || !v43 || !a30)
  {
    goto LABEL_82;
  }

  if ((FigCapturePixelFormatIsBayerRaw(v45) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_44();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v335, v337, v338, v339, v340, v341, v342, v343);
    FigCaptureGetFrameworkRadarComponent();
    LODWORD(recta.origin.x) = 0;
    OUTLINED_FUNCTION_20_7();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v313 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
    if (OUTLINED_FUNCTION_6(v313))
    {
      v408 = 136315138;
      v409 = "BWCreateSushiRawDNGDictionary";
      OUTLINED_FUNCTION_15_12();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v315, v316, v317, v318, v319);
    LOWORD(v416) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v320, v321, v322, v323, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v324 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v324, v325, v326, v327, v328, 634, v329, v330, v336);
    free(&v416);
    goto LABEL_82;
  }

  v49 = [v387 objectForKeyedSubscript:*off_1E798A540];
  if (v49)
  {
    [v49 floatValue];
    if (v50 != 1.0)
    {
      OUTLINED_FUNCTION_20_7();
      v314 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v314, type);
      OUTLINED_FUNCTION_56_5();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_82;
    }
  }

  v51 = [objc_msgSend(a30 objectForKeyedSubscript:{@"SushiRawLensShadingCorrectionType", "intValue"}];
  HIDWORD(v394) = v51;
  if ((a29 & 1) != 0 || v51 == 1)
  {
    [objc_msgSend(a31 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
    if (v53 < 0.0)
    {
      goto LABEL_135;
    }

    v54 = a32;
    if (!a32)
    {
      v54 = 1.0;
    }

    v52 = v54 * v53;
    v55 = simu_oisAdjustedOpticalCenter(v387, v54 * v53);
    v377 = v56;
    v378 = v55;
  }

  else
  {
    v377 = *(MEMORY[0x1E695EFF8] + 8);
    v378 = *MEMORY[0x1E695EFF8];
    v52 = 0.0;
  }

  width = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  height = *(MEMORY[0x1E695F050] + 24);
  v371 = *(MEMORY[0x1E695F050] + 16);
  FinalCropRectFromSource = FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(v387);
  v61 = v60;
  v63 = v62;
  v65 = v64;
  *&v66 = FigCaptureAspectRatioForDimensions(v43);
  v67 = [v387 objectForKeyedSubscript:*off_1E798A6F0];
  v366 = v385;
  v369 = v385 >> 32;
  v374 = v38;
  v379 = a31;
  HIDWORD(v373) = a29;
  *&v373 = v52;
  *&v360 = y;
  *&v363 = width;
  *&v358 = height;
  v382 = *&v66;
  if (a29 && !v67)
  {
    rect2 = *&v65;
    FigCaptureUnityRect();
    OUTLINED_FUNCTION_48_6();
    FigCaptureDenormalizeCropRect(v385, v68, v69, v70, v71);
    if (v375)
    {
      v76 = BWAspectRatioValueFromAspectRatio(v375);
      v77 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions(v385, v76);
      FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v77, v385);
      OUTLINED_FUNCTION_62_3();
      *&v348 = v79;
      *&v349 = v78;
      v392 = v80;
      *&v347 = v81;
      FigCaptureNormalizeCropRect(v385, v78, v79, v80, v81);
      OUTLINED_FUNCTION_48_6();
    }

    else
    {
      v347 = v75;
      v348 = v73;
      v392 = v74;
      v349 = v72;
    }

    v125 = FigCaptureUnityRect();
    FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v125, v126, v127, v128, height, *&v66, v65, width, a31, v387, v385);
    v353 = *&v130;
    v354 = *&v129;
    v351 = *&v132;
    v352 = *&v131;
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v129, v130, v131, v132, v385, SHIDWORD(v385));
    v133 = *&v66;
    v138 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(v134, v135, v136, v137, v133);
    FigCaptureMetadataUtilitiesNormalizeCropRect(v138, v139, v140, v141, v385, SHIDWORD(v385));
    v345 = *&v143;
    v346 = *&v142;
    v343 = *&v145;
    v344 = *&v144;
    v147 = FigCaptureMetadataUtilitiesScaleRect(v142, v143, v144, v145, 1.11, v146);
    v149 = v148;
    v151 = v150;
    v153 = v152;
    FigCaptureUnityRect();
    OUTLINED_FUNCTION_8_3();
    v426.origin.x = v147;
    v426.origin.y = v149;
    v426.size.width = v151;
    v426.size.height = v153;
    v427 = CGRectIntersection(v426, v431);
    x = v427.origin.x;
    y = v427.origin.y;
    width = v427.size.width;
    height = v427.size.height;
    v432.origin.x = FinalCropRectFromSource;
    v432.origin.y = v61;
    v432.size.width = v63;
    v432.size.height = v65;
    v154 = CGRectContainsRect(v427, v432);
    if (dword_1EB58DFC0)
    {
      v356 = v46;
      LODWORD(recta.origin.x) = 0;
      OUTLINED_FUNCTION_20_7();
      v160 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v160, type);
      OUTLINED_FUNCTION_56_5();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v48 = v385;
      v47 = v387;
    }

    if (v154)
    {
      v61 = *&v348;
      v65 = *&v349;
      *&v66 = v392;
      v63 = *&v347;
      if (!v375)
      {
        FigCaptureMakeCenteredRectWithDimensionsInsideDimensions(v43, v48);
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_18_12();
      }

      v155.n128_u64[0] = v354;
      v157.n128_u64[0] = v351;
      v156.n128_u64[0] = v352;
      v158.n128_f64[0] = v382;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v385, v369, v155, *&v353, v156, v157, v158, v159);
      OUTLINED_FUNCTION_52_7();
      goto LABEL_53;
    }

LABEL_135:
    OUTLINED_FUNCTION_0_44();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_82;
  }

  OUTLINED_FUNCTION_34_7();
  if (!FigCaptureIsUnityRect(v82, v83, v84, v85) && (v34 & 1) == 0)
  {
    goto LABEL_135;
  }

  x = FinalCropRectFromSource;
  OUTLINED_FUNCTION_34_7();
  if (FigCaptureIsUnityRect(v87, v88, v89, v90))
  {
    v63 = height;
    x = *&v371;
    v66 = v371;
    v61 = y;
    v65 = width;
    if (FigCapturePlatformIdentifier() >= 12)
    {
      v91.n128_f64[0] = FigCaptureMetadataUtilitiesGetSensorReadoutRect(v387);
      v99 = llround(v94.n128_f64[0]);
      v100 = v385 <= llround(v93.n128_f64[0]) && SHIDWORD(v385) <= v99;
      v63 = height;
      v61 = y;
      v66 = v371;
      v65 = width;
      if (!v100)
      {
        OUTLINED_FUNCTION_58_7(v91, v92, v93, v94, v95, v96, v97, v98, *&v335, *&v337, *&v338, *&v339, *&v340, *&v341, *&v342, *&v343, *&v344, *&v345, *&v346, *&v347, *&v348, *&v349, *&v350, *&v351, *&v352, *&v353, *&v354, *&rect2, *&v356, height, y, width, COERCE_DOUBLE(v385), *&v369, *&v371, v373, v38, *&v375, *&v377, v378, *&a31, v382);
        OUTLINED_FUNCTION_62_3();
        OUTLINED_FUNCTION_18_12();
      }

      v422.origin.x = OUTLINED_FUNCTION_17_12();
      if (CGRectIsNull(v422))
      {
        OUTLINED_FUNCTION_0_44();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3(v334);
      }

      OUTLINED_FUNCTION_45_7();
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_7();
    v101.n128_u64[0] = v66;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v102, v103, v104, v105, v106, v107, v101, v108);
    OUTLINED_FUNCTION_52_7();
    if (CGRectIsNull(v423))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v331);
    }

    v109.n128_f64[0] = FigCaptureMetadataUtilitiesGetFinalCropRectForSushiRaw(v387);
    v110.n128_u64[0] = v66;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v385, v369, v109, v111, v112, v113, v110, v114);
    OUTLINED_FUNCTION_18_12();
    if (CGRectIsNull(v424))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v332);
    }
  }

  v115.n128_f64[0] = FigCaptureMetadataUtilitiesGetValidBufferRectForProcessedRaw(v387);
  v123 = llround(v118.n128_f64[0]);
  if (v385 > llround(v117.n128_f64[0]) || SHIDWORD(v385) > v123)
  {
    OUTLINED_FUNCTION_58_7(v115, v116, v117, v118, v119, v120, v121, v122, *&v335, *&v337, *&v338, *&v339, *&v340, *&v341, *&v342, *&v343, *&v344, *&v345, *&v346, *&v347, *&v348, *&v349, *&v350, *&v351, *&v352, *&v353, *&v354, *&rect2, *&v356, *&v358, *&v360, *&v363, *&v366, *&v369, *&v371, v373, v374, *&v375, *&v377, v378, *&v379, v382);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_18_12();
    if (CGRectIsNull(v425))
    {
      OUTLINED_FUNCTION_0_44();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v333);
    }

    OUTLINED_FUNCTION_45_7();
  }

LABEL_53:
  v161 = [a30 objectForKeyedSubscript:@"SushiRawNoiseProfile"];
  if (!v161)
  {
    v356 = v46;
    FigCaptureGetFrameworkRadarComponent();
    LODWORD(recta.origin.x) = 0;
    LOBYTE(type) = 0;
    v162 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v162, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_5_3();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    LOWORD(v416) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v163, v164, v165, v166, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v167 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v167, v168, v169, v170, v171, 775, v172, v173, v335);
    free(&v416);
    v161 = 0;
  }

  v428.origin.x = width;
  v428.origin.y = y;
  v428.size.width = x;
  v428.size.height = height;
  IsEmpty = CGRectIsEmpty(v428);
  v429.origin.x = OUTLINED_FUNCTION_17_12();
  v175 = CGRectIsEmpty(v429);
  v176 = v175;
  if (!IsEmpty && v175)
  {
    v218 = 0;
    goto LABEL_123;
  }

  if (!FigCaptureSushiRawDNGDictionaryCreatedInGraph())
  {
    v268 = [a30 objectForKeyedSubscript:@"CroppedSushiRawLensShadingCorrectionCoefficients"];
    if (!v268)
    {
      FigCaptureGetFrameworkRadarComponent();
      LODWORD(recta.origin.x) = 0;
      OUTLINED_FUNCTION_20_7();
      v269 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v269, type);
      v270 = *off_1E798B540;
      v48 = v385;
      v189 = v379;
      OUTLINED_FUNCTION_8_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v299 = [v387 objectForKeyedSubscript:v270];
      v301 = BWPortTypeToDisplayString(v299, v300);
      v416 = 138412290;
      v417 = v301;
      OUTLINED_FUNCTION_6_0(v301, v302, v303, v304, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_13_18();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v305, v306, v307, v308, v309, 972, v310, v311, &v416);
      free(v270);
      v218 = 0;
      goto LABEL_74;
    }

    v218 = 0;
    v46 = v268;
LABEL_123:
    v189 = v379;
    goto LABEL_74;
  }

  v383 = y;
  v395 = *&x;
  v389 = *&height;
  v177 = [v47 objectForKeyedSubscript:*off_1E798B5A8];
  v178 = [v47 objectForKeyedSubscript:*off_1E798B5A0];
  v179 = *(MEMORY[0x1E695F050] + 16);
  recta.origin = *MEMORY[0x1E695F050];
  recta.size = v179;
  height = v61;
  x = v61;
  v393 = v66;
  v180 = *&v66;
  v181 = v63;
  if (v176)
  {
    x = *&v360;
    v65 = *&v363;
    v180 = *&v371;
    v181 = *&v358;
    if (CGRectMakeWithDictionaryRepresentation([v47 objectForKeyedSubscript:*off_1E798B790], &recta))
    {
      v65 = recta.origin.x;
      x = recta.origin.y;
      v180 = recta.size.width;
      v181 = recta.size.height;
    }
  }

  v430.origin.x = v65;
  v430.origin.y = x;
  v430.size.width = v180;
  v430.size.height = v181;
  if (!CGRectIsNull(v430))
  {
    if (HIDWORD(v394))
    {
      if ((HIDWORD(v394) - 1) >= 2)
      {
        v271 = OUTLINED_FUNCTION_36_9(v379, v182, v183, v184, v185, v186, v187, v188, v335, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, rect2, v356, v358, v360, v363, v366, v369, v371, *&v373, *&v374, v375, v377, *&v378, v379, *&y, v385, v387, v389, v393, v394, v395, v398, SBYTE2(v398), SHIBYTE(v398), type);
        if (os_log_type_enabled(v271, v400))
        {
          v272 = *typeb;
        }

        else
        {
          v272 = *typeb & 0xFFFFFFFE;
        }

        if (v272)
        {
          v408 = 136315394;
          v409 = "BWCreateSushiRawDNGDictionary";
          v410 = 1026;
          v273 = HIDWORD(v394);
          LODWORD(v411) = HIDWORD(v394);
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        else
        {
          v273 = HIDWORD(v394);
        }

        OUTLINED_FUNCTION_33_10();
        x = v397;
        OUTLINED_FUNCTION_8_1();
        v274 = fig_log_call_emit_and_clean_up_after_send_and_compose();
        v416 = 67240192;
        LODWORD(v417) = v273;
        OUTLINED_FUNCTION_6_0(v274, v275, v276, v277, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v278, v279, v280, v281, v282, 960, v283, v284, &v416);
        free(&v416);
        v218 = 0;
        v189 = v381;
        height = v391;
        goto LABEL_73;
      }

      v227 = [v379 objectForKeyedSubscript:*off_1E7989EE0];
      v228 = [v227 bytes];
      v236 = v228;
      if (!v227 || *v228 != 2)
      {
        v266 = OUTLINED_FUNCTION_36_9(v228, v229, v230, v231, v232, v233, v234, v235, v335, v337, v338, v339, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351, v352, v353, v354, rect2, v356, v358, v360, v363, v366, v369, v371, *&v373, *&v374, v375, v377, *&v378, v379, *&y, v385, v387, v389, v393, v394, v395, v398, SBYTE2(v398), SHIBYTE(v398), type);
        if (os_log_type_enabled(v266, v399))
        {
          v267 = *typea;
        }

        else
        {
          v267 = *typea & 0xFFFFFFFE;
        }

        if (v267)
        {
          [v227 length];
          OUTLINED_FUNCTION_33_10();
          x = v396;
          v408 = 136315907;
          v409 = "BWCreateSushiRawDNGDictionary";
          v410 = 2049;
          v411 = v227;
          v412 = 2050;
          v413 = v285;
          v414 = 1026;
          v415 = v286;
          OUTLINED_FUNCTION_15_12();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
          height = v390;
        }

        else
        {
          OUTLINED_FUNCTION_44_6();
        }

        y = v384;
        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v287 = [v227 length];
        v48 = v386;
        v189 = v380;
        if (v236)
        {
          v291 = *v236;
        }

        else
        {
          v291 = 0;
        }

        v416 = 134284033;
        v417 = v227;
        v418 = 2050;
        v419 = v287;
        v420 = 1026;
        v421 = v291;
        OUTLINED_FUNCTION_6_0(v287, v288, v289, v290, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v292, v293, v294, v295, v296, 954, v297, v298, &v416);
        free(v236);
        v218 = 0;
        goto LABEL_74;
      }

      v237 = (v65 + (2 * *(v228 + 8)));
      v238 = (x + (2 * *(v228 + 12)));
      v357 = v46;
      if (*(v228 + 4))
      {
        v237 = (v237 - v378);
        v238 = (v238 - *&v377);
      }

      v364 = *(v228 + 32);
      v361 = *(v228 + 36);
      v359 = *(v228 + 40);
      v367 = *(v228 + 44);
      v239 = 2 * *(v228 + 16);
      v240 = 2 * *(v228 + 20);
      v241 = v237 / v239;
      x = v240;
      v242 = v240;
      v243 = v238 / v240;
      v244 = *(v228 + 28);
      if (*(v228 + 24) - 1 >= ((v180 + v237 + v239 + -1.0) / v239))
      {
        v245 = ((v180 + v237 + v239 + -1.0) / v239);
      }

      else
      {
        v245 = *(v228 + 24) - 1;
      }

      if (v244 - 1 >= ((v181 + v238 + v240 + -1.0) / v240))
      {
        v246 = ((v181 + v238 + v240 + -1.0) / v240);
      }

      else
      {
        v246 = v244 - 1;
      }

      v372 = v245 - v241 + 1;
      v370 = v246 - v243 + 1;
      v376 = [MEMORY[0x1E695DF88] dataWithLength:12 * v370 * v372];
      v247 = [v376 mutableBytes];
      if (v246 >= v243)
      {
        v248 = 0;
        v249 = &v236[v361 + 12];
        v250 = v243;
        v251 = &v236[v367 + 12];
        do
        {
          if (v245 >= v241)
          {
            v252 = v236[6] * v250;
            v253 = v237 / v239;
            do
            {
              v254 = v252 + v253;
              v255 = *&v236[v364 + 12 + v252 + v253];
              v256 = *(v249 + 4 * (v252 + v253));
              v257 = *&v236[v359 + 12 + v252 + v253];
              if (v257 <= *(v251 + 4 * (v252 + v253)))
              {
                v257 = *(v251 + 4 * v254);
              }

              if (v256 <= v257)
              {
                if (v255 <= v257)
                {
                  v255 = v257;
                }
              }

              else if (v255 <= v256)
              {
                v255 = *(v249 + 4 * v254);
              }

              *(v247 + 4 * v248) = v255;
              *(v247 + 4 * (v248 + 1)) = v255;
              v258 = v248 + 2;
              v248 += 3;
              *(v247 + 4 * v258) = v255;
              ++v253;
            }

            while (v253 <= v245);
          }

          ++v250;
        }

        while (v250 <= v246);
      }

      v259 = (v241 * v239 - v237) / v180;
      v368 = v259;
      v260 = (v243 * v242 - v238) / v181;
      v365 = v260;
      v261 = v239 / v180;
      v362 = v261;
      v405[0] = &unk_1F2243A20;
      v404[0] = @"top";
      v404[1] = @"bottom";
      v405[1] = [MEMORY[0x1E696AD98] numberWithDouble:v181];
      v405[2] = &unk_1F2243A20;
      v404[2] = @"left";
      v404[3] = @"right";
      v405[3] = [MEMORY[0x1E696AD98] numberWithDouble:v180];
      v405[4] = &unk_1F2243A20;
      v404[4] = @"plane";
      v404[5] = @"planes";
      v405[5] = &unk_1F2243A38;
      v405[6] = &unk_1F2243A50;
      v404[6] = @"rowPitch";
      v404[7] = @"colPitch";
      v405[7] = &unk_1F2243A50;
      v404[8] = @"mapsPointsV";
      v405[8] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v370];
      v404[9] = @"mapsPointsH";
      v405[9] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v372];
      v404[10] = @"mapsSpacingV";
      *&v262 = x / v181;
      v405[10] = [MEMORY[0x1E696AD98] numberWithFloat:v262];
      v404[11] = @"mapsSpacingH";
      *&v263 = v362;
      v405[11] = [MEMORY[0x1E696AD98] numberWithFloat:v263];
      v404[12] = @"mapOriginV";
      *&v264 = v365;
      v405[12] = [MEMORY[0x1E696AD98] numberWithFloat:v264];
      v404[13] = @"mapOriginH";
      *&v265 = v368;
      v405[13] = [MEMORY[0x1E696AD98] numberWithFloat:v265];
      v405[14] = &unk_1F2243A38;
      v404[14] = @"mapPlanes";
      v404[15] = @"gainData";
      v405[15] = v376;
      v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v405 forKeys:v404 count:16];
      v48 = v385;
      v46 = v357;
      v189 = v379;
    }

    else
    {
      v189 = v379;
      if ([v46 count] != 7 || !v177 || !v178)
      {
        OUTLINED_FUNCTION_0_44();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_82;
      }

      if (v180 != *MEMORY[0x1E695F060] || v181 != *(MEMORY[0x1E695F060] + 8))
      {
        *&x = sqrt(v181 * v181 + v180 * v180) * 0.5;
        [v177 floatValue];
        v192 = v191;
        [v177 floatValue];
        v194 = v193;
        [v178 floatValue];
        v196 = v195;
        [v178 floatValue];
        v198 = *&x / (sqrtf((v196 * v197) + (v192 * v194)) * 0.5);
        v199 = MEMORY[0x1E696AD98];
        [objc_msgSend(OUTLINED_FUNCTION_38_7() "objectAtIndexedSubscript:"floatValue"")];
        *&v201 = v200 * (v198 * v198);
        v406[0] = [v199 numberWithFloat:v201];
        v202 = MEMORY[0x1E696AD98];
        v203 = powf(v198, 4.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{1), "floatValue"}];
        *&v205 = v203 * v204;
        v406[1] = [v202 numberWithFloat:v205];
        v206 = MEMORY[0x1E696AD98];
        v207 = powf(v198, 6.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{2), "floatValue"}];
        *&v209 = v207 * v208;
        v406[2] = [v206 numberWithFloat:v209];
        v210 = MEMORY[0x1E696AD98];
        v211 = powf(v198, 8.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{3), "floatValue"}];
        *&v213 = v211 * v212;
        v406[3] = [v210 numberWithFloat:v213];
        v214 = MEMORY[0x1E696AD98];
        v215 = powf(v198, 10.0);
        [objc_msgSend(v46 objectAtIndexedSubscript:{4), "floatValue"}];
        *&v217 = v215 * v216;
        v406[4] = [v214 numberWithFloat:v217];
        v406[5] = [v46 objectAtIndexedSubscript:5];
        v406[6] = [v46 objectAtIndexedSubscript:6];
        v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v406 count:7];
      }

      v218 = 0;
    }

    OUTLINED_FUNCTION_44_6();
LABEL_73:
    y = v383;
LABEL_74:
    if (HIDWORD(v373))
    {
      v219 = [v189 objectForKeyedSubscript:*off_1E7989EC0];
    }

    else
    {
      v219 = 0;
    }

    if (HIDWORD(v394))
    {
      v220 = 0;
    }

    else
    {
      v220 = v46;
    }

    [v189 objectForKeyedSubscript:*off_1E7989E70];
    v221 = OUTLINED_FUNCTION_17_12();
    if (!simu_createDNGDictionary(v222, v223, *&v374, v220, v161, v48, v219, v218, v221, v224, v225, v226, width, y, x, height, *&v373, v378, *&v377))
    {
      OUTLINED_FUNCTION_0_44();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }
  }

LABEL_82:
  OUTLINED_FUNCTION_5_5();
}

uint64_t simu_createDNGDictionary(int a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double d4_0, CGFloat d5_0, CGFloat d6_0, double a16, float a13, double a14, double a15)
{
  if (!a2)
  {
    FigCaptureGetFrameworkRadarComponent();
    v95 = OUTLINED_FUNCTION_11_22();
    v96 = OUTLINED_FUNCTION_24_8(v95);
    if (OUTLINED_FUNCTION_6(v96))
    {
      v155 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v105, v106, v107, v108, v109);
    LOWORD(v156[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v110, v111, v112, v113, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v114 = OUTLINED_FUNCTION_6_1();
    v121 = 1288;
    goto LABEL_96;
  }

  if (qword_1ED844ED0 != -1)
  {
    v97 = a16;
    v98 = d4_0;
    dispatch_once(&qword_1ED844ED0, &__block_literal_global_48);
    d4_0 = v98;
    a16 = v97;
  }

  if (!_MergedGlobals_3)
  {
    FigCaptureGetFrameworkRadarComponent();
    v99 = OUTLINED_FUNCTION_11_22();
    v100 = OUTLINED_FUNCTION_24_8(v99);
    if (OUTLINED_FUNCTION_6(v100))
    {
      v155 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v122, v123, v124, v125, v126);
    LOWORD(v156[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v127, v128, v129, v130, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v114 = OUTLINED_FUNCTION_6_1();
    v121 = 1295;
    goto LABEL_96;
  }

  v150 = d4_0;
  v151 = a16;
  v29 = [a2 objectForKeyedSubscript:*off_1E798B540];
  if (!v29)
  {
    FigCaptureGetFrameworkRadarComponent();
    v101 = OUTLINED_FUNCTION_11_22();
    v102 = OUTLINED_FUNCTION_24_8(v101);
    if (OUTLINED_FUNCTION_6(v102))
    {
      v155 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v131, v132, v133, v134, v135);
    LOWORD(v156[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v136, v137, v138, v139, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v114 = OUTLINED_FUNCTION_6_1();
    v121 = 1301;
    goto LABEL_96;
  }

  v30 = v29;
  if (objc_msgSend_isEqualToString_(v29))
  {
    v31 = @"front camera";
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v30))
  {
    v31 = @"front ultra wide camera";
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v30))
  {
    v31 = @"back camera";
    goto LABEL_16;
  }

  if (objc_msgSend_isEqualToString_(v30))
  {
    v31 = @"back telephoto camera";
    goto LABEL_16;
  }

  if ((objc_msgSend_isEqualToString_(v30) & 1) == 0)
  {
    FigCaptureGetFrameworkRadarComponent();
    v103 = OUTLINED_FUNCTION_11_22();
    v104 = OUTLINED_FUNCTION_24_8(v103);
    if (OUTLINED_FUNCTION_6(v104))
    {
      v155 = 136315138;
      OUTLINED_FUNCTION_12_24();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_53_5();
    }

    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v140, v141, v142, v143, v144);
    LOWORD(v156[0]) = 0;
    OUTLINED_FUNCTION_16_14();
    OUTLINED_FUNCTION_6_0(v145, v146, v147, v148, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v114 = OUTLINED_FUNCTION_6_1();
    v121 = 1319;
LABEL_96:
    FigCapturePleaseFileRadar(v114, v115, v116, v117, v118, v121, v119, v120, v149);
    free(v156);
    v32 = 0;
    goto LABEL_97;
  }

  v31 = @"back ultra wide camera";
LABEL_16:
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", _MergedGlobals_3, v31];
  [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x1E696D858]];
  v34 = *MEMORY[0x1E696D878];
  if (a1 == 1)
  {
    [v32 setObject:&unk_1F2243A68 forKeyedSubscript:v34];
    v35 = [a2 objectForKeyedSubscript:*off_1E798B700];
    if (!v35)
    {
      goto LABEL_97;
    }

    v36 = v35;
    v37 = MEMORY[0x1E696D7B0];
  }

  else
  {
    [v32 setObject:&unk_1F2243A80 forKeyedSubscript:v34];
    [v32 setObject:&unk_1F2243A98 forKeyedSubscript:*MEMORY[0x1E696D7B0]];
    v36 = &unk_1F224A800;
    v37 = MEMORY[0x1E696D7A8];
  }

  [v32 setObject:v36 forKeyedSubscript:*v37];
  v38 = [a2 objectForKeyedSubscript:*off_1E798B0D8];
  if (!v38)
  {
    v38 = [a2 objectForKeyedSubscript:*off_1E798B120];
  }

  v39 = [a2 objectForKeyedSubscript:*off_1E798B0D0];
  if (!v39)
  {
    v39 = [a2 objectForKeyedSubscript:*off_1E798B0F8];
  }

  v40 = [a2 objectForKeyedSubscript:*off_1E798B0C8];
  if (!v40)
  {
    v40 = [a2 objectForKeyedSubscript:*off_1E798B0C0];
  }

  v41 = [v38 intValue];
  v42 = [v39 intValue];
  v43 = [v40 intValue];
  if (v41 < 1 || v42 < 1 || v43 < 1)
  {
    goto LABEL_97;
  }

  if (v42 >= v43)
  {
    v47 = v43;
  }

  else
  {
    v47 = v42;
  }

  if (v41 < v47)
  {
    v47 = v41;
  }

  *&v44 = v47 / v41;
  v48 = v47 / v42;
  v49 = v47 / v43;
  v154[0] = [MEMORY[0x1E696AD98] numberWithFloat:v44];
  *&v50 = v48;
  v154[1] = [MEMORY[0x1E696AD98] numberWithFloat:v50];
  *&v51 = v49;
  v154[2] = [MEMORY[0x1E696AD98] numberWithFloat:v51];
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:3];
  [v32 setObject:v52 forKeyedSubscript:*MEMORY[0x1E696D778]];
  if ([a3 count] != 2)
  {
    goto LABEL_97;
  }

  v53 = [OUTLINED_FUNCTION_38_7() objectAtIndexedSubscript:?];
  if (![v53 count])
  {
    goto LABEL_97;
  }

  [v32 setObject:OUTLINED_FUNCTION_42_7() forKeyedSubscript:*MEMORY[0x1E696D7B8]];
  if ([v53 count] >= 2)
  {
    [v32 setObject:OUTLINED_FUNCTION_41_7() forKeyedSubscript:*MEMORY[0x1E696D7C0]];
  }

  v54 = [a3 objectAtIndexedSubscript:1];
  if (![v54 count])
  {
    goto LABEL_97;
  }

  [v32 setObject:OUTLINED_FUNCTION_42_7() forKeyedSubscript:*MEMORY[0x1E696D7E0]];
  if ([v54 count] >= 2)
  {
    [v32 setObject:OUTLINED_FUNCTION_41_7() forKeyedSubscript:*MEMORY[0x1E696D7E8]];
  }

  v55 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B7B8), "intValue"}];
  v57 = 0.0;
  if (v55 >= 1)
  {
    v58 = v55;
    [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B7C0), "floatValue"}];
    if (*&v56 > 0.0)
    {
      v57 = log2f(vcvts_n_f32_u32(v58, 8uLL) / *&v56) + 0.0;
    }
  }

  if (a1 != 1)
  {
    v59 = [a2 objectForKeyedSubscript:*off_1E798A738];
    if (!v59)
    {
      goto LABEL_52;
    }

    [v59 floatValue];
    v57 = log2f(1.0 / v60);
  }

  *&v56 = v57;
  v61 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  [v32 setObject:v61 forKeyedSubscript:*MEMORY[0x1E696D798]];
LABEL_52:
  v157.origin.x = OUTLINED_FUNCTION_2_41();
  if (!CGRectIsEmpty(v157))
  {
    v62 = OUTLINED_FUNCTION_2_41();
    BWSetRawDenormalizedActiveRectToDNGDictionary(v32, v62, v63, v64, v65);
    [v32 setObject:&unk_1F2248760 forKeyedSubscript:*MEMORY[0x1E696D7F8]];
    v153[0] = [MEMORY[0x1E696AD98] numberWithInt:a11];
    v153[1] = [MEMORY[0x1E696AD98] numberWithInt:a12];
    v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
    [v32 setObject:v66 forKeyedSubscript:*MEMORY[0x1E696D800]];
  }

  if (a4 && [a4 count] == 7)
  {
    [v32 setObject:a4 forKeyedSubscript:*MEMORY[0x1E696D810]];
  }

  if (a8)
  {
    [v32 setObject:a8 forKeyedSubscript:@"GainMap"];
  }

  if (a1 == 1)
  {
    if (!a5)
    {
      goto LABEL_77;
    }

    v67 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B3B0), "shortValue"}];
    if (v67)
    {
      v68 = v67;
      v69 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_ISOArray"];
      v70 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_SignalComponentArray"];
      v71 = [a5 objectForKeyedSubscript:@"SushiRawNoiseProfile_DarkComponentArray"];
      if (v69)
      {
        if (v70)
        {
          v72 = v71;
          if (v71)
          {
            v73 = [v69 count];
            if (v73)
            {
              v74 = v73;
              if (v73 == [v70 count] && v74 == objc_msgSend(v72, "count"))
              {
                v75 = [objc_msgSend(v69 objectAtIndexedSubscript:{0), "shortValue"}];
                v76 = 0;
                if (v74 == 1)
                {
LABEL_75:
                  [objc_msgSend(v70 objectAtIndexedSubscript:{v76), "doubleValue"}];
                  v81 = v80;
                  [objc_msgSend(v72 objectAtIndexedSubscript:{v76), "doubleValue"}];
                  v83 = v82;
                  v156[0] = [MEMORY[0x1E696AD98] numberWithDouble:v81];
                  v156[1] = [MEMORY[0x1E696AD98] numberWithDouble:v83];
                  v84 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:2];
LABEL_76:
                  [v32 setObject:v84 forKeyedSubscript:*MEMORY[0x1E696D820]];
LABEL_77:
                  if (a7)
                  {
                    v88 = OUTLINED_FUNCTION_2_41();
                    [v32 setObject:simu_createWarpRectilinearDictionary(v89 forKeyedSubscript:{v90, v91, v88, v92, v93, v94, v150, d5_0, d6_0, v151, a13, a14, a15), @"WarpRectilinear2"}];
                  }

                  goto LABEL_79;
                }

                v77 = v75;
                v78 = 1;
                while (1)
                {
                  v79 = [objc_msgSend(v69 objectAtIndexedSubscript:{v78), "shortValue"}];
                  if (v79 <= v77)
                  {
                    break;
                  }

                  if ((v79 + v77) >> 1 > v68)
                  {
                    goto LABEL_74;
                  }

                  ++v78;
                  v77 = v79;
                  if (v74 == v78)
                  {
                    v78 = v74;
LABEL_74:
                    v76 = v78 - 1;
                    goto LABEL_75;
                  }
                }
              }
            }
          }
        }
      }
    }

    v84 = 0;
    goto LABEL_76;
  }

  [v32 setObject:&unk_1F224A810 forKeyedSubscript:*MEMORY[0x1E696D828]];
  [v32 setObject:&unk_1F2248778 forKeyedSubscript:*MEMORY[0x1E696D820]];
  simu_addToneCurvesToDNGDictionary();
  if ((v87 & 1) == 0)
  {
LABEL_97:
    v85 = 0;
    goto LABEL_80;
  }

LABEL_79:
  v85 = [v32 copy];
LABEL_80:

  return v85;
}

void *BWCreateDemosaicedRawDNGDictionary(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, float a6)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4(v12, v13, v14, v15, v16);
  result = 0;
  if (!HIDWORD(a1) || !a1 || a6 == 0.0 || !a3 || !a4)
  {
    return result;
  }

  if (!FigCapturePixelFormatIsDemosaicedRaw(a2))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v53, v55, v58, v61, v62, v63, v64, v65);
    FigCaptureGetFrameworkRadarComponent();
    v68[0] = 0;
    v67 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_17_8(v36, v37, v38, v39, v40);
    v41 = BWStringFromCVPixelFormatType(a2);
    LODWORD(recta.origin.x) = 138412290;
    *(&recta.origin.x + 4) = v41;
    OUTLINED_FUNCTION_6_0(v41, v42, v43, v44, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_13_18();
    v45 = OUTLINED_FUNCTION_6_1();
    FigCapturePleaseFileRadar(v45, v46, v47, v48, v49, 1029, v50, v51, &recta);
    free(&recta);
    return 0;
  }

  v18 = [a3 objectForKeyedSubscript:*off_1E798A5C8];
  if (v18)
  {
    v19 = *(MEMORY[0x1E695F058] + 16);
    recta.origin = *MEMORY[0x1E695F058];
    recta.size = v19;
    if (CGRectMakeWithDictionaryRepresentation(v18, &recta))
    {
      v23.n128_f64[0] = a6;
      v20.n128_u64[0] = *&recta.origin.x;
      v21.n128_u64[0] = *&recta.size.width;
      v22.n128_u64[0] = *&recta.size.height;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a1, a1 >> 32, v20, recta.origin.y, v21, v22, v23, v24);
      OUTLINED_FUNCTION_2_3();
      if (CGRectIsNull(v69))
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3(v52);
      }
    }
  }

  [a5 objectForKeyedSubscript:*off_1E7989E70];
  v56 = *MEMORY[0x1E695EFF8];
  v59 = *(MEMORY[0x1E695EFF8] + 8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_32();
  result = simu_createDNGDictionary(v25, v26, a4, 0, 0, a1, 0, 0, v27, v28, v29, v30, v31, v32, v33, v34, 0.0, v56, v59);
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v57, v60, v61, v62, v63, v64, v65);
    return 0;
  }

  return result;
}

id BWCreateProResRawGDCMetadata(unint64_t a1, void *a2, void *a3, float a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_61_2(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_10_4(v18, v19, v20, v21, v22);
  if (!a3)
  {
    return 0;
  }

  v23 = [a3 objectForKeyedSubscript:*off_1E7989EC0];
  result = 0;
  if (!HIDWORD(a1) || !a1 || !a2 || !v23)
  {
    return result;
  }

  if (a4 < 0.0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  rect.size.width = a1;
  rect.size.height = SHIDWORD(a1);
  v25 = [a2 objectForKeyedSubscript:*off_1E798B7A0];
  if (v25)
  {
    CGRectMakeWithDictionaryRepresentation(v25, &rect);
  }

  v26 = [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  v27 = v26;
  if (!v26)
  {
    v27 = 1.0;
  }

  v28 = v27 * a4;
  FigCaptureUnityRect();
  OUTLINED_FUNCTION_26_7();
  FigCaptureUnityRect();
  OUTLINED_FUNCTION_8_3();
  v29 = OUTLINED_FUNCTION_49_4();
  FigCaptureMetadataUtilitiesNormalizedRectEnforcedWithinValidRegionAfterGDC(v29, v30, v31, v32, v33, v34, v35, v36, a3, a2, a1);
  OUTLINED_FUNCTION_26_7();
  FigCaptureDenormalizeCropRect(a1, v37, v38, v39, v40);
  FigCaptureAspectRatioForDimensions(a1);
  v41.n128_f64[0] = OUTLINED_FUNCTION_49_4();
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v42, v43, v41, v44, v45, v46, v47, v48);
  OUTLINED_FUNCTION_26_7();
  v49 = simu_oisAdjustedOpticalCenter(a2, v28);
  result = simu_createWarpRectilinearDictionary(a2, a1, v23, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, v4, v5, v6, v7, v28, v49, v50);
  if (!result)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  return result;
}

id simu_createWarpRectilinearDictionary(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, float a12, double a13, double a14)
{
  if (CGRectIsNull(*&a4))
  {
    goto LABEL_17;
  }

  v63.origin.x = a8;
  v63.origin.y = a9;
  v63.size.width = a10;
  v63.size.height = a11;
  if (CGRectIsNull(v63))
  {
    goto LABEL_17;
  }

  v22 = [a3 objectForKeyedSubscript:*off_1E798ADC0];
  if (!v22)
  {
    return v22;
  }

  v23 = v22;
  if ([v22 length] != 64)
  {
    goto LABEL_17;
  }

  v24 = [v23 bytes];
  v22 = [a3 objectForKeyedSubscript:*off_1E798ADC8];
  if (!v22)
  {
    return v22;
  }

  v25 = v22;
  if ([v22 length] != 64)
  {
LABEL_17:
    v22 = 0;
    return v22;
  }

  v26 = [v25 bytes];
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B260), "floatValue"}];
  v28 = 0;
  v29 = (a13 + (a2 / 2)) / a2;
  v30 = (a14 + (SHIDWORD(a2) / 2)) / SHIDWORD(a2);
  v31 = 1.0 - v29;
  if (v29 > 1.0 - v29)
  {
    v31 = (a13 + (a2 / 2)) / a2;
  }

  v32 = 1.0 - v30;
  if (v30 > 1.0 - v30)
  {
    v32 = (a14 + (SHIDWORD(a2) / 2)) / SHIDWORD(a2);
  }

  v33 = sqrt(a11 * a11 * (v32 * v32) + v31 * v31 * (a10 * a10));
  v34 = (v24 + 32);
  v35 = (v26 + 32);
  v36 = ((a12 / 1000.0) * v33);
  v53 = vdupq_lane_s32(v27, 0);
  v37 = xmmword_1ACF06180;
  do
  {
    v38 = *v34++;
    v39 = v38;
    v40 = *v35++;
    v41 = vmlaq_f32(v39, v53, v40);
    v58 = vcvt_hight_f64_f32(v41);
    v59 = v37;
    v57 = vcvtq_f64_f32(*v41.f32);
    v42 = vaddq_s32(v37, v37);
    v43.i64[0] = v42.u32[2];
    v43.i64[1] = v42.u32[3];
    __y = vcvtq_f64_u64(v43);
    v43.i64[0] = v42.u32[0];
    v43.i64[1] = v42.u32[1];
    v55 = vcvtq_f64_u64(v43);
    v56 = pow(v36, v55.f64[0]);
    v55.f64[0] = pow(v36, v55.f64[1]);
    v54 = pow(v36, __y.f64[0]);
    v44 = pow(v36, __y.f64[1]);
    v45.f64[0] = v54;
    v45.f64[1] = v44;
    v46.f64[0] = v56;
    v46.f64[1] = v55.f64[0];
    v47 = &v62[v28];
    *v47 = vmulq_f64(v46, v57);
    v47[1] = vmulq_f64(v45, v58);
    v48.i64[0] = 0x400000004;
    v48.i64[1] = 0x400000004;
    v37 = vaddq_s32(v59, v48);
    v28 += 4;
  }

  while (v28 != 8);
  v49 = 0;
  v62[0] = 100.0;
  v50 = a6 / a10;
  v51 = v50 / 100.0;
  do
  {
    *&v62[v49] = vmulq_n_f64(*&v62[v49], v51);
    v49 += 2;
  }

  while (v49 != 8);
  v61[0] = [MEMORY[0x1E696AD98] numberWithDouble:v62[0]];
  v61[1] = &unk_1F224C190;
  v61[2] = [MEMORY[0x1E696AD98] numberWithDouble:v62[1]];
  v61[3] = &unk_1F224C190;
  v61[4] = [MEMORY[0x1E696AD98] numberWithDouble:v62[2]];
  v61[5] = &unk_1F224C190;
  v61[6] = [MEMORY[0x1E696AD98] numberWithDouble:v62[3]];
  v61[7] = &unk_1F224C190;
  v61[8] = [MEMORY[0x1E696AD98] numberWithDouble:v62[4]];
  v61[9] = &unk_1F224C190;
  v61[10] = [MEMORY[0x1E696AD98] numberWithDouble:v62[5]];
  v61[11] = &unk_1F224C190;
  v61[12] = [MEMORY[0x1E696AD98] numberWithDouble:v62[6]];
  v61[13] = &unk_1F224C190;
  v61[14] = [MEMORY[0x1E696AD98] numberWithDouble:v62[7]];
  v61[15] = &unk_1F224C190;
  v61[16] = &unk_1F224C190;
  v61[17] = &unk_1F224C190;
  v61[18] = &unk_1F224C1A0;
  v61[19] = [MEMORY[0x1E696AD98] numberWithDouble:v29];
  v61[20] = [MEMORY[0x1E696AD98] numberWithDouble:v30];
  v61[21] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:22];
  return v22;
}

void *BWDNGColorCalibrations(void *a1, uint64_t a2)
{
  v2 = a2;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_2_16();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_10_4(v4, v5, v6, v7, v8);
  if (!a1 || [a1 count] != 2)
  {
    return 0;
  }

  v55 = 0;
  memset(v53, 0, sizeof(v53));
  v54 = 0;
  if ([a1 count])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = [a1 objectAtIndexedSubscript:v9];
      result = [v11 objectForKeyedSubscript:@"Temperature"];
      if (!result)
      {
        break;
      }

      if (v2)
      {
        v13 = [result shortValue];
      }

      else
      {
        [result floatValue];
        v13 = CMPhotoDNGGetLightSourceTagFromTemp();
      }

      *(&v55 + v9) = v13;
      result = [v11 objectForKeyedSubscript:@"DeviceRGBToXYZMatrix"];
      if (!result)
      {
        break;
      }

      v14 = result;
      if ([result length] != 36)
      {
        return 0;
      }

      v15 = [v14 bytes];
      v17 = v15[7];
      v16 = v15[8];
      v18 = v15[4];
      v19 = v15[5];
      v20 = v15[6];
      v21.f32[0] = (v18 * v16) - (v19 * v17);
      v22 = *v15;
      v23 = v15[1];
      v25 = v15[2];
      v24 = v15[3];
      v26 = (v24 * v17) - (v18 * v20);
      *v27.i32 = ((v23 * ((v19 * v20) - (v24 * v16))) + (*v15 * v21.f32[0])) + (v25 * v26);
      if (*v27.i32 == 0.0)
      {
        return 0;
      }

      v21.f32[1] = (v25 * v17) - (v23 * v16);
      v21.f32[2] = (v23 * v19) - (v25 * v18);
      v21.f32[3] = (v19 * v20) - (v24 * v16);
      v28 = (v53 + 36 * v9);
      v29 = vdupq_lane_s32(v27, 0);
      v30.f32[0] = (v22 * v16) - (v25 * v20);
      v30.f32[1] = (v25 * v24) - (v22 * v19);
      v30.i64[1] = __PAIR64__((v23 * v20) - (v22 * v17), LODWORD(v26));
      *v28 = vdivq_f32(v21, v29);
      v28[1] = vdivq_f32(v30, v29);
      v28[2].f32[0] = ((v22 * v18) - (v23 * v24)) / *v27.i32;
      v9 = v10;
      if ([a1 count] <= v10++)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v32 = 9;
    v33 = [MEMORY[0x1E695DF70] arrayWithCapacity:9];
    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:9];
    v36 = v53;
    do
    {
      LODWORD(v35) = *v36;
      [MEMORY[0x1E696AD98] numberWithFloat:v35];
      [OUTLINED_FUNCTION_17() addObject:?];
      LODWORD(v37) = v36[9];
      [v34 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v37)}];
      ++v36;
      --v32;
    }

    while (v32);
    v51 = [MEMORY[0x1E696AD98] numberWithShort:v55];
    v38 = [MEMORY[0x1E696AD98] numberWithShort:SHIWORD(v55)];
    v46 = OUTLINED_FUNCTION_39_6(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52);
    v49 = v33;
    v50 = v34;
    v47 = v46;
    v48 = [MEMORY[0x1E696AEC8] arrayWithObjects:&v49 count:2];
    return [MEMORY[0x1E696AEC8] arrayWithObjects:&v47 count:2];
  }

  return result;
}

uint64_t BWCreateDNGDictionaryWithZoomedGDCParameters(void *a1, void *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_61_2(v18, v19, v20, v21, v22, v23);
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_10_4(v24, v25, v26, v27, v28);
  if (!a1)
  {
    goto LABEL_11;
  }

  if ([a2 count] != 4 || (v34.origin.x = a4, v34.origin.y = a5, v34.size.width = a6, v34.size.height = a7, CGRectIsEmpty(v34)) || (a8 == *MEMORY[0x1E695EFF8] ? (v29 = a9 == *(MEMORY[0x1E695EFF8] + 8)) : (v29 = 0), v29))
  {
    a1 = 0;
LABEL_11:
    v31 = 0;
    goto LABEL_9;
  }

  a1 = [a1 mutableCopy];
  v33[0] = OUTLINED_FUNCTION_42_7();
  v33[2] = [a2 objectAtIndexedSubscript:{2, v33[0], OUTLINED_FUNCTION_41_7()}];
  v33[3] = [a2 objectAtIndexedSubscript:3];
  v33[4] = &unk_1F224C180;
  v33[5] = &unk_1F224C180;
  v33[6] = [MEMORY[0x1E696AD98] numberWithDouble:{(a8 + vcvtd_n_f64_s32(a3, 1uLL) - a4) / a6}];
  v33[7] = [MEMORY[0x1E696AD98] numberWithDouble:{(a9 + vcvtd_n_f64_s32(HIDWORD(a3), 1uLL) - a5) / a7}];
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:8];
  [a1 setObject:v30 forKeyedSubscript:*MEMORY[0x1E696D870]];
  v31 = [a1 copy];
LABEL_9:

  return v31;
}

uint64_t BWCreateDNGDictionaryWithUpdatedDimensionsIfNeeded(id *a1, unint64_t a2, unint64_t a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_50_6();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_10_4(v6, v7, v8, v9, v10);
  if (!a1)
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (!HIDWORD(a2))
  {
    goto LABEL_22;
  }

  v12 = 0;
  if (!a2)
  {
    goto LABEL_18;
  }

  v11 = 0;
  if (!HIDWORD(a3))
  {
LABEL_22:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
  if (a3)
  {
    if (a2 != a3 || HIDWORD(a2) != HIDWORD(a3))
    {
      v14 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D768]];
      v15 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D7F8]];
      v16 = *MEMORY[0x1E696D800];
      v17 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D800]];
      v18 = v17;
      if (v14 || v15 || v17)
      {
        v47 = v16;
        v11 = [a1 mutableCopy];
        v20 = 1.0 / (a2 / a3);
        v21 = 1.0 / (SHIDWORD(a2) / SHIDWORD(a3));
        if (v14)
        {
          v42 = BWRawDenormalizedActiveRectFromDNGDictionary(a1, v19);
          BWSetRawDenormalizedActiveRectToDNGDictionary(v11, v20 * v42, v21 * v43, v20 * v44, v21 * v45);
          if (v15)
          {
LABEL_15:
            if (v18)
            {
              [objc_msgSend(v15 objectAtIndexedSubscript:{0), "doubleValue"}];
              v23 = v22;
              [objc_msgSend(v15 objectAtIndexedSubscript:{1), "doubleValue"}];
              v25 = v24;
              [objc_msgSend(v18 objectAtIndexedSubscript:{0), "doubleValue"}];
              v27 = v26;
              [objc_msgSend(v18 objectAtIndexedSubscript:{1), "doubleValue"}];
              v28 = v20 * v23;
              v29 = v21 * v25;
              v30 = v20 * v27;
              v32 = v21 * v31;
              v50 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
              v33 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
              OUTLINED_FUNCTION_39_6(v33, v34, v35, v36, v37, v38, v39, v40, v46, v47, v48, v49, v50, v51);
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              v48 = [MEMORY[0x1E696AD98] numberWithDouble:v30];
              v49 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
              [a1[473] arrayWithObjects:&v48 count:2];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
            }
          }
        }

        else if (v15)
        {
          goto LABEL_15;
        }

        v12 = [v11 copy];
        goto LABEL_18;
      }
    }

LABEL_21:
    v11 = 0;
    v12 = 0;
  }

LABEL_18:

  return v12;
}

double BWRawDenormalizedActiveRectFromDNGDictionary(void *a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_12();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_5_12();
  OUTLINED_FUNCTION_10_4(v3, v4, v5, v6, v7);
  v8 = *MEMORY[0x1E695F050];
  if (a1)
  {
    v9 = [a1 objectForKeyedSubscript:*MEMORY[0x1E696D768]];
    if (v9)
    {
      v10 = v9;
      if ([v9 count] == 4)
      {
        [OUTLINED_FUNCTION_42_7() intValue];
        v8 = [OUTLINED_FUNCTION_41_7() intValue];
        [objc_msgSend(v10 objectAtIndexedSubscript:{2), "intValue"}];
        [objc_msgSend(v10 objectAtIndexedSubscript:{3), "intValue"}];
      }
    }
  }

  return v8;
}

uint64_t BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(void *a1, unint64_t a2, void *a3)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_61_2(v6, v7, v8, v9, v10, v11);
  OUTLINED_FUNCTION_54_5();
  OUTLINED_FUNCTION_3_39();
  OUTLINED_FUNCTION_10_4(v12, v13, v14, v15, v16);
  if (!a1)
  {
    goto LABEL_19;
  }

  v17 = 0;
  if (!a3 || !HIDWORD(a2))
  {
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 0;
  if (a2)
  {
    FigNote_AllowInternalDefaultLogs();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_61_2(v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_54_5();
    OUTLINED_FUNCTION_3_39();
    OUTLINED_FUNCTION_10_4(v25, v26, v27, v28, v29);
    v42 = 0;
    v30 = simu_ltmLUTsFromMetadata(a3, &v42);
    if (v30 && (v42 & 0xFFFFFFFE) == 4)
    {
      v31 = 8;
      if (v42 == 4)
      {
        v31 = 2;
      }

      v32 = 7;
      if (v42 == 4)
      {
        v32 = 1;
      }

      v33 = v30[v32];
      v34 = v30[v31];
      v35 = [a1 objectForKeyedSubscript:@"ProfileGainTableMap"];
      if (!v35 || ((v36 = v35, v37 = [objc_msgSend(v35 objectForKeyedSubscript:{@"MapPointsH", "unsignedIntValue"}], v38 = objc_msgSend(objc_msgSend(v36, "objectForKeyedSubscript:", @"MapPointsV"), "unsignedIntValue"), v37 == v33) ? (v39 = v38 == v34) : (v39 = 0), !v39))
      {
        v17 = [a1 mutableCopy];
        [objc_msgSend(a3 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
        simu_addToneCurvesToDNGDictionary();
        if (v40)
        {
          v18 = [v17 copy];
          goto LABEL_18;
        }

LABEL_20:
        v18 = 0;
        goto LABEL_18;
      }
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

LABEL_18:

  return v18;
}

void simu_addToneCurvesToDNGDictionary()
{
  OUTLINED_FUNCTION_6_4();
  v112 = v0;
  v115 = v1;
  v3 = v2;
  v5 = v4;
  v6 = *MEMORY[0x1E696D850];
  [v4 setObject:0 forKeyedSubscript:*MEMORY[0x1E696D850]];
  v7 = *MEMORY[0x1E696D7F0];
  [OUTLINED_FUNCTION_38_7() setObject:? forKeyedSubscript:?];
  [OUTLINED_FUNCTION_38_7() setObject:? forKeyedSubscript:?];
  v8 = OUTLINED_FUNCTION_38_7();
  v107 = v9;
  [v8 setObject:? forKeyedSubscript:?];
  v10 = [v3 objectForKeyedSubscript:*off_1E798B358];
  v113 = v3;
  v114 = v6;
  if (v10)
  {
    v11 = v10;
    v12 = [v10 bytes];
    v13 = *v12;
    if (2 * v13 + 2 != [v11 length])
    {
      goto LABEL_84;
    }

    v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:2 * v13];
    if (v13)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        *&v15 = v17 / (v13 + -1.0);
        [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v15), v16 * 2}];
        LOWORD(v19) = v12[v16 + 1];
        LOWORD(v18) = v12[v13];
        *&v19 = LODWORD(v19) / v18;
        if (*&v19 >= 0.04045)
        {
          *&v19 = powf((*&v19 + 0.055) / 1.055, 2.4);
        }

        else
        {
          *&v19 = *&v19 / 12.92;
        }

        [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] atIndexedSubscript:{"numberWithFloat:", v19), v16 * 2 + 1}];
        ++v17;
        ++v16;
      }

      while (v13 != v16);
    }

    [v5 setObject:v14 forKeyedSubscript:v6];
    [v5 setObject:&unk_1F2243A50 forKeyedSubscript:v7];
  }

  v20 = [v3 objectForKeyedSubscript:*off_1E798A738];
  v128 = 1.0;
  v124 = 1.0;
  if (v20)
  {
    [v20 floatValue];
    v124 = 1.0 / v21;
  }

  v22 = *off_1E798A720;
  v23 = [v3 objectForKeyedSubscript:*off_1E798A720];
  v24 = [v3 objectForKeyedSubscript:*off_1E798A740];
  if (v23)
  {
    v25 = v24;
    [v5 setObject:v23 forKeyedSubscript:v22];
    [v23 floatValue];
    v124 = v124 * v26;
    [v25 floatValue];
    if (v27 > 0.0)
    {
      [v23 floatValue];
      v29 = v28;
      [v25 floatValue];
      v128 = 1.0;
      if ((v29 / v30) >= 1.0)
      {
        [v23 floatValue];
        v32 = v31;
        [v25 floatValue];
        v128 = v32 / v33;
      }
    }
  }

  v34 = [v3 objectForKeyedSubscript:*off_1E798A6A0];
  v35 = [v3 objectForKeyedSubscript:*off_1E798B338];
  if (v35)
  {
    v36 = v35;
    if ([v35 length] >= 2)
    {
      v37 = [v36 bytes];
      v38 = v37 + 1;
      v129 = *v37;
      v134[0] = 0;
      v39 = simu_ltmLUTsFromMetadata(v3, v134);
      if (v39)
      {
        if ((v134[0] & 0xFFFFFFFE) == 4)
        {
          v40 = v39;
          v111 = v5;
          v41 = 7;
          if (v134[0] == 4)
          {
            v41 = 1;
          }

          v42 = 8;
          if (v134[0] == 4)
          {
            v42 = 2;
          }

          v43 = 9;
          if (v134[0] == 4)
          {
            v44 = 3;
          }

          else
          {
            v44 = 9;
          }

          if (v134[0] != 4)
          {
            v43 = 3;
          }

          v45 = 4;
          if (v134[0] == 4)
          {
            v45 = 10;
          }

          v46 = v39[v41];
          v47 = v39[v42];
          v117 = v39[v44];
          v108 = v39[v43];
          v109 = v39[v45];
          v122 = v39[11];
          v110 = [MEMORY[0x1E695DF88] dataWithLength:4 * v129 * (v47 * v46)];
          v121 = [v110 mutableBytes];
          if (v47)
          {
            v120 = 0;
            v116 = v40 + 12;
            v49 = v129 - 1;
            v126 = (v129 - 1);
            v127 = v129 + -1.0;
            v50 = 1.0 / (v129 - 1);
            v125 = v50;
            v51 = (v122 - 1);
            v118 = 4 * v46 * v129;
            v123 = v46;
            v119 = v47;
            do
            {
              if (v46)
              {
                v53 = 0;
                v54 = v121;
                do
                {
                  if (v129)
                  {
                    v55 = 0;
                    v56 = &v116[v53 * v122] + ((v120 * v117) & 0xFFFFFFFFFFFFFFFELL);
                    do
                    {
                      v57 = v55 / v127;
                      v58 = 1.0;
                      if (v34)
                      {
                        v59 = vcvtms_u32_f32(v57 * v126);
                        if (v59 + 1 < v49)
                        {
                          v60 = v59 + 1;
                        }

                        else
                        {
                          v60 = v129 - 1;
                        }

                        if (v59)
                        {
                          v61 = v59;
                        }

                        else
                        {
                          v61 = v60;
                        }

                        if (v59)
                        {
                          v62 = v57 * v126;
                        }

                        else
                        {
                          v62 = v60;
                        }

                        if (v59)
                        {
                          v63 = v55 / v127;
                        }

                        else
                        {
                          v63 = v125;
                        }

                        v64 = [objc_msgSend(v34 objectAtIndex:{v61), "unsignedShortValue"}] / 65535.0;
                        v57 = ((v62 - v61) * ([objc_msgSend(v34 objectAtIndex:{v60), "unsignedShortValue"}] / 65535.0)) + (1.0 - (v62 - v61)) * v64;
                        v65 = v57 / v63;
                        if (v63 == 0.0)
                        {
                          v65 = 1.0;
                        }
                      }

                      else
                      {
                        v65 = 1.0;
                      }

                      v66 = v128 * v57;
                      if ((v128 * v57) > 1.0)
                      {
                        v66 = 1.0;
                      }

                      v67 = v66 * v51;
                      v68 = vcvtms_u32_f32(v66 * v51);
                      if (v57 == 0.0)
                      {
                        v69 = 1.0;
                      }

                      else
                      {
                        v69 = v66 / v57;
                      }

                      if (v68 + 1 < v122 - 1)
                      {
                        v70 = v68 + 1;
                      }

                      else
                      {
                        v70 = v122 - 1;
                      }

                      if (v68)
                      {
                        v71 = v66;
                      }

                      else
                      {
                        v67 = v70;
                        v68 = v70;
                        v52 = 1.0 / (v122 - 1);
                        v71 = v52;
                      }

                      LOWORD(v48) = *(v56 + 2 * v68);
                      v72 = LODWORD(v48) / 65535.0;
                      LOWORD(v48) = *(v56 + 2 * v70);
                      *&v48 = LODWORD(v48) / 65535.0;
                      v73 = v67 - v68;
                      v74 = 1.0 - v73;
                      v75 = (v73 * *&v48) + v74 * v72;
                      if (v71 != 0.0)
                      {
                        v58 = v75 / (v124 * v71);
                      }

                      v76 = 1.0;
                      if (v75 != 0.0)
                      {
                        v77 = vcvtms_u32_f32(v126 * v75);
                        v78 = (v126 * v75) - v77;
                        LOWORD(v48) = v38[v77];
                        v48 = (LODWORD(v48) / 65535.0);
                        if (v77 + 1 < v49)
                        {
                          v79 = v77 + 1;
                        }

                        else
                        {
                          v79 = v129 - 1;
                        }

                        LOWORD(v74) = v38[v79];
                        v80 = (v78 * (LODWORD(v74) / 65535.0)) + (1.0 - v78) * v48;
                        v76 = v80 / v75;
                      }

                      *(v54 + 4 * v55++) = ((v65 * v69) * v58) * v76;
                    }

                    while (v129 != v55);
                  }

                  ++v53;
                  v46 = v123;
                  v54 += 4 * v129;
                }

                while (v53 != v123);
              }

              v47 = v119;
              ++v120;
              v121 += v118;
            }

            while (v120 != v119);
          }

          v81 = ((v115 - v108 * v46) / 2 + (v108 >> 1)) / v115;
          v82 = ((HIDWORD(v115) - v109 * v47) / 2 + (v109 >> 1)) / SHIDWORD(v115);
          if ([objc_msgSend(v113 objectForKeyedSubscript:{*off_1E798A6A8), "BOOLValue"}])
          {
            v83 = *(MEMORY[0x1E695F050] + 16);
            v133.origin = *MEMORY[0x1E695F050];
            v133.size = v83;
            v85 = v110;
            v84 = v111;
            v86 = v114;
            v87 = 0x1E696A000;
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              v88 = CGRectGetMidX(v133) + -0.5;
              v89 = CGRectGetMidY(v133) + -0.5;
              v81 = v81 + v88;
              v82 = v82 + v89;
            }
          }

          else
          {
            v85 = v110;
            v84 = v111;
            v86 = v114;
            v87 = 0x1E696A000uLL;
          }

          v90 = v108 / v115;
          v91 = v109 / SHIDWORD(v115);
          if (v112)
          {
            [objc_msgSend(v113 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
            v92 = (v90 * v46) * 0.5;
            v93 = (v91 * v47) * 0.5;
            v90 = v90 / v94;
            v91 = v91 / v94;
            v81 = v81 + (v92 - ((v90 * v46) * 0.5));
            v82 = v82 + (v93 - ((v91 * v47) * 0.5));
          }

          v95 = 0.1063 / v124;
          *&v95 = v95;
          v96 = 0.3576 / v124;
          v97 = 0.0361 / v124;
          v132[0] = [*(v87 + 3480) numberWithFloat:v95];
          *&v98 = v96;
          v132[1] = [*(v87 + 3480) numberWithFloat:v98];
          *&v99 = v97;
          v132[2] = [*(v87 + 3480) numberWithFloat:v99];
          *&v100 = 0.0 / v124;
          v132[3] = [*(v87 + 3480) numberWithFloat:v100];
          *&v101 = 0.5 / v124;
          v132[4] = [*(v87 + 3480) numberWithFloat:v101];
          v102 = [MEMORY[0x1E695DEC8] arrayWithObjects:v132 count:5];
          v130[0] = @"MapPointsV";
          v131[0] = [*(v87 + 3480) numberWithUnsignedShort:v47];
          v130[1] = @"MapPointsH";
          v131[1] = [*(v87 + 3480) numberWithUnsignedShort:v46];
          v130[2] = @"MapPointsN";
          v131[2] = [*(v87 + 3480) numberWithUnsignedLong:v129];
          v130[3] = @"MapSpacingV";
          *&v103 = v91;
          v131[3] = [*(v87 + 3480) numberWithFloat:v103];
          v130[4] = @"MapSpacingH";
          *&v104 = v90;
          v131[4] = [*(v87 + 3480) numberWithFloat:v104];
          v130[5] = @"MapOriginV";
          *&v105 = v82;
          v131[5] = [*(v87 + 3480) numberWithFloat:v105];
          v130[6] = @"MapOriginH";
          *&v106 = v81;
          v131[6] = [*(v87 + 3480) numberWithFloat:v106];
          v131[7] = v102;
          v130[7] = @"MapInputWeights";
          v130[8] = @"GainValues";
          v131[8] = v85;
          [v84 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v131, v130, 9), @"ProfileGainTableMap"}];
          if ([v84 objectForKeyedSubscript:@"ProfileGainTableMap"] || objc_msgSend(v84, "objectForKeyedSubscript:", v86))
          {
            [v84 setObject:@"Apple Embedded Color Profile" forKeyedSubscript:v107];
          }
        }
      }
    }
  }

LABEL_84:
  OUTLINED_FUNCTION_5_5();
}

void *BWCreateRawMetadataFromMetadata(void *a1, void *a2, unsigned int a3, uint64_t a4)
{
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4(v7, v8, v9, v10, v11);
  v12 = [a1 mutableCopy];
  [v12 setObject:a2 forKeyedSubscript:*MEMORY[0x1E696D808]];
  [v12 removeObjectForKey:*MEMORY[0x1E696D320]];
  v13 = *MEMORY[0x1E696D9B0];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v12, "objectForKeyedSubscript:", *MEMORY[0x1E696D9B0])}];
  [v14 removeObjectForKey:*MEMORY[0x1E696D968]];
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_9_22();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_9_22();
  OUTLINED_FUNCTION_10_4(v15, v16, v17, v18, v19);
  if (a2)
  {
    v20 = [a2 objectForKeyedSubscript:*MEMORY[0x1E696D800]];
    if (v20)
    {
      if ([v20 count] == 2)
      {
        v21 = [OUTLINED_FUNCTION_42_7() intValue];
        v22 = [OUTLINED_FUNCTION_41_7() intValue];
        if (v22)
        {
          if (v21)
          {
            v23 = v22;
            v24 = [MEMORY[0x1E696AD98] numberWithInt:v21];
            [v14 setObject:v24 forKeyedSubscript:*MEMORY[0x1E696DAA8]];
            v25 = [MEMORY[0x1E696AD98] numberWithInt:v23];
            [v14 setObject:v25 forKeyedSubscript:*MEMORY[0x1E696DAB0]];
          }
        }
      }
    }
  }

  [v12 setObject:v14 forKeyedSubscript:v13];
  v26 = *MEMORY[0x1E696DE30];
  v27 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v12, "objectForKeyedSubscript:", *MEMORY[0x1E696DE30])}];
  v28 = *off_1E7989D10;
  v29 = [objc_msgSend(v27 objectForKeyedSubscript:{*off_1E7989D10), "unsignedIntValue"}];
  [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v29 | a3), v28}];
  if (a3 == 0x10000)
  {
    [v27 setObject:a4 forKeyedSubscript:*off_1E7989AA0];
  }

  [v12 setObject:v27 forKeyedSubscript:v26];
  return v12;
}

unsigned __int16 *simu_ltmLUTsFromMetadata(void *a1, int *a2)
{
  v3 = [a1 objectForKeyedSubscript:*off_1E798B450];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if ([v3 length] < 0x16)
  {
    return 0;
  }

  v5 = [v4 bytes];
  v6 = v5;
  v7 = *v5;
  if (v7 != 5)
  {
    if (v7 == 4)
    {
      v8 = v5[3] * v5[2] + 24;
      if ([v4 length] >= v8)
      {
        if (a2)
        {
          v9 = 4;
LABEL_11:
          *a2 = v9;
          return v6;
        }

        return v6;
      }
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      v27 = 0;
      v26 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_8_1();
      v12 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = *v6;
      v25[0] = 67109120;
      v25[1] = v13;
      OUTLINED_FUNCTION_6_0(v12, v14, v15, v16, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v17, v18, v19, v20, v21, 1996, v22, v23, v25);
      free(v6);
    }

    return 0;
  }

  v10 = v5[9] * v5[8] + 24;
  if ([v4 length] < v10)
  {
    return 0;
  }

  if (a2)
  {
    v9 = 5;
    goto LABEL_11;
  }

  return v6;
}

void SoundAnalysisLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SoundAnalysisLibrary(void)") description:{@"BWSoundAnalysisSoftLinking.m", 13, @"%s", *a1}];
  __break(1u);
}

void __getSNMovieRemixClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSNMovieRemixClass(void)_block_invoke") description:{@"BWSoundAnalysisSoftLinking.m", 17, @"Unable to find class %s", "SNMovieRemix"}];
  __break(1u);
}

void __getSNMovieRemixRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getSNMovieRemixRequestClass(void)_block_invoke") description:{@"BWSoundAnalysisSoftLinking.m", 18, @"Unable to find class %s", "SNMovieRemixRequest"}];
  __break(1u);
}

void *FigCaptureAffineTransformFromDictionaryRepresentation@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  *(a2 + 16) = v5;
  *(a2 + 32) = *(v4 + 32);
  result = FigCaptureContainsAffineTransformDictionaryRepresentation(a1);
  if (result)
  {
    [objc_msgSend(a1 objectForKeyedSubscript:{@"a", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"b", "doubleValue"}];
    v10 = v9;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"c", "doubleValue"}];
    v12 = v11;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"d", "doubleValue"}];
    v14 = v13;
    [objc_msgSend(a1 objectForKeyedSubscript:{@"tx", "doubleValue"}];
    v16 = v15;
    result = [objc_msgSend(a1 objectForKeyedSubscript:{@"ty", "doubleValue"}];
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v14;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
  }

  return result;
}

void __getMPSImageStatisticsMeanClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getMPSImageStatisticsMeanClass(void)_block_invoke") description:{@"BWFusionTrackerInferenceAdapter.m", 52, @"Unable to find class %s", "MPSImageStatisticsMean"}];
  __break(1u);
}

void __getMPSImageStatisticsMeanClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *MetalPerformanceShadersLibrary(void)") description:{@"BWFusionTrackerInferenceAdapter.m", 51, @"%s", *a1}];
  __break(1u);
}

uint64_t FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(void *a1, uint64_t a2, void *a3, int a4, int a5, void *a6, const __CFDictionary *a7, int a8, unsigned __int8 a9, char a10, char a11)
{
  v20 = [MEMORY[0x1E695DF90] dictionary];
  v21 = [a3 objectForKeyedSubscript:{objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798B540)}];
  [objc_msgSend(v21 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
  v23 = v22;
  memset(v102, 0, sizeof(v102));
  [a6 getBytes:v102 length:48];
  v24 = [v21 objectForKeyedSubscript:*off_1E7989E78];
  v101 = 0u;
  v97 = 0x3F800000uLL;
  v98 = 0x3F80000000000000uLL;
  v100 = 1065353216;
  v99 = 0;
  if (v24)
  {
    v25 = v24;
    if ([v24 length] != 48)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
      return 0;
    }

    [v25 getBytes:time length:48];
    v97.i32[2] = v93;
    v97.i64[0] = vzip1q_s32(*time, *&time[16]).u64[0];
    LODWORD(v100) = v95;
    DWORD2(v98) = v94;
    *&v98 = vtrn2q_s32(*time, *&time[16]).u64[0];
    v99 = vzip1q_s32(vdupq_laneq_s32(*time, 2), vdupq_laneq_s32(*&time[16], 2)).u64[0];
    DWORD2(v101) = v96;
    *&v101 = vuzp2q_s32(vuzp2q_s32(*time, *&time[16]), *time).u64[0];
  }

  size = *MEMORY[0x1E695F060];
  if (!CGSizeMakeWithDictionaryRepresentation(a7, &size))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  v26 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v26 <= 1)
  {
    v27 = 1;
  }

  else
  {
    v27 = v26;
  }

  v28 = (v27 * a5);
  v29 = (v27 * a4);
  v90 = 1.0;
  if (a11)
  {
    [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B608), "floatValue"}];
    v90 = v32;
    if (v32 <= 0.0)
    {
      v90 = 1.0;
      v33 = FigMotionComputeLensPositionScalingFactor(a1, size.width, size.height, v29, v28, &v90, v30, v31);
      if (v33)
      {
        v74 = v33;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_45();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v74, v77, v78, v80, v81, v83, v84, v86);
      }
    }
  }

  v89 = *MEMORY[0x1E695EFF8];
  *time = *a2;
  *&time[16] = *(a2 + 16);
  Seconds = CMTimeGetSeconds(time);
  v37 = FigMotionComputeDistortionCenter(a1, size.width, size.height, v29, v28, &v89, 1.0 / v23, v90, Seconds, v35, v36);
  if (v37)
  {
    v66 = v37;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_45();
    LODWORD(v75) = v66;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v75);
    return 0;
  }

  if (!a10)
  {
    goto LABEL_17;
  }

  v38 = [a1 objectForKeyedSubscript:*off_1E798B260];
  if (v38)
  {
    [v38 floatValue];
    if (v39 == 0.0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_45();
      LODWORD(v75) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v75, v77, v78, v80, v81, v83, v84, v86);
LABEL_17:
      v40 = 0;
      v41 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v39 = 1.0;
  }

  v88 = v39;
  v42 = [v21 objectForKeyedSubscript:*off_1E7989EC0];
  if (!v42)
  {
    emitter = fig_log_get_emitter();
    v73 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE10, "<<<< FigCameraCalibrationDataUtilities >>>>", 0x134, v11, v71, v72, v75);
    v54 = 0uLL;
    v55 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    if (!v73)
    {
      goto LABEL_23;
    }

    v67 = v73;
LABEL_29:
    fig_log_get_emitter();
    LODWORD(v75) = v67;
    v68 = OUTLINED_FUNCTION_2_54();
    FigDebugAssert3(v68, v75, v11);
    fig_log_get_emitter();
    LODWORD(v76) = v67;
    v69 = OUTLINED_FUNCTION_2_54();
    FigDebugAssert3(v69, v76, v11);
    return 0;
  }

  v43 = v42;
  v44 = [v42 objectForKeyedSubscript:*off_1E798ADC0];
  if ([v44 length] != 64 || (v45 = objc_msgSend(v44, "bytes"), v85 = *v45, v87 = v45[1], v79 = v45[2], v82 = v45[3], v46 = objc_msgSend(v43, "objectForKeyedSubscript:", *off_1E798ADC8), objc_msgSend(v46, "length") != 64))
  {
    v67 = -12780;
    goto LABEL_29;
  }

  v47 = [v46 bytes];
  v49 = *v47;
  v48 = v47[1];
  v51 = v47[2];
  v50 = v47[3];
  v53 = v85;
  v52 = v87;
  v55 = v79;
  v54 = v82;
LABEL_23:
  *time = vmlaq_n_f32(v55, v51, v88);
  *&time[16] = vmlaq_n_f32(v54, v50, v88);
  v103[0] = vmlaq_n_f32(v53, v49, v88);
  v103[1] = vmlaq_n_f32(v52, v48, v88);
  v40 = [MEMORY[0x1E695DEF0] dataWithBytes:time length:32];
  v41 = [MEMORY[0x1E695DEF0] dataWithBytes:v103 length:32];
LABEL_24:
  v56 = FigCaptureConvertRotationAndMirroringToExifOrientation(a8, a9);
  if (!FigCaptureRotateCalibrationData(&size, v102, &v89, &v97, v56, v57, v58, v59, v60, v61, v62, v63))
  {
    *&v64 = (v23 * 0.001) / v90;
    [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v64), @"PixelSize"}];
    [v20 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v102, 48), @"IntrinsicMatrix"}];
    [v20 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v97, 64), @"ExtrinsicMatrix"}];
    [v20 setObject:CGPointCreateDictionaryRepresentation(v89) forKeyedSubscript:@"LensDistortionCenter"];
    [v20 setObject:CGSizeCreateDictionaryRepresentation(size) forKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
    [v20 setObject:v40 forKeyedSubscript:@"LensDistortionCoefficients"];
    [v20 setObject:v41 forKeyedSubscript:@"InverseLensDistortionCoefficients"];
    return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v20];
  }

  return 0;
}

uint64_t FigCaptureCreateCalibrationDataDictionaryFromSampleBufferMetadataIncludeMaxRadius(void *a1, __int128 *a2, void *a3, int a4, int a5, void *a6, const __CFDictionary *a7, int a8, unsigned __int8 a9, char a10, char a11)
{
  v22 = *a2;
  v23 = *(a2 + 2);
  ScaledCalibrationDataDictionaryFromSampleBufferMetadata = FigCaptureCreateScaledCalibrationDataDictionaryFromSampleBufferMetadata(a1, &v22, a3, a4, a5, a6, a7, a8, a9, a10, 0);
  if (!ScaledCalibrationDataDictionaryFromSampleBufferMetadata)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v20) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20);
    return 0;
  }

  v14 = ScaledCalibrationDataDictionaryFromSampleBufferMetadata;
  v15 = [MEMORY[0x1E695DF90] dictionary];
  [v15 addEntriesFromDictionary:v14];

  v16 = [a3 objectForKeyedSubscript:{objc_msgSend(a1, "objectForKeyedSubscript:", *off_1E798B540)}];
  v21 = 0;
  if (a11)
  {
    DistortionCalibrationValidMaxRadiusInPixels = FigCaptureGetDistortionCalibrationValidMaxRadiusInPixels(v16, &v21);
    if (!DistortionCalibrationValidMaxRadiusInPixels)
    {
      [v15 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v21), @"DistortionCalibrationValidMaxRadiusInPixels"}];
      return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v15];
    }

    v19 = DistortionCalibrationValidMaxRadiusInPixels;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v20) = v19;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20);
    return 0;
  }

  return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v15];
}

uint64_t FigCaptureGetDistortionCalibrationValidMaxRadiusInPixels(uint64_t a1, int *a2)
{
  result = 4294954516;
  if (a1 && a2)
  {
    if (BWDeviceIsiPad(4294954516, a2) && !OUTLINED_FUNCTION_4_43())
    {
      v8 = 1837;
    }

    else
    {
      [OUTLINED_FUNCTION_4_43() floatValue];
      if (v5 <= 0.0)
      {
        return 4294954516;
      }

      v6 = v5;
      if (!OUTLINED_FUNCTION_4_43())
      {
        return 4294954516;
      }

      [OUTLINED_FUNCTION_4_43() floatValue];
      if (v7 <= 0.0)
      {
        return 4294954516;
      }

      v8 = ((v6 * 1000.0) / v7);
    }

    result = 0;
    *a2 = v8;
  }

  return result;
}

uint64_t FigCaptureCreateColorCameraCalibrationForColorSampleBuffer(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v65 = *MEMORY[0x1E695EFF8];
  if (a5)
  {
    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(a1, *off_1E798A3C8, 0);
    size = *MEMORY[0x1E695F060];
    v12 = CMGetAttachment(a1, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0);
    if (v12)
    {
      if (CGSizeMakeWithDictionaryRepresentation(v12, &size))
      {
        v13 = CMGetAttachment(a1, @"OriginalCameraIntrinsicMatrix", 0);
        if (v13)
        {
          v14 = [v13 bytes];
          v60 = v14[1];
          v61 = *v14;
          v59 = v14[2];
          v15 = [objc_msgSend(a2 "cameraInfo")];
          if (v15)
          {
            v16 = v15;
            if ([v15 length] == 48)
            {
              [v16 getBytes:v63 length:48];
              *v17.i64 = OUTLINED_FUNCTION_1_60(v63[0], v63[1], v63[2]);
              v21 = FigCaptureTransformExtrinsicMatrix(v17, v18, v19, v20, _PromotedConst_52, unk_1AD0553F0, xmmword_1AD055400);
              v57 = v22;
              v58 = v21;
              v55 = v24;
              v56 = v23;
              [objc_msgSend(objc_msgSend(a2 "cameraInfo")];
              if (v27 > 0.0)
              {
                v28 = v27;
                v29 = 1.0 / v27;
                if (a1)
                {
                  v30 = [CMGetAttachment(a1 v10];
                  CMTimeMakeFromDictionary(&time, v30);
                  Seconds = CMTimeGetSeconds(&time);
                }

                else
                {
                  Seconds = 0.0;
                }

                v32 = 1.0;
                result = FigMotionComputeDistortionCenter(v11, size.width, size.height, a3, a4, &v65, v29, 1.0, Seconds, v25, v26);
                if (result)
                {
                  v49 = 0;
                  goto LABEL_28;
                }

                v34 = [(__CFDictionary *)v11 objectForKeyedSubscript:*off_1E798B260];
                if (!v34 || ([v34 floatValue], v32 = v35, v35 != 0.0))
                {
                  v36 = [objc_msgSend(a2 "cameraInfo")];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = [v36 objectForKeyedSubscript:*off_1E798ADC0];
                    if ([v38 length] == 64)
                    {
                      v39 = [v38 bytes];
                      v40 = [v37 objectForKeyedSubscript:*off_1E798ADC8];
                      if ([v40 length] == 64)
                      {
                        v41 = v28 * 0.001;
                        v42 = [v40 bytes];
                        v43 = 0;
                        memset(v62, 0, sizeof(v62));
                        do
                        {
                          v44 = (v62 + v43);
                          *v44 = *(v39 + v43) + (*(v42 + v43) * v32);
                          v44[8] = *(v39 + v43 + 32) + (*(v42 + v43 + 32) * v32);
                          v43 += 4;
                        }

                        while (v43 != 32);
                        v45 = objc_alloc(getADPolynomialsLensDistortionModelClass());
                        v46 = [v45 initWithDistortionCenter:v62 andPolynomials:*&v65];
                        if (v46)
                        {
                          v47 = v46;
                          v48 = objc_alloc(getADCameraCalibrationClass());
                          v49 = [v48 initWithIntrinsics:v47 cameraToPlatformTransform:*&v61 pixelSize:*&v60 forReferenceDimensions:*&v59 withDistortionModel:{v58, v57, v56, v55, v41, *&size.width, *&size.height}];

                          if (v49)
                          {
                            ImageBuffer = CMSampleBufferGetImageBuffer(a1);
                            Width = CVPixelBufferGetWidth(ImageBuffer);
                            Height = CVPixelBufferGetHeight(ImageBuffer);
                            if (size.width != Width || size.height != Height)
                            {
                              v54 = [v49 mutableCopy];
                              if (![v54 scale:{Width, Height}])
                              {
                                result = 4294954513;
                                goto LABEL_28;
                              }

                              v49 = [v54 copy];
                            }

                            result = 0;
LABEL_28:
                            *a5 = v49;
                            return result;
                          }
                        }

                        else
                        {
                          v49 = 0;
                        }

                        result = 4294954510;
                        goto LABEL_28;
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

    v49 = 0;
    result = 4294954516;
    goto LABEL_28;
  }

  return 4294954516;
}

uint64_t FigCaptureCreateDepthMetadataForColorCameraCalibration(void *a1, uint64_t a2, void *a3)
{
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0x3F800000uLL;
  DWORD1(v24) = 1065353216;
  DWORD2(v25) = 1065353216;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  [a1 intrinsicMatrix];
  DWORD2(v20) = v6;
  DWORD2(v21) = v7;
  *&v20 = v8;
  *&v21 = v9;
  DWORD2(v22) = v10;
  *&v22 = v11;
  v12 = [MEMORY[0x1E695DEF0] dataWithBytes:&v20 length:48];
  if (!a3)
  {
    return 4294954516;
  }

  v13 = v12;
  [a1 referenceDimensions];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v27);
  v15 = [a1 distortionModel];
  v16 = [v15 distortionPolynomials];
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v17 setObject:&unk_1F2243E88 forKeyedSubscript:*off_1E798D008];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", a2), *off_1E798CFD0}];
  [v17 setObject:&unk_1F2243E88 forKeyedSubscript:*off_1E798CFC0];
  [v17 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798CFE0];
  [v17 setObject:v13 forKeyedSubscript:*off_1E798CFD8];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", &v23, 64), *off_1E798CFC8}];
  v18 = MEMORY[0x1E696AD98];
  [a1 pixelSize];
  [v17 setObject:objc_msgSend(v18 forKeyedSubscript:{"numberWithFloat:"), *off_1E798D000}];
  [v15 distortionCenter];
  [v17 setObject:CGPointCreateDictionaryRepresentation(v28) forKeyedSubscript:*off_1E798CFF0];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v16, 32), *off_1E798CFF8}];
  [v17 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", v16 + 32, 32), *off_1E798CFE8}];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (FigDepthDataGetCurrentMajorVersion() << 16) | 0xEA61), *off_1E798D010}];
  CFRelease(DictionaryRepresentation);
  result = 0;
  *a3 = v17;
  return result;
}

uint64_t FigCaptureCreateJasperToColorCameraTransformForJasperSensorConfiguration(void *a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294954516;
  }

  v3 = [objc_msgSend(a1 "cameraInfo")];
  if (!v3)
  {
    return 4294954516;
  }

  v4 = v3;
  if ([v3 length] != 48)
  {
    return 4294954516;
  }

  [v4 getBytes:v18 length:48];
  *v5.i64 = OUTLINED_FUNCTION_1_60(v18[0], v18[1], v18[2]);
  v9 = FigCaptureTransformExtrinsicMatrix(v5, v6, v7, v8, _PromotedConst_52, unk_1AD0553F0, xmmword_1AD055400);
  result = 0;
  *(a2 + 8) = v11;
  *(a2 + 24) = v12;
  *(a2 + 40) = v13;
  *(a2 + 56) = v14;
  *a2 = v9;
  *(a2 + 16) = v15;
  *(a2 + 32) = v16;
  *(a2 + 48) = v17;
  return result;
}

uint64_t FigCaptureRotateCalibrationData_cold_1(_DWORD *a1)
{
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE10, "<<<< FigCameraCalibrationDataUtilities >>>>", 0xE9, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

uint64_t FigCaptureRotateCalibrationData_cold_2(_DWORD *a1)
{
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigCameraCalibrationDataUtilities >>>>", 0x8C, v1, v4, v5, v7);
  *a1 = result;
  return result;
}

void *getColorTranslationMatrixFromCalibration(void *a1, unsigned int a2, int a3)
{
  v4 = [a1 objectAtIndexedSubscript:a2];
  result = [v4 objectForKeyedSubscript:@"Temperature"];
  if (!result)
  {
    return result;
  }

  if ([result unsignedIntValue] != a3)
  {
    return 0;
  }

  result = [v4 objectForKeyedSubscript:@"DeviceRGBToXYZMatrix"];
  if (!result)
  {
    return result;
  }

  v6 = result;
  if ([result length] != 36)
  {
    return 0;
  }

  v7 = [v6 bytes];
  v8 = vcvtq_f64_f32(v7[1]);
  v34 = vcvtq_f64_f32(*v7);
  v35[0] = v8;
  v9 = vcvtq_f64_f32(v7[3]);
  v35[1] = vcvtq_f64_f32(v7[2]);
  v35[2] = v9;
  v36 = v7[4].f32[0];
  if (a3 == 6500)
  {
    v19 = &v34;
    goto LABEL_13;
  }

  if (a3 != 2800)
  {
    return 0;
  }

  v10 = 0;
  v11 = v33;
  do
  {
    v12 = (&getColorTranslationMatrixFromCalibration_CA_2800toD65 + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v35 + 1;
    v17 = v11;
    v18 = 3;
    do
    {
      *v17++ = v14 * *v16 + v13 * *(v16 - 3) + v15 * v16[3];
      ++v16;
      --v18;
    }

    while (v18);
    ++v10;
    v11 += 3;
  }

  while (v10 != 3);
  v19 = v33;
LABEL_13:
  if (!invert3x3Matrix(v19->f64, v32))
  {
    return 0;
  }

  v20 = 0;
  v30[9] = v32[1] + v32[0] * 0.950455927 + v32[2] * 1.08905775;
  v30[11] = 0.0;
  v31[0] = 0;
  v30[10] = 0.0;
  *&v31[1] = v32[4] + v32[3] * 0.950455927 + v32[5] * 1.08905775;
  memset(&v31[2], 0, 24);
  *&v31[5] = v32[7] + v32[6] * 0.950455927 + v32[8] * 1.08905775;
  v21 = v30;
  do
  {
    v22 = &v19->f64[3 * v20];
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v26 = v31;
    v27 = v21;
    v28 = 3;
    do
    {
      *v27++ = v24 * *v26 + v23 * *(v26 - 3) + v25 * v26[3];
      ++v26;
      --v28;
    }

    while (v28);
    ++v20;
    v21 += 3;
  }

  while (v20 != 3);
  v29[0] = [MEMORY[0x1E696AD98] numberWithDouble:v30[0]];
  v29[1] = [MEMORY[0x1E696AD98] numberWithDouble:v30[1]];
  v29[2] = [MEMORY[0x1E696AD98] numberWithDouble:v30[2]];
  v29[3] = [MEMORY[0x1E696AD98] numberWithDouble:v30[3]];
  v29[4] = [MEMORY[0x1E696AD98] numberWithDouble:v30[4]];
  v29[5] = [MEMORY[0x1E696AD98] numberWithDouble:v30[5]];
  v29[6] = [MEMORY[0x1E696AD98] numberWithDouble:v30[6]];
  v29[7] = [MEMORY[0x1E696AD98] numberWithDouble:v30[7]];
  v29[8] = [MEMORY[0x1E696AD98] numberWithDouble:v30[8]];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:9];
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_11(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E5F8, 0xFFFFCE14, "<<<< BWProResRawMetadataUtilities >>>>", 0x629, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_12(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E5F8, 0xFFFFCE14, "<<<< BWProResRawMetadataUtilities >>>>", 0x628, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

uint64_t BWUpdateFrameLevelMetadataForProResRaw_cold_13(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E5F8, 0xFFFFCE14, "<<<< BWProResRawMetadataUtilities >>>>", 0x627, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

float BWSampleBufferComputeIOSurfaceCompressionRatio(opaqueCMSampleBuffer *a1, unint64_t *a2, unint64_t *a3)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer && (v6 = ImageBuffer, CVPixelBufferGetIOSurface(ImageBuffer)))
  {
    CompressionTypeOfPlane = IOSurfaceGetCompressionTypeOfPlane();
    v8 = 0.0;
    if (CompressionTypeOfPlane && (v9 = CompressionTypeOfPlane, (PlaneCount = CVPixelBufferGetPlaneCount(v6)) != 0))
    {
      v11 = PlaneCount;
      v12 = 0;
      v13 = 0;
      v14 = v9 - 3;
      do
      {
        if (v14 >= 2)
        {
          v12 += IOSurfaceGetCompressedTileDataRegionMemoryUsedOfPlane();
        }

        ++v13;
      }

      while (v11 != v13);
      if (v12)
      {
        extraColumnsOnRight = 0;
        extraColumnsOnLeft = 0;
        extraRowsOnBottom = 0;
        extraRowsOnTop = 0;
        CVPixelBufferGetExtendedPixels(v6, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
        Width = CVPixelBufferGetWidth(v6);
        v16 = extraColumnsOnLeft + Width + extraColumnsOnRight;
        Height = CVPixelBufferGetHeight(v6);
        v18 = extraRowsOnTop + Height + extraRowsOnBottom;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v6);
        v20 = (FigCapturePixelFormatBytesPerPixel(PixelFormatType) * (v18 * v16));
        v8 = v12 / v20;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
      v12 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_28();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v20 = 0;
    v12 = 0;
    v8 = 0.0;
  }

  *a2 = v12;
  *a3 = v20;
  return v8;
}

uint64_t BWSampleBufferComputeIOSurfaceCompressionHistogram(opaqueCMSampleBuffer *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (!ImageBuffer)
  {
    return 4294954516;
  }

  v5 = ImageBuffer;
  if (!CVPixelBufferGetIOSurface(ImageBuffer) || IOSurfaceGetCompressionTypeOfPlane() != 3 || CVPixelBufferGetPlaneCount(v5) != 2)
  {
    return 4294954516;
  }

  result = CVPixelBufferCalculateSparseHistogramOfCompressedTileDataUsageOfPlane();
  if (!result)
  {

    return CVPixelBufferCalculateSparseHistogramOfCompressedTileDataUsageOfPlane();
  }

  return result;
}

void *BWGetScaledCameraIntrinsicsMatrix(void *result, float a2)
{
  if (result)
  {
    v3 = result;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    if ([result length] == 48)
    {
      [v3 getBytes:&v10 length:{objc_msgSend(v3, "length")}];
      v4 = *&v10 * a2;
      v5 = *(&v11 + 1) * a2;
      v7 = *&v12;
      v8 = DWORD2(v12);
      v6 = *(&v12 + 1);
      CGAffineTransformMakeScale(&v9, a2, a2);
      *&v10 = v4;
      *(&v11 + 1) = v5;
      DWORD2(v12) = v8;
      *&v12 = vcvt_f32_f64(vaddq_f64(*&v9.tx, vmlaq_n_f64(vmulq_n_f64(*&v9.c, v6), *&v9.a, v7)));
      return [MEMORY[0x1E695DEF0] dataWithBytes:&v10 length:48];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BWPropagateZoomInformationToAttachedMediaSampleBuffer(const void *a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *off_1E798A3C8;
      if (CMGetAttachment(a1, *off_1E798A3C8, 0))
      {
        v4 = CMGetAttachment(a2, v3, 0);
        if (v4)
        {
          v5 = v4;
          v6 = OUTLINED_FUNCTION_2_7();
          FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v6, v7);

          CMSetAttachment(a2, v3, v5, 1u);
        }
      }
    }
  }
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x80, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x7F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x7E, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x7D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCopyMetadataToSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x119, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWCMSampleBufferCopyMetadataToSampleBuffer_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x118, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

void BWSampleBufferCreateFromEncodedImageSurface_cold_3(int a1, const void *a2)
{
  fig_log_get_emitter();
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v2, v6, v7, v8, v9, vars0, vars8);
  CFRelease(a2);
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x138, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x137, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateFromEncodedImageSurface_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x136, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateForDroppedFrame_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x16B, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t BWSampleBufferCreateForDroppedFrame_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_7();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  OUTLINED_FUNCTION_2_7();
  emitter = fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSampleBufferUtilities >>>>", 0x16A, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

double ssln_getMaskValidBufferRectFromMetadata(void *a1, opaqueCMSampleBuffer *target)
{
  v8 = *MEMORY[0x1E695F050];
  if (a1 && target && (!CMGetAttachment(target, *off_1E798A3C8, 0) || !FigCFDictionaryGetCGRectIfPresent()))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(target);
    if (ImageBuffer)
    {
      v5 = ImageBuffer;
      v6 = [a1 objectForKeyedSubscript:*off_1E798B540];
      *&v8 = 0;
      CVPixelBufferGetWidth(v5);
      CVPixelBufferGetHeight(v5);
      if ([v6 isEqual:*off_1E798A0F8])
      {
        *&v8 = 0;
      }
    }
  }

  return *&v8;
}

BOOL FigExternalStorageDeviceManagerServerReplyingMessageHandler_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v10, v11, v12, v13, v14, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  v6 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4BALL, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x7D, v1, v4, v5, v9);
  *a1 = v6;
  return v6 == 0;
}

uint64_t HandleExternalStorageDeviceManagerBeginMonitoring_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0xCB, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B6, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0xEC, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableURLArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0xE8, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B6, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x113, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x10F, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE10, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x13D, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCopyStorageDeviceProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x136, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerCheckAuthorizationStatus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x15C, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t HandleExternalStorageDeviceManagerRequestAuthorization_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x1F7, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t externalStorageDeviceManagerCallback_cold_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, vars0, vars8);
  v10 = OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFB4B9, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0xA7, v9, v11, v12, a9);
}

void __getICAccessManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getICAccessManagerClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManagerServer.m", 31, @"Unable to find class %s", "ICAccessManager"}];
  __break(1u);
}

void __getICAccessManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ImageCaptureCoreLibrary(void)") description:{@"FigExternalStorageDeviceManagerServer.m", 30, @"%s", *a1}];
  __break(1u);
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  v1 = OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, 0xFFFFB4BALL, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x1C8, v0, v2, v3, v6);
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v7, v8, v9, v10, v11, vars0, vars8);
  v1 = OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, 0xFFFFB4BALL, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x1C7, v0, v2, v3, v6);
}

uint64_t __HandleExternalStorageDeviceManagerRequestAuthorization_block_invoke_cold_3(void *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  v2 = OUTLINED_FUNCTION_2_8();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFFB4BALL, "<<<< FigExternalStorageDeviceManagerServer >>>>", 0x1C0, v1, v3, v4, v7);
  return FigSimpleMutexUnlock();
}

uint64_t FigCaptureDeferredContainerManagerRemoteCopyContainerManager_cold_4(int a1)
{
  OUTLINED_FUNCTION_2_8();
  v6 = a1;
  v3 = OUTLINED_FUNCTION_5_17();
  FigDebugAssert3(v3, v6, v1);
  OUTLINED_FUNCTION_2_8();
  LODWORD(v7) = a1;
  v4 = OUTLINED_FUNCTION_5_17();
  return FigDebugAssert3(v4, v7, v1);
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFCE0FLL, "<<<< FigCaptureDeferredContainerManagerRemote >>>>", 0x75, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

uint64_t captureDeferredContainerManagerRemote_createContainerManagerMessage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  v3 = OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, 0xFFFFC0F7, "<<<< FigCaptureDeferredContainerManagerRemote >>>>", 0x76, v1, v4, v5, v8);
  *a1 = result;
  return result;
}

unint64_t ubp_addFrame(int a1, id *a2, void *a3, void *a4, int a5)
{
  LODWORD(v9) = a1;
  result = [(BWUBNRFProcessorRequest *)a2 processingType];
  if (!result)
  {
    return result;
  }

  if ([a2 err] || !-[BWUBProcessorRequest useFrameForMultiFrameProcessing:](a2, a4))
  {
    if (dword_1EB58DE40)
    {
      v13 = OUTLINED_FUNCTION_4_45();
      OUTLINED_FUNCTION_33_12(v13);
      OUTLINED_FUNCTION_4_0();
      if (v9)
      {
        [objc_msgSend(a2 "input")];
        if ([objc_msgSend(objc_msgSend(a2 "input")])
        {
          [objc_msgSend(objc_msgSend(a2 "input")];
        }

        else
        {
          [(BWUBProcessorRequest *)a2 expectedFrameCount];
        }

        [a2 err];
        BWStillImageSampleBufferToDisplayString(a4, v14);
        OUTLINED_FUNCTION_21_14();
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v15, v16, v17, v18, v19);
    }

    result = [a2 err];
    if (a2)
    {
      if (result)
      {
        result = [objc_msgSend(a2[1] "captureStreamSettings")];
        if (result)
        {
          result = [objc_msgSend(a2 "input")];
          if (!result)
          {
            result = [objc_msgSend(objc_msgSend(a2 "input")];
            if (result)
            {
              return -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], a4);
            }
          }
        }
      }
    }

    return result;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (!dword_1EB58DE40)
    {
      goto LABEL_31;
    }

    v11 = OUTLINED_FUNCTION_4_45();
    if (os_log_type_enabled(v11, v55))
    {
      v12 = v56;
    }

    else
    {
      v12 = v56 & 0xFFFFFFFE;
    }

    if (v12)
    {
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EB58DE40)
  {
    v20 = OUTLINED_FUNCTION_4_45();
    if (os_log_type_enabled(v20, v55))
    {
      v22 = v56;
    }

    else
    {
      v22 = v56 & 0xFFFFFFFE;
    }

    if (v22)
    {
      BWStillImageSampleBufferToDisplayString(a4, v21);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_31:
  if (![a2 deepFusionOutput] || !+[BWUBProcessorController lazilyAllocatesDeepFusionOutputBuffers](BWUBProcessorController, "lazilyAllocatesDeepFusionOutputBuffers") || (!objc_msgSend(a3, "referenceFrameHasEVMinus") || objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") != 1) && ((objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) != 0 || !a5))
  {
    goto LABEL_46;
  }

  v23 = [a2 deepFusionOutput];
  if (![v23 proxyPixelBuffer])
  {
    [a2 input];
    v24 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v24)
    {
      goto LABEL_86;
    }

    v25 = v24;
    [v23 setProxyPixelBuffer:v24];
    CFRelease(v25);
  }

  if (![v23 referencePixelBuffer])
  {
    [a2 input];
    v26 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v26)
    {
      goto LABEL_86;
    }

    v27 = v26;
    [v23 setReferencePixelBuffer:v26];
    CFRelease(v27);
  }

  if (![v23 referenceNoisePixelBuffer])
  {
    [a2 input];
    v28 = [OUTLINED_FUNCTION_28_8() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v28)
    {
      v9 = v28;
      [v23 setReferenceNoisePixelBuffer:v28];
      CFRelease(v9);
      goto LABEL_46;
    }

LABEL_86:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v30 = 4294954510;
LABEL_50:
    result = [a2 err];
    if (!result)
    {
      return [a2 setErr:v30];
    }

    return result;
  }

LABEL_46:
  v29 = [a3 addFrame:a4];
  if (v29)
  {
    v30 = v29;
    if (a2 && [objc_msgSend(a2[1] "captureStreamSettings")])
    {
      -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], objc_msgSend(objc_msgSend(a2, "input"), "errorRecoveryFrame"));
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_50;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(CMGetAttachment(a4 *off_1E798A3C8];
  v32 = v31;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v34 = v32 + v33;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v34];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v32 < *&v35)
  {
    *&v35 = v32;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v35];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v32 >= *&v36)
  {
    *&v36 = v32;
  }

  [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v36];
  if (dword_1EB58DE40)
  {
    v37 = OUTLINED_FUNCTION_4_45();
    OUTLINED_FUNCTION_33_12(v37);
    OUTLINED_FUNCTION_4_0();
    if (v9)
    {
      [objc_msgSend(a2 "input")];
      if ([objc_msgSend(objc_msgSend(a2 "input")])
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
      }

      else
      {
        [(BWUBProcessorRequest *)a2 expectedFrameCount];
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_21_14();
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0(v38, v39, v40, v41, v42);
  }

  result = [objc_msgSend(objc_msgSend(a2 "input")];
  if ((result & 0x80000000) != 0)
  {
    result = [a3 referenceFrameIndex];
    if ((result & 0x80000000) == 0)
    {
      v43 = result;
      result = [objc_msgSend(a2 "input")];
      if (!result)
      {
        v44 = 0;
        v45 = 0;
        while (1)
        {
          v46 = [a2 input];
          if (v46)
          {
            v46 = OUTLINED_FUNCTION_42_8(v46);
          }

          result = [v46 count];
          if (result <= v44)
          {
            break;
          }

          v47 = [a2 input];
          if (v47)
          {
            v47 = OUTLINED_FUNCTION_42_8(v47);
          }

          v48 = [v47 objectAtIndexedSubscript:v44];
          result = [(BWUBProcessorRequest *)a2 useFrameForMultiFrameProcessing:v48];
          if (result)
          {
            if (v45 == v43)
            {
              if (v48)
              {
                -[BWUBProcessorInput _setReferenceFrame:]([a2 input], v48);
                result = -[BWUBProcessorInput _setErrorRecoveryFrame:]([a2 input], objc_msgSend(objc_msgSend(a2, "input"), "errorRecoveryFrame"));
                if (a2)
                {
                  result = [objc_msgSend(a2[1] "captureStreamSettings")];
                  if (result)
                  {
                    result = [objc_msgSend(a2 "input")];
                  }
                }

                if (dword_1EB58DE40)
                {
                  v49 = OUTLINED_FUNCTION_4_45();
                  OUTLINED_FUNCTION_33_12(v49);
                  OUTLINED_FUNCTION_4_0();
                  if (v45)
                  {
                    [objc_msgSend(objc_msgSend(a2 "input")];
                    OUTLINED_FUNCTION_2_1();
                    OUTLINED_FUNCTION_4_4();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  return OUTLINED_FUNCTION_39_0(v50, v51, v52, v53, v54);
                }
              }

              return result;
            }

            ++v45;
          }

          ++v44;
        }
      }
    }
  }

  return result;
}

void *__ubp_createStateMachine_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [*(a2 + 88) setOutput:0];
    [*(a2 + 88) resetState];
  }

  [(BWUBProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_3_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _setupProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_4_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processUBOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_6(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_7(uint64_t a1, id *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [(BWUBProcessorController *)a2 _processUBFusion];
  }

  objc_autoreleasePoolPop(v3);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void *__ubp_createStateMachine_block_invoke_8(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWUBProcessorController *)v5 _processDeepFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWUBProcessorController *)a2 _updateStateIfNeeded];
}

void nrfp_addFrame_0(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  if (![(BWNRFProcessorRequest *)a2 processingType]|| [(BWNRFProcessorRequest *)a2 processingType]== 6 || [(BWNRFProcessorRequest *)a2 processingType]== 7)
  {
    return;
  }

  v10 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected]&& (BWStillImageCaptureFrameFlagsForSampleBuffer(a4) & 0x20) != 0)
  {
    -[BWNRFProcessorInput _setErrorRecoveryFrame:]([a2 input]);
  }

  if ([a2 err] || !-[BWNRFProcessorRequest useFrameForMultiFrameProcessing:](a2, a4))
  {
    if (!dword_1EB58E0E0)
    {
      return;
    }

    OUTLINED_FUNCTION_58_3();
    v15 = OUTLINED_FUNCTION_54_0(qword_1EB58E0D8);
    os_log_type_enabled(v15, v53);
    OUTLINED_FUNCTION_4_0();
    if (a1)
    {
      [objc_msgSend(a2 "input")];
      if (a2 && [(BWNRFProcessorRequest *)a2 processingType])
      {
        [*(a2 + 16) expectedFrameCount];
      }

      [a2 err];
      BWStillImageSampleBufferToDisplayString(a4, v16);
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_5_1(v17, v18, v52, v19, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_1_63();
    goto LABEL_31;
  }

  if ([objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B1E8), "intValue"}])
  {
    goto LABEL_22;
  }

  if (a5)
  {
    [a3 setReferenceFrameIndex:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing")}];
    if (dword_1EB58E0E0)
    {
      OUTLINED_FUNCTION_58_3();
      v51 = OUTLINED_FUNCTION_54_0(qword_1EB58E0D8);
      v22 = os_log_type_enabled(v51, v53);
      v23 = v54 & 0xFFFFFFFE;
      if (v22)
      {
        v23 = v54;
      }

      if (v23)
      {
        [objc_msgSend(objc_msgSend(a2 "input")];
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected])
    {
      -[BWNRFProcessorInput _setReferenceFrame:]([a2 input]);
      [objc_msgSend(a2 "input")];
    }
  }

  if ([a2 deepFusionOutput] && (objc_msgSend(a3, "referenceFrameHasEVMinus") && objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") == 1 || (objc_msgSend(a3, "referenceFrameHasEVMinus") & 1) == 0 && a5))
  {
    v11 = [a2 deepFusionOutput];
    if (![objc_msgSend(objc_msgSend(a2 "input")])
    {
      if ([objc_msgSend(objc_msgSend(a2 "input")])
      {
        v20 = [objc_msgSend(objc_msgSend(a2 "input")];
        v21 = +[FigCaptureCameraParameters sharedInstance];
        if (v20)
        {
          [(FigCaptureCameraParameters *)v21 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
        }

        else
        {
          [(FigCaptureCameraParameters *)v21 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
        }
      }

LABEL_43:
      if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v11, "proxyPixelBuffer"))
      {
        [a2 input];
        v24 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
        if (!v24)
        {
          goto LABEL_103;
        }

        v25 = v24;
        [v11 setProxyPixelBuffer:v24];
        CVPixelBufferRelease(v25);
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_37_0() setProxyMetadata:?];
      }

      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_37_0() setSyntheticReferenceMetadata:?];
      if ([v11 syntheticReferencePixelBuffer] || objc_msgSend(objc_msgSend(objc_msgSend(a2, "input"), "captureSettings"), "captureType") != 13)
      {
        goto LABEL_51;
      }

      [a2 input];
      v26 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v26)
      {
        v27 = v26;
        [v11 setSyntheticReferencePixelBuffer:v26];
        CVPixelBufferRelease(v27);
LABEL_51:
        if ([objc_msgSend(objc_msgSend(a2 "input")] && !objc_msgSend(v11, "linearOutputPixelBuffer"))
        {
          [a2 input];
          v28 = [OUTLINED_FUNCTION_51_7() processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
          if (v28)
          {
            v29 = v28;
            [v11 setLinearOutputPixelBuffer:v28];
            CVPixelBufferRelease(v29);
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_37_0() setLinearOutputMetadata:?];
          }

          else
          {
            [a2 setDemosaicedRawErr:4294954510];
          }
        }

        if (![a2 processSmartStyleRenderingInput])
        {
          goto LABEL_61;
        }

        if (a2)
        {
          v30 = *(a2 + 64);
        }

        else
        {
          v30 = 0;
        }

        v31 = [v30 processorController:a1 newOutputPixelBufferForProcessorInput:objc_msgSend(a2 type:{"input"), 41}];
        if (v31)
        {
          v32 = v31;
          [v11 setLinearOutputMIWBAppliedPixelBuffer:v31];
          [MEMORY[0x1E695DF90] dictionary];
          [OUTLINED_FUNCTION_37_0() setLinearOutputMIWBAppliedMetadata:?];
          CVPixelBufferRelease(v32);
LABEL_61:
          if ([a2 gainMapEnabled] && !objc_msgSend(v11, "gainMapOutputPixelBuffer"))
          {
            if (a2)
            {
              v33 = *(a2 + 64);
            }

            else
            {
              v33 = 0;
            }

            v34 = [v33 processorController:a1 newOutputPixelBufferForProcessorInput:objc_msgSend(a2 type:{"input"), 19}];
            if (v34 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [MEMORY[0x1E695DF90] dictionary];
              [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
            }

            [v11 setGainMapOutputPixelBuffer:v34];
            CVPixelBufferRelease(v34);
          }

          goto LABEL_69;
        }
      }

LABEL_103:
      v14 = 4294954510;
LABEL_97:
      if (![a2 err])
      {
        [a2 setErr:v14];
      }

      return;
    }

    v12 = BWPixelBufferDimensionsFromSampleBuffer(a4);
    if (v12 >= 1 && SHIDWORD(v12) > 0)
    {
      goto LABEL_43;
    }

LABEL_22:
    v14 = 4294954516;
    goto LABEL_97;
  }

LABEL_69:
  if (dword_1EB58E0E0)
  {
    OUTLINED_FUNCTION_58_3();
    v35 = OUTLINED_FUNCTION_54_0(qword_1EB58E0D8);
    if (os_log_type_enabled(v35, v53))
    {
      v37 = v54;
    }

    else
    {
      v37 = v54 & 0xFFFFFFFE;
    }

    if (v37)
    {
      BWStillImageSampleBufferToDisplayString(a4, v36);
      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_0_51();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v39 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A0B8, 0);
  if (v39)
  {
    v40 = [a3 addInputResource:v39];
  }

  else
  {
    v40 = [OUTLINED_FUNCTION_53_1() addFrame:?];
  }

  v14 = v40;

  v41 = OUTLINED_FUNCTION_39_9();
  CVBufferRemoveAttachment(v41, v42);
  if (v14)
  {
    if ([(BWNRFProcessorRequest *)a2 keepFramesUntilReferenceFrameSelected])
    {
      [objc_msgSend(a2 "input")];
      [a3 resetState];
    }

    goto LABEL_97;
  }

  [a2 setNumberOfFramesAddedForMultiFrameProcessing:{objc_msgSend(a2, "numberOfFramesAddedForMultiFrameProcessing") + 1}];
  [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B2A8), "floatValue"}];
  v44 = v43;
  [a2 totalExposureTimesOfFramesAddedForMultiFrameProcessing];
  *&v46 = v44 + v45;
  [a2 setTotalExposureTimesOfFramesAddedForMultiFrameProcessing:v46];
  [a2 minExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v44 < *&v47)
  {
    *&v47 = v44;
  }

  [a2 setMinExposureTimesOfFramesAddedForMultiFrameProcessing:v47];
  [a2 maxExposureTimesOfFramesAddedForMultiFrameProcessing];
  if (v44 >= *&v48)
  {
    *&v48 = v44;
  }

  [a2 setMaxExposureTimesOfFramesAddedForMultiFrameProcessing:v48];
  if (dword_1EB58E0E0)
  {
    OUTLINED_FUNCTION_58_3();
    v49 = OUTLINED_FUNCTION_54_0(qword_1EB58E0D8);
    if (os_log_type_enabled(v49, v53))
    {
      v50 = v54;
    }

    else
    {
      v50 = v54 & 0xFFFFFFFE;
    }

    if (v50)
    {
      [objc_msgSend(a2 "input")];
      if (a2)
      {
        if ([(BWNRFProcessorRequest *)a2 processingType])
        {
          [*(a2 + 16) expectedFrameCount];
        }
      }

      [objc_msgSend(objc_msgSend(a2 "input")];
      OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
LABEL_31:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void *__nrfp_createStateMachine_block_invoke_2_0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [OUTLINED_FUNCTION_34_0(88) setOutput:?];
    [*(a2 + 88) resetState];
  }

  [(BWNRFProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_3_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _prepareProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_4_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_5_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_6_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_7_0(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processDigitalFlash];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_9(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processDigitalFlash];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void *__nrfp_createStateMachine_block_invoke_10(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processLearnedHRNR];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void AppleCVALibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleCVALibrary(void)") description:{@"BWAppleCVASoftLinking.m", 14, @"%s", *a1}];
  __break(1u);
}

void getkCVAFaceTracking_AddDebugInfo_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_AddDebugInfo) (*)(void))0)()) getkCVAFaceTracking_AddDebugInfo(void)") description:{@"BWAppleCVASoftLinking.m", 16, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_AddMesh_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_AddMesh) (*)(void))0)()) getkCVAFaceTracking_AddMesh(void)") description:{@"BWAppleCVASoftLinking.m", 17, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Callback_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Callback) (*)(void))0)()) getkCVAFaceTracking_Callback(void)") description:{@"BWAppleCVASoftLinking.m", 18, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_CameraColor_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_CameraColor) (*)(void))0)()) getkCVAFaceTracking_CameraColor(void)") description:{@"BWAppleCVASoftLinking.m", 19, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_CameraDepth_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_CameraDepth) (*)(void))0)()) getkCVAFaceTracking_CameraDepth(void)") description:{@"BWAppleCVASoftLinking.m", 20, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Color_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Color) (*)(void))0)()) getkCVAFaceTracking_Color(void)") description:{@"BWAppleCVASoftLinking.m", 21, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ColorMetaData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ColorMetaData) (*)(void))0)()) getkCVAFaceTracking_ColorMetaData(void)") description:{@"BWAppleCVASoftLinking.m", 22, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ColorOnly_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ColorOnly) (*)(void))0)()) getkCVAFaceTracking_ColorOnly(void)") description:{@"BWAppleCVASoftLinking.m", 23, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Depth_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Depth) (*)(void))0)()) getkCVAFaceTracking_Depth(void)") description:{@"BWAppleCVASoftLinking.m", 24, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthMetaData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthMetaData) (*)(void))0)()) getkCVAFaceTracking_DepthMetaData(void)") description:{@"BWAppleCVASoftLinking.m", 25, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource) (*)(void))0)()) getkCVAFaceTracking_DepthSource(void)") description:{@"BWAppleCVASoftLinking.m", 26, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_Pearl_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource_Pearl) (*)(void))0)()) getkCVAFaceTracking_DepthSource_Pearl(void)") description:{@"BWAppleCVASoftLinking.m", 27, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_SMPRaw_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource_SMPRaw) (*)(void))0)()) getkCVAFaceTracking_DepthSource_SMPRaw(void)") description:{@"BWAppleCVASoftLinking.m", 28, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthUnit_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthUnit) (*)(void))0)()) getkCVAFaceTracking_DepthUnit(void)") description:{@"BWAppleCVASoftLinking.m", 29, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceAngleInfoRoll_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceAngleInfoRoll) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceAngleInfoRoll(void)") description:{@"BWAppleCVASoftLinking.m", 30, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceFaceID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceFaceID) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceFaceID(void)") description:{@"BWAppleCVASoftLinking.m", 31, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceRect_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceRect) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceRect(void)") description:{@"BWAppleCVASoftLinking.m", 32, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFacesArray_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFacesArray) (*)(void))0)()) getkCVAFaceTracking_DetectedFacesArray(void)") description:{@"BWAppleCVASoftLinking.m", 33, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityInvalidValue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityInvalidValue) (*)(void))0)()) getkCVAFaceTracking_DisparityInvalidValue(void)") description:{@"BWAppleCVASoftLinking.m", 34, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityNormalizationMultiplier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityNormalizationMultiplier) (*)(void))0)()) getkCVAFaceTracking_DisparityNormalizationMultiplier(void)") description:{@"BWAppleCVASoftLinking.m", 35, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityNormalizationOffset_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityNormalizationOffset) (*)(void))0)()) getkCVAFaceTracking_DisparityNormalizationOffset(void)") description:{@"BWAppleCVASoftLinking.m", 36, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Extrinsics_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Extrinsics) (*)(void))0)()) getkCVAFaceTracking_Extrinsics(void)") description:{@"BWAppleCVASoftLinking.m", 37, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_FaceID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_FaceID) (*)(void))0)()) getkCVAFaceTracking_FaceID(void)") description:{@"BWAppleCVASoftLinking.m", 38, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_FailureType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_FailureType) (*)(void))0)()) getkCVAFaceTracking_FailureType(void)") description:{@"BWAppleCVASoftLinking.m", 39, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Geometry_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Geometry) (*)(void))0)()) getkCVAFaceTracking_Geometry(void)") description:{@"BWAppleCVASoftLinking.m", 40, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_GeometryLandmarks_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_GeometryLandmarks) (*)(void))0)()) getkCVAFaceTracking_GeometryLandmarks(void)") description:{@"BWAppleCVASoftLinking.m", 41, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Intrinsics_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Intrinsics) (*)(void))0)()) getkCVAFaceTracking_Intrinsics(void)") description:{@"BWAppleCVASoftLinking.m", 43, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_LuxLevel_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_LuxLevel) (*)(void))0)()) getkCVAFaceTracking_LuxLevel(void)") description:{@"BWAppleCVASoftLinking.m", 44, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NetworkFailureThresholdMultiplier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NetworkFailureThresholdMultiplier) (*)(void))0)()) getkCVAFaceTracking_NetworkFailureThresholdMultiplier(void)") description:{@"BWAppleCVASoftLinking.m", 45, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NormalizedDisparity_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NormalizedDisparity) (*)(void))0)()) getkCVAFaceTracking_NormalizedDisparity(void)") description:{@"BWAppleCVASoftLinking.m", 46, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NumTrackedFaces_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NumTrackedFaces) (*)(void))0)()) getkCVAFaceTracking_NumTrackedFaces(void)") description:{@"BWAppleCVASoftLinking.m", 47, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Pose_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Pose) (*)(void))0)()) getkCVAFaceTracking_Pose(void)") description:{@"BWAppleCVASoftLinking.m", 48, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Rotation_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Rotation) (*)(void))0)()) getkCVAFaceTracking_Rotation(void)") description:{@"BWAppleCVASoftLinking.m", 49, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_SetCameraDepthFromColor_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_SetCameraDepthFromColor) (*)(void))0)()) getkCVAFaceTracking_SetCameraDepthFromColor(void)") description:{@"BWAppleCVASoftLinking.m", 50, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_SmoothData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_SmoothData) (*)(void))0)()) getkCVAFaceTracking_SmoothData(void)") description:{@"BWAppleCVASoftLinking.m", 51, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_StructuredLightOccluded_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_StructuredLightOccluded) (*)(void))0)()) getkCVAFaceTracking_StructuredLightOccluded(void)") description:{@"BWAppleCVASoftLinking.m", 52, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ThreadPriority_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ThreadPriority) (*)(void))0)()) getkCVAFaceTracking_ThreadPriority(void)") description:{@"BWAppleCVASoftLinking.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Timestamp_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Timestamp) (*)(void))0)()) getkCVAFaceTracking_Timestamp(void)") description:{@"BWAppleCVASoftLinking.m", 54, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_TrackedFacesArray_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_TrackedFacesArray) (*)(void))0)()) getkCVAFaceTracking_TrackedFacesArray(void)") description:{@"BWAppleCVASoftLinking.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_TrackingFailureFieldOfViewModifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_TrackingFailureFieldOfViewModifier) (*)(void))0)()) getkCVAFaceTracking_TrackingFailureFieldOfViewModifier(void)") description:{@"BWAppleCVASoftLinking.m", 56, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Translation_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Translation) (*)(void))0)()) getkCVAFaceTracking_Translation(void)") description:{@"BWAppleCVASoftLinking.m", 57, @"%s", dlerror()}];
  __break(1u);
}

void getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVA_tmrLADzZUFnL94QtJ4Eb9fgi) (*)(void))0)()) getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi(void)") description:{@"BWAppleCVASoftLinking.m", 58, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_UseRecognition_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_UseRecognition) (*)(void))0)()) getkCVAFaceTracking_UseRecognition(void)") description:{@"BWAppleCVASoftLinking.m", 59, @"%s", dlerror()}];
  __break(1u);
}

void soft_CVAFaceTrackingCreate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_CVAFaceTrackingCreate(CFAllocatorRef description:{CFDictionaryRef, CVAFaceTrackingRef *)"), @"BWAppleCVASoftLinking.m", 61, @"%s", dlerror()}];
  __break(1u);
}

void soft_CVAFaceTrackingProcess_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_CVAFaceTrackingProcess(CVAFaceTrackingRef description:{CFDictionaryRef)"), @"BWAppleCVASoftLinking.m", 63, @"%s", dlerror()}];
  __break(1u);
}

uint64_t FigDraw420Rectangle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3(v3);
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM(v4, v5, v6, v7, 0x152, v1, v8, v9, v11);
  *a1 = result;
  return result;
}

uint64_t BWUBCreateDeferredContainerControllerConfiguration(void *a1)
{
  if (![a1 deferredCaptureSupportEnabled])
  {
    return 0;
  }

  v2 = objc_alloc_init(BWDeferredCaptureControllerConfiguration);
  v3 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v3 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  return v1;
}

uint64_t BWUBCreateDeferredProcessorControllerConfiguration(void *a1)
{
  if (![a1 deferredPhotoProcessorEnabled])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWDeferredProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 deferredCaptureSupportEnabled];
  [OUTLINED_FUNCTION_4() setDeferredCaptureSupportEnabled:?];
  [a1 deferredPhotoProcessorEnabled];
  [OUTLINED_FUNCTION_4() setDeferredPhotoProcessorEnabled:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t BWUBCreateDeepFusionProcessorControllerConfiguration(void *a1)
{
  if (!-[BWUBNodeConfiguration deepFusionSupportEnabled](a1) || ([a1 deferredCaptureSupportEnabled] & 1) != 0)
  {
    return 0;
  }

  v3 = objc_alloc_init(BWDeepFusionProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [a1 deferredCaptureSupportEnabled];
  [OUTLINED_FUNCTION_4() setDeferredCaptureSupportEnabled:?];
  [a1 deferredPhotoProcessorEnabled];
  [OUTLINED_FUNCTION_4() setDeferredPhotoProcessorEnabled:?];
  [(BWUBNodeConfiguration *)a1 stillImageFusionScheme];
  [OUTLINED_FUNCTION_4() setStillImageFusionScheme:?];
  [(BWUBNodeConfiguration *)a1 rawColorCalibrationsByPortType];
  [OUTLINED_FUNCTION_4() setRawColorCalibrationsByPortType:?];
  [(BWUBNodeConfiguration *)a1 rawLensShadingCorrectionCoefficientsByPortType];
  [OUTLINED_FUNCTION_4() setRawLensShadingCorrectionCoefficientsByPortType:?];
  return v1;
}

BWLearnedNRProcessorControllerConfiguration *BWUBCreateLearnedNRProcessorControllerConfiguration(void *a1)
{
  if (([(BWUBNodeConfiguration *)a1 learnedNRMode]& 5) == 0)
  {
    return 0;
  }

  v2 = objc_alloc_init(BWLearnedNRProcessorControllerConfiguration);
  [(BWStillImageProcessorControllerConfiguration *)v2 setSensorConfigurationsByPortType:[(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType]];
  -[BWStillImageProcessorControllerConfiguration setMetalCommandQueue:](v2, "setMetalCommandQueue:", [a1 metalCommandQueue]);
  -[BWStillImageProcessorControllerConfiguration setInferenceScheduler:](v2, "setInferenceScheduler:", [a1 inferenceScheduler]);
  -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v2, "setFigThreadPriority:", [a1 figThreadPriority]);
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BWUBNodeConfiguration *)a1 portTypesWithGeometricDistortionCorrectionEnabled];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:&unk_1F224A850 forKeyedSubscript:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  [(BWLearnedNRProcessorControllerConfiguration *)v2 setFinalCropRectOverscanMultiplierByPortType:v3];
  return v2;
}

void *BWUBCreateInferenceControllerConfiguration(void *a1)
{
  if ([a1 deferredPhotoProcessorEnabled])
  {
    return 0;
  }

  v3 = ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]|| [(BWUBNodeConfiguration *)a1 semanticDevelopmentVersion]) && (([(BWUBNodeConfiguration *)a1 unifiedBracketingFusionSupportEnabled]& 1) != 0 || [(BWUBNodeConfiguration *)a1 learnedNRMode]!= 0);
  [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1) count];
  v4 = OUTLINED_FUNCTION_27_0();
  if (([(BWUBNodeConfiguration *)v4 redEyeReductionEnabled]& 1) != 0 || v3 || ([(BWUBNodeConfiguration *)a1 semanticStyleRenderingEnabled]& 1) != 0 || v1)
  {
    v5 = objc_alloc_init(BWInferenceEngineControllerConfiguration);
    v6 = OUTLINED_FUNCTION_27_0();
    [(BWUBNodeConfiguration *)v6 sensorConfigurationsByPortType];
    [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
    [a1 metalCommandQueue];
    [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
    [a1 inferenceScheduler];
    [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
    [a1 figThreadPriority];
    [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
    [v1 setFastMattingEnabled:-[BWUBNodeConfiguration semanticRenderingVersion](a1) > 1];
    v7 = [MEMORY[0x1E695DFA8] set];
    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]< 1)
    {
      v8 = 0;
    }

    else
    {
      [v7 addObject:@"PersonSemanticsSkin"];
      [v7 addObject:0x1F219E750];
      v8 = 2;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]> 1)
    {
      [v7 addObject:0x1F21AAD30];
    }

    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]>= 3)
    {
      BWInferenceLowResPersonInstanceMaskKeys();
      [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
      v8 |= 0x10uLL;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticDevelopmentVersion])
    {
      v8 |= 8uLL;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticStyleRenderingEnabled])
    {
      [v7 addObject:@"PersonSemanticsSkin"];
      [v7 addObject:0x1F21AAD30];
      [v7 addObject:0x1F219E750];
      [v1 setSmartCameraClassificationsEnabled:1];
    }

    v23 = v1;
    v9 = [(BWUBNodeConfiguration *)a1 redEyeReductionEnabled];
    v10 = v8 | 6;
    v30 = 0u;
    v31 = 0u;
    if (!v9)
    {
      v10 = v8;
    }

    v22 = v10;
    v32 = 0uLL;
    v33 = 0uLL;
    v11 = [(BWUBNodeConfiguration *)a1 providedInferenceAttachedMediaByMode];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1) objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v7 addObject:{*(*(&v25 + 1) + 8 * j), v22}];
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v24 count:16];
            }

            while (v18);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v13);
    }

    v1 = v23;
    [v23 setMattingOutputValidContentDetectionEnabled:{objc_msgSend(-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1), "objectForKeyedSubscript:", &unk_1F2244320) != 0}];
    [v7 allObjects];
    [OUTLINED_FUNCTION_4() setEnabledInferenceMasks:?];
    [v23 setEnabledVisionInferences:v22];
    [(BWUBNodeConfiguration *)a1 personSemanticsVersion];
    [OUTLINED_FUNCTION_4() setPersonSemanticsVersion:?];
  }

  return v1;
}

uint64_t BWUBCreateRedEyeProcessorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 redEyeReductionEnabled])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWStillImageProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t BWUBCreateIntelligentDistortionCorrectionProcessorControllerConfiguration(void *a1)
{
  if (![-[BWUBNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](a1) count] && !objc_msgSend(-[BWUBNodeConfiguration portTypesWithGeometricDistortionCorrectionEnabled](a1), "count"))
  {
    return 0;
  }

  v3 = objc_alloc_init(BWIntelligentDistortionCorrectionProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithGeometricDistortionCorrectionEnabled];
  [OUTLINED_FUNCTION_4() setPortTypesWithGeometricDistortionCorrectionEnabled:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithIntelligentDistortionCorrectionEnabled];
  [OUTLINED_FUNCTION_4() setPortTypesWithIntelligentDistortionCorrectionEnabled:?];
  [(BWUBNodeConfiguration *)a1 geometricDistortionCorrectionExpandedImageDimensions];
  [OUTLINED_FUNCTION_4() setGeometricDistortionCorrectionExpandedImageDimensions:?];
  [(BWUBNodeConfiguration *)a1 intelligentDistortionCorrectionVersion];
  [OUTLINED_FUNCTION_4() setIntelligentDistortionCorrectionVersion:?];
  [(BWUBNodeConfiguration *)a1 intelligentDistortionCorrectionAppliesFinalDimensions];
  [OUTLINED_FUNCTION_4() setIntelligentDistortionCorrectionAppliesFinalDimensions:?];
  [(BWUBNodeConfiguration *)a1 horizontalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setHorizontalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 verticalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setVerticalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 providedInferenceAttachedMediaByMode];
  [OUTLINED_FUNCTION_4() setProvidedInferenceAttachedMediaByMode:?];
  return v1;
}

BWDeepZoomProcessorControllerConfiguration *BWUBCreateDeepZoomProcessorControllerConfiguration(void *a1)
{
  if ([(BWUBNodeConfiguration *)a1 deepZoomVersion]< 1)
  {
    return 0;
  }

  if (([a1 deferredPhotoProcessorEnabled] & 1) == 0)
  {
    if (-[BWUBNodeConfiguration deepZoomVersion](a1) >= 2 && ([a1 deferredCaptureSupportEnabled] & 1) == 0)
    {
      v2 = 2;
      goto LABEL_7;
    }

    return 0;
  }

  v2 = 1;
LABEL_7:
  v3 = objc_alloc_init(BWDeepZoomProcessorControllerConfiguration);
  [(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_8() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_8() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_8() setInferenceScheduler:?];
  -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v3, "setFigThreadPriority:", [a1 figThreadPriority]);
  [(BWDeepZoomProcessorControllerConfiguration *)v3 setVersion:[(BWUBNodeConfiguration *)a1 deepZoomVersion]];
  [(BWDeepZoomProcessorControllerConfiguration *)v3 setType:v2];
  return v3;
}

uint64_t BWUBCreateStereoDisparityProcessorControllerConfiguration(void *a1)
{
  v3 = [(BWUBNodeConfiguration *)a1 disparityOutputDimensions];
  v4 = v3 < 1 || SHIDWORD(v3) < 1;
  if (v4 || ([(BWUBNodeConfiguration *)a1 generateLiDARDepth]& 1) != 0)
  {
    return 0;
  }

  v5 = objc_alloc_init(BWStereoDisparityProcessorControllerConfiguration);
  v6 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v6 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithDepthSegmentationPortraitParameters];
  [OUTLINED_FUNCTION_4() setPortTypesWithDepthSegmentationPortraitParameters:?];
  [(BWUBNodeConfiguration *)a1 disparityOutputDimensions];
  [OUTLINED_FUNCTION_4() setDisparityOutputDimensions:?];
  [a1 depthDataType];
  [OUTLINED_FUNCTION_4() setStillImageDepthDataType:?];
  [(BWUBNodeConfiguration *)a1 shouldComputeDisparityWhenCalibrationFails];
  [OUTLINED_FUNCTION_4() setShouldComputeDisparityWhenCalibrationFails:?];
  return v1;
}

BWJasperColorStillsExecutorControllerConfiguration *BWUBCreateJasperColorStillsExecutorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 depthDataDeliveryEnabled]|| ![(BWUBNodeConfiguration *)a1 jasperSensorConfiguration]|| ![(BWUBNodeConfiguration *)a1 digitalFlashSupportEnabled])
  {
    return 0;
  }

  v2 = MEMORY[0x1E695DF90];
  [(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType];
  v3 = [OUTLINED_FUNCTION_4() dictionaryWithDictionary:?];
  [(BWUBNodeConfiguration *)a1 jasperSensorConfiguration];
  v4 = OUTLINED_FUNCTION_27_0();
  [v3 setObject:v2 forKeyedSubscript:{objc_msgSend(-[BWUBNodeConfiguration jasperSensorConfiguration](v4), "portType")}];
  v5 = objc_alloc_init(BWJasperColorStillsExecutorControllerConfiguration);
  [(BWStillImageProcessorControllerConfiguration *)v5 setSensorConfigurationsByPortType:v3];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 horizontalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setHorizontalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 verticalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setVerticalSensorBinningFactor:?];
  return v5;
}

uint64_t BWUBCreateJasperDisparityProcessorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 generateLiDARDepth])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWJasperDisparityProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t powerBlurNoiseReductionGPU_cold_1(_DWORD *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  *a2 = *a1;
  return result;
}

void *csu_secondaryNativeResolutionZoomFactorsForFormatIndex(void *a1, void *a2, uint64_t a3)
{
  v6 = [a2 objectAtIndexedSubscript:a3];
  v7 = [v6 objectForKeyedSubscript:*off_1E798C998];
  result = [v7 count];
  if (result)
  {
    v31 = v6;
    v32 = a1;
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
    v10 = 0x1E696A000uLL;
    [MEMORY[0x1E696AD98] numberWithInt:a3];
    [OUTLINED_FUNCTION_17() addObject:?];
    v11 = [MEMORY[0x1E695DFA8] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v13 = OUTLINED_FUNCTION_1_18(v11, v12, &v36, v35);
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      v16 = MEMORY[0x1E695F058];
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        if (([v18 intValue] & 0x80000000) != 0)
        {
          return 0;
        }

        v19 = v10;
        v20 = [v18 intValue];
        if ([a2 count] <= v20)
        {
          return 0;
        }

        [a2 objectAtIndexedSubscript:{objc_msgSend(v18, "intValue")}];
        v34 = *(v16 + 16);
        if (!FigCFDictionaryGetCGRectIfPresent())
        {
          return 0;
        }

        HIDWORD(v21) = DWORD1(v34);
        *&v21 = *&v34;
        v10 = v19;
        [*(v19 + 3480) numberWithFloat:v21];
        [OUTLINED_FUNCTION_28() addObject:?];
        if (v14 == ++v17)
        {
          v14 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v11 count] < 2)
    {
      return 0;
    }

    v22 = [objc_msgSend(v11 "allObjects")];
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [v22 count];
    if (v24 >= 2)
    {
      for (i = (v24 - 2); i != -1; --i)
      {
        [objc_msgSend(v22 "lastObject")];
        v27 = v26;
        [objc_msgSend(v22 objectAtIndexedSubscript:{i), "floatValue"}];
        *&v29 = v27 / v28;
        [*(v10 + 3480) numberWithFloat:v29];
        [OUTLINED_FUNCTION_8() addObject:?];
      }
    }

    [objc_msgSend(v31 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
    return BWFilterNonDisruptiveSwitchingFormatZoomFactors(v32, v23, v30);
  }

  return result;
}

uint64_t fcsbp_plistCreateAndPreprocess(__CFString *a1, uint64_t *a2)
{
  v61[0] = 0;
  v4 = FigCaptureCFCreatePropertyListForModelWithFileModificationDate(@"AVCaptureSession.plist", a1, v61);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(FigCaptureFlatPlist *)v4 mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"AVCaptureDevices"];
    if (!v6)
    {
      DeepCopy = 0;
LABEL_17:
      v35 = [v5 copy];
      goto LABEL_18;
    }

    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *MEMORY[0x1E695E480];
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v7, 1uLL);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v17 = OUTLINED_FUNCTION_60_6(DeepCopy, v10, v11, v12, v13, v14, v15, v16, v5, v4, a2, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
      if (v17)
      {
        v18 = v17;
        v19 = *v58;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v58 != v19)
            {
              objc_enumerationMutation(v7);
            }

            v21 = *(*(&v57 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"deviceInfoBase"];
            if (v22)
            {
              v30 = v22;
              v40 = 0;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v31 = FigCaptureCFCreatePropertyListForModelWithFileModificationDate(v30, a1, &v40)) == 0)
              {
                v35 = 0;
                v4 = v38;
                a2 = v39;
                v5 = v37;
                goto LABEL_18;
              }

              v32 = v31;
              v61[0] = [v40 laterDate:v61[0]];
              v33 = CFPropertyListCreateDeepCopy(v8, v32, 1uLL);
              [v33 setObject:0 forKeyedSubscript:@"deviceInfoBase"];
              FigCFDictionaryAddEntriesToDictionaryWithRecursion();
              v22 = [DeepCopy setObject:v33 atIndexedSubscript:{objc_msgSend(v7, "indexOfObject:", v21)}];
            }
          }

          v18 = OUTLINED_FUNCTION_60_6(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      csu_preprocessDeviceDicts(DeepCopy);
      v34 = [DeepCopy copy];
      v5 = v37;
      [OUTLINED_FUNCTION_8_8() setObject:? forKeyedSubscript:?];

      v4 = v38;
      a2 = v39;
      goto LABEL_17;
    }

    v35 = 0;
  }

  else
  {
    v35 = 0;
    v5 = 0;
  }

  DeepCopy = 0;
LABEL_18:
  if (a2)
  {
    *a2 = v61[0];
  }

  return v35;
}

void *csu_createBackingsFromCaptureSourceInfoDict(void *a1, uint64_t a2)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3(v12);
  }

  [a1 objectForKeyedSubscript:@"DependentUserDefaults"];
  csu_dependentUserDefaultsDictionary();
  if (!FigCFEqual())
  {
    return 0;
  }

  v3 = [a1 objectForKeyedSubscript:@"FileModificationDate"];
  v23 = 0;
  ModelSpecificName = FigCaptureGetModelSpecificName(v3, v4);

  if (([v3 isEqualToDate:v23] & 1) == 0)
  {
    if (!dword_1EB58DF60)
    {
      return 0;
    }

    v13 = OUTLINED_FUNCTION_3_56();
    v14 = OUTLINED_FUNCTION_24_13(v13);
    if (!OUTLINED_FUNCTION_6(v14))
    {
      goto LABEL_25;
    }

LABEL_12:
    OUTLINED_FUNCTION_10_28();
LABEL_24:
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    goto LABEL_25;
  }

  if ((objc_msgSend_isEqualToString_([a1 objectForKeyedSubscript:@"InterpreterBuildDate"]) & 1) == 0)
  {
    if (!dword_1EB58DF60)
    {
      return 0;
    }

    v15 = OUTLINED_FUNCTION_3_56();
    v16 = OUTLINED_FUNCTION_24_13(v15);
    if (!OUTLINED_FUNCTION_6(v16))
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  v6 = [a1 objectForKeyedSubscript:@"DeviceModel"];
  v8 = FigCaptureGetModelSpecificName(v6, v7);
  if ((objc_msgSend_isEqualToString_(v8) & 1) == 0)
  {
    if (dword_1EB58DF60)
    {
      v17 = OUTLINED_FUNCTION_3_56();
      if (os_log_type_enabled(v17, v21))
      {
        v18 = v22;
      }

      else
      {
        v18 = v22 & 0xFFFFFFFE;
      }

      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"ExperimentsEnabled", "BOOLValue"}])
  {
    if (dword_1EB58DF60)
    {
      v19 = OUTLINED_FUNCTION_3_56();
      v20 = OUTLINED_FUNCTION_24_13(v19);
      if (OUTLINED_FUNCTION_6(v20))
      {
        goto LABEL_24;
      }

LABEL_25:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v9 = csu_createInMemorySourcesArrayFromOnDiskSourcesArray([a1 objectForKeyedSubscript:@"Sources"]);
  v10 = -[FigCaptureSourceBackingsProvider initWithSourceInfoDictionaries:commonSettings:]([FigCaptureSourceBackingsProvider alloc], v9, [a1 objectForKeyedSubscript:@"CommonSettings"]);

  return v10;
}

void *csu_addMetadataAttributes(void *a1, uint64_t a2, int a3, int a4, void *a5)
{
  v53 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF70] array];
  if (a2)
  {
    v11 = *(a2 + 8);
    if (v11 <= 0x14 && ((1 << v11) & 0x100420) != 0)
    {
      v13 = 0;
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 - 21 < 0xFFFFFFFC;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (![a5 objectForKeyedSubscript:@"faceTrackingSupported"] || objc_msgSend(objc_msgSend(a5, "objectForKeyedSubscript:", @"faceTrackingSupported"), "BOOLValue"))
  {
    [v10 addObject:*MEMORY[0x1E69629E8]];
  }

LABEL_13:
  if (v13)
  {
    [v10 addObject:*MEMORY[0x1E69629D8]];
    [v10 addObject:*off_1E798D150];
    if (MGGetBoolAnswer())
    {
      [v10 addObject:*off_1E798D120];
    }

    if ([objc_msgSend(a1 objectForKeyedSubscript:{@"SmartCameraSupported", "BOOLValue"}])
    {
      [v10 addObject:*off_1E798D148];
    }
  }

  v51 = a2;
  v52 = v10;
  if (a2)
  {
    v14 = *(a2 + 32);
    v15 = (*(a2 + 8) - 17) < 4;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = [MEMORY[0x1E695DF70] array];
  [v16 addObject:*MEMORY[0x1E6960388]];
  v59[0] = @"EyeDetection";
  v59[1] = @"BlinkDetection";
  v60[0] = MEMORY[0x1E695E118];
  v60[1] = MEMORY[0x1E695E118];
  v59[2] = @"SmileDetection";
  v60[2] = MEMORY[0x1E695E118];
  v54 = a1;
  [a1 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v60, v59, 3), @"SupportedOptionalFaceDetectionFeatures"}];
  if (a3)
  {
    [a1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ObjectsDetection"];
    v17 = [v14 getPropertyIfSupported:*off_1E798C0B8 error:0];
    if (v17)
    {
      v18 = v17;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v19 = [v17 countByEnumeratingWithState:&v55 objects:&v61 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v56;
        do
        {
          v22 = 0;
          do
          {
            if (*v56 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v55 + 1) + 8 * v22);
            if ((!v15 || (objc_msgSend_isEqualToString_(*(*(&v55 + 1) + 8 * v22)) & 1) == 0) && v23)
            {
              if (_MergedGlobals_7 != -1)
              {
                dispatch_once(&_MergedGlobals_7, &__block_literal_global_456);
              }

              if ([qword_1ED844F58 objectForKeyedSubscript:v23])
              {
                [OUTLINED_FUNCTION_28() addObject:?];
              }
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v55 objects:&v61 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v24 = FigCapturePlatformIdentifier();
      v25 = *MEMORY[0x1E6960368];
      v61 = *MEMORY[0x1E6960390];
      v62 = v25;
      v26 = *off_1E798D0E0;
      v63 = *MEMORY[0x1E6960378];
      v64 = v26;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:4];
      [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
      if (!v15)
      {
        [v16 addObject:*MEMORY[0x1E6960398]];
      }

      if (v24 >= 8)
      {
        v27 = *MEMORY[0x1E6960380];
        *&v55 = *MEMORY[0x1E6960370];
        *(&v55 + 1) = v27;
        *&v56 = *off_1E798D0D0;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:3];
        [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
        if (v24 >= 0xA)
        {
          [v16 addObject:*off_1E798D0D8];
        }
      }
    }
  }

  if (v51)
  {
    v28 = *(v51 + 8);
    if (v28 - 17 > 3)
    {
      v30 = 0;
      v36 = v54;
      v37 = v52;
    }

    else
    {
      v29 = *(v51 + 32);
      v30 = [MEMORY[0x1E695DF70] array];
      v31 = [objc_msgSend(objc_msgSend(objc_msgSend(v29 getProperty:*off_1E798C1B8 error:{0), "firstObject"), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", *off_1E798CA88}];
      v32 = [objc_msgSend(a5 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}];
      v33 = [v31 objectForKeyedSubscript:*off_1E798B010];
      v34 = [v31 objectForKeyedSubscript:*off_1E798B018];
      v35 = [v31 objectForKeyedSubscript:*off_1E798B028];
      v36 = v54;
      if (v32)
      {
        [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219FFF0];
      }

      if ([objc_msgSend(a5 objectForKeyedSubscript:{@"metadataFrameRateControlSupported", "BOOLValue"}])
      {
        [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MetadataFrameRateControlSupported"];
      }

      v37 = v52;
      if (v28 == 20)
      {
        [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AttentionDetectionSupported"];
      }

      if (v34)
      {
        [v54 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FaceOcclusionDetectionSupported"];
      }

      if (v33)
      {
        [v30 addObject:*off_1E798D128];
      }

      if (v34)
      {
        [v30 addObject:*off_1E798D130];
      }

      if (v35)
      {
        [v30 addObject:*off_1E798D140];
      }

      v28 = *(v51 + 8);
    }

    if (v28 <= 0x14 && ((1 << v28) & 0x100420) != 0 || v28 - 21 > 0xFFFFFFFB)
    {
      v38 = 0;
      v39 = v53;
      goto LABEL_62;
    }

    v39 = v53;
  }

  else
  {
    v30 = 0;
    v39 = v53;
    v36 = v54;
    v37 = v52;
  }

  v41 = *MEMORY[0x1E6962968];
  v61 = *MEMORY[0x1E6962960];
  v62 = v41;
  v42 = *MEMORY[0x1E6962978];
  v63 = *MEMORY[0x1E6962970];
  v64 = v42;
  v43 = *MEMORY[0x1E6962988];
  v65 = *MEMORY[0x1E6962980];
  v66 = v43;
  v44 = *MEMORY[0x1E6962998];
  v67 = *MEMORY[0x1E6962990];
  v68 = v44;
  v45 = *MEMORY[0x1E69629A8];
  v69 = *MEMORY[0x1E69629A0];
  v70 = v45;
  v46 = *MEMORY[0x1E69629B8];
  v71 = *MEMORY[0x1E69629B0];
  v72 = v46;
  v47 = *off_1E798D0F0;
  v73 = *MEMORY[0x1E69629C0];
  v74 = v47;
  v48 = *off_1E798D100;
  v75 = *off_1E798D0F8;
  v76 = v48;
  v49 = *off_1E798D118;
  v77 = *off_1E798D108;
  v78 = v49;
  v50 = *off_1E798D0E8;
  v79 = *off_1E798D110;
  v80 = v50;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:20];
LABEL_62:
  if ([v37 count])
  {
    [v39 setObject:v37 forKeyedSubscript:@"MetadataGroup-Misc"];
  }

  if ([v16 count])
  {
    [v39 setObject:v16 forKeyedSubscript:@"MetadataGroup-ObjectDetection"];
  }

  if ([v30 count])
  {
    [v39 setObject:v30 forKeyedSubscript:@"MetadataGroup-SecureMetadata"];
  }

  if ([v38 count])
  {
    [v39 setObject:v38 forKeyedSubscript:@"MetadataGroup-MRC"];
  }

  if ([v39 count])
  {
    [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
  }

  result = [objc_msgSend(v36 objectForKeyedSubscript:{0x1F219FFF0), "BOOLValue"}];
  if (result)
  {
    return [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
  }

  return result;
}