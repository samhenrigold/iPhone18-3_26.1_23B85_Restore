@interface MPSImageTent
- (void)initFilterInfo;
@end

@implementation MPSImageTent

- (void)initFilterInfo
{
  v52 = *MEMORY[0x277D85DE8];
  self->super.filterInfoH = 2;
  self->super.filterInfoV = 3;
  self->super.hPass = 0;
  self->super.vPass = 0;
  kernelWidth = self->super._kernelWidth;
  v5 = MEMORY[0x277CD7350];
  if (kernelWidth > 9)
  {
    kernelHeight = self->super._kernelHeight;
    if (kernelHeight > 9)
    {
      return;
    }

LABEL_34:
    if (!kernelHeight)
    {
      goto LABEL_63;
    }

    v25 = (kernelHeight + 1) >> 1;
    v26 = (v25 * v25);
    *v2.i32 = v25;
    v27 = vdupq_n_s64(kernelHeight - 1);
    v28 = kernelHeight + 1;
    v29 = vdup_lane_s32(v2, 0);
    v30 = vmovn_s64(vcgeq_u64(v27, xmmword_2399888A0));
    v31 = vabs_f32(vadd_f32(v29, 0xC0000000BF800000));
    if (v30.i8[0])
    {
      v43 = (*v2.i32 - v31.f32[0]) / v26;
      v32 = v28 & 0x1E;
      if ((v30.i8[4] & 1) == 0)
      {
LABEL_37:
        if (v32 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v32 = v28 & 0x1E;
      if ((v30.i8[4] & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    v44 = (*v2.i32 - v31.f32[1]) / v26;
    if (v32 == 2)
    {
      goto LABEL_63;
    }

LABEL_41:
    v33 = vmovn_s64(vcgtq_u64(v27, xmmword_2399888B0));
    v34 = vabs_f32(vadd_f32(v29, 0xC0800000C0400000));
    if (v33.i8[0])
    {
      v45 = (*v2.i32 - v34.f32[0]) / v26;
      if ((v33.i8[4] & 1) == 0)
      {
LABEL_43:
        if (v32 == 4)
        {
          goto LABEL_63;
        }

        goto LABEL_47;
      }
    }

    else if ((v33.i8[4] & 1) == 0)
    {
      goto LABEL_43;
    }

    v46 = (*v2.i32 - v34.f32[1]) / v26;
    if (v32 == 4)
    {
      goto LABEL_63;
    }

LABEL_47:
    v35 = vmovn_s64(vcgtq_u64(v27, xmmword_2399888C0));
    v36 = vabs_f32(vadd_f32(v29, 0xC0C00000C0A00000));
    if (v35.i8[0])
    {
      v47 = (*v2.i32 - v36.f32[0]) / v26;
      if ((v35.i8[4] & 1) == 0)
      {
LABEL_49:
        if (v32 == 6)
        {
          goto LABEL_63;
        }

LABEL_53:
        v37 = vmovn_s64(vcgtq_u64(v27, xmmword_2399888D0));
        v38 = vabs_f32(vadd_f32(v29, 0xC1000000C0E00000));
        if (v37.i8[0])
        {
          v49 = (*v2.i32 - v38.f32[0]) / v26;
          if ((v37.i8[4] & 1) == 0)
          {
LABEL_55:
            if (v32 == 8)
            {
              goto LABEL_63;
            }

LABEL_59:
            v39 = vmovn_s64(vcgtq_u64(v27, xmmword_2399888E0));
            v40 = vabs_f32(vadd_f32(v29, 0xC1200000C1100000));
            if (v39.i8[0])
            {
              v51 = (*v2.i32 - v40.f32[0]) / v26;
            }

            if (v39.i8[4])
            {
              *&v52 = (*v2.i32 - v40.f32[1]) / v26;
            }

            goto LABEL_63;
          }
        }

        else if ((v37.i8[4] & 1) == 0)
        {
          goto LABEL_55;
        }

        v50 = (*v2.i32 - v38.f32[1]) / v26;
        if (v32 != 8)
        {
          goto LABEL_59;
        }

LABEL_63:
        v41 = [MPSImageConvolution alloc];
        self->super.vPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v41, v42, (*(&self->super.super.super.super.isa + *v5))[2], 1, self->super._kernelHeight, &v43);
        return;
      }
    }

    else if ((v35.i8[4] & 1) == 0)
    {
      goto LABEL_49;
    }

    v48 = (*v2.i32 - v36.f32[1]) / v26;
    if (v32 == 6)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  if (kernelWidth)
  {
    v7 = (kernelWidth + 1) >> 1;
    v8 = (v7 * v7);
    *v2.i32 = v7;
    v9 = vdupq_n_s64(kernelWidth - 1);
    v10 = kernelWidth + 1;
    v11 = vdup_lane_s32(v2, 0);
    v12 = vmovn_s64(vcgeq_u64(v9, xmmword_2399888A0));
    v13 = vabs_f32(vadd_f32(v11, 0xC0000000BF800000));
    if (v12.i8[0])
    {
      v43 = (*v2.i32 - v13.f32[0]) / v8;
      v14 = v10 & 0x1E;
      if ((v12.i8[4] & 1) == 0)
      {
LABEL_7:
        if (v14 == 2)
        {
          goto LABEL_33;
        }

LABEL_11:
        v15 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888B0));
        v16 = vabs_f32(vadd_f32(v11, 0xC0800000C0400000));
        if (v15.i8[0])
        {
          v45 = (*v2.i32 - v16.f32[0]) / v8;
          if ((v15.i8[4] & 1) == 0)
          {
LABEL_13:
            if (v14 == 4)
            {
              goto LABEL_33;
            }

LABEL_17:
            v17 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888C0));
            v18 = vabs_f32(vadd_f32(v11, 0xC0C00000C0A00000));
            if (v17.i8[0])
            {
              v47 = (*v2.i32 - v18.f32[0]) / v8;
              if ((v17.i8[4] & 1) == 0)
              {
LABEL_19:
                if (v14 == 6)
                {
                  goto LABEL_33;
                }

LABEL_23:
                v19 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888D0));
                v20 = vabs_f32(vadd_f32(v11, 0xC1000000C0E00000));
                if (v19.i8[0])
                {
                  v49 = (*v2.i32 - v20.f32[0]) / v8;
                  if ((v19.i8[4] & 1) == 0)
                  {
LABEL_25:
                    if (v14 == 8)
                    {
                      goto LABEL_33;
                    }

                    goto LABEL_29;
                  }
                }

                else if ((v19.i8[4] & 1) == 0)
                {
                  goto LABEL_25;
                }

                v50 = (*v2.i32 - v20.f32[1]) / v8;
                if (v14 == 8)
                {
                  goto LABEL_33;
                }

LABEL_29:
                v21 = vmovn_s64(vcgtq_u64(v9, xmmword_2399888E0));
                v22 = vabs_f32(vadd_f32(v11, 0xC1200000C1100000));
                if (v21.i8[0])
                {
                  v51 = (*v2.i32 - v22.f32[0]) / v8;
                }

                if (v21.i8[4])
                {
                  *&v52 = (*v2.i32 - v22.f32[1]) / v8;
                }

                goto LABEL_33;
              }
            }

            else if ((v17.i8[4] & 1) == 0)
            {
              goto LABEL_19;
            }

            v48 = (*v2.i32 - v18.f32[1]) / v8;
            if (v14 == 6)
            {
              goto LABEL_33;
            }

            goto LABEL_23;
          }
        }

        else if ((v15.i8[4] & 1) == 0)
        {
          goto LABEL_13;
        }

        v46 = (*v2.i32 - v16.f32[1]) / v8;
        if (v14 == 4)
        {
          goto LABEL_33;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v14 = v10 & 0x1E;
      if ((v12.i8[4] & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v44 = (*v2.i32 - v13.f32[1]) / v8;
    if (v14 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_11;
  }

LABEL_33:
  v23 = [MPSImageConvolution alloc];
  self->super.hPass = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v23, v24, (*(&self->super.super.super.super.isa + *v5))[2], self->super._kernelWidth, 1, &v43);
  kernelHeight = self->super._kernelHeight;
  if (kernelHeight <= 9)
  {
    goto LABEL_34;
  }
}

@end