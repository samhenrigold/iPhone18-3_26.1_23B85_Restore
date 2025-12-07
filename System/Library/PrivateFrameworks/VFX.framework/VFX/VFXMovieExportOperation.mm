@interface VFXMovieExportOperation
- (CGImage)_copySnapshot:(CGSize)snapshot;
- (VFXMovieExportOperation)initWithRenderer:(id)renderer size:(CGSize)size attributes:(id)attributes outputURL:(id)l;
- (void)_finishedExport;
- (void)appendImage:(CGImage *)image withPresentationTime:(id *)time usingAdaptor:(id)adaptor;
- (void)dealloc;
- (void)main;
- (void)renderAndAppendWithPresentationTime:(id *)time usingAdaptor:(id)adaptor metalTextureCache:(__CVMetalTextureCache *)cache cvQueue:(id)queue completionBlock:(id)block;
@end

@implementation VFXMovieExportOperation

- (VFXMovieExportOperation)initWithRenderer:(id)renderer size:(CGSize)size attributes:(id)attributes outputURL:(id)l
{
  height = size.height;
  width = size.width;
  v122[3] = *MEMORY[0x1E69E9840];
  v120.receiver = self;
  v120.super_class = VFXMovieExportOperation;
  v11 = [(VFXMovieExportOperation *)&v120 init];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setAntialiasingMode_(v11, v12, 2);
    v17 = objc_msgSend_mutableCopy(attributes, v14, v15);
    if (!v17)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    objc_msgSend_removeObjectForKey_(v17, v16, @"kExportPointOfViewAttribute");
    v19 = objc_msgSend_valueForKey_(v17, v18, @"rate");
    objc_msgSend_floatValue(v19, v20, v21);
    v13->_rate = v22;
    objc_msgSend_removeObjectForKey_(v17, v23, @"rate");
    if (v13->_rate == 0.0)
    {
      v13->_rate = 0.033333;
    }

    v25 = objc_msgSend_valueForKey_(v17, v24, @"VFXExportMovieFrameRate");
    v28 = objc_msgSend_intValue(v25, v26, v27);
    objc_msgSend_removeObjectForKey_(v17, v29, @"VFXExportMovieFrameRate");
    if (v28)
    {
      v13->_rate = 1.0 / v28;
    }

    v31 = objc_msgSend_valueForKey_(v17, v30, @"VFXExportMovieMirrored");
    v13->_mirrored = objc_msgSend_BOOLValue(v31, v32, v33);
    objc_msgSend_removeObjectForKey_(v17, v34, @"VFXExportMovieMirrored");
    v36 = objc_msgSend_valueForKey_(v17, v35, @"VFXExportMovieSupersamplingFactor");
    objc_msgSend_floatValue(v36, v37, v38);
    v13->_supersampling = v39;
    objc_msgSend_removeObjectForKey_(v17, v40, @"VFXExportMovieSupersamplingFactor");
    if (v13->_supersampling == 0.0)
    {
      v13->_supersampling = 1.0;
    }

    objc_msgSend_removeObjectForKey_(v17, v41, @"QTAddImageCodecType");
    objc_msgSend_removeObjectForKey_(v17, v42, @"QTMovieRateAttribute");
    v43 = *MEMORY[0x1E6987CB0];
    v45 = objc_msgSend_objectForKey_(v17, v44, *MEMORY[0x1E6987CB0]);
    v47 = *MEMORY[0x1E6987CA0];
    if (!v45)
    {
      objc_msgSend_setValue_forKey_(v17, v46, *MEMORY[0x1E6987CA0], v43);
    }

    if (objc_msgSend_valueForKey_(v17, v46, v43) == v47)
    {
      v49 = *MEMORY[0x1E6987DB8];
      v121[0] = *MEMORY[0x1E6987C60];
      v121[1] = v49;
      v50 = *MEMORY[0x1E6987DB0];
      v122[0] = &unk_1F25D44E0;
      v122[1] = v50;
      v121[2] = *MEMORY[0x1E6987D80];
      v122[2] = &unk_1F25D44F8;
      v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v48, v122, v121, 3);
      objc_msgSend_setValue_forKey_(v17, v52, v51, *MEMORY[0x1E6987D30]);
    }

    v53 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v48, width);
    objc_msgSend_setValue_forKey_(v17, v54, v53, *MEMORY[0x1E6987E08]);
    v56 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v55, height);
    objc_msgSend_setValue_forKey_(v17, v57, v56, *MEMORY[0x1E6987D70]);
    v58 = objc_alloc(MEMORY[0x1E6987EE0]);
    v13->_assetWriterInput = objc_msgSend_initWithMediaType_outputSettings_(v58, v59, *MEMORY[0x1E6987608], v17);
    v62 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v60, v61);
    objc_msgSend_setExpectsMediaDataInRealTime_(v13->_assetWriterInput, v63, 0);
    v65 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v64, 1111970369);
    objc_msgSend_setObject_forKey_(v62, v66, v65, *MEMORY[0x1E6966130]);
    v68 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v67, width);
    objc_msgSend_setObject_forKey_(v62, v69, v68, *MEMORY[0x1E6966208]);
    v71 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v70, height);
    objc_msgSend_setObject_forKey_(v62, v72, v71, *MEMORY[0x1E69660B8]);
    v75 = objc_msgSend_device(renderer, v73, v74);
    v77 = MEMORY[0x1E6966030];
    if (v75)
    {
      v77 = MEMORY[0x1E6966100];
    }

    objc_msgSend_setObject_forKey_(v62, v76, MEMORY[0x1E695E118], *v77);
    v78 = objc_alloc(MEMORY[0x1E6987F08]);
    v13->_avAdaptor = objc_msgSend_initWithAssetWriterInput_sourcePixelBufferAttributes_(v78, v79, v13->_assetWriterInput, v62);
    v119 = 0;
    v82 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v80, v81);
    objc_msgSend_removeItemAtURL_error_(v82, v83, l, 0);
    v84 = objc_alloc(MEMORY[0x1E6987ED8]);
    v86 = objc_msgSend_initWithURL_fileType_error_(v84, v85, l, *MEMORY[0x1E69874C0], &v119);
    v13->_assetWriter = v86;
    if (objc_msgSend_status(v86, v87, v88) == 3)
    {
      v90 = sub_1AF0D5194(3, v89);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFACB0(l, &v119, v90);
      }

      return 0;
    }

    else
    {
      objc_msgSend_addInput_(v13->_assetWriter, v89, v13->_assetWriterInput);
      objc_msgSend_startWriting(v13->_assetWriter, v91, v92);
      assetWriter = v13->_assetWriter;
      v118[0] = 0;
      v118[1] = 0x100000001;
      v118[2] = 0;
      objc_msgSend_startSessionAtSourceTime_(assetWriter, v94, v118);
      objc_msgSend_setRenderer_(v13, v95, renderer);
      objc_msgSend_setSize_(v13, v96, v97, width, height);
      objc_msgSend_setAttributes_(v13, v98, v17);
      v101 = objc_msgSend_world(renderer, v99, v100);
      objc_msgSend_startTime(v101, v102, v103);
      objc_msgSend_setStartTime_(v13, v104, v105);
      v108 = objc_msgSend_world(renderer, v106, v107);
      objc_msgSend_endTime(v108, v109, v110);
      objc_msgSend_setEndTime_(v13, v111, v112);
      objc_msgSend_setOutputURL_(v13, v113, l);
      v115 = objc_msgSend_objectForKey_(attributes, v114, @"kExportPointOfViewAttribute");
      objc_msgSend_setPointOfView_(v13, v116, v115);
    }
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMovieExportOperation;
  [(_VFXExportOperation *)&v3 dealloc];
}

- (CGImage)_copySnapshot:(CGSize)snapshot
{
  height = snapshot.height;
  width = snapshot.width;
  v9 = objc_msgSend_renderer(self, a2, v3);
  systemTime = self->super._systemTime;
  if (systemTime == 0.0)
  {
    v11 = CACurrentMediaTime();
  }

  else
  {
    v11 = systemTime + self->_rate;
  }

  self->super._systemTime = v11;
  objc_msgSend_updateAtTime_(v9, v7, v8);
  v14 = objc_msgSend_snapshotWithSize_(v9, v12, v13, width, height);
  v17 = objc_msgSend_CGImage(v14, v15, v16);

  return CGImageRetain(v17);
}

- (void)_finishedExport
{
  if (!objc_msgSend_error(self, a2, v2))
  {
    objc_msgSend_setSucceded_(self, v4, 1);
  }

  v6 = objc_msgSend_delegate(self, v4, v5);
  objc_msgSend_didEndSelector(self, v7, v8);
  if (objc_opt_respondsToSelector())
  {
    v11 = objc_msgSend_didEndSelector(self, v9, v10);
    v14 = objc_msgSend_userInfo(self, v12, v13);

    [v6 v11];
  }
}

- (void)appendImage:(CGImage *)image withPresentationTime:(id *)time usingAdaptor:(id)adaptor
{
  pixelBufferOut = 0;
  v10 = objc_msgSend_pixelBufferPool(adaptor, a2, image);
  if (v10)
  {
    v12 = v10;
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v12, &pixelBufferOut))
    {
      sub_1AFDFAD3C(a2, self, v15);
    }

    ColorSpace = CGImageGetColorSpace(image);
    CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
    v19 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, ColorSpace, 0x2006u);
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = Width;
    v28.size.height = Height;
    CGContextClearRect(v19, v28);
    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = Width;
    v29.size.height = Height;
    CGContextDrawImage(v19, v29, image);
    CGContextFlush(v19);
    CFRelease(v19);
    CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    v25 = *&time->var0;
    var3 = time->var3;
    appended = objc_msgSend_appendPixelBuffer_withPresentationTime_(adaptor, v20, pixelBufferOut, &v25);
    if ((appended & 1) == 0)
    {
      v23 = sub_1AF0D5194(appended, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDFAD8C();
      }
    }

    CFRelease(pixelBufferOut);
  }

  else
  {
    v24 = sub_1AF0D5194(0, v11);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFADC0();
    }
  }
}

- (void)renderAndAppendWithPresentationTime:(id *)time usingAdaptor:(id)adaptor metalTextureCache:(__CVMetalTextureCache *)cache cvQueue:(id)queue completionBlock:(id)block
{
  pixelBufferOut = 0;
  v14 = objc_msgSend_pixelBufferPool(adaptor, a2, time);
  if (v14)
  {
    blockCopy = block;
    v16 = *MEMORY[0x1E695E480];
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v14, &pixelBufferOut))
    {
      sub_1AFDFADF4(a2, self, v17);
    }

    textureOut = 0;
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBufferOut, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, 0);
    CVMetalTextureCacheCreateTextureFromImage(v16, cache, pixelBufferOut, 0, MTLPixelFormatBGRA8Unorm_sRGB, WidthOfPlane, HeightOfPlane, 0, &textureOut);
    v22 = objc_msgSend_renderPassDescriptor(MEMORY[0x1E6974128], v20, v21);
    v25 = objc_msgSend_colorAttachments(v22, v23, v24);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 0);
    objc_msgSend_setLoadAction_(v27, v28, 2);
    v31 = objc_msgSend_renderer(self, v29, v30);
    v34 = objc_msgSend_world(v31, v32, v33);
    v37 = objc_msgSend_background(v34, v35, v36);
    v40 = objc_msgSend_contents(v37, v38, v39);
    objc_opt_class();
    v43 = 1.0;
    v44 = 1.0;
    v45 = 1.0;
    v46 = 1.0;
    if (objc_opt_isKindOfClass())
    {
      v155 = 0.0;
      v156 = 0.0;
      v153 = 0.0;
      v154 = 0.0;
      objc_msgSend_getRed_green_blue_alpha_(v40, v41, &v156, &v155, &v154, &v153);
      v44 = v155;
      v43 = v156;
      v46 = v153;
      v45 = v154;
    }

    v47 = objc_msgSend_colorAttachments(v22, v41, v42);
    v49 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0);
    objc_msgSend_setClearColor_(v49, v50, v51, v43, v44, v45, v46);
    v53 = objc_msgSend_texture2DDescriptorWithPixelFormat_width_height_mipmapped_(MEMORY[0x1E69741C0], v52, 81, WidthOfPlane, HeightOfPlane, 0);
    v56 = objc_msgSend_renderer(self, v54, v55);
    if ([objc_msgSend_device(v56 v57])
    {
      objc_msgSend_setStorageMode_(v53, v59, 3);
    }

    else
    {
      objc_msgSend_setStorageMode_(v53, v59, 2);
    }

    objc_msgSend_setUsage_(v53, v60, 5);
    if (objc_msgSend_antialiasingMode(self, v61, v62))
    {
      v65 = objc_msgSend_antialiasingMode(self, v63, v64);
      objc_msgSend_setSampleCount_(v53, v66, 1 << v65);
      objc_msgSend_setTextureType_(v53, v67, 4);
      v70 = objc_msgSend_renderer(self, v68, v69);
      v73 = objc_msgSend_device(v70, v71, v72);
      v75 = objc_msgSend_newTextureWithDescriptor_(v73, v74, v53);
      v78 = objc_msgSend_colorAttachments(v22, v76, v77);
      v80 = objc_msgSend_objectAtIndexedSubscript_(v78, v79, 0);
      objc_msgSend_setTexture_(v80, v81, v75);
      Texture = CVMetalTextureGetTexture(textureOut);
      v85 = objc_msgSend_colorAttachments(v22, v83, v84);
      v87 = objc_msgSend_objectAtIndexedSubscript_(v85, v86, 0);
      objc_msgSend_setResolveTexture_(v87, v88, Texture);
      v91 = objc_msgSend_colorAttachments(v22, v89, v90);
      v93 = objc_msgSend_objectAtIndexedSubscript_(v91, v92, 0);
      objc_msgSend_setStoreAction_(v93, v94, 2);
    }

    else
    {
      v98 = CVMetalTextureGetTexture(textureOut);
      v101 = objc_msgSend_colorAttachments(v22, v99, v100);
      v103 = objc_msgSend_objectAtIndexedSubscript_(v101, v102, 0);
      objc_msgSend_setTexture_(v103, v104, v98);
    }

    v105 = objc_msgSend_renderer(self, v95, v96);
    v108 = objc_msgSend_commandQueue(v105, v106, v107);
    v111 = objc_msgSend_commandBuffer(v108, v109, v110);
    objc_msgSend_lock(VFXTransaction, v112, v113);
    v116 = objc_msgSend_renderer(self, v114, v115);
    v119 = objc_msgSend_world(v116, v117, v118);
    objc_msgSend_lock(v119, v120, v121);
    systemTime = self->super._systemTime;
    if (systemTime == 0.0)
    {
      v125 = CACurrentMediaTime();
    }

    else
    {
      v125 = systemTime + self->_rate;
    }

    self->super._systemTime = v125;
    objc_msgSend_startTime(v119, v122, v123);
    v127 = v126 + (time->var0 / time->var1);
    v130 = objc_msgSend_clock(v119, v128, v129);
    objc_msgSend_setTime_(v130, v131, v132, v127);
    v135 = objc_msgSend_renderer(self, v133, v134);
    objc_msgSend_updateAtTime_(v135, v136, v137, self->super._systemTime);
    v140 = objc_msgSend_renderer(self, v138, v139);
    objc_msgSend_renderWithViewport_commandBuffer_passDescriptor_(v140, v141, v111, v22, 0.0, 0.0, WidthOfPlane, HeightOfPlane);
    objc_msgSend_unlock(v119, v142, v143);
    objc_msgSend_unlock(VFXTransaction, v144, v145);
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = sub_1AF36F308;
    v150[3] = &unk_1E7A7F940;
    v150[4] = queue;
    v150[5] = self;
    v151 = *&time->var0;
    var3 = time->var3;
    v150[8] = pixelBufferOut;
    v150[9] = textureOut;
    v150[10] = cache;
    v150[6] = adaptor;
    v150[7] = blockCopy;
    objc_msgSend_addCompletedHandler_(v111, v146, v150);
    objc_msgSend_commit(v111, v147, v148);
  }

  else
  {
    v97 = sub_1AF0D5194(0, v15);
    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDFADC0();
    }
  }
}

- (void)main
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  if (!objc_msgSend_renderer(self, v4, v5))
  {
    v8 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFAE44(v8);
    }
  }

  objc_msgSend_startTime(self, v6, v7);
  v10 = v9;
  objc_msgSend_endTime(self, v11, v12);
  v14 = v13;
  v15 = v10;
  rate = self->_rate;
  v17 = dispatch_queue_create("serial assetwriter input queue", 0);
  v18 = dispatch_semaphore_create(0);
  v19 = dispatch_semaphore_create(0);
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x2020000000;
  v69 = v15;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x2020000000;
  v67[3] = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v22 = objc_msgSend_renderer(self, v20, v21);
  v25 = objc_msgSend_device(v22, v23, v24);
  v28 = v25 != 0;
  cacheOut = 0;
  if (v25)
  {
    v29 = objc_msgSend_renderer(self, v26, v27);
    v32 = objc_msgSend_device(v29, v30, v31);
    CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, v32, 0, &cacheOut);
    v35 = objc_msgSend__copySnapshot_(self, v33, v34, 1.0, 1.0);
    CFRelease(v35);
  }

  v36 = objc_msgSend_currentProgress(MEMORY[0x1E696AE38], v26, v27);
  if (v36)
  {
    v38 = v14;
    v36 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x1E696AE38], v37, vcvtps_s32_f32((v38 - v15) / rate));
  }

  assetWriterInput = self->_assetWriterInput;
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = sub_1AF36F81C;
  v59[3] = &unk_1E7A7F990;
  v59[4] = v36;
  v59[5] = self;
  v60 = rate;
  v61 = v14;
  v63 = v28;
  v59[8] = v68;
  v59[9] = v65;
  v59[10] = v67;
  v59[11] = cacheOut;
  v62 = v15;
  v59[6] = v17;
  v59[7] = v18;
  objc_msgSend_requestMediaDataWhenReadyOnQueue_usingBlock_(assetWriterInput, v37, v17, v59);
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  assetWriter = self->_assetWriter;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = sub_1AF36FB50;
  v58[3] = &unk_1E7A7A770;
  v58[4] = v19;
  objc_msgSend_finishWritingWithCompletionHandler_(assetWriter, v41, v58);
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v18);
  dispatch_release(v19);
  dispatch_release(v17);
  if (cacheOut)
  {
    CFRelease(cacheOut);
  }

  if (objc_msgSend_error(self->_assetWriter, v42, v43))
  {
    v47 = objc_msgSend_error(self->_assetWriter, v44, v45);
    v49 = objc_msgSend_setError_(self, v48, v47);
    v51 = sub_1AF0D5194(v49, v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = objc_msgSend_error(self->_assetWriter, v44, v45);
      v55 = objc_msgSend_localizedDescription(v52, v53, v54);
      sub_1AFDFAEC8(v55, buf, v51);
    }
  }

  LODWORD(v46) = 1.0;
  objc_msgSend_setProgress_(self, v44, v45, v46);
  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);
  _Block_object_dispose(v68, 8);
  objc_autoreleasePoolPop(v3);
  objc_msgSend__finishedExport(self, v56, v57);
}

@end