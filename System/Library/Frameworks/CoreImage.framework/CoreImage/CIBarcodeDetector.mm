@interface CIBarcodeDetector
+ (id)messageStringFromDescriptor:(id)descriptor;
- (CIBarcodeDetector)initWithContext:(id)context options:(id)options;
- (id)featuresInImage:(id)image options:(id)options;
- (void)dealloc;
@end

@implementation CIBarcodeDetector

- (CIBarcodeDetector)initWithContext:(id)context options:(id)options
{
  v12.receiver = self;
  v12.super_class = CIBarcodeDetector;
  v6 = [(CIDetector *)&v12 init];
  if (v6)
  {
    if (!context)
    {
      context = +[CIContext _singletonContext];
    }

    [(CIBarcodeDetector *)v6 setContext:context];
    if (!v6->featureOptions)
    {
      v6->featureOptions = [MEMORY[0x1E695DF90] dictionary];
    }

    v7 = [options objectForKey:@"CIDetectorAccuracy"];
    if ([v7 isEqual:@"CIDetectorAccuracyHigh"])
    {
      [(NSMutableDictionary *)v6->featureOptions setObject:@"CIDetectorAccuracyHigh" forKey:@"CIDetectorAccuracy"];
    }

    else if (v7)
    {
      v8 = [v7 isEqual:@"CIDetectorAccuracyLow"];
      if ((v8 & 1) == 0)
      {
        v10 = ci_logger_api(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CIBarcodeDetector initWithContext:v10 options:?];
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  [(CIBarcodeDetector *)self setContext:0];
  featureOptions = self->featureOptions;
  if (featureOptions)
  {
  }

  v4.receiver = self;
  v4.super_class = CIBarcodeDetector;
  [(CIBarcodeDetector *)&v4 dealloc];
}

- (id)featuresInImage:(id)image options:(id)options
{
  values[1] = *MEMORY[0x1E69E9840];
  v6 = ci_signpost_log_detector(self, a2);
  if (&self->super.super.isa + 1 >= 2)
  {
    v39 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(v113.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v39, OS_SIGNPOST_INTERVAL_BEGIN, self, "CIBarcodeDetector", &unk_19CFBCBAE, &v113, 2u);
    }
  }

  v122[0] = MEMORY[0x1E69E9820];
  v122[1] = 3221225472;
  v123 = __45__CIBarcodeDetector_featuresInImage_options___block_invoke;
  v124 = &__block_descriptor_40_e5_v8__0l;
  selfCopy = self;
  if (!QuaggaLibraryCore(0))
  {
    v38 = ci_logger_api(0, v7);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [CIBarcodeDetector featuresInImage:v38 options:?];
    }

    goto LABEL_23;
  }

  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v8 = getACBSConfigCreateSymbolLoc(void)::ptr;
  v129 = getACBSConfigCreateSymbolLoc(void)::ptr;
  if (!getACBSConfigCreateSymbolLoc(void)::ptr)
  {
    *&v113.a = MEMORY[0x1E69E9820];
    *&v113.b = 3221225472;
    *&v113.c = ___ZL28getACBSConfigCreateSymbolLocv_block_invoke;
    *&v113.d = &unk_1E75C1E10;
    *&v113.tx = &v126;
    v9 = QuaggaLibrary();
    v10 = dlsym(v9, "ACBSConfigCreate");
    *(*(*&v113.tx + 8) + 24) = v10;
    getACBSConfigCreateSymbolLoc(void)::ptr = *(*(*&v113.tx + 8) + 24);
    v8 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v8)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v11 = v8();
  if (!v11)
  {
LABEL_23:
    v108 = MEMORY[0x1E695E0F0];
    goto LABEL_86;
  }

  v107 = v11;
  pixelBufferOut = 0;
  values[0] = @"QR";
  v12 = *MEMORY[0x1E695E480];
  cf = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
  if (!cf)
  {
    __assert_rtn("[CIBarcodeDetector featuresInImage:options:]", "CIBarcodeDetector.mm", 159, "NULL != symbologies");
  }

  v108 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [image extent];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  CGAffineTransformMakeTranslation(&v113, -v13, -v15);
  v21 = [image imageByApplyingTransform:&v113];
  v133.origin.x = v14;
  v133.origin.y = v16;
  v133.size.width = v18;
  v133.size.height = v20;
  self->_width = CGRectGetWidth(v133);
  v134.origin.x = v14;
  v134.origin.y = v16;
  v134.size.width = v18;
  v134.size.height = v20;
  self->_height = CGRectGetHeight(v134);
  v130 = *MEMORY[0x1E69660D8];
  v131 = MEMORY[0x1E695E0F8];
  CVPixelBufferCreate(0, self->_width, self->_height, 0x34323066u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1], &pixelBufferOut);
  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], *MEMORY[0x1E6965FC8], kCVAttachmentMode_ShouldPropagate);
  if (!pixelBufferOut)
  {
    theDict = 0;
LABEL_80:
    v126 = 0;
    v127 = &v126;
    v128 = 0x2020000000;
    v101 = getACBSConfigFreeSymbolLoc(void)::ptr;
    v129 = getACBSConfigFreeSymbolLoc(void)::ptr;
    if (!getACBSConfigFreeSymbolLoc(void)::ptr)
    {
      *&v113.a = MEMORY[0x1E69E9820];
      *&v113.b = 3221225472;
      *&v113.c = ___ZL26getACBSConfigFreeSymbolLocv_block_invoke;
      *&v113.d = &unk_1E75C1E10;
      *&v113.tx = &v126;
      v102 = QuaggaLibrary();
      v103 = dlsym(v102, "ACBSConfigFree");
      *(*(*&v113.tx + 8) + 24) = v103;
      getACBSConfigFreeSymbolLoc(void)::ptr = *(*(*&v113.tx + 8) + 24);
      v101 = v127[3];
    }

    _Block_object_dispose(&v126, 8);
    if (v101)
    {
      v101(v107);
      if (theDict)
      {
        CFRelease(theDict);
      }

      CFRelease(cf);
      goto LABEL_86;
    }

    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_94:
    __break(1u);
LABEL_95:
    __assert_rtn("[CIBarcodeDetector featuresInImage:options:]", "CIBarcodeDetector.mm", 254, "0 && unreachable");
  }

  context = [(CIBarcodeDetector *)self context];
  [(CIContext *)context render:v21 toCVPixelBuffer:pixelBufferOut];
  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  Width = CVPixelBufferGetWidth(pixelBufferOut);
  Height = CVPixelBufferGetHeight(pixelBufferOut);
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v25 = getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr;
  v129 = getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr;
  if (!getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr)
  {
    *&v113.a = MEMORY[0x1E69E9820];
    *&v113.b = 3221225472;
    *&v113.c = ___ZL43getACBSConfigSetSymbologiesEnabledSymbolLocv_block_invoke;
    *&v113.d = &unk_1E75C1E10;
    *&v113.tx = &v126;
    v26 = QuaggaLibrary();
    v27 = dlsym(v26, "ACBSConfigSetSymbologiesEnabled");
    *(*(*&v113.tx + 8) + 24) = v27;
    getACBSConfigSetSymbologiesEnabledSymbolLoc(void)::ptr = *(*(*&v113.tx + 8) + 24);
    v25 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v25)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v25(v107, cf);
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v28 = getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr;
  v129 = getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr;
  if (!getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr)
  {
    *&v113.a = MEMORY[0x1E69E9820];
    *&v113.b = 3221225472;
    *&v113.c = ___ZL43getACBSConfigSetMaxQRModuleSamplesSymbolLocv_block_invoke;
    *&v113.d = &unk_1E75C1E10;
    *&v113.tx = &v126;
    v29 = QuaggaLibrary();
    v30 = dlsym(v29, "ACBSConfigSetMaxQRModuleSamples");
    *(*(*&v113.tx + 8) + 24) = v30;
    getACBSConfigSetMaxQRModuleSamplesSymbolLoc(void)::ptr = *(*(*&v113.tx + 8) + 24);
    v28 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v28)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  v28(v107, 5000);
  v31 = pixelBufferOut;
  v126 = 0;
  v127 = &v126;
  v128 = 0x2020000000;
  v32 = getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr;
  v129 = getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr;
  if (!getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr)
  {
    *&v113.a = MEMORY[0x1E69E9820];
    *&v113.b = 3221225472;
    *&v113.c = ___ZL68getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLocv_block_invoke;
    *&v113.d = &unk_1E75C1E10;
    *&v113.tx = &v126;
    v33 = QuaggaLibrary();
    v34 = dlsym(v33, "ACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBuffer");
    *(*(*&v113.tx + 8) + 24) = v34;
    getACBSCreateFrameInfoBySearchingForBarcodesInCVPixelBufferSymbolLoc(void)::ptr = *(*(*&v113.tx + 8) + 24);
    v32 = v127[3];
  }

  _Block_object_dispose(&v126, 8);
  if (!v32)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    goto LABEL_94;
  }

  theDict = v32(v107, v31, 0, 0.0, 0.0, Width, Height);
  CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"SymbolDescriptionArray");
    v36 = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
      goto LABEL_29;
    }
  }

  else
  {
    v36 = 0;
  }

  Count = 0;
LABEL_29:
  Mutable = CFArrayCreateMutable(v12, 4, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    v41 = 0;
    v42 = Count;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v36, v41);
      v44 = CFDictionaryGetValue(ValueAtIndex, @"BarcodeType");
      if (CFEqual(v44, @"QR"))
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      ++v41;
    }

    while (v42 != v41);
  }

  if (!Mutable)
  {
    goto LABEL_79;
  }

  v45 = CFArrayGetCount(Mutable);
  if (v45 < 1)
  {
LABEL_78:
    CFRelease(Mutable);
LABEL_79:
    CVPixelBufferRelease(pixelBufferOut);
    goto LABEL_80;
  }

  v46 = 0;
  v47 = v45 & 0x7FFFFFFF;
  while (1)
  {
    v48 = CFArrayGetValueAtIndex(Mutable, v46);
    v49 = CFDictionaryGetValue(v48, @"CodeLocation");
    v50 = [v49 objectAtIndex:0];
    [objc_msgSend(v50 objectForKey:{@"X", "floatValue"}];
    v52 = v51;
    [objc_msgSend(v50 objectForKey:{@"Y", "floatValue"}];
    v54 = v53;
    v55 = [v49 objectAtIndex:1];
    [objc_msgSend(v55 objectForKey:{@"X", "floatValue"}];
    v57 = v56;
    [objc_msgSend(v55 objectForKey:{@"Y", "floatValue"}];
    v59 = v58;
    v60 = [v49 objectAtIndex:2];
    [objc_msgSend(v60 objectForKey:{@"X", "floatValue"}];
    v62 = v61;
    [objc_msgSend(v60 objectForKey:{@"Y", "floatValue"}];
    v64 = v63;
    v65 = [v49 objectAtIndex:3];
    [objc_msgSend(v65 objectForKey:{@"X", "floatValue"}];
    v67 = v66;
    [objc_msgSend(v65 objectForKey:{@"Y", "floatValue"}];
    v68 = v52;
    v69 = v57;
    v70 = v64;
    v71 = v67;
    v73 = self->_height;
    v74 = v73 - v54;
    v75 = v57;
    v76 = v73 - v59;
    v77 = v52;
    v78 = v73 - v70;
    v79 = v73 - v72;
    if (v62 >= v67)
    {
      v80 = v67;
    }

    else
    {
      v80 = v62;
    }

    v111 = v62;
    v112 = v69;
    if (v62 <= v67)
    {
      v81 = v67;
    }

    else
    {
      v81 = v62;
    }

    v82 = v77 <= v75;
    if (v77 >= v75)
    {
      v83 = v69;
    }

    else
    {
      v83 = v68;
    }

    if (v82)
    {
      v84 = v69;
    }

    else
    {
      v84 = v68;
    }

    if (v83 >= v80)
    {
      v85 = v80;
    }

    else
    {
      v85 = v83;
    }

    if (v84 <= v81)
    {
      v86 = v81;
    }

    else
    {
      v86 = v84;
    }

    if (v78 >= v79)
    {
      v87 = v79;
    }

    else
    {
      v87 = v78;
    }

    if (v78 <= v79)
    {
      v88 = v79;
    }

    else
    {
      v88 = v78;
    }

    if (v74 >= v76)
    {
      v89 = v76;
    }

    else
    {
      v89 = v74;
    }

    if (v74 <= v76)
    {
      v90 = v76;
    }

    else
    {
      v90 = v74;
    }

    if (v89 >= v87)
    {
      v91 = v87;
    }

    else
    {
      v91 = v89;
    }

    if (v90 <= v88)
    {
      v92 = v88;
    }

    else
    {
      v92 = v90;
    }

    v109 = v92;
    v110 = v86;
    v93 = CFDictionaryGetValue(v48, @"CodeProperties");
    v94 = [CFDictionaryGetValue(v93 @"ErrorCorrectionLevel")];
    if (v94 >= 4)
    {
      goto LABEL_95;
    }

    v95 = qword_19CF231C0[v94];
    v96 = [CFDictionaryGetValue(v93 @"SymbolVersion")];
    v97 = [CFDictionaryGetValue(v93 @"QRMASK")];
    v98 = CFDictionaryGetValue(v48, @"BarcodeRawData");
    if (!v98)
    {
      break;
    }

    v99 = [CIQRCodeDescriptor descriptorWithPayload:v98 symbolVersion:v96 maskPattern:v97 errorCorrectionLevel:v95];
    v113.a = v85;
    v113.b = v91;
    v113.c = v110 - v85;
    v113.d = v109 - v91;
    v113.tx = v68;
    v113.ty = v74;
    v114 = v71;
    v115 = v79;
    v116 = v112;
    v117 = v76;
    v118 = v111;
    v119 = v78;
    v120 = v99;
    v100 = [[CIQRCodeFeature alloc] initWithInternalRepresentation:&v113];

    if (v100)
    {
      [v108 addObject:v100];
    }

    if (v47 == ++v46)
    {
      goto LABEL_78;
    }
  }

  v108 = 0;
LABEL_86:
  (v123)(v122);
  return v108;
}

void __45__CIBarcodeDetector_featuresInImage_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ci_signpost_log_detector(a1, a2);
  v6 = *(a1 + 32);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v5;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_END, v6, "CIBarcodeDetector", &unk_19CFBCBAE, v8, 2u);
    }
  }
}

+ (id)messageStringFromDescriptor:(id)descriptor
{
  v20[3] = *MEMORY[0x1E69E9840];
  if (QuaggaLibraryCore(0))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c", objc_msgSend(descriptor, "errorCorrectionLevel")];
    v20[0] = @"QR";
    v19[0] = @"BarcodeType";
    v19[1] = @"BarcodeRawData";
    v20[1] = [descriptor errorCorrectedPayload];
    v19[2] = @"CodeProperties";
    v18[0] = v5;
    v17[0] = @"ErrorCorrectionLevel";
    v17[1] = @"QRMASK";
    v18[1] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(descriptor, "maskPattern")}];
    v17[2] = @"SymbolVersion";
    v18[2] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(descriptor, "symbolVersion")}];
    v20[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr;
    v16 = getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr;
    if (!getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr)
    {
      v8 = QuaggaLibrary();
      v14[3] = dlsym(v8, "ACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncoding");
      getACBSCreateSymbolDescriptorFromBasicDescriptorWithDefaultPayloadEncodingSymbolLoc(void)::ptr = v14[3];
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v7)
    {
      +[CIBarcodeDetector messageStringFromDescriptor:];
    }

    v9 = v7(v6, 0);
    v10 = CFDictionaryGetValue(v9, @"BarcodeString");
    CFRelease(v9);
    return v10;
  }

  else
  {
    v12 = ci_logger_api(0, v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CIBarcodeDetector messageStringFromDescriptor:v12];
    }

    return 0;
  }
}

- (void)featuresInImage:(os_log_t)log options:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[CIBarcodeDetector featuresInImage:options:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Unable to load Quagga.framework.", &v1, 0xCu);
}

+ (void)messageStringFromDescriptor:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "+[CIBarcodeDetector messageStringFromDescriptor:]";
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "%{public}s Unable to load Quagga.framework.", &v1, 0xCu);
}

@end