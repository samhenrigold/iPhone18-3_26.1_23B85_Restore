@interface RAWLocalToneMap
+ (id)customAttributes;
- (BOOL)makeToneCurveImage;
- (id)outputImage;
@end

@implementation RAWLocalToneMap

+ (id)customAttributes
{
  v38[7] = *MEMORY[0x277D85DE8];
  v37[0] = *MEMORY[0x277CBF7A8];
  v2 = *MEMORY[0x277CBF8D0];
  v36[0] = *MEMORY[0x277CBF888];
  v36[1] = v2;
  v3 = *MEMORY[0x277CBF878];
  v36[2] = *MEMORY[0x277CBF8E8];
  v36[3] = v3;
  v36[4] = *MEMORY[0x277CBF868];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
  v38[0] = v19;
  v37[1] = @"inputAmount";
  v5 = *MEMORY[0x277CBF7E8];
  v30[0] = *MEMORY[0x277CBF7D0];
  v4 = v30[0];
  v30[1] = v5;
  v35[0] = &unk_2849589A8;
  v35[1] = &unk_2849589A8;
  v7 = *MEMORY[0x277CBF7C8];
  v31 = *MEMORY[0x277CBF7E0];
  v6 = v31;
  v32 = v7;
  v35[2] = &unk_2849589B8;
  v35[3] = &unk_2849589C8;
  v9 = *MEMORY[0x277CBF7F0];
  v33 = *MEMORY[0x277CBF798];
  v8 = v33;
  v34 = v9;
  v10 = *MEMORY[0x277CBF850];
  v35[4] = &unk_2849589D8;
  v35[5] = v10;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v30 count:6];
  v38[1] = v18;
  v37[2] = @"inputShadowAmount";
  v28[0] = v4;
  v28[1] = v5;
  v29[0] = &unk_2849589A8;
  v29[1] = &unk_2849589A8;
  v28[2] = v6;
  v28[3] = v7;
  v29[2] = &unk_2849589B8;
  v29[3] = &unk_2849589C8;
  v28[4] = v8;
  v28[5] = v9;
  v29[4] = &unk_2849589D8;
  v29[5] = v10;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v38[2] = v17;
  v37[3] = @"inputHighlightAmount";
  v26[0] = v4;
  v26[1] = v5;
  v27[0] = &unk_2849589A8;
  v27[1] = &unk_2849589A8;
  v26[2] = v6;
  v26[3] = v7;
  v27[2] = &unk_2849589B8;
  v27[3] = &unk_2849589C8;
  v26[4] = v8;
  v26[5] = v9;
  v27[4] = &unk_2849589D8;
  v27[5] = v10;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:6];
  v38[3] = v16;
  v37[4] = @"inputShadowCutoff";
  v24[0] = v4;
  v24[1] = v5;
  v25[0] = &unk_2849589A8;
  v25[1] = &unk_2849589A8;
  v24[2] = v6;
  v24[3] = v7;
  v25[2] = &unk_2849589D8;
  v25[3] = &unk_2849589D8;
  v24[4] = v8;
  v24[5] = v9;
  v25[4] = &unk_2849589E8;
  v25[5] = v10;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  v38[4] = v15;
  v37[5] = @"inputHighlightCutoff";
  v22[0] = v4;
  v22[1] = v5;
  v23[0] = &unk_2849589A8;
  v23[1] = &unk_2849589A8;
  v22[2] = v6;
  v22[3] = v7;
  v23[2] = &unk_2849589D8;
  v23[3] = &unk_2849589D8;
  v22[4] = v8;
  v22[5] = v9;
  v23[4] = &unk_2849589F8;
  v23[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v37[6] = @"inputBlurRadius";
  v38[5] = v11;
  v20[0] = v4;
  v20[1] = v5;
  v21[0] = &unk_284958A08;
  v21[1] = &unk_2849589C8;
  v20[2] = v6;
  v20[3] = v7;
  v21[2] = &unk_284958A18;
  v21[3] = &unk_284958A18;
  v20[4] = v8;
  v20[5] = v9;
  v21[4] = &unk_284958A28;
  v21[5] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v38[6] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:7];

  return v13;
}

- (BOOL)makeToneCurveImage
{
  if (!self->tcImage)
  {
    v13 = [MEMORY[0x277CBEB28] dataWithLength:200];
    mutableBytes = [v13 mutableBytes];
    for (i = 0; i != 50; ++i)
    {
      [(NSNumber *)self->inputAmount floatValue];
      *(mutableBytes + 4 * i) = v5;
      [(NSNumber *)self->inputShadowCutoff floatValue];
      if ((v6 * 50.0) > i)
      {
        [(NSNumber *)self->inputShadowAmount floatValue];
        *(mutableBytes + 4 * i) = v7 * *(mutableBytes + 4 * i);
      }

      [(NSNumber *)self->inputHighlightCutoff floatValue];
      if ((v8 * 50.0) < i)
      {
        [(NSNumber *)self->inputHighlightAmount floatValue];
        *(mutableBytes + 4 * i) = v9 * *(mutableBytes + 4 * i);
      }
    }

    v10 = [MEMORY[0x277CBF758] imageWithBitmapData:v13 bytesPerRow:200 size:*MEMORY[0x277CBF9F0] format:0 colorSpace:{50.0, 1.0}];
    tcImage = self->tcImage;
    self->tcImage = v10;
  }

  return 1;
}

- (id)outputImage
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (qword_27DE37D80 != -1)
  {
    sub_2338F84E8();
  }

  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLocalToneMap", &unk_233945DBE, buf, 2u);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23373734C;
    v33[3] = &unk_2789EE800;
    v33[4] = self;
    v31 = MEMORY[0x2383AC810](v33);
    v5 = MEMORY[0x277CBF788];
    [(NSNumber *)self->inputHighlightAmount floatValue];
    v7 = v6;
    [(NSNumber *)self->inputHighlightCutoff floatValue];
    v9 = v8;
    [(NSNumber *)self->inputShadowAmount floatValue];
    v11 = v10;
    [(NSNumber *)self->inputShadowCutoff floatValue];
    v32 = [v5 vectorWithX:v7 Y:v9 Z:v11 W:v12];
    v13 = MEMORY[0x277CBF788];
    [(NSNumber *)self->inputAmount floatValue];
    v15 = [v13 vectorWithX:v14 Y:0.0 Z:0.0 W:0.0];
    inputImage = self->inputImage;
    v39 = @"inputRadius";
    v40[0] = self->inputBlurRadius;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v18 = [(CIImage *)inputImage imageByApplyingFilter:@"CIGaussianBlur" withInputParameters:v17];

    v19 = qword_27DE37D90;
    v38[0] = v32;
    v38[1] = v15;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v21 = [(RAWFilter *)self apply:v19 image:v18 arguments:v20 inoutSpace:self->inputColorSpace isPremultiplied:1];

    inputBlurRadius = self->inputBlurRadius;
    v36 = @"inputRadius";
    v37 = inputBlurRadius;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v24 = [v21 imageByApplyingFilter:@"CIGaussianBlur" withInputParameters:v23];

    v25 = [MEMORY[0x277CBF780] samplerWithImage:v24 keysAndValues:{*MEMORY[0x277CBFB58], self->inputColorSpace, 0}];
    v26 = qword_27DE37D88;
    v27 = self->inputImage;
    v35[0] = v25;
    v35[1] = v32;
    v35[2] = v15;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:3];
    v29 = [(RAWFilter *)self apply:v26 image:v27 arguments:v28 inoutSpace:self->inputColorSpace isPremultiplied:1];

    v31[2](v31);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

@end