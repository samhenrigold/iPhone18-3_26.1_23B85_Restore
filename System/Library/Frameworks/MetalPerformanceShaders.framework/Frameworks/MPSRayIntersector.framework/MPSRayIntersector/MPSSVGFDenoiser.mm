@interface MPSSVGFDenoiser
- (MPSSVGFDenoiser)initWithDevice:(id)device;
- (MPSSVGFDenoiser)initWithSVGF:(MPSSVGF *)svgf textureAllocator:(id)textureAllocator;
- (id)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)dealloc;
- (void)encodeClearToCommandBuffer:(id)buffer;
- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture destinationTexture:(id *)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id *)destinationTexture2 motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture;
- (void)releaseTemporaryTextures;
- (void)setBilateralFilterIterations:(NSUInteger)bilateralFilterIterations;
@end

@implementation MPSSVGFDenoiser

- (void)setBilateralFilterIterations:(NSUInteger)bilateralFilterIterations
{
  if (!bilateralFilterIterations)
  {
    sub_239E21D88(self, a2);
  }

  self->_bilateralFilterIterations = bilateralFilterIterations;
}

- (MPSSVGFDenoiser)initWithDevice:(id)device
{
  v5 = [MPSSVGF alloc];
  v7 = objc_msgSend_initWithDevice_(v5, v6, device);
  v8 = [MPSSVGFDefaultTextureAllocator alloc];
  v10 = objc_msgSend_initWithDevice_(v8, v9, device);

  return MEMORY[0x2821F9670](self, sel_initWithSVGF_textureAllocator_, v7);
}

- (MPSSVGFDenoiser)initWithSVGF:(MPSSVGF *)svgf textureAllocator:(id)textureAllocator
{
  v8.receiver = self;
  v8.super_class = MPSSVGFDenoiser;
  v6 = [(MPSSVGFDenoiser *)&v8 init];
  if (v6)
  {
    v6->_svgf = svgf;
    v6->_textureAllocator = textureAllocator;
    v6->_bilateralFilterIterations = 5;
    v6->_clear = 1;
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_releaseTemporaryTextures(self, a2, v2);

  self->_svgf = 0;
  self->_textureAllocator = 0;
  v4.receiver = self;
  v4.super_class = MPSSVGFDenoiser;
  [(MPSSVGFDenoiser *)&v4 dealloc];
}

- (void)releaseTemporaryTextures
{
  prevMomentsTexture = self->_prevMomentsTexture;
  if (prevMomentsTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevMomentsTexture);

    self->_prevMomentsTexture = 0;
  }

  prevMomentsTexture2 = self->_prevMomentsTexture2;
  if (prevMomentsTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevMomentsTexture2);

    self->_prevMomentsTexture2 = 0;
  }

  prevTexture = self->_prevTexture;
  if (prevTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevTexture);

    self->_prevTexture = 0;
  }

  prevTexture2 = self->_prevTexture2;
  if (prevTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevTexture2);

    self->_prevTexture2 = 0;
  }

  prevFrameCountTexture = self->_prevFrameCountTexture;
  if (prevFrameCountTexture)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, a2, prevFrameCountTexture);

    self->_prevFrameCountTexture = 0;
  }
}

- (void)encodeClearToCommandBuffer:(id)buffer
{
  v4 = objc_msgSend_computeCommandEncoder(buffer, a2, buffer);
  ComputeState = MPSLibrary::GetComputeState();
  objc_msgSend_setComputePipelineState_(v4, v6, ComputeState);
  objc_msgSend_setTexture_atIndex_(v4, v7, self->_prevFrameCountTexture, 0);
  v10 = (objc_msgSend_width(self->_prevFrameCountTexture, v8, v9) + 7) >> 3;
  v13 = objc_msgSend_height(self->_prevFrameCountTexture, v11, v12);
  v19[0] = v10;
  v19[1] = (v13 + 7) >> 3;
  v19[2] = 1;
  v17 = vdupq_n_s64(8uLL);
  v18 = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v4, v14, v19, &v17);
  objc_msgSend_endEncoding(v4, v15, v16);
}

- (void)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture destinationTexture:(id *)destinationTexture sourceTexture2:(id)sourceTexture2 destinationTexture2:(id *)destinationTexture2 motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  v16 = objc_autoreleasePoolPush();
  context = v16;
  if (commandBuffer)
  {
    if (sourceTexture)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = sub_239E21DD8(v16, v17);
    if (sourceTexture)
    {
LABEL_3:
      if (depthNormalTexture)
      {
        goto LABEL_4;
      }

LABEL_72:
      v16 = sub_239E21E78(v16, v17);
      if (destinationTexture)
      {
        goto LABEL_5;
      }

      goto LABEL_73;
    }
  }

  v16 = sub_239E21E28(v16, v17);
  if (!depthNormalTexture)
  {
    goto LABEL_72;
  }

LABEL_4:
  if (destinationTexture)
  {
    goto LABEL_5;
  }

LABEL_73:
  sub_239E21EC8(v16, v17);
LABEL_5:
  v19 = objc_msgSend_channelCount(self->_svgf, v17, v18);
  v22 = 115;
  if (v19 == 1)
  {
    v22 = 65;
  }

  v167 = v22;
  v23 = objc_msgSend_width(sourceTexture, v20, v21);
  if (v23 != objc_msgSend_width(self->_prevTexture, v24, v25) || (v28 = objc_msgSend_height(sourceTexture, v26, v27), v28 != objc_msgSend_height(self->_prevTexture, v29, v30)) || v167 != objc_msgSend_pixelFormat(self->_prevTexture, v26, v27))
  {
    objc_msgSend_releaseTemporaryTextures(self, v26, v27);
  }

  if (!self->_prevMomentsTexture)
  {
    textureAllocator = self->_textureAllocator;
    v32 = objc_msgSend_width(sourceTexture, v26, v27);
    v35 = objc_msgSend_height(sourceTexture, v33, v34);
    self->_prevMomentsTexture = objc_msgSend_textureWithPixelFormat_width_height_(textureAllocator, v36, 65, v32, v35);
  }

  if (!self->_prevTexture)
  {
    v37 = self->_textureAllocator;
    v38 = objc_msgSend_width(sourceTexture, v26, v27);
    v41 = objc_msgSend_height(sourceTexture, v39, v40);
    self->_prevTexture = objc_msgSend_textureWithPixelFormat_width_height_(v37, v42, v167, v38, v41);
  }

  if (!self->_prevFrameCountTexture)
  {
    v43 = self->_textureAllocator;
    v44 = objc_msgSend_width(sourceTexture, v26, v27);
    v47 = objc_msgSend_height(sourceTexture, v45, v46);
    self->_prevFrameCountTexture = objc_msgSend_textureWithPixelFormat_width_height_(v43, v48, 53, v44, v47);
    self->_clear = 1;
    goto LABEL_19;
  }

  if (self->_clear)
  {
LABEL_19:
    objc_msgSend_encodeClearToCommandBuffer_(self, v26, commandBuffer);
    self->_clear = 0;
  }

  v49 = self->_textureAllocator;
  v50 = objc_msgSend_width(sourceTexture, v26, v27);
  v53 = objc_msgSend_height(sourceTexture, v51, v52);
  v166 = objc_msgSend_textureWithPixelFormat_width_height_(v49, v54, 65, v50, v53);
  if (sourceTexture2)
  {
    v57 = self->_textureAllocator;
    v58 = objc_msgSend_width(sourceTexture, v55, v56);
    v61 = objc_msgSend_height(sourceTexture, v59, v60);
    v165 = objc_msgSend_textureWithPixelFormat_width_height_(v57, v62, 65, v58, v61);
  }

  else
  {
    v165 = 0;
  }

  v63 = self->_textureAllocator;
  v64 = objc_msgSend_width(sourceTexture, v55, v56);
  v67 = objc_msgSend_height(sourceTexture, v65, v66);
  v163 = sourceTexture2;
  v164 = objc_msgSend_textureWithPixelFormat_width_height_(v63, v68, v167, v64, v67);
  if (sourceTexture2)
  {
    v71 = self->_textureAllocator;
    v72 = objc_msgSend_width(sourceTexture, v69, v70);
    v75 = objc_msgSend_height(sourceTexture, v73, v74);
    v77 = objc_msgSend_textureWithPixelFormat_width_height_(v71, v76, v167, v72, v75);
  }

  else
  {
    v77 = 0;
  }

  v78 = self->_textureAllocator;
  v79 = objc_msgSend_width(sourceTexture, v69, v70);
  v82 = objc_msgSend_height(sourceTexture, v80, v81);
  v84 = objc_msgSend_textureWithPixelFormat_width_height_(v78, v83, 53, v79, v82);
  objc_msgSend_encodeReprojectionToCommandBuffer_sourceTexture_previousTexture_destinationTexture_previousLuminanceMomentsTexture_destinationLuminanceMomentsTexture_sourceTexture2_previousTexture2_destinationTexture2_previousLuminanceMomentsTexture2_destinationLuminanceMomentsTexture2_previousFrameCountTexture_destinationFrameCountTexture_motionVectorTexture_depthNormalTexture_previousDepthNormalTexture_(self->_svgf, v85, commandBuffer, sourceTexture, self->_prevTexture, v164, self->_prevMomentsTexture, v166, v163, self->_prevTexture2, v77, self->_prevMomentsTexture2, v165, self->_prevFrameCountTexture, v84, motionVectorTexture, depthNormalTexture, previousDepthNormalTexture);
  objc_msgSend_returnTexture_(self->_textureAllocator, v86, self->_prevTexture);

  self->_prevTexture = 0;
  prevTexture2 = self->_prevTexture2;
  if (prevTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v87, prevTexture2);

    self->_prevTexture2 = 0;
  }

  objc_msgSend_returnTexture_(self->_textureAllocator, v87, self->_prevMomentsTexture);

  self->_prevMomentsTexture = v166;
  prevMomentsTexture2 = self->_prevMomentsTexture2;
  if (prevMomentsTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v89, prevMomentsTexture2);

    self->_prevMomentsTexture2 = v166;
  }

  objc_msgSend_returnTexture_(self->_textureAllocator, v89, self->_prevFrameCountTexture);

  self->_prevFrameCountTexture = v84;
  v91 = self->_textureAllocator;
  v94 = objc_msgSend_width(sourceTexture, v92, v93);
  v97 = objc_msgSend_height(sourceTexture, v95, v96);
  v99 = objc_msgSend_textureWithPixelFormat_width_height_(v91, v98, v167, v94, v97);
  *destinationTexture = v99;
  if (destinationTexture2)
  {
    if (v163)
    {
      v102 = self->_textureAllocator;
      v103 = objc_msgSend_width(sourceTexture, v100, v101);
      v106 = objc_msgSend_height(sourceTexture, v104, v105);
      v107 = v167;
      v109 = objc_msgSend_textureWithPixelFormat_width_height_(v102, v108, v167, v103, v106);
    }

    else
    {
      v109 = 0;
      v107 = v167;
    }

    *destinationTexture2 = v109;
    v110 = *destinationTexture;
  }

  else
  {
    v110 = v99;
    v109 = 0;
    v107 = v167;
  }

  objc_msgSend_encodeVarianceEstimationToCommandBuffer_sourceTexture_luminanceMomentsTexture_destinationTexture_sourceTexture2_luminanceMomentsTexture2_destinationTexture2_frameCountTexture_depthNormalTexture_(self->_svgf, v100, commandBuffer, v164, v166, v110, v77, v165, v109, v84, depthNormalTexture);
  objc_msgSend_returnTexture_(self->_textureAllocator, v111, v164);
  if (v77)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v112, v77);
  }

  v114 = *destinationTexture;
  if (destinationTexture2)
  {
    v115 = *destinationTexture2;
    v116 = self->_textureAllocator;
    v117 = objc_msgSend_width(*destinationTexture, v112, v113);
    v120 = objc_msgSend_height(v114, v118, v119);
    *destinationTexture = objc_msgSend_textureWithPixelFormat_width_height_(v116, v121, v107, v117, v120);
    if (v115)
    {
      v124 = self->_textureAllocator;
      v125 = objc_msgSend_width(v114, v122, v123);
      v128 = objc_msgSend_height(v114, v126, v127);
      v130 = objc_msgSend_textureWithPixelFormat_width_height_(v124, v129, v107, v125, v128);
    }

    else
    {
      v130 = 0;
    }

    v137 = depthNormalTexture;
    *destinationTexture2 = v130;
  }

  else
  {
    v131 = self->_textureAllocator;
    v132 = objc_msgSend_width(*destinationTexture, v112, v113);
    v135 = objc_msgSend_height(v114, v133, v134);
    v115 = 0;
    *destinationTexture = objc_msgSend_textureWithPixelFormat_width_height_(v131, v136, v107, v132, v135);
    v137 = depthNormalTexture;
  }

  if (self->_bilateralFilterIterations)
  {
    v138 = 0;
    while (1)
    {
      prevTexture = v114;
      v140 = v115;
      if (v138 == 1)
      {
        prevTexture = self->_prevTexture;
        v140 = self->_prevTexture2;
      }

      if (destinationTexture2)
      {
        objc_msgSend_encodeBilateralFilterToCommandBuffer_stepDistance_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_depthNormalTexture_(self->_svgf, v122, commandBuffer, 1 << v138, prevTexture, *destinationTexture, v140, *destinationTexture2, v137);
      }

      else
      {
        objc_msgSend_encodeBilateralFilterToCommandBuffer_stepDistance_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_depthNormalTexture_(self->_svgf, v122, commandBuffer, 1 << v138, prevTexture, *destinationTexture, v140, 0, v137);
      }

      v141 = *destinationTexture;
      if (v138)
      {
        break;
      }

      self->_prevTexture = v141;
      v142 = self->_textureAllocator;
      v145 = objc_msgSend_width(v114, v143, v144);
      v148 = objc_msgSend_height(v114, v146, v147);
      v150 = objc_msgSend_textureWithPixelFormat_width_height_(v142, v149, v167, v145, v148);
      *destinationTexture = v150;
      if (destinationTexture2)
      {
        self->_prevTexture2 = *destinationTexture2;
        if (v115)
        {
          v152 = self->_textureAllocator;
          v153 = objc_msgSend_width(v114, v122, v151);
          v156 = objc_msgSend_height(v114, v154, v155);
          v158 = objc_msgSend_textureWithPixelFormat_width_height_(v152, v157, v167, v153, v156);
        }

        else
        {
          v158 = 0;
        }

        v137 = depthNormalTexture;
        *destinationTexture2 = v158;
        v141 = *destinationTexture;
        *destinationTexture = v114;
LABEL_60:
        v159 = *destinationTexture2;
        *destinationTexture2 = v115;
        v115 = v159;
        goto LABEL_61;
      }

      v141 = v150;
      *destinationTexture = v114;
      v137 = depthNormalTexture;
LABEL_61:
      ++v138;
      v114 = v141;
      if (v138 >= self->_bilateralFilterIterations)
      {
        goto LABEL_64;
      }
    }

    *destinationTexture = v114;
    if (!destinationTexture2)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v141 = v114;
LABEL_64:
  objc_msgSend_returnTexture_(self->_textureAllocator, v122, *destinationTexture);
  if (destinationTexture2)
  {
    objc_msgSend_returnTexture_(self->_textureAllocator, v160, *destinationTexture2);
    *destinationTexture = v141;
    *destinationTexture2 = v115;
  }

  else
  {
    *destinationTexture = v141;
  }

  objc_autoreleasePoolPop(context);
}

- (id)encodeToCommandBuffer:(id)commandBuffer sourceTexture:(id)sourceTexture motionVectorTexture:(id)motionVectorTexture depthNormalTexture:(id)depthNormalTexture previousDepthNormalTexture:(id)previousDepthNormalTexture
{
  v8 = 0;
  objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_sourceTexture2_destinationTexture2_motionVectorTexture_depthNormalTexture_previousDepthNormalTexture_(self, a2, commandBuffer, sourceTexture, &v8, 0, 0, motionVectorTexture, depthNormalTexture, previousDepthNormalTexture);
  return v8;
}

@end