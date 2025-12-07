@interface RAWAdjustExposureAndBias
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)customAttributes;
- (id)customAttributes;
- (id)outputImage;
- (id)outputMatrix;
@end

@implementation RAWAdjustExposureAndBias

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"inputExposure"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"inputBias"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___RAWAdjustExposureAndBias;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

+ (id)customAttributes
{
  v30[5] = *MEMORY[0x277D85DE8];
  v29[0] = @"inputColorSpace";
  v27 = *MEMORY[0x277CBF798];
  v2 = v27;
  v28 = sub_2338F2BB4();
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v19;
  v29[1] = @"inputBaselineExposure";
  v24[0] = *MEMORY[0x277CBF790];
  v3 = v24[0];
  v4 = objc_opt_class();
  v17 = NSStringFromClass(v4);
  v25[0] = v17;
  v25[1] = &unk_284958CC8;
  v5 = *MEMORY[0x277CBF7D0];
  v24[1] = v2;
  v24[2] = v5;
  v6 = *MEMORY[0x277CBF7C8];
  v25[2] = &unk_284958CB8;
  v25[3] = &unk_284958CD8;
  v7 = *MEMORY[0x277CBF7F0];
  v24[3] = v6;
  v24[4] = v7;
  v26 = *MEMORY[0x277CBF850];
  v8 = v26;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v30[1] = v18;
  v29[2] = @"inputExposure";
  v22[0] = v3;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v23[0] = v10;
  v23[1] = &unk_284958CC8;
  v22[1] = v2;
  v22[2] = v5;
  v23[2] = &unk_284958CB8;
  v23[3] = &unk_284958CD8;
  v22[3] = v6;
  v22[4] = v7;
  v23[4] = v8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v30[2] = v11;
  v29[3] = @"inputBias";
  v20[0] = v3;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v21[0] = v13;
  v21[1] = &unk_284958CE8;
  v20[1] = v2;
  v20[2] = v5;
  v21[2] = &unk_284958CC8;
  v21[3] = &unk_284958CF8;
  v20[3] = v6;
  v20[4] = v7;
  v21[4] = v8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
  v29[4] = @"kCIRAWFilterDoesClip";
  v30[3] = v14;
  v30[4] = MEMORY[0x277CBEC28];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];

  return v15;
}

- (id)customAttributes
{
  v2 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_customAttributes);
}

- (id)outputMatrix
{
  v17[4] = *MEMORY[0x277D85DE8];
  [(NSNumber *)self->inputExposure doubleValue];
  v4 = v3;
  [(NSNumber *)self->inputBaselineExposure doubleValue];
  v6 = 1.0 / exp2(v4 + v5);
  [(NSNumber *)self->inputBias doubleValue];
  v8 = v7 * 0.001;
  v9 = 1.0 / (v6 - v7 * 0.001);
  v16[0] = @"inputRVector";
  v10 = [MEMORY[0x277CBF788] vectorWithX:v9 Y:0.0 Z:0.0];
  v17[0] = v10;
  v16[1] = @"inputGVector";
  v11 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:v9 Z:0.0];
  v17[1] = v11;
  v16[2] = @"inputBVector";
  v12 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:v9];
  v17[2] = v12;
  v16[3] = @"inputBiasVector";
  v13 = [MEMORY[0x277CBF788] vectorWithX:-(v8 * v9) Y:-(v8 * v9) Z:-(v8 * v9)];
  v17[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  return v14;
}

- (id)outputImage
{
  if (self->inputImage)
  {
    v3 = sub_23378E104(self);
    v4 = v3;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWAdjustExposureAndBias", &unk_233945DBE, buf, 2u);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2338A181C;
    v14[3] = &unk_2789EE800;
    v14[4] = self;
    v5 = MEMORY[0x2383AC810](v14);
    outputMatrix = [(RAWAdjustExposureAndBias *)self outputMatrix];
    inputImage = self->inputImage;
    v8 = [outputMatrix objectForKeyedSubscript:@"inputRVector"];
    v9 = [outputMatrix objectForKeyedSubscript:@"inputGVector"];
    v10 = [outputMatrix objectForKeyedSubscript:@"inputBVector"];
    v11 = [outputMatrix objectForKeyedSubscript:@"inputBiasVector"];
    v12 = [(RAWFilter *)self applyMatrixToImage:inputImage vectorR:v8 vectorG:v9 vectorB:v10 vectorBias:v11 inSpace:self->inputColorSpace outSpace:?];

    v5[2](v5);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end