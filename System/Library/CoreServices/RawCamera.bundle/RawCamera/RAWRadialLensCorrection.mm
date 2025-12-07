@interface RAWRadialLensCorrection
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWRadialLensCorrection

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputScales"])
  {
    mapImg = self->mapImg;
    self->mapImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWRadialLensCorrection;
  [(RAWRadialLensCorrection *)&v9 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v12 = *MEMORY[0x277D85DE8];
  v11[0] = xmmword_233906318;
  v11[1] = unk_233906328;
  v11[2] = xmmword_233906338;
  v11[3] = unk_233906348;
  v2 = [MEMORY[0x277CBF788] vectorWithValues:v11 count:8];
  v9 = @"inputScales";
  v3 = *MEMORY[0x277CBF7C0];
  v7[0] = *MEMORY[0x277CBF798];
  v7[1] = v3;
  v8[0] = v2;
  v8[1] = v2;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  return v5;
}

- (BOOL)makeMapImages
{
  if (!self->inputScales || self->mapImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(CIVector *)self->inputScales count];
    if (v4 > 2)
    {
      v5 = v4;
      v6 = 8 * v4 + 15;
      0xFFFFFFF0 = [MEMORY[0x277CBEB28] dataWithLength:v6 & 0xFFFFFFF0];
      mutableBytes = [0xFFFFFFF0 mutableBytes];
      for (i = 0; i != v5; ++i)
      {
        [(CIVector *)self->inputScales valueAtIndex:i];
        *&_D0 = _D0;
        __asm { FCVT            H0, S0 }

        *(mutableBytes + 8 * i) = vdup_lane_s16(*&_D0, 0);
      }

      v15 = [MEMORY[0x277CBF758] imageWithBitmapData:0xFFFFFFF0 bytesPerRow:v6 & 0xFFFFFFF0 size:*MEMORY[0x277CBF9D8] format:0 colorSpace:{v5, 1.0}];
      mapImg = self->mapImg;
      self->mapImg = v15;

      return 1;
    }

    NSLog(&cfstr_Radiallenscorr_0.isa);
  }

  else
  {
    NSLog(&cfstr_Radiallenscorr.isa);
  }

  return 0;
}

- (id)outputImage
{
  v54[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    v38 = 0;
    goto LABEL_20;
  }

  if (!self->inputScales)
  {
LABEL_14:
    v38 = inputImage;
    goto LABEL_20;
  }

  intValue = [(NSNumber *)self->inputLDCExecuteFlags intValue];
  if (!intValue)
  {
    inputImage = self->inputImage;
    goto LABEL_14;
  }

  v5 = sub_23378E104(intValue);
  v6 = v5;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWRadialLensCorrection", &unk_233945DBE, buf, 2u);
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_2337D9B6C;
  v52[3] = &unk_2789EE800;
  v52[4] = self;
  v7 = MEMORY[0x2383AC810](v52);
  if ([(RAWRadialLensCorrection *)self makeMapImages])
  {
    [(CIImage *)self->inputImage extent];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v44 = [LCKernels kernelWithName:@"radialLens"];
    v43 = [LCKernels kernelWithName:@"radialLensDraft"];
    v16 = hypot(v13, v15);
    v17 = [(CIVector *)self->inputScales count];
    v18 = [(CIVector *)self->inputScales count];
    v42 = self->inputScales;
    imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
    v20 = self->inputColorSpace;
    v21 = v20;
    if (v20)
    {
      CFAutorelease(v20);
      v22 = [imageByClampingToExtent imageByColorMatchingWorkingSpaceToColorSpace:v21];

      imageByClampingToExtent = v22;
    }

    bOOLValue = [(NSNumber *)self->inputDraftMode BOOLValue];
    v24 = 2.0 / v16;
    v25 = (v18 - 1);
    v26 = v9 + v13 * 0.5;
    v27 = v11 + v15 * 0.5;
    v28 = v44;
    if (bOOLValue)
    {
      v28 = v43;
    }

    v29 = v28;
    v30 = *MEMORY[0x277CBF390];
    v31 = *(MEMORY[0x277CBF390] + 8);
    v32 = *(MEMORY[0x277CBF390] + 16);
    v41 = *(MEMORY[0x277CBF390] + 24);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_2337D9BF4;
    v45[3] = &unk_2789EF0A0;
    v48 = v26;
    v49 = v27;
    v50 = v24;
    v51 = v25;
    v33 = v42;
    v46 = v33;
    v47 = v17;
    mapImg = self->mapImg;
    v54[0] = imageByClampingToExtent;
    v54[1] = mapImg;
    v35 = [MEMORY[0x277CBF788] vectorWithX:v26 Y:v27 Z:v24 W:v25];
    v54[2] = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
    v37 = [v29 applyWithExtent:v45 roiCallback:v36 arguments:{v30, v31, v32, v41}];

    [(CIImage *)self->inputImage extent];
    v38 = [v37 imageByCroppingToRect:?];

    if (v21)
    {
      v39 = [(CIImage *)v38 imageByColorMatchingColorSpaceToWorkingSpace:v21];

      v38 = v39;
    }
  }

  else
  {
    v38 = 0;
  }

  v7[2](v7);

LABEL_20:

  return v38;
}

@end