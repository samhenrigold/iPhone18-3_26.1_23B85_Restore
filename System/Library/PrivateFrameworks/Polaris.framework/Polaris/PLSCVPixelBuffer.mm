@interface PLSCVPixelBuffer
+ (__CFDictionary)pixelBufferAttributesCreateWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
+ (id)getIOSurfacePropertiesWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
+ (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output;
- (PLSCVPixelBuffer)initWithKey:(id)key PixelBufferAttributes:(__CFDictionary *)attributes;
- (__n128)setCameraIntrinsics:(__n128)intrinsics;
- (id)initFromIOSurface:(__IOSurface *)surface WithKey:(id)key;
- (void)dealloc;
@end

@implementation PLSCVPixelBuffer

+ (__CFDictionary)pixelBufferAttributesCreateWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v5 = *&format;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4EC8], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:width]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4DD8], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:height]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E38], &unk_2870CAB78);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], &unk_2870CAB78);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4E30], [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5]);
  return Mutable;
}

- (PLSCVPixelBuffer)initWithKey:(id)key PixelBufferAttributes:(__CFDictionary *)attributes
{
  keyCopy = key;
  v16.receiver = self;
  v16.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v16 init];
  if (v7)
  {
    v8 = [CFDictionaryGetValue(attributes *MEMORY[0x277CC4EC8])];
    v9 = [CFDictionaryGetValue(attributes *MEMORY[0x277CC4DD8])];
    v10 = +[PLSCVPixelBuffer getIOSurfacePropertiesWidth:height:pixelFormat:](PLSCVPixelBuffer, "getIOSurfacePropertiesWidth:height:pixelFormat:", v8, v9, [CFDictionaryGetValue(attributes *MEMORY[0x277CC4E30])]);
    v11 = IOSurfaceCreate(v10);
    if (v11)
    {
      v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v11, 0, &v7->pixelBufferRef);
      if (v12)
      {
        NSLog(&cfstr_FailedToCreate.isa, keyCopy, v12);
      }

      else
      {
        v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
        [(PLSCVPixelBuffer *)v7 setMetadata:v13];

        [(PLSCVPixelBuffer *)v7 setKey:keyCopy];
        [(PLSCVPixelBuffer *)v7 setTimestamp:0];
        [(PLSCVPixelBuffer *)v7 setResourceType:0];
        [(PLSCVPixelBuffer *)v7 setSurfaceRef:v11];
      }

      CFRelease(v11);
    }

    else
    {
      NSLog(&cfstr_FailedToAlloca.isa, keyCopy);
    }

    v14 = v7;
  }

  return v7;
}

- (id)initFromIOSurface:(__IOSurface *)surface WithKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = PLSCVPixelBuffer;
  v7 = [(PLSCVPixelBuffer *)&v11 init];
  if (v7)
  {
    v8 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], surface, 0, &v7->pixelBufferRef);
    if (!v8)
    {
      [(PLSCVPixelBuffer *)v7 setKey:keyCopy];
      [(PLSCVPixelBuffer *)v7 setTimestamp:0];
      [(PLSCVPixelBuffer *)v7 setResourceType:0];
      [(PLSCVPixelBuffer *)v7 setSurfaceRef:surface];
      v9 = v7;
      goto LABEL_6;
    }

    NSLog(&cfstr_FailedToCreate.isa, keyCopy, v8);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)getIOSurfacePropertiesWidth:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  v5 = *&format;
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = CVPixelFormatDescriptionCreateWithPixelFormatType(v6, v5);
  [CFDictionaryGetValue(v8 *MEMORY[0x277CC4F38])];
  v9 = [CFDictionaryGetValue(v8 *MEMORY[0x277CC4F48])];
  [CFDictionaryGetValue(v8 *MEMORY[0x277CC4ED8])];
  v10 = [CFDictionaryGetValue(v8 *MEMORY[0x277CC4ED0])];
  v11 = CFDictionaryGetValue(v8, *MEMORY[0x277CC4EF0]);
  v42 = v11;
  v43 = CFDictionaryGetValue(v8, *MEMORY[0x277CC4EE8]);
  if (v11)
  {
    unsignedIntValue = [v11 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 1;
  }

  if (v43)
  {
    unsignedIntValue2 = [v43 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 1;
  }

  CFRelease(v8);
  value = CFArrayCreateMutable(v6, 2, MEMORY[0x277CBF128]);
  if (value)
  {
    if (v9)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], &unk_2870CAB90);
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B88], v14);
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A28], v15);
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], v16);
      v17 = (width + 63) & 0xFFFFFFFFFFFFFFC0;
      v18 = (height + 63) & 0xFFFFFFFFFFFFFFC0;
      v19 = v18 * v17;
      v40 = (v18 >> 1) * v17;
      v41 = v17;
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v40 + v18 * v17];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2948], v20);
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], value);
      v21 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v21)
      {
        CFArrayAppendValue(value, v21);
        v22 = *MEMORY[0x277CD2B38];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2B38], &unk_2870CABA8);
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
        v24 = *MEMORY[0x277CD2B50];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2B50], v23);
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
        key = *MEMORY[0x277CD2B18];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2B18], v25);
        v26 = *MEMORY[0x277CD2A98];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2A98], &unk_2870CABC0);
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41];
        v28 = *MEMORY[0x277CD2AA0];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2AA0], v27);
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19];
        v30 = *MEMORY[0x277CD2B40];
        CFDictionarySetValue(v21, *MEMORY[0x277CD2B40], v29);
        CFRelease(v21);
        v31 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (v31)
        {
          CFArrayAppendValue(value, v31);
          CFDictionarySetValue(v31, v22, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v19]);
          CFDictionarySetValue(v31, v24, [MEMORY[0x277CCABB0] numberWithUnsignedLong:(width + 1) >> 1]);
          CFDictionarySetValue(v31, key, [MEMORY[0x277CCABB0] numberWithUnsignedLong:(height + 1) >> 1]);
          CFDictionarySetValue(v31, v26, &unk_2870CABD8);
          CFDictionarySetValue(v31, v28, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v41]);
          CFDictionarySetValue(v31, v30, [MEMORY[0x277CCABB0] numberWithUnsignedLong:v40]);
          CFRelease(v31);
        }
      }
    }

    else
    {
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:width];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B88], v32);
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:height];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A28], v33);
      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], v34);
      v35 = (v10 / unsignedIntValue / unsignedIntValue2) >> 3;
      v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v35];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2960], v36);
      0xFFFFFFFFFFFFFFC0 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v35 * width + 63) & 0xFFFFFFFFFFFFFFC0];
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2968], 0xFFFFFFFFFFFFFFC0);
    }

    CFRelease(value);
  }

  return Mutable;
}

- (void)dealloc
{
  pixelBufferRef = self->pixelBufferRef;
  if (pixelBufferRef)
  {
    CVPixelBufferRelease(pixelBufferRef);
  }

  v4.receiver = self;
  v4.super_class = PLSCVPixelBuffer;
  [(PLSCVPixelBuffer *)&v4 dealloc];
}

+ (void)copyISPBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output
{
  CVPixelBufferLockBaseAddress(input, 0);
  CVPixelBufferLockBaseAddress(output, 0);
  PlaneCount = CVPixelBufferGetPlaneCount(output);
  v7 = 0;
  if (PlaneCount <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = PlaneCount;
  }

  do
  {
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(output, v7);
    v10 = CVPixelBufferGetHeightOfPlane(input, v7);
    if (HeightOfPlane >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = HeightOfPlane;
    }

    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(input, v7);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(input, v7);
    v14 = CVPixelBufferGetBaseAddressOfPlane(output, v7);
    v15 = CVPixelBufferGetBytesPerRowOfPlane(output, v7);
    if (BytesPerRowOfPlane >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = BytesPerRowOfPlane;
    }

    if (v11 >= 1)
    {
      v17 = v15;
      do
      {
        memcpy(v14, BaseAddressOfPlane, v16);
        BaseAddressOfPlane += BytesPerRowOfPlane;
        v14 += v17;
        --v11;
      }

      while (v11);
    }

    ++v7;
  }

  while (v7 != v8);
  CVPixelBufferUnlockBaseAddress(output, 0);

  CVPixelBufferUnlockBaseAddress(input, 0);
}

- (__n128)setCameraIntrinsics:(__n128)intrinsics
{
  result[5] = a2;
  result[6] = intrinsics;
  result[7] = a4;
  return result;
}

@end