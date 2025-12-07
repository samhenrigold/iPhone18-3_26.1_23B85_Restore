id FigCaptureMetadataUtilitiesGetTimeZoneFormatter()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptureMetadataUtilitiesGetTimeZoneFormatter_block_invoke_2;
  block[3] = &unk_1E798FEA0;
  block[4] = &__block_literal_global_180;
  if (FigCaptureMetadataUtilitiesGetTimeZoneFormatter_onceToken != -1)
  {
    dispatch_once(&FigCaptureMetadataUtilitiesGetTimeZoneFormatter_onceToken, block);
  }

  os_unfair_lock_lock(&FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sLock);
  v0 = FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sTimeZoneFormatter;
  os_unfair_lock_unlock(&FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sLock);
  return v0;
}

double FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return *&v2;
  }

  else
  {
    return FigCaptureUnityRect();
  }
}

void *FigCaptureMetadataUtilitiesGetIrisAssetIdentifierForSettingsAndSampleBuffer(void *a1, const void *a2)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(CMGetAttachment(a2 *off_1E798A3C8] == 4)
  {
    v4 = [a1 movieLevelMetadataForOriginalImage];
  }

  else
  {
    v4 = [objc_msgSend(a1 "movieRecordingSettings")];
  }

  v6 = *MEMORY[0x1E6973540];

  return fcmu_extractIdentiferFromMetadata(v4, v6);
}

void *fcmu_extractIdentiferFromMetadata(void *a1, uint64_t a2)
{
  v4 = fcmu_indexInMetadataArrayOfQuickTimeMetadataDictionary(a1);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = [a1 objectAtIndexedSubscript:v4];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E6971F90]];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  result = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
    v10 = *MEMORY[0x1E6971F40];
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(v12 objectForKeyedSubscript:{v10), "isEqual:", a2}])
        {
          return [v12 objectForKeyedSubscript:*MEMORY[0x1E6971F80]];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
      result = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t FigCaptureMetadataUtilitiesGetStillImageMetadataInSettingsForSampleBuffer(void *a1, const void *a2)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([CMGetAttachment(a2 @"StillImageProcessingFlags"])
  {

    return [a1 metadataForOriginalImage];
  }

  else
  {

    return [a1 metadata];
  }
}

uint64_t FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(void *a1, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, double a7, CGFloat a8, double a9, double a10, CGFloat a11)
{
  if (qword_1ED844E88 != -1)
  {
    v117 = a6.n128_u64[0];
    v118 = a5.n128_u64[0];
    v119 = a4.n128_u64[0];
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
    a4.n128_u64[0] = v119;
    a5.n128_u64[0] = v118;
    a6.n128_u64[0] = v117;
    if (a1)
    {
      goto LABEL_3;
    }

    return FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop_cold_4(a4, a5, a6);
  }

  if (!a1)
  {
    return FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop_cold_4(a4, a5, a6);
  }

LABEL_3:
  if (a2 < 1 || a2 <= 0)
  {
    return FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop_cold_2(a4, a5, a6);
  }

  if (a3 < 1 || a3 <= 0)
  {
    return FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop_cold_3(a4, a5, a6);
  }

  v135 = a2;
  v126 = a10;
  r2 = a9;
  v19 = a4.n128_f64[0];
  v20 = a5.n128_f64[0];
  v21 = a6.n128_f64[0];
  v22 = a7;
  IsNull = CGRectIsNull(*a4.n128_u64);
  v24 = a7;
  v25 = 0;
  if (IsNull)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v19;
  }

  if (IsNull)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v20;
  }

  v133 = v27;
  v134 = v26;
  v28 = a2;
  if (!IsNull)
  {
    v28 = v21;
  }

  v131 = HIDWORD(a2);
  v132 = v28;
  if (IsNull)
  {
    v29 = HIDWORD(a2);
  }

  else
  {
    v29 = v24;
  }

  v149.origin.x = a8;
  v149.origin.y = r2;
  v149.size.width = v126;
  v149.size.height = a11;
  v30 = CGRectIsNull(v149);
  if (v30)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = a8;
  }

  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = r2;
  }

  r2a = a3;
  if (v30)
  {
    v33 = a3;
  }

  else
  {
    v33 = v126;
  }

  memset(&v148.c, 0, 32);
  if (v30)
  {
    v34 = HIDWORD(a3);
  }

  else
  {
    v34 = a11;
  }

  *&v148.a = 0uLL;
  v124 = v32;
  v125 = v31;
  v122 = v34;
  v123 = v33;
  FigCaptureComputeAffineTransformFromSourceAndDestRects(&v148, v134, v133, v132, v29, v31, v32, v33, v34);
  v146 = 0u;
  v147 = 0u;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v25 = *(&v146 + 1);
    v35 = v146;
    v37 = *(&v147 + 1);
    v36 = *&v147;
  }

  else
  {
    v146 = 0uLL;
    v37 = HIDWORD(a2);
    v36 = a2;
    v35 = 0;
    *&v147 = a2;
    *(&v147 + 1) = HIDWORD(a2);
  }

  v38 = v25;
  v164.origin.x = v134;
  v164.origin.y = v133;
  v164.size.width = v132;
  v128 = v29;
  v164.size.height = v29;
  v150 = CGRectIntersection(*&v35, v164);
  t1 = v148;
  v151 = CGRectApplyAffineTransform(v150, &t1);
  v165.origin.x = 0.0;
  v165.origin.y = 0.0;
  v165.size.width = a3;
  v127 = HIDWORD(a3);
  v165.size.height = HIDWORD(a3);
  v152 = CGRectIntersection(v151, v165);
  x = v152.origin.x;
  y = v152.origin.y;
  width = v152.size.width;
  height = v152.size.height;
  FigCFDictionarySetCGRect();
  FigCaptureMetadataUtilitiesNormalizeCropRect(*&v146, *(&v146 + 1), *&v147, *(&v147 + 1), v135, v131);
  v120 = v43;
  v121 = v44;
  v46 = v45;
  v48 = v47;
  t2 = v148;
  CGAffineTransformInvert(&t1, &t2);
  v153.origin.x = x;
  v153.origin.y = y;
  v153.size.width = width;
  v153.size.height = height;
  v154 = CGRectApplyAffineTransform(v153, &t1);
  FigCaptureMetadataUtilitiesNormalizeCropRect(v154.origin.x, v154.origin.y, v154.size.width, v154.size.height, v135, v131);
  v50 = v49 / v46;
  v52 = v51 / v48;
  v54 = (v53 - v120) / v46;
  v142 = 0u;
  v143 = 0u;
  v56 = *off_1E798B790;
  v57 = (v55 - v121) / v48;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v58 = HIDWORD(a2);
    v59 = *(&v142 + 1);
    v60 = *&v142;
    v61 = *(&v143 + 1);
    v62 = *&v143;
  }

  else
  {
    v142 = 0uLL;
    v61 = HIDWORD(a2);
    v62 = a2;
    v59 = 0.0;
    v60 = 0.0;
    *&v143 = a2;
    *(&v143 + 1) = HIDWORD(a2);
    v58 = HIDWORD(a2);
  }

  v63 = v50 * v62;
  v64 = v52 * v61;
  v65 = v60 + v62 * v54;
  v66 = v59 + v61 * v57;
  v67 = *off_1E798B2D8;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B2D8, *&v120, *&v121), "floatValue"}];
  [objc_msgSend(a1 objectForKeyedSubscript:{v67), "floatValue"}];
  if (*&v68 != 0.0)
  {
    v69 = *&v143;
    if (v69 != 0.0)
    {
      v70 = *(&v143 + 1);
      if (v70 != 0.0)
      {
        v71 = v63;
        v72 = v64;
        if (v71 != v69 || v72 != v70)
        {
          *&v68 = *&v68 * (sqrtf((v70 * v70) + (v69 * v69)) / sqrtf((v72 * v72) + (v71 * v71)));
          [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v68), v67}];
        }
      }
    }
  }

  v155.origin.x = v65;
  v155.origin.y = v66;
  v155.size.width = v63;
  v155.size.height = v64;
  [a1 setObject:CGRectCreateDictionaryRepresentation(v155) forKeyedSubscript:v56];
  [objc_msgSend(a1 objectForKeyedSubscript:{v67), "floatValue"}];
  v140 = 0u;
  v141 = 0u;
  v74 = *off_1E798A5C8;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v76 = *(&v140 + 1);
    v75 = *&v140;
    v78 = *(&v141 + 1);
    v77 = *&v141;
  }

  else
  {
    v140 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v141 = _Q0;
    v76 = 0.0;
    v78 = 1.0;
    v77 = 1.0;
    v75 = 0.0;
  }

  FigCaptureMetadataUtilitiesDenormalizeCropRect(v75, v76, v77, v78, v135, v58);
  t1 = v148;
  v157 = CGRectApplyAffineTransform(v156, &t1);
  FigCaptureMetadataUtilitiesNormalizeCropRect(v157.origin.x, v157.origin.y, v157.size.width, v157.size.height, r2a, v127);
  v83 = 0.0;
  v166.origin.x = 0.0;
  v166.origin.y = 0.0;
  v166.size.width = 1.0;
  v166.size.height = 1.0;
  v159 = CGRectIntersection(v158, v166);
  v84 = 0.01 / v127;
  if (fabs(v159.origin.x) >= 0.01 / r2a)
  {
    v85 = v159.origin.x;
  }

  else
  {
    v85 = 0.0;
  }

  if (fabs(v159.origin.y) >= v84)
  {
    v83 = v159.origin.y;
  }

  v86 = vabdd_f64(1.0, v159.origin.x + v159.size.width);
  v87 = 1.0 - v159.origin.x;
  if (v86 >= 0.01 / r2a)
  {
    v88 = v159.size.width;
  }

  else
  {
    v88 = v87;
  }

  v89 = vabdd_f64(1.0, v159.origin.y + v159.size.height);
  v90 = 1.0 - v159.origin.y;
  if (v89 >= v84)
  {
    v91 = v159.size.height;
  }

  else
  {
    v91 = v90;
  }

  v167.origin.x = 0.0;
  v167.origin.y = 0.0;
  v167.size.width = 1.0;
  v167.size.height = 1.0;
  v160.origin.x = v85;
  v160.origin.y = v83;
  v160.size.width = v88;
  v160.size.height = v91;
  if (CGRectEqualToRect(v160, v167))
  {
    [a1 removeObjectForKey:v74];
  }

  else
  {
    FigCFDictionarySetCGRect();
  }

  v93 = v133;
  v92 = v134;
  v94 = v132;
  v95 = *(MEMORY[0x1E695F050] + 16);
  v139.origin = *MEMORY[0x1E695F050];
  v139.size = v95;
  v96 = *off_1E798A7A0;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v168.origin.x = v134;
    v168.origin.y = v133;
    v168.size.width = v132;
    v168.size.height = v128;
    v161 = CGRectIntersection(v139, v168);
    t1 = v148;
    v162 = CGRectApplyAffineTransform(v161, &t1);
    v169.origin.x = 0.0;
    v169.origin.y = 0.0;
    v169.size.width = r2a;
    v169.size.height = v127;
    v163 = CGRectIntersection(v162, v169);
    v170.origin.x = 0.0;
    v170.origin.y = 0.0;
    v170.size.width = r2a;
    v170.size.height = v127;
    if (CGRectEqualToRect(v163, v170))
    {
      [a1 removeObjectForKey:v96];
    }

    else
    {
      FigCFDictionarySetCGRect();
    }

    v93 = v133;
    v92 = v134;
    v94 = v132;
  }

  memset(&v138, 0, sizeof(v138));
  v97 = *off_1E798A960;
  v98 = [a1 objectForKeyedSubscript:*off_1E798A960];
  if (v98)
  {
    FigCaptureAffineTransformFromDictionaryRepresentation(v98, &v138);
  }

  else
  {
    v99 = *(MEMORY[0x1E695EFD0] + 16);
    *&v138.a = *MEMORY[0x1E695EFD0];
    *&v138.c = v99;
    *&v138.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  memset(&v137, 0, sizeof(v137));
  FigCaptureMetadataUtilitiesNormalizeCropRect(v92, v93, v94, v128, v135, v58);
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  FigCaptureMetadataUtilitiesNormalizeCropRect(v125, v124, v123, v122, r2a, v127);
  FigCaptureComputeAffineTransformFromSourceAndDestRects(&v137, v101, v103, v105, v107, v108, v109, v110, v111);
  memset(&v136, 0, sizeof(v136));
  t1 = v138;
  t2 = v137;
  CGAffineTransformConcat(&v136, &t1, &t2);
  t1 = v136;
  [a1 setObject:FigCaptureDictionaryRepresentationForAffineTransform(&t1.a) forKeyedSubscript:v97];
  d = v148.d;
  v113 = *off_1E798B240;
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B240), "doubleValue"}];
  if (v114 == 0.0)
  {
    v114 = 1.0;
  }

  if (d * v114 == 1.0)
  {
    v115 = 0;
  }

  else
  {
    v115 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  }

  return [a1 setObject:v115 forKeyedSubscript:v113];
}

CGAffineTransform *FigCaptureZoomTransformToFinalCropRect@<X0>(void *a1@<X0>, CGAffineTransform *a2@<X8>)
{
  memset(&v21, 0, sizeof(v21));
  v4 = [a1 objectForKeyedSubscript:*off_1E798A960];
  if (v4)
  {
    FigCaptureAffineTransformFromDictionaryRepresentation(v4, &v21);
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v21.a = *MEMORY[0x1E695EFD0];
    *&v21.c = v5;
    *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(a1);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  memset(&v20, 0, sizeof(v20));
  v13 = FigCaptureUnityRect();
  FigCaptureComputeAffineTransformFromSourceAndDestRects(&v20, FinalCropRect, v8, v10, v12, v13, v14, v15, v16);
  t1 = v21;
  v18 = v20;
  return CGAffineTransformConcat(a2, &t1, &v18);
}

double FigCaptureMetadataUtilitiesGetFinalCropRect(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return *&v2;
  }

  else
  {
    return FigCaptureUnityRect();
  }
}

void *FigCaptureMetadataUtilitiesCreateFacesArrayForCropRect(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [a1 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(a1);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
          v15 = [v14 mutableCopy];
          FigCFDictionarySetCGRect();
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
            FigCFDictionarySetCGRect();
          }

          if (FigCFDictionaryGetCGRectIfPresent())
          {
            FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
            FigCFDictionarySetCGRect();
          }

          [v9 addObject:{v15, 0, 0, 0, 0}];
        }
      }

      v11 = [a1 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v11);
  }

  return v9;
}

void *FigCaptureMetadataUtilitiesCreateDetectedObjectsInfoForCropRect(CFPropertyListRef propertyList, double a2, double a3, double a4, double a5)
{
  if (propertyList)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], propertyList, 1uLL);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = [DeepCopy countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v21)
    {
      v19 = *v31;
      v18 = *off_1E798ACE8;
      v17 = *off_1E798C2F8;
      v20 = DeepCopy;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(DeepCopy);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = [objc_msgSend(DeepCopy objectForKeyedSubscript:{v10, v17), "objectForKeyedSubscript:", v18}];
          v27 = 0u;
          v28 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  FigCaptureTransformRectToCoordinateSpaceOfRect(*&v27, *(&v27 + 1), *&v28, *(&v28 + 1), a2, a3, a4);
                  FigCFDictionarySetCGRect();
                }

                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
                  FigCFDictionarySetCGRect();
                }

                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  FigCaptureTransformRectToCoordinateSpaceOfRect(0.0, 0.0, 0.0, 0.0, a2, a3, a4);
                  FigCFDictionarySetCGRect();
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v22 count:16];
            }

            while (v13);
          }

          DeepCopy = v20;
          if (objc_msgSend_isEqualToString_(v10))
          {
            [objc_msgSend(v20 objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", v17}];
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              FigCaptureTransformRectToCoordinateSpaceOfRect(*&v27, *(&v27 + 1), *&v28, *(&v28 + 1), a2, a3, a4);
              FigCFDictionarySetCGRect();
            }
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v21);
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesCreateDetectedObjectsInfoForCropRect_cold_1(a2, a3, a4, a5);
    return 0;
  }

  return DeepCopy;
}

CGAffineTransform *FigCaptureGetTransformFromSensorSpaceToSampleBuffer@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a2 = *MEMORY[0x1E695EFD0];
  a2[1] = v5;
  a2[2] = *(v4 + 32);
  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v6)
  {
    return FigCaptureGetTransformFromSensorSpaceToSampleBuffer_cold_1();
  }

  v7 = v6;
  v8 = BWPixelBufferDimensionsFromSampleBuffer(a1);

  return FigCaptureGetTransformFromSensorSpaceToBufferSpace(v7, v8, a2);
}

CGAffineTransform *FigCaptureGetTransformFromSensorSpaceToBufferSpace@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E695EFD0];
  v29 = *(MEMORY[0x1E695EFD0] + 16);
  v30 = *MEMORY[0x1E695EFD0];
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v29;
  v28 = *(v6 + 32);
  *(a3 + 32) = v28;
  v33.origin.x = FigCaptureMetadataUtilitiesGetNormalizedSensorRawValidBufferRect(a1);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  if (CGRectIsNull(v33))
  {
    return FigCaptureGetTransformFromSensorSpaceToBufferSpace_cold_1();
  }

  ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect(a1);
  FigCaptureMetadataUtilitiesNormalizeCropRect(ValidBufferRect, v12, v13, v14, a2, SHIDWORD(a2));
  v16 = v15;
  v18 = v17;
  *&v32.a = v30;
  *&v32.c = v29;
  *&v32.tx = v28;
  CGAffineTransformTranslate(a3, &v32, v19, v20);
  v21 = *(a3 + 16);
  *&v31.a = *a3;
  *&v31.c = v21;
  *&v31.tx = *(a3 + 32);
  CGAffineTransformScale(&v32, &v31, v16, v18);
  v22 = *&v32.c;
  *a3 = *&v32.a;
  *(a3 + 16) = v22;
  *(a3 + 32) = *&v32.tx;
  v23 = *(a3 + 16);
  *&v31.a = *a3;
  *&v31.c = v23;
  *&v31.tx = *(a3 + 32);
  CGAffineTransformScale(&v32, &v31, 1.0 / width, 1.0 / height);
  v24 = *&v32.c;
  *a3 = *&v32.a;
  *(a3 + 16) = v24;
  *(a3 + 32) = *&v32.tx;
  v25 = *(a3 + 16);
  *&v31.a = *a3;
  *&v31.c = v25;
  *&v31.tx = *(a3 + 32);
  result = CGAffineTransformTranslate(&v32, &v31, -x, -y);
  v27 = *&v32.c;
  *a3 = *&v32.a;
  *(a3 + 16) = v27;
  *(a3 + 32) = *&v32.tx;
  return result;
}

double FigCaptureMetadataUtilitiesGetNormalizedSensorRawValidBufferRect(void *a1)
{
  v1 = MEMORY[0x1E695F050];
  RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(a1);
  v3 = RawSensorDimensions;
  if (RawSensorDimensions < 1 || (v4 = HIDWORD(RawSensorDimensions), RawSensorDimensions <= 0))
  {
    v10 = *v1;
    FigCaptureMetadataUtilitiesGetNormalizedSensorRawValidBufferRect_cold_1();
  }

  else
  {
    v5 = *(v1 + 1);
    v13 = *v1;
    v14 = v5;
    if (FigCFDictionaryGetCGRectIfPresent() || FigCFDictionaryGetCGRectIfPresent())
    {
      v6 = *(&v13 + 1);
      v7 = *&v13;
      v9 = *(&v14 + 1);
      v8 = *&v14;
    }

    else
    {
      v8 = v3;
      v9 = v4;
      v6 = 0.0;
      v7 = 0.0;
    }

    CGAffineTransformMakeScale(&v12, 1.0 / v3, 1.0 / v4);
    v15.origin.x = v7;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v9;
    *&v10 = CGRectApplyAffineTransform(v15, &v12);
  }

  return v10;
}

void *FigCaptureMetadataUtilitiesApplyAffineTransformToFacesArray(void *a1, _OWORD *a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a1;
  v5 = [a1 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        memset(v17, 0, sizeof(v17));
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          v10 = a2[1];
          *&v16.a = *a2;
          *&v16.c = v10;
          *&v16.tx = a2[2];
          CGRectApplyAffineTransform(v17[2], &v16);
          v11 = [v9 mutableCopy];
          FigCFDictionarySetCGRect();
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v12 = a2[1];
            *&v16.a = *a2;
            *&v16.c = v12;
            *&v16.tx = a2[2];
            CGRectApplyAffineTransform(v17[1], &v16);
            FigCFDictionarySetCGRect();
          }

          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v13 = a2[1];
            *&v16.a = *a2;
            *&v16.c = v13;
            *&v16.tx = a2[2];
            CGRectApplyAffineTransform(v17[0], &v16);
            FigCFDictionarySetCGRect();
          }

          [v4 addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v6);
  }

  return v4;
}

id FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo(CFPropertyListRef propertyList, _OWORD *a2)
{
  if (propertyList)
  {
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], propertyList, 1uLL);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = [DeepCopy countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v19)
    {
      v17 = *v31;
      v16 = *off_1E798ACE8;
      v15 = *off_1E798C2F8;
      v18 = DeepCopy;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(DeepCopy);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v5 = [objc_msgSend(DeepCopy "objectForKeyedSubscript:{"objectForKeyedSubscript:", v16}")];
          memset(&v28, 0, sizeof(v28));
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v6 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v25;
            do
            {
              for (j = 0; j != v7; ++j)
              {
                if (*v25 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                memset(v22, 0, sizeof(v22));
                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v10 = a2[1];
                  *&v21.a = *a2;
                  *&v21.c = v10;
                  *&v21.tx = a2[2];
                  CGRectApplyAffineTransform(v28, &v21);
                  FigCFDictionarySetCGRect();
                }

                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v11 = a2[1];
                  *&v21.a = *a2;
                  *&v21.c = v11;
                  *&v21.tx = a2[2];
                  CGRectApplyAffineTransform(v22[1], &v21);
                  FigCFDictionarySetCGRect();
                }

                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v12 = a2[1];
                  *&v21.a = *a2;
                  *&v21.c = v12;
                  *&v21.tx = a2[2];
                  CGRectApplyAffineTransform(v22[0], &v21);
                  FigCFDictionarySetCGRect();
                }
              }

              v7 = [v5 countByEnumeratingWithState:&v24 objects:v23 count:16];
            }

            while (v7);
          }

          DeepCopy = v18;
          if (objc_msgSend_isEqualToString_(v20))
          {
            [objc_msgSend(v18 objectForKeyedSubscript:{v20), "objectForKeyedSubscript:", v15}];
            if (FigCFDictionaryGetCGRectIfPresent())
            {
              v13 = a2[1];
              *&v21.a = *a2;
              *&v21.c = v13;
              *&v21.tx = a2[2];
              CGRectApplyAffineTransform(v28, &v21);
              FigCFDictionarySetCGRect();
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v19);
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesApplyAffineTransformToDetectedObjectsInfo_cold_1(0, a2);
    DeepCopy = 0;
  }

  return DeepCopy;
}

void FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIDWORD(a3);
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v20 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 16);
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v11 = *(&v20 + 1);
    _Q0.n128_u64[0] = v20;
    v8.n128_u64[0] = *(&v21 + 1);
    v7.n128_u64[0] = v21;
  }

  else
  {
    __asm { FMOV            V0.2D, #1.0 }

    v11 = 0.0;
    v8.n128_u64[0] = 1.0;
    v7.n128_u64[0] = 1.0;
    _Q0.n128_u64[0] = 0;
  }

  v10.n128_f64[0] = v5;
  v9.n128_f64[0] = v3 / v5;
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a2, a2 >> 32, _Q0, v11, v7, v8, v9, v10);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  if (CGRectIsNull(v22))
  {
    FigCaptureMetadataUtilitiesUpdateMetadataForNewFinalDimensions_cold_2();
  }

  FigCaptureMetadataUtilitiesNormalizeCropRect(x, y, width, height, a2, SHIDWORD(a2));
  FigCFDictionarySetCGRect();
}

void FigCaptureMetadataUtilitiesRefineFinalCropRects(uint64_t a1, float a2)
{
  if (a2 != 0.0 && a2 != 1.0)
  {
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v5 = 0.0;
      v4 = 0.0;
      v7 = 0.0;
      v6 = 0.0;
    }

    else
    {
      v4 = FigCaptureUnityRect();
    }

    v8 = a2;
    FigCaptureMetadataUtilitiesScaleRect2D(v4, v5, v6, v7, v8);
    FigCFDictionarySetCGRect();
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v10 = 0.0;
      v9 = 0.0;
      v12 = 0.0;
      v11 = 0.0;
    }

    else
    {
      v9 = FigCaptureUnityRect();
    }

    FigCaptureMetadataUtilitiesScaleRect2D(v9, v10, v11, v12, v8);
    FigCFDictionarySetCGRect();
  }
}

void *FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(void *a1, void *a2)
{
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = *off_1E798A5D8;
  v36[0] = *off_1E798A5C8;
  v36[1] = v4;
  v5 = *off_1E798A960;
  v36[2] = *off_1E798A5D0;
  v36[3] = v5;
  v6 = *off_1E798B240;
  v36[4] = *off_1E798A7A0;
  v36[5] = v6;
  v7 = *off_1E798B790;
  v36[6] = *off_1E798B2D8;
  v36[7] = v7;
  v8 = *off_1E798A948;
  v36[8] = *off_1E798B7A0;
  v36[9] = v8;
  v9 = *off_1E798B658;
  v36[10] = *off_1E798B670;
  v36[11] = v9;
  v10 = *off_1E798B5A0;
  v36[12] = *off_1E798B5A8;
  v36[13] = v10;
  v36[14] = *off_1E798B588;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:15];
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v32 + 1) + 8 * v15)), *(*(&v32 + 1) + 8 * v15)}];
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v13);
  }

  v16 = *off_1E798A940;
  result = [a1 objectForKeyedSubscript:*off_1E798A940];
  if (result)
  {
    v18 = result;
    v19 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(a2, "objectForKeyedSubscript:", v16)}];
    [a2 setObject:v19 forKeyedSubscript:v16];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = *off_1E798AA08;
    v25[0] = *off_1E798AA00;
    v25[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    result = [v21 countByEnumeratingWithState:&v27 objects:v26 count:16];
    if (result)
    {
      v22 = result;
      v23 = *v28;
      do
      {
        v24 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [v19 setObject:objc_msgSend(v18 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v27 + 1) + 8 * v24)), *(*(&v27 + 1) + 8 * v24)}];
          v24 = v24 + 1;
        }

        while (v22 != v24);
        result = [v21 countByEnumeratingWithState:&v27 objects:v26 count:16];
        v22 = result;
      }

      while (result);
    }
  }

  return result;
}

double FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia(unint64_t a1, unint64_t a2, __n128 a3, double a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v8 = *MEMORY[0x1E695F050];
  if (a8.n128_f64[0] == 0.0)
  {
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia_cold_2(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v9 = a8.n128_f64[0];
    v10 = vcvtad_u64_f64(a1 * a8.n128_f64[0]);
    a8.n128_f64[0] = a2 * a8.n128_f64[0];
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v10, vcvtad_u64_f64(a8.n128_f64[0]), a3, a4, a5, a6, a7, a8);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    if (CGRectIsNull(v20))
    {
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRectForAttachedMedia_cold_1();
    }

    else
    {
      v15 = x / v9;
      v8 = FigCaptureRoundFloatToMultipleOf(1, v15);
      v16 = y / v9;
      FigCaptureRoundFloatToMultipleOf(1, v16);
      v17 = x / v9 + width / v9;
      FigCaptureRoundFloatToMultipleOf(1, v17);
      v18 = y / v9 + height / v9;
      FigCaptureRoundFloatToMultipleOf(1, v18);
    }
  }

  return v8;
}

double FigCaptureMetadataUtilitiesMatchOrientationOfSize(double a1, double a2, double a3, double a4)
{
  v4 = a2;
  if (round(a3 - a4) >= 0.0 && round(a1 - a2) >= 0.0)
  {
    return a1;
  }

  return v4;
}

double FigCaptureMetadataUtilitiesRectByExtendingRectToAspectRatio(double result, double a2, double a3, double a4, double a5)
{
  v5 = a3 / a4;
  if (v5 <= a5)
  {
    v6 = -(a3 - a5 * a4);
    return result + (v6 * -0.5);
  }

  return result;
}

uint64_t FigCaptureMetadataUtilitiesExtendRectToAspectRatioOfTargetDimensions(uint64_t a1, uint64_t a2, double *a3, double a4, double a5, double a6, double a7)
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a1;
  v14 = SHIDWORD(a1);
  result = FigCaptureMetadataUtilitiesDenormalizeCropRect(a4, a5, a6, a7, a1, SHIDWORD(a1));
  v20 = SHIDWORD(a2);
  if (round(v18 - v19) >= 0.0 && round(a2 - v20) >= 0.0)
  {
    v21 = SHIDWORD(a2);
    v20 = a2;
  }

  else
  {
    v21 = a2;
  }

  v22 = v18 * v21;
  v23 = v19 * v20;
  if (roundf(v22) != roundf(v23))
  {
    v24.f64[0] = FigCaptureMetadataUtilitiesRectByExtendingRectToAspectRatio(v16, v17, v18, v19, v20 / v21);
    v28 = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v24, v25, v26, v27, 0.0, 0.0, v13, v14);
    result = FigCaptureMetadataUtilitiesNormalizeCropRect(v28, v29, v30, v31, v13, v14);
    v12 = v32;
    v11 = v33;
    v10 = v34;
    v9 = v35;
  }

  if (a3)
  {
    *a3 = v12;
    a3[1] = v11;
    a3[2] = v10;
    a3[3] = v9;
  }

  return result;
}

double FigCaptureMetadataUtilitiesGetFinalCropRectForSushiRaw(uint64_t a1)
{
  v3 = *MEMORY[0x1E695F050];
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return *&v3;
  }

  else
  {
    return FigCaptureMetadataUtilitiesGetFinalCropRectFromSource(a1);
  }
}

double FigCaptureMetadataUtilitiesGetMinimumValidBufferRectForGDC(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  FigCFDictionaryGetCGRectIfPresent();
  return *&v2;
}

double FigCaptureMetadataUtilitiesGetValidBufferRectForProcessedRaw(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  FigCFDictionaryGetCGRectIfPresent();
  return *&v2;
}

double FigCaptureMetadataUtilitiesGetTotalSensorCropRect(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F050];
  FigCFDictionaryGetCGRectIfPresent();
  return *&v2;
}

unint64_t FigCaptureMetadataUtilitiesGetRawSensorDimensions(void *a1)
{
  v2 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v2 | (v3 << 32);
  }
}

uint64_t fcmu_transformFromNormalizedBufferCoordsToDenormalizedSensorCoordsForSampleBuffer(void *a1, uint64_t a2, _OWORD *a3)
{
  v4 = a2;
  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v7 = BWPixelBufferDimensionsFromSampleBuffer(a1);

  return fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(v6, v7, v4, a3);
}

double FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(void *a1, unint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.a = *MEMORY[0x1E695EFD0];
  *&v28.c = v12;
  *&v28.tx = *(MEMORY[0x1E695EFD0] + 32);
  if (fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(a1, a2, 0, &v28))
  {
    FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect_cold_1();
  }

  else
  {
    v27 = v28;
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    v30 = CGRectApplyAffineTransform(v29, &v27);
    x = v30.origin.x;
    y = v30.origin.y;
    width = v30.size.width;
    height = v30.size.height;
    RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(a1);
    v18 = RawSensorDimensions;
    v19 = HIDWORD(RawSensorDimensions);
    v20 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21 * v18;
    v23 = v21 * v19;
    if (v22 < 1 || v23 <= 0)
    {
      FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect_cold_2();
    }

    else
    {
      FigCaptureMetadataUtilitiesNormalizeCropRect(x, y, width, height, v22, v23);
      return v25;
    }
  }

  return v11;
}

double FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(void *a1, unint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = *MEMORY[0x1E695F050];
  RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(a1);
  v14 = RawSensorDimensions;
  v15 = HIDWORD(RawSensorDimensions);
  v16 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17 * v14;
  v19 = v17 * v15;
  if (v18 < 1 || v19 <= 0)
  {
    FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect_cold_1();
  }

  else
  {
    FigCaptureMetadataUtilitiesDenormalizeCropRect(a3, a4, a5, a6, v18, v19);
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = *(MEMORY[0x1E695EFD0] + 16);
    *&v33.a = *MEMORY[0x1E695EFD0];
    *&v33.c = v29;
    *&v33.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(a1, a2, 0, &v33))
    {
      FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect_cold_2();
    }

    else
    {
      v31 = v33;
      memset(&v32, 0, sizeof(v32));
      CGAffineTransformInvert(&v32, &v31);
      v31 = v32;
      v34.origin.x = v22;
      v34.origin.y = v24;
      v34.size.width = v26;
      v34.size.height = v28;
      *&v12 = CGRectApplyAffineTransform(v34, &v31);
    }
  }

  return v12;
}

double FigCaptureMetadataUtilitiesNormalizedBufferPointFromNormalizedSensorPoint(void *a1, unint64_t a2, double a3, double a4)
{
  v8 = *MEMORY[0x1E695EFF8];
  RawSensorDimensions = FigCaptureMetadataUtilitiesGetRawSensorDimensions(a1);
  v10 = RawSensorDimensions;
  v11 = HIDWORD(RawSensorDimensions);
  v12 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 * v10;
  v15 = v13 * v11;
  if (v14 < 1 || v15 <= 0)
  {
    FigCaptureMetadataUtilitiesNormalizedBufferPointFromNormalizedSensorPoint_cold_1();
  }

  else
  {
    v17 = *(MEMORY[0x1E695EFD0] + 16);
    *&v21.a = *MEMORY[0x1E695EFD0];
    *&v21.c = v17;
    *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
    if (fcmu_transformFromNormalizedBufferCoordsToDenormalizedNonBinnedSensorCoords(a1, a2, 0, &v21))
    {
      FigCaptureMetadataUtilitiesNormalizedBufferPointFromNormalizedSensorPoint_cold_2();
    }

    else
    {
      v19 = v21;
      memset(&v20, 0, sizeof(v20));
      CGAffineTransformInvert(&v20, &v19);
      return v20.tx + a4 * v15 * v20.c + v20.a * (a3 * v14);
    }
  }

  return v8;
}

double FigCaptureMetadataUtilitiesNormalizedSensorCenterOffsetInValidBufferRect(void *a1)
{
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v3 = BWPixelBufferDimensionsFromSampleBuffer(a1);
  v4 = FigCaptureMetadataUtilitiesNormalizedBufferPointFromNormalizedSensorPoint(v2, v3, 0.5, 0.5);
  v6 = v5;
  *v11 = *MEMORY[0x1E695F050];
  *&v11[16] = *(MEMORY[0x1E695F050] + 16);
  FigCFDictionaryGetCGRectIfPresent();
  if (!CGRectIsNull(*v11))
  {
    FigCaptureMetadataUtilitiesNormalizeCropRect(*v11, *&v11[8], *&v11[16], *&v11[24], v3, SHIDWORD(v3));
    v4 = FigCaptureTransformPointToCoordinateSpaceOfRect(v4, v6, v7, v8, v9);
  }

  return v4 + -0.5;
}

float64_t FigCaptureMetadataUtilitiesRoundRectToEvenCoordinatesPreservingSquareness(unsigned int a1, float64_t a2, float64x2_t a3, double a4, double a5, float a6)
{
  a3.f64[1] = a2;
  v6 = vrndaq_f64(a3);
  v7 = vbslq_s8(vcgeq_f64(vdupq_lane_s64(COERCE__INT64(a6), 0), vabdq_f64(a3, v6)), v6, a3);
  __asm { FMOV            V2.2D, #0.5 }

  v13 = vmulq_f64(v7, _Q2);
  v14 = vdup_n_s32(a1);
  v15.i64[0] = v14.u32[0];
  v15.i64[1] = v14.u32[1];
  v16 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v15, 0x3FuLL)), vrndpq_f64(v13), vrndmq_f64(v13));
  return vaddq_f64(v16, v16).f64[1];
}

void FigCaptureMetadataUtilitiesRoundDenormalizedRectToRawSensorCFABoundary(void *a1)
{
  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];

  FigCaptureMetadataUtilitiesRoundRectToMultipleOf();
}

double FigCaptureMetadataUtilitiesDenormalizedRectWithinBoundingDimensionsCenteredOnPoint(int a1, int a2, double a3)
{
  if (a2 >= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  v4 = a3 * a1 - (v3 / 2);
  if (v4 > (a1 - v3))
  {
    v4 = (a1 - v3);
  }

  if (*MEMORY[0x1E695EFF8] > v4)
  {
    v4 = *MEMORY[0x1E695EFF8];
  }

  v5 = round(v4);
  if (vabdd_f64(v4, v5) <= 0.00999999978)
  {
    v4 = v5;
  }

  return ceil(v4);
}

uint64_t FigCaptureMetadataUtilitiesGetCameraForSampleBuffer(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v1)
  {
    FigCaptureMetadataUtilitiesGetCameraForSampleBuffer_cold_2();
    return 0;
  }

  v2 = [v1 objectForKeyedSubscript:*off_1E798B540];
  if (!v2)
  {
    FigCaptureMetadataUtilitiesGetCameraForSampleBuffer_cold_1();
    return 0;
  }

  return fcmu_cameraFromPortTypeAndCameraLocation(v2, v3);
}

uint64_t fcmu_cameraFromPortTypeAndCameraLocation(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0C0))
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

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  return 0;
}

void FigCaptureMetadataUtilitiesAddMissingDutyCycleMetadata(CFTypeRef target, void *a2)
{
  if (qword_1ED844E88 == -1)
  {
    if (!target)
    {
      return;
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
    if (!target)
    {
      return;
    }
  }

  if (a2)
  {
    v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *off_1E798B068;
      v21[0] = *off_1E798B4B8;
      v21[1] = v7;
      v8 = *off_1E798B0A8;
      v21[2] = *off_1E798B058;
      v21[3] = v8;
      v9 = *off_1E798B300;
      v21[4] = *off_1E798B320;
      v21[5] = v9;
      v10 = *off_1E798B078;
      v21[6] = *off_1E798B1A0;
      v21[7] = v10;
      v11 = *off_1E798B1C8;
      v21[8] = *off_1E798B048;
      v21[9] = v11;
      v12 = *off_1E798B510;
      v21[10] = *off_1E798B600;
      v21[11] = v12;
      v13 = *off_1E798B060;
      v21[12] = *off_1E798B088;
      v21[13] = v13;
      v14 = *off_1E798B4E8;
      v21[14] = *off_1E798B298;
      v21[15] = v14;
      v15 = *off_1E798B2A0;
      v21[16] = *off_1E798B070;
      v21[17] = v15;
      v21[18] = *off_1E798B4D0;
      while (1)
      {
        v16 = v21[v6];
        v17 = [v5 objectForKeyedSubscript:v16];
        if (v17)
        {
          break;
        }

        v20 = [a2 objectForKeyedSubscript:v16];
        if (v20)
        {
          v18 = v20;
          v19 = v5;
          goto LABEL_10;
        }

LABEL_11:
        if (++v6 == 19)
        {
          return;
        }
      }

      v18 = v17;
      v19 = a2;
LABEL_10:
      [v19 setObject:v18 forKeyedSubscript:v16];
      goto LABEL_11;
    }
  }
}

CMSampleBufferRef FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer(uint64_t a1, void *a2, uint64_t a3, int32_t a4)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  formatDescriptionOut = 0;
  blockBufferOut = 0;
  v54 = 0;
  if ((*(a1 + 12) & 1) == 0)
  {
    FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_11(a1);
    goto LABEL_27;
  }

  v40 = a3;
  v41 = a4;
  v8 = *MEMORY[0x1E6960348];
  v9 = *MEMORY[0x1E69629E0];
  v10 = *MEMORY[0x1E6960338];
  v51[0] = *MEMORY[0x1E6960348];
  v51[1] = v10;
  v11 = *MEMORY[0x1E6960288];
  v52[0] = v9;
  v52[1] = v11;
  v12 = [MEMORY[0x1E695DF70] arrayWithObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v52, v51, 2)}];
  v13 = MEMORY[0x1E69603A8];
  v14 = MEMORY[0x1E69601F8];
  if (a2)
  {
    v15 = *MEMORY[0x1E69603A0];
    v49[0] = v8;
    v49[1] = v10;
    v16 = *MEMORY[0x1E6960238];
    v50[0] = v15;
    v50[1] = v16;
    [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v50, v49, 2)}];
    v17 = *v13;
    v47[0] = v8;
    v47[1] = v10;
    v18 = *v14;
    v48[0] = v17;
    v48[1] = v18;
    [v12 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v48, v47, 2)}];
  }

  v19 = *MEMORY[0x1E695E480];
  if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(*MEMORY[0x1E695E480], 0x6D656278u, v12, &formatDescriptionOut))
  {
    FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_2();
    goto LABEL_27;
  }

  LocalIDForMetadataIdentifyingFactors = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
  if (!LocalIDForMetadataIdentifyingFactors)
  {
    FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_10();
    goto LABEL_27;
  }

  v21 = LocalIDForMetadataIdentifyingFactors;
  v22 = [a2 length];
  if (v22)
  {
    if ([a2 length] != 36)
    {
      FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_3();
      goto LABEL_27;
    }

    v23 = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
    if (!v23)
    {
      FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_6();
      goto LABEL_27;
    }

    v24 = bswap32(v23);
    v25 = [a2 bytes];
    for (i = 0; i != 9; ++i)
    {
      *(v55 + i) = bswap64(COERCE_UNSIGNED_INT64(*(v25 + 4 * i)));
    }

    if (v40 < 1 || v40 <= 0)
    {
      FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_4();
      goto LABEL_27;
    }

    v27 = FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors();
    if (!v27)
    {
      FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_5();
      goto LABEL_27;
    }

    LODWORD(a2) = bswap32(COERCE_UNSIGNED_INT(v40));
    v14 = bswap32(COERCE_UNSIGNED_INT(HIDWORD(v40)));
    v28 = bswap32(v27);
    v29 = 16;
    v30 = 80;
  }

  else
  {
    v24 = 0;
    v28 = 0;
    v30 = 0;
    v29 = 0;
  }

  if (CMBlockBufferCreateWithMemoryBlock(v19, 0, v29 + v30 + 9, v19, 0, 0, v29 + v30 + 9, 1u, &blockBufferOut))
  {
    FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_7();
  }

  else
  {
    dataPointerOut = 0;
    if (CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut))
    {
      FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_8();
    }

    else
    {
      *dataPointerOut = 150994944;
      *(dataPointerOut + 1) = bswap32(v21);
      v31 = dataPointerOut;
      dataPointerOut[8] = -1;
      v32 = v31 + 9;
      dataPointerOut = v31 + 9;
      if (v22)
      {
        v33 = v55[0];
        *(v31 + 33) = v55[1];
        v34 = v55[3];
        *(v31 + 49) = v55[2];
        *(v31 + 65) = v34;
        *(v31 + 9) = v30 << 24;
        *(v31 + 13) = v24;
        *(v31 + 81) = v56;
        *(v31 + 17) = v33;
        dataPointerOut = &v32[v30];
        *&v32[v30] = v29 << 24;
        *(dataPointerOut + 1) = v28;
        v35 = dataPointerOut;
        *(dataPointerOut + 1) = a2 | (v14 << 32);
        dataPointerOut = &v35[v29];
      }

      if (v41)
      {
        v36 = v41;
      }

      else
      {
        v36 = 600;
      }

      memset(&v45, 0, sizeof(v45));
      CMTimeMake(&time, 1, v36);
      CMTimeConvertScale(&v45, &time, *(a1 + 8), kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v37 = *(MEMORY[0x1E6960CF0] + 32);
      *&sampleTimingArray.duration.epoch = *(MEMORY[0x1E6960CF0] + 16);
      *&sampleTimingArray.presentationTimeStamp.timescale = v37;
      *&sampleTimingArray.decodeTimeStamp.value = *(MEMORY[0x1E6960CF0] + 48);
      *&sampleTimingArray.presentationTimeStamp.value = *a1;
      v38 = *(a1 + 16);
      sampleTimingArray.decodeTimeStamp.epoch = *(MEMORY[0x1E6960CF0] + 64);
      sampleTimingArray.presentationTimeStamp.epoch = v38;
      sampleTimingArray.duration = v45;
      sampleSizeArray = CMBlockBufferGetDataLength(blockBufferOut);
      if (CMSampleBufferCreate(v19, blockBufferOut, 1u, 0, 0, formatDescriptionOut, 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &v54))
      {
        FigCaptureMetadataUtilitiesCreateQuickTimeMovieStillImageTimeSampleBuffer_cold_9();
      }
    }
  }

LABEL_27:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v54;
}

uint64_t FigCaptureMetadataUtilitiesCreateMakerNoteFlatDictionary(void *target, uint64_t a2, const __CFAllocator *a3, const void **a4)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  value = 0;
  v9 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (v9)
  {
    v10 = v9;
    KeySpec = *a4;
    if (!*a4)
    {
      ValueIfPresent = CFDictionaryGetValueIfPresent(v9, *off_1E798B070, &value);
      if (ValueIfPresent)
      {
        ValueIfPresent = CFDataGetLength(value);
        v14 = ValueIfPresent;
      }

      else
      {
        v14 = 0;
      }

      MakerNoteKeySpace = FigFlatDictionaryGetMakerNoteKeySpace(ValueIfPresent, v13);
      KeySpec = FigFlatDictionaryCreateKeySpec(a2, MakerNoteKeySpace, 0x5Eu);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_Version_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AEMatrix_opaque, v14, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_Timestamp_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AEStable_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AETarget_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AEAverage_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFStable_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FocusAccelerometerVector_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SISMethod_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_HDRMethod_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_BurstUUID_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SphereHealthTrackingError_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SphereHealthAverageCurrent_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SphereMotionDataStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_OISMode_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SphereStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AssetIdentifier_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SphereExternalForceOffset_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageCaptureType_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ImageGroupIdentifier_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotosOriginatingSignature_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageCaptureFlags_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotosRenderOriginatingSignature_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageProcessingFlags_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotoTranscodeQualityHint_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotosRenderEffect_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_BracketedCaptureSequenceNumber_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LuminanceNoiseAmplitude_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_OriginatingAppID_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotosAppFeatureFlags_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ImageCaptureRequestIdentifier_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_MeteorHeadroom_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ARKitPhoto_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFPerformance_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFExternalOffset_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageSceneFlags_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageSNRType_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageSNR_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_UBMethod_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SpatialOverCaptureGroupIdentifier_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_iCloudServerSoftwareVersionForDynamicallyGeneratedMedia_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotoIdentifier_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SpatialOverCaptureImageType_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_CCT_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ApsMode_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FocusPosition_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_MeteorPlusGainMap_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StillImageProcessingHomography_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_IntelligentDistortionCorrection_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NRFStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NRFInputBracketCount_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NRFRegisteredBracketCount_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LuxLevel_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LastFocusingMethod_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorMeasuredDepth_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorROIType_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NRFSRLStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SystemPressureLevel_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_CameraControlsStatisticsMaster_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorSensorConfidence_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ColorCorrectionMatrix_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_GreenGhostMitigationStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SemanticStyle_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FrontFacing_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorContainsBlindSpot_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LeaderFollowerAutoFocusLeaderDepth_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LeaderFollowerAutoFocusLeaderFocusMethod_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LeaderFollowerAutoFocusLeaderConfidence_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LeaderFollowerAutoFocusLeaderROIType_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ZeroShutterLagFailureReason_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorMSPMeasuredDepth_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_TimeOfFlightAssistedAutoFocusEstimatorMSPSensorConfidence_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_Camera_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FocusPixelBlurScore_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SensorTemperature_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PhotometerInfo_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFSphereFaultStatus_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFSphereComplianceErrorCounts_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AFSphereMaxTemperature_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SensorBlackLevelResidual_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FusionMode_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SmartStyle_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AEFaceAverage_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_AlchemistVersion_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SensorID_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_SlowSyncFlashDuration_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NoiseModel_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_ModuleAndCalibrationValidationStatuses_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FlareArtifactDetection_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FrontAndBackCameraCompositionPictureInPictureRect_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_LensSmudgeDetection_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_PurpleHazeDetection_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_StreamingTime_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_NominalFocalLengthIn35mmFilm_opaque, 0, 0);
      FigFlatDictionaryKeySpecAddKey(KeySpec, &kFigCaptureFlatDictionaryAppleMakerNote_FirstSupportedReleaseVersion_opaque, 0, 0);
      FigFlatDictionaryKeySpecCommit(KeySpec);
      *a4 = KeySpec;
    }

    Mutable = FigFlatDictionaryCreateMutable(a2, a3, KeySpec);
    if (Mutable)
    {
      v15 = Mutable;
      FigFlatDictionarySetInt32(Mutable, &kFigCaptureFlatDictionaryAppleMakerNote_Version_opaque, 3);
      v18 = CMGetAttachment(target, *off_1E798A420, 0);
      if (v18)
      {
        CMTimeMakeFromDictionary(&v43, v18);
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&v43, target);
      }

      v44 = v43.value;
      timescale = v43.timescale;
      if (v43.flags)
      {
        v43.value = v44;
        v43.timescale = timescale;
        FigFlatDictionarySetCMTime(v15, &kFigCaptureFlatDictionaryAppleMakerNote_Timestamp_opaque, &v43);
      }

      theData = 0;
      if (CFDictionaryGetValueIfPresent(v10, *off_1E798B070, &theData))
      {
        Length = CFDataGetLength(theData);
        BytePtr = CFDataGetBytePtr(theData);
        FigFlatDictionarySetData(v15, &kFigCaptureFlatDictionaryAppleMakerNote_AEMatrix_opaque, BytePtr, Length);
      }

      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_AEStable_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B078), "intValue"}]);
      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_AETarget_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B088), "intValue"}]);
      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_AEAverage_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B048), "intValue"}]);
      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_AFStable_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B0A0), "intValue"}]);
      v21 = *off_1E798A658;
      [objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798A658), "objectAtIndexedSubscript:", 0), "floatValue"}];
      HIDWORD(v40) = v22;
      [objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{v21), "objectAtIndexedSubscript:", 1), "floatValue"}];
      LODWORD(v41) = v23;
      [objc_msgSend(-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{v21), "objectAtIndexedSubscript:", 2), "floatValue"}];
      HIDWORD(v41) = v24;
      FigFlatDictionarySetArrayDataType(v15, &kFigCaptureFlatDictionaryAppleMakerNote_FocusAccelerometerVector_opaque, 5);
      FigFlatDictionarySetData(v15, &kFigCaptureFlatDictionaryAppleMakerNote_FocusAccelerometerVector_opaque, &v40 + 4, 0xCu);
      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SISMethod_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798A840), "intValue"}]);
      if (!CFDictionaryGetValueIfPresent(v10, *off_1E798B6B0, &value))
      {
        goto LABEL_36;
      }

      v25 = value;
      if ([value isEqual:*off_1E798C488])
      {
        v26 = 0;
      }

      else if ([v25 isEqual:*off_1E798C478])
      {
        v26 = 1;
      }

      else if ([v25 isEqual:*off_1E798C470])
      {
        v26 = 2;
      }

      else if ([v25 isEqual:*off_1E798C490])
      {
        v26 = 3;
      }

      else if ([v25 isEqual:*off_1E798C498])
      {
        v26 = 4;
      }

      else
      {
        if (![v25 isEqual:*off_1E798C480])
        {
LABEL_36:
          FigFlatDictionarySetInt16(v15, &kFigCaptureFlatDictionaryAppleMakerNote_HDRMethod_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{*off_1E798B370), "intValue"}]);
          if (CFDictionaryGetValueIfPresent(v10, *off_1E798B6A0, &value))
          {
            v27 = CFDictionaryGetValue(value, *off_1E798C3E8);
            v28 = CFDictionaryGetValue(value, *off_1E798C3F0);
            v29 = CFDictionaryGetValue(value, *off_1E798C3A8);
            if (v27 && v28)
            {
              [v27 floatValue];
              v37 = v30;
              [v28 floatValue];
              v43.value = vmul_f32(__PAIR64__(v31, v37), vdup_n_s32(0x3B800000u));
              FigFlatDictionarySetArrayDataType(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SphereHealthTrackingError_opaque, 5);
              FigFlatDictionarySetData(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SphereHealthTrackingError_opaque, &v43, 8u);
            }

            if (v29)
            {
              FigFlatDictionarySetInt16(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SphereHealthAverageCurrent_opaque, [v29 intValue]);
            }
          }

          v32 = *off_1E798B3E0;
          if (CFDictionaryContainsKey(v10, *off_1E798B3E0))
          {
            FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SphereMotionDataStatus_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{v32), "intValue"}]);
          }

          v33 = *off_1E798B6C0;
          if (CFDictionaryContainsKey(v10, *off_1E798B6C0))
          {
            FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_SphereStatus_opaque, [-[__CFDictionary objectForKeyedSubscript:](v10 objectForKeyedSubscript:{v33), "intValue"}]);
          }

          CameraForSampleBuffer = FigCaptureMetadataUtilitiesGetCameraForSampleBuffer(target);
          if (CameraForSampleBuffer)
          {
            FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_Camera_opaque, CameraForSampleBuffer);
          }

          return v15;
        }

        v26 = 5;
      }

      FigFlatDictionarySetInt32(v15, &kFigCaptureFlatDictionaryAppleMakerNote_OISMode_opaque, v26);
      goto LABEL_36;
    }

    if (KeySpec)
    {
      CFRelease(KeySpec);
    }

    v15 = 0;
    *a4 = 0;
  }

  else
  {
    v15 = 0;
    if (!CMGetAttachment(target, *MEMORY[0x1E6960498], 0))
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v36, v38, v39, v40, v41, theData);
      return 0;
    }
  }

  return v15;
}

uint64_t fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(void *a1, void *a2)
{
  if ([a2 count])
  {
    v4 = fcmu_indexInMetadataArrayOfQuickTimeMetadataDictionary(a1);
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v6 = [MEMORY[0x1E695DF70] array];
      [v5 setObject:*MEMORY[0x1E6971ED8] forKeyedSubscript:*MEMORY[0x1E6971F88]];
      v7 = *MEMORY[0x1E6971F90];
    }

    else
    {
      v9 = [a1 objectAtIndexedSubscript:v4];
      v7 = *MEMORY[0x1E6971F90];
      v10 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6971F90]];
      v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
      v6 = [MEMORY[0x1E695DF70] arrayWithArray:v10];
    }

    [v6 addObjectsFromArray:a2];
    [v5 setObject:v6 forKeyedSubscript:v7];
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    if (a1)
    {
      v12 = [v11 initWithArray:a1];
    }

    else
    {
      v12 = [v11 initWithCapacity:1];
    }

    v13 = v12;
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 addObject:v5];
    }

    else
    {
      [v12 setObject:v5 atIndexedSubscript:v4];
    }

    return v13;
  }

  else
  {

    return [a1 copy];
  }
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityScore(void *a1, uint64_t a2, float a3)
{
  context = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E6973590];
  v8 = *MEMORY[0x1E6971F48];
  v21[0] = *MEMORY[0x1E6971F40];
  v6 = v21[0];
  v21[1] = v8;
  v9 = *MEMORY[0x1E69603D8];
  v22[0] = v7;
  v22[1] = v9;
  v10 = *MEMORY[0x1E6971F10];
  v22[2] = *MEMORY[0x1E6960208];
  v11 = *MEMORY[0x1E6971F80];
  v21[2] = v10;
  v21[3] = v11;
  *&v12 = a3;
  v22[3] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v14 = *MEMORY[0x1E6973598];
  v19[0] = v6;
  v19[1] = v8;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = *MEMORY[0x1E6960298];
  v19[2] = v10;
  v19[3] = v11;
  v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v18[0] = v13;
  v18[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2]);
  objc_autoreleasePoolPop(context);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVariableFrameRate(void *a1, uint64_t a2, uint64_t a3)
{
  context = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E6971F48];
  v18[0] = *MEMORY[0x1E6971F40];
  v6 = v18[0];
  v18[1] = v7;
  v8 = *MEMORY[0x1E69603D8];
  v19[0] = @"com.apple.quicktime.60fps.variableframerate";
  v19[1] = v8;
  v9 = *MEMORY[0x1E6971F10];
  v19[2] = *MEMORY[0x1E69602A8];
  v10 = *MEMORY[0x1E6971F80];
  v18[2] = v9;
  v18[3] = v10;
  v19[3] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  v16[0] = v6;
  v16[1] = v7;
  v17[0] = @"com.apple.quicktime.maximumframerate";
  v17[1] = v8;
  v17[2] = *MEMORY[0x1E6960278];
  v16[2] = v9;
  v16[3] = v10;
  v17[3] = [MEMORY[0x1E696AD98] numberWithInt:a3];
  v15[0] = v11;
  v15[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2]);
  objc_autoreleasePoolPop(context);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialOverCaptureQualityScore(void *a1, uint64_t a2, float a3)
{
  context = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E69735A0];
  v8 = *MEMORY[0x1E6971F48];
  v21[0] = *MEMORY[0x1E6971F40];
  v6 = v21[0];
  v21[1] = v8;
  v9 = *MEMORY[0x1E69603D8];
  v22[0] = v7;
  v22[1] = v9;
  v10 = *MEMORY[0x1E6971F10];
  v22[2] = *MEMORY[0x1E6960208];
  v11 = *MEMORY[0x1E6971F80];
  v21[2] = v10;
  v21[3] = v11;
  *&v12 = a3;
  v22[3] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v14 = *MEMORY[0x1E69735A8];
  v19[0] = v6;
  v19[1] = v8;
  v20[0] = v14;
  v20[1] = v9;
  v20[2] = *MEMORY[0x1E6960298];
  v19[2] = v10;
  v19[3] = v11;
  v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  v18[0] = v13;
  v18[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2]);
  objc_autoreleasePoolPop(context);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLimitStillImageTransformFlagIfRequired(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *off_1E798D250;
  v4 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v4;
  v5 = *MEMORY[0x1E69603D8];
  v12[0] = v3;
  v12[1] = v5;
  v6 = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[2] = v6;
  v12[3] = &unk_1F2242BC8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v2);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSubjectRelightingAppliedCurveParameter(void *a1, float a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v13[0] = *off_1E798D230;
  v13[1] = v6;
  v13[2] = *MEMORY[0x1E6960208];
  v7 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v7;
  *&v8 = a2;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithCinematicVideoGlobalMetadata(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6973538];
  v6 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v13[0] = v5;
  v13[1] = v7;
  v8 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v8;
  v13[2] = *MEMORY[0x1E6960260];
  v13[3] = a2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithActionCameraGlobalMetadata(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = *off_1E798D228;
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E6960298];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialVersionMetadata(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *off_1E798D290;
  v6 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v13[0] = v5;
  v13[1] = v7;
  v8 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v8;
  v13[2] = *MEMORY[0x1E69602B8];
  v13[3] = a2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialAggressorsSeenMetadata(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = *off_1E798D288;
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSmartStyleMetadata(void *a1, void *a2, unsigned int a3)
{
  context = objc_autoreleasePoolPush();
  v5 = *off_1E798D278;
  v6 = *MEMORY[0x1E6971F48];
  v44[0] = *MEMORY[0x1E6971F40];
  v4 = v44[0];
  v44[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v47[0] = v5;
  v47[1] = v7;
  v28 = *MEMORY[0x1E6960298];
  v9 = *MEMORY[0x1E6960298];
  v10 = *MEMORY[0x1E6971F80];
  v45 = *MEMORY[0x1E6971F10];
  v8 = v45;
  v46 = v10;
  v47[2] = v9;
  v47[3] = &unk_1F2242BC8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v44 count:4];
  v11 = *off_1E798D280;
  v40[0] = v4;
  v40[1] = v6;
  v41[0] = v11;
  v41[1] = v7;
  v42 = *MEMORY[0x1E6960210];
  v12 = v42;
  v40[2] = v8;
  v40[3] = v10;
  v13 = MEMORY[0x1E696AD98];
  [a2 toneBias];
  v43 = [v13 numberWithFloat:?];
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:4];
  v14 = *off_1E798D260;
  v38[0] = v4;
  v38[1] = v6;
  v39[0] = v14;
  v39[1] = v7;
  v39[2] = v12;
  v38[2] = v8;
  v38[3] = v10;
  v15 = MEMORY[0x1E696AD98];
  [a2 colorBias];
  v39[3] = [v15 numberWithFloat:?];
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:4];
  v17 = *off_1E798D268;
  v36[0] = v4;
  v36[1] = v6;
  v37[0] = v17;
  v37[1] = v7;
  v37[2] = v12;
  v36[2] = v8;
  v36[3] = v10;
  v18 = MEMORY[0x1E696AD98];
  [a2 intensity];
  v37[3] = [v18 numberWithFloat:?];
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v20 = *off_1E798D270;
  v34[0] = v4;
  v34[1] = v6;
  v35[0] = v20;
  v35[1] = v7;
  v35[2] = *MEMORY[0x1E69602A8];
  v34[2] = v8;
  v34[3] = v10;
  v35[3] = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v33[0] = v26;
  v33[1] = v25;
  v33[2] = v16;
  v33[3] = v19;
  v33[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
  v21 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v33, 5)}];
  v22 = *off_1E798D258;
  v31[0] = v4;
  v31[1] = v6;
  v32[0] = v22;
  v32[1] = v7;
  v32[2] = v28;
  v31[2] = v8;
  v31[3] = v10;
  v32[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6991718], "makerNoteTagForSmartStyleCastType:smartStyleVersion:", objc_msgSend(a2, "cast"), 1)}];
  [v21 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v32, v31, 4)}];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, v21);
  objc_autoreleasePoolPop(context);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateAllowedClassSetForMetadataItems()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v0 initWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];
}

void FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(const void *a1, float a2)
{
  CMGetAttachment(a1, *off_1E798A3C8, 0);
  __asm { FMOV            V0.2D, #1.0 }

  v8 = _Q0;
  FigCFDictionaryGetCGRectIfPresent();
  FigCaptureMetadataUtilitiesScaleRect2D(0.0, 0.0, *&v8, *(&v8 + 1), 1.0 / (a2 + 1.0));
  FigCFDictionarySetCGRect();
}

CFTypeRef FigAppleMakerNoteStillImageProcessingFlagsToShortString(uint64_t a1)
{
  v1 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%u", a1);

  return CFAutorelease(v1);
}

double fcmu_scaleValidBufferRectOverWidth(double a1, double a2, double a3, double a4, double a5)
{
  v6 = a3 * a5;
  v7 = (a3 - v6) * 0.5;
  return a1 + FigCaptureRoundFloatToMultipleOf(2, v7);
}

id __FigCaptureMetadataUtilitiesGetTimeZoneFormatter_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x1E696AC80]);
  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  [v1 setTimeZone:{objc_msgSend(v3, "timeZone")}];
  [v1 setFormatOptions:1088];

  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t __FigCaptureMetadataUtilitiesGetTimeZoneFormatter_block_invoke_2(uint64_t a1)
{
  FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sTimeZoneFormatter = (*(*(a1 + 32) + 16))();
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E695DA68];
  v4 = [MEMORY[0x1E696ADC8] mainQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FigCaptureMetadataUtilitiesGetTimeZoneFormatter_block_invoke_3;
  v6[3] = &unk_1E7990510;
  v6[4] = *(a1 + 32);
  return [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:v6];
}

void __FigCaptureMetadataUtilitiesGetTimeZoneFormatter_block_invoke_3(uint64_t a1)
{
  v2 = FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sTimeZoneFormatter;
  v1 = (*(*(a1 + 32) + 16))();
  os_unfair_lock_lock(&FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sLock);
  FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sTimeZoneFormatter = v1;
  os_unfair_lock_unlock(&FigCaptureMetadataUtilitiesGetTimeZoneFormatter_sLock);
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithCameraManufacturer(void *a1, uint64_t a2, uint64_t a3)
{
  context = objc_autoreleasePoolPush();
  v7 = *MEMORY[0x1E6973550];
  v8 = *MEMORY[0x1E6971F48];
  v21[0] = *MEMORY[0x1E6971F40];
  v6 = v21[0];
  v21[1] = v8;
  v9 = *MEMORY[0x1E69603D8];
  v24[0] = v7;
  v24[1] = v9;
  v11 = *MEMORY[0x1E69602B8];
  v12 = *MEMORY[0x1E6971F80];
  v22 = *MEMORY[0x1E6971F10];
  v10 = v22;
  v23 = v12;
  v24[2] = v11;
  v24[3] = a2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v21 count:4];
  v14 = *MEMORY[0x1E6973558];
  v19[0] = v6;
  v19[1] = v8;
  v20[0] = v14;
  v20[1] = v9;
  v19[2] = v10;
  v19[3] = v12;
  v20[2] = v11;
  v20[3] = a3;
  v18[0] = v13;
  v18[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2]);
  objc_autoreleasePoolPop(context);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithISOSpeedRating(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = &unk_1AD046C1C;
  v6 = 53;
  while (v6)
  {
    v7 = *(v5 - 1);
    v8 = *v5++ + v7;
    --v6;
    if (a2 <= v8 >> 1)
    {
      a2 = v7;
      break;
    }
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
  v10 = *MEMORY[0x1E6973508];
  v11 = *MEMORY[0x1E6971F48];
  v17[0] = *MEMORY[0x1E6971F40];
  v17[1] = v11;
  v12 = *MEMORY[0x1E69603D8];
  v18[0] = v10;
  v18[1] = v12;
  v13 = *MEMORY[0x1E6971F80];
  v17[2] = *MEMORY[0x1E6971F10];
  v17[3] = v13;
  v18[2] = *MEMORY[0x1E69602B8];
  v18[3] = v9;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorTranslationMatrices(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6973568];
  v6 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v13[0] = v5;
  v13[1] = v7;
  v8 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v8;
  v13[2] = *MEMORY[0x1E6960260];
  v13[3] = a2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceFactors(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6973570];
  v6 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v13[0] = v5;
  v13[1] = v7;
  v8 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v8;
  v13[2] = *MEMORY[0x1E6960260];
  v13[3] = a2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithShutterSpeedAngle(void *a1, double a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2fdeg", *&a2];
  v6 = *MEMORY[0x1E6973520];
  v7 = *MEMORY[0x1E6971F48];
  v13[0] = *MEMORY[0x1E6971F40];
  v13[1] = v7;
  v8 = *MEMORY[0x1E69603D8];
  v14[0] = v6;
  v14[1] = v8;
  v9 = *MEMORY[0x1E6971F80];
  v13[2] = *MEMORY[0x1E6971F10];
  v13[3] = v9;
  v14[2] = *MEMORY[0x1E69602B8];
  v14[3] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithExposureTime(void *a1, double a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f", *&a2];
  v6 = *MEMORY[0x1E6973528];
  v7 = *MEMORY[0x1E6971F48];
  v13[0] = *MEMORY[0x1E6971F40];
  v13[1] = v7;
  v8 = *MEMORY[0x1E69603D8];
  v14[0] = v6;
  v14[1] = v8;
  v9 = *MEMORY[0x1E6971F80];
  v13[2] = *MEMORY[0x1E6971F10];
  v13[3] = v9;
  v14[2] = *MEMORY[0x1E69602B8];
  v14[3] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithWhiteBalanceCCT(void *a1, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dK", a2];
  v6 = *MEMORY[0x1E6973530];
  v7 = *MEMORY[0x1E6971F48];
  v13[0] = *MEMORY[0x1E6971F40];
  v13[1] = v7;
  v8 = *MEMORY[0x1E69603D8];
  v14[0] = v6;
  v14[1] = v8;
  v9 = *MEMORY[0x1E6971F80];
  v13[2] = *MEMORY[0x1E6971F10];
  v13[3] = v9;
  v14[2] = *MEMORY[0x1E69602B8];
  v14[3] = v5;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLSCGains(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = @"com.apple.proresraw.lscdata";
  v12[1] = v6;
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[2] = *MEMORY[0x1E6960260];
  v12[3] = a2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithColorCorrectionTemperatureAndTintColorCorrectionMatrices(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = @"com.apple.proresraw.whitebalance.byccttint.colormatrices";
  v12[1] = v6;
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[2] = *MEMORY[0x1E6960260];
  v12[3] = a2;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithFullFrameRatePlaybackIntent(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = @"com.apple.quicktime.full-frame-rate-playback-intent";
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithStabilizationInfo(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6973560];
  v6 = *MEMORY[0x1E6971F48];
  v12[0] = *MEMORY[0x1E6971F40];
  v12[1] = v6;
  v7 = *MEMORY[0x1E69603D8];
  v13[0] = v5;
  v13[1] = v7;
  v8 = *MEMORY[0x1E6971F80];
  v12[2] = *MEMORY[0x1E6971F10];
  v12[3] = v8;
  v13[2] = *MEMORY[0x1E6960260];
  v13[3] = a2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForCinematicVideoIntent(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = *off_1E798D238;
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForGreenGhostPresence(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = *off_1E798D248;
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

uint64_t FigCaptureMetadataUtilitiesCreateMovieLevelMetadataForFrontAndBackCameraComposition(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *MEMORY[0x1E6971F48];
  v11[0] = *MEMORY[0x1E6971F40];
  v11[1] = v5;
  v6 = *MEMORY[0x1E69603D8];
  v12[0] = *off_1E798D240;
  v12[1] = v6;
  v12[2] = *MEMORY[0x1E69602A8];
  v7 = *MEMORY[0x1E6971F80];
  v11[2] = *MEMORY[0x1E6971F10];
  v11[3] = v7;
  v12[3] = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems = fcmu_createMovieLevelMetadataCopyWithAddedQuickTimeMetadataItems(a1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1]);
  objc_autoreleasePoolPop(v4);
  return MovieLevelMetadataCopyWithAddedQuickTimeMetadataItems;
}

CGImageMetadata *FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer(void *a1)
{
  Mutable = CGImageMetadataCreateMutable();
  v10 = Mutable;
  if (Mutable)
  {
    v11 = *off_1E798D098;
    v12 = *off_1E798D0A0;
    v13 = CGImageMetadataRegisterNamespaceForPrefix(Mutable, *off_1E798D098, *off_1E798D0A0, 0);
    if (v13)
    {
      v21 = [a1 objectForKeyedSubscript:*off_1E798A688];
      v22 = [a1 objectForKeyedSubscript:*off_1E798A678];
      if ([v21 intValue] < 0x20000 || v21 == 0)
      {
        v24 = 0x10000;
      }

      else
      {
        v24 = [v21 intValue];
      }

      if (fcmu_addValueToAuxiliaryImageProperties(v10, [MEMORY[0x1E696AD98] numberWithInt:v24], v11, v12, *off_1E798D0B0))
      {
        FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer_cold_2();
        goto LABEL_18;
      }

      if (v22 && fcmu_addValueToAuxiliaryImageProperties(v10, v22, v11, v12, *off_1E798D0A8))
      {
        FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer_cold_3();
LABEL_18:
        CFRelease(v10);
        return 0;
      }
    }

    else if (!FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer_cold_1(v13, v14, v15, v16, v17, v18, v19, v20))
    {
      goto LABEL_18;
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer_cold_4(0, v3, v4, v5, v6, v7, v8, v9, v26, v27, SHIDWORD(v27), v28);
  }

  return v10;
}

CGImageMetadata *FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata(void *a1)
{
  Mutable = CGImageMetadataCreateMutable();
  v10 = Mutable;
  if (Mutable)
  {
    if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/HDRToneMap/1.0/", @"HDRToneMap", 0))
    {
      FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_2(a1);
    }

    else
    {
      FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
      return 0;
    }
  }

  else
  {
    FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata_cold_3(0, v3, v4, v5, v6, v7, v8, v9, v19, v20, SHIDWORD(v20), vars0);
  }

  return v10;
}

CGImageMetadata *FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata(void *a1)
{
  Mutable = CGImageMetadataCreateMutable();
  v10 = Mutable;
  if (!Mutable)
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_20(0, v3, v4, v5, v6, v7, v8, v9, v58.n128_u64[0], v58.n128_i32[2], v58.n128_i32[3], v59.n128_i32[0]);
    return v10;
  }

  v11 = *off_1E798CF20;
  v12 = *off_1E798CF28;
  if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *off_1E798CF20, *off_1E798CF28, 0))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_1(&v58, v13, v14, v15, v16, v17, v18, v19);
    goto LABEL_51;
  }

  [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D000), "floatValue"}];
  if (fcmu_addValueToAuxiliaryImageProperties(v10, [MEMORY[0x1E696AD98] numberWithFloat:?], v11, v12, *off_1E798CF80))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_2();
LABEL_27:
    CFRelease(v10);
    return 0;
  }

  v20 = *off_1E798CF88;
  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CF88), "intValue"}])
  {
    v21 = @"high";
  }

  else
  {
    v21 = @"low";
  }

  if (fcmu_addValueToAuxiliaryImageProperties(v10, v21, v11, v12, v20))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_3();
    goto LABEL_27;
  }

  v22 = *off_1E798CFD0;
  v23 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CFD0), "BOOLValue"}];
  if (fcmu_addValueToAuxiliaryImageProperties(v10, [MEMORY[0x1E696AD98] numberWithBool:v23], v11, v12, *off_1E798CF40))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_4();
    goto LABEL_27;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CFC0), "intValue"}] == 1)
  {
    v24 = @"absolute";
  }

  else
  {
    v24 = @"relative";
  }

  if (fcmu_addValueToAuxiliaryImageProperties(v10, v24, v11, v12, *off_1E798CF30))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_5();
    goto LABEL_27;
  }

  v25 = [a1 objectForKeyedSubscript:*off_1E798CFE0];
  if (v25)
  {
    v58 = 0uLL;
    if (CGSizeMakeWithDictionaryRepresentation(v25, &v58) && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_6() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v26 = [a1 objectForKeyedSubscript:*off_1E798CFD8];
  if ([v26 length] == 48)
  {
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    [v26 getBytes:&v58 length:48];
    v27 = fcmu_arrayInColumnMajorOrderFrom3x3MatrixData(v58, v59, v60);
    v28 = fcmu_addValueToAuxiliaryImageProperties(v10, v27, v11, v12, *off_1E798CF48);
    if (v28)
    {
      FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_7(v28, &v58);
      goto LABEL_27;
    }
  }

  v29 = [a1 objectForKeyedSubscript:*off_1E798CFC8];
  if ([v29 length] == 64)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    [v29 getBytes:&v58 length:64];
    v30 = fcmu_arrayInColumnMajorOrderFrom3x4MatrixData(v58, v59, v60, v61);
    v31 = fcmu_addValueToAuxiliaryImageProperties(v10, v30, v11, v12, *off_1E798CF38);
    if (v31)
    {
      FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_8(v31, &v58);
      goto LABEL_27;
    }
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CFF8), "length"}] == 32 && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_9() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CFE8), "length"}] == 32 && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_10() & 1) == 0)
  {
    goto LABEL_27;
  }

  v32 = [a1 objectForKeyedSubscript:*off_1E798CFF0];
  if (v32)
  {
    v58 = 0uLL;
    if (CGPointMakeWithDictionaryRepresentation(v32, &v58) && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_11() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v34 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798D010), "intValue"}];
  if (fcmu_addValueToAuxiliaryImageProperties(v10, [MEMORY[0x1E696AD98] numberWithInt:v34], v11, v12, *off_1E798CFA8))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_12();
    goto LABEL_27;
  }

  v35 = [a1 objectForKeyedSubscript:*off_1E798D020];
  if (v35 && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_13(v10, v35, v11, v12) & 1) == 0)
  {
    goto LABEL_27;
  }

  v36 = [a1 objectForKeyedSubscript:*off_1E798D018];
  if (v36)
  {
    if ((FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_14(v10, v36, v11, v12) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{v22), "BOOLValue"}])
  {
    v37 = *off_1E798CF00;
    v38 = *off_1E798CF08;
    if (!CGImageMetadataRegisterNamespaceForPrefix(v10, *off_1E798CF00, *off_1E798CF08, 0))
    {
      FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_15(&v58, v39, v40, v41, v42, v43, v44, v45);
      goto LABEL_51;
    }

    v46 = [a1 objectForKeyedSubscript:*off_1E798CEF8];
    if (v46 && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_16(v10, v46, v37, v38) & 1) == 0)
    {
      goto LABEL_27;
    }

    v47 = [objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798CEF0), "base64EncodedStringWithOptions:", 0}];
    if (v47)
    {
      if ((FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_17(v10, v47, v37, v38) & 1) == 0)
      {
        goto LABEL_27;
      }
    }
  }

  if (![objc_msgSend(a1 objectForKeyedSubscript:{v22), "BOOLValue"}])
  {
    return v10;
  }

  v48 = *off_1E798CF90;
  v49 = *off_1E798CF98;
  if (!CGImageMetadataRegisterNamespaceForPrefix(v10, *off_1E798CF90, *off_1E798CF98, 0))
  {
    FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_18(&v58, v50, v51, v52, v53, v54, v55, v56);
LABEL_51:
    if (!v58.n128_u32[0])
    {
      return v10;
    }

    goto LABEL_27;
  }

  v57 = [a1 objectForKeyedSubscript:*off_1E798D220];
  if (v57 && (FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata_cold_19(v10, v57, v48, v49) & 1) == 0)
  {
    goto LABEL_27;
  }

  return v10;
}

uint64_t fcmu_arrayInColumnMajorOrderFrom3x3MatrixData(__n128 a1, __n128 a2, __n128 a3)
{
  v10[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  HIDWORD(v3) = a1.n128_u32[1];
  LODWORD(v3) = a1.n128_u32[1];
  v10[1] = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v10[2] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v10[3] = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  HIDWORD(v4) = a2.n128_u32[1];
  LODWORD(v4) = a2.n128_u32[1];
  v10[4] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v10[5] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v10[6] = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  HIDWORD(v5) = a3.n128_u32[1];
  LODWORD(v5) = a3.n128_u32[1];
  v10[7] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v10[8] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:9];
}

uint64_t fcmu_arrayInColumnMajorOrderFrom3x4MatrixData(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v13[0] = [MEMORY[0x1E696AD98] numberWithFloat:?];
  HIDWORD(v4) = a1.n128_u32[1];
  LODWORD(v4) = a1.n128_u32[1];
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v13[2] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a1.n128_u32[1], a1.n128_u32[2]))}];
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:a2.n128_f64[0]];
  HIDWORD(v5) = a2.n128_u32[1];
  LODWORD(v5) = a2.n128_u32[1];
  v13[4] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v13[5] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a2.n128_u32[1], a2.n128_u32[2]))}];
  v13[6] = [MEMORY[0x1E696AD98] numberWithFloat:a3.n128_f64[0]];
  HIDWORD(v6) = a3.n128_u32[1];
  LODWORD(v6) = a3.n128_u32[1];
  v13[7] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v13[8] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a3.n128_u32[1], a3.n128_u32[2]))}];
  v13[9] = [MEMORY[0x1E696AD98] numberWithFloat:a4.n128_f64[0]];
  HIDWORD(v7) = a4.n128_u32[1];
  LODWORD(v7) = a4.n128_u32[1];
  v13[10] = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v13[11] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(a4.n128_u32[1], a4.n128_u32[2]))}];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:12];
}

uint64_t __fcmu_initializeTrace_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

uint64_t __fcmu_makerNoteMetadata_block_invoke()
{
  result = MGGetBoolAnswer();
  fcmu_makerNoteMetadata_sEligibleForLightingEffects = result;
  return result;
}

uint64_t fcmu_indexInMetadataArrayOfQuickTimeMetadataDictionary(void *a1)
{
  if (![a1 count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = 0;
  v3 = *MEMORY[0x1E6971F88];
  v4 = *MEMORY[0x1E6971ED8];
  while (([objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v2), "objectForKeyedSubscript:", v3), "isEqual:", v4}] & 1) == 0)
  {
    if (++v2 >= [a1 count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v2;
}

void FigCaptureSpeakerInterferenceMitigationInitialize(uint64_t result)
{
  if (FigCaptureAudioInterferenceMitigationFigNoteInitialize_onceTokenFigNote != -1)
  {
    FigCaptureSpeakerInterferenceMitigationInitialize_cold_1();
  }

  if (FigCaptureSpeakerInterferenceMitigationInitialize_onceTokenSpeaker != -1)
  {
    FigCaptureSpeakerInterferenceMitigationInitialize_cold_2();
  }
}

uint64_t __FigCaptureSpeakerInterferenceMitigationInitialize_block_invoke()
{
  sIsSpeakerInterferenceMitigationRequiredLock = FigSimpleMutexCreate();
  result = FigCaptureAudiomxdSupportEnabled(sIsSpeakerInterferenceMitigationRequiredLock, v0);
  if (result)
  {
    CStringPtr = CFStringGetCStringPtr(@"SpeakerInterferenceMitigationRequiredChanged", 0x8000100u);
    if (FigCaptureCurrentProcessIsCameracaptured() || FigCaptureCurrentProcessIsMediaserverd())
    {

      return notify_register_check(CStringPtr, &gSpeakerInterferenceMitigationToken);
    }

    else
    {
      result = FigCaptureCurrentProcessIsAudiomxd();
      if (result)
      {
        sSpeakerInterferenceMitigationNotifyQueue = FigDispatchQueueCreateWithPriority();
        result = notify_register_dispatch(CStringPtr, &gSpeakerInterferenceMitigationToken, sSpeakerInterferenceMitigationNotifyQueue, &__block_literal_global_10);
        if (!result)
        {
          state64 = 0;
          result = notify_get_state(gSpeakerInterferenceMitigationToken, &state64);
          sIsSpeakerInterferenceMitigationRequired = state64;
        }
      }
    }
  }

  return result;
}

void __FigCaptureSpeakerInterferenceMitigationInitialize_block_invoke_2()
{
  state64 = 0;
  notify_get_state(gSpeakerInterferenceMitigationToken, &state64);
  FigCaptureSpeakerSetInterferenceMitigationIsRequired(state64, 0);
}

void FigCaptureSpeakerSetInterferenceMitigationIsRequired(unsigned int a1, int a2)
{
  IsAudiomxd = FigCaptureCurrentProcessIsAudiomxd();
  if (!IsAudiomxd)
  {
    IsAudiomxd = FigCaptureCurrentProcessIsCameracaptured();
    if (!IsAudiomxd)
    {
      IsAudiomxd = FigCaptureCurrentProcessIsMediaserverd();
      if (!IsAudiomxd)
      {
        IsAudiomxd = FigCaptureCurrentProcessIsXCTest();
        if (!IsAudiomxd)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured userInfo:{mediaserverd, or audiomxd", 0}]);
        }
      }
    }
  }

  FigCaptureSpeakerInterferenceMitigationInitialize(IsAudiomxd);
  FigSimpleMutexLock();
  v5 = sIsSpeakerInterferenceMitigationRequired;
  if (sIsSpeakerInterferenceMitigationRequired != a1)
  {
    sIsSpeakerInterferenceMitigationRequired = a1;
  }

  FigSimpleMutexUnlock();
  if (a2 || v5 != a1)
  {
    IsCameracaptured = FigCaptureCurrentProcessIsCameracaptured();
    if ((IsCameracaptured || (IsCameracaptured = FigCaptureCurrentProcessIsMediaserverd(), IsCameracaptured)) && FigCaptureAudiomxdSupportEnabled(IsCameracaptured, v7))
    {
      notify_set_state(gSpeakerInterferenceMitigationToken, a1);
      CStringPtr = CFStringGetCStringPtr(@"SpeakerInterferenceMitigationRequiredChanged", 0x8000100u);

      notify_post(CStringPtr);
    }

    else
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();

      CFNotificationCenterPostNotification(LocalCenter, @"SpeakerInterferenceMitigationRequiredChanged", 0, 0, 1u);
    }
  }
}

uint64_t FigCaptureSpeakerInterferenceMitigationIsRequired()
{
  IsAudiomxd = FigCaptureCurrentProcessIsAudiomxd();
  if (!IsAudiomxd)
  {
    IsAudiomxd = FigCaptureCurrentProcessIsCameracaptured();
    if (!IsAudiomxd)
    {
      IsAudiomxd = FigCaptureCurrentProcessIsMediaserverd();
      if (!IsAudiomxd)
      {
        IsAudiomxd = FigCaptureCurrentProcessIsXCTest();
        if (!IsAudiomxd)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured userInfo:{mediaserverd, or audiomxd", 0}]);
        }
      }
    }
  }

  FigCaptureSpeakerInterferenceMitigationInitialize(IsAudiomxd);
  FigSimpleMutexLock();
  v1 = sIsSpeakerInterferenceMitigationRequired;
  FigSimpleMutexUnlock();
  return v1;
}

void FigCaptureMicrophoneInterferenceMitigationInitialize(uint64_t result)
{
  if (FigCaptureAudioInterferenceMitigationFigNoteInitialize_onceTokenFigNote != -1)
  {
    FigCaptureSpeakerInterferenceMitigationInitialize_cold_1();
  }

  if (FigCaptureMicrophoneInterferenceMitigationInitialize_onceTokenMicrophone != -1)
  {
    FigCaptureMicrophoneInterferenceMitigationInitialize_cold_2();
  }
}

uint64_t __FigCaptureMicrophoneInterferenceMitigationInitialize_block_invoke()
{
  sIsMicrophoneInterferenceMitigationRequiredLock = FigSimpleMutexCreate();
  result = FigCaptureAudiomxdSupportEnabled(sIsMicrophoneInterferenceMitigationRequiredLock, v0);
  if (result)
  {
    CStringPtr = CFStringGetCStringPtr(@"MicrophoneInterferenceMitigationRequiredChanged", 0x8000100u);
    if (FigCaptureCurrentProcessIsCameracaptured())
    {

      return notify_register_check(CStringPtr, &gMicrophoneInterferenceMitigationToken);
    }

    else
    {
      result = FigCaptureCurrentProcessIsAudiomxd();
      if (result)
      {
        sMicrophoneInterferenceMitigationNotifyQueue = FigDispatchQueueCreateWithPriority();
        result = notify_register_dispatch(CStringPtr, &gMicrophoneInterferenceMitigationToken, sMicrophoneInterferenceMitigationNotifyQueue, &__block_literal_global_53);
        if (!result)
        {
          state64 = 0;
          result = notify_get_state(gMicrophoneInterferenceMitigationToken, &state64);
          sIsMicrophoneInterferenceMitigationRequired = state64;
        }
      }
    }
  }

  return result;
}

void __FigCaptureMicrophoneInterferenceMitigationInitialize_block_invoke_2()
{
  state64 = 0;
  notify_get_state(gMicrophoneInterferenceMitigationToken, &state64);
  FigCaptureMicrophoneSetInterferenceMitigationIsRequired(state64, 0);
}

void FigCaptureMicrophoneSetInterferenceMitigationIsRequired(unsigned int a1, int a2)
{
  IsAudiomxd = FigCaptureCurrentProcessIsAudiomxd();
  if (!IsAudiomxd)
  {
    IsAudiomxd = FigCaptureCurrentProcessIsCameracaptured();
    if (!IsAudiomxd)
    {
      IsAudiomxd = FigCaptureCurrentProcessIsXCTest();
      if (!IsAudiomxd)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured or audiomxd" userInfo:0]);
      }
    }
  }

  FigCaptureMicrophoneInterferenceMitigationInitialize(IsAudiomxd);
  FigSimpleMutexLock();
  v5 = sIsMicrophoneInterferenceMitigationRequired;
  if (sIsMicrophoneInterferenceMitigationRequired != a1)
  {
    sIsMicrophoneInterferenceMitigationRequired = a1;
  }

  FigSimpleMutexUnlock();
  if (a2 || v5 != a1)
  {
    IsCameracaptured = FigCaptureCurrentProcessIsCameracaptured();
    if (IsCameracaptured && FigCaptureAudiomxdSupportEnabled(IsCameracaptured, v7))
    {
      notify_set_state(gMicrophoneInterferenceMitigationToken, a1);
      CStringPtr = CFStringGetCStringPtr(@"MicrophoneInterferenceMitigationRequiredChanged", 0x8000100u);

      notify_post(CStringPtr);
    }

    else
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();

      CFNotificationCenterPostNotification(LocalCenter, @"MicrophoneInterferenceMitigationRequiredChanged", 0, 0, 1u);
    }
  }
}

uint64_t FigCaptureMicrophoneInterferenceMitigationIsRequired()
{
  IsAudiomxd = FigCaptureCurrentProcessIsAudiomxd();
  if (!IsAudiomxd)
  {
    IsAudiomxd = FigCaptureCurrentProcessIsCameracaptured();
    if (!IsAudiomxd)
    {
      IsAudiomxd = FigCaptureCurrentProcessIsXCTest();
      if (!IsAudiomxd)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"This function may not be called outside of cameracaptured or audiomxd" userInfo:0]);
      }
    }
  }

  FigCaptureMicrophoneInterferenceMitigationInitialize(IsAudiomxd);
  FigSimpleMutexLock();
  v1 = sIsMicrophoneInterferenceMitigationRequired;
  FigSimpleMutexUnlock();
  return v1;
}

const void *BWStillImageCaptureFrameFlagsForSampleBuffer(const void *result)
{
  if (result)
  {
    v1 = CMGetAttachment(result, @"StillImageCaptureFrameFlags", 0);

    return [v1 unsignedLongLongValue];
  }

  return result;
}

void BWStillImageAppendCaptureFrameFlagsToSampleBuffer(const void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(CMGetAttachment(a1, @"StillImageCaptureFrameFlags", 0), "unsignedLongLongValue") | a2}];

    CMSetAttachment(a1, @"StillImageCaptureFrameFlags", v3, 1u);
  }
}

uint64_t BWStillImageBufferTypeForAttachedMediaKey(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, 0x1F217BF50))
  {
    return 19;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 21;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2001;
  }

  if (objc_msgSend_isEqualToString_(a1) & 1) != 0 || ([a1 hasPrefix:0x1F219E970] & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 16;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 41;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2002;
  }

  return 0;
}

uint64_t BWIsLastAdaptiveBracketingFrame(const void *a1)
{
  v1 = CMGetAttachment(a1, *off_1E798D2D0, 0);

  return [v1 BOOLValue];
}

uint64_t BWCleanupRawStillImageSampleBuffer(CMAttachmentBearerRef target)
{
  if (BWCleanupRawStillImageSampleBuffer_onceToken != -1)
  {
    BWCleanupRawStillImageSampleBuffer_cold_1();
  }

  v2 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v3 = BWCleanupRawStillImageSampleBuffer_sGarbageKeys;

  return [v2 removeObjectsForKeys:v3];
}

id __BWCleanupRawStillImageSampleBuffer_block_invoke()
{
  v0 = *off_1E798B490;
  v16[0] = *off_1E798B1E0;
  v16[1] = v0;
  v1 = *off_1E798B120;
  v16[2] = *off_1E798B1D0;
  v16[3] = v1;
  v2 = *off_1E798B0C0;
  v16[4] = *off_1E798B0F8;
  v16[5] = v2;
  v3 = *off_1E798B0D0;
  v16[6] = *off_1E798B0D8;
  v16[7] = v3;
  v4 = *off_1E798B0F0;
  v16[8] = *off_1E798B0C8;
  v16[9] = v4;
  v5 = *off_1E798B0E0;
  v16[10] = *off_1E798B0E8;
  v16[11] = v5;
  v6 = *off_1E798B108;
  v16[12] = *off_1E798B110;
  v16[13] = v6;
  v7 = *off_1E798B138;
  v16[14] = *off_1E798B100;
  v16[15] = v7;
  v8 = *off_1E798B128;
  v16[16] = *off_1E798B130;
  v16[17] = v8;
  v9 = *off_1E798B118;
  v16[18] = *off_1E798B140;
  v16[19] = v9;
  v10 = *off_1E798B440;
  v16[20] = *off_1E798B148;
  v16[21] = v10;
  v11 = *off_1E798B438;
  v16[22] = *off_1E798B448;
  v16[23] = v11;
  v12 = *off_1E798B1A8;
  v16[24] = *off_1E798B358;
  v16[25] = v12;
  v13 = *off_1E798B380;
  v16[26] = *off_1E798B378;
  v16[27] = v13;
  v14 = *off_1E798CEC0;
  v16[28] = *off_1E798B7C8;
  v16[29] = v14;
  v16[30] = *off_1E798CEC8;
  result = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:31];
  BWCleanupRawStillImageSampleBuffer_sGarbageKeys = result;
  return result;
}

uint64_t BWStillImageAutoWhiteBalanceReflowMaximumFrameCount()
{
  if (FigCapturePlatformIdentifier() <= 10)
  {
    return 0;
  }

  else
  {
    return 50;
  }
}

uint64_t RegisterFigExternalStorageDeviceManagerBaseType()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigExternalStorageDeviceManagerClassDesc, ClassID, 1, &sFigExternalStorageDeviceManagerClassID);
}

uint64_t FigExternalStorageDeviceManagerGetTypeID()
{
  MEMORY[0x1B26F02D0](&FigExternalStorageDeviceManagerGetClassID_sRegisterFigExternalStorageDeviceManagerBaseTypeOnce, RegisterFigExternalStorageDeviceManagerBaseType);
  v0 = sFigExternalStorageDeviceManagerClassID;

  return MEMORY[0x1EEDBB488](v0);
}

uint64_t cvs_endpointManagerSetDisplaySource(uint64_t a1)
{
  v2 = a1 != 0;
  os_unfair_lock_lock(&gDisplaySourcePublishedLock);
  v3 = gDisplaySourcePublished;
  v4 = v2 | gDisplaySourcePublished;
  gDisplaySourcePublished = v2;
  os_unfair_lock_unlock(&gDisplaySourcePublishedLock);
  if (a1 && (v3 & 1) != 0)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v7, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CameraViewfinder/FigCameraViewfinderStream.m", 61, @"LastShownDate:FigCameraViewfinderStream.m:61", @"LastShownBuild:FigCameraViewfinderStream.m:61", 0);
    free(v7);
  }

  if ((v4 & 1) == 0)
  {
    v8 = FigCaptureGetFrameworkRadarComponent();
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v8, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CameraViewfinder/FigCameraViewfinderStream.m", 64, @"LastShownDate:FigCameraViewfinderStream.m:64", @"LastShownBuild:FigCameraViewfinderStream.m:64", 0);
    free(v10);
  }

  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v14 = *(VTable + 8);
  result = VTable + 8;
  v15 = *(v14 + 56);
  if (v15)
  {
    return v15(CMBaseObject, *MEMORY[0x1E6971900], a1);
  }

  return result;
}

uint64_t __BWInferenceTextLocalizationCurrentVersion_block_invoke()
{
  v0 = [BWEspressoInferenceAdapter allowE5ForInferenceType:116];
  result = [BWEspressoInferenceAdapter findAvailableVersion:&unk_1F22482E0 defaultOverrideKey:@"text_localization_version" versionLocator:BWInferenceTextLocalizationNetworkForVersion e5Bundle:v0];
  BWInferenceTextLocalizationCurrentVersion_version = result;
  word_1EB58F4AC = WORD2(result);
  return result;
}

void sub_1ACA19C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1ACA19FE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1ACA1A958(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

__CFString *fcn_stringForRecordingState(unsigned int a1)
{
  if (a1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7990948[a1];
  }
}

void fcn_addAllLookAheadMotionDataToMetadata(const void *a1, void *a2, void *a3)
{
  v6 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  v7 = v6;
  v8 = off_1E798A2D8;
  if (!a3)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v22 = v6;
  v23 = a2;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    v13 = *off_1E798A2D8;
    v14 = *off_1E798A8E8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:v13];
        if (v17)
        {
          v18 = v17;
          if ([v16 objectForKeyedSubscript:v14])
          {
            if (!v11)
            {
              v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v11 addObject:v18];
          }
        }

        [v16 removeObjectForKey:v13];
      }

      v10 = [a3 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v7 = v22;
  [v22 setObject:a3 forKeyedSubscript:*off_1E798CE60];
  a2 = v23;
  v8 = off_1E798A2D8;
  if (v23)
  {
LABEL_19:
    v19 = *v8;
    v20 = [a2 objectForKeyedSubscript:*v8];
    if (v20)
    {
      v21 = v20;
      if ([a2 objectForKeyedSubscript:*off_1E798A8E8])
      {
        if (!v11)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [v11 addObject:v21];
      }
    }

    [a2 removeObjectForKey:v19];
    [v7 setObject:a2 forKeyedSubscript:*off_1E798CE58];
  }

LABEL_25:
  if ([v11 count])
  {
    CMSetAttachment(a1, *off_1E798A4B8, v11, 1u);
  }
}

void *fcn_synchronizedSlaveFrameForSampleBuffer(const void *a1)
{
  result = BWSampleBufferGetAttachedMedia(a1, 0x1F21AAA50);
  if (!result)
  {

    return BWSampleBufferGetAttachedMedia(a1, @"SynchronizedSlaveFrame");
  }

  return result;
}

CMTime *fcn_getEndingPTSOfFirstBufferInStagingQueue@<X0>(void *a1@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  result = [a1 count];
  if (result)
  {
    if (result == 1)
    {
      v5 = [a1 objectAtIndexedSubscript:0];
      memset(&v9, 0, sizeof(v9));
      result = CMSampleBufferGetDuration(&v9, v5);
      if (v9.flags)
      {
        CMSampleBufferGetPresentationTimeStamp(&lhs, v5);
        v7 = v9;
        return CMTimeAdd(a2, &lhs, &v7);
      }
    }

    else
    {
      v6 = [a1 objectAtIndexedSubscript:1];

      return CMSampleBufferGetPresentationTimeStamp(a2, v6);
    }
  }

  return result;
}

CMSampleBufferRef fcn_createAudioBufferTrimmedToStartTime(opaqueCMSampleBuffer *a1, CMTime *a2)
{
  timingArrayEntriesNeededOut = 0;
  sampleBufferOut = 0;
  NumSamples = CMSampleBufferGetNumSamples(a1);
  CMSampleBufferGetSampleTimingInfoArray(a1, 0, 0, &timingArrayEntriesNeededOut);
  result = 0;
  if (timingArrayEntriesNeededOut == 1 && NumSamples >= 2)
  {
    memset(&timingInfoOut, 0, sizeof(timingInfoOut));
    SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(a1, 0, &timingInfoOut);
    result = 0;
    if (!SampleTimingInfo)
    {
      memset(&v17, 0, sizeof(v17));
      CMSampleBufferGetPresentationTimeStamp(&v17, a1);
      FormatDescription = CMSampleBufferGetFormatDescription(a1);
      StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(FormatDescription);
      mSampleRate = StreamBasicDescription->mSampleRate;
      time = v17;
      CMTimeConvertScale(&lhs, &time, mSampleRate, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      v17 = lhs;
      v11 = StreamBasicDescription->mSampleRate;
      time = *a2;
      CMTimeConvertScale(&lhs, &time, v11, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      *&a2->value = *&lhs.value;
      epoch = lhs.epoch;
      a2->epoch = lhs.epoch;
      *&lhs.value = *&a2->value;
      lhs.epoch = epoch;
      time = v17;
      CMTimeSubtract(&v14, &lhs, &time);
      v13.location = v14.value;
      if (v14.value <= 0)
      {
        return CFRetain(a1);
      }

      else if (NumSamples <= v14.value)
      {
        return 0;
      }

      else
      {
        v13.length = NumSamples - v14.value;
        CMSampleBufferCopySampleBufferForRange(*MEMORY[0x1E695E480], a1, v13, &sampleBufferOut);
        return sampleBufferOut;
      }
    }
  }

  return result;
}

uint64_t FigCaptureDeferredContainerManagerGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigCaptureDeferredContainerManagerGetClassID_onceToken != -1)
  {
    FigCaptureDeferredContainerManagerGetClassID_cold_1();
  }

  return FigCaptureDeferredContainerManagerGetClassID_sFigCaptureDeferredContainerManagerClassID;
}

uint64_t __FigCaptureDeferredContainerManagerGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigCaptureDeferredContainerManagerClassDesc, ClassID, 1, &FigCaptureDeferredContainerManagerGetClassID_sFigCaptureDeferredContainerManagerClassID);
}

uint64_t FigCaptureDeferredContainerManagerGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigCaptureDeferredContainerManagerGetClassID_onceToken != -1)
  {
    FigCaptureDeferredContainerManagerGetClassID_cold_1();
  }

  v3 = FigCaptureDeferredContainerManagerGetClassID_sFigCaptureDeferredContainerManagerClassID;

  return MEMORY[0x1EEDBB488](v3);
}

void psn_attachCropRectToSampleBuffer(const void *a1, const __CFString *a2, double a3, double a4, double a5, double a6)
{
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&a3);
  CMSetAttachment(a1, a2, DictionaryRepresentation, 1u);
  if (DictionaryRepresentation)
  {

    CFRelease(DictionaryRepresentation);
  }
}

double psn_limitRectWithinImageCircle(uint64_t a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v18 = MEMORY[0x1E695F060];
  v38 = *MEMORY[0x1E695F060];
  FigCFDictionaryGetCGSizeIfPresent();
  v37 = *MEMORY[0x1E695EFF8];
  FigCFDictionaryGetCGPointIfPresent();
  if (*&v38 != *v18 || *(&v38 + 1) != v18[1])
  {
    v20 = a5 / a6;
    v21 = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(a7, a8, a9, a10, v20);
    v34 = v22;
    v35 = v21;
    v24 = v23;
    v26 = v25;
    v36 = a3;
    v27 = FigCaptureMetadataUtilitiesDenormalizePoint(*&v37, *(&v37 + 1), a2);
    v29 = v28;
    v30 = FigCaptureRectMidPoint(v21, v24, v34, v26);
    v32 = v31;
    FigCaptureGetDistanceBetweenPoints(v27, v29, v30, v31);
    FigCaptureGetDistanceBetweenPoints(v35, v24, v30, v32);
    return v36;
  }

  return a3;
}

CGFloat psn_widerCameraBoundingRect(int a1, CGFloat result, CGFloat a3, CGFloat a4, CGFloat a5, float a6, float a7, double a8, float a9)
{
  v9 = 4032.0 / (a8 * 4224.0);
  v10 = 1.0 / a8;
  if (!a1)
  {
    v10 = v9;
  }

  v11 = v9 * a9;
  if ((a6 * 1.5) < a7)
  {
    a7 = a6 * 1.5;
  }

  if (a7 < a6)
  {
    a7 = a6;
  }

  v12 = (a7 - a6) / ((a6 * 1.5) - a6);
  v13 = v11 + ((1.0 - v11) * v12);
  v14 = (v10 * a9) + ((1.0 - (v10 * a9)) * v12);
  if (v13 != 1.0 || v14 != 1.0)
  {
    return FigCaptureMetadataUtilitiesScaleRect2D(result, a3, a4, a5, v13);
  }

  return result;
}

uint64_t psn_conformRectForMSR420vfBoundedByDimensions(double a1, double a2, double a3, double a4, uint64_t a5, int a6)
{
  v10 = a3;
  FigCaptureRoundFloatToMultipleOf(2, v10);
  v11 = a4;
  FigCaptureRoundFloatToMultipleOf(2, v11);
  if (a6)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v12 = a1;
  FigCaptureRoundFloatToMultipleOf(v13, v12);
  v14 = a2;
  return FigCaptureRoundFloatToMultipleOf(v13, v14);
}

uint64_t psn_imageWithBlurredEdges(void *a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10, float a11, float a12)
{
  v18 = [MEMORY[0x1E695F648] sourceOverCompositingFilter];
  v19 = [MEMORY[0x1E695F648] radialGradientFilter];
  v53.origin.x = a3;
  v53.origin.y = a4;
  v53.size.width = a5;
  v53.size.height = a6;
  MidX = CGRectGetMidX(v53);
  v54.origin.x = a3;
  v54.origin.y = a4;
  v54.size.width = a5;
  v54.size.height = a6;
  [v19 setCenter:{MidX, CGRectGetMidY(v54)}];
  if (a5 >= a6)
  {
    v21 = a6;
  }

  else
  {
    v21 = a5;
  }

  v22 = a11;
  if (a11 > 1.0)
  {
    v22 = 1.0;
  }

  v23 = v22;
  v24 = 1.0 - v23;
  v25 = v21 * 0.5;
  if (v22 >= 0.0)
  {
    v26 = v24;
  }

  else
  {
    v26 = 1.0;
  }

  v27 = v25 * v26;
  *&v27 = v27;
  [v19 setRadius0:v27];
  *&v28 = v25;
  [v19 setRadius1:v28];
  v29 = 1.0;
  if (a12 <= 1.0)
  {
    v29 = a12;
  }

  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = (v29 * 0.6) + 0.4;
  v31 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  [v19 setColor0:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:colorSpace:", v31, 0.0, 0.0, 0.0)}];
  [v19 setColor1:{objc_msgSend(MEMORY[0x1E695F610], "colorWithRed:green:blue:colorSpace:", v31, v30, v30, v30)}];
  v32 = [v19 outputImage];
  CGColorSpaceRelease(v31);
  v47 = *(MEMORY[0x1E695EFD0] + 16);
  *&v52.a = *MEMORY[0x1E695EFD0];
  v48 = *&v52.a;
  *&v52.c = v47;
  *&v52.tx = *(MEMORY[0x1E695EFD0] + 32);
  v46 = *&v52.tx;
  [v19 center];
  v34 = -v33;
  [v19 center];
  CGAffineTransformMakeTranslation(&t2, v34, -v35);
  *&t1.a = v48;
  *&t1.c = v47;
  *&t1.tx = v46;
  CGAffineTransformConcat(&v52, &t1, &t2);
  CGAffineTransformMakeScale(&t1, a5 / v21, a6 / v21);
  v49 = v52;
  CGAffineTransformConcat(&t2, &v49, &t1);
  v52 = t2;
  [v19 center];
  v37 = v36;
  [v19 center];
  CGAffineTransformMakeTranslation(&t1, v37, v38);
  v49 = v52;
  CGAffineTransformConcat(&t2, &v49, &t1);
  v52 = t2;
  [v18 setInputImage:{objc_msgSend(objc_msgSend(v32, "imageByApplyingTransform:", &t2), "imageByCroppingToRect:", a3, a4, a5, a6)}];
  [v18 setBackgroundImage:{objc_msgSend(MEMORY[0x1E695F658], "whiteImage")}];
  if ((a2 & 1) == 0)
  {
    v39 = [MEMORY[0x1E695F648] maskedVariableBlurFilter];
    [v39 setInputImage:{objc_msgSend(a1, "imageByCroppingToRect:", a7, a8, a9, a10)}];
    [v39 setMask:{objc_msgSend(v18, "outputImage")}];
    LODWORD(v40) = 6.0;
    [v39 setRadius:v40];
    v18 = v39;
  }

  return [v18 outputImage];
}

void *__psn_attachedMediaKeysToPropagateForStyles_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{0x1F21AB070, 0x1F21AB0D0, 0}];
  psn_attachedMediaKeysToPropagateForStyles_propagatingKeysForStyles = result;
  return result;
}

CGFloat OUTLINED_FUNCTION_95_1(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  v62 = STACK[0x350];

  return CGRectGetMidY(*&a1);
}

double ptmsn_getSampleBufferPTS@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = CMGetAttachment(a1, *off_1E798A420, 0);
  CMTimeMakeFromDictionary(a2, v4);
  if ((*(a2 + 12) & 1) == 0)
  {
    CMSampleBufferGetPresentationTimeStamp(&v6, a1);
    result = *&v6.value;
    *a2 = v6;
  }

  return result;
}

uint64_t FigCaptureDeferredPhotoProcessorGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigCaptureDeferredPhotoProcessorGetClassID_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorGetClassID_cold_1();
  }

  return FigCaptureDeferredPhotoProcessorGetClassID_sFigCaptureDeferredPhotoProcessorClassID;
}

uint64_t __FigCaptureDeferredPhotoProcessorGetClassID_block_invoke()
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&sFigCaptureDeferredPhotoProcessorClassDesc, ClassID, 1, &FigCaptureDeferredPhotoProcessorGetClassID_sFigCaptureDeferredPhotoProcessorClassID);
}

uint64_t FigCaptureDeferredPhotoProcessorGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigCaptureDeferredPhotoProcessorGetClassID_onceToken != -1)
  {
    FigCaptureDeferredPhotoProcessorGetClassID_cold_1();
  }

  v3 = FigCaptureDeferredPhotoProcessorGetClassID_sFigCaptureDeferredPhotoProcessorClassID;

  return MEMORY[0x1EEDBB488](v3);
}

__CFString *mfsp_pipelineNameFromSmartStyleAttachedMediaKey(void *a1, uint64_t a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, 0x1F21AAED0))
  {
    return @"Person";
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return @"Skin";
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return @"Sky";
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return @"Linear-Thumbnail";
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return @"Delta-Map";
  }

  return @"Unknown";
}

BWNodeOutput *mfsp_buildMovieFileScalerNode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8, char a9, unsigned int a10)
{
  v28 = 0;
  if ([a1 irisVISEnabled])
  {
    v16 = 0;
  }

  else
  {
    v16 = [a1 requiresScalingForInputTransForm:a3 nodeName:{a4, @"Movie File Scaler"}];
  }

  v17 = objc_alloc_init(BWPixelTransferNode);
  v18 = v17;
  if ((v16 & 1) == 0 && (a9 & 1) == 0)
  {
    [(BWPixelTransferNode *)v17 setPassesBuffersThroughWhenPossible:1];
  }

  v19 = [MEMORY[0x1E696AD60] stringWithString:@"Movie File "];
  v20 = v19;
  if (v16)
  {
    [v19 appendString:@"Scaler/"];
  }

  [v20 appendString:@"Zoomer/"];
  [v20 deleteCharactersInRange:{objc_msgSend(v20, "length") - 1, 1}];
  [(BWPixelTransferNode *)v18 passesBuffersThroughWhenPossible];
  [(BWNode *)v18 setName:v20];
  v21 = [objc_msgSend(a1 "sourceConfiguration")];
  v22 = [v21 dimensions];
  v23 = HIDWORD(v22);
  v24 = v22;
  if ([a1 outputWidth] && objc_msgSend(a1, "outputHeight"))
  {
    v24 = [a1 outputWidth];
    LODWORD(v23) = [a1 outputHeight];
  }

  [(BWPixelTransferNode *)v18 setCropMode:1];
  [(BWPixelTransferNode *)v18 setOutputWidth:v24];
  [(BWPixelTransferNode *)v18 setOutputHeight:v23];
  [(BWPixelTransferNode *)v18 setMaxLossyCompressionLevel:a10];
  if (a9)
  {
    [(BWPixelTransferNode *)v18 setOutputColorSpaceProperties:6];
  }

  if (!FigCapturePlatformSupportsHTPC16x8Compression() && !FigCapturePlatformSupportsUniversalCompression())
  {
    -[BWPixelTransferNode setOutputPixelFormat:](v18, "setOutputPixelFormat:", [v21 format]);
  }

  [(BWPixelTransferNode *)v18 setExpectsMarkerBuffers:1];
  if ([a6 addNode:v18 error:&v28])
  {
    *a8 = v18;
    if ([a5 connectOutput:a2 toInput:-[BWNode input](v18 pipelineStage:{"input"), a7}])
    {
      return [(BWNode *)v18 output];
    }

    else
    {
      mfsp_buildMovieFileScalerNode_cold_2();
    }
  }

  else
  {
    mfsp_buildMovieFileScalerNode_cold_1();
  }

  return a2;
}

void AppC3DUpdateCallbackHandler(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v10 = [a1 referencedObject];
  if (!a7 && v10)
  {

    [(BWAppClipCodeNode *)v10 didReceiveAppC3DUpdate:a2 userData:a6];
  }
}

uint64_t FigCaptureSourceRemoteCopyProxySource(uint64_t a1, uint64_t a2)
{
  xdict = 0;
  v8 = 0;
  v6 = 0;
  if (csr_ensureClientEstablished_0())
  {
    FigCaptureSourceRemoteCopyProxySource_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSourceRemoteCopyProxySource_cold_2();
  }

  else if (FigXPCMessageSetCFString())
  {
    FigCaptureSourceRemoteCopyProxySource_cold_3();
  }

  else
  {
    [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:32];
    if (FigXPCMessageSetCFData())
    {
      FigCaptureSourceRemoteCopyProxySource_cold_4();
    }

    else if (FigXPCRemoteClientSendSyncMessageCreatingReply())
    {
      FigCaptureSourceRemoteCopyProxySource_cold_5();
    }

    else
    {
      value = xpc_dictionary_get_value(xdict, *MEMORY[0x1E69615C8]);
      if (value)
      {
        v4 = captureSourceRemote_createInternal(value, &v6);
        if (v4)
        {
          FigCaptureSourceRemoteCopyProxySource_cold_6(v4);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource()
{
  xdict = 0;
  v5 = 0;
  v3 = 0;
  if (csr_ensureClientEstablished_0())
  {
    FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_2();
  }

  else if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_3();
  }

  else
  {
    value = xpc_dictionary_get_value(xdict, *MEMORY[0x1E69615C8]);
    v1 = captureSourceRemote_createInternal(value, &v3);
    if (v1)
    {
      FigCaptureSourceRemoteCopyExternalSyncDeviceDiscoverySessionSource_cold_4(v1);
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t FigCaptureSourceRemoteMaxStillImageJPEGDataSize()
{
  v0 = csr_ensureClientEstablished_0();
  if (v0)
  {
    FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_1(v0, v1);
LABEL_9:
    uint64 = 0;
    goto LABEL_5;
  }

  v2 = FigXPCCreateBasicMessage();
  if (v2)
  {
    FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_2(v2, v3);
    goto LABEL_9;
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    FigCaptureSourceRemoteMaxStillImageJPEGDataSize_cold_3(v4);
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615C8]);
LABEL_5:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return uint64;
}

void *FigCaptureSourceRemoteShowVideoEffectUserInterfaceForCinematicFramingOnboardingUI(void *a1, void *a2)
{
  result = objc_msgSend_isEqualToString_([objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")]);
  if (result)
  {

    return captureSourceRemote_ShowSystemUserInterface(1, a1, a2);
  }

  return result;
}

uint64_t captureSourceRemote_ShowSystemUserInterface(int a1, void *a2, void *a3)
{
  v3 = a3;
  v4 = a2;
  if (a2)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v3 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
LABEL_3:
  if (csr_ensureClientEstablished_0())
  {
    captureSourceRemote_ShowSystemUserInterface_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    captureSourceRemote_ShowSystemUserInterface_cold_2();
  }

  else
  {
    xpc_dictionary_set_string(0, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_BundleID, [v4 UTF8String]);
    xpc_dictionary_set_string(0, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_AppName, [v3 UTF8String]);
    xpc_dictionary_set_int64(0, kFigCaptureSourceRemoteShowSystemUserInterfaceMessagePayload_SystemUserInterface, a1);
    v6 = FigXPCRemoteClientSendSyncMessage();
    if (v6)
    {
      captureSourceRemote_ShowSystemUserInterface_cold_3(v6);
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigCaptureSourceRemotePublishFrameSenderServerEndpoint(void *a1, void *a2, void *a3, int a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (csr_ensureClientEstablished_0())
  {
    FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_2();
  }

  else
  {
    xpc_dictionary_set_value(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_Endpoint, a1);
    xpc_dictionary_set_string(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointUniqueID, [a2 UTF8String]);
    xpc_dictionary_set_string(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointType, [a3 UTF8String]);
    xpc_dictionary_set_int64(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointPID, a4);
    xpc_dictionary_set_int64(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointProxyPID, a5);
    FigXPCMessageSetCFData();
    if (a7)
    {
      FigXPCMessageSetCFData();
    }

    v15 = kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointCameraUniqueID;
    if (a8)
    {
      v16 = [a8 UTF8String];
    }

    else
    {
      v16 = "unknown";
    }

    xpc_dictionary_set_string(0, v15, v16);
    v17 = FigXPCRemoteClientSendSyncMessage();
    if (v17)
    {
      FigCaptureSourceRemotePublishFrameSenderServerEndpoint_cold_3(v17);
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint(void *a1)
{
  if (csr_ensureClientEstablished_0())
  {
    FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_2();
  }

  else
  {
    xpc_dictionary_set_string(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointUniqueID, [a1 UTF8String]);
    v2 = FigXPCRemoteClientSendSyncMessage();
    if (v2)
    {
      FigCaptureSourceRemoteSuppressFrameSenderServerEndpoint_cold_3(v2);
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

NSDictionary *FigCaptureSourceRemoteCopyFrameSenderEndpoints()
{
  v0 = csr_ensureClientEstablished_0();
  if (v0)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_1(v0, v1);
LABEL_13:
    v7 = 0;
LABEL_14:
    v8 = 0;
    goto LABEL_8;
  }

  v2 = FigXPCCreateBasicMessage();
  if (v2)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_2(v2, v3);
    goto LABEL_13;
  }

  v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v4)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_3(v4);
    goto LABEL_13;
  }

  value = xpc_dictionary_get_value(0, kFigCaptureSourceRemoteFrameSenderEndpointMessagePayload_EndpointArray);
  if (!value)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_6();
    goto LABEL_13;
  }

  v6 = [[CMCaptureFrameSenderEndpoints alloc] initWithXPCArrayOfFrameSenderEndpoints:value];
  v7 = v6;
  if (!v6)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_5();
    goto LABEL_14;
  }

  v8 = [(CMCaptureFrameSenderEndpoints *)v6 endpointsByPID];
  if (!v8)
  {
    FigCaptureSourceRemoteCopyFrameSenderEndpoints_cold_4();
  }

LABEL_8:
  FigXPCRelease();
  FigXPCRelease();

  FigXPCRemoteClientKillServerOnTimeout();
  return v8;
}

uint64_t csr_deadConnectionCallback_0(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!a1)
  {
    result = csr_deadConnectionCallback_cold_1_0();
  }

  *(v3 + 9) = 1;
  return result;
}

void __csr_deadServerCallback_block_invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"CaptureSourceConnectionDied", 0, 0, 0);
}

uint64_t captureSourceRemote_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    return 0;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 8) = 1;
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(v2 + 16) = 0;
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(v2 + 32) = 0;
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(v2 + 40) = 0;
  }

  if (*(v2 + 9))
  {
    return 0;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    v6 = v8;
    captureSourceRemote_Invalidate_cold_1();
  }

  else
  {
    v9 = FigXPCRemoteClientSendSyncMessage();
    v6 = v9;
    if (v9)
    {
      captureSourceRemote_Invalidate_cold_2(v9);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t captureSourceRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSourceRemote_Invalidate(a1);
  result = sCaptureSourceRemoteClient;
  if (sCaptureSourceRemoteClient)
  {
    result = FigXPCRemoteClientDisassociateObject();
  }

  if (!*(DerivedStorage + 9))
  {
    if (FigXPCCreateBasicMessage())
    {
      captureSourceRemote_Finalize_cold_1();
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
      if (v4)
      {
        captureSourceRemote_Finalize_cold_2(v4);
      }
    }

    FigXPCRelease();
    return FigXPCRemoteClientKillServerOnTimeout();
  }

  return result;
}

__CFString *captureSourceRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSourceRemote %p retainCount: %ld%s allocator: %p, objectID: %lld>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t captureSourceRemote_CheckTCCAccess(uint64_t a1)
{
  v5 = 0;
  v1 = captureSourceRemote_createBasicMessage(a1, 1668572003, &v5);
  if (v1)
  {
    v3 = v1;
    captureSourceRemote_CheckTCCAccess_cold_1();
  }

  else
  {
    v2 = FigXPCRemoteClientSendSyncMessage();
    v3 = v2;
    if (v2)
    {
      captureSourceRemote_CheckTCCAccess_cold_2(v2);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

uint64_t captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v2 = captureSourceRemote_createBasicMessage(a1, 1970172004, &v7);
  if (v2)
  {
    v5 = v2;
    captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_1();
  }

  else
  {
    v3 = FigXPCMessageSetCFString();
    if (v3)
    {
      v5 = v3;
      captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_2();
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
      v5 = v4;
      if (v4)
      {
        captureSourceRemote_UnregisterNotificationForProprietaryDefaultChanges_cold_3(v4);
      }
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

int64_t captureSourceRemote_UpdateCameraOverrideHistory(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, BOOL *a6, void *a7)
{
  xdict = 0;
  *a6 = 0;
  *a7 = 0;
  v9 = csr_ensureClientEstablished_0();
  if (v9)
  {
    v14 = v9;
    captureSourceRemote_UpdateCameraOverrideHistory_cold_1();
  }

  else
  {
    v10 = captureSourceRemote_createBasicMessage(a1, 1969450856, &xdict);
    if (v10)
    {
      v14 = v10;
      captureSourceRemote_UpdateCameraOverrideHistory_cold_2();
    }

    else
    {
      v11 = FigXPCMessageSetCFString();
      if (v11)
      {
        v14 = v11;
        captureSourceRemote_UpdateCameraOverrideHistory_cold_3();
      }

      else
      {
        xpc_dictionary_set_BOOL(xdict, kFigCaptureSourceRemoteCameraOverrideHistoryMessageKey_SetOverride, a5 != 0);
        v12 = FigXPCMessageSetCFDictionary();
        if (v12)
        {
          v14 = v12;
          captureSourceRemote_UpdateCameraOverrideHistory_cold_4();
        }

        else
        {
          v13 = FigXPCRemoteClientSendSyncMessageCreatingReply();
          if (v13)
          {
            v14 = v13;
            captureSourceRemote_UpdateCameraOverrideHistory_cold_5();
          }

          else
          {
            v14 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  return v14;
}

uint64_t captureSourceRemote_PerformReactionEffect(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = csr_ensureClientEstablished_0();
  if (v3)
  {
    v7 = v3;
    captureSourceRemote_PerformReactionEffect_cold_1();
  }

  else
  {
    v4 = captureSourceRemote_createBasicMessage(a1, 1919120496, &v9);
    if (v4)
    {
      v7 = v4;
      captureSourceRemote_PerformReactionEffect_cold_2();
    }

    else
    {
      v5 = FigXPCMessageSetCFString();
      if (v5)
      {
        v7 = v5;
        captureSourceRemote_PerformReactionEffect_cold_3();
      }

      else
      {
        v6 = FigXPCRemoteClientSendAsyncMessage();
        v7 = v6;
        if (v6)
        {
          captureSourceRemote_PerformReactionEffect_cold_4(v6);
        }
      }
    }
  }

  FigXPCRelease();
  return v7;
}

uint64_t captureSourceRemote_CopyWildcardProprietaryDefault(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  if (!a3)
  {
    captureSourceRemote_CopyWildcardProprietaryDefault_cold_6(a1, a2);
    goto LABEL_11;
  }

  v3 = captureSourceRemote_createBasicMessage(a1, 1663725668, &v8);
  if (v3)
  {
    v7 = v3;
    captureSourceRemote_CopyWildcardProprietaryDefault_cold_1();
  }

  else
  {
    v4 = FigXPCMessageSetCFString();
    if (v4)
    {
      v7 = v4;
      captureSourceRemote_CopyWildcardProprietaryDefault_cold_2();
    }

    else
    {
      v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!v5)
      {
        captureSourceRemote_CopyWildcardProprietaryDefault_cold_5();
LABEL_11:
        v7 = 0;
        goto LABEL_6;
      }

      v7 = v5;
      captureSourceRemote_CopyWildcardProprietaryDefault_cold_3();
    }
  }

LABEL_6:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v7;
}

uint64_t captureSourceRemote_SetWildcardProprietaryDefault(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = 0;
  v5 = captureSourceRemote_createBasicMessage(a1, 1932161124, &v13);
  if (v5)
  {
    v11 = v5;
    captureSourceRemote_SetWildcardProprietaryDefault_cold_1();
  }

  else
  {
    v6 = FigXPCMessageSetCFString();
    if (v6)
    {
      v11 = v6;
      captureSourceRemote_SetWildcardProprietaryDefault_cold_2();
    }

    else
    {
      v7 = FigXPCMessageSetCFObject();
      if (v7)
      {
        v11 = v7;
        captureSourceRemote_SetWildcardProprietaryDefault_cold_3();
      }

      else
      {
        v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v8)
        {
          v11 = v8;
          captureSourceRemote_SetWildcardProprietaryDefault_cold_4();
        }

        else
        {
          v9 = objc_autoreleasePoolPush();
          v10 = FigXPCMessageCopyCFObject();
          v11 = v10;
          *a4 = 0;
          if (v10)
          {
            captureSourceRemote_SetWildcardProprietaryDefault_cold_5(v10);
          }

          objc_autoreleasePoolPop(v9);
        }
      }
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v11;
}

uint64_t mrcn_createSampleBufferProcessor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = FigSampleBufferProcessorCreateForCustom();
  if (v3)
  {
    mrcn_createSampleBufferProcessor_cold_1();
  }

  return v3;
}

void mrcn_processorOutputReadyCallback(void *a1, int a2, void *target)
{
  v5 = [CMGetAttachment(target *off_1E798A3C8];
  memset(&v12, 0, sizeof(v12));
  BWGetOriginalPresentationTimeStampFromBuffer(target, &v12);
  v6 = [v5 count];
  sampleTimingArray.duration = v12;
  if ([(BWMRCNode *)a1 _shouldEmitSBufForBarcodeCount:v6 originalPTS:&sampleTimingArray.duration.value])
  {
    memset(&timingArrayOut, 0, sizeof(timingArrayOut));
    CMSampleBufferGetSampleTimingInfoArray(target, 1, &timingArrayOut, 0);
    CMSampleBufferGetPresentationTimeStamp(&v10, target);
    v13 = 0;
    *&sampleTimingArray.duration.value = *MEMORY[0x1E6960C70];
    v7 = *(MEMORY[0x1E6960C70] + 16);
    sampleTimingArray.presentationTimeStamp = v10;
    sampleTimingArray.duration.epoch = v7;
    *&sampleTimingArray.decodeTimeStamp.value = *&sampleTimingArray.duration.value;
    sampleTimingArray.decodeTimeStamp.epoch = v7;
    v8 = CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v13);
    v9 = v13;
    if (v13 && !v8)
    {
      CMSetAttachment(v13, *off_1E798A2E0, v5, 1u);
      CMSetAttachment(v13, *off_1E798A2E8, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "count")}], 1u);
      v9 = v13;
    }

    if (v9)
    {
      [objc_msgSend(a1 "output")];
      CFRelease(v9);
    }
  }
}

uint64_t FigCaptureGetHxCameraNewBugsRadarComponent()
{
  v0 = FigCapturePlatformIdentifier() - 5;
  if (v0 >= 9)
  {
    return 1;
  }

  else
  {
    return v0 + 20;
  }
}

__CFString *FigCaptureGetRadarFriendlyProcessNameString()
{
  if (FigCaptureCurrentProcessIsCameracaptured())
  {
    return @"Camera capture";
  }

  if (FigCaptureCurrentProcessIsDeferredmediad())
  {
    return @"Photo processing";
  }

  v1 = [MEMORY[0x1E696AE30] processInfo];

  return [v1 processName];
}

void FigCapturePleaseFileRadar(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, const __CFString *a7, const __CFString *a8, char a9)
{
  if (fcru_initializeTrace_sInitializeTraceOnceToken != -1)
  {
    FigCapturePleaseFileRadar_cold_1();
  }

  if (FigDebugIsInternalBuild())
  {
    v13 = [MEMORY[0x1E695DF00] date];
    v14 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v14 setDateFormat:@"yyyy_MM_dd HH:mm:ss.SSS"];
    v15 = [v14 stringFromDate:v13];

    if (a3)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n\n", a3];
    }

    else
    {
      v16 = &stru_1F216A3D0;
    }

    v78 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ error.\nTap to file a Radar.", FigCaptureGetRadarFriendlyProcessNameString()];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", a2];
    v18 = MEMORY[0x1E696AEC0];
    v19 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v20 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v21 = [v18 stringWithFormat:@"An error occurred while I was...\n\n%@Called from: %s:%d\nOperating system: %@\nProcess name: %@\nProcess ID: %d\nTime of error: %@", v16, a5, a6, v19, v20, objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "processIdentifier"), v15];
    if (fcru_initializeTrace_sInitializeTraceOnceToken != -1)
    {
      FigCapturePleaseFileRadar_cold_1();
    }

    if (FigDebugIsInternalBuild())
    {
      v81 = v17;
      value = MGCopyAnswer();
      v22 = kFigCapturePreferencesDomain_CameraCaptureVolatile;
      if (!FigCaptureCurrentProcessIsCameracaptured() && !FigCaptureCurrentProcessIsDeferredmediad())
      {
        v22 = MEMORY[0x1E695E8A8];
      }

      v23 = *v22;
      v24 = *MEMORY[0x1E695E8B8];
      v25 = *MEMORY[0x1E695E898];
      v26 = [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")];
      if (v26)
      {
        FigCapturePleaseFileRadar_cold_7(v26, v27, v28, v29, v30, v31, v32, v33);
      }

      else
      {
        v34 = CFPreferencesCopyValue(a8, v23, v24, v25);
        isEqualToString = objc_msgSend_isEqualToString_(v34);
        if (isEqualToString)
        {
          FigCapturePleaseFileRadar_cold_6(isEqualToString, v36, v37, v38, v39, v40, v41, v42);
        }

        else
        {
          v43 = CFPreferencesCopyValue(@"LastShownDate:AnyPrompt", v23, v24, v25);
          if (v43 && (v44 = [v13 timeIntervalSinceDate:v43], v52 <= 60.0))
          {
            FigCapturePleaseFileRadar_cold_3(v44, v45, v46, v47, v48, v49, v50, v51);
          }

          else
          {
            v77 = v21;
            v53 = CFPreferencesCopyKeyList(v23, v24, v25);
            if (v53)
            {
              v54 = v53;
              if (CFArrayGetCount(v53) >= 1)
              {
                for (i = 0; i < CFArrayGetCount(v54); ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v54, i);
                  if (CFStringHasPrefix(ValueAtIndex, @"LastShownDate:"))
                  {
                    if ([objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")])
                    {
                      continue;
                    }
                  }

                  else
                  {
                    if (!CFStringHasPrefix(ValueAtIndex, @"LastShownBuild:"))
                    {
                      continue;
                    }

                    v57 = CFPreferencesCopyValue(ValueAtIndex, v23, v24, v25);
                    if (objc_msgSend_isEqualToString_(v57))
                    {
                      continue;
                    }
                  }

                  CFPreferencesSetValue(ValueAtIndex, 0, v23, v24, v25);
                }
              }

              CFRelease(v54);
            }

            CFPreferencesSetValue(a7, v13, v23, v24, v25);
            CFPreferencesSetValue(a8, value, v23, v24, v25);
            CFPreferencesSetValue(@"LastShownDate:AnyPrompt", v13, v23, v24, v25);
            if (fcru_initializeTrace_sInitializeTraceOnceToken != -1)
            {
              FigCapturePleaseFileRadar_cold_1();
            }

            if (FigDebugIsInternalBuild())
            {
              v58 = FigCaptureCurrentProcessIsXCTest();
              if (v58)
              {
                FigCapturePleaseFileRadar_cold_9(v58, v59, v60, v61, v62, v63, v64, v65);
              }

              else
              {
                v93 = 0;
                v92 = OS_LOG_TYPE_DEFAULT;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v67 = objc_alloc_init(MEMORY[0x1E695DF90]);
                [v67 setObject:v77 forKeyedSubscript:@"description"];
                [v67 setObject:@"Serious Bug" forKeyedSubscript:@"classification"];
                [v67 setObject:@"Not Applicable" forKeyedSubscript:@"reproducibility"];
                [v67 setObject:&stru_1F216A3D0 forKeyedSubscript:@"keywordIDs"];
                v68 = a1 - 1;
                if (a1 - 1) <= 0x1A && ((0x7F807FFu >> v68))
                {
                  v69 = off_1E7990E18[v68];
                  v70 = off_1E7990EF0[v68];
                  [v67 setObject:off_1E7990D40[v68] forKeyedSubscript:@"componentName"];
                  [v67 setObject:v69 forKeyedSubscript:@"componentVersion"];
                  [v67 setObject:v70 forKeyedSubscript:@"componentID"];
                }

                if (a4)
                {
                  [v67 setObject:objc_msgSend(a4 forKeyedSubscript:{"componentsJoinedByString:", @", "), @"keywordIDs"}];
                }

                if (fcru_promptOpenTapToRadar_onceToken != -1)
                {
                  FigCapturePleaseFileRadar_cold_5();
                }

                v71 = sUserNotificationCenter;
                if (sUserNotificationCenter)
                {
                  *&v85 = 0;
                  *(&v85 + 1) = &v85;
                  v86 = 0x3052000000;
                  v87 = __Block_byref_object_copy__10;
                  v88 = __Block_byref_object_dispose__10;
                  v89 = 0;
                  if (a9)
                  {
                    *(*(&v85 + 1) + 40) = dispatch_semaphore_create(0);
                    v71 = sUserNotificationCenter;
                  }

                  v90[0] = MEMORY[0x1E69E9820];
                  v90[1] = 3221225472;
                  v90[2] = __fcru_promptOpenTapToRadar_block_invoke_81;
                  v90[3] = &unk_1E7990CF8;
                  v90[4] = v78;
                  v90[5] = v81;
                  v91 = a9;
                  v90[6] = v67;
                  v90[7] = &v85;
                  [v71 getNotificationSettingsWithCompletionHandler:{v90, v75, v76}];
                  FigCapturePleaseFileRadar_cold_8(&v85 + 8, &v85);
                }

                else
                {
                  v93 = 0;
                  v92 = OS_LOG_TYPE_DEFAULT;
                  v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v73 = v93;
                  if (os_log_type_enabled(v72, v92))
                  {
                    v74 = v73;
                  }

                  else
                  {
                    v74 = v73 & 0xFFFFFFFE;
                  }

                  if (v74)
                  {
                    LODWORD(v85) = 136315138;
                    *(&v85 + 4) = "fcru_promptOpenTapToRadar";
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  fcru_openTapToRadarModalFallback(v78, v81, v67);
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1ACA336D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __fcru_initializeTrace_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();

  return fig_note_initialize_category_with_default_work_cf();
}

void *__fcru_promptOpenTapToRadar_block_invoke()
{
  result = [objc_alloc(MEMORY[0x1E6983308]) initWithBundleIdentifier:@"com.apple.camera"];
  sUserNotificationCenter = result;
  return result;
}

NSObject *__fcru_promptOpenTapToRadar_block_invoke_81(uint64_t a1, void *a2)
{
  if ([a2 authorizationStatus] == 2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = objc_alloc_init(MEMORY[0x1E6983220]);
    [v6 setTitle:v4];
    [v6 setBody:v3];
    [v6 setUserInfo:v5];
    v7 = [MEMORY[0x1E6983300] triggerWithTimeInterval:0 repeats:1.0];
    v8 = [MEMORY[0x1E6983298] requestWithIdentifier:@"FigCaptureTTR" content:v6 trigger:v7];
    [sUserNotificationCenter addNotificationRequest:v8 withCompletionHandler:&__block_literal_global_265];
  }

  else if (*(a1 + 64) == 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    fcru_openTapToRadarModalFallback(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  result = *(*(*(a1 + 56) + 8) + 40);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

double fcru_openTapToRadarModalFallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  error = 0;
  v16[0] = *MEMORY[0x1E695EE58];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@\n%@", a1, a2];
  v6 = *MEMORY[0x1E695EE78];
  v17[0] = v5;
  v17[1] = @"File radar";
  v7 = *MEMORY[0x1E695EE70];
  v16[1] = v6;
  v16[2] = v7;
  v17[2] = @"Ignore";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v9 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 1800.0, 0, &error, v8);
  if (v9)
  {
    v10 = v9;
    v11 = dispatch_time(0, 1000000000);
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __fcru_openTapToRadarModalFallback_block_invoke;
    block[3] = &unk_1E798FE50;
    block[5] = a3;
    block[6] = v10;
    block[4] = a2;
    dispatch_after(v11, global_queue, block);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

double __fcru_openTapToRadarNotification_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

double __fcru_openTapToRadarModalFallback_block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(a1 + 48), 0.0, &responseFlags);
  CFRelease(*(a1 + 48));
  LODWORD(v36) = 0;
  LOBYTE(v48) = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v3 = v36;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v48))
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFE;
  }

  if (v4)
  {
    *v32 = 136315395;
    *&v32[4] = "fcru_openTapToRadarModalFallback_block_invoke";
    *&v32[12] = 2049;
    *&v32[14] = responseFlags;
    LODWORD(v30) = 22;
    v29 = v32;
    _os_log_send_and_compose_impl();
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (!responseFlags)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v8 setScheme:@"tap-to-radar"];
    [v8 setHost:@"new"];
    v9 = [MEMORY[0x1E695DF70] array];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"IncludeDevicePrefixInTitle", @"1"}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Title", v7)}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Description", objc_msgSend(v6, "objectForKeyedSubscript:", @"description"}];
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v11 setDateFormat:@"yyyy.MM.dd_HH-mm-ss"];
    v12 = [v11 stringFromDate:v10];

    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"TimeOfIssue", v12)}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentName", objc_msgSend(v6, "objectForKeyedSubscript:", @"componentName"}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentVersion", objc_msgSend(v6, "objectForKeyedSubscript:", @"componentVersion"}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"ComponentID", objc_msgSend(v6, "objectForKeyedSubscript:", @"componentID"}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Classification", objc_msgSend(v6, "objectForKeyedSubscript:", @"classification"}];
    [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Reproducibility", objc_msgSend(v6, "objectForKeyedSubscript:", @"reproducibility"}];
    if ([v6 objectForKeyedSubscript:@"keywordIDs"])
    {
      [v9 addObject:{objc_msgSend(MEMORY[0x1E696AF60], "queryItemWithName:value:", @"Keywords", objc_msgSend(v6, "objectForKeyedSubscript:", @"keywordIDs"}];
    }

    [v8 setQueryItems:{v9, v29, v30}];
    v13 = [v8 URL];
    if (!v13)
    {
      goto LABEL_13;
    }

    v14 = v13;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3052000000;
    v43 = __Block_byref_object_copy__10;
    v44 = __Block_byref_object_dispose__10;
    v45 = dispatch_semaphore_create(0);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v15 = [MEMORY[0x1E6963608] defaultWorkspace];
    *v32 = MEMORY[0x1E69E9820];
    *&v32[8] = 3221225472;
    *&v32[16] = __fcru_openURLViaWorkspace_block_invoke;
    v33 = &unk_1E7990D20;
    v34 = &v36;
    v35 = &v40;
    [v15 openURL:v14 configuration:0 completionHandler:v32];
    v16 = v41[5];
    if (v16)
    {
      dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v41[5]);
      v41[5] = 0;
    }

    v17 = *(v37 + 24);
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v40, 8);
    if ((v17 & 1) == 0)
    {
LABEL_13:
      LODWORD(v36) = 0;
      LOBYTE(v48) = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v36;
      if (os_log_type_enabled(v18, v48))
      {
        v20 = v19;
      }

      else
      {
        v20 = v19 & 0xFFFFFFFE;
      }

      if (v20)
      {
        *v32 = 136315138;
        *&v32[4] = "fcru_openTapToRadarModalFallback_block_invoke";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v22 = *(a1 + 32);
      v21 = *(a1 + 40);
      error = 0;
      v48 = *MEMORY[0x1E695EE58];
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"We were unable to automatically launch Tap-to-Radar.\n\nPlease open the Tap-to-Radar app and manually file a radar with the following...\n\nComponent: %@\nTitle: %@", objc_msgSend(v21, "objectForKeyedSubscript:", @"componentName", v22];
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v48 count:1];
      v24 = CFUserNotificationCreate(*MEMORY[0x1E695E480], 1800.0, 0, &error, v23);
      if (v24)
      {
        v25 = v24;
        v40 = 0;
        CFUserNotificationReceiveResponse(v24, 0.0, &v40);
        CFRelease(v25);
      }

      else
      {
        v47 = 0;
        v46 = OS_LOG_TYPE_DEFAULT;
        v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v27 = v47;
        if (os_log_type_enabled(v26, v46))
        {
          v28 = v27;
        }

        else
        {
          v28 = v27 & 0xFFFFFFFE;
        }

        if (v28)
        {
          *v32 = 136315394;
          *&v32[4] = "fcru_showManualTTRDialog";
          *&v32[12] = 1024;
          *&v32[14] = error;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

void sub_1ACA34514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

NSObject *__fcru_openURLViaWorkspace_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void sub_1ACA34F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureCameraStreamingPowerLogInitialize(void *a1, void *a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  v4 = [MEMORY[0x1E695DF00] date];
  if (!qword_1ED844E98)
  {
    qword_1ED844E98 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if (!sCameraPowerLogEventQueue)
  {
    sCameraPowerLogEventQueue = FigDispatchQueueCreateWithPriority();
  }

  if (!sOSStateHandle_0)
  {
    v5 = [FigCaptureOSStateHandle alloc];
    sOSStateHandle_0 = [(FigCaptureOSStateHandle *)v5 initWithTitle:@"FigCapturePowerLogSupport" queue:sCameraPowerLogEventQueue dataProviderBlock:&__block_literal_global_35];
  }

  if ([a1 count])
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E110];
    do
    {
      v8 = [a1 objectAtIndexedSubscript:v6];
      v9 = figCapturePowerLoggingCameraTypeForPortTypeAndDeviceType(v8, [objc_msgSend(a2 objectAtIndexedSubscript:{v6), "intValue"}]);
      v15[0] = v7;
      v10 = [MEMORY[0x1E696AD98] numberWithInt:{v9, @"Streaming", @"CameraType"}];
      v14[2] = @"Timestamp";
      v15[1] = v10;
      v15[2] = v4;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
      [qword_1ED844E98 setObject:v11 forKeyedSubscript:v8];
      ++v6;
    }

    while ([a1 count] > v6);
  }

  dispatch_async(sCameraPowerLogEventQueue, &__block_literal_global_26);
  result = FigDebugIsInternalBuild();
  if (result)
  {
    if (!qword_1ED844EA0)
    {
      v13 = [FigCapturePowerLogMissingCameraStopEventObserver alloc];
      result = [(FigCapturePowerLogMissingCameraStopEventObserver *)v13 initWithQueue:?];
      qword_1ED844EA0 = result;
    }
  }

  return result;
}

void *__FigCaptureCameraStreamingPowerLogInitialize_block_invoke()
{
  dispatch_assert_queue_V2(sCameraPowerLogEventQueue);
  v0 = [MEMORY[0x1E695DF90] dictionary];
  [v0 setObject:qword_1ED844E98 forKeyedSubscript:@"Camera Streaming Power Events"];
  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E898];
  v3 = CFPreferencesCopyValue(@"LastShownMissingCameraStopPowerEventTTRPromptDate", @"com.apple.cameracapture.volatile", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = CFPreferencesCopyValue(@"LastShownMissingCameraStopPowerEventTTRPromptBuildVersion", @"com.apple.cameracapture.volatile", v1, v2);
  if (v3)
  {
    [v0 setObject:v3 forKeyedSubscript:@"LastShownMissingCameraStopPowerEventTTRPromptDate"];
  }

  if (v4)
  {
    [v0 setObject:v4 forKeyedSubscript:@"LastShownMissingCameraStopPowerEventTTRPromptBuildVersion"];
  }

  return v0;
}

uint64_t __FigCaptureCameraStreamingPowerLogInitialize_block_invoke_2()
{
  cpls_logCameraStreamingPowerEvents([qword_1ED844E98 allValues]);
  v0 = getpid();
  v1 = !FigContinuityCaptureGetUserPreferenceDisabled();

  return FigCaptureLogContinuityCameraPowerEvent(v0, v1);
}

uint64_t FigCaptureLogContinuityCameraPowerEvent(uint64_t a1, uint64_t a2)
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if ((objc_msgSend_isEqualToString_([objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")]) & 1) == 0 && !FigCaptureCurrentProcessIsCameracaptured())
  {
    FigCaptureCurrentProcessIsMediaserverd();
  }

  v5[1] = @"Enabled";
  v6[0] = [MEMORY[0x1E696AD98] numberWithInt:{a1, @"PID"}];
  v6[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a2];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  return PLLogRegisteredEvent();
}

uint64_t FigCaptureLogTorchPowerEvent(int a1, const void *a2, float a3)
{
  valuePtr = a1;
  v9 = a3;
  v4 = *MEMORY[0x1E695E480];
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(v4, kCFNumberFloat32Type, &v9);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  Mutable = CFDictionaryCreateMutable(v4, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, @"PID", v5);
  CFDictionaryAddValue(Mutable, @"State", v6);
  if (a2)
  {
    CFDictionaryAddValue(Mutable, @"ApplicationID", a2);
  }

  PLLogRegisteredEvent();
  CFRelease(Mutable);
  CFRelease(v5);
  CFRelease(v6);
  return 1;
}

void *__FigCaptureLogCameraStillImageCapturePowerEvent_block_invoke(uint64_t a1)
{
  v2 = qword_1ED844EB0;
  if (!qword_1ED844EB0)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
    qword_1ED844EB0 = v2;
  }

  v3 = [objc_msgSend(v2 objectForKeyedSubscript:{*(a1 + 32)), "intValue"}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:(v3 + 1)];
  result = [qword_1ED844EB0 setObject:v4 forKeyedSubscript:*(a1 + 32)];
  if (*(a1 + 40) == 1)
  {
    ++_MergedGlobals_1;
  }

  return result;
}

uint64_t _requestConcreteImplementation(objc_class *a1, const char *a2, objc_class *a3)
{
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  if (v6 == a3)
  {
    return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** -%@ cannot be sent to an abstract object of class %@: Create a concrete instance!", v8, v7}];
  }

  v9 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromClass(v6);
  v14 = NSStringFromSelector(a2);
  v10 = 45;
  if (v6 == a1)
  {
    v10 = 43;
  }

  v11 = [v9 stringWithFormat:@"%c[%@ %@]", v10, v13, v14];
  return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"*** -%@ only defined for abstract class.  Define %@!", v8, v11}];
}

CFTypeRef qtmfsn_bufferSpecifiesFileWriterAction(const void *a1, const void *a2)
{
  result = CMGetAttachment(a1, @"FileWriterAction", 0);
  if (result)
  {
    return (CFEqual(result, a2) != 0);
  }

  return result;
}

__CFString *qtmfsn_stringForRecordingState(uint64_t a1)
{
  if (a1 >= 7)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%d)", a1];
  }

  else
  {
    return off_1E7991140[a1];
  }
}

uint64_t FigFormatWriterAddTrack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3);
}

uint64_t FigFormatWriterSetTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

void sub_1ACA3EC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACA3FB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1ACA3FFE4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_1ACA40B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDASessionCreateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DiskArbitrationLibrary();
  result = dlsym(v2, "DASessionCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDASessionCreateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DiskArbitrationLibrary()
{
  v2[0] = 0;
  if (!DiskArbitrationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __DiskArbitrationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7991128;
    v4 = 0;
    DiskArbitrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DiskArbitrationLibraryCore_frameworkLibrary;
  if (!DiskArbitrationLibraryCore_frameworkLibrary)
  {
    DiskArbitrationLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __DiskArbitrationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  DiskArbitrationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getDADiskCreateFromVolumePathSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DiskArbitrationLibrary();
  result = dlsym(v2, "DADiskCreateFromVolumePath");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDADiskCreateFromVolumePathSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDADiskCopyIOMediaSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DiskArbitrationLibrary();
  result = dlsym(v2, "DADiskCopyIOMedia");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDADiskCopyIOMediaSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __qtmfsn_minFreeDiskSpaceLimit_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    FigCFDictionaryGetInt64IfPresent();
    CFRelease(v1);
  }

  if (!_MergedGlobals_2)
  {
    _MergedGlobals_2 = 209715200;
  }
}

uint64_t OUTLINED_FUNCTION_91_1@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 8);

  return FigCaptureFrameRateAsInt(v4, v5);
}

uint64_t FigImageControl_LockWhiteBalance(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 7428) = 0;
  *(DerivedStorage + 7444) = 0;
  return 0;
}

uint64_t FigImageControl_ManualWhiteBalanceGains(uint64_t a1, __int16 a2, __int16 a3, __int16 a4, int a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 7428) = 0;
  if (*(DerivedStorage + 517) == 1)
  {
    *(DerivedStorage + 7432) = a2;
    *(DerivedStorage + 7434) = a3;
    *(DerivedStorage + 7436) = a4;
    *(DerivedStorage + 7440) = a5;
  }

  *(DerivedStorage + 7444) = 0;
  return 0;
}

uint64_t VisionLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = VisionLibraryCore_frameworkLibrary;
  v6 = VisionLibraryCore_frameworkLibrary;
  if (!VisionLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7991208;
    v8 = *off_1E7991218;
    v9 = 0;
    v4[3] = _sl_dlopen();
    VisionLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1ACA467C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __VisionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  VisionLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary()
{
  v3 = 0;
  v0 = VisionLibraryCore(&v3);
  if (!v0)
  {
    VisionLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getVNImageRequestHandlerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNImageRequestHandlerClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNImageRequestHandlerClass_softClass;
  if (!getVNImageRequestHandlerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNImageRequestHandlerClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNImageRequestHandlerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA4696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNImageRequestHandlerClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
  }

  getVNImageRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNSequenceRequestHandlerClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNSequenceRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNSequenceRequestHandlerClass_block_invoke_cold_1();
  }

  getVNSequenceRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNProcessingDeviceClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNProcessingDevice");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNProcessingDeviceClass_block_invoke_cold_1();
  }

  getVNProcessingDeviceClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNFaceObservationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNFaceObservationClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNFaceObservationClass_softClass;
  if (!getVNFaceObservationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNFaceObservationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNFaceObservationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA46B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNFaceObservationClass_block_invoke_cold_1();
  }

  getVNFaceObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNDetectedObjectObservationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNDetectedObjectObservationClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNDetectedObjectObservationClass_softClass;
  if (!getVNDetectedObjectObservationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNDetectedObjectObservationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNDetectedObjectObservationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA46CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectedObjectObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectedObjectObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectedObjectObservationClass_block_invoke_cold_1();
  }

  getVNDetectedObjectObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceLandmarksRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectFaceLandmarksRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceLandmarksRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceRectanglesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectFaceRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNTranslationalImageRegistrationRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNTranslationalImageRegistrationRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNTranslationalImageRegistrationRequestClass_softClass;
  if (!getVNTranslationalImageRegistrationRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNTranslationalImageRegistrationRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNTranslationalImageRegistrationRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA46E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNTranslationalImageRegistrationRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNTranslationalImageRegistrationRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNTranslationalImageRegistrationRequestClass_block_invoke_cold_1();
  }

  getVNTranslationalImageRegistrationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNClassifyImageAestheticsRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNClassifyImageAestheticsRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNClassifyImageAestheticsRequestClass_softClass;
  if (!getVNClassifyImageAestheticsRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNClassifyImageAestheticsRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNClassifyImageAestheticsRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA46FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNClassifyImageAestheticsRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNClassifyImageAestheticsRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNClassifyImageAestheticsRequestClass_block_invoke_cold_1();
  }

  getVNClassifyImageAestheticsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNGenerateAttentionBasedSaliencyImageRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass;
  if (!getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNGenerateAttentionBasedSaliencyImageRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNGenerateAttentionBasedSaliencyImageRequestClass_block_invoke_cold_1();
  }

  getVNGenerateAttentionBasedSaliencyImageRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNGenerateFaceSegmentsRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNGenerateFaceSegmentsRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNGenerateFaceSegmentsRequestClass_softClass;
  if (!getVNGenerateFaceSegmentsRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNGenerateFaceSegmentsRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNGenerateFaceSegmentsRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNGenerateFaceSegmentsRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNGenerateFaceSegmentsRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNGenerateFaceSegmentsRequestClass_block_invoke_cold_1();
  }

  getVNGenerateFaceSegmentsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNClassifyJunkImageRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNClassifyJunkImageRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNClassifyJunkImageRequestClass_softClass;
  if (!getVNClassifyJunkImageRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNClassifyJunkImageRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNClassifyJunkImageRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA473A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNClassifyJunkImageRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNClassifyJunkImageRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNClassifyJunkImageRequestClass_block_invoke_cold_1();
  }

  getVNClassifyJunkImageRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNCreateSceneprintRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNCreateSceneprintRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNCreateSceneprintRequestClass_softClass;
  if (!getVNCreateSceneprintRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNCreateSceneprintRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNCreateSceneprintRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA474EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNCreateSceneprintRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNCreateSceneprintRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNCreateSceneprintRequestClass_block_invoke_cold_1();
  }

  getVNCreateSceneprintRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVN5kJNH3eYuyaLxNpZr5Z7ziClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVN5kJNH3eYuyaLxNpZr5Z7ziClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVN5kJNH3eYuyaLxNpZr5Z7ziClass_softClass;
  if (!getVN5kJNH3eYuyaLxNpZr5Z7ziClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VN5kJNH3eYuyaLxNpZr5Z7zi");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVN5kJNH3eYuyaLxNpZr5Z7ziClass_block_invoke_cold_1();
  }

  getVN5kJNH3eYuyaLxNpZr5Z7ziClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNClassifyFaceAttributesRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNClassifyFaceAttributesRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNClassifyFaceAttributesRequestClass_softClass;
  if (!getVNClassifyFaceAttributesRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNClassifyFaceAttributesRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNClassifyFaceAttributesRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNClassifyFaceAttributesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNClassifyFaceAttributesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1();
  }

  getVNClassifyFaceAttributesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNRecognizeFoodAndDrinkRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRecognizeFoodAndDrinkRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNRecognizeFoodAndDrinkRequestClass_block_invoke_cold_1();
  }

  getVNRecognizeFoodAndDrinkRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNTrackObjectRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNTrackObjectRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNTrackObjectRequestClass_softClass;
  if (!getVNTrackObjectRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNTrackObjectRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNTrackObjectRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNTrackObjectRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNTrackObjectRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNTrackObjectRequestClass_block_invoke_cold_1();
  }

  getVNTrackObjectRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNSessionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNSessionClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNSessionClass_softClass;
  if (!getVNSessionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNSessionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNSessionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNSessionClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNSession");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNSessionClass_block_invoke_cold_1();
  }

  getVNSessionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNRecognizedObjectObservationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNRecognizedObjectObservationClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNRecognizedObjectObservationClass_softClass;
  if (!getVNRecognizedObjectObservationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNRecognizedObjectObservationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNRecognizedObjectObservationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNRecognizedObjectObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNRecognizedObjectObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNRecognizedObjectObservationClass_block_invoke_cold_1();
  }

  getVNRecognizedObjectObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNProcessingDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNProcessingDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNProcessingDescriptorClass_softClass;
  if (!getVNProcessingDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNProcessingDescriptorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNProcessingDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNProcessingDescriptorClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNProcessingDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNProcessingDescriptorClass_block_invoke_cold_1();
  }

  getVNProcessingDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNResourceVersionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNResourceVersionClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNResourceVersionClass_softClass;
  if (!getVNResourceVersionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNResourceVersionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNResourceVersionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNResourceVersionClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNResourceVersion");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNResourceVersionClass_block_invoke_cold_1();
  }

  getVNResourceVersionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNDetectHumanRectanglesRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNDetectHumanRectanglesRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNDetectHumanRectanglesRequestClass_softClass;
  if (!getVNDetectHumanRectanglesRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNDetectHumanRectanglesRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNDetectHumanRectanglesRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA47F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectHumanRectanglesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectHumanRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectHumanRectanglesRequestClass_block_invoke_cold_1();
  }

  getVNDetectHumanRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNDetectFaceCaptureQualityRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__13;
  v0 = getVNDetectFaceCaptureQualityRequestClass_softClass;
  v7 = __Block_byref_object_dispose__13;
  v8 = getVNDetectFaceCaptureQualityRequestClass_softClass;
  if (!getVNDetectFaceCaptureQualityRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getVNDetectFaceCaptureQualityRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getVNDetectFaceCaptureQualityRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA480A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getVNDetectFaceCaptureQualityRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectFaceCaptureQualityRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceCaptureQualityRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceCaptureQualityRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getVNInferenceNetworkIdentifierFaceprintSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNInferenceNetworkIdentifierFaceprintSymbolLoc_ptr;
  v6 = getVNInferenceNetworkIdentifierFaceprintSymbolLoc_ptr;
  if (!getVNInferenceNetworkIdentifierFaceprintSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNInferenceNetworkIdentifierFaceprint");
    getVNInferenceNetworkIdentifierFaceprintSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA481EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVNInferenceNetworkIdentifierFaceprintSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNInferenceNetworkIdentifierFaceprint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNInferenceNetworkIdentifierFaceprintSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVNInferenceNetworkIdentifierFaceprint()
{
  VNInferenceNetworkIdentifierFaceprintSymbolLoc = getVNInferenceNetworkIdentifierFaceprintSymbolLoc();
  if (!VNInferenceNetworkIdentifierFaceprintSymbolLoc)
  {
    getVNInferenceNetworkIdentifierFaceprint_cold_1();
  }

  return *VNInferenceNetworkIdentifierFaceprintSymbolLoc;
}

uint64_t getVNFaceAttributeEyesClosedSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  v6 = getVNFaceAttributeEyesClosedSymbolLoc_ptr;
  if (!getVNFaceAttributeEyesClosedSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNFaceAttributeEyesClosed");
    getVNFaceAttributeEyesClosedSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA4834C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVNFaceAttributeEyesClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNFaceAttributeEyesClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeEyesClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVNFaceAttributeEyesClosed()
{
  VNFaceAttributeEyesClosedSymbolLoc = getVNFaceAttributeEyesClosedSymbolLoc();
  if (!VNFaceAttributeEyesClosedSymbolLoc)
  {
    getVNFaceAttributeEyesClosed_cold_1();
  }

  return *VNFaceAttributeEyesClosedSymbolLoc;
}

void *__getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNSetRequestConcurrentTasksProcessingTimeout");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNSetRequestConcurrentTasksProcessingTimeoutSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNSetRequiresHighQoSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNSetRequiresHighQoS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNSetRequiresHighQoSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNSetTargetDispatchQueueSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNSetTargetDispatchQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNSetTargetDispatchQueueSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVNErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getVNErrorDomainSymbolLoc_ptr;
  v6 = getVNErrorDomainSymbolLoc_ptr;
  if (!getVNErrorDomainSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "VNErrorDomain");
    getVNErrorDomainSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA4859C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getVNErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getVNErrorDomain()
{
  VNErrorDomainSymbolLoc = getVNErrorDomainSymbolLoc();
  if (!VNErrorDomainSymbolLoc)
  {
    getVNErrorDomain_cold_1();
  }

  return *VNErrorDomainSymbolLoc;
}

__CFString *FigCaptureThermalLevelToShortString(uint64_t a1)
{
  if (a1 >= 3)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown thermal level %d", a1];
  }

  else
  {
    return off_1E7991290[a1];
  }
}

uint64_t BWStereoUtilitiesComputeRectificationQuaternion(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  if (a4)
  {
    v7 = *MEMORY[0x1E69E9B10];
    v6 = *(MEMORY[0x1E69E9B10] + 16);
    v8 = *(MEMORY[0x1E69E9B10] + 32);
    LODWORD(v9) = HIDWORD(*(MEMORY[0x1E69E9B10] + 16));
    v10 = COERCE_FLOAT(*(MEMORY[0x1E69E9B10] + 40));
    v11 = v10 + (COERCE_FLOAT(*MEMORY[0x1E69E9B10]) + v9);
    if (v11 >= 0.0)
    {
      v19 = sqrtf(v11 + 1.0);
      v20 = v19 + v19;
      v21 = vrecpe_f32(COERCE_UNSIGNED_INT(v19 + v19));
      v22 = vmul_f32(v21, vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v21));
      v22.i32[0] = vmul_f32(v22, vrecps_f32(COERCE_UNSIGNED_INT(v19 + v19), v22)).u32[0];
      *v34.f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&v8), vext_s8(*&v8, *&vextq_s8(v7, v7, 8uLL), 4uLL)), v22.f32[0]);
      v23.f32[0] = *&v7.i32[1] - *v6.i32;
      v23.f32[1] = v20;
      v22.i32[1] = 0.25;
      v36 = vmul_f32(v23, v22);
    }

    else if (*v7.i32 < v9 || *v7.i32 < v10)
    {
      v13 = 1.0 - *v7.i32;
      if (v9 >= v10)
      {
        v37 = sqrtf(v9 + (v13 - v10));
        *&v38 = v37 + v37;
        v39 = vrecpe_f32(v38);
        v40 = vmul_f32(v39, vrecps_f32(v38, v39));
        v41.i32[0] = vmul_f32(v40, vrecps_f32(v38, v40)).u32[0];
        v40.f32[0] = *&v7.i32[1] + *v6.i32;
        v40.i32[1] = v38;
        v36 = vmul_n_f32(vext_s8(vadd_f32(*&v8, vdup_laneq_s32(v6, 2)), vsub_f32(*&v8, *&vextq_s8(v7, v7, 8uLL)), 4uLL), v41.f32[0]);
        v41.i32[1] = 0.25;
        *v34.f32 = vmul_f32(v40, v41);
      }

      else
      {
        v14 = sqrtf(v10 + (v13 - v9));
        v15.f32[0] = v14 + v14;
        v16 = vrecpe_f32(COERCE_UNSIGNED_INT(v14 + v14));
        v17 = vmul_f32(v16, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v16));
        v17.i32[0] = vmul_f32(v17, vrecps_f32(COERCE_UNSIGNED_INT(v14 + v14), v17)).u32[0];
        *v34.f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v6, v6, 8uLL)), *&v8), v17.f32[0]);
        v15.f32[1] = *&v7.i32[1] - *v6.i32;
        __asm { FMOV            V0.2S, #0.25 }

        _D0.i32[1] = v17.i32[0];
        v36 = vmul_f32(v15, _D0);
      }
    }

    else
    {
      v24 = sqrtf(*v7.i32 + ((1.0 - v9) - v10));
      v25.f32[0] = v24 + v24;
      v26 = vrecpe_f32(v25.u32[0]);
      v27 = vmul_f32(v26, vrecps_f32(v25.u32[0], v26));
      LODWORD(v28) = vmul_f32(v27, vrecps_f32(v25.u32[0], v27)).u32[0];
      v25.f32[1] = *&v7.i32[1] + *v6.i32;
      __asm { FMOV            V5.2S, #0.25 }

      _D5.f32[1] = v28;
      *v34.f32 = vmul_f32(v25, _D5);
      v35.i32[0] = vadd_f32(*&vextq_s8(v7, v7, 8uLL), *&v8).u32[0];
      v35.i32[1] = vsub_f32(vdup_laneq_s32(v6, 2), *&v8).i32[1];
      v36 = vmul_n_f32(v35, v28);
    }

    result = 0;
    *&v34.u32[2] = v36;
    *a4 = vmulq_f32(v34, xmmword_1AD046FD0);
  }

  else
  {
    v44 = v4;
    v45 = v5;
    BWStereoUtilitiesComputeRectificationQuaternion_cold_1(&v43);
    return v43;
  }

  return result;
}

uint64_t BWStereoUtilitiesComputeCenterShiftForPrimaryStream(uint64_t a1, uint64_t a2, void *a3, void *target, float64x2_t *a5, float64x2_t *a6)
{
  if (!a3)
  {
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_6(&v41);
    return v41.u32[0];
  }

  if (!target)
  {
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_5(&v41);
    return v41.u32[0];
  }

  if (!a5)
  {
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_4(&v41);
    return v41.u32[0];
  }

  if (!a6)
  {
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_3(&v41);
    return v41.u32[0];
  }

  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  IntrinsicsMatrix = su_getIntrinsicsMatrix(a1, a3, target, 1, &v35);
  if (IntrinsicsMatrix)
  {
    v33 = IntrinsicsMatrix;
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_1();
    return v33;
  }

  v11 = 0;
  v12 = v35;
  v13 = v36;
  v14 = v37;
  *v10.i32 = -v37.f32[0] / v35.f32[0];
  *v9.i32 = -v37.f32[1] / v35.f32[0];
  __asm { FMOV            V6.4S, #1.0 }

  v20 = vzip1q_s32(vzip2q_s32(vdupq_lane_s32(v10, 0), _Q6), v9);
  LODWORD(v21) = 0;
  *(&v21 + 1) = 1.0 / v35.f32[0];
  v20.i32[3] = 0;
  v23 = *MEMORY[0x1E69E9B10];
  v22 = *(MEMORY[0x1E69E9B10] + 16);
  v24 = *(MEMORY[0x1E69E9B10] + 32);
  v25 = vdupq_lane_s32(*v22.i8, 1);
  v26 = vzip1q_s32(*MEMORY[0x1E69E9B10], v22);
  v26.i32[2] = v24.i32[0];
  v27 = vzip2q_s32(*MEMORY[0x1E69E9B10], v22);
  v27.i32[2] = *(MEMORY[0x1E69E9B10] + 40);
  v38 = COERCE_UNSIGNED_INT(1.0 / v35.f32[0]);
  v39 = v21;
  v40 = v20;
  v28 = vzip2q_s32(vzip1q_s32(v23, v24), v25);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v41 + v11 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v38 + v11 * 4))), v28, *&v38.f32[v11], 1), v27, *(&v38 + v11 * 4), 2);
    v11 += 4;
  }

  while (v11 != 12);
  v29 = 0;
  v38 = v41;
  v39 = v42;
  v40 = v43;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  do
  {
    *(&v41 + v29 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*(&v38 + v29 * 4))), v13, *&v38.f32[v29], 1), v14, *(&v38 + v29 * 4), 2);
    v29 += 4;
  }

  while (v29 != 12);
  __asm { FMOV            V5.2D, #0.5 }

  v31 = vcvt_f32_f64(vaddq_f64(*a5, vmulq_f64(a5[1], _Q5)));
  v32 = vaddq_f32(v43, vmlaq_lane_f32(vmulq_n_f32(v41, v31.f32[0]), v42, v31, 1));
  if (*&v32.i32[2] <= 0.0)
  {
    BWStereoUtilitiesComputeCenterShiftForPrimaryStream_cold_2(&v41);
    return v41.u32[0];
  }

  v33 = 0;
  *a6 = vcvtq_f64_f32(vsub_f32(vdiv_f32(*v32.i8, *&vdupq_laneq_s32(v32, 2)), v31));
  return v33;
}

uint64_t su_getIntrinsicsMatrix(uint64_t a1, void *a2, void *target, int a4, uint64_t a5)
{
  if (!a2)
  {
    su_getIntrinsicsMatrix_cold_11(&v41);
    return LODWORD(v41.value);
  }

  if (!target)
  {
    su_getIntrinsicsMatrix_cold_10(&v41);
    return LODWORD(v41.value);
  }

  if (!a5)
  {
    su_getIntrinsicsMatrix_cold_9(&v41);
    return LODWORD(v41.value);
  }

  v10 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (!v10)
  {
    su_getIntrinsicsMatrix_cold_8(&v41);
    return LODWORD(v41.value);
  }

  v11 = v10;
  if ((objc_msgSend_isEqualToString_([v10 objectForKeyedSubscript:*off_1E798B540]) & 1) == 0)
  {
    su_getIntrinsicsMatrix_cold_1(&v41);
    return LODWORD(v41.value);
  }

  v12 = [a2 objectForKeyedSubscript:a1];
  if (!v12)
  {
    su_getIntrinsicsMatrix_cold_7(&v41);
    return LODWORD(v41.value);
  }

  v13 = v12;
  v14 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(target);
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(ImageBuffer);
  v19 = Height;
  *&v43 = 1.0;
  v22 = FigMotionComputeLensPositionScalingFactor(v11, Width, Height, v15, v15, &v43, v20, v21);
  if (v22)
  {
    v36 = v22;
    su_getIntrinsicsMatrix_cold_2();
    return v36;
  }

  [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E7989F18), "floatValue"}];
  if (v23 <= 0.0)
  {
    su_getIntrinsicsMatrix_cold_6(&v41);
    return LODWORD(v41.value);
  }

  v24 = v23;
  v25 = *&v43;
  if (!a4)
  {
    [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B530), "floatValue"}];
    v27 = v28;
    if (v28 > 0.0)
    {
      goto LABEL_16;
    }

    su_getIntrinsicsMatrix_cold_3(&v41);
    return LODWORD(v41.value);
  }

  [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B2E0), "floatValue"}];
  if (v26 <= 0.0)
  {
    su_getIntrinsicsMatrix_cold_5(&v41);
    return LODWORD(v41.value);
  }

  v27 = v26 * 1000.0;
LABEL_16:
  v29 = Width | (v19 << 32);
  v42 = 0uLL;
  v30 = 1.0 / v24;
  CMSampleBufferGetPresentationTimeStamp(&v41, target);
  Seconds = CMTimeGetSeconds(&v41);
  v34 = (a4 & 1) == 0 && [v11 objectForKeyedSubscript:*off_1E798B6B0] != 0;
  v35 = FigMotionComputeOpticalCenterInBuffer(v11, v29, v15, v15, v34, &v42, v30, Seconds, v31, v32, v41.value);
  v36 = v35;
  if (v35)
  {
    su_getIntrinsicsMatrix_cold_4(v35);
  }

  else
  {
    *&v37 = v42.f64[0];
    LODWORD(v38) = 0;
    *(&v38 + 1) = (v30 * v25) * v27;
    v39 = v42.f64[1];
    *(&v37 + 1) = v39;
    *(a5 + 40) = 1065353216;
    *(a5 + 8) = 0;
    *a5 = HIDWORD(v38);
    *(a5 + 24) = 0;
    *(a5 + 16) = v38;
    *(a5 + 32) = v37;
  }

  return v36;
}

uint64_t BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV(opaqueCMSampleBuffer *target, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, _DWORD *a8, double a9, double a10)
{
  v12 = a9 / a10;
  if (fabsf(v12 + -1.3333) >= 0.0001)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_21(&v152);
    return v152.columns[0].u32[0];
  }

  v142 = 0u;
  v143 = 0u;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  if (a4 && a5)
  {
    v21 = *off_1E798CFD8;
    v22 = [a4 objectForKeyedSubscript:*off_1E798CFD8];
    if (v22)
    {
      [v22 getBytes:&v130 length:48];
      size.width = 0.0;
      size.height = 0.0;
      v23 = [a4 objectForKeyedSubscript:*off_1E798CFE0];
      if (v23)
      {
        CGSizeMakeWithDictionaryRepresentation(v23, &size);
        v24 = [a5 objectForKeyedSubscript:v21];
        if (v24)
        {
          [v24 getBytes:&v133 length:48];
          memset(&v152, 0, sizeof(v152));
          v25 = [a5 objectForKeyedSubscript:*off_1E798CFC8];
          if (v25)
          {
            [v25 getBytes:&v152 length:64];
            v26 = 0;
            v27 = v152.columns[0];
            v28 = v152.columns[1];
            v29 = v152.columns[2];
            v27.i32[3] = 0;
            v28.i32[3] = 0;
            v29.i32[3] = 0;
            v30 = *(MEMORY[0x1E69E9B10] + 16);
            v136 = *MEMORY[0x1E69E9B10];
            v137 = v30;
            v138 = *(MEMORY[0x1E69E9B10] + 32);
            v31 = v136;
            v32 = v138;
            v144 = v27;
            v145 = v28;
            v146 = v29;
            v148 = 0u;
            v149 = 0u;
            v150 = 0u;
            do
            {
              *(&v148 + v26) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(&v144 + v26))), v30, *&v144.i8[v26], 1), v32, *(&v144 + v26), 2);
              v26 += 16;
            }

            while (v26 != 48);
            v139.i32[2] = v148.i32[2];
            v140.i32[2] = v149.i32[2];
            v139.i64[0] = v148.i64[0];
            v140.i64[0] = v149.i64[0];
            v141.i32[2] = v150.i32[2];
            v141.i64[0] = v150.i64[0];
            if (CMGetAttachment(target, *off_1E798A3C8, 0))
            {
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v35 = 0;
              }

              else
              {
                ImageBuffer = CMSampleBufferGetImageBuffer(target);
                Width = CVPixelBufferGetWidth(ImageBuffer);
                Height = CVPixelBufferGetHeight(ImageBuffer);
                v35 = 0;
                v33.width = Width;
                v142 = 0uLL;
                v143.n128_f64[0] = Width;
                v143.n128_f64[1] = Height;
              }

              goto LABEL_30;
            }

            BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_12(&v148);
          }

          else
          {
            BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_13(&v148);
          }

          v35 = v148.u32[0];
          goto LABEL_30;
        }

        BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_14(&v152);
      }

      else
      {
        BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_15(&v152);
      }
    }

    else
    {
      BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_16(&v152);
    }

LABEL_63:
    v35 = v152.columns[0].u32[0];
    goto LABEL_30;
  }

  if (!target)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_11(&v152);
    goto LABEL_63;
  }

  if (!a2)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_10(&v152);
    goto LABEL_63;
  }

  if (!a3)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_9(&v152);
    goto LABEL_63;
  }

  v36 = *off_1E798A3C8;
  v37 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (!v37)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_8(&v152);
    goto LABEL_63;
  }

  v126 = a8;
  v38 = *off_1E798B540;
  v39 = [v37 objectForKeyedSubscript:*off_1E798B540];
  if (!v39)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_7(&v152);
LABEL_71:
    v35 = v152.columns[0].u32[0];
    goto LABEL_72;
  }

  v40 = v39;
  if (!FigCFDictionaryGetCGRectIfPresent())
  {
    v41 = CMSampleBufferGetImageBuffer(target);
    v142 = 0uLL;
    v143.n128_f64[0] = CVPixelBufferGetWidth(v41);
    v143.n128_f64[1] = CVPixelBufferGetHeight(v41);
  }

  IntrinsicsMatrix = su_getIntrinsicsMatrix(v40, a3, target, 0, &v130);
  if (IntrinsicsMatrix)
  {
    v35 = IntrinsicsMatrix;
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_1();
LABEL_72:
    a8 = v126;
    goto LABEL_30;
  }

  v43 = CMGetAttachment(a2, v36, 0);
  if (!v43)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_6(&v152);
    v35 = v152.columns[0].u32[0];
    goto LABEL_72;
  }

  v44 = [v43 objectForKeyedSubscript:v38];
  if (!v44)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_5(&v152);
    goto LABEL_71;
  }

  v45 = v44;
  v46 = su_getIntrinsicsMatrix(v44, a3, a2, 0, &v133);
  a8 = v126;
  if (v46)
  {
    v35 = v46;
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_2();
  }

  else
  {
    v47 = *(MEMORY[0x1E69E9B10] + 16);
    v136 = *MEMORY[0x1E69E9B10];
    v137 = v47;
    v138 = *(MEMORY[0x1E69E9B10] + 32);
    memset(&v152, 0, sizeof(v152));
    ViewMatrixInCameraCoordinates = su_getViewMatrixInCameraCoordinates([a3 objectForKeyedSubscript:v40], &v152);
    if (ViewMatrixInCameraCoordinates)
    {
      v35 = ViewMatrixInCameraCoordinates;
      BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_3();
    }

    else
    {
      v150 = 0u;
      v151 = 0u;
      v148 = 0u;
      v149 = 0u;
      v49 = su_getViewMatrixInCameraCoordinates([a3 objectForKeyedSubscript:v45], &v148);
      if (v49)
      {
        v35 = v49;
        BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_4();
      }

      else
      {
        v146 = 0u;
        v147 = 0u;
        v144 = 0u;
        v145 = 0u;
        su_computeRelativeExtrinsics(&v152, &v148, &v144);
        v50 = 0;
        v51 = vzip1q_s32(v144, v146);
        v52 = vzip1q_s32(v51, v145);
        v52.i32[3] = 0;
        v53 = vzip1q_s32(vzip2q_s32(v144, v146), vdupq_laneq_s32(v145, 2));
        v54 = vzip2q_s32(v51, vdupq_lane_s32(*v145.i8, 1));
        v54.i32[3] = 0;
        v53.i32[3] = 0;
        v55 = v136;
        v56 = v137;
        v57 = v138;
        v153[0] = v52;
        v153[1] = v54;
        v153[2] = v53;
        size = 0;
        v155 = 0u;
        v156 = 0u;
        do
        {
          *(&size + v50 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, COERCE_FLOAT(v153[v50])), v56, *&v153[v50], 1), v57, v153[v50], 2);
          ++v50;
        }

        while (v50 != 3);
        v35 = 0;
        v33 = size;
        v34.n128_u64[1] = *(&v156 + 1);
        v139.i32[2] = LODWORD(size.height);
        v140.i32[2] = DWORD2(v155);
        v139.i64[0] = *&size.width;
        v140.i64[0] = v155;
        v141.i32[2] = DWORD2(v156);
        v141.i64[0] = v156;
      }
    }
  }

LABEL_30:
  if (v35)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_17(v35, v33);
    return v35;
  }

  v61 = v130;
  v62 = v132;
  v63 = v143.n128_f64[0];
  v64 = v143.n128_f64[0] / v143.n128_f64[1];
  if (v12 != v64)
  {
    v124 = v132.n128_u64[0];
    v127 = v130;
    v62.n128_f64[0] = v12;
    v33.width = *MEMORY[0x1E695F050];
    v34.n128_u64[0] = *(MEMORY[0x1E695F050] + 16);
    v61.n128_u64[0] = *(MEMORY[0x1E695F050] + 24);
    v121 = v143;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v143.n128_f64[0], v143.n128_f64[1], v33, *(MEMORY[0x1E695F050] + 8), v34, v61, v62, v143);
    v122 = v157.size.height;
    v123 = v157.size.width;
    IsNull = CGRectIsNull(v157);
    if (IsNull)
    {
      BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_20(IsNull, v66);
      return 4294954516;
    }

    v63 = v123;
    v67.f64[0] = v123;
    v67.f64[1] = v122;
    v68 = vadd_f32(v124, vmul_f32(vcvt_f32_f64(vsubq_f64(v121, v67)), 0xBF000000BF000000));
    v64 = v123 / v122;
    v62.n128_u64[0] = v68;
    v61 = v127;
  }

  v69 = ceil(a9 * 1.02499998 * 0.25) * 4.0;
  v70 = v69 / v12;
  v71 = v69;
  if ((v69 / v70) == v64)
  {
    v72 = v71 / v63;
    v61.n128_f32[0] = v72 * v61.n128_f32[0];
    v125 = vmla_n_f32(0xBF000000BF000000, vadd_f32(v62.n128_u64[0], 0x3F0000003F000000), v72);
    goto LABEL_36;
  }

  v125 = v62.n128_u64[0];
  v129 = v61;
  v120 = BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_18(&v152);
  v61 = v129;
  if ((v120 & 1) == 0)
  {
    return v152.columns[0].u32[0];
  }

LABEL_36:
  v128 = v61;
  v73 = atan(a9 * 0.5 / v61.n128_f32[0]);
  *&v73 = v73 / 3.14159265 * 180.0 + v73 / 3.14159265 * 180.0;
  *a8 = LODWORD(v73);
  v74 = vaddq_f32(v138, vmlaq_f32(vmulq_f32(v136, 0), 0, v137));
  if (v74.f32[2] <= 0.0)
  {
    BWStereoUtilitiesComputeInverseRectificationHomographiesAndFOV_cold_19(v74.f32[2]);
    return 4294954516;
  }

  v75 = 0;
  v76 = v128;
  v77.i32[1] = 0;
  v77.i32[2] = 0;
  v78 = v71 - a9;
  *&v78 = v71 - a9;
  *&v78 = -(v125.f32[0] - (*&v78 * 0.5)) / v128.n128_f32[0];
  v79 = vdupq_lane_s32(*&v78, 0);
  __asm { FMOV            V0.4S, #1.0 }

  v85 = vzip2q_s32(v79, _Q0);
  v86 = v70 - a10;
  v87.i32[0] = 0;
  v87.i32[2] = 0;
  v88 = vdivq_f32(v74, vdupq_laneq_s32(v74, 2)).u64[0];
  v89 = vdupq_lane_s32(v88, 1).u32[0];
  *v76.i32 = -(v125.f32[1] - (v86 * 0.5)) / v128.n128_f32[0];
  v90 = vzip1q_s32(v136, v138);
  v91 = v130;
  v92 = v131;
  v148 = vzip1q_s32(v90, v137);
  v149 = vzip2q_s32(v90, vdupq_lane_s32(*v137.f32, 1));
  v93 = v132;
  v150 = vzip1q_s32(vzip2q_s32(v136, v138), vdupq_laneq_s32(v137, 2));
  v94 = vzip1q_s32(v85, v76);
  memset(&v152, 0, 48);
  do
  {
    v152.columns[v75 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, COERCE_FLOAT(*(&v148 + v75 * 4))), v92, *&v148.f32[v75], 1), v93, *(&v148 + v75 * 4), 2);
    v75 += 4;
  }

  while (v75 != 12);
  v95 = 0;
  v94.i32[3] = 0;
  v87.i32[3] = 0;
  v77.i32[3] = 0;
  v96 = vzip1q_s32(0x3F800000uLL, 0x3F800000uLL);
  v96.i32[1] = 0;
  _Q0.i64[0] = __PAIR64__(v89, v88.u32[0]);
  v97 = v152.columns[0];
  v98 = v152.columns[1];
  v99 = v152.columns[2];
  v77.f32[0] = 1.0 / v128.n128_f32[0];
  v148 = v77;
  *&v87.i32[1] = 1.0 / v128.n128_f32[0];
  v149 = v87;
  v150 = v94;
  memset(&v152, 0, 48);
  do
  {
    v152.columns[v95 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v96, COERCE_FLOAT(*(&v148 + v95 * 4))), xmmword_1AD046FF0, *&v148.f32[v95], 1), _Q0, *(&v148 + v95 * 4), 2);
    v95 += 4;
  }

  while (v95 != 12);
  v100 = 0;
  v101 = v152.columns[0];
  v102 = v152.columns[1];
  v103 = v152.columns[2];
  v148 = v152.columns[0];
  v149 = v152.columns[1];
  v150 = v152.columns[2];
  memset(&v152, 0, 48);
  do
  {
    v152.columns[v100 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v97, COERCE_FLOAT(*(&v148 + v100 * 4))), v98, *&v148.f32[v100], 1), v99, *(&v148 + v100 * 4), 2);
    v100 += 4;
  }

  while (v100 != 12);
  v104 = 0;
  v105 = v152.columns[0].i64[0];
  v106 = v152.columns[1];
  v107 = v152.columns[2];
  *(a6 + 8) = v152.columns[0].i32[2];
  *(a6 + 24) = v106.i32[2];
  *a6 = v105;
  *(a6 + 16) = v106.i64[0];
  *(a6 + 40) = v107.i32[2];
  *(a6 + 32) = v107.i64[0];
  v108 = vzip1q_s32(v139, v141);
  v109 = v133;
  v111 = v134;
  v110 = v135;
  v148 = vzip1q_s32(v108, v140);
  v149 = vzip2q_s32(v108, vdupq_lane_s32(*v140.i8, 1));
  v150 = vzip1q_s32(vzip2q_s32(v139, v141), vdupq_laneq_s32(v140, 2));
  memset(&v152, 0, 48);
  do
  {
    v152.columns[v104 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*(&v148 + v104 * 4))), v111, *&v148.f32[v104], 1), v110, *(&v148 + v104 * 4), 2);
    v104 += 4;
  }

  while (v104 != 12);
  v112 = 0;
  v113 = v152.columns[0];
  v114 = v152.columns[1];
  v115 = v152.columns[2];
  v148 = v101;
  v149 = v102;
  v150 = v103;
  memset(&v152, 0, 48);
  do
  {
    v152.columns[v112 / 4] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v148 + v112 * 4))), v114, *&v148.f32[v112], 1), v115, *(&v148 + v112 * 4), 2);
    v112 += 4;
  }

  while (v112 != 12);
  v35 = 0;
  v116 = v152.columns[0].i64[0];
  v117 = v152.columns[1];
  v118 = v152.columns[2];
  *(a7 + 8) = v152.columns[0].i32[2];
  *(a7 + 24) = v117.i32[2];
  *a7 = v116;
  *(a7 + 16) = v117.i64[0];
  *(a7 + 40) = v118.i32[2];
  *(a7 + 32) = v118.i64[0];
  return v35;
}

uint64_t BWStereoUtilitiesComputeStereoBaseline(uint64_t a1, uint64_t a2, void *a3, float *a4)
{
  *a4 = 0.0;
  if (a3)
  {
    memset(&v15, 0, sizeof(v15));
    ViewMatrixInCameraCoordinates = su_getViewMatrixInCameraCoordinates([a3 objectForKeyedSubscript:a1], &v15);
    if (ViewMatrixInCameraCoordinates)
    {
      v9 = ViewMatrixInCameraCoordinates;
      BWStereoUtilitiesComputeStereoBaseline_cold_1();
    }

    else
    {
      memset(v14, 0, sizeof(v14));
      v8 = su_getViewMatrixInCameraCoordinates([a3 objectForKeyedSubscript:a2], v14);
      v9 = v8;
      if (v8)
      {
        BWStereoUtilitiesComputeStereoBaseline_cold_2(v8);
      }

      else
      {
        v13 = 0u;
        memset(v12, 0, sizeof(v12));
        su_computeRelativeExtrinsics(&v15, v14, v12);
        v10 = vmulq_f32(v13, v13);
        *a4 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
      }
    }
  }

  else
  {
    BWStereoUtilitiesComputeStereoBaseline_cold_3(&v16);
    return v16;
  }

  return v9;
}

uint64_t su_getViewMatrixInCameraCoordinates(void *a1, int32x2_t *a2)
{
  if (a2)
  {
    v3 = [a1 objectForKeyedSubscript:*off_1E7989E80];
    if (v3)
    {
      v4 = v3;
      if ([v3 length] == 48)
      {
        v5 = [v4 bytes];
        result = 0;
        v7 = *v5;
        *v8.f32 = v5[1];
        v9 = v5[2];
        *v10.f32 = v5[3];
        *v11.f32 = v5[4];
        v12 = v5[5];
        v11.i64[0] = vnegq_f32(v11).u64[0];
        a2[3].i32[0] = v11.i32[1];
        a2[7].i32[0] = v12.i32[1];
        v13 = vnegq_f32(v8);
        v10.i64[1] = v10.i64[0];
        v14 = vnegq_f32(v10);
        v15 = vzip1_s32(v7, v9);
        v16 = vzip2_s32(v7, v9);
        v17 = vextq_s8(vtrn2q_s32(v14, v13), v13, 4uLL).u64[0];
        v13.i32[1] = vdupq_laneq_s32(v14, 2).u32[0];
        a2[1].i32[0] = v11.i32[0];
        *a2 = v15;
        a2[2] = v16;
        a2[5].i32[0] = v12.i32[0];
        a2[4] = *v13.i8;
        a2[6] = v17;
      }

      else
      {
        su_getViewMatrixInCameraCoordinates_cold_1(&v18);
        return v18;
      }
    }

    else
    {
      su_getViewMatrixInCameraCoordinates_cold_2(&v19);
      return v19;
    }
  }

  else
  {
    su_getViewMatrixInCameraCoordinates_cold_3(&v20);
    return v20;
  }

  return result;
}

double su_computeRelativeExtrinsics(simd_float4x4 *a1, float32x4_t *a2, uint64_t a3)
{
  v19 = __invert_f4(*a1);
  v5 = 0;
  v6 = *a2;
  v7 = a2[1];
  v6.i32[3] = 0;
  v7.i32[3] = 0;
  v8 = a2[2];
  v9 = a2[3];
  v8.i32[3] = 0;
  v9.i32[3] = 1.0;
  v14 = v19;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  do
  {
    *(&v15 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(*&v14.columns[v5])), v7, *v14.columns[v5].f32, 1), v8, v14.columns[v5], 2), v9, v14.columns[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  result = *&v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  *(a3 + 8) = DWORD2(v15);
  *a3 = result;
  *(a3 + 24) = DWORD2(v11);
  *(a3 + 40) = DWORD2(v12);
  *(a3 + 16) = v11;
  *(a3 + 32) = v12;
  *(a3 + 56) = DWORD2(v13);
  *(a3 + 48) = v13;
  return result;
}

uint64_t FigCameraUsageAllowedForClient(_OWORD *a1)
{
  v2 = objc_autoreleasePoolPush();
  v14 = 0;
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  v4 = [+[FigCaptureProcessHandle handleForAuditToken:error:](FigCaptureProcessHandle handleForAuditToken:v11 error:{&v14), "bundleIdentifier"}];
  v5 = [objc_msgSend(MEMORY[0x1E69ADFB8] "sharedConnection")];
  if (v4)
  {
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v6 = 0;
  }

  if (dword_1ED8446D0)
  {
    v13 = 0;
    v12 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v8 = v13;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v12))
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 & 0xFFFFFFFE;
    }

    if (v9)
    {
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

FigCameraUsageListener *FigCameraUsageRegisterChangeHandler(FigCameraUsageListener *result)
{
  if (!FigCameraUsageRegisterChangeHandler_sCameraUsageListener)
  {
    result = [[FigCameraUsageListener alloc] initWithChangeHandler:result];
    FigCameraUsageRegisterChangeHandler_sCameraUsageListener = result;
  }

  return result;
}

uint64_t BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer(const void *a1, void *a2)
{
  HIDWORD(v11) = 2143289344;
  if (!a1)
  {
    BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_10(0, a2);
    return 4294954516;
  }

  if (!a2)
  {
    BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_9();
    return 4294954516;
  }

  v4 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v4)
  {
    BWPortraitUtilitiesAttachLumaNoiseLevelToSampleBuffer_cold_8();
    return 4294954516;
  }

  v5 = v4;
  if ([objc_msgSend(CMGetAttachment(a1 @"StillSettings"] == 10)
  {
    v6 = [v5 objectForKeyedSubscript:*off_1E798A670];
    if (v6)
    {
      if ([v6 intValue] < 3)
      {
        goto LABEL_20;
      }
    }
  }

  v7 = [v5 objectForKeyedSubscript:*off_1E798D048];
  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = [v7 integerValue];
  if (v8 > 5)
  {
    if (v8 > 7 && (v8 - 8) >= 2 && v8 != 10 && v8 != 100)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v8 > 2)
  {
    if ((v8 - 4) >= 2 && v8 != 3)
    {
      goto LABEL_21;
    }

LABEL_20:
    FigCaptureComputeImageGainFromMetadata();
  }

  if (v8 <= 2)
  {
    goto LABEL_20;
  }

LABEL_21:
  fig_log_get_emitter();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v10, v11, v12, v13, v14, v15);
  return 4294954516;
}

void *_shortStringForFigCaptureSourceDeviceTypes(void *a1)
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@" "];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [*(*(&v11 + 1) + 8 * i) intValue] - 1;
        v8 = @"?+";
        if (v7 <= 0xF)
        {
          v8 = off_1E79912E8[v7];
        }

        [v2 appendString:v8];
      }

      v4 = [a1 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v4);
  }

  [v2 deleteCharactersInRange:{objc_msgSend(v2, "length") - 1, 1}];
  return v2;
}

uint64_t BWSoftISPProcessorOptionsToShortString(void *a1)
{
  v21 = [objc_msgSend(a1 objectForKeyedSubscript:{@"CAR", "BOOLValue"}];
  v20 = [objc_msgSend(a1 objectForKeyedSubscript:{@"RNF", "BOOLValue"}];
  v19 = [objc_msgSend(a1 objectForKeyedSubscript:{@"HR", "BOOLValue"}];
  v18 = [objc_msgSend(a1 objectForKeyedSubscript:{@"SFHR", "BOOLValue"}];
  v17 = [objc_msgSend(a1 objectForKeyedSubscript:{@"AllowUnclampedOutputs", "BOOLValue"}];
  v16 = [objc_msgSend(a1 objectForKeyedSubscript:{@"RawMBNR", "BOOLValue"}];
  v15 = [objc_msgSend(a1 objectForKeyedSubscript:{@"Aux", "BOOLValue"}];
  v14 = [objc_msgSend(a1 objectForKeyedSubscript:{@"AWBMode", "intValue"}];
  v13 = [objc_msgSend(a1 objectForKeyedSubscript:{@"AWBPurgeResources", "BOOLValue"}];
  v2 = [objc_msgSend(a1 objectForKeyedSubscript:{@"LTMMode", "intValue"}];
  v3 = [objc_msgSend(a1 objectForKeyedSubscript:{@"LTMHDRCurves", "BOOLValue"}];
  v4 = [objc_msgSend(a1 objectForKeyedSubscript:{@"SSC", "BOOLValue"}];
  v5 = [objc_msgSend(a1 objectForKeyedSubscript:{@"GNU", "BOOLValue"}];
  v6 = [objc_msgSend(a1 objectForKeyedSubscript:{@"VSN", "BOOLValue"}];
  v7 = [objc_msgSend(a1 objectForKeyedSubscript:{@"TuningType", "intValue"}];
  v8 = [BWEnumArrayToShortStrings(objc_msgSend(a1 objectForKeyedSubscript:{@"SoftISPAuxiliaryType", &__block_literal_global_40), "componentsJoinedByString:", @", "}];
  v22 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  origin = rect.origin;
  rect.size = v22;
  CGRectMakeWithDictionaryRepresentation([a1 objectForKeyedSubscript:@"InputBufferRectWithinSensorCropRect"], &rect);
  v25.origin = origin;
  v25.size = v22;
  CGRectMakeWithDictionaryRepresentation([a1 objectForKeyedSubscript:@"OutputBufferRectWithinSensorCropRect"], &v25);
  v24.origin = origin;
  v24.size = v22;
  CGRectMakeWithDictionaryRepresentation([a1 objectForKeyedSubscript:@"AWBRegionOfInterestRectWithinSensorCropRect"], &v24);
  v9 = MEMORY[0x1E696AEC0];
  v10 = BWStringFromCGRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v11 = BWStringFromCGRect(v25.origin.x, v25.origin.y, v25.size.width, v25.size.height);
  return [v9 stringWithFormat:@"c:%d, r:%d, h:%d, sh:%d auo:%d m:%d, x:%d, a:%d, apr:%d, l:%d, lh:%d, s:%d, g:%d, v:%d, t:%d, aux:%@ isr:%@, osr:%@, asr:%@", v21, v20, v19, v18, v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v10, v11, BWStringFromCGRect(v24.origin.x, v24.origin.y, v24.size.width, v24.size.height)];
}

void *sSSAMDeviceChangeHandler(void *result, io_registry_entry_t entry, int a3)
{
  if (result)
  {
    if (a3 == -536870896)
    {
      v4 = result;
      entryID = 0;
      IORegistryEntryGetRegistryEntryID(entry, &entryID);
      return [v4 _SSAMDeivceTerminatedService:entryID];
    }
  }

  else
  {
    v5 = 0;
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v3, v6, entryID, v8, v9, vars0, vars8);
  }

  return result;
}

uint64_t sSSAMDeviceFoundCallback(int a1, io_iterator_t iterator)
{
  if (dword_1EB58E5E0)
  {
    v19 = 0;
    v18 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!iterator)
  {
    return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v13, v14, v15, *&v16[4], *&v16[12], v17);
  }

  v5 = IOIteratorNext(iterator);
  if (v5)
  {
    v6 = v5;
    do
    {
      if (dword_1EB58E5E0)
      {
        v19 = 0;
        v18 = OS_LOG_TYPE_DEFAULT;
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v8 = v19;
        if (os_log_type_enabled(v7, v18))
        {
          v9 = v8;
        }

        else
        {
          v9 = v8 & 0xFFFFFFFE;
        }

        if (v9)
        {
          v15 = 136315394;
          *v16 = "sSSAMDeviceFoundCallback";
          *&v16[8] = 1024;
          *&v16[10] = v6;
          LODWORD(v12) = 18;
          v11 = &v15;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [+[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager](FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager];
      IOObjectRelease(v6);
      v6 = IOIteratorNext(iterator);
    }

    while (v6);
  }

  return [+[FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager](FigExternalSyncDeviceDiscoverySessionManager sharedFigExternalSyncDeviceDiscoverySessionManager];
}

FigPointCloudDataCaptureConnectionConfiguration *cspc_getPointCloudConnectionConfigurationForLiDARDepth(void *a1, void *a2)
{
  v4 = objc_alloc_init(FigPointCloudDataCaptureConnectionConfiguration);
  [(FigCaptureConnectionConfiguration *)v4 setSourceConfiguration:a2];
  -[FigCaptureConnectionConfiguration setUnderlyingDeviceType:](v4, "setUnderlyingDeviceType:", [a2 sourceDeviceType]);
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  -[FigCaptureConnectionConfiguration setConnectionID:](v4, "setConnectionID:", [v5 stringWithFormat:@"<%@: %p>", NSStringFromClass(v6), v4]);
  [(FigCaptureConnectionConfiguration *)v4 setMediaType:1885564004];
  v7 = [a2 source];
  v13 = 0;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, @"AttributesDictionary", *MEMORY[0x1E695E480], &v13);
    v9 = v13;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 objectForKeyedSubscript:@"SupportedTimeOfFlightProjectorModes"];
  if ([v10 containsObject:&unk_1F2243768])
  {
    v11 = 4;
LABEL_8:
    [(FigPointCloudDataCaptureConnectionConfiguration *)v4 setProjectorMode:v11];
    goto LABEL_9;
  }

  if ([v10 containsObject:&unk_1F2243780])
  {
    v11 = 1;
    goto LABEL_8;
  }

LABEL_9:

  -[FigVideoCaptureConnectionConfiguration setRotationDegrees:](v4, "setRotationDegrees:", [a1 rotationDegrees]);
  -[FigVideoCaptureConnectionConfiguration setOutputWidth:](v4, "setOutputWidth:", [a1 outputWidth]);
  -[FigVideoCaptureConnectionConfiguration setOutputHeight:](v4, "setOutputHeight:", [a1 outputHeight]);
  -[FigVideoCaptureConnectionConfiguration setMirroringEnabled:](v4, "setMirroringEnabled:", [a1 mirroringEnabled]);
  -[FigCaptureConnectionConfiguration setSinkConfiguration:](v4, "setSinkConfiguration:", [a1 sinkConfiguration]);
  return v4;
}

void FigCapturePreloadShadersInternal(int a1)
{
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v3 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  v5 = v3;
  if (!v3)
  {
    FigCapturePreloadShadersInternal_cold_2();
    goto LABEL_83;
  }

  v68 = CFPreferenceNumberWithDefault;
  v70 = a1;
  v71 = v3;
  v6 = FigCaptureSourcePlistCreateAndPreprocess(v3, v4);
  v7 = [v6 objectForKeyedSubscript:@"AVCaptureDeviceCommonSettings"];
  v8 = [objc_msgSend(v7 objectForKeyedSubscript:{@"BackgroundBlurSupported", "BOOLValue"}];
  v9 = [objc_msgSend(v7 objectForKeyedSubscript:{@"StudioLightingSupported", "BOOLValue"}];
  v10 = [objc_msgSend(v7 objectForKeyedSubscript:{@"ReactionEffectsSupported", "BOOLValue"}];
  sDeviceUsesAnyVideoEffect = (v8 | v9 | v10 | [objc_msgSend(v7 objectForKeyedSubscript:{@"BackgroundReplacementSupported", "BOOLValue"}]) & 1;
  sDeviceSWFRVersion = [objc_msgSend(v7 objectForKeyedSubscript:{@"SWFRVersion", "intValue"}];
  v11 = [objc_msgSend(v7 objectForKeyedSubscript:{@"SmartStyleRenderingVersion", "intValue"}];
  smartStyleVersion = v11;
  v13 = [FigCaptureSourcePlistCreateAndPreprocess(v11 v12)];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v89;
    v17 = @"MultiStream";
    v18 = @"AVCaptureDeviceFormats";
    v77 = *v89;
    obj = v6;
    do
    {
      v19 = 0;
      do
      {
        if (*v89 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v20 = v17;
        v21 = v18;
        v22 = [objc_msgSend(*(*(&v88 + 1) + 8 * v19) objectForKeyedSubscript:{v17, v68), "objectForKeyedSubscript:", v18}];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v23 = [v22 allValues];
        v24 = [v23 countByEnumeratingWithState:&v83 objects:v82 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v84;
          while (2)
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v84 != v26)
              {
                objc_enumerationMutation(v23);
              }

              LODWORD(v14) = [objc_msgSend(*(*(&v83 + 1) + 8 * i) objectForKeyedSubscript:{@"ColorConstancyVersion", "intValue"}];
              if (v14)
              {
                v6 = obj;
                goto LABEL_19;
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v83 objects:v82 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        ++v19;
        v17 = v20;
        v18 = v21;
        v16 = v77;
      }

      while (v19 != v15);
      v15 = [v13 countByEnumeratingWithState:&v88 objects:v87 count:16];
      LODWORD(v14) = 0;
      v6 = obj;
    }

    while (v15);
  }

LABEL_19:
  constantColorVersion = v14;
  v28 = [v6 objectForKeyedSubscript:{@"AVCaptureDevices", v68}];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v29 = [v28 countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (!v29)
  {
    goto LABEL_51;
  }

  v31 = v29;
  v32 = *v89;
  v72 = *v89;
  v73 = v28;
  do
  {
    v33 = 0;
    v74 = v31;
    do
    {
      if (*v89 != v32)
      {
        objc_enumerationMutation(v28);
      }

      v76 = v33;
      v34 = *(*(&v88 + 1) + 8 * v33);
      v35 = [objc_msgSend(v34 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
      v75 = v34;
      v36 = [v34 objectForKeyedSubscript:@"stillImageNoiseReductionAndFusionScheme"];
      v37 = [v36 intValue];
      v38 = &sDeviceUsesUBProcessor;
      if (v37 == 3 || (v38 = &sDeviceUsesNRFProcessor, v37 > 3))
      {
LABEL_48:
        *v38 = 1;
        goto LABEL_49;
      }

      if (!v36)
      {
        goto LABEL_49;
      }

      v39 = v37;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v40 = [v35 allValues];
      v41 = [v40 countByEnumeratingWithState:&v83 objects:v82 count:16];
      if (!v41)
      {
        goto LABEL_47;
      }

      v42 = v41;
      v43 = *v84;
      do
      {
        v44 = 0;
        do
        {
          if (*v84 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v83 + 1) + 8 * v44);
          if ([objc_msgSend(v45 objectForKeyedSubscript:{0x1F217F090), "BOOLValue"}])
          {
            v46 = [objc_msgSend(v45 objectForKeyedSubscript:{0x1F217F0B0), "BOOLValue"}];
            v47 = [objc_msgSend(v45 objectForKeyedSubscript:{0x1F217F0F0), "BOOLValue"}];
            switch(v39)
            {
              case 2:
                sDeviceUsesGNRSampleBufferProcessor = 1;
                if (!(v47 & 1 | ((v46 & 1) == 0)))
                {
                  goto LABEL_39;
                }

                break;
              case 1:
                sDeviceUsesTMBNRSampleBufferProcessor = 1;
                if ((v46 & 1) == 0)
                {
                  break;
                }

LABEL_39:
                sDeviceUsesHDRSampleBufferProcessor = 1;
                break;
              case 0:
                sDeviceUsesSISSampleBufferProcessor = 1;
                if (v46)
                {
                  goto LABEL_39;
                }

                break;
            }
          }

          if ([objc_msgSend(v45 objectForKeyedSubscript:{0x1F217F110), "BOOLValue"}])
          {
            sDeviceUsesStereoFusionSampleBufferProcessor = 1;
          }

          ++v44;
        }

        while (v42 != v44);
        v48 = [v40 countByEnumeratingWithState:&v83 objects:v82 count:16];
        v42 = v48;
      }

      while (v48);
LABEL_47:
      v49 = [objc_msgSend(v75 objectForKeyedSubscript:{@"StillImageDepthDataType", "intValue"}];
      v38 = &sDeviceUsesDepthMultiplier;
      v28 = v73;
      v31 = v74;
      v32 = v72;
      if (v49 == 10)
      {
        goto LABEL_48;
      }

LABEL_49:
      v33 = v76 + 1;
    }

    while (v76 + 1 != v31);
    v29 = [v28 countByEnumeratingWithState:&v88 objects:v87 count:16];
    v31 = v29;
  }

  while (v29);
LABEL_51:
  v50 = [FigCaptureSourcePlistCreateAndPreprocess(v29 v30)];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obja = v50;
  v51 = [v50 countByEnumeratingWithState:&v88 objects:v87 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v89;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v89 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v55 = [objc_msgSend(*(*(&v88 + 1) + 8 * j) objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        v56 = [v55 allValues];
        v57 = [v56 countByEnumeratingWithState:&v83 objects:v82 count:16];
        if (v57)
        {
          v58 = v57;
          v59 = *v84;
          while (2)
          {
            for (k = 0; k != v58; ++k)
            {
              if (*v84 != v59)
              {
                objc_enumerationMutation(v56);
              }

              if (sPocketDetectionSupported)
              {
                sPocketDetectionSupported = 1;
                goto LABEL_67;
              }

              v61 = [*(*(&v83 + 1) + 8 * k) objectForKeyedSubscript:0x1F217F890];
              sPocketDetectionSupported = v61 != 0;
              if (v61)
              {
                goto LABEL_67;
              }
            }

            v58 = [v56 countByEnumeratingWithState:&v83 objects:v82 count:16];
            if (v58)
            {
              continue;
            }

            break;
          }
        }

LABEL_67:
        ;
      }

      v52 = [obja countByEnumeratingWithState:&v88 objects:v87 count:16];
    }

    while (v52);
  }

  v5 = v71;
  if (sDeviceUsesHDRSampleBufferProcessor != 1)
  {
LABEL_75:
    v63 = DMIsMigrationNeeded();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __FigCapturePreloadShadersInternal_block_invoke_2;
    block[3] = &unk_1E7991948;
    v81 = v63;
    block[4] = v71;
    block[5] = v69;
    if (v63)
    {
      v64 = QOS_CLASS_DEFAULT;
    }

    else
    {
      v64 = QOS_CLASS_UTILITY;
    }

    v65 = dispatch_queue_attr_make_with_qos_class(0, v64, 0);
    v66 = dispatch_queue_create("com.apple.coremedia.precompilation", v65);
    v67 = v66;
    if (v70)
    {
      dispatch_sync(v66, block);
      if (!v67)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_async(v66, block);
      if (!v67)
      {
        goto LABEL_83;
      }
    }

    dispatch_release(v67);
    goto LABEL_83;
  }

  if (nonThreadSafeVideoProcessorsPreloadOperationQueue)
  {
    FigCaptureWaitForPreloadShadersCompletion();
  }

  v62 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  nonThreadSafeVideoProcessorsPreloadOperationQueue = v62;
  if (v62)
  {
    [v62 addOperationWithBlock:&__block_literal_global_46];
    if (v70)
    {
      FigCaptureWaitForPreloadShadersCompletion();
    }

    goto LABEL_75;
  }

  FigCapturePreloadShadersInternal_cold_1();
LABEL_83:
}

void FigCaptureWaitForPreloadShadersCompletion()
{
  os_unfair_lock_lock(&nonThreadSafeVideoProcessorsPreloadOperationQueueLock);
  v0 = nonThreadSafeVideoProcessorsPreloadOperationQueue;
  os_unfair_lock_unlock(&nonThreadSafeVideoProcessorsPreloadOperationQueueLock);
  [v0 waitUntilAllOperationsAreFinished];
}

void __FigCapturePreloadShadersInternal_block_invoke()
{
  FigSampleBufferProcessorCreateForCustom();
  os_unfair_lock_lock(&nonThreadSafeVideoProcessorsPreloadOperationQueueLock);

  nonThreadSafeVideoProcessorsPreloadOperationQueue = 0;
  os_unfair_lock_unlock(&nonThreadSafeVideoProcessorsPreloadOperationQueueLock);
}

uint64_t __FigCapturePreloadShadersInternal_block_invoke_2(const char *a1)
{
  i = FigOSTransactionCreate();
  mach_absolute_time();
  if (a1[48] == 1)
  {
    DMPerformMigrationIfNeeded();
    mach_absolute_time();
    info = 0;
    mach_timebase_info(&info);
    mach_absolute_time();
  }

  if ((sDeviceUsesSISSampleBufferProcessor & 1) != 0 || (sDeviceUsesTMBNRSampleBufferProcessor & 1) != 0 || sDeviceUsesHDRSampleBufferProcessor)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    info.numer = 1;
    if (!v3)
    {
      __FigCapturePreloadShadersInternal_block_invoke_2_cold_8();
      goto LABEL_47;
    }

    v4 = v3;
    [v3 setObject:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E6977FF0]];
    v5 = [objc_alloc(MEMORY[0x1E6977FE8]) initWithAPI:3 properties:v4];

    if (!v5)
    {
      __FigCapturePreloadShadersInternal_block_invoke_2_cold_7();
      goto LABEL_47;
    }

    if ([v5 setParameter:608 to:&info])
    {

      goto LABEL_47;
    }

    v58 = a1;
    v59 = i;
    v57 = v5;
    [MEMORY[0x1E6977FE8] setCurrentContext:v5];
    v6 = 0;
    v7 = 0;
    v8 = programs_es3;
    v9 = NoiseReductionLumaFusion_prog;
    while (1)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = v9[1];
        if (v11)
        {
          v12 = *v11;
          Shader = gl_UtilsCreateShader(0x8B31u, *v10);
          if (Shader)
          {
            v14 = Shader;
            v15 = gl_UtilsCreateShader(0x8B30u, v12);
            if (v15)
            {
              v16 = v15;
              info.numer = 0;
              Program = glCreateProgram();
              v18 = Program;
              if (Program)
              {
                glAttachShader(Program, v14);
                glAttachShader(v18, v16);
                glLinkProgram(v18);
                glGetProgramiv(v18, 0x8B82u, &info);
                if (!info.numer)
                {
                  glDeleteProgram(v18);
                  v18 = 0;
                }
              }

              else
              {
                __FigCapturePreloadShadersInternal_block_invoke_2_cold_1();
              }

              glDeleteShader(v14);
              glDeleteShader(v16);
              if (v18)
              {
                glUseProgram(v18);
                v19 = *(v10 + 2);
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19 + 2;
                  do
                  {
                    glBindAttribLocation(v18, *(v21 - 2), v20);
                    v22 = *v21;
                    v21 += 2;
                    v20 = v22;
                  }

                  while (v22);
                  glLinkProgram(v18);
                }

                v23 = *(v11 + 1);
                v24 = *v23;
                if (*v23)
                {
                  v25 = v23 + 2;
                  do
                  {
                    UniformLocation = glGetUniformLocation(v18, v24);
                    glUniform1i(UniformLocation, *(v25 - 2));
                    v27 = *v25;
                    v25 += 2;
                    v24 = v27;
                  }

                  while (v27);
                }

                v28 = *(v10 + 1);
                v29 = *v28;
                if (*v28)
                {
                  v30 = v28 + 2;
                  do
                  {
                    AttribLocation = glGetAttribLocation(v18, v29);
                    glVertexAttribPointer(AttribLocation, *(v30 - 2), *(v30 - 1), 0, 0, &PreloadOneShader_vertices);
                    glEnableVertexAttribArray(AttribLocation);
                    v32 = *v30;
                    v30 += 2;
                    v29 = v32;
                  }

                  while (v32);
                }

                glBindFramebuffer(0x8D40u, ++v7);
                v33 = *(v11 + 2);
                v34 = v6;
                if (v33[2])
                {
                  do
                  {
                    v34 = (v34 + 1);
                    glBindTexture(0xDE1u, v34);
                    glTexImage2D(0xDE1u, 0, v33[1], 1, 1, 0, v33[2], 0x1401u, 0);
                    glFramebufferTexture2D(0x8D40u, *v33, 0xDE1u, v34, 0);
                    v35 = v33[5];
                    v33 += 3;
                  }

                  while (v35);
                }

                glDrawBuffers(v34 - v6, draw_buffers);
                glDrawArrays(5u, 0, 3);
                glFlush();
                glDeleteProgram(v18);
                v6 = v34;
                goto LABEL_33;
              }
            }

            else
            {
              __FigCapturePreloadShadersInternal_block_invoke_2_cold_2(v14);
            }
          }

          else
          {
            __FigCapturePreloadShadersInternal_block_invoke_2_cold_3();
          }

          __FigCapturePreloadShadersInternal_block_invoke_2_cold_4(&info);
        }

        else
        {
          __FigCapturePreloadShadersInternal_block_invoke_2_cold_5(&info);
        }
      }

      else
      {
        __FigCapturePreloadShadersInternal_block_invoke_2_cold_6(&info);
      }

      v37 = info;
      fig_log_get_emitter();
      LODWORD(pixels) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", pixels, v37, v57, v58, v59, v60, *&info, v62);
LABEL_33:
      v36 = v8[1];
      ++v8;
      v9 = v36;
      if (!v36)
      {
        glGetError();
        for (info.numer = 1; info.numer <= v6; ++info.numer)
        {
          glDeleteTextures(1, &info);
        }

        info.numer = 1;
        for (i = v59; info.numer <= v7; ++info.numer)
        {
          glDeleteFramebuffers(1, &info);
        }

        a1 = v58;
        break;
      }
    }
  }

LABEL_47:
  PrewarmThreadSafeSBPs(*(a1 + 4));
  v38 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters cameraTuningParameters];
  v39 = [(NSDictionary *)v38 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v63 objects:&info count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v64;
    while (2)
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v64 != v42)
        {
          objc_enumerationMutation(v39);
        }

        if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v38 objectForKeyedSubscript:{*(*(&v63 + 1) + 8 * j)), "objectForKeyedSubscript:", objc_msgSend(v39, "objectForKeyedSubscript:", *(*(&v63 + 1) + 8 * j))), "objectForKeyedSubscript:", @"DeepFusionParameters"}])
        {
          info = 0;
          if (FigInitialiseDeferredShaderCacheCopySemaphore_onceToken != -1)
          {
            __FigCapturePreloadShadersInternal_block_invoke_2_cold_9();
          }

          sysctlbyname("kern.bootsessionuuid", 0, &info, 0, 0);
          if (*&info && (v44 = malloc_type_malloc(*&info, 0xFEAEF900uLL)) != 0)
          {
            v45 = v44;
            sysctlbyname("kern.bootsessionuuid", v44, &info, 0, 0);
            v46 = NSTemporaryDirectory();
            if (FigCaptureCameracapturedEnabled(v46, v47))
            {
              v48 = @"/cameracaptured.copysession";
            }

            else
            {
              v48 = @"/mediaserverd.copysession";
            }

            v49 = [(NSString *)v46 stringByAppendingPathComponent:v48];
            v50 = objc_alloc(MEMORY[0x1E695DF20]);
            v51 = [v50 initWithContentsOfURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"fileURLWithPath:", v49), 0}];
            if (!v51 || (v52 = [v51 objectForKeyedSubscript:@"BootSessionUUID"], objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v45), (objc_msgSend_isEqualToString_(v52) & 1) == 0))
            {
              v53 = [MEMORY[0x1E6991778] metalDevice];
              [v53 unloadShaderCaches];
              if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] || (objc_msgSend(v53, "copyShaderCacheToPath:", @"/private/var/mobile/Library/Caches/com.apple.deferredmediad/com.apple.metal") & 1) == 0)
              {
                __FigCapturePreloadShadersInternal_block_invoke_2_cold_10();
              }

              *&v63 = 0;
              v67 = @"BootSessionUUID";
              v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v45];
              v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
              [v54 writeToURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"fileURLWithPath:", v49), &v63}];
              if (v63)
              {
                __FigCapturePreloadShadersInternal_block_invoke_2_cold_11(&v63);
              }
            }
          }

          else
          {
            fig_log_get_emitter();
            LODWORD(pixels) = 0;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", pixels, v60, v57, v58, v59, v60, *&info, v62);
            v45 = 0;
          }

          free(v45);
          dispatch_semaphore_signal(sDeferredShaderCacheCopySemaphore);
          goto LABEL_71;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v63 objects:&info count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

LABEL_71:
  [MEMORY[0x1E695F660] clearCache];
  [MEMORY[0x1E695F648] clearCache];

  return mach_absolute_time();
}

void PrewarmThreadSafeSBPs(uint64_t a1)
{
  context = objc_autoreleasePoolPush();
  v1 = off_1E7989000;
  v2 = +[FigCaptureCameraParameters sharedInstance];
  v3 = [(FigCaptureCameraParameters *)v2 cameraTuningParameters];
  v4 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v222 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v223 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (sDeviceUsesGNRSampleBufferProcessor == 1)
  {
    v349 = *off_1E798A9D0;
    v350 = v3;
    v347[0] = @"sbpName";
    v347[1] = @"sbpOpts";
    v348[0] = @"GNR";
    v348[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
    [v222 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v348, v347, 2)}];
  }

  v5 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters videoStabilizationProcessorVersion];
  if (v5 >= 1)
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VISProcessorV%d", v5];
    v345[0] = @"bundlePath";
    v345[1] = @"classname";
    v346[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/VideoStabilizationV%d.bundle", @"/System/Library/VideoProcessors/", v6];
    v346[1] = v7;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v346, v345, 2)}];
  }

  v8 = *off_1E798A0D8;
  v9 = [v4 objectForKeyedSubscript:*off_1E798A0D8];
  v10 = *off_1E798A0D0;
  v217 = v2;
  v232 = v3;
  obj = v4;
  if (v9)
  {
    v11 = *off_1E798A0E0;
  }

  else
  {
    v12 = [v4 objectForKeyedSubscript:v10];
    v11 = *off_1E798A0E0;
    if (!v12 && (![v4 objectForKeyedSubscript:*off_1E798A0E0] || -[FigCaptureCameraParameters depthProcessorVersion](v2, "depthProcessorVersion") < 1))
    {
      v218 = 0;
      v216 = 0;
      v219 = 0;
      v44 = v223;
      goto LABEL_66;
    }
  }

  v13 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*off_1E798A0C0), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798A0C0)}];
  v14 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v8), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", v8)}];
  v15 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*off_1E798A0E8), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798A0E8)}];
  v16 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", v10)}];
  v17 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", v11)}];
  v18 = [v14 objectForKeyedSubscript:@"StereoFusionParameters"];
  if (sDeviceUsesStereoFusionSampleBufferProcessor == 1 && v18)
  {
    v19 = *off_1E798D370;
    v343[0] = *off_1E798A9D0;
    v343[1] = v19;
    v344[0] = v18;
    v344[1] = &unk_1F2243858;
    v343[2] = *off_1E798A990;
    v344[2] = MEMORY[0x1E695E118];
    v341[0] = @"sbpName";
    v341[1] = @"sbpOpts";
    v342[0] = @"StereoFusion";
    v342[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v344 forKeys:v343 count:3];
    [v222 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v342, v341, 2)}];
  }

  v216 = objc_alloc_init(BWInferenceScheduler);
  v219 = [[BWInferenceEngine alloc] initWithScheduler:v216 priority:29];
  v20 = [(FigCaptureCameraParameters *)v2 disparityVersion];
  if (v20)
  {
    v22 = v20;
LABEL_23:
    if (v22 >= 2 && +[BWLandmarksInferenceConfiguration isPortraitPrewarmingRequired])
    {
      [(BWInferenceEngine *)v219 addInferenceOfType:801 version:[(FigCaptureCameraParameters *)v2 landmarksVersionForInferenceType:801]& 0xFFFFFFFFFFFFLL configuration:0];
    }

    switch(v22)
    {
      case 5:
        v33 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters stereoDisparityParameters];
        if (!v33)
        {
          goto LABEL_36;
        }

        v332[0] = @"bundlePath";
        v332[1] = @"tuningParameters";
        v333[0] = @"/System/Library/VideoProcessors/DisparityV5.bundle";
        v333[1] = v33;
        v29 = MEMORY[0x1E695DF20];
        v30 = v333;
        v31 = v332;
        break;
      case 4:
        v32 = &unk_1F224AA40;
LABEL_35:
        [v223 addObject:v32];
        goto LABEL_36;
      case 3:
        v28 = [v14 objectForKeyedSubscript:@"DisparityParameters"];
        if (!v28)
        {
          goto LABEL_36;
        }

        v334[0] = @"bundlePath";
        v334[1] = @"tuningParameters";
        v335[0] = @"/System/Library/VideoProcessors/DisparityV3.bundle";
        v335[1] = v28;
        v29 = MEMORY[0x1E695DF20];
        v30 = v335;
        v31 = v334;
        break;
      default:
        goto LABEL_36;
    }

    v32 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:2];
    goto LABEL_35;
  }

  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v23 = [v4 countByEnumeratingWithState:&v337 objects:v336 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v338;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v338 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = -[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v2, "disparityVersionForPortType:sensorIDString:", *(*(&v337 + 1) + 8 * i), [obj objectForKeyedSubscript:*(*(&v337 + 1) + 8 * i)]);
        if (v27)
        {
          v22 = v27;
          v3 = v232;
          goto LABEL_23;
        }
      }

      v24 = [obj countByEnumeratingWithState:&v337 objects:v336 count:16];
      v3 = v232;
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_36:
  LODWORD(v21) = 1.0;
  v34 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v14 zoomFactor:v21];
  LODWORD(v35) = 2.0;
  v36 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v13 zoomFactor:v35];
  if (v15)
  {
    v38 = v15;
  }

  else
  {
    v38 = v17;
  }

  v1 = off_1E7989000;
  LODWORD(v37) = 1.0;
  v39 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v38 zoomFactor:v37];
  LODWORD(v40) = 1.0;
  v41 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v16 zoomFactor:v40];
  if (v34)
  {
    v42 = [v34 objectForKeyedSubscript:*off_1E798A9D8];
    v43 = 0x1E696A000;
    if (!v42)
    {
      goto LABEL_49;
    }

LABEL_44:
    LODWORD(v42) = [v42 intValue];
    goto LABEL_49;
  }

  v43 = 0x1E696A000uLL;
  if (!v39)
  {
    LODWORD(v42) = 0;
    goto LABEL_49;
  }

  v42 = [v39 objectForKeyedSubscript:*off_1E798A9D8];
  if (v42)
  {
    goto LABEL_44;
  }

LABEL_49:
  if (v42 >= 5)
  {
    v45 = 5;
  }

  else
  {
    v45 = v42;
  }

  v46 = [*(v43 + 3776) stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"SDOFRendering", v45];
  if ((v45 - 3) <= 2)
  {
    v47 = v46;
    if (+[BWPersonSegmentationConfiguration isPortraitPrewarmingRequired])
    {
      [(BWInferenceEngine *)v219 addInferenceOfType:102 version:+[BWPersonSegmentationConfiguration configuration:"portraitVersion"]& 0xFFFFFFFFFFFFLL, 0];
    }

    if (v34)
    {
      v330[0] = @"bundlePath";
      v330[1] = @"classname";
      v331[0] = v47;
      v331[1] = @"FigSDOFBlurMapRendering";
      v330[2] = @"tuningParameters";
      v331[2] = v34;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v331, v330, 3)}];
      v328[0] = @"bundlePath";
      v328[1] = @"classname";
      v329[0] = v47;
      v329[1] = @"FigSDOFEffectRendering";
      v328[2] = @"tuningParameters";
      v329[2] = v34;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v329, v328, 3)}];
    }

    if (v36)
    {
      v326[0] = @"bundlePath";
      v326[1] = @"classname";
      v327[0] = v47;
      v327[1] = @"FigSDOFBlurMapRendering";
      v326[2] = @"tuningParameters";
      v327[2] = v36;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v327, v326, 3)}];
      v324[0] = @"bundlePath";
      v324[1] = @"classname";
      v325[0] = v47;
      v325[1] = @"FigSDOFEffectRendering";
      v324[2] = @"tuningParameters";
      v325[2] = v36;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v325, v324, 3)}];
    }

    if (v39)
    {
      v322[0] = @"bundlePath";
      v322[1] = @"classname";
      v323[0] = v47;
      v323[1] = @"FigSDOFBlurMapRendering";
      v322[2] = @"tuningParameters";
      v323[2] = v39;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v323, v322, 3)}];
      v320[0] = @"bundlePath";
      v320[1] = @"classname";
      v321[0] = v47;
      v321[1] = @"FigSDOFEffectRendering";
      v320[2] = @"tuningParameters";
      v321[2] = v39;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v321, v320, 3)}];
    }

    if (v41)
    {
      v318[0] = @"bundlePath";
      v318[1] = @"classname";
      v319[0] = v47;
      v319[1] = @"FigSDOFBlurMapRendering";
      v318[2] = @"tuningParameters";
      v319[2] = v41;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v319, v318, 3)}];
      v316[0] = @"bundlePath";
      v316[1] = @"classname";
      v317[0] = v47;
      v317[1] = @"FigSDOFEffectRendering";
      v316[2] = @"tuningParameters";
      v317[2] = v41;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v317, v316, 3)}];
    }

    if (+[BWRGBPersonSegmentationInferenceConfiguration isPortraitPrewarmingRequired])
    {
      [(BWInferenceEngine *)v219 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration configuration:"portraitVersion"]& 0xFFFFFFFFFFFFLL, 0];
    }
  }

  v2 = v217;
  v48 = [(FigCaptureCameraParameters *)v217 depthProcessorVersion];
  v314[0] = @"bundlePath";
  v314[1] = @"classname";
  v315[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"DepthProcessor", v48];
  v315[1] = @"FigStreamingDepthProcessorCPU";
  v44 = v223;
  [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v315, v314, 2)}];
  v218 = 1;
  v4 = obj;
LABEL_66:
  [v44 addObject:&unk_1F224AA68];
  v313 = 0u;
  v312 = 0u;
  v311 = 0u;
  v310 = 0u;
  v49 = [v4 countByEnumeratingWithState:&v310 objects:v309 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v311;
    while (2)
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v311 != v51)
        {
          objc_enumerationMutation(v4);
        }

        v53 = *(*(&v310 + 1) + 8 * j);
        v54 = [v4 objectForKeyedSubscript:v53];
        v55 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters mattingVersionForPortType:"mattingVersionForPortType:sensorIDString:" sensorIDString:v53, v54];
        v56 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v53), "objectForKeyedSubscript:", v54}];
        LODWORD(v57) = 1.0;
        v58 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v56 zoomFactor:v57];
        if (v55)
        {
          v59 = v58;
          if (v55 == 1)
          {
            v60 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
            [(BWInferenceConfiguration *)v60 setPriority:14];
            [(BWInferenceConfiguration *)v60 setTuningParameters:v56];
            [(BWMattingInferenceConfiguration *)v60 setSdofRenderingTuningParameters:v59];
            LODWORD(v61) = 2.0;
            [(BWMattingInferenceConfiguration *)v60 setMainImageDownscalingFactor:v61];
            [(BWInferenceEngine *)v219 addInferenceOfType:201 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v60];
            v1 = off_1E7989000;
            v4 = obj;
          }

          else
          {
            v62 = [BWSensorConfiguration alloc];
            v63 = [(BWSensorConfiguration *)v62 initWithPortType:v53 sensorIDString:v54 sensorIDDictionary:v56 cameraInfo:MEMORY[0x1E695E0F8]];
            v64 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
            v307 = [(BWSensorConfiguration *)v63 portType];
            v308 = v63;
            -[BWMattingV2InferenceConfiguration setSensorConfigurationsByPortType:](v64, "setSensorConfigurationsByPortType:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1]);
            [(BWInferenceConfiguration *)v64 setPriority:14];
            [(BWMattingV2InferenceConfiguration *)v64 setSdofRenderingTuningParameters:v59];
            LODWORD(v65) = 2.0;
            [(BWMattingV2InferenceConfiguration *)v64 setMainImageDownscalingFactor:v65];
            [(BWInferenceEngine *)v219 addInferenceOfType:201 version:BWInferenceVersionMakeMajor(v55) & 0xFFFFFFFFFFFFLL configuration:v64];
            v1 = off_1E7989000;
            v4 = obj;
            if ([(FigCaptureCameraParameters *)v2 learnedMattingVersion]>= 1)
            {
              v66 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
              [(BWTiledEspressoInferenceConfiguration *)v66 setMetalCommandQueue:0];
              LODWORD(v67) = 2.0;
              [(BWLearnedMattingInferenceConfiguration *)v66 setMainImageDownscalingFactor:v67];
              [(BWInferenceEngine *)v219 addInferenceOfType:107 version:BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v2 learnedMattingVersion]) & 0xFFFFFFFFFFFFLL configuration:v66];
            }
          }

          goto LABEL_79;
        }

        v4 = obj;
      }

      v50 = [obj countByEnumeratingWithState:&v310 objects:v309 count:16];
      v1 = off_1E7989000;
      if (v50)
      {
        continue;
      }

      break;
    }
  }

LABEL_79:
  if ([[(__objc2_class *)v1[242] sharedInstance] distortionCorrectionVersion])
  {
    [v223 addObject:&unk_1F224AA90];
  }

  v221 = [MEMORY[0x1E695DF90] dictionary];
  v303 = 0u;
  v304 = 0u;
  v305 = 0u;
  v306 = 0u;
  v228 = [v4 countByEnumeratingWithState:&v303 objects:v302 count:16];
  if (v228)
  {
    v226 = 0;
    v68 = 0;
    v224 = *v304;
    do
    {
      v69 = 0;
      do
      {
        if (*v304 != v224)
        {
          objc_enumerationMutation(v4);
        }

        v230 = v69;
        v70 = [objc_msgSend(objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*(*(&v303 + 1) + 8 * v69)), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", *(*(&v303 + 1) + 8 * v69))), "objectForKeyedSubscript:", @"NRFParameters", "objectForKeyedSubscript:", @"NRFParameters"}];
        v71 = [MEMORY[0x1E695DF90] dictionary];
        v298 = 0u;
        v299 = 0u;
        v300 = 0u;
        v301 = 0u;
        v72 = [v70 objectForKeyedSubscript:@"ToneMapping"];
        v73 = [v72 countByEnumeratingWithState:&v298 objects:v297 count:16];
        if (v73)
        {
          v74 = v73;
          v75 = *v299;
          do
          {
            for (k = 0; k != v74; ++k)
            {
              if (*v299 != v75)
              {
                objc_enumerationMutation(v72);
              }

              v77 = *(*(&v298 + 1) + 8 * k);
              if ([objc_msgSend(objc_msgSend(objc_msgSend(v70 objectForKeyedSubscript:{@"ToneMapping", "objectForKeyedSubscript:", v77), "objectForKeyedSubscript:", @"EnableSTF", "BOOLValue"}])
              {
                if ([objc_msgSend(objc_msgSend(v70 objectForKeyedSubscript:{@"ToneMapping", "objectForKeyedSubscript:", v77), "objectForKeyedSubscript:", @"StfTuningParameters"}])
                {
                  [v71 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v70 forKey:{"objectForKeyedSubscript:", @"ToneMapping", "objectForKeyedSubscript:", v77), "objectForKeyedSubscript:", @"StfTuningParameters", v77}];
                }

                v68 = 1;
              }
            }

            v74 = [v72 countByEnumeratingWithState:&v298 objects:v297 count:16];
          }

          while (v74);
        }

        if (v68)
        {
          [v221 setObject:v71 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v226++)}];
        }

        v3 = v232;
        v4 = obj;
        v69 = v230 + 1;
      }

      while (v230 + 1 != v228);
      v228 = [obj countByEnumeratingWithState:&v303 objects:v302 count:16];
    }

    while (v228);
    v2 = v217;
    v1 = off_1E7989000;
    if (v68)
    {
      v295[0] = @"bundlePath";
      v295[1] = @"classname";
      v296[0] = @"/System/Library/VideoProcessors/STF.bundle";
      v296[1] = @"STFStillProcessorV1";
      v295[2] = @"tuningParameters";
      v296[2] = v221;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v296, v295, 3)}];
    }
  }

  v78 = [(FigCaptureCameraParameters *)v2 videoStabilizationSTFParameters];
  if ([-[NSDictionary objectForKeyedSubscript:](v78 objectForKeyedSubscript:{@"Version", "unsignedIntValue"}])
  {
    v293[0] = @"bundlePath";
    v293[1] = @"classname";
    v294[0] = @"/System/Library/VideoProcessors/STF.bundle";
    v294[1] = @"STFVideoProcessorV1";
    v293[2] = @"tuningParameters";
    v294[2] = v78;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v294, v293, 3)}];
  }

  v79 = [[(__objc2_class *)v1[242] sharedInstance] nrfVersion];
  v227 = *off_1E798A0C0;
  if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*off_1E798A0C0), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", *off_1E798A0C0)), "objectForKeyedSubscript:", @"SoftwareFlashRenderingParameters"}])
  {
    v291[0] = @"bundlePath";
    v291[1] = @"classname";
    v292[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/NRFV%d.bundle", @"/System/Library/VideoProcessors/", v79];
    v292[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"CMISoftwareFlashRenderingProcessorV%d", sDeviceSWFRVersion];
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v292, v291, 2)}];
  }

  v80 = *off_1E798A0E8;
  v81 = [v4 objectForKeyedSubscript:*off_1E798A0E8];
  v82 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v80), "objectForKeyedSubscript:", v81}];
  v83 = [v82 objectForKeyedSubscript:@"DepthProcessingParameters"];
  if (v81)
  {
    v84 = v83;
    v85 = [(FigCaptureCameraParameters *)v2 depthProcessorVersion];
    v289[0] = @"bundlePath";
    v289[1] = @"classname";
    v290[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"DepthProcessor", v85];
    v290[1] = @"FigStillDepthProcessorGPU";
    v289[2] = @"tuningParameters";
    v290[2] = v84;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v290, v289, 3)}];
    v86 = [(FigCaptureCameraParameters *)v2 depthProcessorVersion];
    v287[0] = @"bundlePath";
    v287[1] = @"classname";
    v288[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"DepthProcessor", v86];
    v288[1] = @"FigStreamingDepthProcessorCPU";
    v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v288 forKeys:v287 count:2];
    if (([v223 containsObject:v87] & 1) == 0)
    {
      [v223 addObject:v87];
    }

    LODWORD(v88) = 1.0;
    v89 = [(__objc2_class *)v1[242] sdofTuningParametersForSensorIDDictionary:v82 zoomFactor:v88];
    v90 = [v89 objectForKeyedSubscript:*off_1E798A9D8];
    if ([v90 intValue] <= 5)
    {
      v91 = [v90 intValue];
    }

    else
    {
      v91 = 5;
    }

    v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"SDOFRendering", v91];
    v218 = 1;
    if (v89 && v91)
    {
      v93 = v92;
      v285[0] = @"bundlePath";
      v285[1] = @"classname";
      v286[0] = v92;
      v286[1] = @"FigSDOFBlurMapRendering";
      v285[2] = @"tuningParameters";
      v286[2] = v89;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v286, v285, 3)}];
      v283[0] = @"bundlePath";
      v283[1] = @"classname";
      v284[0] = v93;
      v284[1] = @"FigSDOFEffectRendering";
      v283[2] = @"tuningParameters";
      v284[2] = v89;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v284, v283, 3)}];
      v218 = 1;
    }
  }

  v94 = [-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{v227), "objectForKeyedSubscript:", objc_msgSend(v4, "objectForKeyedSubscript:", v227)}];
  v95 = [v94 objectForKeyedSubscript:@"FocusPixelDisparity"];
  if (v95)
  {
    v281[0] = @"bundlePath";
    v281[1] = @"classname";
    v282[0] = @"/System/Library/VideoProcessors/FPDisparityV1.bundle";
    v282[1] = @"FigFocusPixelDisparityGenerator";
    v281[2] = @"tuningParameters";
    v282[2] = v95;
    v96 = v223;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v282, v281, 3)}];
    LODWORD(v97) = 1.0;
    v98 = [(__objc2_class *)v1[242] sdofTuningParametersForSensorIDDictionary:v94 zoomFactor:v97];
    v99 = [v98 objectForKeyedSubscript:*off_1E798A9D8];
    if ([v99 intValue] <= 5)
    {
      v100 = [v99 intValue];
    }

    else
    {
      v100 = 5;
    }

    v101 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors/", @"SDOFRendering", v100];
    if (v98 && v100)
    {
      v102 = v101;
      v279[0] = @"bundlePath";
      v279[1] = @"classname";
      v280[0] = v101;
      v280[1] = @"FigSDOFBlurMapRendering";
      v279[2] = @"tuningParameters";
      v280[2] = v98;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v280, v279, 3)}];
      v277[0] = @"bundlePath";
      v277[1] = @"classname";
      v278[0] = v102;
      v278[1] = @"FigSDOFEffectRendering";
      v277[2] = @"tuningParameters";
      v278[2] = v98;
      [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v278, v277, 3)}];
    }

    if (!v219)
    {
      v216 = objc_alloc_init(BWInferenceScheduler);
      v219 = [[BWInferenceEngine alloc] initWithScheduler:v216 priority:29];
    }

    v218 = 1;
  }

  else
  {
    v96 = v223;
  }

  if (sDeviceUsesUBProcessor == 1)
  {
    v276 = 0u;
    v275 = 0u;
    v274 = 0u;
    v273 = 0u;
    v103 = [v4 countByEnumeratingWithState:&v273 objects:v272 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v274;
      while (2)
      {
        for (m = 0; m != v104; ++m)
        {
          if (*v274 != v105)
          {
            objc_enumerationMutation(obj);
          }

          if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*(*(&v273 + 1) + 8 * m)), "objectForKeyedSubscript:", objc_msgSend(obj, "objectForKeyedSubscript:", *(*(&v273 + 1) + 8 * m))), "objectForKeyedSubscript:", @"UBParameters"}])
          {
            v270[0] = @"bundlePath";
            v270[1] = @"classname";
            v271[0] = @"/System/Library/VideoProcessors/UB.bundle";
            v271[1] = @"UBProcessor";
            v270[2] = @"tuningParameters";
            v271[2] = v3;
            [v96 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v271, v270, 3)}];
            v4 = obj;
            goto LABEL_138;
          }
        }

        v4 = obj;
        v104 = [obj countByEnumeratingWithState:&v273 objects:v272 count:16];
        if (v104)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_138:
  if (sDeviceUsesNRFProcessor == 1)
  {
    v269 = 0u;
    v268 = 0u;
    v267 = 0u;
    v266 = 0u;
    v107 = [v4 countByEnumeratingWithState:&v266 objects:v265 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = *v267;
      while (2)
      {
        for (n = 0; n != v108; ++n)
        {
          if (*v267 != v109)
          {
            objc_enumerationMutation(obj);
          }

          if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*(*(&v266 + 1) + 8 * n)), "objectForKeyedSubscript:", objc_msgSend(obj, "objectForKeyedSubscript:", *(*(&v266 + 1) + 8 * n))), "objectForKeyedSubscript:", @"NRFParameters"}])
          {
            v111 = [[(__objc2_class *)v1[242] sharedInstance] nrfVersion];
            if (v111)
            {
              v112 = v111;
              v263[0] = @"bundlePath";
              v263[1] = @"classname";
              v264[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/NRFV%d.bundle", @"/System/Library/VideoProcessors/", v111];
              v264[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"NRFProcessorV%d", v112];
              v263[2] = @"tuningParameters";
              v264[2] = v3;
              [v96 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v264, v263, 3)}];
            }

            goto LABEL_150;
          }
        }

        v108 = [obj countByEnumeratingWithState:&v266 objects:v265 count:16];
        if (v108)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_150:
  v113 = [[(__objc2_class *)v1[242] sharedInstance] deepZoomVersion];
  if (v113)
  {
    v114 = v113;
    v115 = [(BWInferenceConfiguration *)[BWDeepZoomInferenceConfiguration alloc] initWithInferenceType:160];
    [(BWTiledEspressoInferenceConfiguration *)v115 setMetalCommandQueue:0];
    [(BWDeepZoomInferenceConfiguration *)v115 setType:2];
    [(BWDeepZoomInferenceConfiguration *)v115 setVersion:v114];
    [(BWInferenceConfiguration *)v115 setTuningParameters:v3];
    [(BWInferenceEngine *)v219 addInferenceOfType:160 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v115];
  }

  v116 = objc_autoreleasePoolPush();
  v117 = objc_alloc_init(MEMORY[0x1E6994588]);
  [v117 setOutputDimensions:0x2000000020];
  [v117 setup];
  [v117 prewarm];

  objc_autoreleasePoolPop(v116);
  v118 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v119 = [v118 countByEnumeratingWithState:&v352 objects:cf count:16];
  if (v119)
  {
    v120 = v119;
    v121 = *v353;
    while (2)
    {
      for (ii = 0; ii != v120; ++ii)
      {
        if (*v353 != v121)
        {
          objc_enumerationMutation(v118);
        }

        if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v3 objectForKeyedSubscript:{*(*(&v352 + 1) + 8 * ii)), "objectForKeyedSubscript:", objc_msgSend(v118, "objectForKeyedSubscript:", *(*(&v352 + 1) + 8 * ii))), "objectForKeyedSubscript:", @"CinematicVideoParameters"}])
        {
          v123 = objc_autoreleasePoolPush();

          [getPTDisparityPostProcessingClass() prewarmForCameraCaptured];
          [getPTRenderPipelineClass() prewarmForCameraCaptured];
          objc_autoreleasePoolPop(v123);
          goto LABEL_162;
        }
      }

      v120 = [v118 countByEnumeratingWithState:&v352 objects:cf count:16];
      if (v120)
      {
        continue;
      }

      break;
    }
  }

LABEL_162:
  if (sDeviceUsesAnyVideoEffect == 1)
  {
    [getPTEffectClass() prewarmForCameraCaptured];
  }

  v124 = [(NSDictionary *)v3 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v125 = [v124 countByEnumeratingWithState:&v352 objects:cf count:16];
  if (v125)
  {
    v126 = v125;
    v127 = *v353;
    while (2)
    {
      for (jj = 0; jj != v126; ++jj)
      {
        if (*v353 != v127)
        {
          objc_enumerationMutation(v124);
        }

        if (-[__objc2_class chromaticDefringingEnabledForVideoForPortType:sensorIDString:](-[__objc2_class sharedInstance](v1[242], "sharedInstance"), "chromaticDefringingEnabledForVideoForPortType:sensorIDString:", *(*(&v352 + 1) + 8 * jj), [v124 objectForKeyedSubscript:*(*(&v352 + 1) + 8 * jj)]))
        {
          [v96 addObject:&unk_1F224AAB8];
          goto LABEL_174;
        }
      }

      v126 = [v124 countByEnumeratingWithState:&v352 objects:cf count:16];
      if (v126)
      {
        continue;
      }

      break;
    }
  }

LABEL_174:
  v129 = [MEMORY[0x1E695DF90] dictionary];
  v130 = [MEMORY[0x1E695DF90] dictionary];
  v131 = obj;
  [v130 setObject:obj forKeyedSubscript:@"DefaultSensorIDs"];
  [v129 setObject:-[__objc2_class commonNRFParameters](-[__objc2_class sharedInstance](v1[242] forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
  [v130 setObject:v129 forKeyedSubscript:@"Common"];
  v231 = v130;
  [v130 setObject:obj forKeyedSubscript:@"DefaultSensorIDs"];
  v261 = 0u;
  v262 = 0u;
  v259 = 0u;
  v260 = 0u;
  v132 = [obj countByEnumeratingWithState:&v259 objects:v258 count:16];
  if (v132)
  {
    v133 = v132;
    v134 = 0;
    v229 = *v260;
    v135 = MEMORY[0x1E695E0F8];
    do
    {
      for (kk = 0; kk != v133; ++kk)
      {
        if (*v260 != v229)
        {
          objc_enumerationMutation(v131);
        }

        v137 = *(*(&v259 + 1) + 8 * kk);
        v138 = [v131 objectForKeyedSubscript:v137];
        v139 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v232 objectForKeyedSubscript:{v137), "objectForKeyedSubscript:", v138), "objectForKeyedSubscript:", @"SoftISPTuning"}];
        if (v139)
        {
          v140 = v139;
        }

        else
        {
          v140 = v135;
        }

        v134 |= v139 != 0;
        v141 = [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v232 objectForKeyedSubscript:{v137), "objectForKeyedSubscript:", v138), "objectForKeyedSubscript:", @"ModuleConfig"}];
        if (v141)
        {
          v142 = v141;
        }

        else
        {
          v142 = v135;
        }

        v256 = v138;
        v131 = obj;
        v254[0] = @"SoftISPTuning";
        v254[1] = @"ModuleConfig";
        v255[0] = v140;
        v255[1] = v142;
        v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v255 forKeys:v254 count:2];
        [v231 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v257, &v256, 1), v137}];
      }

      v133 = [obj countByEnumeratingWithState:&v259 objects:v258 count:16];
    }

    while (v133);
  }

  else
  {
    v134 = 0;
  }

  v143 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
  if ((v134 & 1) != 0 && v143 >= 3)
  {
    v252[0] = @"bundlePath";
    v252[1] = @"classname";
    v253[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/NRFV%d.bundle", @"/System/Library/VideoProcessors/", v143];
    v253[1] = @"SoftISPProcessor";
    v252[2] = @"tuningParameters";
    v253[2] = v231;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v253, v252, 3)}];
  }

  v250 = 0u;
  v251 = 0u;
  v248 = 0u;
  v249 = 0u;
  v144 = [v222 countByEnumeratingWithState:&v248 objects:v247 count:16];
  if (v144)
  {
    v145 = v144;
    v146 = *v249;
    do
    {
      for (mm = 0; mm != v145; ++mm)
      {
        if (*v249 != v146)
        {
          objc_enumerationMutation(v222);
        }

        v148 = *(*(&v248 + 1) + 8 * mm);
        v149 = objc_autoreleasePoolPush();
        cf[0] = 0;
        [v148 objectForKeyedSubscript:@"sbpName"];
        [v148 objectForKeyedSubscript:@"sbpOpts"];
        v150 = FigSampleBufferProcessorCreateForCustom();
        v151 = cf[0];
        if (cf[0] && !v150)
        {
          v152 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (v152)
          {
            v152(v151);
          }

          FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
          if (FigBaseObject)
          {
            v154 = FigBaseObject;
            v155 = *(*(CMBaseObjectGetVTable() + 8) + 24);
            if (v155)
            {
              v155(v154);
            }
          }

          v151 = cf[0];
        }

        if (v151)
        {
          CFRelease(v151);
        }

        objc_autoreleasePoolPop(v149);
      }

      v145 = [v222 countByEnumeratingWithState:&v248 objects:v247 count:16];
    }

    while (v145);
  }

  v156 = [(NSDictionary *)v232 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v157 = [v156 countByEnumeratingWithState:&v352 objects:cf count:16];
  if (v157)
  {
    v158 = v157;
    v159 = *v353;
    while (2)
    {
      for (nn = 0; nn != v158; ++nn)
      {
        if (*v353 != v159)
        {
          objc_enumerationMutation(v156);
        }

        if ([objc_msgSend(objc_msgSend(objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v232 objectForKeyedSubscript:{*(*(&v352 + 1) + 8 * nn)), "objectForKeyedSubscript:", objc_msgSend(v156, "objectForKeyedSubscript:", *(*(&v352 + 1) + 8 * nn))), "objectForKeyedSubscript:", @"NRFParameters", "objectForKeyedSubscript:", @"NRFParameters", "objectForKeyedSubscript:", @"SemanticStyles"}])
        {
          v163 = &ispToneCurve[223];
          v162 = 0x1E696A000uLL;
          if (smartStyleVersion)
          {
            v225 = 0;
          }

          else
          {
            [v223 addObject:&unk_1F224AAE0];
            v225 = 1;
          }

          v161 = off_1E7989000;
          goto LABEL_222;
        }
      }

      v158 = [v156 countByEnumeratingWithState:&v352 objects:cf count:16];
      if (v158)
      {
        continue;
      }

      break;
    }
  }

  v225 = 0;
  v161 = off_1E7989000;
  v162 = 0x1E696A000;
  v163 = ispToneCurve + 892;
LABEL_222:
  v164 = [[(__objc2_class *)v161[242] sharedInstance] videoGreenGhostBrightLightMitigationVersion];
  if (v164)
  {
    v165 = v164;
    v166 = [*(v162 + 3776) stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors/", objc_msgSend(*(v162 + 3776), "stringWithFormat:", @"%@V%d", @"VideoDeghosting", v164)];
    v167 = [*(v162 + 3776) stringWithFormat:@"CMI%@V%d", @"VideoDeghosting", v165];
    v245[0] = @"bundlePath";
    v245[1] = @"classname";
    v246[0] = v166;
    v246[1] = v167;
    v245[2] = @"tuningParameters";
    v246[2] = [-[__objc2_class commonVideoGreenGhostMitigationParameters](-[__objc2_class sharedInstance](v161[242] "sharedInstance")];
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v246, v245, 3)}];
  }

  v168 = [[(__objc2_class *)v161[242] sharedInstance] videoGreenGhostLowLightMitigationVersion];
  if (v168)
  {
    v169 = v168;
    v170 = [*(v162 + 3776) stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors/", objc_msgSend(*(v162 + 3776), "stringWithFormat:", @"%@V%d", @"VideoDeghosting", v168)];
    v171 = [*(v162 + 3776) stringWithFormat:@"CMI%@V%d", @"VideoDeghosting", v169];
    v243[0] = @"bundlePath";
    v243[1] = @"classname";
    v244[0] = v170;
    v244[1] = v171;
    v243[2] = @"tuningParameters";
    v244[2] = [-[__objc2_class commonVideoGreenGhostMitigationParameters](-[__objc2_class sharedInstance](v161[242] "sharedInstance")];
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v244, v243, 3)}];
  }

  v172 = *(v163 + 520);
  if (v172)
  {
    v173 = [*(v162 + 3776) stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors/", objc_msgSend(*(v162 + 3776), "stringWithFormat:", @"%@V%d", @"SmartStyle", v172)];
    v174 = [*(v162 + 3776) stringWithFormat:@"CMI%@V%d", @"SmartStyleProcessor", *(v163 + 520)];
    v241[0] = @"bundlePath";
    v241[1] = @"classname";
    v242[0] = v173;
    v242[1] = v174;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v242, v241, 2)}];
  }

  if (constantColorVersion)
  {
    v175 = [*(v162 + 3776) stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors/", objc_msgSend(*(v162 + 3776), "stringWithFormat:", @"%@V%d", @"ColourConstancy", constantColorVersion)];
    v176 = [*(v162 + 3776) stringWithFormat:@"CMI%@V%d", @"ColourConstancyProcessor", constantColorVersion];
    v239[0] = @"bundlePath";
    v239[1] = @"classname";
    v240[0] = v175;
    v240[1] = v176;
    [v223 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v240, v239, 2)}];
  }

  if (sDeviceUsesDepthMultiplier == 1)
  {
    v177 = [[FigDepthValueMultiplier alloc] initWithMetalContext:0];
  }

  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v178 = [v223 countByEnumeratingWithState:&v235 objects:v234 count:16];
  if (v178)
  {
    v179 = v178;
    v180 = *v236;
    do
    {
      for (i1 = 0; i1 != v179; ++i1)
      {
        if (*v236 != v180)
        {
          objc_enumerationMutation(v223);
        }

        v182 = *(*(&v235 + 1) + 8 * i1);
        v183 = [v182 objectForKeyedSubscript:@"bundlePath"];
        v184 = [v182 objectForKeyedSubscript:@"classname"];
        v185 = [v182 objectForKeyedSubscript:@"tuningParameters"];
        LODWORD(v352) = 0;
        cf[0] = 0;
        v186 = objc_autoreleasePoolPush();
        if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
        {
          goto LABEL_254;
        }

        v187 = [MEMORY[0x1E696AAE8] bundleWithPath:v183];
        v188 = v187;
        if (v187)
        {
          if ([v187 loadAndReturnError:cf])
          {
            if (v184)
            {
              v189 = [v188 classNamed:v184];
            }

            else
            {
              v189 = [v188 principalClass];
            }

            v190 = v189;
            if (!v189)
            {
              goto LABEL_253;
            }

            if ([v189 conformsToProtocol:&unk_1F22B5E50])
            {
              v191 = objc_opt_new();
              v188 = v191;
              if (v191)
              {
                [v191 setMetalCommandQueue:a1];
                [v188 setTuningParameters:v185];
                [v188 setCameraInfoByPortType:MEMORY[0x1E695E0F8]];
                LODWORD(v352) = [v188 setup];
                if (!v352)
                {
                  v190 = 0;
                  LODWORD(v352) = [v188 prewarm];
                  goto LABEL_256;
                }
              }

              goto LABEL_255;
            }

            if ([v190 instancesRespondToSelector:sel_prewarmWithTuningParameters_])
            {
              v190 = objc_opt_new();
              if (v190)
              {
                if (objc_opt_respondsToSelector())
                {
                  [v190 performSelector:sel_setMetalCommandQueue_ withObject:a1];
                }

                v192 = [objc_alloc(MEMORY[0x1E696AC98]) initWithTarget:v190 selector:sel_prewarmWithTuningParameters_ object:v185];
                [v192 start];
                [objc_msgSend(v192 "result")];
              }

LABEL_253:
              v188 = 0;
              goto LABEL_256;
            }
          }

LABEL_254:
          v188 = 0;
        }

LABEL_255:
        v190 = 0;
LABEL_256:

        objc_autoreleasePoolPop(v186);
      }

      v179 = [v223 countByEnumeratingWithState:&v235 objects:v234 count:16];
    }

    while (v179);
  }

  if (v218)
  {
    v193 = v217;
    v194 = [(FigCaptureCameraParameters *)v217 coreImagePortraitFilterVersion];
  }

  else
  {
    v194 = 0;
    v193 = v217;
  }

  v195 = objc_autoreleasePoolPush();
  +[BWPreviewStitcherNode prewarmCoreImageShaders];
  +[BWVideoPIPOverlayNode prewarmCoreImageShaders];
  [BWCoreImageFilterRenderer prewarmPortraitFilterVersion:v194 semanticStyleFilters:v225];
  v196 = [-[NSDictionary objectForKeyedSubscript:](v232 objectForKeyedSubscript:{v227), "objectForKeyedSubscript:", objc_msgSend(obj, "objectForKeyedSubscript:", v227)}];
  LODWORD(v197) = 1.0;
  v198 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v196 zoomFactor:v197];
  if (v198)
  {
    v199 = v198;
    v200 = [objc_msgSend(v198 objectForKeyedSubscript:{@"Version", "intValue"}];
    if ([v199 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"HairNetV%d", v200)}])
    {
      +[BWCoreImageFilterRenderer prewarmCoreImageSDOFRenderingFilter];
    }
  }

  objc_autoreleasePoolPop(v195);
  if (sPocketDetectionSupported == 1)
  {
    +[BWPocketDetectionFFTProcessor prewarmShaders];
  }

  if (v218)
  {
    if (objc_opt_respondsToSelector())
    {
      v201 = objc_autoreleasePoolPush();
      [MEMORY[0x1E698C0E0] prewarm];
      objc_autoreleasePoolPop(v201);
    }

    if ([(BWInferenceEngine *)v219 isConfiguredForInference])
    {
      [(BWInferenceEngine *)v219 prewarmInferencesUsingLimitedMemory:1];
    }
  }

  v202 = [(NSDictionary *)v232 objectForKeyedSubscript:@"DefaultSensorIDs"];
  v352 = 0u;
  v353 = 0u;
  v354 = 0u;
  v355 = 0u;
  v203 = [v202 countByEnumeratingWithState:&v352 objects:cf count:16];
  if (v203)
  {
    v204 = v203;
    v205 = *v353;
    while (2)
    {
      for (i2 = 0; i2 != v204; ++i2)
      {
        if (*v353 != v205)
        {
          objc_enumerationMutation(v202);
        }

        if ([objc_msgSend(-[NSDictionary objectForKeyedSubscript:](v232 objectForKeyedSubscript:{*(*(&v352 + 1) + 8 * i2)), "objectForKeyedSubscript:", objc_msgSend(v202, "objectForKeyedSubscript:", *(*(&v352 + 1) + 8 * i2))), "objectForKeyedSubscript:", @"RedEyeReductionParameters"}])
        {
          v207 = objc_autoreleasePoolPush();
          +[BWRedEyeReductionController prewarm];
          objc_autoreleasePoolPop(v207);
          goto LABEL_281;
        }
      }

      v204 = [v202 countByEnumeratingWithState:&v352 objects:cf count:16];
      if (v204)
      {
        continue;
      }

      break;
    }
  }

LABEL_281:
  v208 = [[FigMetalHistogram alloc] initWithMetalContext:0];
  v209 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
  v210 = sDeviceSWFRVersion;
  v211 = [(FigCaptureCameraParameters *)v193 gainMapVersion];
  v212 = v210 == 2;
  v213 = 2;
  if (v210 == 2)
  {
    v213 = 3;
  }

  if (v211 >> 17)
  {
    v212 = v213;
  }

  if (v209 > 2)
  {
    v212 |= 8uLL;
  }

  if (smartStyleVersion)
  {
    v214 = v212 | 4;
  }

  else
  {
    v214 = v212;
  }

  [MEMORY[0x1E6991740] prewarmShadersForFeatures:v214];

  objc_autoreleasePoolPop(context);
}