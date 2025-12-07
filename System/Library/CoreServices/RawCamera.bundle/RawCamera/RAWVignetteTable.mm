@interface RAWVignetteTable
- (BOOL)makeMapImages;
- (id)outputImage;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWVignetteTable

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputVignetteTableData"])
  {
    vigImg = self->vigImg;
    self->vigImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWVignetteTable;
  [(RAWVignetteTable *)&v9 setValue:valueCopy forKey:keyCopy];
}

- (BOOL)makeMapImages
{
  v25[3] = *MEMORY[0x277D85DE8];
  if (!self->vigImg)
  {
    intValue = [(NSNumber *)self->inputVignetteTableDataSize intValue];
    if (intValue < 1)
    {
      return 0;
    }

    v7 = intValue;
    v4 = [MEMORY[0x277CBEB28] dataWithLength:((8 * intValue) & 0x3FFFFFFF0) + 16];
    mutableBytes = [v4 mutableBytes];
    bytes = [(NSData *)self->inputVignetteTableData bytes];
    v18 = v7;
    v7 = v7;
    v19 = vdupq_n_s64(1uLL);
    do
    {
      v23 = 0;
      v22 = *bytes;
      dest.rowBytes = 2;
      src.data = &v22;
      *&src.height = v19;
      src.rowBytes = 4;
      dest.data = &v23;
      *&dest.height = v19;
      vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
      v8.i16[1] = 15360;
      v8.i32[1] = 1006648320;
      v8.i16[0] = v23;
      v9 = vzip1_s16(v8, v8);
      v9.i16[2] = v23;
      *mutableBytes++ = v9;
      ++bytes;
      --v7;
    }

    while (v7);
    v10 = MEMORY[0x277CBF758];
    v11 = [v4 length];
    v12 = *MEMORY[0x277CBFA00];
    v24[0] = *MEMORY[0x277CBFA38];
    v24[1] = v12;
    v25[0] = MEMORY[0x277CBEC38];
    v25[1] = MEMORY[0x277CBEC38];
    v24[2] = *MEMORY[0x277CBFA40];
    null = [MEMORY[0x277CBEB68] null];
    v25[2] = null;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v15 = [v10 imageWithBitmapData:v4 bytesPerRow:v11 size:*MEMORY[0x277CBF9D8] format:v14 options:{v18, 1.0}];
    vigImg = self->vigImg;
    self->vigImg = v15;
  }

  return 1;
}

- (id)outputImage
{
  v35[3] = *MEMORY[0x277D85DE8];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    goto LABEL_16;
  }

  [(CIImage *)inputImage extent];
  x = v37.origin.x;
  y = v37.origin.y;
  width = v37.size.width;
  height = v37.size.height;
  if (CGRectIsInfinite(v37))
  {
    NSLog(&cfstr_Rawvignettetab_0.isa);
LABEL_4:
    v8 = self->inputImage;
    goto LABEL_17;
  }

  if ([(NSNumber *)self->inputVignetteTableDataSize intValue]>= 1 && (v9 = [(RAWVignetteTable *)self makeMapImages], v9))
  {
    if (!self->vigImg)
    {
      goto LABEL_4;
    }

    v10 = sub_23378E104(v9);
    v11 = v10;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWVignetteTable", &unk_233945DBE, buf, 2u);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_233743D34;
    v33[3] = &unk_2789EE800;
    v33[4] = self;
    v12 = MEMORY[0x2383AC810](v33);
    intValue = [(NSNumber *)self->inputVignetteTableDataSize intValue];
    v14 = [MEMORY[0x277CBF788] vectorWithX:x + width * 0.5 Y:y + height * 0.5 Z:((intValue + -1.0) / hypot(width * 0.5 W:{height * 0.5)), 0.5}];
    v15 = self->inputImage;
    v16 = self->inputColorSpace;
    if (v16)
    {
      v17 = [(CIImage *)v15 imageByColorMatchingWorkingSpaceToColorSpace:v16];

      v15 = v17;
    }

    v18 = [GainMapKernels kernelWithName:@"vignetteCorrectionTable"];
    [(CIImage *)v15 extent];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_233743DBC;
    v31[3] = &unk_2789EE950;
    vigImg = self->vigImg;
    LODWORD(v32) = intValue;
    v35[0] = v15;
    v35[1] = vigImg;
    v35[2] = v14;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:{3, MEMORY[0x277D85DD0], 3221225472, sub_233743DBC, &unk_2789EE950, v32}];
    v8 = [v18 applyWithExtent:v31 roiCallback:v28 arguments:{v20, v22, v24, v26}];

    if (v16)
    {
      v29 = [(CIImage *)v8 imageByColorMatchingColorSpaceToWorkingSpace:v16];

      v8 = v29;
    }

    v12[2](v12);
  }

  else
  {
LABEL_16:
    v8 = 0;
  }

LABEL_17:

  return v8;
}

@end