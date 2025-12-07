@interface MPSImageGaussianBlur
- (MPSImageGaussianBlur)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageGaussianBlur)initWithDevice:(id)device;
- (MPSImageGaussianBlur)initWithDevice:(id)device sigma:(float)sigma;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)initFilterInfo;
@end

@implementation MPSImageGaussianBlur

- (void)initFilterInfo
{
  v96[1] = *MEMORY[0x277D85DE8];
  self->_cheesyBlur = 0;
  self->_scale = 1.0;
  self->smallConv = 0;
  self->_plan = 0;
  self->super._encode = sub_23993C2D8;
  self->super._encodeData = self;
  planSteps = self->_planSteps;
  *self->_planSteps = 0u;
  *&self->_planSteps[4] = 0u;
  self->_numSteps = 0;
  sigma = self->_sigma;
  if (sigma > 0.14)
  {
    v5 = 1.0;
    if (sigma < 1.0)
    {
      if (sigma <= 0.7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }

      if (sigma <= 0.4)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v8 = 2 * v7;
      v9 = 1;
      v10 = (2 * (v7 & 3)) | 1;
      MEMORY[0x28223BE20](self);
      v12 = (v96 - v11);
      v14 = *(&self->super.super.super.isa + v13);
      v16 = v15 / (v14 * 2.5066);
      v17 = (v96 + 4 * v7 - v11);
      *v17 = v16;
      v18 = v15 / v14;
      v19 = -1;
      do
      {
        v21 = v16 * expf(((v18 * v9) * (v18 * v9)) * -0.5);
        v17[v9] = v21;
        v12[(v7 + v19)] = v21;
        ++v9;
        --v19;
      }

      while (v7 + v19 != -1);
      MEMORY[0x28223BE20](v20);
      v23 = (v96 - v22);
      v24 = *v12;
      v25 = *v12 * v12[1];
      *v23 = *v12 * *v12;
      v23[1] = v25;
      v23[2] = v24 * v12[2];
      if (sigma > 0.4)
      {
        v26 = v24 * v12[4];
        v23[3] = v24 * v12[3];
        v23[4] = v26;
        if (v7 != 2)
        {
          v27 = v24 * v12[5];
          v28 = v24 * v12[6];
          v23[5] = v27;
          v23[6] = v28;
        }
      }

      v29 = &v23[v10];
      v30 = v12[1];
      *v29 = v30 * *v12;
      v29[1] = v30 * v30;
      v29[2] = v30 * v12[2];
      if (sigma > 0.4)
      {
        v31 = v30 * v12[4];
        v29[3] = v30 * v12[3];
        v29[4] = v31;
        if (v7 != 2)
        {
          v32 = v30 * v12[5];
          v33 = v30 * v12[6];
          v29[5] = v32;
          v29[6] = v33;
        }
      }

      v34 = v12[2];
      v35 = &v23[2 * v10];
      v36 = v34 * v12[1];
      *v35 = v34 * *v12;
      v35[1] = v36;
      v35[2] = v34 * v34;
      if (sigma <= 0.4)
      {
        goto LABEL_31;
      }

      v37 = v34 * v12[4];
      v35[3] = v34 * v12[3];
      v35[4] = v37;
      if (v7 != 2)
      {
        v38 = v34 * v12[5];
        v39 = v34 * v12[6];
        v35[5] = v38;
        v35[6] = v39;
      }

      if (sigma <= 0.4)
      {
        goto LABEL_31;
      }

      v40 = &v23[3 * v10];
      v42 = v12[2];
      v41 = v12[3];
      v43 = v41 * v12[1];
      *v40 = v41 * *v12;
      v40[1] = v43;
      v40[2] = v41 * v42;
      v40[3] = v41 * v41;
      v40[4] = v41 * v12[4];
      if (v7 != 2)
      {
        v44 = v41 * v12[5];
        v45 = v41 * v12[6];
        v40[5] = v44;
        v40[6] = v45;
      }

      v46 = v12[4];
      v47 = &v23[4 * v10];
      v48 = v46 * v12[1];
      *v47 = v46 * *v12;
      v47[1] = v48;
      v47[2] = v46 * v12[2];
      if (sigma > 0.4)
      {
        v49 = v46 * v12[4];
        v47[3] = v46 * v12[3];
        v47[4] = v49;
        if (v7 == 2)
        {
LABEL_31:
          v64 = (v8 | 1) * (v8 | 1u);
          if (v64 > 7)
          {
            v65 = ((v8 | 1) * (v8 | 1)) & 0x38;
            v73 = v23 + 4;
            v66 = 0;
            v74 = v65;
            do
            {
              *v66.i32 = (((((((*v66.i32 + COERCE_FLOAT(*(v73 - 1))) + COERCE_FLOAT(HIDWORD(*(v73 - 2)))) + COERCE_FLOAT(*(v73 - 1))) + COERCE_FLOAT(HIDWORD(*(v73 - 1)))) + COERCE_FLOAT(*v73)) + COERCE_FLOAT(HIDWORD(*v73))) + COERCE_FLOAT(*(v73 + 1))) + COERCE_FLOAT(HIDWORD(*v73));
              v73 += 8;
              v74 -= 8;
            }

            while (v74);
          }

          else
          {
            v65 = 0;
            v66 = 0;
          }

          do
          {
            *v66.i32 = *v66.i32 + v23[v65++];
          }

          while (v64 != v65);
          v75 = (v8 | 1) * (v8 | 1u);
          if (v75 > 7)
          {
            v76 = ((v8 | 1) * (v8 | 1)) & 0x38;
            v80 = vdupq_lane_s32(v66, 0);
            v81 = (v23 + 4);
            v82 = v76;
            do
            {
              v83 = vdivq_f32(*v81, v80);
              v81[-1] = vdivq_f32(v81[-1], v80);
              *v81 = v83;
              v81 += 2;
              v82 -= 8;
            }

            while (v82);
          }

          else
          {
            v76 = 0;
          }

          do
          {
            v23[v76] = v23[v76] / *v66.i32;
            ++v76;
          }

          while (v75 != v76);
          v84 = [MPSImageConvolution alloc];
          self->smallConv = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v84, v85, (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[2], (2 * (v7 & 3)) | 1, (2 * (v7 & 3)) | 1, v23);
          return;
        }

        v50 = v46 * v12[5];
        v51 = v46 * v12[6];
        v47[5] = v50;
        v47[6] = v51;
      }

      if (v7 != 2)
      {
        v52 = v12[5];
        v53 = &v23[5 * v10];
        v54 = v52 * v12[1];
        *v53 = v52 * *v12;
        v53[1] = v54;
        v53[2] = v52 * v12[2];
        if (sigma > 0.4)
        {
          v55 = v52 * v12[4];
          v53[3] = v52 * v12[3];
          v53[4] = v55;
          v56 = v52 * v12[5];
          v57 = v52 * v12[6];
          v53[5] = v56;
          v53[6] = v57;
        }

        v58 = v12[6];
        v59 = &v23[6 * v10];
        v60 = v58 * v12[1];
        *v59 = v58 * *v12;
        v59[1] = v60;
        v59[2] = v58 * v12[2];
        if (sigma > 0.4)
        {
          v61 = v58 * v12[4];
          v59[3] = v58 * v12[3];
          v59[4] = v61;
          v62 = v58 * v12[5];
          v63 = v58 * v12[6];
          v59[5] = v62;
          v59[6] = v63;
        }
      }

      goto LABEL_31;
    }

    v67 = 0;
    self->_scale = 1.0;
    v68 = self->_sigma;
    v69 = v68 >= 25.0 && self->_cheesyBlur;
    if (v69)
    {
      v5 = 0.25;
    }

    self->_scale = v5;
    v70 = (v68 * v5);
    for (i = 256; i > 0; i = i >> 1)
    {
      while (v67 + i <= 820 && dbl_239989B20[dword_2399AE898[v67 + i]] <= v70)
      {
        v67 += i;
      }
    }

    if (v67 >= 820)
    {
      v72 = v67;
    }

    else
    {
      v72 = v67;
      if (vabdd_f64(dbl_239989B20[dword_2399AE898[v67 + 1]], v70) < vabdd_f64(dbl_239989B20[dword_2399AE898[v67]], v70))
      {
        v72 = v67 + 1;
      }
    }

    v77 = &dbl_239989B20[dword_2399AE898[v72]];
    self->_plan = v77;
    if (v77[1] <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = v77[1];
    }

    if (v69)
    {
      *planSteps = 24;
      v79 = 1;
    }

    else
    {
      v79 = 0;
    }

    v86 = 0;
    v87 = v77 + 2;
    v88 = v79 + 1;
    v89 = &self->_planSteps[v79];
    do
    {
      v91 = v87[v86];
      if (v91 <= 0x19)
      {
        v90 = dword_2399899E8[v91];
      }

      else
      {
        v90 = -1;
      }

      self->_numSteps = v88;
      *v89++ = v91;
      v86 += v90;
      ++v88;
    }

    while (v86 < v78);
    if (v69)
    {
      if (v91 >= 21)
      {
        self->_numSteps = v88;
        *v89 = 25;
        if (!v88)
        {
          return;
        }

        goto LABEL_73;
      }

      *(v89 - 1) = v91 + 2;
    }

    if (v88 == 1)
    {
      return;
    }

LABEL_73:
    v92 = 0;
    v93 = (*(&self->super.super.super.isa + *MEMORY[0x277CD7350]))[369];
    do
    {
      v94 = planSteps[v92];
      if (v94 <= 25)
      {
        v95 = &unk_284C6CA20 + 56 * v94;
      }

      else
      {
        v95 = 0;
      }

      if (*(v95 + 2) != -1)
      {
        MPSLibrary::PrefetchComputeState();
        if ((v93 & 0x80) == 0)
        {
          MPSLibrary::PrefetchComputeState();
        }
      }

      if (*(v95 + 8) != -1)
      {
        MPSLibrary::PrefetchComputeState();
        if ((v93 & 0x80) == 0)
        {
          MPSLibrary::PrefetchComputeState();
        }
      }

      ++v92;
    }

    while (v92 < self->_numSteps);
    return;
  }

  MPSLibrary::PrefetchComputeState();
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSImageGaussianBlur;
  [(MPSKernel *)&v3 dealloc];
}

- (MPSImageGaussianBlur)initWithDevice:(id)device
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_PleaseInitiali_1.isa, v4);
  __break(1u);
  return result;
}

- (MPSImageGaussianBlur)initWithDevice:(id)device sigma:(float)sigma
{
  v9.receiver = self;
  v9.super_class = MPSImageGaussianBlur;
  result = [(MPSUnaryImageKernel *)&v9 initWithDevice:device];
  if (result)
  {
    result->_sigma = sigma;
    v8 = result;
    objc_msgSend_initFilterInfo(result, v6, v7);
    return v8;
  }

  return result;
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  sigma = self->_sigma;
  if (sigma <= 0.14)
  {
    v43[0] = *a4;
    v46.receiver = self;
    v46.super_class = MPSImageGaussianBlur;
    return [(MPSRegion *)&v46 sourceRegionForDestinationSize:v43];
  }

  if (sigma >= 1.0)
  {
    memset(v43, 0, sizeof(v43));
    v42 = *a4;
    objc_msgSend_clipRect(self, size, a4);
    MPSGetEffectiveClipRegion(v43, &v42, &v41);
    objc_msgSend_offset(self, v16, v17);
    x = v41.origin.x;
    result = objc_msgSend_offset(self, v18, v19);
    v20.f32[0] = x;
    v20.f32[1] = v42.height;
    v21 = v20;
    v22 = vcvt_f32_f64(vcvtq_f64_u64(*&v43[1].var0));
    if (self->_numSteps < 1)
    {
LABEL_21:
      *&retstr->origin.x = vcvtq_f64_f32(v21);
      retstr->origin.z = 0.0;
      *&retstr->size.width = vcvtq_f64_f32(v22);
      retstr->size.depth = 1.0;
      return result;
    }

    v23 = self->_numSteps & 0x7FFFFFFF;
    v24 = v23 + 1;
    v25 = &self->_planSteps[v23 - 1];
    while (1)
    {
      v31 = *v25--;
      v30 = v31;
      if (v31 > 25)
      {
        break;
      }

      if (v30 > 0x19)
      {
        v32 = 0;
      }

      else
      {
        v32 = qword_239989A50[v30];
      }

      v33 = (&unk_284C6CA20 + 56 * v30);
      if (v30 < 23)
      {
        v34 = *(&v32 + 1);
        v35 = v32;
        if (v30 < 16)
        {
          *v26.i64 = v33[2](1);
          v28 = vaddq_f32(v27, v26);
          v26.i32[3] = 0;
          v29 = vrndmq_f32(v26);
          v28.i32[3] = 0;
          result = (v33[5])(1, v29, vsubq_f32(vrndpq_f32(v28), v29), v35, v34);
        }

        else
        {
          *v36.i64 = v33[5](0);
          v38 = vaddq_f32(v37, v36);
          v36.i32[3] = 0;
          v39 = vrndmq_f32(v36);
          v38.i32[3] = 0;
          result = (v33[2])(0, v39, vsubq_f32(vrndpq_f32(v38), v39), v35, v34);
        }

        if (--v24 < 2)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v30 == 24)
        {
          result = (v33[2])(1);
        }

        else
        {
          result = (v33[5])(1);
        }

        if (--v24 < 2)
        {
          goto LABEL_21;
        }
      }
    }
  }

  else
  {
    objc_msgSend_offset(self, size, a4);
    smallConv = self->smallConv;
    v43[0] = v45;
    objc_msgSend_setOffset_(smallConv, v9, v43);
    objc_msgSend_clipRect(self, v10, v11);
    v12 = self->smallConv;
    *&v43[0].var0 = v44[0];
    *&v43[0].var2 = v44[1];
    *&v43[1].var1 = v44[2];
    objc_msgSend_setClipRect_(v12, v13, v43);
    result = self->smallConv;
    v43[0] = *a4;
    if (result)
    {
      return objc_msgSend_sourceRegionForDestinationSize_(result, v14, v43);
    }
  }

  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSImageGaussianBlur;
  result = [MPSUnaryImageKernel copyWithZone:sel_copyWithZone_device_ device:?];
  if (result)
  {
    *(result + 52) = LODWORD(self->_sigma);
    *(result + 272) = self->_cheesyBlur;
    *(result + 69) = LODWORD(self->_scale);
    smallConv = self->smallConv;
    if (smallConv)
    {
      v10 = result;
      smallConv = objc_msgSend_copyWithZone_device_(self->smallConv, v8, zone, device);
      result = v10;
    }

    *(result + 27) = smallConv;
    v11 = *&self->_planSteps[4];
    *(result + 14) = *self->_planSteps;
    *(result + 15) = v11;
    *(result + 32) = self->_numSteps;
    *(result + 33) = self->_plan;
  }

  return result;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = MPSImageGaussianBlur;
  v4 = [(MPSUnaryImageKernel *)&v7 debugDescription];
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tsigma: %f\n", v4, self->_sigma);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v7.receiver = self;
  v7.super_class = MPSImageGaussianBlur;
  [(MPSUnaryImageKernel *)&v7 encodeWithCoder:?];
  *&v5 = self->_sigma;
  objc_msgSend_encodeFloat_forKey_(coder, v6, @"MPSGaussianBlur.sigma", v5);
}

- (MPSImageGaussianBlur)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSImageGaussianBlur;
  v5 = [(MPSUnaryImageKernel *)&v13 initWithCoder:aDecoder device:device];
  v7 = v5;
  if (!v5)
  {
    return v7;
  }

  if (*(&v5->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
  {
    objc_msgSend_decodeFloatForKey_(aDecoder, v6, @"MPSGaussianBlur.sigma");
    v7->_sigma = v8;
    objc_msgSend_initFilterInfo(v7, v9, v10);
    return v7;
  }

  if (MTLReportFailureTypeEnabled())
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    MTLReportFailure();
  }

  return 0;
}

@end