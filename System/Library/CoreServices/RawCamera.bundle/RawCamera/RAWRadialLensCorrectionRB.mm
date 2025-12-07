@interface RAWRadialLensCorrectionRB
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWRadialLensCorrectionRB

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
  v9.super_class = RAWRadialLensCorrectionRB;
  [(RAWRadialLensCorrectionRB *)&v9 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v16 = *MEMORY[0x277D85DE8];
  v15[0] = xmmword_233906318;
  v15[1] = unk_233906328;
  v15[2] = xmmword_233906338;
  v15[3] = unk_233906348;
  v2 = [MEMORY[0x277CBF788] vectorWithValues:v15 count:8];
  v13[0] = @"inputScalesR";
  v4 = *MEMORY[0x277CBF7C0];
  v11[0] = *MEMORY[0x277CBF798];
  v3 = v11[0];
  v11[1] = v4;
  v12[0] = v2;
  v12[1] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v13[1] = @"inputScalesB";
  v14[0] = v5;
  v9[0] = v3;
  v9[1] = v4;
  v10[0] = v2;
  v10[1] = v2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

- (BOOL)makeMapImages
{
  if (!self->inputScalesR || !self->inputScalesB || self->mapImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [(CIVector *)self->inputScalesR count];
      if (v4 == [(CIVector *)self->inputScalesB count])
      {
        v5 = [(CIVector *)self->inputScalesR count];
        if (v5 > 2)
        {
          v6 = v5;
          v7 = 4 * v5 + 15;
          0xFFFFFFF0 = [MEMORY[0x277CBEB28] dataWithLength:v7 & 0xFFFFFFF0];
          mutableBytes = [0xFFFFFFF0 mutableBytes];
          for (i = 0; i != v6; ++i)
          {
            [(CIVector *)self->inputScalesR valueAtIndex:i];
            *&_D0 = _D0;
            __asm { FCVT            H0, S0 }

            *mutableBytes = LOWORD(_D0);
            [(CIVector *)self->inputScalesB valueAtIndex:i];
            *&_D0 = _D0;
            __asm { FCVT            H0, S0 }

            mutableBytes[1] = LOWORD(_D0);
            mutableBytes += 2;
          }

          v17 = [MEMORY[0x277CBF758] imageWithBitmapData:0xFFFFFFF0 bytesPerRow:v7 & 0xFFFFFFF0 size:*MEMORY[0x277CBF9E8] format:0 colorSpace:{v6, 1.0}];
          mapImg = self->mapImg;
          self->mapImg = v17;

          return 1;
        }

        NSLog(&cfstr_Radiallenscorr_4.isa);
      }

      else
      {
        NSLog(&cfstr_Radiallenscorr_3.isa);
      }
    }

    else
    {
      NSLog(&cfstr_Radiallenscorr_2.isa);
    }
  }

  else
  {
    NSLog(&cfstr_Radiallenscorr_1.isa);
  }

  return 0;
}

- (id)outputImage
{
  v54[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputScalesR || self->inputScalesB)
    {
      v4 = sub_23378E104(self);
      v5 = v4;
      if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_23371F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWRadialLensCorrectionRB", &unk_233945DBE, buf, 2u);
      }

      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = sub_2337DA8E8;
      v52[3] = &unk_2789EE800;
      v52[4] = self;
      v6 = MEMORY[0x2383AC810](v52);
      if ([(RAWRadialLensCorrectionRB *)self makeMapImages])
      {
        [(CIImage *)self->inputImage extent];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v42 = [LCKernels kernelWithName:@"radialLensRB"];
        v15 = hypot(v12, v14);
        v16 = [(CIVector *)self->inputScalesR count];
        v17 = [(CIVector *)self->inputScalesR count];
        v41 = self->inputScalesR;
        v40 = self->inputScalesB;
        imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
        v19 = self->inputColorSpace;
        v20 = v19;
        if (v19)
        {
          CFAutorelease(v19);
          v21 = [imageByClampingToExtent imageByColorMatchingWorkingSpaceToColorSpace:v20];

          imageByClampingToExtent = v21;
        }

        v22 = 2.0 / v15;
        v23 = (v17 - 1);
        v24 = v22;
        v25 = v8 + v12 * 0.5;
        v26 = v10 + v14 * 0.5;
        v43 = v42;
        v27 = *MEMORY[0x277CBF390];
        v28 = *(MEMORY[0x277CBF390] + 8);
        v29 = *(MEMORY[0x277CBF390] + 16);
        v39 = *(MEMORY[0x277CBF390] + 24);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = sub_2337DA970;
        v44[3] = &unk_2789EF0C8;
        v48 = v25;
        v49 = v26;
        v50 = v24;
        v51 = v23;
        v30 = v41;
        v45 = v30;
        v31 = v40;
        v46 = v31;
        v47 = v16;
        mapImg = self->mapImg;
        v54[0] = imageByClampingToExtent;
        v54[1] = mapImg;
        v33 = [MEMORY[0x277CBF788] vectorWithX:v25 Y:v26 Z:v24 W:v23];
        v54[2] = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:3];
        v35 = [v43 applyWithExtent:v44 roiCallback:v34 arguments:{v27, v28, v29, v39}];

        [(CIImage *)self->inputImage extent];
        v36 = [v35 imageByCroppingToRect:?];

        if (v20)
        {
          v37 = [(CIImage *)v36 imageByColorMatchingColorSpaceToWorkingSpace:v20];

          v36 = v37;
        }
      }

      else
      {
        v36 = 0;
      }

      v6[2](v6);
    }

    else
    {
      v36 = inputImage;
    }
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

@end