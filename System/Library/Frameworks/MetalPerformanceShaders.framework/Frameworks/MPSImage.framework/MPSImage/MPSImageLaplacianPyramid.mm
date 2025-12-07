@interface MPSImageLaplacianPyramid
- (BOOL)isValidDstPixelFormat:(unint64_t)format srcPixelFormat:(unint64_t)pixelFormat;
- (MPSImageLaplacianPyramid)initWithCoder:(id)coder device:(id)device;
- (MPSImageLaplacianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)cleanUpAll;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)zeroInitAll;
@end

@implementation MPSImageLaplacianPyramid

- (void)zeroInitAll
{
  *&self->_derivedState.padHeight = 0u;
  *&self->_derivedState.h_WeightsRawFull = 0u;
  *&self->_derivedState.d_WeightsRawFull = 0u;
  LODWORD(self[1].super.super.super.super.isa) = 2113961472;
  v2 = vneg_f32(0x3F0000003FLL);
  self->_derivedState.linearScaleFull = v2;
  self->_state.filterWidth = 0;
  self->_state.weights = 0;
  self->_state.filterHeight = 0;
  self->_state.isPyramidAdd = 0;
  *&self->_state.laplacianBias = v2;
  self->_autotuningState.enabled = 0;
  self->_autotuningState.copyConfigs = 0;
  self->_autotuningState.upsampleConfigs = 0;
  self->_autotuningState.copyConfigID = -1;
  self->_autotuningState.upsampleConfigID = -1;
}

- (void)cleanUpAll
{
  selfCopy = self;
  p_derivedState = &self->_derivedState;

  selfCopy = (selfCopy + 264);
  verbosityLevel = selfCopy->super.super.super._verbosityLevel;
}

- (BOOL)isValidDstPixelFormat:(unint64_t)format srcPixelFormat:(unint64_t)pixelFormat
{
  v6 = *MEMORY[0x277CD7350];
  PixelInfo = MPSDevice::GetPixelInfo(*(&self->super.super.super.super.isa + v6), format, MPSImageFeatureChannelFormatNone);
  v8 = MPSDevice::GetPixelInfo(*(&self->super.super.super.super.isa + v6), pixelFormat, MPSImageFeatureChannelFormatNone);
  v9 = BYTE3(PixelInfo) & 0xF;
  if ((PixelInfo & 0xE000000) == 0)
  {
    v9 = 1;
  }

  if ((v8 & 0xE000000) != 0)
  {
    v10 = BYTE3(v8) & 0xF;
  }

  else
  {
    v10 = 1;
  }

  return ((v8 ^ PixelInfo) & 0xFF00000000) == 0 && v9 == v10;
}

- (MPSImageLaplacianPyramid)initWithDevice:(id)device kernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  v34.receiver = self;
  v34.super_class = MPSImageLaplacianPyramid;
  v10 = [MPSImagePyramid initWithDevice:sel_initWithDevice_kernelWidth_kernelHeight_weights_ kernelWidth:? kernelHeight:? weights:?];
  if (v10)
  {
    v32 = 0;
    v33 = 0;
    if (sub_2399425CC(&v33, &v32, v10 + 264, height, width) && (*(v10 + 38) = height, *(v10 + 39) = width, v10[328] = 0, *(v10 + 332) = 0x3F80000000000000, v11 = objc_alloc(MEMORY[0x277CBEA90]), v13 = objc_msgSend_initWithBytes_length_(v11, v12, weights, 4 * width * height), (*(v10 + 40) = v13) != 0) && (v15 = v32, v14 = v33, v16 = v32 * v33, v17 = 4 * v32 * v33, v18 = objc_alloc(MEMORY[0x277CBEB28]), v20 = objc_msgSend_initWithLength_(v18, v19, v17), (*(v10 + 45) = v20) != 0) && (v21 = 2 * v16, v22 = objc_alloc(MEMORY[0x277CBEB28]), v24 = objc_msgSend_initWithLength_(v22, v23, v21), (*(v10 + 46) = v24) != 0) && (v26 = objc_msgSend_newBufferWithLength_options_(device, v25, v17, 0), (*(v10 + 47) = v26) != 0) && (v28 = objc_msgSend_newBufferWithLength_options_(device, v27, v21, 0), (*(v10 + 48) = v28) != 0))
    {
      *(v10 + 43) = v14;
      *(v10 + 44) = v15;
      *(v10 + 22) = sub_239942D58;
      sub_23994204C(v10 + 86, v10 + 76, v29);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v10;
}

- (MPSImageLaplacianPyramid)initWithCoder:(id)coder device:(id)device
{
  v64.receiver = self;
  v64.super_class = MPSImageLaplacianPyramid;
  v6 = [MPSImagePyramid initWithCoder:sel_initWithCoder_device_ device:?];
  v9 = v6;
  if (v6)
  {
    v62 = 0;
    v63 = 0;
    v10 = objc_msgSend_kernelHeight(v6, v7, v8);
    v13 = objc_msgSend_kernelWidth(v9, v11, v12);
    if (sub_2399425CC(&v63, &v62, &v9->_autotuningState.enabled, v10, v13))
    {
      v16 = objc_msgSend_kernelHeight(v9, v14, v15);
      v19 = objc_msgSend_kernelWidth(v9, v17, v18);
      v20 = objc_alloc(MEMORY[0x277CBEB28]);
      v21 = v19 * v16;
      v23 = objc_msgSend_initWithLength_(v20, v22, 4 * v19 * v16);
      p_state = &v9->_state;
      v9->_state.weights = v23;
      if (v23)
      {
        if (v21)
        {
          v25 = v23;
          v26 = 0;
          while (1)
          {
            v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v24, @"MPSImageLaplacianPyramid.weights%lu", v26);
            objc_msgSend_decodeFloatForKey_(coder, v28, v27);
            *(objc_msgSend_mutableBytes(v25, v29, v30) + 4 * v26) = v31;
            if (objc_msgSend_error(coder, v32, v33))
            {
              break;
            }

            if (v21 == ++v26)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          *p_state = v16;
          v9->_state.filterWidth = v19;
          v9->_state.isPyramidAdd = objc_msgSend_decodeBoolForKey_(coder, v24, @"MPSImageLaplacianPyramid.isPyramidAdd");
          if (!objc_msgSend_error(coder, v34, v35))
          {
            objc_msgSend_decodeFloatForKey_(coder, v36, @"MPSImageLaplacianPyramid.laplacianBias");
            v9->_state.laplacianBias = v37;
            if (!objc_msgSend_error(coder, v38, v39))
            {
              objc_msgSend_decodeFloatForKey_(coder, v40, @"MPSImageLaplacianPyramid.laplacianScale");
              v9->_state.laplacianScale = v41;
              if (!objc_msgSend_error(coder, v42, v43))
              {
                v47 = v62;
                v46 = v63;
                v48 = v62 * v63;
                v49 = 4 * v62 * v63;
                v50 = objc_alloc(MEMORY[0x277CBEB28]);
                v52 = objc_msgSend_initWithLength_(v50, v51, v49);
                v9->_derivedState.h_WeightsRawFull = v52;
                if (v52)
                {
                  v53 = objc_alloc(MEMORY[0x277CBEB28]);
                  v55 = objc_msgSend_initWithLength_(v53, v54, 2 * v48);
                  v9->_derivedState.h_WeightsRawHalf = v55;
                  if (v55)
                  {
                    v57 = objc_msgSend_newBufferWithLength_options_(device, v56, v49, 0);
                    v9->_derivedState.d_WeightsRawFull = v57;
                    if (v57)
                    {
                      v59 = objc_msgSend_newBufferWithLength_options_(device, v58, 2 * v48, 0);
                      v9->_derivedState.d_WeightsRawHalf = v59;
                      if (v59)
                      {
                        v9->_derivedState.padHeight = v46;
                        v9->_derivedState.padWidth = v47;
                        v9->super.super._encode = sub_239942D58;
                        sub_23994204C(&v9->_derivedState, p_state, v60);
                        return v9;
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

    if (MTLReportFailureTypeEnabled())
    {
      v44 = objc_opt_class();
      NSStringFromClass(v44);
      MTLReportFailure();
    }

    return 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v37.receiver = self;
  v37.super_class = MPSImageLaplacianPyramid;
  v8 = [(MPSImagePyramid *)&v37 copyWithZone:zone device:?];
  if (v8)
  {
    v35 = 0;
    v36 = 0;
    v9 = objc_msgSend_kernelHeight(self, v6, v7);
    v12 = objc_msgSend_kernelWidth(self, v10, v11);
    if (sub_2399425CC(&v36, &v35, v8 + 264, v9, v12) && (v13 = *&self->_state.laplacianScale, v14 = *&self->_state.weights, *(v8 + 19) = *&self->_state.filterHeight, *(v8 + 20) = v14, *(v8 + 42) = v13, v15 = self->_state.weights, v16 = v8 + 86, v18 = v35, v17 = v36, v19 = v35 * v36, v20 = 4 * v35 * v36, v21 = objc_alloc(MEMORY[0x277CBEB28]), v23 = objc_msgSend_initWithLength_(v21, v22, v20), (*(v8 + 45) = v23) != 0) && (v24 = 2 * v19, v25 = objc_alloc(MEMORY[0x277CBEB28]), v27 = objc_msgSend_initWithLength_(v25, v26, v24), (*(v8 + 46) = v27) != 0) && (v29 = objc_msgSend_newBufferWithLength_options_(device, v28, v20, 0), (*(v8 + 47) = v29) != 0) && (v31 = objc_msgSend_newBufferWithLength_options_(device, v30, v24, 0), (*(v8 + 48) = v31) != 0))
    {
      *v16 = v17;
      *(v8 + 44) = v18;
      sub_23994204C(v16, &self->_state, v32);
      *(v8 + 22) = sub_239942D58;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v33 = objc_opt_class();
        NSStringFromClass(v33);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = MPSImageLaplacianPyramid;
  [(MPSImagePyramid *)&v16 encodeWithCoder:?];
  if (self->_state.filterWidth * self->_state.filterHeight)
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"MPSImageLaplacianPyramid.weights%lu", v6);
      LODWORD(v10) = *(objc_msgSend_bytes(self->_state.weights, v8, v9) + 4 * v6);
      objc_msgSend_encodeFloat_forKey_(coder, v11, v7, v10);
      ++v6;
    }

    while (v6 < self->_state.filterWidth * self->_state.filterHeight);
  }

  objc_msgSend_encodeBool_forKey_(coder, v5, self->_state.isPyramidAdd, @"MPSImageLaplacianPyramid.isPyramidAdd");
  *&v12 = self->_state.laplacianBias;
  objc_msgSend_encodeFloat_forKey_(coder, v13, @"MPSImageLaplacianPyramid.laplacianBias", v12);
  *&v14 = self->_state.laplacianScale;
  objc_msgSend_encodeFloat_forKey_(coder, v15, @"MPSImageLaplacianPyramid.laplacianScale", v14);
}

- (void)dealloc
{
  objc_msgSend_cleanUpAll(self, a2, v2);
  objc_msgSend_zeroInitAll(self, v4, v5);
  v6.receiver = self;
  v6.super_class = MPSImageLaplacianPyramid;
  [(MPSImagePyramid *)&v6 dealloc];
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v12 = *a4;
  v11.receiver = self;
  v11.super_class = MPSImageLaplacianPyramid;
  [(MPSRegion *)&v11 sourceRegionForDestinationSize:&v12];
  v10.receiver = self;
  v10.super_class = MPSImageLaplacianPyramid;
  retstr->origin.y = retstr->origin.y - ([(MPSRegion *)&v10 kernelHeight]>> 1);
  v9.receiver = self;
  v9.super_class = MPSImageLaplacianPyramid;
  retstr->origin.x = retstr->origin.x - ([(MPSRegion *)&v9 kernelWidth]>> 1);
  v8.receiver = self;
  v8.super_class = MPSImageLaplacianPyramid;
  retstr->size.height = retstr->size.height + ([(MPSRegion *)&v8 kernelHeight]- 1);
  v7.receiver = self;
  v7.super_class = MPSImageLaplacianPyramid;
  result = [(MPSRegion *)&v7 kernelWidth];
  retstr->size.width = retstr->size.width + (&result[-1].size.depth + 7);
  return result;
}

@end