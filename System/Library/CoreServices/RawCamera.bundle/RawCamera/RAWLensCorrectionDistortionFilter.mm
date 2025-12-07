@interface RAWLensCorrectionDistortionFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWLensCorrectionDistortionFilter

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputDistortionMap"])
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWLensCorrectionDistortionFilter;
  [(RAWLensCorrectionDistortionFilter *)&v9 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"inputDistortionAmount";
  v2 = *MEMORY[0x277CBF7E8];
  v8[0] = *MEMORY[0x277CBF7D0];
  v8[1] = v2;
  v9[0] = &unk_284958A38;
  v9[1] = &unk_284958A38;
  v3 = *MEMORY[0x277CBF7C8];
  v8[2] = *MEMORY[0x277CBF7E0];
  v8[3] = v3;
  v9[2] = &unk_284958A48;
  v9[3] = &unk_284958A48;
  v4 = *MEMORY[0x277CBF7C0];
  v8[4] = *MEMORY[0x277CBF798];
  v8[5] = v4;
  v9[4] = &unk_284958A48;
  v9[5] = &unk_284958A48;
  v8[6] = *MEMORY[0x277CBF7F0];
  v9[6] = *MEMORY[0x277CBF850];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:7];
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  return v6;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (BOOL)makeMapImages
{
  if (!self->inputDistortionMap || self->mapImg)
  {
    return 1;
  }

  unsignedIntValue = [(NSNumber *)self->inputDistortionMapWidth unsignedIntValue];
  unsignedIntValue2 = [(NSNumber *)self->inputDistortionMapHeight unsignedIntValue];
  if (unsignedIntValue >= 4 && unsignedIntValue2 > 3)
  {
    v7 = unsignedIntValue2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = unsignedIntValue;
      if ([(NSData *)self->inputDistortionMap length]== 8 * v7 * unsignedIntValue)
      {
        v9 = [MEMORY[0x277CBEB28] dataWithLength:16 * v7 * unsignedIntValue];
        bytes = [(NSData *)self->inputDistortionMap bytes];
        mutableBytes = [v9 mutableBytes];
        v12 = 0;
        v13 = 0;
        do
        {
          v14 = 0;
          do
          {
            *&v15 = bytes[v12 + v14];
            *(&v15 + 1) = v15;
            *(mutableBytes + 16 * v12 + 16 * v14++) = v15;
          }

          while (v8 != v14);
          ++v13;
          v12 += v8;
        }

        while (v13 != v7);
        v16 = [MEMORY[0x277CBF758] imageWithBitmapData:v9 bytesPerRow:16 * v8 size:*MEMORY[0x277CBF9D0] format:0 colorSpace:{v8, v7}];
        mapImg = self->mapImg;
        self->mapImg = v16;

        return 1;
      }

      NSLog(&cfstr_Lenscorrection_5.isa);
    }

    else
    {
      NSLog(&cfstr_Lenscorrection_4.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Lenscorrection_3.isa);
  }

  return 0;
}

- (id)outputImage
{
  v57[3] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionDistortionFilter", &unk_233945DBE, buf, 2u);
    }

    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = sub_233745E28;
    v56[3] = &unk_2789EE800;
    v56[4] = self;
    v5 = MEMORY[0x2383AC810](v56);
    if ([(RAWLensCorrectionDistortionFilter *)self makeMapImages])
    {
      [(NSNumber *)self->inputDistortionAmount floatValue];
      if (self->mapImg && (v7 = fminf(fmaxf(v6, 0.0), 1.0), v7 >= 0.001))
      {
        v8 = [LCKernels kernelWithName:@"lensCorrect_dist", v7];
        [(CIImage *)self->inputImage extent];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v17 = [MEMORY[0x277CBF788] vectorWithX:v9 + v13 * 0.5 Y:v11 + v15 * 0.5 Z:v13 * 0.5 W:v15 * 0.5];
        [(NSNumber *)self->inputDistortionMapWidth doubleValue];
        v19 = v18;
        [(NSNumber *)self->inputDistortionMapHeight doubleValue];
        v21 = v20;
        imageByClampingToExtent = [(CIImage *)self->mapImg imageByClampingToExtent];
        v23.f64[0] = v14 / (v19 + -1.0);
        *buf = v23.f64[0];
        v52 = 0;
        v53 = 0;
        v54 = v16 / (v21 + -1.0);
        v23.f64[1] = v54;
        __asm { FMOV            V1.2D, #-0.5 }

        v55 = vmulq_f64(v23, _Q1);
        v29 = [imageByClampingToExtent imageByApplyingTransform:buf];

        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = sub_233746040;
        v44[3] = &unk_2789EE998;
        v44[4] = self;
        v45 = &unk_284904BF0;
        v46 = v10;
        v47 = v12;
        v48 = v14;
        v49 = v16;
        v50 = v7;
        v30 = MEMORY[0x2383AC810](v44);
        inputImage = self->inputImage;
        [(CIImage *)inputImage extent];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        inputDistortionAmount = self->inputDistortionAmount;
        v57[0] = v29;
        v57[1] = inputDistortionAmount;
        v57[2] = v17;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
        v42 = [(RAWFilter *)self apply:v8 image:inputImage extent:v30 roiCallback:v41 arguments:self->inputColorSpace inoutSpace:v33, v35, v37, v39];
      }

      else
      {
        v42 = self->inputImage;
      }
    }

    else
    {
      v42 = 0;
    }

    v5[2](v5);
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

@end