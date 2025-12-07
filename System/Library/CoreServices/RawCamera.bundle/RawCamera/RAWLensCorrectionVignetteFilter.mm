@interface RAWLensCorrectionVignetteFilter
+ (id)customAttributes;
- (BOOL)makeMapImages;
- (id)customAttributes;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWLensCorrectionVignetteFilter

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputVignetteTable"])
  {
    vigImg = self->vigImg;
    self->vigImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWLensCorrectionVignetteFilter;
  [(RAWLensCorrectionVignetteFilter *)&v9 setValue:valueCopy forKey:keyCopy];
}

+ (id)customAttributes
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"inputVignetteAmount";
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
  if (!self->inputVignetteTable || self->vigImg)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(NSData *)self->inputVignetteTable length];
    bytes = [(NSData *)self->inputVignetteTable bytes];
    0xFFFFFFFFFFFFFFF0 = [MEMORY[0x277CBEB28] dataWithLength:(4 * v3) & 0xFFFFFFFFFFFFFFF0];
    mutableBytes = [0xFFFFFFFFFFFFFFF0 mutableBytes];
    if (v3 >= 4)
    {
      v7 = v3 >> 2;
      do
      {
        v8 = vld1q_dup_f32(bytes++);
        *mutableBytes++ = v8;
        --v7;
      }

      while (v7);
    }

    v9 = MEMORY[0x277CBF758];
    v10 = [0xFFFFFFFFFFFFFFF0 length];
    v11 = [v9 imageWithBitmapData:0xFFFFFFFFFFFFFFF0 bytesPerRow:v10 size:*MEMORY[0x277CBF9D0] format:0 colorSpace:{(v3 >> 2), 1.0}];
    vigImg = self->vigImg;
    self->vigImg = v11;

    return 1;
  }

  NSLog(&cfstr_Lenscorrection.isa);
  return 0;
}

- (id)outputImage
{
  v38[2] = *MEMORY[0x277D85DE8];
  v3 = sub_23378E104(self);
  v4 = v3;
  if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWLensCorrectionVignetteFilter", &unk_233945DBE, buf, 2u);
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_2337445CC;
  v36[3] = &unk_2789EE800;
  v36[4] = self;
  v5 = MEMORY[0x2383AC810](v36);
  if (self->inputImage && [(RAWLensCorrectionVignetteFilter *)self makeMapImages])
  {
    [(NSNumber *)self->inputVignetteAmount floatValue];
    if (self->vigImg && (v7 = fminf(fmaxf(v6, 0.0), 1.0), v7 >= 0.001))
    {
      v10 = [LCKernels kernelWithName:@"lensCorrect_vig"];
      [(CIImage *)self->inputImage extent];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [(CIImage *)self->vigImg extent];
      v20 = v19;
      v21 = v16 * 0.5;
      v22 = v18 * 0.5;
      v23 = [MEMORY[0x277CBF788] vectorWithX:v12 + v16 * 0.5 Y:v14 + v18 * 0.5 Z:((v20 + -1.0) / hypotf(v21 W:{v22)), v7}];
      inputImage = self->inputImage;
      [(CIImage *)inputImage extent];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_233744654;
      v34[3] = &unk_2789EE950;
      *&v35 = v20;
      v38[0] = self->vigImg;
      v38[1] = v23;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:{2, MEMORY[0x277D85DD0], 3221225472, sub_233744654, &unk_2789EE950, v35}];
      v8 = [(RAWFilter *)self apply:v10 image:inputImage extent:v34 roiCallback:v33 arguments:self->inputColorSpace inoutSpace:v26, v28, v30, v32];
    }

    else
    {
      v8 = self->inputImage;
    }
  }

  else
  {
    v8 = 0;
  }

  v5[2](v5);

  return v8;
}

@end