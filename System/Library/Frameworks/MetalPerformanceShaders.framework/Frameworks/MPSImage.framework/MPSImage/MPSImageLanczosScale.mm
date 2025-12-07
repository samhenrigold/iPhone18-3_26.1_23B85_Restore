@interface MPSImageLanczosScale
- (MPSImageLanczosScale)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSImageLanczosScale)initWithDevice:(id)device;
- (MPSRegion)sourceRegionForDestinationSize:(SEL)size;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSImageLanczosScale

- (MPSImageLanczosScale)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSImageLanczosScale;
  result = [(MPSImageScale *)&v4 initWithDevice:device];
  if (result)
  {
    *&result->weights[0].weights = 0u;
    *&result->weights[0].offset = 0u;
    *&result->weights[0].phaseStride = 0u;
    *&result->weights[1].weights = 0u;
    *&result->weights[1].offset = 0u;
    *&result->weights[1].phaseStride = 0u;
    result->super.super._encode = sub_239971798;
    result->super.super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSImageLanczosScale;
  return [(MPSImageScale *)&v5 copyWithZone:zone device:device];
}

- (MPSImageLanczosScale)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSImageLanczosScale;
  result = [(MPSImageScale *)&v7 initWithCoder:aDecoder device:device];
  if (result)
  {
    if (*(&result->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      *&result->weights[0].weights = 0u;
      *&result->weights[0].offset = 0u;
      *&result->weights[0].phaseStride = 0u;
      *&result->weights[1].weights = 0u;
      *&result->weights[1].offset = 0u;
      *&result->weights[1].phaseStride = 0u;
      result->super.super._encode = sub_239971798;
      result->super.super._encodeData = result;
    }

    else
    {
      v5 = result;
      if (MTLReportFailureTypeEnabled())
      {
        v6 = objc_opt_class();
        NSStringFromClass(v6);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSImageLanczosScale;
  [(MPSImageScale *)&v3 encodeWithCoder:coder];
}

- (void)dealloc
{
  weights = self->weights;

  weights->weights = 0;
  weights[1].weights = 0;
  v4.receiver = self;
  v4.super_class = MPSImageLanczosScale;
  [(MPSKernel *)&v4 dealloc];
}

- (MPSRegion)sourceRegionForDestinationSize:(SEL)size
{
  v33.receiver = self;
  v33.super_class = MPSImageLanczosScale;
  result = [(MPSRegion *)&v33 scaleTransform];
  v10 = result;
  if ((*(&self->super.super.super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!result)
    {
      result = MTLReportFailureTypeEnabled();
      if (result)
      {
        v11 = objc_opt_class();
        NSStringFromClass(v11);
        result = MTLReportFailure();
      }

      goto LABEL_7;
    }

LABEL_6:
    memset(v32, 0, sizeof(v32));
    v31 = *a4;
    objc_msgSend_clipRect(self, v8, v9);
    result = MPSGetEffectiveClipRegion(v32[0].i64, &v31, &v30);
    __asm { FMOV            V1.2D, #1.0 }

    v17 = *&v10->origin.z;
    v18 = vminnmq_f64(*&v10->origin.x, _Q1);
    __asm { FMOV            V6.2D, #6.0 }

    v20 = vrndpq_f64(vsubq_f64(vdivq_f64(_Q6, v18), vdivq_f64(_Q1, vandq_s8(vmaxnmq_f64(vmulq_f64(v18, vdupq_n_s64(0x4050000000000000uLL)), _Q1), vdupq_n_s64(0xFFF0000000000000)))));
    __asm { FMOV            V5.2D, #0.5 }

    v22 = vdivq_f64(vsubq_f64(_Q5, v17), *&v10->origin.x);
    __asm { FMOV            V6.2D, #-0.5 }

    v24 = vdivq_f64(vsubq_f64(vaddq_f64(vcvtq_f64_u64(*(&v32[1] + 8)), _Q6), v17), *&v10->origin.x);
    __asm { FMOV            V2.2D, #3.0 }

    v26 = vrndpq_f64(vdivq_f64(_Q2, v18));
    __asm { FMOV            V3.2D, #-1.0 }

    v28 = vaddq_f64(vsubq_f64(v20, v26), _Q3);
    v29 = vrndmq_f64(vsubq_f64(v22, v26));
    *&retstr->origin.x = v29;
    retstr->origin.z = 0.0;
    *&retstr->size.width = vsubq_f64(vrndpq_f64(vaddq_f64(v24, v28)), v29);
    retstr->size.depth = 1.0;
    return result;
  }

  if (result)
  {
    goto LABEL_6;
  }

LABEL_7:
  *&retstr->origin.z = 0u;
  *&retstr->size.height = 0u;
  *&retstr->origin.x = 0u;
  return result;
}

@end