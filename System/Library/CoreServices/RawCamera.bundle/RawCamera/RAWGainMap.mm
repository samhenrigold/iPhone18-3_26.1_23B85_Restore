@interface RAWGainMap
- (id)makeMapSampler;
- (id)outputImage;
- (void)setDefaults;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation RAWGainMap

- (void)setDefaults
{
  inputGainMapRowPitch = self->inputGainMapRowPitch;
  self->inputGainMapRowPitch = &unk_2849588D0;

  inputGainMapColPitch = self->inputGainMapColPitch;
  self->inputGainMapColPitch = &unk_2849588D0;

  gainMapImg = self->_gainMapImg;
  self->_gainMapImg = 0;

  v6 = sub_2338F28E4();
  inputColorSpace = self->inputColorSpace;
  self->inputColorSpace = v6;

  MEMORY[0x2821F96F8](v6, inputColorSpace);
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy hasPrefix:@"inputGainMapData"])
  {
    gainMapImg = self->_gainMapImg;
    self->_gainMapImg = 0;
  }

  v9.receiver = self;
  v9.super_class = RAWGainMap;
  [(RAWGainMap *)&v9 setValue:valueCopy forKey:keyCopy];
}

- (id)makeMapSampler
{
  v28[3] = *MEMORY[0x277D85DE8];
  [(CIVector *)self->inputGainMapSize X];
  v4 = v3;
  [(CIVector *)self->inputGainMapSize Y];
  v6 = v5;
  intValue = [(NSNumber *)self->inputGainMapNumPlanes intValue];
  v8 = v6 * v4;
  bytes = [(NSData *)self->inputGainMapData bytes];
  if (intValue == 1)
  {
    v10 = 2 * v4;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:2 * v4 * v6];
    mutableBytes = [v11 mutableBytes];
    src.data = bytes;
    src.height = 1;
    src.width = v6 * v4;
    src.rowBytes = [(NSData *)self->inputGainMapData length];
    dest.data = mutableBytes;
    dest.height = 1;
    dest.width = v6 * v4;
    dest.rowBytes = [v11 length];
    vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0x10u);
    v13 = MEMORY[0x277CBF9F8];
  }

  else
  {
    v10 = 8 * v4;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:8 * v4 * v6];
    mutableBytes2 = [v11 mutableBytes];
    if (v8)
    {
      v15 = mutableBytes2;
      v24 = xmmword_233909230;
      do
      {
        dest.rowBytes = 6;
        src.data = bytes;
        *&src.height = xmmword_233909230;
        src.rowBytes = 12;
        dest.data = v15;
        *&dest.height = xmmword_233909230;
        vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        v15[3] = 15360;
        v15 += 4;
        bytes += 12;
        --v8;
      }

      while (v8);
    }

    v13 = MEMORY[0x277CBF9D8];
  }

  v16 = *v13;
  v27[0] = *MEMORY[0x277CBFA40];
  null = [MEMORY[0x277CBEB68] null];
  v18 = *MEMORY[0x277CBFB78];
  v19 = *MEMORY[0x277CBFB70];
  v28[0] = null;
  v28[1] = v19;
  v20 = *MEMORY[0x277CBFB68];
  v27[1] = v18;
  v27[2] = v20;
  v28[2] = *MEMORY[0x277CBFB60];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v22 = [MEMORY[0x277CBF758] imageWithBitmapData:v11 bytesPerRow:v10 size:v16 format:v21 options:{v4, v6}];

  return v22;
}

- (id)outputImage
{
  v86[2] = *MEMORY[0x277D85DE8];
  if (self->inputImage)
  {
    [(CIVector *)self->inputGainMapSize X];
    v4 = v3;
    [(CIVector *)self->inputGainMapSize Y];
    v6 = v5;
    intValue = [(NSNumber *)self->inputGainMapNumPlanes intValue];
    intValue2 = [(NSNumber *)self->inputGainMapRowPitch intValue];
    intValue3 = [(NSNumber *)self->inputGainMapColPitch intValue];
    if (![(NSNumber *)self->inputGainMapExecute BOOLValue]|| !self->inputGainMapData)
    {
      goto LABEL_20;
    }

    v10 = v4;
    v11 = v6;
    if (v4 < 2 || v11 < 2 || intValue2 == 0 || intValue3 == 0 || (intValue & 0xFFFFFFFD) != 1)
    {
      NSLog(&cfstr_RawgainmapDisa.isa);
LABEL_20:
      v20 = self->inputImage;
      goto LABEL_41;
    }

    [(CIImage *)self->inputImage extent];
    x = v88.origin.x;
    y = v88.origin.y;
    width = v88.size.width;
    height = v88.size.height;
    if (CGRectIsInfinite(v88))
    {
      NSLog(&cfstr_RawgainmapDisa_0.isa);
      goto LABEL_20;
    }

    [(CIVector *)self->inputGainMapApplyRegion CGRectValue];
    v22 = width * v21;
    v24 = height * v23;
    v89.size.width = width * v25;
    v89.size.height = height * v26;
    v89.origin.x = width * v21;
    v89.origin.y = height * v23;
    v79 = v89.size.height;
    v80 = v89.size.width;
    v94.origin.x = x;
    v94.origin.y = y;
    v94.size.width = width;
    v94.size.height = height;
    v27 = CGRectContainsRect(v89, v94);
    v28 = v27;
    v29 = sub_23378E104(v27);
    v30 = v29;
    if (&self->super.super.super.isa + 1 >= 2 && os_signpost_enabled(v29))
    {
      LOWORD(v83.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_23371F000, v30, OS_SIGNPOST_INTERVAL_BEGIN, self, "RAWGainMap", &unk_233945DBE, &v83, 2u);
    }

    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_2338F4438;
    v84[3] = &unk_2789EE800;
    v84[4] = self;
    v81 = MEMORY[0x2383AC810](v84);
    if (!self->_gainMapImg)
    {
      makeMapSampler = [(RAWGainMap *)self makeMapSampler];
      gainMapImg = self->_gainMapImg;
      self->_gainMapImg = makeMapSampler;
    }

    v33 = self->inputImage;
    v34 = self->inputColorSpace;
    v35 = v34;
    if (v34)
    {
      CFAutorelease(v34);
      v36 = [(CIImage *)v33 imageByColorMatchingWorkingSpaceToColorSpace:v35];

      v33 = v36;
    }

    [(CIVector *)self->inputGainMapRegion CGRectValue];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    imageByClampingToExtent = [(CIImage *)self->_gainMapImg imageByClampingToExtent];
    v46 = height * v44;
    memset(&v83, 0, sizeof(v83));
    CGAffineTransformMakeScale(&v83, width * v42 / (v10 - 1), v46 / (v11 - 1));
    CGAffineTransformMakeTranslation(&v82, -0.5, -0.5);
    v47 = [imageByClampingToExtent imageByApplyingTransform:&v82];
    v82 = v83;
    v48 = [v47 imageByApplyingTransform:&v82];

    CGAffineTransformMakeTranslation(&v82, width * v38, height - v46 - height * v40);
    v49 = [v48 imageByApplyingTransform:&v82];

    v51 = intValue2 == 1 && intValue3 == 1;
    if (v51 && v28)
    {
      v52 = [GainMapKernels kernelWithName:@"GainMap"];
      [(CIImage *)v33 extent];
      v54 = v53;
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v86[0] = v33;
      v86[1] = v49;
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:2];
      [v52 applyWithExtent:v61 arguments:{v54, v56, v58, v60}];
      v20 = v62 = v33;
    }

    else
    {
      v52 = [GainMapKernels kernelWithName:@"GainMapWithPitch"];
      v61 = [MEMORY[0x277CBF788] vectorWithX:intValue2 Y:intValue3];
      v63 = MEMORY[0x277CBF788];
      v90.origin.x = v22;
      v90.origin.y = v24;
      v90.size.width = v80;
      v90.size.height = v79;
      MinX = CGRectGetMinX(v90);
      v91.origin.x = v22;
      v91.origin.y = v24;
      v91.size.width = v80;
      v91.size.height = v79;
      MaxY = CGRectGetMaxY(v91);
      v92.origin.x = v22;
      v92.origin.y = v24;
      v92.size.width = v80;
      v92.size.height = v79;
      MaxX = CGRectGetMaxX(v92);
      v93.origin.x = v22;
      v93.origin.y = v24;
      v93.size.width = v80;
      v93.size.height = v79;
      v62 = [v63 vectorWithX:MinX Y:height - MaxY Z:MaxX W:height - CGRectGetMinY(v93)];
      [(CIImage *)v33 extent];
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;
      v85[0] = v33;
      v85[1] = v49;
      v85[2] = v61;
      v85[3] = v62;
      v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:4];
      v76 = [v52 applyWithExtent:v75 arguments:{v68, v70, v72, v74}];

      v20 = v76;
    }

    if (v35)
    {
      v77 = [(CIImage *)v20 imageByColorMatchingColorSpaceToWorkingSpace:v35];

      v20 = v77;
    }

    v81[2](v81);
  }

  else
  {
    v20 = 0;
  }

LABEL_41:

  return v20;
}

@end