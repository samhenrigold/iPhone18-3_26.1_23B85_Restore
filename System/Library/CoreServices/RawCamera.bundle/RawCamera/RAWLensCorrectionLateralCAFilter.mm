@interface RAWLensCorrectionLateralCAFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWLensCorrectionLateralCAFilter

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputLateralCAMap"])
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWLensCorrectionLateralCAFilter;
  [(RAWLensCorrectionLateralCAFilter *)&v9 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"inputLateralCAAmount";
  v2 = *MEMORY[0x277CBF7E8];
  v9[0] = *MEMORY[0x277CBF7D0];
  v9[1] = v2;
  v10[0] = &unk_284958A38;
  v10[1] = &unk_284958A38;
  v3 = *MEMORY[0x277CBF7C8];
  v9[2] = *MEMORY[0x277CBF7E0];
  v9[3] = v3;
  v4 = *MEMORY[0x277CBF7F0];
  v9[4] = *MEMORY[0x277CBF798];
  v9[5] = v4;
  v10[2] = &unk_284958A48;
  v10[3] = &unk_284958A48;
  v5 = *MEMORY[0x277CBF850];
  v10[4] = &unk_284958A48;
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  return v7;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (BOOL)makeMapImages
{
  if (!self->inputLateralCAMap || self->mapImg)
  {
    return 1;
  }

  unsignedIntValue = [(NSNumber *)self->inputLateralCAMapWidth unsignedIntValue];
  unsignedIntValue2 = [(NSNumber *)self->inputLateralCAMapHeight unsignedIntValue];
  if (unsignedIntValue >= 4 && unsignedIntValue2 > 3)
  {
    v7 = unsignedIntValue2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(NSData *)self->inputLateralCAMap length]== 4 * 4 * unsignedIntValue * v7)
      {
        v8 = [MEMORY[0x277CBF758] imageWithBitmapData:self->inputLateralCAMap bytesPerRow:16 * unsignedIntValue size:*MEMORY[0x277CBF9D0] format:0 colorSpace:{unsignedIntValue, v7}];
        mapImg = self->mapImg;
        self->mapImg = v8;

        return 1;
      }

      NSLog(&cfstr_Lenscorrection_2.isa);
    }

    else
    {
      NSLog(&cfstr_Lenscorrection_1.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Lenscorrection_0.isa);
  }

  return 0;
}

- (id)outputImage
{
  v56[2] = *MEMORY[0x277D85DE8];
  v3 = sub_23378E104(self);
  v4 = v3;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionLateralCAFilter", &unk_233945DBE, buf, 2u);
  }

  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_233744F04;
  v55[3] = &unk_2789EE800;
  v55[4] = self;
  v5 = MEMORY[0x2383AC810](v55);
  if (self->inputImage && [(RAWLensCorrectionLateralCAFilter *)self makeMapImages])
  {
    [(NSNumber *)self->inputLateralCAAmount floatValue];
    if (self->mapImg && (v7 = fminf(fmaxf(v6, 0.0), 1.0), v7 >= 0.001))
    {
      v8 = [LCKernels kernelWithName:@"lensCorrect_lca", v7];
      [(CIImage *)self->inputImage extent];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = [MEMORY[0x277CBF788] vectorWithX:v9 + v13 * 0.5 Y:v11 + v15 * 0.5 Z:v13 * 0.5 W:v15 * 0.5];
      [(NSNumber *)self->inputLateralCAMapWidth doubleValue];
      v19 = v18;
      [(NSNumber *)self->inputLateralCAMapHeight doubleValue];
      v21 = v20;
      imageByClampingToExtent = [(CIImage *)self->mapImg imageByClampingToExtent];
      v23.f64[0] = v14 / (v19 + -1.0);
      *buf = v23.f64[0];
      v51 = 0;
      v52 = 0;
      v53 = v16 / (v21 + -1.0);
      v23.f64[1] = v53;
      __asm { FMOV            V1.2D, #-0.5 }

      v54 = vmulq_f64(v23, _Q1);
      v29 = [imageByClampingToExtent imageByApplyingTransform:buf];

      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_2337451F0;
      v43[3] = &unk_2789EE998;
      v43[4] = self;
      v44 = &unk_284904BD0;
      v45 = v10;
      v46 = v12;
      v47 = v14;
      v48 = v16;
      v49 = v7;
      v30 = MEMORY[0x2383AC810](v43);
      inputImage = self->inputImage;
      [(CIImage *)inputImage extent];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v56[0] = v29;
      v56[1] = v17;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:2];
      v41 = [(RAWFilter *)self apply:v8 image:inputImage extent:v30 roiCallback:v40 arguments:self->inputColorSpace inoutSpace:v33, v35, v37, v39];
    }

    else
    {
      v41 = self->inputImage;
    }
  }

  else
  {
    v41 = 0;
  }

  v5[2](v5);

  return v41;
}

@end