@interface MPSImagePyramid
- (MPSImagePyramid)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImagePyramid)initWithDevice:(id)device centerWeight:(float)centerWeight;
- (MPSImagePyramid)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImagePyramid

- (MPSImagePyramid)initWithDevice:(id)device centerWeight:(float)centerWeight
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = (centerWeight * -0.5) + 0.25;
  v6[0] = v4 * v4;
  v6[1] = v4 * 0.25;
  v6[2] = v4 * centerWeight;
  v6[3] = v4 * 0.25;
  v6[4] = v4 * v4;
  v6[5] = v4 * 0.25;
  v6[6] = 0.0625;
  v6[7] = centerWeight * 0.25;
  v6[8] = 0.0625;
  v6[9] = v4 * 0.25;
  v6[10] = v4 * centerWeight;
  v6[11] = centerWeight * 0.25;
  v6[12] = centerWeight * centerWeight;
  v6[13] = centerWeight * 0.25;
  v6[14] = v4 * centerWeight;
  v6[15] = v4 * 0.25;
  v6[16] = 0.0625;
  v6[17] = centerWeight * 0.25;
  v6[18] = 0.0625;
  v6[19] = v4 * 0.25;
  v6[20] = v4 * v4;
  v6[21] = v4 * 0.25;
  v6[22] = v4 * centerWeight;
  v6[23] = v4 * 0.25;
  v6[24] = v4 * v4;
  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(self, a2, device, 5, 5, v6);
}

- (MPSImagePyramid)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights
{
  v20.receiver = self;
  v20.super_class = MPSImagePyramid;
  v9 = [(MPSUnaryImageKernel *)&v20 initWithDevice:device];
  v10 = v9;
  if (v9)
  {
    if (kernelWidth)
    {
      if (kernelHeight)
      {
        if (kernelWidth >= 0xA)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_21;
          }
        }

        else if (kernelHeight >= 0xA)
        {
          if (MTLReportFailureTypeEnabled())
          {
            goto LABEL_21;
          }
        }

        else
        {
          v9->_fWidth = kernelWidth;
          v9->_fHeight = kernelHeight;
          v9->super._encode = 0;
          v9->super._encodeData = v9;
          v9->wtArray = 0;
          v9->wtBuffer = 0;
          v9->wtArrayh = 0;
          v9->wtBufferh = 0;
          v11 = *MEMORY[0x277CD7350];
          v12 = sub_23994B904(*(&v9->super.super.super.isa + v11), kernelWeights, kernelWidth, kernelHeight, 0, 0, 0);
          v10->separable = v12;
          if (!v12)
          {
            v16 = kernelHeight * kernelWidth;
            v17 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
            v10->wtArray = v17;
            memcpy(v17, kernelWeights, 4 * v16);
            v10->wtArrayh = malloc_type_malloc(2 * v16, 0x1000040BDFB0063uLL);
            MPSConvertFloatToHalf();
            return v10;
          }

          v13 = malloc_type_malloc(4 * kernelWidth, 0x100004052888210uLL);
          v14 = malloc_type_malloc(4 * kernelHeight, 0x100004052888210uLL);
          sub_23994B904(*(&v10->super.super.super.isa + v11), kernelWeights, kernelWidth, kernelHeight, 0, v13, v14);
          v15 = malloc_type_malloc(4 * (kernelHeight + kernelWidth), 0x100004052888210uLL);
          v10->wtArray = v15;
          if (v15)
          {
            memcpy(v15, v13, 4 * kernelWidth);
            memcpy(&v10->wtArray[kernelWidth], v14, 4 * kernelHeight);
            v10->wtArrayh = malloc_type_malloc(2 * (kernelHeight + kernelWidth), 0x1000040BDFB0063uLL);
            MPSConvertFloatToHalf();
            free(v13);
            free(v14);
            return v10;
          }

          if (MTLReportFailureTypeEnabled())
          {
            v19 = objc_opt_class();
            NSStringFromClass(v19);
LABEL_21:
            MTLReportFailure();
          }
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_21;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_21;
    }

    return 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v35.receiver = self;
  v35.super_class = MPSImagePyramid;
  v5 = [(MPSUnaryImageKernel *)&v35 copyWithZone:zone device:device];
  v8 = v5;
  if (v5)
  {
    v5[30] = self->_fWidth;
    v5[31] = self->_fHeight;
    v5[28] = 0;
    v5[26] = 0;
    v5[29] = 0;
    v5[27] = 0;
    *(v5 + 256) = self->separable;
    wtBuffer = self->wtBuffer;
    if (wtBuffer)
    {
      v10 = *MEMORY[0x277CD7350];
      v11 = *(*(v8 + v10) + 16);
      if (v11 == (*(&self->super.super.super.isa + v10))[2])
      {
        v8[26] = wtBuffer;
        v24 = self->wtBuffer;
      }

      else
      {
        v12 = objc_msgSend_contents(wtBuffer, v6, v7);
        v15 = objc_msgSend_length(self->wtBuffer, v13, v14);
        v8[26] = objc_msgSend_newBufferWithBytes_length_options_(v11, v16, v12, v15, 0);
        v19 = objc_msgSend_contents(self->wtBufferh, v17, v18);
        v22 = objc_msgSend_length(self->wtBufferh, v20, v21);
        v24 = objc_msgSend_newBufferWithBytes_length_options_(v11, v23, v19, v22, 0);
      }

      v8[27] = v24;
    }

    if (self->wtArray)
    {
      fWidth = self->_fWidth;
      fHeight = self->_fHeight;
      v27 = fHeight + fWidth;
      v28 = fHeight * fWidth;
      if (self->separable)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      v30 = 4 * v29;
      v31 = 2 * v29;
      v32 = malloc_type_malloc(4 * v29, 0x100004052888210uLL);
      v8[28] = v32;
      memcpy(v32, self->wtArray, v30);
      v33 = malloc_type_malloc(v31, 0x1000040BDFB0063uLL);
      v8[29] = v33;
      memcpy(v33, self->wtArrayh, v31);
    }
  }

  return v8;
}

- (MPSImagePyramid)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v46.receiver = self;
  v46.super_class = MPSImagePyramid;
  v6 = [MPSUnaryImageKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v8 = v6;
  if (!v6)
  {
    return v8;
  }

  if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
LABEL_24:

      return 0;
    }

    goto LABEL_20;
  }

  v6->_fWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSImagePyramid._fWidth");
  v8->_fHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSImagePyramid._fHeight");
  v8->separable = objc_msgSend_decodeBoolForKey_(aDecoder, v10, @"MPSImagePyramid.separable");
  v12 = objc_msgSend_decodeBoolForKey_(aDecoder, v11, @"MPSImagePyramid.UseBuffers");
  v8->super._encode = 0;
  v8->super._encodeData = v8;
  v8->wtArray = 0;
  v8->wtBuffer = 0;
  v8->wtArrayh = 0;
  v8->wtBufferh = 0;
  fWidth = v8->_fWidth;
  fHeight = v8->_fHeight;
  v16 = fHeight + fWidth;
  v17 = fHeight * fWidth;
  if (v8->separable)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  if (4 * v18 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if (2 * v18 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

LABEL_20:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
LABEL_21:
    MTLReportFailure();
    goto LABEL_24;
  }

  v43 = v12;
  v45 = 0;
  v19 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v13, @"MPSImagePyramid.wtArray", &v45);
  v44 = 0;
  v21 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v20, @"MPSImagePyramid.wtHalfArray", &v44);
  if (v45 != 4 * v18)
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    objc_msgSend_cStringUsingEncoding_(v32, v33, 1);
    sub_239956830(v8, v34, "[%s initWithCoder:device:] failed. Weights %lux%lu array was the wrong size. (%lu bytes) Is the file truncated?");
    goto LABEL_24;
  }

  if (v44 != 2 * v18)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    objc_msgSend_cStringUsingEncoding_(v36, v37, 1);
    sub_239956830(v8, v38, "[%s initWithCoder:device:] failed. Half Weights %lux%lu array was the wrong size. (%lu bytes) Is the file truncated?");
    goto LABEL_24;
  }

  v22 = v21;
  v23 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
  MPSCopyToFromNetworkByteOrder32();
  v24 = malloc_type_malloc(2 * v18, 0x1000040BDFB0063uLL);
  MPSCopyToFromNetworkByteOrder16();
  if (v43)
  {
    v8->wtBuffer = objc_msgSend_newBufferWithBytes_length_options_(device, v25, v23, 4 * v18, 0);
    v27 = objc_msgSend_newBufferWithBytes_length_options_(device, v26, v24, 2 * v18, 0);
    v8->wtBufferh = v27;
    if (v8->wtBuffer)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = !v28;
    if (v23 == v19)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v40 = malloc_type_malloc(4 * v18, 0x100004052888210uLL);
  v8->wtArray = v40;
  memcpy(v40, v23, 4 * v18);
  v41 = malloc_type_malloc(2 * v18, 0x1000040BDFB0063uLL);
  v8->wtArrayh = v41;
  memcpy(v41, v24, 2 * v18);
  if (v8->wtArray)
  {
    v29 = v8->wtArrayh != 0;
    if (v23 == v19)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v29 = 0;
  if (v23 != v19)
  {
LABEL_28:
    free(v23);
  }

LABEL_29:
  if (v24 != v22)
  {
    free(v24);
  }

  if (!v29)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

    v42 = objc_opt_class();
    NSStringFromClass(v42);
    goto LABEL_21;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v27.receiver = self;
  v27.super_class = MPSImagePyramid;
  [(MPSUnaryImageKernel *)&v27 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_fWidth, @"MPSImagePyramid._fWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_fHeight, @"MPSImagePyramid._fHeight");
  objc_msgSend_encodeBool_forKey_(coder, v7, self->separable, @"MPSImagePyramid.separable");
  wtBuffer = self->wtBuffer;
  objc_msgSend_encodeBool_forKey_(coder, v9, wtBuffer != 0, @"MPSImagePyramid.UseBuffers");
  fWidth = self->_fWidth;
  fHeight = self->_fHeight;
  v12 = fHeight + fWidth;
  v13 = fHeight * fWidth;
  if (self->separable)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = malloc_type_malloc(4 * v14, 0x100004052888210uLL);
  v16 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
  v19 = v16;
  if (v15)
  {
    v20 = v16 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20 && MTLReportFailureTypeEnabled())
  {
    v26 = objc_opt_class();
    NSStringFromClass(v26);
    MTLReportFailure();
  }

  if (v15)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    if (wtBuffer)
    {
      objc_msgSend_contents(self->wtBuffer, v17, v18);
      MPSCopyToFromNetworkByteOrder32();
      objc_msgSend_contents(self->wtBufferh, v22, v23);
    }

    else
    {
      MPSCopyToFromNetworkByteOrder32();
    }

    MPSCopyToFromNetworkByteOrder16();
    objc_msgSend_encodeBytes_length_forKey_(coder, v24, v15, 4 * v14, @"MPSImagePyramid.wtArray");
    objc_msgSend_encodeBytes_length_forKey_(coder, v25, v19, 2 * v14, @"MPSImagePyramid.wtHalfArray");
    free(v15);
LABEL_21:
    free(v19);
    return;
  }

  if (v15)
  {
    free(v15);
  }

  if (v19)
  {
    goto LABEL_21;
  }
}

- (void)dealloc
{
  wtArray = self->wtArray;
  if (wtArray)
  {
    free(wtArray);
  }

  wtBuffer = self->wtBuffer;
  if (wtBuffer)
  {
  }

  wtArrayh = self->wtArrayh;
  if (wtArrayh)
  {
    free(wtArrayh);
  }

  wtBufferh = self->wtBufferh;
  if (wtBufferh)
  {
  }

  v7.receiver = self;
  v7.super_class = MPSImagePyramid;
  [(MPSKernel *)&v7 dealloc];
}

@end