@interface MPSImageConvolution
- (MPSImageConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageConvolution)initWithDevice:(id)device;
- (MPSImageConvolution)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights;
- (MPSImageConvolution)initWithDevice_private:(id)device_private;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights;
@end

@implementation MPSImageConvolution

- (MPSImageConvolution)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(self, v5, device, 1, 1, self);
}

- (MPSImageConvolution)initWithDevice_private:(id)device_private
{
  v4.receiver = self;
  v4.super_class = MPSImageConvolution;
  return [(MPSUnaryImageKernel *)&v4 initWithDevice:device_private];
}

- (void)initFilterWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height weights:(const float *)weights
{
  self->_fWidth = width;
  self->_fHeight = height;
  self->_fBias = 0.0;
  self->super._encode = sub_239947F3C;
  self->super._encodeData = self;
  self->wtArray = 0;
  self->wtBuffer = 0;
  self->wtArrayh = 0;
  self->wtBufferh = 0;
  self->separable = 0;
  self->_laplacian = 0;
  v9 = 4 * width;
  v10 = 4 * width * height;
  v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
  self->kOrigWeights = v11;
  memcpy(v11, weights, v10);
  if (width == 3 && height == 3 && *weights == 0.0 && weights[2] == 0.0 && weights[6] == 0.0 && weights[8] == 0.0)
  {
    self->specialFilterType = 1;
    v12 = [MPSImageLaplacian alloc];
    v13 = *MEMORY[0x277CD7350];
    v14 = *MEMORY[0x277CD7350];
    self->_laplacian = objc_msgSend_initWithDevice_(v12, v15, (*(&self->super.super.super.isa + v14))[2]);
    if (self->specialFilterType)
    {
      if (!self->separable)
      {
        goto LABEL_17;
      }

      goto LABEL_13;
    }
  }

  else
  {
    self->specialFilterType = 0;
    v13 = *MEMORY[0x277CD7350];
    v14 = *MEMORY[0x277CD7350];
  }

  v17 = sub_23994B904(*(&self->super.super.super.isa + v14), weights, width, height, 0, 0, 0);
  self->separable = v17;
  if (!v17)
  {
LABEL_17:
    if (height * width < 0x401)
    {
      v39 = malloc_type_malloc(v10, 0x100004052888210uLL);
      self->wtArray = v39;
      memcpy(v39, weights, v10);
      self->wtArrayh = malloc_type_malloc(2 * width * height, 0x1000040BDFB0063uLL);
    }

    else
    {
      self->wtBuffer = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + v13))[2], v16, weights, v10, 0);
      v25 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v13))[2], v24, 2 * width * height, 0);
      self->wtBufferh = v25;
      objc_msgSend_contents(v25, v26, v27);
      objc_msgSend_contents(self->wtBuffer, v28, v29);
    }

    MPSConvertFloatToHalf();
    return;
  }

  v14 = v13;
LABEL_13:
  v18 = malloc_type_malloc(v9, 0x100004052888210uLL);
  v19 = 4 * height;
  v20 = malloc_type_malloc(4 * height, 0x100004052888210uLL);
  sub_23994B904(*(&self->super.super.super.isa + v14), weights, width, height, 0, v18, v20);
  if (width > 0x400 || height >= 0x401)
  {
    v30 = height + width;
    v31 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v14))[2], v21, 4 * v30, 0);
    self->wtBuffer = v31;
    v34 = objc_msgSend_contents(v31, v32, v33);
    memcpy(v34, v18, v9);
    memcpy(&v34[4 * width], v20, v19);
    v36 = objc_msgSend_newBufferWithLength_options_((*(&self->super.super.super.isa + v14))[2], v35, 2 * v30, 0);
    self->wtBufferh = v36;
    objc_msgSend_contents(v36, v37, v38);
  }

  else
  {
    v22 = height + width;
    v23 = malloc_type_malloc(4 * v22, 0x100004052888210uLL);
    self->wtArray = v23;
    if (!v23 && MTLReportFailureTypeEnabled())
    {
      v40 = objc_opt_class();
      NSStringFromClass(v40);
      MTLReportFailure();
    }

    memcpy(self->wtArray, v18, v9);
    memcpy(&self->wtArray[width], v20, v19);
    self->wtArrayh = malloc_type_malloc(2 * v22, 0x1000040BDFB0063uLL);
  }

  MPSConvertFloatToHalf();
  free(v18);

  free(v20);
}

- (MPSImageConvolution)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight weights:(const float *)kernelWeights
{
  v13.receiver = self;
  v13.super_class = MPSImageConvolution;
  result = [(MPSUnaryImageKernel *)&v13 initWithDevice:device];
  if (result)
  {
    if (kernelWidth)
    {
      if (kernelHeight)
      {
        v11 = result;
        objc_msgSend_initFilterWithKernelWidth_kernelHeight_weights_(result, v10, kernelWidth, kernelHeight, kernelWeights);
        return v11;
      }

      v12 = result;
      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = result;
      if (MTLReportFailureTypeEnabled())
      {
LABEL_9:
        MTLReportFailure();
      }
    }

    return 0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v36.receiver = self;
  v36.super_class = MPSImageConvolution;
  v5 = [(MPSUnaryImageKernel *)&v36 copyWithZone:zone device:device];
  v6 = v5;
  if (v5)
  {
    *(v5 + 66) = LODWORD(self->_fBias);
    v5[31] = self->_fWidth;
    v5[32] = self->_fHeight;
    v5[29] = 0;
    v5[26] = 0;
    v5[30] = 0;
    v5[27] = 0;
    *(v5 + 268) = self->separable;
    v5[34] = self->specialFilterType;
    v5[35] = self->_laplacian;
    wtBuffer = self->wtBuffer;
    if (wtBuffer)
    {
      v10 = *MEMORY[0x277CD7350];
      v11 = *(*(v6 + v10) + 16);
      if (v11 == (*(&self->super.super.super.isa + v10))[2])
      {
        v6[26] = wtBuffer;
        v24 = self->wtBuffer;
      }

      else
      {
        v12 = objc_msgSend_contents(wtBuffer, v7, v8);
        v15 = objc_msgSend_length(self->wtBuffer, v13, v14);
        v6[26] = objc_msgSend_newBufferWithBytes_length_options_(v11, v16, v12, v15, 0);
        v19 = objc_msgSend_contents(self->wtBufferh, v17, v18);
        v22 = objc_msgSend_length(self->wtBufferh, v20, v21);
        v24 = objc_msgSend_newBufferWithBytes_length_options_(v11, v23, v19, v22, 0);
      }

      v6[27] = v24;
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
      v6[29] = v32;
      memcpy(v32, self->wtArray, v30);
      v33 = malloc_type_malloc(v31, 0x1000040BDFB0063uLL);
      v6[30] = v33;
      memcpy(v33, self->wtArrayh, v31);
    }

    if (self->kOrigWeights)
    {
      v34 = malloc_type_malloc(4 * self->_fWidth * self->_fHeight, 0x100004052888210uLL);
      v6[28] = v34;
      memcpy(v34, self->kOrigWeights, 4 * self->_fWidth * self->_fHeight);
    }
  }

  return v6;
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

  kOrigWeights = self->kOrigWeights;
  if (kOrigWeights)
  {
    free(kOrigWeights);
  }

  laplacian = self->_laplacian;
  if (laplacian)
  {
  }

  v9.receiver = self;
  v9.super_class = MPSImageConvolution;
  [(MPSKernel *)&v9 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = MPSImageConvolution;
  v4 = [(MPSUnaryImageKernel *)&v10 debugDescription];
  fWidth = self->_fWidth;
  fHeight = self->_fHeight;
  fBias = self->_fBias;
  if (self->separable)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu\n\tbias:          %f\n\tIs separable:  %s", v4, fWidth, fHeight, *&fBias, "YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu\n\tbias:          %f\n\tIs separable:  %s", v4, fWidth, fHeight, *&fBias, "NO");
  }
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageConvolution;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_fWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v10.receiver = self;
  v10.super_class = MPSImageConvolution;
  [(MPSUnaryImageKernel *)&v10 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_fWidth, @"MPSConvolution.kernelWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_fHeight, @"MPSConvolution.kernelHeight");
  objc_msgSend_encodeBytes_length_forKey_(coder, v7, self->kOrigWeights, 4 * self->_fWidth * self->_fHeight, @"MPSConvolution.kernelWeights");
  *&v8 = self->_fBias;
  objc_msgSend_encodeFloat_forKey_(coder, v9, @"MPSConvolution.bias", v8);
}

- (MPSImageConvolution)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v19.receiver = self;
  v19.super_class = MPSImageConvolution;
  v5 = [(MPSUnaryImageKernel *)&v19 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (v5)
  {
    if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v8 = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSConvolution.kernelWidth");
      v10 = objc_msgSend_decodeInt64ForKey_(aDecoder, v9, @"MPSConvolution.kernelHeight");
      v18 = 0;
      v13 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v11, @"MPSConvolution.kernelWeights", &v18);
      if (v18 != 4 * v8 * v10 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      objc_msgSend_initFilterWithKernelWidth_kernelHeight_weights_(v7, v12, v8, v10, v13);
      objc_msgSend_decodeFloatForKey_(aDecoder, v14, @"MPSConvolution.bias");
      v7->_fBias = v15;
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v16 = objc_opt_class();
        NSStringFromClass(v16);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v7;
}

@end