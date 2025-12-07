@interface IMTranscoderImageQualityEstimator
+ (MLModel)imageQualityEstimatorModel;
+ (double)_entropyForTranscodedImage:(CGImageSource *)image;
+ (double)getEntropyForImage:(CGImage *)image;
+ (double)predictQualityFactor:(id)factor suggestedMaxLength:(int)length;
+ (id)getInputImageFeatures:(CGImageSource *)features;
+ (id)oneHotEncodeTargetMaxDimFeature:(id)feature suggestedMaxLength:(int)length;
+ (id)standardizeModelInputFeatures:(id)features;
+ (void)setImageQualityEstimatorModel:(id)model;
@end

@implementation IMTranscoderImageQualityEstimator

+ (MLModel)imageQualityEstimatorModel
{
  v3 = qword_27F611A78;
  if (!qword_27F611A78)
  {
    objc_msgSend_setImageQualityEstimatorModel_(IMTranscoderImageQualityEstimator, a2, 0, v2);
    v3 = qword_27F611A78;
  }

  return v3;
}

+ (void)setImageQualityEstimatorModel:(id)model
{
  v26 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v4 = MEMORY[0x277CCA8D8];
  v5 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v4, v6, v5, v7);
  v12 = objc_msgSend_bundlePath(v8, v9, v10, v11);

  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v13, @"%@/%@", v14, v12, @"Image_Estimator_HEIF.mlmodelc");
  v18 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v16, v15, v17);
  v23 = 0;
  v20 = objc_msgSend_modelWithContentsOfURL_error_(MEMORY[0x277CBFF20], v19, v18, &v23);
  v21 = v23;
  if (v21)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = v21;
        _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Error happened when creating a compiled model instance: %@", buf, 0xCu);
      }

LABEL_11:
    }
  }

  else if (v20)
  {
    objc_storeStrong(&qword_27F611A78, v20);
  }

  else if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Failed to initialize model instance using model path %@", buf, 0xCu);
    }

    goto LABEL_11;
  }
}

+ (id)standardizeModelInputFeatures:(id)features
{
  v55 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  objc_msgSend_allKeys(featuresCopy, v4, v5, v6);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v7 = v51 = 0u;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v50, v54, 16);
  if (v11)
  {
    v12 = *v51;
    do
    {
      v13 = 0;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v50 + 1) + 8 * v13);
        if ((objc_msgSend_isEqual_(v14, v9, @"Input Quality Factor", v10) & 1) != 0 || objc_msgSend_isEqual_(v14, v15, @"Input Qf Square", v16))
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_12;
          }

          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v49 = 0;
            _os_log_impl(&dword_254811000, v19, OS_LOG_TYPE_INFO, "These keys are not supported for HEIC model, therefore dont standardize.", v49, 2u);
          }

          goto LABEL_11;
        }

        v20 = objc_msgSend_objectForKey_(&unk_28669CE68, v17, v14, v18);
        objc_msgSend_doubleValue(v20, v21, v22, v23);
        v25 = v24;

        v28 = objc_msgSend_objectForKey_(&unk_28669CE90, v26, v14, v27);
        objc_msgSend_doubleValue(v28, v29, v30, v31);
        v33 = v32;

        v36 = objc_msgSend_objectForKey_(featuresCopy, v34, v14, v35);
        objc_msgSend_doubleValue(v36, v37, v38, v39);
        v41 = v40;

        if (v33 == 0.0)
        {
          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *v49 = 0;
              _os_log_impl(&dword_254811000, v19, OS_LOG_TYPE_INFO, "Do not standardize for this key.", v49, 2u);
            }

LABEL_11:
          }
        }

        else
        {
          v45 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v42, v43, v44, (v41 - v25) / v33);
          objc_msgSend_setObject_forKey_(featuresCopy, v46, v45, v14);
        }

LABEL_12:
        ++v13;
      }

      while (v11 != v13);
      v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v50, v54, 16);
      v11 = v47;
    }

    while (v47);
  }

  return featuresCopy;
}

+ (id)oneHotEncodeTargetMaxDimFeature:(id)feature suggestedMaxLength:(int)length
{
  featureCopy = feature;
  if (length <= 1599)
  {
    switch(length)
    {
      case 800:
        v8 = @"Target Max Dimension_800";
        break;
      case 1024:
        v8 = @"Target Max Dimension_1024";
        break;
      case 1280:
        v8 = @"Target Max Dimension_1280";
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (length > 2999)
  {
    if (length == 4032)
    {
      v8 = @"Target Max Dimension_4032";
    }

    else
    {
      if (length != 3000)
      {
        goto LABEL_18;
      }

      v8 = @"Target Max Dimension_3000";
    }
  }

  else if (length == 1600)
  {
    v8 = @"Target Max Dimension_1600";
  }

  else
  {
    if (length != 2048)
    {
      goto LABEL_18;
    }

    v8 = @"Target Max Dimension_2048";
  }

  v9 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, 1, v6);
  objc_msgSend_setObject_forKey_(featureCopy, v10, v9, v8);

LABEL_18:

  return featureCopy;
}

+ (double)getEntropyForImage:(CGImage *)image
{
  v35 = *MEMORY[0x277D85DE8];
  memset(&src, 0, sizeof(src));
  v29 = 0;
  LOBYTE(v23) = CGImageGetBitsPerComponent(image);
  v23 = v23;
  LOBYTE(v24) = CGImageGetBitsPerPixel(image);
  v24 = v24;
  ColorSpace = CGImageGetColorSpace(image);
  v25 = CGColorSpaceRetain(ColorSpace);
  BitmapInfo = CGImageGetBitmapInfo(image);
  v28 = 0;
  v27 = 0;
  if (MEMORY[0x259C1B860](&src, &v23, 0, image, 0))
  {
    free(src.data);
    v5 = -1.0;
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v6, OS_LOG_TYPE_INFO, "Error: Failed to create vImageBuffer using CGImageRef", buf, 2u);
      }
    }
  }

  else
  {
    v7 = malloc_type_malloc(0x800uLL, 0xC5D0F640uLL);
    v8 = malloc_type_malloc(0x800uLL, 0xE1C4A5C1uLL);
    v9 = malloc_type_malloc(0x800uLL, 0x4482555uLL);
    v10 = malloc_type_malloc(0x800uLL, 0xFBD82FCBuLL);
    *buf = v7;
    v32 = v8;
    v33 = v9;
    v34 = v10;
    v11 = vImageHistogramCalculation_ARGB8888(&src, buf, 0);
    if (v11)
    {
      NSLog(&cfstr_ErrorCalculati.isa, v11);
      free(src.data);
      free(v7);
      free(v8);
      free(v9);
      free(v10);
      return -1.0;
    }

    else
    {
      v12 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      vDSP_vaddD(v7, 1, v8, 1, v12, 1, 0x100uLL);
      vDSP_vaddD(v12, 1, v9, 1, v12, 1, 0x100uLL);
      __C = 0.0;
      __B = (3 * src.height * src.width);
      v13 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v14 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v15 = malloc_type_malloc(0x800uLL, 0x100004000313F17uLL);
      v16 = v15;
      for (i = 0; i != 256; i += 2)
      {
        *&v15[i] = vcvtq_f64_u64(*&v12[i]);
      }

      vDSP_vsdivD(v15, 1, &__B, v13, 1, 0x100uLL);
      for (j = 0; j != 256; ++j)
      {
        v19 = v13[j];
        if (v19 != 0.0)
        {
          v14[j] = log2(v19);
        }
      }

      vDSP_vnegD(v13, 1, v13, 1, 0x100uLL);
      vDSP_vmulD(v13, 1, v14, 1, v14, 1, 0x100uLL);
      vDSP_sveD(v14, 1, &__C, 0x100uLL);
      free(v14);
      free(v13);
      free(v7);
      free(v8);
      free(v9);
      free(v10);
      free(v12);
      free(v16);
      free(src.data);
      return __C;
    }
  }

  return v5;
}

+ (double)_entropyForTranscodedImage:(CGImageSource *)image
{
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEAC0];
  v7 = *MEMORY[0x277CBED28];
  v8 = *MEMORY[0x277CD3610];
  v9 = *MEMORY[0x277CD3578];
  v10 = *MEMORY[0x277CD3568];
  v13 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v11, 1024, v12);
  v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(v6, v14, v7, v15, v8, v7, v9, v7, v10, v13, *MEMORY[0x277CD3660], 0);

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(image, 0, v16);
  v18 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (v18)
  {
    v19 = v18;
    v20 = CGImageDestinationCreateWithData(v18, @"public.heic", 1uLL, 0);
    v21 = CGImageSourceCopyPropertiesAtIndex(image, 0, 0);
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v25 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v23, 1, v24);
    objc_msgSend_setObject_forKey_(v22, v26, v25, *MEMORY[0x277CD2D60]);

    v48 = v5;
    v27 = *MEMORY[0x277CD3410];
    v30 = objc_msgSend_objectForKey_(v21, v28, *MEMORY[0x277CD3410], v29);
    objc_msgSend_setValue_forKey_(v22, v31, v30, v27);
    objc_msgSend_addEntriesFromDictionary_(v22, v32, v21, v33);
    LODWORD(v34) = 0.75;
    v38 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v35, v36, v37, v34);
    objc_msgSend_setObject_forKey_(v22, v39, v38, *MEMORY[0x277CD2D48]);

    CGImageDestinationAddImage(v20, ThumbnailAtIndex, v22);
    CGImageDestinationFinalize(v20);
    v40 = CGImageSourceCreateWithData(v19, 0);
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v40, 0, 0);
    objc_msgSend_getEntropyForImage_(self, v42, ImageAtIndex, v43);
    v45 = v44;
    CGImageRelease(ThumbnailAtIndex);
    CGImageRelease(ImageAtIndex);
    CFRelease(v20);
    v46 = v40;
    v5 = v48;
    CFRelease(v46);
  }

  else
  {
    CGImageRelease(ThumbnailAtIndex);
    v45 = -1.0;
  }

  objc_autoreleasePoolPop(v5);
  return v45;
}

+ (id)getInputImageFeatures:(CGImageSource *)features
{
  v113 = *MEMORY[0x277D85DE8];
  if (!features)
  {
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        LOWORD(v111) = 0;
        _os_log_impl(&dword_254811000, v46, OS_LOG_TYPE_INFO, "Error: Image source is NULL.", &v111, 2u);
      }

      goto LABEL_15;
    }

LABEL_16:
    v47 = 0;
    goto LABEL_30;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(features, 0, 0);
  if (!ImageAtIndex)
  {
    if (IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        LOWORD(v111) = 0;
        _os_log_impl(&dword_254811000, v46, OS_LOG_TYPE_INFO, "Error: CGImage reference could not be created for the image source.", &v111, 2u);
      }

LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v6 = ImageAtIndex;
  v7 = CGImageSourceCopyPropertiesAtIndex(features, 0, 0);
  v8 = CGImageSourceCopyProperties(features, 0);
  v9 = CGImageSourceCopyProperties(features, 0);
  v12 = objc_msgSend_objectForKeyedSubscript_(v9, v10, @"FileSize", v11);
  v16 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v13, v14, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v7, v17, @"PixelWidth", v18);
  objc_msgSend_doubleValue(v19, v20, v21, v22);
  v24 = v23;

  v27 = objc_msgSend_objectForKeyedSubscript_(v7, v25, @"PixelHeight", v26);
  objc_msgSend_doubleValue(v27, v28, v29, v30);
  v32 = v31;

  v35 = objc_msgSend_objectForKeyedSubscript_(v8, v33, @"FileSize", v34);
  objc_msgSend_doubleValue(v35, v36, v37, v38);
  v40 = v39;

  v43 = CACurrentMediaTime();
  if (v24 >= v32)
  {
    v44 = v24;
  }

  else
  {
    v44 = v32;
  }

  if (v44 >= 1024.0)
  {
    objc_msgSend__entropyForTranscodedImage_(self, v41, features, v42);
  }

  else
  {
    objc_msgSend_getEntropyForImage_(self, v41, v6, v42);
  }

  v48 = v45;
  CGImageRelease(v6);
  v49 = CACurrentMediaTime();
  if (IMOSLoggingEnabled())
  {
    v50 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v111 = 134217984;
      v112 = v49 - v43;
      _os_log_impl(&dword_254811000, v50, OS_LOG_TYPE_INFO, "Time taken for computing input Entropy: %lf", &v111, 0xCu);
    }
  }

  if (v48 >= 0.0)
  {
    v52 = exp(v48);
    v53 = MEMORY[0x277CCABB0];
    objc_msgSend_doubleValue(v12, v54, v55, v56);
    v60 = objc_msgSend_numberWithDouble_(v53, v57, v58, v59);
    objc_msgSend_setObject_forKey_(v16, v61, v60, @"Input File Size");

    v65 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v62, v63, v64, v32);
    objc_msgSend_setObject_forKey_(v16, v66, v65, @"Input Height");

    v70 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v67, v68, v69, v48);
    objc_msgSend_setObject_forKey_(v16, v71, v70, @"Input Entropy");

    v75 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v72, v73, v74, v52);
    objc_msgSend_setObject_forKey_(v16, v76, v75, @"Exponential Entropy");

    v80 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v77, v78, v79, v24 / v32);
    objc_msgSend_setObject_forKey_(v16, v81, v80, @"Aspect Ratio");

    objc_msgSend_setObject_forKey_(v16, v82, &unk_28669CC48, @"Target Width");
    objc_msgSend_setObject_forKey_(v16, v83, &unk_28669CC48, @"Target Height");
    objc_msgSend_setObject_forKey_(v16, v84, &unk_28669CE28, @"Target File Size");
    objc_msgSend_setObject_forKey_(v16, v85, &unk_28669CC48, @"Target Max Dimension_4032");
    objc_msgSend_setObject_forKey_(v16, v86, &unk_28669CC48, @"Target Max Dimension_3000");
    objc_msgSend_setObject_forKey_(v16, v87, &unk_28669CC48, @"Target Max Dimension_2048");
    objc_msgSend_setObject_forKey_(v16, v88, &unk_28669CC48, @"Target Max Dimension_1600");
    objc_msgSend_setObject_forKey_(v16, v89, &unk_28669CC48, @"Target Max Dimension_1280");
    objc_msgSend_setObject_forKey_(v16, v90, &unk_28669CC48, @"Target Max Dimension_1024");
    objc_msgSend_setObject_forKey_(v16, v91, &unk_28669CC48, @"Target Max Dimension_800");
    v95 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v92, v93, v94, v40 / 358400.0);
    objc_msgSend_setObject_forKey_(v16, v96, v95, @"Compression Ratio");

    v97 = v24 * v32;
    v100 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v98, v97, v99);
    objc_msgSend_setObject_forKey_(v16, v101, v100, @"Input H x W (NumOfPixels)");

    v102 = MEMORY[0x277CCABB0];
    v103 = log(v97);
    v107 = objc_msgSend_numberWithDouble_(v102, v104, v105, v106, v103);
    objc_msgSend_setObject_forKey_(v16, v108, v107, @"Input log(NumOfPixels)");

    objc_msgSend_setObject_forKey_(v16, v109, &unk_28669CC48, @"Ratio of NumOfPixels");
    v47 = v16;
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v51 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        LOWORD(v111) = 0;
        _os_log_impl(&dword_254811000, v51, OS_LOG_TYPE_INFO, "Error: Failed to compute entropy of the input image", &v111, 2u);
      }
    }

    v47 = 0;
  }

LABEL_30:

  return v47;
}

+ (double)predictQualityFactor:(id)factor suggestedMaxLength:(int)length
{
  v4 = *&length;
  v108 = *MEMORY[0x277D85DE8];
  factorCopy = factor;
  v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v7, v8, v9);
  v14 = objc_msgSend_imageQualityEstimatorModel(IMTranscoderImageQualityEstimator, v11, v12, v13);

  if (v14)
  {
    if (factorCopy)
    {
      v17 = objc_msgSend_objectForKeyedSubscript_(factorCopy, v15, @"Aspect Ratio", v16);
      objc_msgSend_doubleValue(v17, v18, v19, v20);
      v22 = v21;

      v28 = objc_msgSend_mutableCopy(factorCopy, v23, v24, v25);
      v29 = v4;
      if (v22 >= 1.0)
      {
        v30 = v4;
      }

      else
      {
        v30 = (v22 * v4);
      }

      if (v22 >= 1.0)
      {
        v31 = (v4 / v22);
      }

      else
      {
        v31 = v4;
      }

      if (v22 >= 1.0)
      {
        v32 = (v4 / v22);
      }

      else
      {
        v32 = (v22 * v4);
      }

      v33 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v26, v30, v27);
      objc_msgSend_setObject_forKey_(v28, v34, v33, @"Target Width");

      v37 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v35, v31, v36);
      objc_msgSend_setObject_forKey_(v28, v38, v37, @"Target Height");

      v41 = objc_msgSend_valueForKey_(v28, v39, @"Input H x W (NumOfPixels)", v40);
      objc_msgSend_doubleValue(v41, v42, v43, v44);
      v46 = v45 / (v32 * v4);

      v50 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v47, v48, v49, v46);
      objc_msgSend_setObject_forKey_(v28, v51, v50, @"Ratio of NumOfPixels");

      v53 = objc_msgSend_oneHotEncodeTargetMaxDimFeature_suggestedMaxLength_(self, v52, v28, v4);

      v57 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v54, v55, v56, v22);
      objc_msgSend_setObject_forKey_(v53, v58, v57, @"Aspect Ratio");

      v61 = objc_msgSend_standardizeModelInputFeatures_(self, v59, v53, v60);

      v62 = objc_alloc(MEMORY[0x277CBFED0]);
      v64 = objc_msgSend_initWithDictionary_error_(v62, v63, v61, 0);
      if (IMOSLoggingEnabled())
      {
        v68 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          objc_msgSend_dictionary(v64, v69, v70, v71);
          v72 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v102 = 138412290;
          v103 = v72;
          _os_log_impl(&dword_254811000, v68, OS_LOG_TYPE_INFO, "Features set for image quality estimator model prediction: %@", &v102, 0xCu);
        }
      }

      v73 = objc_msgSend_imageQualityEstimatorModel(IMTranscoderImageQualityEstimator, v65, v66, v67);
      v75 = objc_msgSend_predictionFromFeatures_error_(v73, v74, v64, 0);

      if (!v75)
      {
        v88 = -1.0;
        if (IMOSLoggingEnabled())
        {
          v95 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            LOWORD(v102) = 0;
            _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "Failed to initialize features set using image quality estimator model instance", &v102, 2u);
          }

          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_43;
      }

      v79 = objc_msgSend_dictionary(v75, v76, v77, v78);
      v82 = objc_msgSend_valueForKey_(v79, v80, @"Target Quality Factor", v81);
      objc_msgSend_doubleValue(v82, v83, v84, v85);
      v87 = v86;

      v88 = ceil(v87) / 100.0;
      v89 = IMOSLoggingEnabled();
      if (v88 >= 0.45)
      {
        if (!v89)
        {
          goto LABEL_38;
        }

        v93 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v102 = 134217984;
          v103 = v88;
          _os_log_impl(&dword_254811000, v93, OS_LOG_TYPE_INFO, "Quality factor is within the pivot limit %lf , Transcoding", &v102, 0xCu);
        }
      }

      else
      {
        if (!v89)
        {
          goto LABEL_38;
        }

        v93 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          v102 = 134218496;
          v103 = v29;
          v104 = 2048;
          v105 = v88;
          v106 = 2048;
          v107 = 0x3FDCCCCCCCCCCCCDLL;
          _os_log_impl(&dword_254811000, v93, OS_LOG_TYPE_INFO, "For dimension %f, Quality Factor: %lf is less than Pivot value of %lf", &v102, 0x20u);
        }
      }

LABEL_38:
      v96 = objc_msgSend_date(MEMORY[0x277CBEAA8], v90, v91, v92);
      objc_msgSend_timeIntervalSinceDate_(v96, v97, v10, v98);
      v100 = v99;

      if (IMOSLoggingEnabled())
      {
        v95 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v102 = 134217984;
          v103 = v100;
          _os_log_impl(&dword_254811000, v95, OS_LOG_TYPE_INFO, "time for predicting quality factor: %lf", &v102, 0xCu);
        }

LABEL_41:

        goto LABEL_42;
      }

      goto LABEL_42;
    }

    v88 = -1.0;
    if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        LOWORD(v102) = 0;
        _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, "Error: Input feature dictionary is nil.", &v102, 2u);
      }

LABEL_25:
    }
  }

  else
  {
    v88 = -1.0;
    if (IMOSLoggingEnabled())
    {
      v94 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
      {
        v102 = 67109120;
        LODWORD(v103) = v4;
        _os_log_impl(&dword_254811000, v94, OS_LOG_TYPE_INFO, "Error: Model is not initialized for dimension %d", &v102, 8u);
      }

      goto LABEL_25;
    }
  }

LABEL_43:

  return v88;
}

@end