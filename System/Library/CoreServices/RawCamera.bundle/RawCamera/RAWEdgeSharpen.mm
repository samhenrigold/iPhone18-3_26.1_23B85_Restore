@interface RAWEdgeSharpen
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWEdgeSharpen

+ (id)customAttributes
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32[0] = @"inputColorSpace";
  v29 = *MEMORY[0x277CBF798];
  v2 = v29;
  v3 = sub_2338F28E4();
  v30 = *MEMORY[0x277CBF7A0];
  v4 = v30;
  v31[0] = v3;
  v31[1] = @"inputColorSpace";
  v33[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v29 count:2];
  v32[1] = @"inputVersion";
  v27[0] = *MEMORY[0x277CBF790];
  v5 = v27[0];
  v22 = v33[0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *MEMORY[0x277CBF7D0];
  v19 = v7;
  v28[0] = v7;
  v28[1] = &unk_284958D28;
  v9 = *MEMORY[0x277CBF7C8];
  v27[1] = v8;
  v27[2] = v9;
  v28[2] = &unk_284958D38;
  v28[3] = &unk_284958D48;
  v10 = *MEMORY[0x277CBF7F0];
  v27[3] = v2;
  v27[4] = v10;
  v11 = *MEMORY[0x277CBF850];
  v27[5] = v4;
  v28[4] = v11;
  v28[5] = @"inputVersion";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v33[1] = v20;
  v32[2] = @"inputPreSharpenAmount";
  v25[0] = v5;
  v12 = objc_opt_class();
  v21 = NSStringFromClass(v12);
  v26[0] = v21;
  v26[1] = &unk_284958D58;
  v25[1] = v8;
  v25[2] = v9;
  v26[2] = &unk_284958D68;
  v26[3] = &unk_284958D58;
  v25[3] = v2;
  v25[4] = v10;
  v25[5] = v4;
  v26[4] = v11;
  v26[5] = @"inputPreSharpenAmount";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];
  v33[2] = v13;
  v32[3] = @"inputPreSharpenBlurAmount";
  v23[0] = v5;
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v24[0] = v15;
  v24[1] = &unk_284958D78;
  v23[1] = v8;
  v23[2] = v9;
  v24[2] = &unk_284958D88;
  v24[3] = &unk_284958D58;
  v23[3] = v2;
  v23[4] = v10;
  v23[5] = v4;
  v24[4] = v11;
  v24[5] = @"inputPreSharpenBlurAmount";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  v33[3] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:4];

  return v17;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputImage
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWEdgeSharpen", &unk_233945DBE, buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2338F8170;
    v24[3] = &unk_2789EE800;
    v24[4] = self;
    v5 = MEMORY[0x2383AC810](v24);
    [(NSNumber *)self->inputPreSharpenAmount doubleValue];
    v7 = v6;
    [(NSNumber *)self->inputPreSharpenBlurAmount doubleValue];
    v9 = v8;
    if (fabs(v7) >= 0.001 || fabs(v8) >= 0.001)
    {
      v11 = [RAWKernels kernelWithName:@"simpleSharpenLNR"];
      inputImage = self->inputImage;
      [(CIImage *)inputImage extent];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [MEMORY[0x277CBF788] vectorWithX:v9 Y:v7];
      v26[0] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
      v10 = [(RAWFilter *)self apply:v11 image:inputImage extent:&unk_284938020 roiCallback:v22 arguments:self->inputColorSpace inoutSpace:v14, v16, v18, v20];
    }

    else
    {
      v10 = self->inputImage;
    }

    v5[2](v5);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end