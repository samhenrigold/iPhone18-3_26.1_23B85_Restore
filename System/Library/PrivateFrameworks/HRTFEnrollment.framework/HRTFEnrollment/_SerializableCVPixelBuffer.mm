@interface _SerializableCVPixelBuffer
- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref;
- (_SerializableCVPixelBuffer)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SerializableCVPixelBuffer

- (_SerializableCVPixelBuffer)initWithCVPixelBufferRef:(__CVBuffer *)ref
{
  v7.receiver = self;
  v7.super_class = _SerializableCVPixelBuffer;
  v4 = [(_SerializableCVPixelBuffer *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_pixelBuffer = ref;
    CVBufferRetain(ref);
  }

  return v5;
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVBufferRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = _SerializableCVPixelBuffer;
  [(_SerializableCVPixelBuffer *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v42[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  CVPixelBufferLockBaseAddress(self->_pixelBuffer, 1uLL);
  PlaneCount = CVPixelBufferGetPlaneCount(self->_pixelBuffer);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(self->_pixelBuffer)];
  [coderCopy encodeObject:v6 forKey:@"PixelFormat"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:PlaneCount];
  [coderCopy encodeObject:v7 forKey:@"PlaneCount"];

  if (PlaneCount)
  {
    v37 = coderCopy;
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    [v8 addObject:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v13 = v9;
    [v9 addObject:v12];

    if (PlaneCount >= 1)
    {
      v14 = 0;
      do
      {
        v15 = PlaneCount;
        v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidthOfPlane(self->_pixelBuffer, v14)}];
        [v8 addObject:v16];

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(self->_pixelBuffer, v14);
        v18 = v8;
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(self->_pixelBuffer, v14);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:HeightOfPlane];
        [v13 addObject:v20];

        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:BytesPerRowOfPlane];
        [v38 addObject:v21];

        v22 = BytesPerRowOfPlane * HeightOfPlane;
        v8 = v18;
        v23 = objc_alloc(MEMORY[0x277CBEA90]);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(self->_pixelBuffer, v14);
        v25 = v23;
        PlaneCount = v15;
        v26 = [v25 initWithBytes:BaseAddressOfPlane length:v22];
        [v10 addObject:v26];

        ++v14;
      }

      while (v15 != v14);
    }

    coderCopy = v37;
    [v37 encodeObject:v8 forKey:@"Width"];
    [v37 encodeObject:v13 forKey:@"Height"];
    [v37 encodeObject:v38 forKey:@"BytesPerRow"];
    [v37 encodeObject:v10 forKey:@"PixelData"];
  }

  else
  {
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetWidth(self->_pixelBuffer)];
    v42[0] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    [coderCopy encodeObject:v28 forKey:@"Width"];

    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetHeight(self->_pixelBuffer)];
    v41 = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
    [coderCopy encodeObject:v30 forKey:@"Height"];

    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:CVPixelBufferGetBytesPerRow(self->_pixelBuffer)];
    v40 = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    [coderCopy encodeObject:v32 forKey:@"BytesPerRow"];

    v33 = objc_alloc(MEMORY[0x277CBEA90]);
    BaseAddress = CVPixelBufferGetBaseAddress(self->_pixelBuffer);
    v35 = [v33 initWithBytes:BaseAddress length:CVPixelBufferGetDataSize(self->_pixelBuffer)];
    v39 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
    [coderCopy encodeObject:v36 forKey:@"PixelData"];
  }

  CVPixelBufferUnlockBaseAddress(self->_pixelBuffer, 1uLL);
}

- (_SerializableCVPixelBuffer)initWithCoder:(id)coder
{
  v90[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"PlaneCount"] && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelFormat") && objc_msgSend(coderCopy, "containsValueForKey:", @"Width") && objc_msgSend(coderCopy, "containsValueForKey:", @"Height") && objc_msgSend(coderCopy, "containsValueForKey:", @"BytesPerRow") && objc_msgSend(coderCopy, "containsValueForKey:", @"PixelData"))
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PlaneCount"];
    integerValue = [v5 integerValue];
    v7 = MEMORY[0x277CBEB98];
    v90[0] = objc_opt_class();
    v90[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:2];
    v9 = [v7 setWithArray:v8];

    v10 = MEMORY[0x277CBEB98];
    v11 = integerValue;
    v89[0] = objc_opt_class();
    v89[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
    v13 = [v10 setWithArray:v12];

    v79 = v13;
    v80 = v9;
    if (integerValue)
    {
      selfCopy = self;
      v78 = v5;
      v14 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Width"];
      v15 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Height"];
      v16 = v9;
      v17 = v15;
      v18 = [coderCopy decodeObjectOfClasses:v16 forKey:@"BytesPerRow"];
      v73 = coderCopy;
      v19 = [coderCopy decodeObjectOfClasses:v13 forKey:@"PixelData"];
      v20 = [(size_t *)v14 objectAtIndexedSubscript:0];
      integerValue2 = [v20 integerValue];

      v21 = [v17 objectAtIndexedSubscript:0];
      integerValue3 = [v21 integerValue];

      v76 = &v73;
      MEMORY[0x28223BE20](v22);
      v23 = (8 * v11 + 15) & 0xFFFFFFFFFFFFFFF0;
      v24 = (&v73 - v23);
      if ((8 * v11) >= 0x200)
      {
        v25 = 512;
      }

      else
      {
        v25 = 8 * v11;
      }

      bzero(&v73 - v23, v25);
      v27 = MEMORY[0x28223BE20](v26);
      planeWidth = (&v73 - v23);
      v29 = MEMORY[0x28223BE20](v27);
      v83 = (&v73 - v23);
      MEMORY[0x28223BE20](v29);
      planeBytesPerRow = (&v73 - v23);
      if (v11 >= 1)
      {
        v30 = 0;
        v81 = v11;
        do
        {
          v31 = [v19 objectAtIndexedSubscript:v30];
          v32 = malloc_type_malloc([v31 length], 0xBD302F31uLL);
          v24[v30] = v32;

          v33 = [v19 objectAtIndexedSubscript:v30];
          [v19 objectAtIndexedSubscript:v30];
          v34 = planeWidth;
          v35 = v24;
          v36 = v19;
          v37 = v18;
          v38 = v17;
          v40 = v39 = v14;
          [v33 getBytes:v32 length:{objc_msgSend(v40, "length")}];

          v14 = v39;
          v17 = v38;
          v18 = v37;
          v19 = v36;
          v24 = v35;
          planeWidth = v34;

          v41 = [(size_t *)v14 objectAtIndexedSubscript:v30 + 1];
          v34[v30] = [v41 integerValue];

          v42 = [v17 objectAtIndexedSubscript:v30 + 1];
          integerValue4 = [v42 integerValue];
          v83[v30] = integerValue4;

          v44 = [v18 objectAtIndexedSubscript:v30];
          integerValue5 = [v44 integerValue];
          planeBytesPerRow[v30] = integerValue5;

          v11 = v81;
          v30 = v30 + 1;
        }

        while (v30 != v81);
      }

      pixelBufferOut = 0;
      v46 = objc_opt_class();
      coderCopy = v73;
      v47 = [v73 decodeObjectOfClass:v46 forKey:@"PixelFormat"];

      integerValue6 = [(size_t *)v47 integerValue];
      v49 = CVPixelBufferCreateWithPlanarBytes(*MEMORY[0x277CBECE8], integerValue2, integerValue3, integerValue6, 0, 0, v11, v24, planeWidth, v83, planeBytesPerRow, __planarDeallocateHelper, 0, 0, &pixelBufferOut);
      if (v49)
      {
        v50 = v49;
        v51 = HRTFLogObjectForCategory_HRTFSerializableCaptureData(v49);
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
        v53 = v80;
        self = selfCopy;
        if (v52)
        {
          *buf = 67109120;
          v88 = v50;
          _os_log_impl(&dword_250984000, v51, OS_LOG_TYPE_ERROR, "failed to create planar CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v84.receiver = selfCopy;
        v84.super_class = _SerializableCVPixelBuffer;
        v71 = [(_SerializableCVPixelBuffer *)&v84 init];
        v53 = v80;
        if (v71)
        {
          v71->_pixelBuffer = pixelBufferOut;
        }

        self = v71;
        selfCopy3 = self;
      }
    }

    else
    {
      v56 = [coderCopy decodeObjectOfClasses:v13 forKey:@"PixelData"];
      v57 = [v56 objectAtIndexedSubscript:0];

      v76 = malloc_type_malloc([v57 length], 0x74067141uLL);
      v83 = v57;
      memcpy(v76, [v57 bytes], objc_msgSend(v57, "length"));
      pixelBufferOut = 0;
      v58 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Width"];
      v59 = [coderCopy decodeObjectOfClasses:v9 forKey:@"Height"];
      v60 = [coderCopy decodeObjectOfClasses:v9 forKey:@"BytesPerRow"];
      v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PixelFormat"];

      planeBytesPerRow = v61;
      integerValue2 = [(size_t *)v61 integerValue];
      v62 = *MEMORY[0x277CBECE8];
      v81 = v58;
      v63 = [v58 objectAtIndexedSubscript:0];
      integerValue7 = [v63 integerValue];
      v78 = v59;
      v65 = [v59 objectAtIndexedSubscript:0];
      integerValue8 = [v65 integerValue];
      selfCopy = v60;
      v67 = [(_SerializableCVPixelBuffer *)v60 objectAtIndexedSubscript:0];
      v68 = CVPixelBufferCreateWithBytes(v62, integerValue7, integerValue8, integerValue2, v76, [v67 integerValue], __deallocateHelper, 0, 0, &pixelBufferOut);

      if (v68)
      {
        v70 = HRTFLogObjectForCategory_HRTFSerializableCaptureData(v69);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v88 = v68;
          _os_log_impl(&dword_250984000, v70, OS_LOG_TYPE_ERROR, "failed to create CVPixelBuffer: %d", buf, 8u);
        }

        selfCopy3 = 0;
      }

      else
      {
        v85.receiver = self;
        v85.super_class = _SerializableCVPixelBuffer;
        v72 = [(_SerializableCVPixelBuffer *)&v85 init];
        if (v72)
        {
          v72->_pixelBuffer = pixelBufferOut;
        }

        self = v72;
        selfCopy3 = self;
      }

      v53 = v80;
      v47 = planeBytesPerRow;
      v14 = v83;
    }
  }

  else
  {
    selfCopy3 = 0;
  }

  return selfCopy3;
}

@end