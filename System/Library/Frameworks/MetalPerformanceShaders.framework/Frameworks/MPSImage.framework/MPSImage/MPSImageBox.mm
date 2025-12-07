@interface MPSImageBox
- (MPSImageBox)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageBox)initWithDevice:(id)device;
- (MPSImageBox)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterInfo;
@end

@implementation MPSImageBox

- (void)initFilterInfo
{
  v33 = *MEMORY[0x277D85DE8];
  self->filterInfoH = 0;
  self->filterInfoV = 1;
  self->hPass = 0;
  self->vPass = 0;
  kernelWidth = self->_kernelWidth;
  v5 = MEMORY[0x277CD7350];
  if (kernelWidth > 9)
  {
    kernelHeight = self->_kernelHeight;
    if (kernelHeight > 7)
    {
      return;
    }

LABEL_34:
    if (kernelHeight)
    {
      *v2.i32 = 1.0 / kernelHeight;
      v18 = vdupq_n_s64(kernelHeight - 1);
      v19 = vmovn_s64(vcgeq_u64(v18, xmmword_2399888A0));
      if (vuzp1_s16(v19, v2).u8[0])
      {
        v24 = 1.0 / kernelHeight;
      }

      v20 = kernelHeight + 3;
      if (vuzp1_s16(v19, v2).i8[2])
      {
        v25 = *v2.i32;
      }

      if ((vuzp1_s16(v2, vmovn_s64(vcgeq_u64(v18, xmmword_2399888F0))).i32[1] & 1) == 0)
      {
        if ((v20 & 0xC) == 4)
        {
          goto LABEL_49;
        }

LABEL_43:
        v21 = vmovn_s64(vcgtq_u64(v18, xmmword_2399888C0));
        if (vuzp1_s16(v21, v2).u8[0])
        {
          v28 = *v2.i32;
        }

        if (vuzp1_s16(v21, v2).i8[2])
        {
          v29 = *v2.i32;
        }

        if (vuzp1_s16(v2, vmovn_s64(vcgtq_u64(v18, xmmword_2399888D0))).i32[1])
        {
          v30 = *v2.i32;
          v31 = *v2.i32;
        }

        goto LABEL_49;
      }

      v26 = *v2.i32;
      v27 = *v2.i32;
      if ((v20 & 0xC) != 4)
      {
        goto LABEL_43;
      }
    }

LABEL_49:
    v22 = [MPSImageConvolution alloc];
    self->vPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v22, v23, (*(&self->super.super.super.isa + *v5))[2], 1, self->_kernelHeight, &v24);
    return;
  }

  if (kernelWidth)
  {
    v7 = 1.0 / kernelWidth;
    v8 = vdupq_n_s64(kernelWidth - 1);
    v9 = kernelWidth + 1;
    v10 = vmovn_s64(vcgeq_u64(v8, xmmword_2399888A0));
    if (v10.i8[0])
    {
      v24 = v7;
      v11 = v9 & 0x1E;
      if ((v10.i8[4] & 1) == 0)
      {
LABEL_7:
        if (v11 == 2)
        {
          goto LABEL_33;
        }

LABEL_11:
        v12 = vmovn_s64(vcgtq_u64(v8, xmmword_2399888B0));
        if (v12.i8[0])
        {
          v26 = v7;
          if ((v12.i8[4] & 1) == 0)
          {
LABEL_13:
            if (v11 == 4)
            {
              goto LABEL_33;
            }

LABEL_17:
            v13 = vmovn_s64(vcgtq_u64(v8, xmmword_2399888C0));
            if (v13.i8[0])
            {
              v28 = v7;
              if ((v13.i8[4] & 1) == 0)
              {
LABEL_19:
                if (v11 == 6)
                {
                  goto LABEL_33;
                }

LABEL_23:
                v14 = vmovn_s64(vcgtq_u64(v8, xmmword_2399888D0));
                if (v14.i8[0])
                {
                  v30 = v7;
                  if ((v14.i8[4] & 1) == 0)
                  {
LABEL_25:
                    if (v11 == 8)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_29;
                  }
                }

                else if ((v14.i8[4] & 1) == 0)
                {
                  goto LABEL_25;
                }

                v31 = v7;
                if (v11 == 8)
                {
                  goto LABEL_33;
                }

LABEL_29:
                v15 = vmovn_s64(vcgtq_u64(v8, xmmword_2399888E0));
                if (v15.i8[0])
                {
                  v32 = v7;
                }

                if (v15.i8[4])
                {
                  *&v33 = v7;
                }

                goto LABEL_33;
              }
            }

            else if ((v13.i8[4] & 1) == 0)
            {
              goto LABEL_19;
            }

            v29 = v7;
            if (v11 == 6)
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        else if ((v12.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v27 = v7;
        if (v11 == 4)
        {
          goto LABEL_33;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v11 = v9 & 0x1E;
      if ((v10.i8[4] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v25 = v7;
    if (v11 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

LABEL_33:
  v16 = [MPSImageConvolution alloc];
  self->hPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v16, v17, (*(&self->super.super.super.isa + *v5))[2], self->_kernelWidth, 1, &v24);
  kernelHeight = self->_kernelHeight;
  if (kernelHeight <= 7)
  {
    goto LABEL_34;
  }
}

- (void)dealloc
{
  objc_msgSend_dealloc(self->vPass, a2, v2);
  objc_msgSend_dealloc(self->hPass, v4, v5);
  v6.receiver = self;
  v6.super_class = MPSImageBox;
  [(MPSKernel *)&v6 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageBox;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tkernel width:  %lu\n\tkernel height: %lu", v4, self->_kernelWidth, self->_kernelHeight);
}

- (MPSImageBox)initWithDevice:(id)device
{
  if (MTLReportFailureTypeEnabled())
  {
    v6 = objc_opt_class();
    NSStringFromClass(v6);
    MTLReportFailure();
  }

  return objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(self, v5, device, 1, 1);
}

- (MPSImageBox)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight
{
  v16.receiver = self;
  v16.super_class = MPSImageBox;
  result = [(MPSUnaryImageKernel *)&v16 initWithDevice:device];
  if (result)
  {
    if (kernelWidth & kernelHeight)
    {
      result->_kernelHeight = kernelHeight;
      result->_kernelWidth = kernelWidth;
      result->super._encode = sub_239950048;
      result->super._encodeData = result;
      v10 = *MEMORY[0x277CD7350];
      if (((*(&result->super.super.super.isa + v10))[1477] & 4) != 0)
      {
        result->super._getPreferredTileSize = sub_239950F68;
        v12 = *(&result->super.super.super.isa + v10);
        v13 = *(v12 + 1472);
        if (v13 < 12)
        {
          if (v13 < 7)
          {
LABEL_11:
            v14 = result;
            objc_msgSend_initFilterInfo(result, v8, v9);
            return v14;
          }
        }

        else
        {
          v11 = sub_239951064;
          if (*(v12 + 1480) > 6uLL)
          {
            goto LABEL_10;
          }
        }

        v11 = sub_2399511EC;
      }

      else
      {
        v11 = 0;
      }

LABEL_10:
      result->super._getPreferredTileSize = v11;
      goto LABEL_11;
    }

    v15 = result;
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    return 0;
  }

  return result;
}

- (MPSImageBox)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v16.receiver = self;
  v16.super_class = MPSImageBox;
  v5 = [(MPSUnaryImageKernel *)&v16 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 != 0x10000)
  {
    if (MTLReportFailureTypeEnabled())
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure();
    }

    return 0;
  }

  v5->_kernelWidth = objc_msgSend_decodeInt64ForKey_(aDecoder, v6, @"MPSBoxTent.kernelWidth");
  v7->_kernelHeight = objc_msgSend_decodeInt64ForKey_(aDecoder, v8, @"MPSBoxTent.kernelHeight");
  v7->super._encode = sub_239950048;
  v7->super._encodeData = v7;
  v11 = *(&v7->super.super.super.isa + *MEMORY[0x277CD7350]);
  if ((*(v11 + 1477) & 4) != 0)
  {
    v15 = *(v11 + 1472) <= 6;
    v12 = sub_239950F68;
    if (!v15)
    {
      v12 = sub_2399511EC;
    }
  }

  else
  {
    v12 = 0;
  }

  v7->super._getPreferredTileSize = v12;
  objc_msgSend_initFilterInfo(v7, v9, v10);
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSImageBox;
  [(MPSUnaryImageKernel *)&v7 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(coder, v5, self->_kernelWidth, @"MPSBoxTent.kernelWidth");
  objc_msgSend_encodeInt64_forKey_(coder, v6, self->_kernelHeight, @"MPSBoxTent.kernelHeight");
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSImageBox;
  v7 = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  v9 = v7;
  if (v7)
  {
    v7[26] = self->_kernelWidth;
    v7[27] = self->_kernelHeight;
    *(v7 + 56) = self->filterInfoH;
    *(v7 + 57) = self->filterInfoV;
    hPass = self->hPass;
    if (hPass)
    {
      v9[29] = objc_msgSend_copyWithZone_device_(hPass, v8, zone, device);
    }

    vPass = self->vPass;
    if (vPass)
    {
      v9[30] = objc_msgSend_copyWithZone_device_(vPass, v8, zone, device);
    }
  }

  return v9;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  v10 = *a4;
  v9.receiver = self;
  v9.super_class = MPSImageBox;
  result = [(MPSRegion *)&v9 sourceRegionForDestinationSize:&v10];
  v7 = *&self->_kernelWidth;
  *&retstr->origin.x = vsubq_f64(*&retstr->origin.x, vcvtq_f64_u64(vshrq_n_u64(v7, 1uLL)));
  v8.i64[0] = -1;
  v8.i64[1] = -1;
  *&retstr->size.width = vaddq_f64(*&retstr->size.width, vcvtq_f64_u64(vaddq_s64(v7, v8)));
  return result;
}

@end