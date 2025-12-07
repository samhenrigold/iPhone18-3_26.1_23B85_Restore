@interface CVPixelBufferCoder
+ (void)initialize;
- (CVPixelBufferCoder)initWithCVPixelBuffer:(__CVBuffer *)buffer;
- (CVPixelBufferCoder)initWithCoder:(id)coder;
- (__CVBuffer)_createPixelBufferForImage:(id)image fillWidth:(int64_t)width fillHeight:(int64_t)height;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVPixelBufferCoder

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
    self->_pixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CVPixelBufferCoder;
  [(CVPixelBufferCoder *)&v4 dealloc];
}

- (CVPixelBufferCoder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v36.receiver = self;
  v36.super_class = CVPixelBufferCoder;
  v5 = [(CVPixelBufferCoder *)&v36 init];
  if (!v5)
  {
    v11 = 0;
    goto LABEL_38;
  }

  v6 = v5;
  blockBufferOut = 0;
  pixelBufferOut = 0;
  objc_opt_class();
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];
  mediaName = v6->_mediaName;
  v6->_mediaName = v7;

  objc_opt_class();
  v9 = [coderCopy decodeObjectOfClass:? forKey:?];
  if (v9)
  {
    v10 = [MEMORY[0x277CBF758] imageWithData:?];
    v6->_pixelBuffer = [CVPixelBufferCoder _createPixelBufferForImage:v6 fillWidth:"_createPixelBufferForImage:fillWidth:fillHeight:" fillHeight:?];

    v6->_transferSourceMedia = 1;
  }

  else
  {
    v6->_transferSourceMedia = 0;
    v12 = [coderCopy decodeBytesForKey:? returnedLength:?];
    if (v12)
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v12, 0, *MEMORY[0x277CBED00], 0, 0, 0, 0, &blockBufferOut) || FigRemote_CreatePixelBufferFromSerializedAtomDataBlockBuffer())
      {
        goto LABEL_31;
      }

      [(CVPixelBufferCoder *)&pixelBufferOut initWithCoder:v6, &v37];
      v13 = v37;
    }

    else
    {
      v14 = [coderCopy decodeInt64ForKey:?];
      v15 = [coderCopy decodeInt64ForKey:?];
      v16 = [coderCopy decodeInt32ForKey:?];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], v14, v15, v16, v13, &pixelBufferOut))
      {
        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
          pixelBufferOut = 0;
        }
      }

      else if (pixelBufferOut)
      {
        v31 = v13;
        v37 = 0;
        v32 = [coderCopy decodeBytesForKey:? returnedLength:?];
        if (v32)
        {
          v33 = v37;
          if (v37)
          {
            objc_opt_class();
            v17 = [coderCopy decodeArrayOfObjectsOfClass:? forKey:?];
            v18 = [v17 count] >> 1;
            if (CVPixelBufferGetPlaneCount(pixelBufferOut) == v18)
            {
              CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
              if (CVPixelBufferGetPlaneCount(pixelBufferOut))
              {
                v19 = 0;
                while (1)
                {
                  v20 = [v17 objectAtIndexedSubscript:?];
                  unsignedIntegerValue = [v20 unsignedIntegerValue];

                  v22 = [v17 objectAtIndexedSubscript:?];
                  unsignedIntegerValue2 = [v22 unsignedIntegerValue];

                  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBufferOut, v19);
                  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBufferOut, v19);
                  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBufferOut, v19);
                  if (unsignedIntegerValue < 1)
                  {
                    break;
                  }

                  if (unsignedIntegerValue > v33)
                  {
                    break;
                  }

                  v27 = HeightOfPlane;
                  v28 = &v32[unsignedIntegerValue];
                  if (&v28[HeightOfPlane * unsignedIntegerValue2] > &v32[v33])
                  {
                    break;
                  }

                  if (unsignedIntegerValue2 == BytesPerRowOfPlane)
                  {
                    memcpy(BaseAddressOfPlane, v28, HeightOfPlane * unsignedIntegerValue2);
                  }

                  else
                  {
                    if (unsignedIntegerValue2 >= BytesPerRowOfPlane)
                    {
                      v29 = BytesPerRowOfPlane;
                    }

                    else
                    {
                      v29 = unsignedIntegerValue2;
                    }

                    if (HeightOfPlane)
                    {
                      do
                      {
                        memcpy(BaseAddressOfPlane, v28, v29);
                        BaseAddressOfPlane += BytesPerRowOfPlane;
                        v28 += unsignedIntegerValue2;
                        --v27;
                      }

                      while (v27);
                    }
                  }

                  if (CVPixelBufferGetPlaneCount(pixelBufferOut) <= ++v19)
                  {
                    goto LABEL_27;
                  }
                }
              }

              else
              {
LABEL_27:
                CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
                v6->_pixelBuffer = pixelBufferOut;
                pixelBufferOut = 0;
              }
            }
          }
        }

        v13 = v31;
        v9 = 0;
      }
    }
  }

LABEL_31:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (!v6->_pixelBuffer)
  {

    v6 = 0;
  }

  v11 = v6;

LABEL_38:
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = CMGetAttachment(self->_pixelBuffer, @"preference-image-url", 0);
  v6 = v5;
  mediaName = self->_mediaName;
  if (mediaName)
  {
    lastPathComponent = mediaName;
LABEL_4:
    [coderCopy encodeObject:? forKey:?];
    goto LABEL_5;
  }

  lastPathComponent = [v5 lastPathComponent];
  if (lastPathComponent)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (self->_transferSourceMedia && v6)
  {
    v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:?];
    v10 = v9;
    if (v9 && [v9 length])
    {
      [coderCopy encodeObject:? forKey:?];

      goto LABEL_21;
    }
  }

  theBuffer = 0;
  v11 = *MEMORY[0x277CBECE8];
  if (!FigRemote_CreateSerializedAtomDataBlockBufferForPixelBuffer())
  {
    IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
    v13 = theBuffer;
    if (IsRangeContiguous)
    {
LABEL_17:
      v14 = 0;
      dataPointerOut = 0;
      if (!CMBlockBufferGetDataPointer(v13, 0, 0, &v14, &dataPointerOut))
      {
        [coderCopy encodeBytes:? length:? forKey:?];
      }

      goto LABEL_19;
    }

    blockBufferOut = 0;
    if (!CMBlockBufferCreateContiguous(v11, theBuffer, v11, 0, 0, 0, 0, &blockBufferOut))
    {
      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      v13 = blockBufferOut;
      theBuffer = blockBufferOut;
      goto LABEL_17;
    }
  }

LABEL_19:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

LABEL_21:
}

- (CVPixelBufferCoder)initWithCVPixelBuffer:(__CVBuffer *)buffer
{
  v8.receiver = self;
  v8.super_class = CVPixelBufferCoder;
  v4 = [(CVPixelBufferCoder *)&v8 init];
  v5 = v4;
  v6 = 0;
  if (buffer && v4)
  {
    v4->_pixelBuffer = CFRetain(buffer);
    v5->_transferSourceMedia = 1;
    v6 = v5;
  }

  return v6;
}

- (__CVBuffer)_createPixelBufferForImage:(id)image fillWidth:(int64_t)width fillHeight:(int64_t)height
{
  imageCopy = image;
  v8 = imageCopy;
  pixelBufferOut = 0;
  if (!imageCopy)
  {
    goto LABEL_11;
  }

  [(__CVBuffer *)imageCopy extent];
  v10 = v9;
  [(__CVBuffer *)v8 extent];
  v12 = v11;
  v13 = height / v10;
  if (width / v12 >= v13)
  {
    v13 = width / v12;
  }

  if (v13 >= 1.0 || (v14 = round(v10 * v13 * 0.5), v10 = v14 + v14, v15 = round(v12 * v13 * 0.5), v12 = v15 + v15, *&v16 = -1, *(&v16 + 1) = -1, *&v23.c = v16, *&v23.tx = v16, *&v23.a = v16, CGAffineTransformMakeScale(&v23, width / v12, height / (v14 + v14)), [(__CVBuffer *)v8 imageByApplyingTransform:?], v17 = objc_claimAutoreleasedReturnValue(), v8, (v8 = v17) != 0))
  {
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v19 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v12, v10, 0x34323076u, v18, &pixelBufferOut);

    if (!v19 && pixelBufferOut)
    {
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:*MEMORY[0x277CC4C00] forKeys:*MEMORY[0x277CC4D10] count:{*MEMORY[0x277CC4CC0], *MEMORY[0x277CC4C20], *MEMORY[0x277CC4D28], *MEMORY[0x277CC4CD8]}];
      CMSetAttachments(pixelBufferOut, v20, 1u);
      v21 = [MEMORY[0x277CBF740] contextWithOptions:?];
      [v21 render:? toCVPixelBuffer:?];

      v17 = pixelBufferOut;
      goto LABEL_12;
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
      v17 = 0;
      pixelBufferOut = 0;
      goto LABEL_12;
    }

LABEL_11:
    v17 = 0;
  }

LABEL_12:

  return v17;
}

- (void)initWithCoder:(uint64_t *)a3 .cold.1(void *a1, void *a2, uint64_t *a3)
{
  *a3 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:?];
  result = [a2 _createPixelBufferForImage:? fillWidth:? fillHeight:?];
  a2[2] = result;
  return result;
}

@end