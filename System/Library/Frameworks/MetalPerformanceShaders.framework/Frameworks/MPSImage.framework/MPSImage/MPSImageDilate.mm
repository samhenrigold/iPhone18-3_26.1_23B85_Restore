@interface MPSImageDilate
- (BOOL)initKernelValues:(const float *)values;
- (MPSImageDilate)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageDilate)initWithDevice:(id)device;
- (MPSImageDilate)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight values:(const float *)values;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageDilate

- (void)dealloc
{
  rleValues = self->_rleValues;
  if (rleValues)
  {
    free(rleValues);
    self->_rleValues = 0;
  }

  v4.receiver = self;
  v4.super_class = MPSImageDilate;
  [(MPSKernel *)&v4 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = MPSImageDilate;
  v4 = [(MPSUnaryImageKernel *)&v13 debugDescription];
  v7 = objc_msgSend_kernelWidth(self, v5, v6);
  v10 = objc_msgSend_kernelHeight(self, v8, v9);
  return objc_msgSend_stringWithFormat_(v3, v11, @"%@\n\tkernelWidth: %lu\n\tkernelHeight: %lu", v4, v7, v10);
}

- (BOOL)initKernelValues:(const float *)values
{
  kernelHeight = self->_kernelHeight;
  v6 = 6 * kernelHeight + 3;
  v7 = 4 * kernelHeight * self->_kernelWidth;
  rleValues = malloc_type_calloc(1uLL, (v6 & 0xFFFFFFFFFFFFFFFCLL) + v7, 0x1000040274DC3F3uLL);
  self->valuesOffset = v6 & 0xFFFC;
  self->headerSize = (v6 & 0xFFFFFFFC) + v7;
  memcpy(rleValues + (v6 & 0xFFFFFFFFFFFFFFFCLL), values, v7);
  v11 = self->_kernelHeight;
  if (!v11)
  {
    if (rleValues->var2 <= 1u)
    {
      var2 = 1;
    }

    else
    {
      var2 = rleValues->var2;
    }

LABEL_45:
    v30 = 1;
    v32 = var2;
    goto LABEL_46;
  }

  kernelWidth = self->_kernelWidth;
  if (kernelWidth)
  {
    v13 = 0;
    LODWORD(v10) = 1.0;
    do
    {
      v15 = 0;
      while (values[v15] == 1.0)
      {
        if (kernelWidth == ++v15)
        {
          v14 = &rleValues[v13];
          v14->var1 = kernelWidth;
          v14->var0 = kernelWidth;
          goto LABEL_4;
        }
      }

      v16 = &rleValues[v13];
      v16->var0 = v15;
      if (v15 >= kernelWidth - 1)
      {
        v17 = kernelWidth - 1;
      }

      else
      {
        v17 = v15;
      }

      v18 = v17 + 1;
      v19 = kernelWidth - 1;
      while (v19 > v15)
      {
        v20 = values[v19--];
        if (v20 != 1.0)
        {
          v18 = v19 + 2;
          break;
        }
      }

      v21 = 0;
      v16->var1 = v18;
      v16->var2 = 1;
      v9 = &values[kernelWidth >> 1];
      v22 = kernelWidth >> 1;
      do
      {
        if (values[v22] != 0.0)
        {
          break;
        }

        if (*&v9[4 * v21] != 0.0)
        {
          break;
        }

        v16->var2 = (2 * v21++) | 1;
        --v22;
      }

      while (v22 != -1);
LABEL_4:
      ++v13;
      values += kernelWidth;
    }

    while (v13 != v11);
  }

  else
  {
    if (v11 == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = v11 & 0xFFFFFFFFFFFFFFFELL;
      v25 = rleValues + 1;
      v26 = v11 & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v25[-1].var1 = 0;
        v25->var1 = 0;
        v25[-1].var0 = 0;
        v25->var0 = 0;
        v25 += 2;
        v26 -= 2;
      }

      while (v26);
      if (v11 == v24)
      {
        goto LABEL_31;
      }
    }

    v27 = v11 - v24;
    p_var1 = &rleValues[v24].var1;
    do
    {
      *p_var1 = 0;
      *(p_var1 - 1) = 0;
      p_var1 += 3;
      --v27;
    }

    while (v27);
  }

LABEL_31:
  v29 = v11 >> 1;
  if (rleValues[v11 >> 1].var2 <= 1u)
  {
    var2 = 1;
  }

  else
  {
    var2 = rleValues[v11 >> 1].var2;
  }

  if (v11 < 3)
  {
    goto LABEL_45;
  }

  v30 = 1;
  v31 = 5;
  v32 = var2;
  v33 = var2;
  do
  {
    v34 = v31 - 2;
    v35 = (v31 - 2) >> 1;
    if (v33 >= rleValues[v29 - v35].var2)
    {
      v33 = rleValues[v29 - v35].var2;
    }

    v36 = rleValues[v29 + v35].var2;
    if (v33 >= v36)
    {
      v33 = v36;
    }

    if (v33 * v34 > var2)
    {
      var2 = v33 * v34;
      v30 = v31 - 2;
      v32 = v33;
    }

    if (v31 > v11)
    {
      break;
    }

    v31 += 2;
  }

  while (v33);
LABEL_46:
  self->centerWidth = v32;
  self->centerHeight = v30;
  self->_rleValues = rleValues;
  rleBuf = self->_rleBuf;
  if (rleBuf)
  {

    rleValues = self->_rleValues;
  }

  v38 = *MEMORY[0x277CD7350];
  self->_rleBuf = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + v38))[2], v9, rleValues, self->headerSize, 0, v10);
  outerMax = self->_outerMax;
  if (outerMax)
  {
  }

  v40 = objc_alloc(self->_maxClass);
  v42 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v40, v41, (*(&self->super.super.super.isa + v38))[2], self->_kernelWidth, self->_kernelHeight);
  self->_outerMax = v42;
  if (v42)
  {
    if (self->_rleBuf)
    {
      innerMax = self->_innerMax;
      if (innerMax)
      {

        self->_innerMax = 0;
      }

      if (var2 < 2)
      {
        self->centerWidth = 1;
        self->centerHeight = 1;
      }

      else
      {
        v44 = objc_alloc(self->_maxClass);
        v42 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v44, v45, (*(&self->super.super.super.isa + v38))[2], self->centerWidth, self->centerHeight);
        self->_innerMax = v42;
        if (!v42)
        {
          return v42;
        }
      }

      LOBYTE(v42) = 1;
    }

    else
    {
      LOBYTE(v42) = 0;
    }
  }

  return v42;
}

- (MPSImageDilate)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight values:(const float *)values
{
  v18.receiver = self;
  v18.super_class = MPSImageDilate;
  v9 = [(MPSUnaryImageKernel *)&v18 initWithDevice:device];
  v12 = v9;
  if (v9)
  {
    v9->_rleValues = 0;
    v9->_rleBuf = 0;
    v9->_kernelHeight = kernelHeight;
    v9->_kernelWidth = kernelWidth;
    v9->kernel = 0;
    v9->_maxClass = objc_msgSend_maxClass(v9, v10, v11);
    v12->super._encode = sub_23994DF48;
    v12->super._encodeData = v12;
    if (values)
    {
      v14 = v12->_kernelHeight;
      if (v14)
      {
        v15 = v12->_kernelWidth;
        if (v15)
        {
          if (v14 >= 0x10000)
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_24;
            }
          }

          else if (v15 >= 0x10000)
          {
            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_24;
            }
          }

          else
          {
            if ((4 * v15 + 6) * v14 < 0xFFFD)
            {
              if (objc_msgSend_initKernelValues_(v12, v13, values))
              {
                return v12;
              }

              if (MTLReportFailureTypeEnabled())
              {
                goto LABEL_23;
              }

LABEL_24:

              return 0;
            }

            if (!MTLReportFailureTypeEnabled())
            {
              goto LABEL_24;
            }
          }
        }

        else if (!MTLReportFailureTypeEnabled())
        {
          goto LABEL_24;
        }
      }

      else if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_24;
      }
    }

    else if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_24;
    }

LABEL_23:
    v17 = objc_opt_class();
    NSStringFromClass(v17);
    MTLReportFailure();
    goto LABEL_24;
  }

  return v12;
}

- (MPSImageDilate)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return MEMORY[0x2821F9670](self, sel_initWithDevice_kernelWidth_kernelHeight_values_, device);
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v18.receiver = self;
  v18.super_class = MPSImageDilate;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v8 = v7;
  if (v7)
  {
    if ((v7[35] = self->_kernelHeight, v7[34] = self->_kernelWidth, *(v7 + 60) = self->kernel, v7[31] = self->_maxClass, *(v7 + 64) = self->headerSize, *(v7 + 65) = self->valuesOffset, *(v7 + 132) = self->centerWidth, *(v7 + 133) = self->centerHeight, v7[28] = 0, v7[29] = 0, v7[27] = 0, v7[26] = 0, (v9 = malloc_type_malloc(self->headerSize, 0x1000040274DC3F3uLL)) == 0) || (v10 = v9, memcpy(v9, self->_rleValues, self->headerSize), v8[26] = v10, v8[27] = objc_msgSend_newBufferWithBytes_length_options_((*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], v11, v10, self->headerSize, 0), (outerMax = self->_outerMax) != 0) && (v14 = objc_msgSend_copyWithZone_device_(outerMax, v12, zone, device), (v8[28] = v14) == 0) || (innerMax = self->_innerMax) != 0 && (v16 = objc_msgSend_copyWithZone_device_(innerMax, v12, zone, device), (v8[29] = v16) == 0))
    {

      return 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v12.receiver = self;
  v12.super_class = MPSImageDilate;
  [(MPSUnaryImageKernel *)&v12 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelWidth, @"MPSDilateErode.kernelWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_kernelHeight, @"MPSDilateErode.kernelHeight");
  v7 = 4 * self->_kernelWidth * self->_kernelHeight;
  v8 = malloc_type_malloc(v7, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    MPSCopyToFromNetworkByteOrder32();
    objc_msgSend_encodeBytes_length_forKey_(coder, v10, v9, v7, @"MPSDilateErode.kernel");
    free(v9);
  }

  else if (MTLReportFailureTypeEnabled())
  {
    v11 = objc_opt_class();
    NSStringFromClass(v11);
    MTLReportFailure();
  }
}

- (MPSImageDilate)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v23.receiver = self;
  v23.super_class = MPSImageDilate;
  v5 = [(MPSUnaryImageKernel *)&v23 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

LABEL_11:
    v19 = objc_opt_class();
    NSStringFromClass(v19);
LABEL_14:
    MTLReportFailure();
    goto LABEL_15;
  }

  v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSDilateErode.kernelWidth");
  v7->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSDilateErode.kernelHeight");
  v7->kernel = 0;
  v7->_maxClass = objc_msgSend_maxClass(v7, v9, v10);
  v7->super._encode = sub_23994DF48;
  v7->super._encodeData = v7;
  v7->_rleValues = 0;
  v7->_rleBuf = 0;
  kernelHeight = v7->_kernelHeight;
  v13 = 4 * kernelHeight * v7->_kernelWidth;
  if (v13 + 6 * kernelHeight + 3 >= 0x10000)
  {
    if (!MTLReportFailureTypeEnabled())
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v22 = 0;
  v14 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v11, @"MPSDilateErode.kernel", &v22);
  if (v22 != v13)
  {
    if (MTLReportFailureTypeEnabled())
    {
LABEL_13:
      v20 = objc_opt_class();
      NSStringFromClass(v20);
      goto LABEL_14;
    }

LABEL_15:

    return 0;
  }

  v15 = v14;
  v16 = malloc_type_malloc(v13, 0x100004052888210uLL);
  MPSCopyToFromNetworkByteOrder32();
  inited = objc_msgSend_initKernelValues_(v7, v17, v16);
  if (v16 != v15)
  {
    free(v16);
  }

  if ((inited & 1) == 0)
  {
    if (MTLReportFailureTypeEnabled())
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  return v7;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageDilate;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end