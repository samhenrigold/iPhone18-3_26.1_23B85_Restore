@interface TSCH3DPixelBuffer
+ (id)pixelBufferFromFramebuffer:(id)framebuffer processor:(id)processor session:(id)session sourceRegion:(void *)region components:(unint64_t)components flipped:(BOOL)flipped;
+ (id)pixelBufferWithSize:(void *)size components:(unint64_t)components;
- (BOOL)copyPixelsFromFramebuffer:(id)framebuffer processor:(id)processor session:(id)session sourceRegion:(void *)region targetRegion:(void *)targetRegion flipped:(BOOL)flipped;
- (TSCH3DPixelBuffer)initWithSize:(void *)size components:(unint64_t)components;
- (box<glm::detail::tvec2<int>>)bounds;
- (char)buffer;
- (id)TSUImage;
- (void)copyPixelsFromData:(const void *)data;
- (void)copyPixelsFromSourceBuffer:(id)buffer sourceRegion:(void *)region targetRegion:(void *)targetRegion flipped:(BOOL)flipped;
- (void)data;
- (void)dealloc;
- (void)flip;
@end

@implementation TSCH3DPixelBuffer

+ (id)pixelBufferWithSize:(void *)size components:(unint64_t)components
{
  v6 = [self alloc];
  v11 = objc_msgSend_initWithSize_components_(v6, v7, v8, v9, v10, size, components);

  return v11;
}

- (TSCH3DPixelBuffer)initWithSize:(void *)size components:(unint64_t)components
{
  v32.receiver = self;
  v32.super_class = TSCH3DPixelBuffer;
  v6 = [(TSCH3DPixelBuffer *)&v32 init];
  v10 = v6;
  if (v6)
  {
    v6->_size.var0.var0 = *size;
    v6->_size.var1.var0 = *(size + 1);
    v6->_components = components;
    v11 = sub_2761D7D78(size, components, 0, 0, v7, v8, v9);
    v10->_bitmapContext = v11;
    if (!v11)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v13, v14, v15, "[TSCH3DPixelBuffer initWithSize:components:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, v19, v20, v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v24, v25, v26, v17, v22, 46, 0, "Out of memory/resources when creating pixel buffer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28, v29, v30);
      return 0;
    }
  }

  return v10;
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CGContextRelease(bitmapContext);
  }

  v4.receiver = self;
  v4.super_class = TSCH3DPixelBuffer;
  [(TSCH3DPixelBuffer *)&v4 dealloc];
}

- (box<glm::detail::tvec2<int>>)bounds
{
  v6 = v2;
  v7 = objc_msgSend_size(self, v3, v4, v5, a2);
  *v6 = 0;
  v6[1] = v9;
  result._max = v8;
  result._min = v7;
  return result;
}

- (id)TSUImage
{
  bitmapContext = self->_bitmapContext;
  if (!bitmapContext)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer TSUImage]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 65, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    bitmapContext = self->_bitmapContext;
  }

  Image = CGBitmapContextCreateImage(bitmapContext);
  if (Image)
  {
    v27 = objc_msgSend_imageWithCGImage_(MEMORY[0x277D811F8], v22, v24, v25, v26, Image);
    CGImageRelease(Image);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (void)data
{
  bitmapContext = self->_bitmapContext;
  if (!bitmapContext)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer data]");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v10, v11, v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v15, v16, v17, v8, v13, 75, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20, v21);
    bitmapContext = self->_bitmapContext;
  }

  return CGBitmapContextGetData(bitmapContext);
}

- (char)buffer
{
  if (!self->_bitmapContext)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v2, v3, v4, "[TSCH3DPixelBuffer buffer]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v13, v14, v15, v16, v7, v12, 80, 0, "invalid nil value for '%{public}s'", "_bitmapContext");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19, v20);
  }

  return objc_msgSend_data(self, a2, v2, v3, v4);
}

- (void)copyPixelsFromData:(const void *)data
{
  v8 = objc_msgSend_data(self, a2, v3, v4, v5);
  if (v8)
  {
    v9 = self->_components * self->_size.var1.var0 * self->_size.var0.var0;

    memcpy(v8, data, v9);
  }
}

- (void)copyPixelsFromSourceBuffer:(id)buffer sourceRegion:(void *)region targetRegion:(void *)targetRegion flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  bufferCopy = buffer;
  v119 = bufferCopy;
  v126 = objc_msgSend_buffer(bufferCopy, v10, v11, v12, v13);
  if (bufferCopy)
  {
    objc_msgSend_size(bufferCopy, v14, v15, v16);
  }

  else
  {
    v130 = 0;
  }

  v17 = *(region + 3);
  v18 = *(region + 2);
  v19 = *(region + 1);
  v124 = *region;
  objc_msgSend_size(self, v14, v15, v16);
  v20 = v128;
  v21 = *targetRegion;
  if (v128 < *targetRegion || (v22 = v129, v129 < v21.i32[1]) || (v23 = *(targetRegion + 2), v23 < 0) || (v24 = *(targetRegion + 3), v24 < 0))
  {
    v127 = xmmword_2764D6090;
    v26 = 2;
  }

  else
  {
    v25 = vmax_s32(v21, 0);
    if (v128 >= v23)
    {
      v20 = *(targetRegion + 2);
    }

    if (v129 >= v24)
    {
      v22 = *(targetRegion + 3);
    }

    *&v127 = v25;
    *(&v127 + 1) = __PAIR64__(v22, v20);
    v26 = v22 - v25.i32[1];
  }

  if ((sub_276171128(&v127, targetRegion, 0) & 1) == 0)
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, v28, v29, v30, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, v34, v35, v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v38, v39, v40, v41, v32, v37, 100, 0, "Target region not inside pixel buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44, v45);
  }

  v125 = objc_msgSend_buffer(self, v27, v28, v29, v30);
  if (!v126)
  {
    v89 = MEMORY[0x277D81150];
    v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v95 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, v92, v93, v94, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v96, v97, v98, v99, v90, v95, 104, 0, "invalid nil value for '%{public}s'", "sourceBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v100, v101, v102, v103);
    if (v125)
    {
      goto LABEL_35;
    }

LABEL_34:
    v104 = MEMORY[0x277D81150];
    v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v47, v48, v49, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
    v110 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v111, v112, v113, v114, v105, v110, 105, 0, "invalid nil value for '%{public}s'", "targetBuffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v115, v116, v117, v118);
    goto LABEL_35;
  }

  if (!v125)
  {
    goto LABEL_34;
  }

  if (v17 - v19 >= v26)
  {
    v50 = v26;
  }

  else
  {
    v50 = v17 - v19;
  }

  if (v50 >= 1)
  {
    v51 = v50;
    v120 = (v17 - v19) * (v18 - v124);
    v121 = v18 - v124;
    v52 = *(targetRegion + 1);
    v122 = *targetRegion;
    v53 = -v52;
    v54 = 0x277CCA000uLL;
    do
    {
      components = self->_components;
      v56 = (v124 + v19 * v130) * components;
      if (v56 < 0 || v56 >= (components * v120))
      {
        v57 = MEMORY[0x277D81150];
        v58 = objc_msgSend_stringWithUTF8String_(*(v54 + 3240), v46, v47, v48, v49, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
        v63 = objc_msgSend_stringWithUTF8String_(*(v54 + 3240), v59, v60, v61, v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v64, v65, v66, v67, v58, v63, 113, 0, "source index out of range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69, v70, v71);
        v54 = 0x277CCA000uLL;
        components = self->_components;
      }

      v72 = v53 + v129 - 1;
      if (!flippedCopy)
      {
        v72 = v52;
      }

      v73 = (v122 + v72 * v128) * components;
      if (v73 < 0 || v73 >= (components * v129 * v128))
      {
        v74 = MEMORY[0x277D81150];
        v75 = objc_msgSend_stringWithUTF8String_(*(v54 + 3240), v46, v47, v48, v49, "[TSCH3DPixelBuffer copyPixelsFromSourceBuffer:sourceRegion:targetRegion:flipped:]");
        v80 = objc_msgSend_stringWithUTF8String_(*(v54 + 3240), v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v74, v81, v82, v83, v84, v75, v80, 118, 0, "target index out of range");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v85, v86, v87, v88);
        v54 = 0x277CCA000;
        components = self->_components;
      }

      memcpy((v125 + v73), (v126 + v56), components * v121);
      ++v52;
      --v53;
      ++v19;
      --v51;
    }

    while (v51);
  }

LABEL_35:
}

- (void)flip
{
  v6 = objc_msgSend_buffer(self, a2, v2, v3, v4);
  if (v6)
  {
    v7 = v6;
    v8 = self->_components * self->_size.var0.var0;
    sub_276171178(__dst, v8);
    var0 = self->_size.var1.var0;
    v10 = __dst[0];
    if ((var0 + 1) >= 3)
    {
      v11 = 0;
      v12 = var0 / 2;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v13 = -v12;
      v14 = v7;
      do
      {
        v15 = &v7[(v11 + self->_size.var1.var0 - 1) * v8];
        memcpy(v10, v15, v8);
        memcpy(v15, v14, v8);
        v10 = __dst[0];
        memcpy(v14, __dst[0], v8);
        --v11;
        v14 += v8;
      }

      while (v13 != v11);
    }

    if (v10)
    {
      __dst[1] = v10;
      operator delete(v10);
    }
  }
}

+ (id)pixelBufferFromFramebuffer:(id)framebuffer processor:(id)processor session:(id)session sourceRegion:(void *)region components:(unint64_t)components flipped:(BOOL)flipped
{
  v11 = objc_msgSend_pixelBufferFromViewport_components_flipped_forProcessor_session_(framebuffer, a2, v8, v9, v10, region, components, flipped, processor, session);

  return v11;
}

- (BOOL)copyPixelsFromFramebuffer:(id)framebuffer processor:(id)processor session:(id)session sourceRegion:(void *)region targetRegion:(void *)targetRegion flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  framebufferCopy = framebuffer;
  processorCopy = processor;
  sessionCopy = session;
  v17 = objc_opt_class();
  v22 = objc_msgSend_pixelBufferFromFramebuffer_processor_session_sourceRegion_components_flipped_(v17, v18, v19, v20, v21, framebufferCopy, processorCopy, sessionCopy, region, self->_components, 0);
  v27 = v22;
  if (v22)
  {
    objc_msgSend_bounds(v22, v24, v25, v26);
    objc_msgSend_copyPixelsFromSourceBuffer_sourceRegion_targetRegion_flipped_(self, v28, v29, v30, v31, v27, v48, targetRegion, flippedCopy);
  }

  else
  {
    v32 = MEMORY[0x277D81150];
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "[TSCH3DPixelBuffer(TSCH3DFramebufferSupport) copyPixelsFromFramebuffer:processor:session:sourceRegion:targetRegion:flipped:]");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, v35, v36, v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DPixelBuffer.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v40, v41, v42, v33, v38, 161, 0, "invalid nil value for '%{public}s'", "source");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44, v45, v46);
  }

  return v27 != 0;
}

@end