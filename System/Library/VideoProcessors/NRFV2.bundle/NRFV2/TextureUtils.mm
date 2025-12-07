@interface TextureUtils
+ (int)prewarmShaders:(id)shaders;
- (TextureUtils)initWithMetalContext:(id)context;
- (int)_fillTexturePaddedArea10BitPacked:(__CVBuffer *)packed roi:(const CGRect *)roi fullWidth:(unsigned int)width fullHeight:(unsigned int)height useSeparateCommandQueue:(BOOL)queue;
- (int)_fillTexturePaddedArea:(id)area roi:(const CGRect *)roi useSeparateCommandQueue:(BOOL)queue;
- (int)copyTexture:(id)texture outTex:(id)tex;
- (int)fillPaddedAreaInFrame:(__CVBuffer *)frame cfp:(frameProperties_t *)cfp useSeparateCommandQueue:(BOOL)queue;
- (int)fillPaddedAreaInFrame:(__CVBuffer *)frame roi:(const CGRect *)roi didExtend:(BOOL *)extend useSeparateCommandQueue:(BOOL)queue;
@end

@implementation TextureUtils

- (TextureUtils)initWithMetalContext:(id)context
{
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = TextureUtils;
  v6 = [(TextureUtils *)&v28 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metal, context);
  v11 = objc_msgSend_device(v7->_metal, v8, v9, v10);
  v15 = objc_msgSend_newCommandQueue(v11, v12, v13, v14);
  separateCommandQueue = v7->_separateCommandQueue;
  v7->_separateCommandQueue = v15;

  if (v7->_separateCommandQueue)
  {
    v20 = objc_msgSend_sharedInstance(TextureUtilsShared, v17, v18, v19);
    v23 = objc_msgSend_getShaders_(v20, v21, v7->_metal, v22);
    shaders = v7->_shaders;
    v7->_shaders = v23;

    if (v7->_shaders)
    {
      goto LABEL_4;
    }

    sub_2958C3F2C(&v29);
  }

  else
  {
    sub_2958C3FC8(&v29);
  }

  if (v29)
  {
    v25 = 0;
    goto LABEL_5;
  }

LABEL_4:
  v25 = v7;
LABEL_5:
  v26 = v25;

  return v26;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [TextureUtilsShaders alloc];
  v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -12786;
  }

  return v8;
}

- (int)_fillTexturePaddedArea:(id)area roi:(const CGRect *)roi useSeparateCommandQueue:(BOOL)queue
{
  queueCopy = queue;
  areaCopy = area;
  if (objc_msgSend_iosurface(areaCopy, v9, v10, v11))
  {
    v15 = objc_msgSend_iosurface(areaCopy, v12, v13, v14);
    ID = IOSurfaceGetID(v15);
  }

  else
  {
    ID = 0;
  }

  v17 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  if (queueCopy)
  {
    v21 = objc_msgSend_commandBuffer(self->_separateCommandQueue, v12, v13, v14);
  }

  else
  {
    v22 = objc_msgSend_commandQueue(self->_metal, v12, v13, v14);
    v21 = objc_msgSend_commandBuffer(v22, v23, v24, v25);
  }

  if (!v21)
  {
    sub_2958C4100(&v97);
    v29 = 0;
LABEL_31:
    v82 = v97;
    goto LABEL_26;
  }

  v26 = objc_msgSend_computeCommandEncoder(v21, v18, v19, v20);
  v29 = v26;
  if (!v26)
  {
    sub_2958C4064(&v97);
    goto LABEL_31;
  }

  v85 = ID;
  v86 = v21;
  v87 = queueCopy;
  objc_msgSend_setComputePipelineState_(v26, v27, self->_shaders->_fillTexturePaddedArea, v28);
  objc_msgSend_setTexture_atIndex_(v29, v30, areaCopy, 0);
  v34 = objc_msgSend_width(areaCopy, v31, v32, v33);
  v88 = areaCopy;
  v38 = objc_msgSend_height(areaCopy, v35, v36, v37);
  v40 = v38;
  v41.i64[0] = 0;
  v41.i64[1] = __PAIR64__(v38, v34);
  v101 = v41;
  if (roi)
  {
    v101 = vuzp1q_s32(vcvtq_u64_f64(roi->origin), vcvtq_u64_f64(roi->size));
  }

  objc_msgSend_setBytes_length_atIndex_(v29, v39, &v101, 16, 0);
  objc_msgSend_setImageblockWidth_height_(v29, v42, 32, 32);
  v46 = v101;
  v47 = v101.i32[1] + v101.i32[3];
  v48 = (v101.u32[1] + 31) >> 5;
  v49 = ((v40 - (v101.i32[1] + v101.i32[3])) + 31) >> 5;
  if (v101.i32[1])
  {
    v100 = 0uLL;
    v84 = v101;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v34 + 31) >> 5;
    v98 = v48;
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v50, &v97, &v95);
    v46 = v84;
  }

  v51 = v46.u32[0];
  v52 = v46.i32[2];
  v53 = (v40 + 31) >> 5;
  if (v40 != v47)
  {
    LODWORD(v54) = 0;
    HIDWORD(v54) = 0;
    *(&v54 + 4) = (32 * (v53 - v49));
    v100 = v54;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v34 + 31) >> 5;
    v98 = v49;
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v55, &v97, &v95);
  }

  v56 = v51 + v52;
  if (v51)
  {
    LODWORD(v57) = 0;
    HIDWORD(v57) = 32 * v48;
    v100 = v57;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = (v51 + 31) >> 5;
    v98 = (v53 - v48 - v49);
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v58, &v97, &v95);
  }

  if (v34 != v56)
  {
    LODWORD(v59) = 32 * (((v34 + 31) >> 5) - (((v34 - v56) + 31) >> 5));
    HIDWORD(v59) = 32 * v48;
    v100 = v59;
    objc_msgSend_setBytes_length_atIndex_(v29, v43, &v100, 16, 1);
    v97 = ((v34 - v56) + 31) >> 5;
    v98 = (v53 - v48 - v49);
    v99 = 1;
    v95 = vdupq_n_s64(0x20uLL);
    v96 = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v29, v60, &v97, &v95);
  }

  objc_msgSend_endEncoding(v29, v43, v44, v45);
  v17 = MEMORY[0x29EDB9270];
  areaCopy = v88;
  v21 = v86;
  if (*MEMORY[0x29EDB9270])
  {
    v64 = objc_msgSend_commandQueue(v86, v61, v62, v63);
    v68 = objc_msgSend_commandBuffer(v64, v65, v66, v67);

    objc_msgSend_setLabel_(v68, v69, @"KTRACE_MTLCMDBUF", v70);
    v92[0] = MEMORY[0x29EDCA5F8];
    v92[1] = 3221225472;
    v92[2] = sub_2958660E0;
    v92[3] = &unk_29EDDC490;
    v71 = v88;
    v93 = v71;
    v94 = v85;
    objc_msgSend_addCompletedHandler_(v68, v72, v92, v73);
    objc_msgSend_commit(v68, v74, v75, v76);
    v89[0] = MEMORY[0x29EDCA5F8];
    v89[1] = 3221225472;
    v89[2] = sub_295866114;
    v89[3] = &unk_29EDDC490;
    v90 = v71;
    v91 = v85;
    objc_msgSend_addCompletedHandler_(v86, v77, v89, v78);
  }

  objc_msgSend_commit(v86, v61, v62, v63);
  if (v87)
  {
    objc_msgSend_waitUntilScheduled(v86, v79, v80, v81);
  }

  v82 = 0;
LABEL_26:
  if (*v17 == 1)
  {
    kdebug_trace();
  }

  return v82;
}

- (int)_fillTexturePaddedArea10BitPacked:(__CVBuffer *)packed roi:(const CGRect *)roi fullWidth:(unsigned int)width fullHeight:(unsigned int)height useSeparateCommandQueue:(BOOL)queue
{
  queueCopy = queue;
  v105[0] = width;
  IOSurface = CVPixelBufferGetIOSurface(packed);
  v13 = IOSurface;
  if (IOSurface)
  {
    ID = IOSurfaceGetID(IOSurface);
  }

  else
  {
    ID = 0;
  }

  if (*MEMORY[0x29EDB9270] == 1)
  {
    kdebug_trace();
  }

  v90 = ID;
  if (!CVPixelBufferIsPlanar(packed))
  {
    sub_2958C4544(&v99);
LABEL_27:
    v25 = 0;
LABEL_29:
    v52 = 0;
    v32 = 0;
LABEL_34:
    v88 = v99;
    v70 = MEMORY[0x29EDB9270];
    goto LABEL_21;
  }

  if (!CVPixelBufferGetPlaneCount(packed))
  {
    sub_2958C44A8(&v99);
    goto LABEL_27;
  }

  BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v13, 0);
  v16 = IOSurfaceGetBaseAddressOfPlane(v13, 1uLL);
  if (BaseAddressOfPlane >= v16)
  {
    sub_2958C419C(&v99);
    goto LABEL_27;
  }

  v17 = v16;
  v91 = ID;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(packed, 0);
  v103 = BytesPerRowOfPlane >> 3;
  v104 = BytesPerRowOfPlane >> 2;
  v22 = objc_msgSend_device(self->_metal, v19, v20, v21);
  v25 = objc_msgSend_newBufferWithIOSurface_(v22, v23, v13, v24);

  if (!v25)
  {
    sub_2958C440C(&v99);
    goto LABEL_29;
  }

  v92 = queueCopy;
  if (queueCopy)
  {
    v32 = objc_msgSend_commandBuffer(self->_separateCommandQueue, v26, v27, v28);
  }

  else
  {
    v33 = objc_msgSend_commandQueue(self->_metal, v26, v27, v28);
    v32 = objc_msgSend_commandBuffer(v33, v34, v35, v36);
  }

  if (!v32)
  {
    sub_2958C4370(&v99);
LABEL_32:
    v52 = 0;
    goto LABEL_34;
  }

  v37 = objc_msgSend_computeCommandEncoder(v32, v29, v30, v31);
  if (!v37)
  {
    sub_2958C42D4(&v99);
    goto LABEL_32;
  }

  v40 = v37;
  objc_msgSend_setComputePipelineState_(v37, v38, self->_shaders->_fillTexturePaddedArea10BitPacked_Luma, v39);
  objc_msgSend_setBuffer_offset_atIndex_(v40, v41, v25, 0, 0);
  objc_msgSend_setBytes_length_atIndex_(v40, v42, v105, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v40, v43, &v104, 4, 2);
  v102 = vuzp1q_s32(vcvtq_u64_f64(roi->origin), vcvtq_u64_f64(roi->size));
  objc_msgSend_setBytes_length_atIndex_(v40, v44, &v102, 16, 3);
  v99 = (v105[0] + 2) / 3uLL;
  heightCopy = height;
  v101 = 1;
  v97 = xmmword_2959D6450;
  v98 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v40, v45, &v99, &v97);
  objc_msgSend_endEncoding(v40, v46, v47, v48);
  v105[0] >>= 1;
  v52 = objc_msgSend_computeCommandEncoder(v32, v49, v50, v51);

  if (!v52)
  {
    sub_2958C4238(&v99);
    goto LABEL_34;
  }

  objc_msgSend_setComputePipelineState_(v52, v53, self->_shaders->_fillTexturePaddedArea10BitPacked_Chroma, v54);
  objc_msgSend_setBuffer_offset_atIndex_(v52, v55, v25, (v17 - BaseAddressOfPlane), 0);
  objc_msgSend_setBytes_length_atIndex_(v52, v56, v105, 4, 1);
  objc_msgSend_setBytes_length_atIndex_(v52, v57, &v103, 4, 2);
  makeChromaROI();
  v59.f64[1] = v58;
  v61.f64[1] = v60;
  v102 = vuzp1q_s32(vcvtq_u64_f64(v59), vcvtq_u64_f64(v61));
  objc_msgSend_setBytes_length_atIndex_(v52, v62, &v102, 16, 3);
  v99 = (v105[0] + 2) / 3uLL;
  heightCopy = height >> 1;
  v101 = 1;
  v97 = xmmword_2959D6450;
  v98 = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v52, v63, &v99, &v97);
  objc_msgSend_endEncoding(v52, v64, v65, v66);
  v70 = MEMORY[0x29EDB9270];
  if (*MEMORY[0x29EDB9270])
  {
    v71 = objc_msgSend_commandQueue(v32, v67, v68, v69);
    v75 = objc_msgSend_commandBuffer(v71, v72, v73, v74);

    objc_msgSend_setLabel_(v75, v76, @"KTRACE_MTLCMDBUF", v77);
    v95[0] = MEMORY[0x29EDCA5F8];
    v95[1] = 3221225472;
    v95[2] = sub_2958666DC;
    v95[3] = &unk_29EDDC4B0;
    v95[4] = packed;
    v96 = v91;
    objc_msgSend_addCompletedHandler_(v75, v78, v95, v79);
    objc_msgSend_commit(v75, v80, v81, v82);
    v93[0] = MEMORY[0x29EDCA5F8];
    v93[1] = 3221225472;
    v93[2] = sub_295866710;
    v93[3] = &unk_29EDDC4B0;
    v93[4] = packed;
    v94 = v91;
    objc_msgSend_addCompletedHandler_(v32, v83, v93, v84);
  }

  objc_msgSend_commit(v32, v67, v68, v69, v90);
  if (v92)
  {
    objc_msgSend_waitUntilScheduled(v32, v85, v86, v87);
  }

  v88 = 0;
LABEL_21:
  if (*v70 == 1)
  {
    kdebug_trace();
  }

  return v88;
}

- (int)fillPaddedAreaInFrame:(__CVBuffer *)frame roi:(const CGRect *)roi didExtend:(BOOL *)extend useSeparateCommandQueue:(BOOL)queue
{
  queueCopy = queue;
  if (!CVPixelBufferIsPlanar(frame))
  {
    sub_2958C47D8(&v46);
    v19 = 0;
    v20 = 0;
    goto LABEL_54;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
  v48[0] = 0;
  v48[1] = 0;
  *&v48[2] = WidthOfPlane;
  *&v48[3] = HeightOfPlane;
  roiCopy2 = v48;
  if (roi)
  {
    roiCopy = roi;
  }

  else
  {
    roiCopy = v48;
  }

  v15 = (WidthOfPlane + 15) & 0xFFFFFFF0;
  v16 = (HeightOfPlane + 15) & 0xFFFFFFF0;
  if (roiCopy->origin.x == 0.0)
  {
    if (roi)
    {
      roiCopy2 = roi;
    }

    if (roiCopy2->origin.y == 0.0)
    {
      roiCopy3 = v48;
      v18 = roi ? roi : v48;
      if (v18->size.width == v15)
      {
        if (roi)
        {
          roiCopy3 = roi;
        }

        if (roiCopy3->size.height == v16)
        {
          v19 = 0;
          v20 = 0;
LABEL_51:
          v30 = 0;
          goto LABEL_52;
        }
      }
    }
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(frame);
  v22 = 0;
  if (PixelFormatType > 792225327)
  {
    if (PixelFormatType > 2084070959)
    {
      if (PixelFormatType == 2084070960)
      {
        goto LABEL_29;
      }

      v23 = 2088265264;
    }

    else
    {
      if (PixelFormatType == 792225328)
      {
        goto LABEL_29;
      }

      v23 = 796419632;
    }

LABEL_28:
    if (PixelFormatType != v23)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (PixelFormatType > 758670895)
  {
    if (PixelFormatType == 758670896)
    {
      goto LABEL_29;
    }

    v23 = 762865200;
    goto LABEL_28;
  }

  if (PixelFormatType != 641230384)
  {
    v23 = 645424688;
    goto LABEL_28;
  }

LABEL_29:
  v22 = 1;
LABEL_30:
  v24 = 1;
  if (PixelFormatType <= 796419631)
  {
    if (PixelFormatType == 645424688)
    {
LABEL_37:
      v24 = 0;
      goto LABEL_38;
    }

    v25 = 762865200;
  }

  else
  {
    if (PixelFormatType == 796419632 || PixelFormatType == 2088265264)
    {
      goto LABEL_37;
    }

    v25 = 1885745712;
  }

  if (PixelFormatType == v25)
  {
    goto LABEL_37;
  }

LABEL_38:
  extraRowsOnBottom = 0;
  CVPixelBufferGetExtendedPixels(frame, 0, 0, 0, &extraRowsOnBottom);
  if (CVPixelBufferGetBytesPerRowOfPlane(frame, 0) >= v15)
  {
    v26 = CVPixelBufferGetHeightOfPlane(frame, 0);
    if (extraRowsOnBottom + v26 >= v16)
    {
      if (queueCopy)
      {
        objc_msgSend_waitForSchedule(self->_metal, v27, v28, v29);
      }

      if (((v22 | v24) & 1) == 0)
      {
        objc_msgSend__fillTexturePaddedArea10BitPacked_roi_fullWidth_fullHeight_useSeparateCommandQueue_(self, v27, frame, roiCopy, v15, v16, queueCopy);
        v19 = 0;
        v20 = 0;
        if (!extend)
        {
          goto LABEL_51;
        }

        goto LABEL_49;
      }

      MetalLumaFormat = objc_msgSend_getMetalLumaFormat_(LumaChromaImage, v27, frame, v29);
      v20 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self->_metal, v32, frame, MetalLumaFormat, 7, 0, 16);
      if (v20)
      {
        v34 = objc_msgSend__fillTexturePaddedArea_roi_useSeparateCommandQueue_(self, v33, v20, roiCopy, queueCopy);
        if (v34)
        {
          v30 = v34;
          sub_2958C45E0();
          v19 = 0;
          goto LABEL_52;
        }

        makeChromaROI();
        MetalChromaFormat = objc_msgSend_getMetalChromaFormat_(LumaChromaImage, v35, frame, v36, v37, v38, v39, v40);
        v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_alignmentFactor_(self->_metal, v42, frame, MetalChromaFormat, 7, 1, 8);
        if (!v19)
        {
          sub_2958C46A0(&v49);
          v30 = v49;
          goto LABEL_52;
        }

        v44 = objc_msgSend__fillTexturePaddedArea_roi_useSeparateCommandQueue_(self, v43, v19, &v46, queueCopy);
        if (v44)
        {
          v30 = v44;
          sub_2958C4640();
          goto LABEL_52;
        }

        if (!extend)
        {
          goto LABEL_51;
        }

LABEL_49:
        v30 = 0;
        *extend = 1;
        goto LABEL_52;
      }

      sub_2958C473C(&v46);
      v19 = 0;
LABEL_54:
      v30 = v46;
      goto LABEL_52;
    }
  }

  v19 = 0;
  v20 = 0;
  v30 = -1;
LABEL_52:

  return v30;
}

- (int)fillPaddedAreaInFrame:(__CVBuffer *)frame cfp:(frameProperties_t *)cfp useSeparateCommandQueue:(BOOL)queue
{
  v5 = &cfp->meta.ltmCurves.ccmLut.ccmV1.lutsData[2044];
  if (LOBYTE(cfp[1].meta.exposureParams.ltm_soft_gain))
  {
    return 0;
  }

  v12 = 0;
  v8 = objc_msgSend_fillPaddedAreaInFrame_roi_didExtend_useSeparateCommandQueue_(self, a2, frame, &cfp->meta.ROI, &v12, queue);
  v6 = v8;
  if (v8)
  {
    sub_2958C4874(v8);
  }

  else
  {
    v9 = v12;
    LOBYTE(v5[49].GG.mid) = v12;
    if (v9 == 1)
    {
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
      *&v5[49].GB.highlights = *&vadd_s32(__PAIR64__(CVPixelBufferGetHeightOfPlane(frame, 0), WidthOfPlane), 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
    }
  }

  return v6;
}

- (int)copyTexture:(id)texture outTex:(id)tex
{
  textureCopy = texture;
  texCopy = tex;
  v11 = objc_msgSend_commandQueue(self->_metal, v8, v9, v10);
  v15 = objc_msgSend_commandBuffer(v11, v12, v13, v14);

  if (!v15)
  {
    sub_2958C4AD8(v56);
LABEL_22:
    v53 = v56[0];
    v33 = texCopy;
    goto LABEL_19;
  }

  v19 = objc_msgSend_computeCommandEncoder(v15, v16, v17, v18);
  if (!v19)
  {
    sub_2958C4A3C(v56);
    goto LABEL_22;
  }

  v23 = v19;
  isCompressed = objc_msgSend_isCompressed(texCopy, v20, v21, v22);
  if (isCompressed)
  {
    v28 = 32;
  }

  else
  {
    v28 = 4;
  }

  if (isCompressed)
  {
    v29 = 32;
  }

  else
  {
    v29 = 64;
  }

  if ((objc_msgSend_isCompressed(texCopy, v25, v26, v27) & 1) != 0 || objc_msgSend_pixelFormat(texCopy, v30, v31, v32) != 588)
  {
    if ((objc_msgSend_isCompressed(texCopy, v30, v31, v32) & 1) != 0 || objc_msgSend_pixelFormat(texCopy, v34, v37, v35) != 589)
    {
      v36 = 48;
      v33 = texCopy;
      goto LABEL_18;
    }

    v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v34, texCopy, 103, 6, 1, 3);

    if (v33)
    {
      v36 = 40;
      goto LABEL_18;
    }

    sub_2958C4988(v23, v56);
LABEL_25:
    v53 = v56[0];
    goto LABEL_19;
  }

  v33 = objc_msgSend_rebindTex_format_usage_plane_xFactor_(self->_metal, v30, texCopy, 53, 6, 0, 3);

  if (!v33)
  {
    sub_2958C48D4(v23, v56);
    goto LABEL_25;
  }

  v36 = 32;
LABEL_18:
  objc_msgSend_setComputePipelineState_(v23, v34, *(&self->_shaders->super.isa + v36), v35);
  objc_msgSend_setTexture_atIndex_(v23, v38, textureCopy, 0);
  objc_msgSend_setTexture_atIndex_(v23, v39, v33, 1);
  v56[0] = objc_msgSend_width(v33, v40, v41, v42);
  v56[1] = objc_msgSend_height(v33, v43, v44, v45);
  v56[2] = 1;
  v55[0] = v29;
  v55[1] = v28;
  v55[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v23, v46, v56, v55);
  objc_msgSend_endEncoding(v23, v47, v48, v49);
  objc_msgSend_commit(v15, v50, v51, v52);

  v53 = 0;
LABEL_19:

  return v53;
}

@end