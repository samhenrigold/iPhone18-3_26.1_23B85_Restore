@interface RAWGamutMap
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
@end

@implementation RAWGamutMap

+ (id)customAttributes
{
  v25[4] = *MEMORY[0x277D85DE8];
  v25[0] = MEMORY[0x277CBEC10];
  v24[0] = @"inputColorSpace";
  v24[1] = @"inputShouldWarn";
  v3 = *MEMORY[0x277CBF7F0];
  v22[0] = *MEMORY[0x277CBF798];
  v2 = v22[0];
  v22[1] = v3;
  v4 = *MEMORY[0x277CBF800];
  v23[0] = MEMORY[0x277CBEC28];
  v23[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[1] = v5;
  v24[2] = @"inputVersion";
  v20[0] = *MEMORY[0x277CBF790];
  v6 = v20[0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *MEMORY[0x277CBF7D0];
  v21[0] = v8;
  v21[1] = &unk_284957BF8;
  v10 = *MEMORY[0x277CBF7C8];
  v20[1] = v9;
  v20[2] = v10;
  v21[2] = &unk_284957C10;
  v21[3] = &unk_284957BF8;
  v20[3] = v2;
  v20[4] = v3;
  v11 = *MEMORY[0x277CBF850];
  v20[5] = *MEMORY[0x277CBF7A0];
  v21[4] = v11;
  v21[5] = @"inputVersion";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];
  v25[2] = v12;
  v24[3] = @"inputGamutMapMax";
  v18[0] = v6;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v19[0] = v14;
  v19[1] = &unk_284957C28;
  v18[1] = v2;
  v18[2] = v3;
  v19[2] = v11;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v25[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  return v16;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputImage
{
  v16[6] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWGamutMap", &unk_233945DBE, buf, 2u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_23381C328;
    v13[3] = &unk_2789EE800;
    v13[4] = self;
    v5 = MEMORY[0x2383AC810](v13);
    v6 = self->inputImage;
    if ([(NSNumber *)self->inputShouldWarn BOOLValue])
    {
      v7 = [GMKernels kernelWithName:@"gamutWarning"];
      v8 = [(RAWFilter *)self apply:v7 image:v6 arguments:0 inoutSpace:self->inputColorSpace isPremultiplied:1];
    }

    else
    {
      if ([(NSNumber *)self->inputVersion intValue]< 7)
      {
        v7 = [GMKernels kernelWithName:@"gmKernel_v6"];
        v15[0] = &unk_284958B28;
        v15[1] = &unk_284958B38;
        v15[2] = &unk_284958AF8;
        v15[3] = &unk_284958B48;
        inputGamutMapMax = self->inputGamutMapMax;
        v15[4] = &unk_284958B58;
        v15[5] = inputGamutMapMax;
        [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:6];
      }

      else
      {
        v7 = [GMKernels kernelWithName:@"gmKernel_v7"];
        v16[0] = &unk_284958AD8;
        v16[1] = &unk_284958AE8;
        v16[2] = &unk_284958AF8;
        v16[3] = &unk_284958B08;
        v9 = self->inputGamutMapMax;
        v16[4] = &unk_284958B18;
        v16[5] = v9;
        [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:6];
      }
      v10 = ;
      v8 = [(RAWFilter *)self apply:v7 image:v6 arguments:v10 inoutSpace:self->inputColorSpace isPremultiplied:1];

      v6 = v10;
    }

    v5[2](v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end