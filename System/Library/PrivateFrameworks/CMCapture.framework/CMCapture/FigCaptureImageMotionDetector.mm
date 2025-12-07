@interface FigCaptureImageMotionDetector
- ($5D018791884760D46230C39DEE7E58E3)motionStatistics;
- (FigCaptureImageMotionDetector)init;
- (FigCaptureImageMotionDetector)initWithWidth:(int)width height:(int)height maximumSearchRange:(int)range frameRingSize:(int)size;
- (int)setCentralROIAndGetRect:(CGRect *)rect;
- (int)setRoi:(CGRect)roi actualROI:(CGRect *)i;
- (uint64_t)_allocateArrays:(int)arrays height:(size_t)count frameRingSize:;
- (uint64_t)_computeStatistics;
- (uint64_t)processPixelBuffer:(void *)buffer metadataDictionary:;
- (void)_freeAllocatedArrays;
- (void)dealloc;
- (void)resetProcessingState;
@end

@implementation FigCaptureImageMotionDetector

- (FigCaptureImageMotionDetector)init
{
  v6.receiver = self;
  v6.super_class = FigCaptureImageMotionDetector;
  v2 = [(FigCaptureImageMotionDetector *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 5) = 0;
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 12) = 0;
    v4 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 7) = *MEMORY[0x1E695F058];
    *(v2 + 8) = v4;
    *(v2 + 18) = 1065017672;
    [v2 resetProcessingState];
  }

  return v3;
}

- (FigCaptureImageMotionDetector)initWithWidth:(int)width height:(int)height maximumSearchRange:(int)range frameRingSize:(int)size
{
  selfCopy = self;
  if (width < 2 || height <= 1)
  {
    [FigCaptureImageMotionDetector initWithWidth:a2 height:? maximumSearchRange:? frameRingSize:?];
    goto LABEL_12;
  }

  if (range < 0)
  {
    [FigCaptureImageMotionDetector initWithWidth:a2 height:? maximumSearchRange:? frameRingSize:?];
    goto LABEL_12;
  }

  v9 = *&size;
  v11 = [(FigCaptureImageMotionDetector *)self init];
  selfCopy = v11;
  if (v11)
  {
    v11->_width = width;
    v11->_height = height;
    v11->_maximumSearchRange = range;
    if ([(FigCaptureImageMotionDetector *)v11 _allocateArrays:width height:height frameRingSize:v9])
    {
      [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    }

    else
    {
      if (![(FigCaptureImageMotionDetector *)selfCopy setCentralROIAndGetRect:0])
      {
        goto LABEL_5;
      }

      [FigCaptureImageMotionDetector initWithWidth:height:maximumSearchRange:frameRingSize:];
    }

LABEL_12:
    v12 = 0;
    goto LABEL_6;
  }

LABEL_5:
  selfCopy = selfCopy;
  v12 = selfCopy;
LABEL_6:

  return v12;
}

- (int)setRoi:(CGRect)roi actualROI:(CGRect *)i
{
  if (self->_imgProj.count)
  {
    [(FigCaptureImageMotionDetector *)roi.origin setRoi:roi.size actualROI:*&roi.size.height];
    return -12782;
  }

  v6 = pixelSumComputeCompatibleROI(self->_width, roi.origin.x);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  pixelSumComputeCompatibleROI(self->_width, 0.0);
  v15 = (2 * self->_maximumSearchRange) | 1;
  if (v15 < v12)
  {
    if (v15 < v10)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v16 = (v15 + v14 - 1) / v14 * v14;
  v17 = ((v8 + v12 * 0.5) - v16 / 2) & ~(((v8 + v12 * 0.5) - v16 / 2) >> 31);
  if (v17 >= self->_height + ~v16)
  {
    v17 = self->_height + ~v16;
  }

  v8 = v17;
  v12 = v16;
  if (v15 >= v10)
  {
LABEL_9:
    v19 = v13;
    v20 = (v15 + v19 - 1) / v19 * v19;
    v21 = ((v6 + v10 * 0.5) - v20 / 2) & ~(((v6 + v10 * 0.5) - v20 / 2) >> 31);
    width = self->_width;
    if (v21 + v20 > width)
    {
      v21 = (width + ~v20) / v19 * v19;
    }

    v6 = v21;
    v10 = v20;
    goto LABEL_12;
  }

  width = self->_width;
LABEL_12:
  v22 = pixelSumComputeCompatibleROI(width, v6);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30.origin.x = v6;
  v30.origin.y = v8;
  v30.size.width = v10;
  v30.size.height = v12;
  v31.origin.x = v22;
  v31.origin.y = v24;
  v31.size.width = v26;
  v31.size.height = v28;
  if (!CGRectEqualToRect(v30, v31))
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  v15 = (2 * self->_maximumSearchRange) | 1;
  v12 = v28;
  v10 = v26;
  v8 = v24;
  v6 = v22;
LABEL_14:
  if (v15 >= v12)
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  if (v15 >= v10)
  {
    [FigCaptureImageMotionDetector setRoi:actualROI:];
    return -12782;
  }

  if (i)
  {
    i->origin.x = v6;
    i->origin.y = v8;
    i->size.width = v10;
    i->size.height = v12;
  }

  result = 0;
  self->_sumROI.origin.x = v6;
  self->_sumROI.origin.y = v8;
  self->_sumROI.size.width = v10;
  self->_sumROI.size.height = v12;
  self->_rowSumLength = v12;
  self->_colSumLength = v10;
  return result;
}

- (int)setCentralROIAndGetRect:(CGRect *)rect
{
  v3 = [(FigCaptureImageMotionDetector *)self setRoi:rect actualROI:pixelSumComputeCompatibleROI(self->_width, vcvts_n_f32_s32(self->_width, 2uLL))];
  v4 = v3;
  if (v3)
  {
    [FigCaptureImageMotionDetector setCentralROIAndGetRect:v3];
  }

  return v4;
}

- (void)resetProcessingState
{
  *&self->_imgProj.curIdx = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *self->_motionStatistics.crossCorrelationMaximum = _D0;
  v7 = MEMORY[0x1E695F058];
  *self->_motionStatistics.maxCorrelationShift = 0;
  *&self->_motionStatistics.frameRingBufferCount = 0;
  v8 = *(v7 + 16);
  self->_motionStatistics.roi.origin = *v7;
  self->_motionStatistics.roi.size = v8;
  *&self->_motionStatistics.isMotionDetected = 0;
}

- (void)dealloc
{
  [(FigCaptureImageMotionDetector *)self _freeAllocatedArrays];
  v3.receiver = self;
  v3.super_class = FigCaptureImageMotionDetector;
  [(FigCaptureImageMotionDetector *)&v3 dealloc];
}

- ($5D018791884760D46230C39DEE7E58E3)motionStatistics
{
  size = self[2].var4.size;
  *retstr->var0 = self[2].var4.origin;
  *&retstr->var2 = size;
  v4 = *self[3].var1;
  *&retstr->var4.origin.y = *&self[2].var5;
  *&retstr->var4.size.height = v4;
  return self;
}

- (uint64_t)_allocateArrays:(int)arrays height:(size_t)count frameRingSize:
{
  if (result)
  {
    v6 = result;
    *(result + 88) = 0;
    *(result + 92) = arrays;
    *(result + 96) = 0;
    *(result + 100) = a2;
    *(result + 56) = count;
    v7 = malloc_type_calloc(count, 8uLL, 0x80040B8603338uLL);
    *(v6 + 32) = v7;
    if (!v7)
    {
      goto LABEL_19;
    }

    v8 = malloc_type_calloc(*(v6 + 56), 8uLL, 0x80040B8603338uLL);
    *(v6 + 40) = v8;
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = 8 * arrays;
    v10 = 8 * a2;
    if (*(v6 + 56))
    {
      v11 = 0;
      do
      {
        *(*(v6 + 32) + 8 * v11) = malloc_type_malloc(v9, 0x100004000313F17uLL);
        if (!*(*(v6 + 32) + 8 * v11))
        {
          goto LABEL_19;
        }

        *(*(v6 + 40) + 8 * v11) = malloc_type_malloc(v10, 0x100004000313F17uLL);
        if (!*(*(v6 + 40) + 8 * v11))
        {
          goto LABEL_19;
        }
      }

      while (++v11 < *(v6 + 56));
    }

    v12 = v10 <= v9 ? 8 * arrays : 8 * a2;
    v13 = v12;
    *(v6 + 64) = malloc_type_malloc(v12, 0x100004000313F17uLL);
    v14 = malloc_type_malloc(v13, 0x100004000313F17uLL);
    *(v6 + 72) = v14;
    if (!*(v6 + 64) || !v14 || (v15 = malloc_type_malloc((16 * *(v6 + 148)) | 8, 0x100004000313F17uLL), (*(v6 + 80) = v15) == 0) || (v16 = 4 * *(v6 + 100), *(v6 + 16) = malloc_type_malloc(4 * *(v6 + 92), 0x100004052888210uLL), v17 = malloc_type_malloc(v16, 0x100004052888210uLL), *(v6 + 24) = v17, !*(v6 + 16)) || !v17)
    {
LABEL_19:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    return 0;
  }

  return result;
}

- (uint64_t)processPixelBuffer:(void *)buffer metadataDictionary:
{
  bufferCopy = buffer;
  if (!self)
  {
    v40 = 0;
    goto LABEL_24;
  }

  HIDWORD(v62) = *(self + 52);
  if (!a2)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_4_78();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
    v44 = OUTLINED_FUNCTION_9_1();
    v47 = 279;
    goto LABEL_30;
  }

  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  if (*(self + 8) != Width)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_4_78();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
    v44 = OUTLINED_FUNCTION_9_1();
    v47 = 283;
    goto LABEL_30;
  }

  if (*(self + 12) != Height)
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_4_78();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
    v44 = OUTLINED_FUNCTION_9_1();
    v47 = 284;
LABEL_30:
    v40 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 0xFFFFCE14, "(Fig)", v47, v3, v45, v46, v57);
    if (v40)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  if (!pixelSumForROI(a2, *(self + 16), *(self + 24), *(self + 112), *(self + 120), *(self + 128), *(self + 136)))
  {
    goto LABEL_20;
  }

  v10 = *(self + 24);
  if (v10)
  {
    v4 = *(self + 16);
    if (v4)
    {
      v11 = *(self + 88);
      if (v11 <= 0)
      {
        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_2_101();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
        v48 = OUTLINED_FUNCTION_9_1();
        v51 = 544;
      }

      else
      {
        v12 = *(self + 96);
        if (v12 > 0)
        {
          v14 = *(self + 112);
          v13 = *(self + 120);
          v15 = CVPixelBufferLockBaseAddress(a2, 1uLL);
          if (v15)
          {
            v40 = v15;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_7_62();
            OUTLINED_FUNCTION_1_8();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v40, v60, v61, v62, v63, pixelBuffer, v66, v67);
            goto LABEL_39;
          }

          v16 = OUTLINED_FUNCTION_2_2();
          WidthOfPlane = CVPixelBufferGetWidthOfPlane(v16, v17);
          v19 = OUTLINED_FUNCTION_2_2();
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(v19, v20);
          if (v12 + v14 > WidthOfPlane)
          {
            OUTLINED_FUNCTION_11_44();
            OUTLINED_FUNCTION_7_62();
            OUTLINED_FUNCTION_10_46();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
            v52 = OUTLINED_FUNCTION_11_44();
            v55 = 553;
          }

          else
          {
            if (v11 + v13 <= HeightOfPlane)
            {
              v22 = OUTLINED_FUNCTION_2_2();
              BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v22, v23);
              pixelBuffera = a2;
              v25 = OUTLINED_FUNCTION_2_2();
              v27 = bufferCopy;
              BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v25, v26);
              bzero(v10, 4 * v12);
              bzero(v4, 4 * v11);
              v29 = 0;
              v30 = v12 & 0x7FFFFFFC;
              v31 = &BaseAddressOfPlane[v14 + BytesPerRowOfPlane * v13];
              bufferCopy = v27;
              v32 = v31 + 3;
              do
              {
                if (v30)
                {
                  v33 = 0;
                  v34 = v10 + 2;
                  do
                  {
                    v35 = *(v4 + v29) + v32[v33 - 3];
                    *(v4 + v29) = v35;
                    v36 = v35 + v32[v33 - 2];
                    *(v4 + v29) = v36;
                    v37 = v36 + v32[v33 - 1];
                    *(v4 + v29) = v37;
                    *(v4 + v29) = v37 + v32[v33];
                    v38 = *(v34 - 1);
                    *(v34 - 2) += v32[v33 - 3];
                    *(v34 - 1) = v38 + v32[v33 - 2];
                    v39 = v34[1];
                    *v34 += v32[v33 - 1];
                    v34[1] = v39 + v32[v33];
                    v33 += 4;
                    v34 += 4;
                  }

                  while (v33 < v30);
                }

                ++v29;
                v32 += BytesPerRowOfPlane;
              }

              while (v29 != v11);
              v40 = 0;
              a2 = pixelBuffera;
LABEL_19:
              CVPixelBufferUnlockBaseAddress(a2, 1uLL);
              if (!v40)
              {
                goto LABEL_20;
              }

LABEL_39:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_7_62();
              OUTLINED_FUNCTION_1_8();
              LODWORD(v56) = v40;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56);
              goto LABEL_40;
            }

            OUTLINED_FUNCTION_11_44();
            OUTLINED_FUNCTION_7_62();
            OUTLINED_FUNCTION_10_46();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
            v52 = OUTLINED_FUNCTION_11_44();
            v55 = 554;
          }

          v40 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 0xFFFFCE14, "(Fig)", v55, v14, v53, v54, v59);
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_9_1();
        OUTLINED_FUNCTION_2_101();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
        v48 = OUTLINED_FUNCTION_9_1();
        v51 = 545;
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_2_101();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
      v48 = OUTLINED_FUNCTION_9_1();
      v51 = 543;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_2_101();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v60, v61, v62, v63, pixelBuffer, v66, v67);
    v48 = OUTLINED_FUNCTION_9_1();
    v51 = 542;
  }

  v40 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, 0xFFFFCE14, "(Fig)", v51, v4, v49, v50, v58);
  if (v40)
  {
    goto LABEL_39;
  }

LABEL_20:
  vDSP_vflt32D(*(self + 16), 1, *(*(self + 32) + 8 * *(self + 48)), 1, *(self + 88));
  vDSP_vflt32D(*(self + 24), 1, *(*(self + 40) + 8 * *(self + 48)), 1, *(self + 96));
  v41 = *(self + 52);
  if (v41 < *(self + 56))
  {
    *(self + 52) = ++v41;
  }

  if (v41 >= 2)
  {
    _computeStatistics = [(FigCaptureImageMotionDetector *)self _computeStatistics];
    if (_computeStatistics)
    {
      v40 = _computeStatistics;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_7_62();
      OUTLINED_FUNCTION_1_8();
      LODWORD(v56) = v40;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56);
LABEL_40:
      *(self + 52) = HIDWORD(v62);
      *(self + 209) = 0;
      goto LABEL_24;
    }
  }

LABEL_23:
  v40 = 0;
  *(self + 48) = (*(self + 48) + 1) % *(self + 56);
LABEL_24:

  return v40;
}

- (uint64_t)_computeStatistics
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 52);
  if (v3 <= 1)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v56, v57, v58, v59, v61, v62, v64);
    result = 4294954514;
    goto LABEL_40;
  }

  v4 = 0;
  v5 = *(result + 48);
  v6 = (v5 + 1) % v3;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(v7 + 8 * v6);
  HIDWORD(v58) = v6;
  v69 = *(v8 + 8 * v6);
  v10 = *(v7 + 8 * v5);
  v60 = *(result + 48);
  v68 = *(v8 + 8 * v5);
  v66 = result + 160;
  v67 = result + 152;
  v11 = 1;
  v12 = *(result + 96);
  v65 = *(result + 88);
  v13 = *(result + 148);
  v14 = *(result + 80);
  v63 = result;
  while (1)
  {
    if (!v10 || !v9 || (v15 = *(v2 + 72)) == 0 || !v14)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_88();
      LODWORD(v52) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52);
      v51 = 4294954516;
      goto LABEL_39;
    }

    v16 = v11;
    if ((v13 & 0x80000000) == 0)
    {
      break;
    }

    v17 = 0;
LABEL_33:
    v11 = 0;
    v36 = *(v14 + 8 * v17);
    *(v67 + 4 * v4) = v36;
    *(v66 + 4 * v4) = v17 - v13;
    v12 = v65;
    v10 = v68;
    v9 = v69;
    v4 = 1;
    if ((v16 & 1) == 0)
    {
      v37 = *(v2 + 144);
      v38 = *(v2 + 152) < v37 || *(v2 + 156) < v37;
      result = 0;
      v39 = *(v2 + 128);
      *(v2 + 176) = *(v2 + 112);
      *(v2 + 192) = v39;
      v40 = *(v2 + 8);
      v41.i64[0] = v40;
      v41.i64[1] = SHIDWORD(v40);
      v42 = vcvtq_f64_s64(v41);
      __asm { FMOV            V1.2D, #-1.0 }

      v47 = *(v2 + 192);
      v48 = vdivq_f64(*(v2 + 176), vaddq_f64(v42, _Q1));
      *(v2 + 208) = v38;
      v49 = *(v2 + 52);
      *(v2 + 176) = v48;
      *(v2 + 192) = vdivq_f64(v47, v42);
      *(v2 + 168) = v49;
      *(v2 + 172) = (v60 - HIDWORD(v58) + v49) % v49;
      goto LABEL_40;
    }
  }

  v70 = v11;
  v71 = v4;
  v1 = 0;
  v17 = 0;
  v18 = *(v2 + 64);
  v19 = (v10 + 8 * v13 - 8 * v13);
  v20 = -100.0;
  v21 = v12 - 2 * v13;
  v22 = (v9 + 8 * v13);
  v23 = (2 * v13) | 1;
  v24 = -v13;
  while (1)
  {
    if (&v1[v24] < v24)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_71();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v56, v57, v58, v60, v61, v63, v64);
      emitter = fig_log_get_emitter();
      v30 = 741;
      goto LABEL_28;
    }

    if (v21 <= 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_6_71();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v56, v57, v58, v60, v61, v63, v64);
      emitter = fig_log_get_emitter();
      v30 = 744;
LABEL_28:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "(Fig)", v30, v57, v28, v29, v53);
      v25 = 0.0;
      if (v31)
      {
        goto LABEL_38;
      }

      goto LABEL_22;
    }

    if (v18)
    {
      v75 = 0.0;
      __Mean[0] = 0.0;
      v73 = 0.0;
      __StandardDeviation = 0.0;
      vDSP_normalizeD(v19, 1, v18, 1, __Mean, &__StandardDeviation, v21);
      vDSP_normalizeD(v22, 1, v15, 1, &v75, &v73, v21);
      __C = 0.0;
      if (__StandardDeviation < 0.0000999999975 || v73 < 0.0000999999975)
      {
        if (v73 < 0.0000999999975 && __StandardDeviation < 0.0000999999975)
        {
          v25 = 1.0;
        }

        else
        {
          v25 = 0.0;
        }
      }

      else
      {
        vDSP_convD(v18, 1, v15, 1, &__C, 1, 1uLL, v21);
        v25 = __C / v21;
      }

      goto LABEL_22;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_6_71();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v56, v57, v58, v60, v61, v63, v64);
    v32 = fig_log_get_emitter();
    v35 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 0xFFFFCE14, "(Fig)", 0x265, v57, v33, v34, v54);
    v25 = 0.0;
    if (v35)
    {
      break;
    }

LABEL_22:
    *(v14 + 8 * v1) = v25;
    if (v25 > v20)
    {
      v20 = v25;
      v17 = v1;
    }

    ++v1;
    ++v19;
    if (v23 == v1)
    {
      v2 = v63;
      v14 = *(v63 + 80);
      v13 = *(v63 + 148);
      v4 = v71;
      v16 = v70;
      goto LABEL_33;
    }
  }

  v1 = v35;
  fig_log_get_emitter();
  LODWORD(v52) = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v57, v57, v58, v60, v61, v63, v64);
  v31 = v1;
LABEL_38:
  v50 = v31;
  fig_log_get_emitter();
  OUTLINED_FUNCTION_3_88();
  v51 = v50;
  LODWORD(v52) = v50;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v56, v57, v58, v60, v61, v63, v64);
  v2 = v63;
LABEL_39:
  fig_log_get_emitter();
  LODWORD(v55) = v51;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v55, v1, v57, v58, v60, v61, v63, v64);
  result = v51;
LABEL_40:
  *(v2 + 209) = result == 0;
  return result;
}

- (void)_freeAllocatedArrays
{
  if (self)
  {
    if (*(self + 56))
    {
      v2 = 0;
      do
      {
        v3 = *(self + 32);
        if (v3)
        {
          v4 = *(v3 + 8 * v2);
          if (v4)
          {
            *(v3 + 8 * v2) = 0;
            free(v4);
          }
        }

        v5 = *(self + 40);
        if (v5)
        {
          v6 = *(v5 + 8 * v2);
          if (v6)
          {
            *(v5 + 8 * v2) = 0;
            free(v6);
          }
        }

        ++v2;
      }

      while (v2 < *(self + 56));
    }

    v7 = *(self + 32);
    if (v7)
    {
      *(self + 32) = 0;
      free(v7);
    }

    v8 = *(self + 40);
    if (v8)
    {
      *(self + 40) = 0;
      free(v8);
    }

    v9 = *(self + 16);
    if (v9)
    {
      *(self + 16) = 0;
      free(v9);
    }

    v10 = *(self + 24);
    if (v10)
    {
      *(self + 24) = 0;
      free(v10);
    }

    v11 = *(self + 64);
    if (v11)
    {
      *(self + 64) = 0;
      free(v11);
    }

    v12 = *(self + 72);
    if (v12)
    {
      *(self + 72) = 0;
      free(v12);
    }

    v13 = *(self + 80);
    if (v13)
    {
      *(self + 80) = 0;

      free(v13);
    }
  }
}

@end