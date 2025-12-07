void PFLGeneratePhotosFace(void *a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x277CD9880]);
  v16[0] = *MEMORY[0x277CD9AE8];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 addFetchPropertySets:v9];

  v10 = MEMORY[0x277CD97A8];
  v15 = v5;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v12 = [v10 fetchAssetsWithUUIDs:v11 options:v8];

  v13 = [v12 firstObject];

  if (v13)
  {
    PFLGeneratePhotosFaceCommon(v13, v6, 0, v7);
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:1 userInfo:0];
    (*(v7 + 2))(v7, 0, v14);
  }
}

void PFLGeneratePhotosFaceCommon(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = pfl_layout_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v7;
    v27 = 2080;
    v28 = [v8 fileSystemRepresentation];
    _os_log_impl(&dword_22D2ED000, v11, OS_LOG_TYPE_DEFAULT, "PFLGeneratePhotosFace: Calculate watch face layers for %@ in %s", buf, 0x16u);
  }

  v12 = +[PFLSegmentationCalculator sharedInstance];
  v13 = [[PFLJetsamInfoInterval alloc] initWithLabel:@"bestSegmentationForAsset (allPositions)"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __PFLGeneratePhotosFaceCommon_block_invoke;
  v19[3] = &unk_27875B970;
  v23 = v7;
  v24 = v10;
  v20 = v13;
  v21 = v8;
  v22 = v9;
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v18 = v13;
  [v12 bestSegmentationForAsset:v14 completion:v19];
}

void PFLGeneratePhotosFaceWithOptions(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __PFLGeneratePhotosFaceWithOptions_block_invoke;
  v9[3] = &unk_27875B948;
  v10 = v7;
  v8 = v7;
  PFLGeneratePhotosFaceCommon(a1, a2, a3, v9);
}

void __PFLGeneratePhotosFaceWithOptions_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = v5;
  if (a2 && !v5)
  {
    v6 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:0];
  }

  (*(*(a1 + 32) + 16))();
}

void __PFLGeneratePhotosFaceCommon_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pfl_layout_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v5 count];
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_22D2ED000, v7, OS_LOG_TYPE_DEFAULT, "bestSegmentationForAsset returned %ld layouts, error == %@", buf, 0x16u);
  }

  [*(a1 + 32) logCurrentInterval];
  [*(a1 + 32) reset];
  if (!v6)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{objc_msgSend(*(a1 + 40), "fileSystemRepresentation")}];
    v67 = 0;
    [v8 createDirectoryIfNeededAtPath:v9 error:&v67];
    v10 = v67;

    if (v10)
    {
      (*(*(a1 + 64) + 16))();
LABEL_40:

      goto LABEL_41;
    }

    v11 = [*(a1 + 48) objectForKeyedSubscript:@"PFCLSaveFullsizeMask"];
    v59 = [v11 BOOLValue];

    v12 = *(a1 + 40);
    v13 = *(a1 + 56);
    v65 = v5;
    v64 = v12;
    v14 = pfl_layout_log(v64);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 localIdentifier];
      v16 = [v65 count];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&dword_22D2ED000, v14, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: generating layers for %@, %ld layouts", buf, 0x16u);
    }

    v61 = canEncodeHEIC(v17, v18);
    v19 = MEMORY[0x277CD97A8];
    v20 = [v13 localIdentifier];
    v63 = [v19 uuidFromLocalIdentifier:v20];

    v21 = objc_opt_new();
    v22 = [v13 localIdentifier];
    [v21 setLocalIdentifier:v22];

    v23 = [v13 pfl_modificationDate];
    [v21 setModificationDate:v23];

    v24 = [v13 pfl_creationDate];
    [v21 setCreationDate:v24];

    [v21 setParallaxScale:*MEMORY[0x277D3B3B8]];
    [v21 setUserEdited:0];
    v66 = v13;
    v25 = objc_opt_new();
    [v25 setVersion:0];
    [v25 setDeliveryMode:1];
    [v25 setNetworkAccessAllowed:1];
    [v25 setSynchronous:1];
    v78 = 0;
    v79 = &v78;
    v80 = 0x3032000000;
    v81 = __Block_byref_object_copy_;
    v82 = __Block_byref_object_dispose_;
    v83 = 0;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 1;
    v68 = 0;
    v69 = &v68;
    v70 = 0x3032000000;
    v71 = __Block_byref_object_copy_;
    v72 = __Block_byref_object_dispose_;
    v73 = 0;
    v26 = [MEMORY[0x277CD9898] defaultManager];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __imageDataForAsset_block_invoke;
    v85 = &unk_27875B9C0;
    v86 = &v78;
    v87 = &v74;
    v88 = &v68;
    [v26 requestImageDataAndOrientationForAsset:v66 options:v25 resultHandler:buf];

    v28 = v79[5];
    if (v28 && !v69[5])
    {
      v60 = *(v75 + 6);
      v31 = v28;
    }

    else
    {
      v29 = pfl_layout_log(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = [v66 localIdentifier];
        __PFLGeneratePhotosFaceCommon_block_invoke_cold_1(v30, &v69, v96, v29);
      }

      v28 = 0;
      v60 = 1;
    }

    v32 = v69[5];
    _Block_object_dispose(&v68, 8);

    _Block_object_dispose(&v74, 8);
    _Block_object_dispose(&v78, 8);

    v33 = v28;
    v62 = v33;
    if (v32)
    {
      v34 = pfl_layout_log(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v66;
        _os_log_impl(&dword_22D2ED000, v34, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: no data for %@", buf, 0xCu);
      }

      v35 = v32;
      v36 = 0;
      goto LABEL_34;
    }

    v37 = [v65 objectAtIndexedSubscript:0];
    v38 = [v37 foregroundMask] == 0;

    if (v38)
    {
      v44 = 0;
    }

    else
    {
      v58 = [v65 objectAtIndexedSubscript:0];
      v39 = [v58 foregroundMask];
      v57 = [v65 objectAtIndexedSubscript:0];
      v40 = [v57 maskIsInverted];
      v41 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:v39];
      v56 = [MEMORY[0x277CBF740] context];
      space = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
      if (v40)
      {
        v42 = [MEMORY[0x277CBF750] filterWithName:@"CIColorInvert"];
        [v42 setValue:v41 forKey:*MEMORY[0x277CBFAF0]];
        v43 = [v42 outputImage];
        [v41 extent];
        v44 = [v56 createCGImage:v43 fromRect:*MEMORY[0x277CBF988] format:space colorSpace:?];
      }

      else
      {
        [v41 extent];
        v44 = [v56 createCGImage:v41 fromRect:*MEMORY[0x277CBF988] format:space colorSpace:?];
      }

      CGColorSpaceRelease(space);

      if (!v44)
      {
        v47 = pfl_layout_log(v45);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22D2ED000, v47, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: cannot create a CGImage mask from CVPixelBuffer", buf, 2u);
        }

        goto LABEL_32;
      }

      if (v59)
      {
        v46 = pfl_layout_log(v45);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v64;
          _os_log_impl(&dword_22D2ED000, v46, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: also saving full size mask in %@", buf, 0xCu);
        }

        v47 = pngDataFromImage(v44);
        if (v47)
        {
          v48 = [v64 URLByAppendingPathComponent:@"FullSizeMask.png" isDirectory:0];
          v49 = saveDataToFile(v47, v48);
        }

LABEL_32:
      }
    }

    v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v65, "count", space)}];
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 0xBFF0000000000000;
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v71 = -1;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __generateWatchLayers_block_invoke;
    v85 = &unk_27875B998;
    v91 = &v78;
    v92 = &v68;
    v93 = v44;
    v86 = v66;
    v87 = v62;
    v94 = v60;
    v88 = v64;
    v89 = v63;
    v95 = v61;
    v51 = v50;
    v90 = v51;
    [v65 enumerateObjectsUsingBlock:buf];
    CGImageRelease(v44);
    [v21 setLayouts:v51];
    [v21 setPreferredLayout:v69[3]];
    v36 = v21;

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v78, 8);

LABEL_34:
    v52 = v32;
    v53 = [*(a1 + 32) logCurrentInterval];
    if (v32)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v54 = pfl_layout_log(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v36;
        _os_log_impl(&dword_22D2ED000, v54, OS_LOG_TYPE_DEFAULT, "PFLGeneratePhotosFace: Returning photo %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }

    goto LABEL_40;
  }

  (*(*(a1 + 64) + 16))();
LABEL_41:
}

void sub_22D2EF1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __generateWatchLayers_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [v5 cropScore];
  if (v6 > *(*(*(a1 + 72) + 8) + 24))
  {
    [v5 cropScore];
    *(*(*(a1 + 72) + 8) + 24) = v7;
    *(*(*(a1 + 80) + 8) + 24) = a3;
  }

  if ([v5 usesMask])
  {
    v8 = *(a1 + 88);
  }

  else
  {
    v8 = 0;
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 96);
  v13 = *(a1 + 48);
  v12 = *(a1 + 56);
  v14 = *(a1 + 100);
  v15 = v5;
  v16 = v12;
  v17 = v13;
  v18 = v9;
  v19 = v10;
  v20 = pfl_layout_log(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412290;
    v36 = v15;
    _os_log_impl(&dword_22D2ED000, v20, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayout: generating layout %@", &v35, 0xCu);
  }

  v21 = [v15 timePosition];
  [v15 visibleRect];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [v15 timeRect];
  v34 = PFLGenerateWatchLayout(v19, v18, v11, v8, v21, v17, v16, v14, v23, v25, v27, v29, v30, v31, v32, v33);

  if (v34)
  {
    [*(a1 + 64) addObject:v34];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __imageDataForAsset_block_invoke(void *a1, void *a2, uint64_t a3, int a4, void *a5)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a2;
  v9 = a5;
  *(*(a1[5] + 8) + 24) = a4;
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD9BF8]];

  v11 = *(a1[6] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

id pfl_photo_log(uint64_t a1)
{
  if (pfl_photo_log_onceToken != -1)
  {
    pfl_photo_log_cold_1();
  }

  v2 = pfl_photo_log___logger;

  return v2;
}

uint64_t __pfl_photo_log_block_invoke()
{
  pfl_photo_log___logger = os_log_create("com.apple.photosfacelayout", "photo");

  return MEMORY[0x2821F96F8]();
}

id pfl_layout_log(uint64_t a1)
{
  if (pfl_layout_log_onceToken != -1)
  {
    pfl_layout_log_cold_1();
  }

  v2 = pfl_layout_log___logger;

  return v2;
}

uint64_t __pfl_layout_log_block_invoke()
{
  pfl_layout_log___logger = os_log_create("com.apple.photosfacelayout", "layout");

  return MEMORY[0x2821F96F8]();
}

id pfl_jetsam_log(uint64_t a1)
{
  if (pfl_jetsam_log_onceToken != -1)
  {
    pfl_jetsam_log_cold_1();
  }

  v2 = pfl_jetsam_log___logger;

  return v2;
}

uint64_t __pfl_jetsam_log_block_invoke()
{
  pfl_jetsam_log___logger = os_log_create("com.apple.photosfacelayout", "jetsam");

  return MEMORY[0x2821F96F8]();
}

void sub_22D2F2AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t getImageOrientationFromSource(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  v2 = 1;
  if (v1)
  {
    v3 = v1;
    Value = CFDictionaryGetValue(v1, *MEMORY[0x277CD3410]);
    valuePtr = 1;
    if (Value)
    {
      if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
      {
        v2 = valuePtr;
      }

      else
      {
        v2 = 1;
      }
    }

    CFRelease(v3);
  }

  return v2;
}

uint64_t getImageOrientationFromData(const __CFData *a1)
{
  v1 = CGImageSourceCreateWithData(a1, 0);
  ImageOrientationFromSource = getImageOrientationFromSource(v1);
  CFRelease(v1);
  return ImageOrientationFromSource;
}

__n128 makePresentationTransform@<Q0>(int a1@<W0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result.n128_u64[0] = 0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        *a4 = 0x3FF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
        *(a4 + 32) = 0;
        *(a4 + 40) = 0;
        return result;
      }

      if (a1 == 2)
      {
        result.n128_f64[0] = a2;
        *a4 = 0xBFF0000000000000;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0x3FF0000000000000;
LABEL_9:
        *(a4 + 32) = result.n128_u64[0];
        return result;
      }

      goto LABEL_21;
    }

    if (a1 != 3)
    {
      result.n128_f64[0] = a3;
      *a4 = 0x3FF0000000000000;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0xBFF0000000000000;
      goto LABEL_15;
    }

    result.n128_f64[0] = a2;
    v9 = a3;
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 != 7)
    {
      if (a1 != 8)
      {
LABEL_21:
        v11 = MEMORY[0x277CBF2C0];
        v12 = *(MEMORY[0x277CBF2C0] + 16);
        *a4 = *MEMORY[0x277CBF2C0];
        *(a4 + 16) = v12;
        result = v11[2];
        *(a4 + 32) = result;
        return result;
      }

      result.n128_f64[0] = a2;
      *(a4 + 8) = xmmword_22D2F5DC0;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
LABEL_15:
      *(a4 + 40) = result.n128_u64[0];
      return result;
    }

    result.n128_f64[0] = a3;
    v9 = a2;
    __asm { FMOV            V2.2D, #-1.0 }

    *(a4 + 8) = _Q2;
LABEL_20:
    *(a4 + 32) = result.n128_u64[0];
    *(a4 + 40) = v9;
    return result;
  }

  if (a1 != 5)
  {
    result.n128_f64[0] = a3;
    *(a4 + 8) = xmmword_22D2F5DD0;
    goto LABEL_9;
  }

  __asm { FMOV            V0.2D, #1.0 }

  *(a4 + 8) = result;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  return result;
}

double storedSizeForOrientation(int a1, double a2, double a3)
{
  memset(&v7, 0, sizeof(v7));
  makePresentationTransform(a1, 0, 0, &v6);
  CGAffineTransformInvert(&v7, &v6);
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(*&v7.c, a3), *&v7.a, a2));
  return result;
}

double presentationSizeForOrientation(int a1, double a2, double a3)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  makePresentationTransform(a1, 0, 0, &v6);
  *&result = *&vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v7, a3), v6, a2));
  return result;
}

CGFloat uprightCTM@<D0>(CGImage *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  Height = CGImageGetHeight(a1);
  v6 = MEMORY[0x277CBF2C0];
  v7 = *MEMORY[0x277CBF2C0];
  v8 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v8;
  v9 = *(v6 + 32);
  *(a3 + 32) = v9;
  *&t1.a = v7;
  *&t1.c = v8;
  *&t1.tx = v9;
  t2.b = 0.0;
  t2.c = 0.0;
  t2.a = 1.0;
  *&t2.d = xmmword_22D2F5DE0;
  t2.ty = Height;
  CGAffineTransformConcat(a3, &t1, &t2);
  v10 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v10;
  *&t2.tx = *(a3 + 32);
  v11 = a2[1];
  *&v16.a = *a2;
  *&v16.c = v11;
  *&v16.tx = a2[2];
  CGAffineTransformConcat(&t1, &t2, &v16);
  v12 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v12;
  *(a3 + 32) = *&t1.tx;
  v13 = *(a3 + 16);
  *&t2.a = *a3;
  *&t2.c = v13;
  *&t2.tx = *(a3 + 32);
  v16.b = 0.0;
  v16.c = 0.0;
  v16.a = 1.0;
  *&v16.d = xmmword_22D2F5DE0;
  v16.ty = Height;
  CGAffineTransformConcat(&t1, &t2, &v16);
  v14 = *&t1.c;
  *a3 = *&t1.a;
  *(a3 + 16) = v14;
  result = t1.tx;
  *(a3 + 32) = *&t1.tx;
  return result;
}

double flipYNormalizedRect(double a1, double a2, double a3, double a4)
{
  v5.b = 0.0;
  v5.c = 0.0;
  v5.a = 1.0;
  *&v5.d = xmmword_22D2F5DE0;
  v5.ty = 1.0;
  *&result = CGRectApplyAffineTransform(*&a1, &v5);
  return result;
}

id flipYNormalizedRects(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 count])
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v11 = v2;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v13 + 1) + 8 * i) rectValue];
          v17.a = 1.0;
          v17.b = 0.0;
          v17.c = 0.0;
          *&v17.d = xmmword_22D2F5DE0;
          v17.ty = 1.0;
          v12 = CGRectApplyAffineTransform(v21, &v17);
          v9 = [MEMORY[0x277CCAE60] valueWithBytes:&v12 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }

    v2 = v11;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double renormalizeRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, CGFloat a8)
{
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, a7, a8);
  v14 = v15;
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  return a5 + COERCE_DOUBLE(CGRectApplyAffineTransform(v16, &v14));
}

double reduceRectToAspectRatio(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a4 * a5;
  if (a4 * a5 >= a3)
  {
    v6 = a3;
  }

  v7 = v6 * 0.5;
  if (a1 + v6 * 0.5 >= a6)
  {
    a6 = a1 + v6 * 0.5;
  }

  v8 = a1 + a3 - v7;
  if (v8 >= a6)
  {
    v8 = a6;
  }

  return v8 - v7;
}

uint64_t canEncodeHEIC(uint64_t a1, uint64_t a2)
{
  if (canEncodeHEIC_onceToken != -1)
  {
    canEncodeHEIC_cold_1();
  }

  return canEncodeHEIC_isSupported;
}

void __canEncodeHEIC_block_invoke()
{
  v1 = CGImageDestinationCopyTypeIdentifiers();
  v0 = [*MEMORY[0x277CE1D90] identifier];
  canEncodeHEIC_isSupported = [(__CFArray *)v1 containsObject:v0];
}

id saveDataToFile(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v8 = 0;
  [a1 writeToURL:v3 options:0 error:&v8];
  v4 = v8;
  v5 = v4;
  if (v4)
  {
    v6 = pfl_layout_log(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_22D2ED000, v6, OS_LOG_TYPE_DEFAULT, "saveDataToFile: cannot save data to %@, error = %@\n", buf, 0x16u);
    }
  }

  return v5;
}

__CFData *pngDataFromImage(CGImage *a1)
{
  v2 = [MEMORY[0x277CBEB28] data];
  v3 = [*MEMORY[0x277CE1E10] identifier];
  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  if (v4)
  {
    CGImageDestinationAddImage(v4, a1, 0);
    CGImageDestinationFinalize(v4);
    CFRelease(v4);
  }

  else
  {
    v6 = pfl_layout_log(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2ED000, v6, OS_LOG_TYPE_DEFAULT, "pngDataFromImage: cannot create imageDestinationRef\n", buf, 2u);
    }
  }

  if (![(__CFData *)v2 length])
  {
    v7 = pfl_layout_log(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22D2ED000, v7, OS_LOG_TYPE_DEFAULT, "pngDataFromImage: cannot generate png data for image", v9, 2u);
    }

    v2 = 0;
  }

  return v2;
}

id _rectAsString(double a1, double a2, double a3, double a4)
{
  if (fmax(a3, a4) <= 1.0)
  {
    v4 = @"{ %.5f, %.5f, %.5f, %.5f }";
  }

  else
  {
    v4 = @"{ %.1f, %.1f, %.1f, %.1f }";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, *&a1, *&a2, *&a3, *&a4];

  return v5;
}

id PFLGenerateWatchLayout(void *a1, void *a2, uint64_t a3, CGImage *a4, unint64_t a5, void *a6, void *a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13, double a14, double a15, double a16)
{
  v186 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v32 = a2;
  v176 = a6;
  v171 = a7;
  v33 = @"jpg";
  if (a8)
  {
    v33 = @"heic";
    v34 = MEMORY[0x277CE1D90];
  }

  else
  {
    v34 = MEMORY[0x277CE1DC0];
  }

  v170 = v33;
  v35 = *v34;
  v36 = objc_opt_new();
  [v36 setTimePosition:a5];
  [v36 setTimeRect:{a13, a14, a15, a16}];
  [v36 setBackgroundZorder:0.0];
  [v36 setTimeElementZorder:1.0];
  v37 = 2.0;
  if (!a4)
  {
    v37 = 0.0;
  }

  [v36 setForegroundZorder:v37];
  v174 = [v31 pixelWidth];
  v168 = v31;
  v38 = [v31 pixelHeight];
  CGAffineTransformMakeScale(&t2, v174, v38);
  v188.origin.x = a9;
  v188.origin.y = a10;
  v188.size.width = a11;
  v188.size.height = a12;
  v189 = CGRectApplyAffineTransform(v188, &t2);
  x = v189.origin.x;
  y = v189.origin.y;
  v41 = v189.size.width;
  height = v189.size.height;
  v43 = *MEMORY[0x277D3B3B8] + 1.0;
  v44 = v189.origin.x + v189.size.width * 0.5;
  v45 = v189.origin.y + v189.size.height * 0.5;
  CGAffineTransformMakeTranslation(&t2, -v44, -v45);
  v190.origin.x = x;
  v190.origin.y = y;
  v190.size.width = v41;
  v190.size.height = height;
  v191 = CGRectApplyAffineTransform(v190, &t2);
  v46 = v191.origin.x;
  v47 = v191.origin.y;
  v48 = v191.size.width;
  v49 = v191.size.height;
  CGAffineTransformMakeScale(&t2, v43, v43);
  v192.origin.x = v46;
  v192.origin.y = v47;
  v192.size.width = v48;
  v192.size.height = v49;
  v193 = CGRectApplyAffineTransform(v192, &t2);
  v50 = v193.origin.x;
  v51 = v193.origin.y;
  v52 = v193.size.width;
  v53 = v193.size.height;
  CGAffineTransformMakeTranslation(&t2, v44, v45);
  v194.origin.x = v50;
  v194.origin.y = v51;
  v194.size.width = v52;
  v194.size.height = v53;
  v195 = CGRectApplyAffineTransform(v194, &t2);
  v54 = v195.origin.x;
  v55 = v195.origin.y;
  v56 = v195.size.height * (v38 / v195.size.height);
  if (v195.size.width > v174)
  {
    v57 = v174;
  }

  else
  {
    v56 = v195.size.height;
    v57 = v195.size.width;
  }

  if (v195.size.height > v38)
  {
    v58 = v38;
  }

  else
  {
    v58 = v56;
  }

  if (v195.size.height > v38)
  {
    v59 = v174 / v195.size.width * v57;
  }

  else
  {
    v59 = v57;
  }

  v60 = 0.0;
  if (v54 < 0.0 || (v60 = v54, v54 + v195.size.width > v174))
  {
    if (v60 >= v174 - v195.size.width)
    {
      v54 = v174 - v195.size.width;
    }

    else
    {
      v54 = v60;
    }
  }

  v61 = 0.0;
  if (v55 < 0.0 || (v61 = v55, v55 + v195.size.height > v38))
  {
    if (v61 >= v38 - v195.size.height)
    {
      v55 = v38 - v195.size.height;
    }

    else
    {
      v55 = v61;
    }
  }

  v62 = MEMORY[0x277CCACA8];
  v63 = v176;
  v172 = [v62 stringWithUTF8String:{objc_msgSend(v176, "fileSystemRepresentation")}];
  v64 = MEMORY[0x277CCACA8];
  v166 = timePosition2String(a5);
  v173 = [v64 stringWithFormat:@"base_%s_%@.%@", v166, v171, v170];
  v169 = [v172 stringByAppendingPathComponent:v173];
  v65 = [MEMORY[0x277CBEBC0] fileURLWithPath:v169];
  v66 = v32;
  v67 = v35;
  v68 = v65;
  v69 = [PFLImageDataScaler alloc];
  v70 = *MEMORY[0x277D3B3C0];
  v71 = *(MEMORY[0x277D3B3C0] + 8);
  v72 = (rint(v54) & ((a4 != 0) | 0xFFFFFFFFFFFFFFFELL));
  v73 = (rint(v55) & ((a4 != 0) | 0xFFFFFFFFFFFFFFFELL));
  v74 = [(PFLImageDataScaler *)v69 initWithSize:v66 crop:a3 data:v67 orientation:v174 type:v38 outputSize:v72, v73, v59, v58, *MEMORY[0x277D3B3C0], v71];
  v75 = 1;
  if (v74)
  {
    t1.a = 0.0;
    *&t1.b = &t1;
    *&t1.c = 0x3032000000;
    *&t1.d = __Block_byref_object_copy__1;
    *&t1.tx = __Block_byref_object_dispose__1;
    t1.ty = 0.0;
    transform.a = 0.0;
    *&transform.b = &transform;
    *&transform.c = 0x2020000000;
    LODWORD(transform.d) = 1;
    v76 = dispatch_semaphore_create(0);
    *&t2.a = MEMORY[0x277D85DD0];
    *&t2.b = 3221225472;
    *&t2.c = __cropScaleSaveToFile_block_invoke;
    *&t2.d = &unk_27875BB68;
    *&t2.tx = v68;
    p_t1 = &t1;
    p_transform = &transform;
    v77 = v76;
    *&t2.ty = v77;
    [(PFLImageDataScaler *)v74 cropAndScaleWithCompletion:&t2];
    dispatch_semaphore_wait(v77, 0xFFFFFFFFFFFFFFFFLL);
    v75 = *(*&transform.b + 24);
    v175 = *(*&t1.b + 40);

    _Block_object_dispose(&transform, 8);
    _Block_object_dispose(&t1, 8);
  }

  else
  {
    v175 = 0;
  }

  v79 = pfl_layout_log(v78);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(t2.a) = 138412546;
    *(&t2.a + 4) = v68;
    WORD2(t2.b) = 2112;
    *(&t2.b + 6) = v175;
    _os_log_impl(&dword_22D2ED000, v79, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: saved base image to %@, error == %@", &t2, 0x16u);
  }

  if (v175)
  {
    goto LABEL_31;
  }

  [v36 setBaseImageName:v173];
  [v36 setOriginalCrop:{v72, v73, v59, v58}];
  [v36 setMaskImageName:0];
  if (a4)
  {
    v81 = CGImageRetain(a4);
    v82 = v81;
    if (v75 == 1)
    {
      v83 = v81;
    }

    else
    {
      v84 = pfl_layout_log(v81);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(t2.a) = 134218240;
        *(&t2.a + 4) = 1;
        WORD2(t2.b) = 2048;
        *(&t2.b + 6) = v75;
        _os_log_impl(&dword_22D2ED000, v84, OS_LOG_TYPE_DEFAULT, "saved photo has changed orientation; adjusting the mask from %ld to %ld", &t2, 0x16u);
      }

      if (!v82 || ((v86 = CGImageGetWidth(v82), v87 = CGImageGetHeight(v82), v88 = presentationSizeForOrientation(1, v86, v87), v90 = storedSizeForOrientation(v75, v88, v89), v92 = v91, ColorSpace = CGImageGetColorSpace(v82), NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace), memset(&v180.c, 0, 32), (NumberOfComponents & 0x10000000) == 0) ? (v95 = (8 * NumberOfComponents) | 7) : (v95 = 8 * NumberOfComponents + 14), *&v180.a = 0uLL, makePresentationTransform(1, v86, v87, &v180), memset(&v179, 0, sizeof(v179)), imagea = v92, widtha = v90, makePresentationTransform(v75, widtha, imagea, &v179), v178 = v180, t1 = v179, CGAffineTransformInvert(&t2, &t1), t1 = v180, CGAffineTransformConcat(&v178, &t1, &t2), valuea = (v95 >> 3) * v90, [MEMORY[0x277CBEB28] dataWithLength:valuea * v92], v163 = objc_claimAutoreleasedReturnValue(), v96 = v163, v97 = objc_msgSend(v163, "mutableBytes"), BitsPerComponent = CGImageGetBitsPerComponent(v82), shouldInterpolate = CGImageGetColorSpace(v82), AlphaInfo = CGImageGetAlphaInfo(v82), v101 = CGBitmapContextCreate(v97, widtha, imagea, BitsPerComponent, valuea, shouldInterpolate, AlphaInfo), v177 = v178, CGContextSaveGState(v101), memset(&t2, 0, sizeof(t2)), t1 = v177, uprightCTM(v82, &t1, &t2), memset(&t1, 0, sizeof(t1)), transform = t2, CGAffineTransformInvert(&t1, &transform), transform = t2, CGContextConcatCTM(v101, &transform), transform = t1, v196.origin.x = 0.0, v196.origin.y = 0.0, v196.size.width = v90, v196.size.height = v92, v197 = CGRectApplyAffineTransform(v196, &transform), CGContextDrawImage(v101, v197, v82), CGContextRestoreGState(v101), CGContextRelease(v101), v102 = v163, v163, v155 = v163, v164 = CGDataProviderCreateWithCFData(v155), v156 = CGImageGetBitsPerComponent(v82), BitsPerPixel = CGImageGetBitsPerPixel(v82), v153 = CGImageGetColorSpace(v82), LODWORD(BitsPerComponent) = CGImageGetBitmapInfo(v82), decode = CGImageGetDecode(v82), LOBYTE(shouldInterpolate) = CGImageGetShouldInterpolate(v82), RenderingIntent = CGImageGetRenderingIntent(v82), v83 = CGImageCreate(widtha, imagea, v156, BitsPerPixel, valuea, v153, BitsPerComponent, v164, decode, shouldInterpolate, RenderingIntent), CGDataProviderRelease(v164), v155, !v83))
      {
        v105 = pfl_layout_log(v85);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
        {
          PFLGenerateWatchLayout_cold_1(v82, v75, v105);
        }

        v83 = 0;
      }

      CGImageRelease(v82);
    }

    if (v83)
    {
      v106 = CGImageGetWidth(a4);
      v107 = [v168 pixelWidth];
      CGAffineTransformMakeScale(&t2, v106 / v107, v106 / v107);
      v198.origin.x = v72;
      v198.origin.y = v73;
      v198.size.width = v59;
      v198.size.height = v58;
      v199 = CGRectApplyAffineTransform(v198, &t2);
      v108 = v199.origin.x;
      v109 = v199.origin.y;
      v110 = v199.size.width;
      v111 = v199.size.height;
      v113 = pfl_layout_log(v112);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        v114 = _rectAsString(v108, v109, v110, v111);
        LODWORD(t2.a) = 138412290;
        *(&t2.a + 4) = v114;
        _os_log_impl(&dword_22D2ED000, v113, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayers: mask crop rect == %@", &t2, 0xCu);
      }

      v165 = [MEMORY[0x277CCACA8] stringWithFormat:@"mask_%s_%@.png", v166, v171];
      width = [v172 stringByAppendingPathComponent:v165];
      v167 = [MEMORY[0x277CBEBC0] fileURLWithPath:width];
      v115.n128_f64[0] = v70 / v71;
      v116.n128_f64[0] = v108;
      v117.n128_f64[0] = v109;
      v118.n128_f64[0] = v110;
      v119.n128_f64[0] = v111;
      v122 = reduceRectToAspectRatioAndCenter(v116, v117, v118, v119, v115, v120, v121);
      v124 = v123;
      v127 = v125 <= v126;
      v128 = rint(v126);
      v129 = ceil(v70 * v128 / v71);
      v130 = rint(v125);
      v131 = ceil(v71 * v130 / v70);
      if (v127)
      {
        v132 = v128;
      }

      else
      {
        v132 = v131;
      }

      if (v127)
      {
        v133 = v129;
      }

      else
      {
        v133 = v130;
      }

      v134 = CGImageGetWidth(v83);
      v135 = CGImageGetHeight(v83);
      memset(&t2, 0, sizeof(t2));
      makePresentationTransform(v75, v134, v135, &t1);
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      v200.origin.x = rint(v122);
      v200.origin.y = rint(v124);
      v200.size.width = v133;
      v200.size.height = v132;
      v201 = CGRectApplyAffineTransform(v200, &t1);
      image = CGImageCreateWithImageInRect(v83, v201);
      if (image)
      {
        v136 = [MEMORY[0x277CBEB28] data];
        v137 = [*MEMORY[0x277CE1E10] identifier];
        v138 = CGImageDestinationCreateWithData(v136, v137, 1uLL, 0);

        if (v138)
        {
          Mutable = CGImageMetadataCreateMutable();
          if (Mutable)
          {
            value = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v75];
            CGImageMetadataSetValueWithPath(Mutable, 0, @"tiff:Orientation", value);
            if (v70 >= v71)
            {
              v140 = v70;
            }

            else
            {
              v140 = v71;
            }

            transform.a = *MEMORY[0x277CD2D40];
            v141 = [MEMORY[0x277CCABB0] numberWithDouble:v140];
            transform.b = *MEMORY[0x277CD2D78];
            *&t1.a = v141;
            *&t1.b = MEMORY[0x277CBEC38];
            v142 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&t1 forKeys:&transform count:2];

            CGImageDestinationAddImageAndMetadata(v138, image, Mutable, v142);
            CGImageDestinationFinalize(v138);
            CFRelease(Mutable);

            v143 = value;
          }

          else
          {

            v143 = pfl_photo_log(v148);
            if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(t1.a) = 0;
              _os_log_impl(&dword_22D2ED000, v143, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create metadataRef", &t1, 2u);
            }

            v136 = 0;
          }

          CFRelease(v138);
        }

        else
        {

          v147 = pfl_photo_log(v146);
          if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(t1.a) = 0;
            _os_log_impl(&dword_22D2ED000, v147, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create imageDestinationRef", &t1, 2u);
          }

          v136 = 0;
        }

        CFRelease(image);
      }

      else
      {
        v144 = pfl_photo_log(0);
        if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(t1.a) = 0;
          _os_log_impl(&dword_22D2ED000, v144, OS_LOG_TYPE_DEFAULT, "cropScaleMask: cannot create croppedImageRef", &t1, 2u);
        }

        v136 = 0;
      }

      v149 = pfl_layout_log(v145);
      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
      {
        v150 = [(__CFData *)v136 length];
        LODWORD(t2.a) = 134218242;
        *(&t2.a + 4) = v150;
        WORD2(t2.b) = 2112;
        *(&t2.b + 6) = v167;
        _os_log_impl(&dword_22D2ED000, v149, OS_LOG_TYPE_DEFAULT, "PFLGenerateWatchLayout: saving %ld bytes of mask data to %@", &t2, 0x16u);
      }

      v151 = saveDataToFile(v136, v167);
      if (v151)
      {

LABEL_31:
        v80 = 0;
        goto LABEL_79;
      }

      [v36 setMaskImageName:v165];
      CGImageRelease(v83);
    }
  }

  [v36 setImageAOTBrightness:0.0];
  [v36 setUserEdited:0];
  v80 = v36;
LABEL_79:

  return v80;
}

void sub_22D2F4ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v60 - 224), 8);
  _Unwind_Resume(a1);
}

const char *timePosition2String(unint64_t a1)
{
  if (a1 > 8)
  {
    return "HM";
  }

  else
  {
    return off_27875BB88[a1];
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __cropScaleSaveToFile_block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pfl_layout_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = [v3 length];
      v7 = *(a1 + 32);
      v14 = 134218242;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "cropScaleSaveToFile: saving %ld bytes to %@", &v14, 0x16u);
    }

    v8 = saveDataToFile(v3, *(a1 + 32));
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (*(*(*(a1 + 48) + 8) + 40))
    {
      *(*(*(a1 + 56) + 8) + 24) = getImageOrientationFromData(v3);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22D2ED000, v4, OS_LOG_TYPE_DEFAULT, "cropScaleSaveToFile: failed to crop", &v14, 2u);
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:0x284075FD0 code:3 userInfo:0];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __PFLGeneratePhotosFaceCommon_block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(*a2 + 40);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_22D2ED000, log, OS_LOG_TYPE_ERROR, "Couldn't retrieve image data for asset %@, error == %@", buf, 0x16u);
}

void PFLGenerateWatchLayout_cold_1(uint64_t a1, unsigned int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2048;
  v6 = 1;
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_22D2ED000, log, OS_LOG_TYPE_ERROR, "cannot reorient mask image %@ from %ld to %ld", &v3, 0x20u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}