@interface IMEmbeddedHardwareJPEGTranscoder
- (BOOL)_decodeImageToIOSurface;
- (BOOL)_isJPEGImage:(CGImageSource *)image;
- (BOOL)scaleImageToFitLargestDimension:(id)dimension outputData:(id *)data;
- (IMEmbeddedHardwareJPEGTranscoder)initWithImageData:(id)data imageSource:(CGImageSource *)source;
- (void)dealloc;
@end

@implementation IMEmbeddedHardwareJPEGTranscoder

- (IMEmbeddedHardwareJPEGTranscoder)initWithImageData:(id)data imageSource:(CGImageSource *)source
{
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = IMEmbeddedHardwareJPEGTranscoder;
  v6 = [(IMEmbeddedHardwareJPEGTranscoder *)&v25 init];
  if (v6 && MGGetBoolAnswer() && objc_msgSend__isJPEGImage_(v6, v7, source, v8))
  {
    v6->_imageData = data;
    v9 = CGImageSourceCopyPropertiesAtIndex(source, 0, 0);
    v6->_imageProperties = v9;
    Value = CFDictionaryGetValue(v9, *MEMORY[0x277CD3450]);
    v14 = objc_msgSend_intValue(Value, v11, v12, v13);
    v15 = CFDictionaryGetValue(v6->_imageProperties, *MEMORY[0x277CD3448]);
    v19 = objc_msgSend_intValue(v15, v16, v17, v18);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        imageProperties = v6->_imageProperties;
        *buf = 138412290;
        v27 = imageProperties;
        _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Input image properties: %@", buf, 0xCu);
      }
    }

    v23 = v14 <= 0x4000 && v19 <= 0x4000;
    v6->_canHardwareScaleImage = v23;
  }

  return v6;
}

- (void)dealloc
{
  imageProperties = self->_imageProperties;
  if (imageProperties)
  {
    CFRelease(imageProperties);
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (ioSurfaceRef)
  {
    CFRelease(ioSurfaceRef);
  }

  v5.receiver = self;
  v5.super_class = IMEmbeddedHardwareJPEGTranscoder;
  [(IMEmbeddedHardwareJPEGTranscoder *)&v5 dealloc];
}

- (BOOL)_isJPEGImage:(CGImageSource *)image
{
  Type = CGImageSourceGetType(image);
  if (Type)
  {
    LOBYTE(Type) = UTTypeConformsTo(Type, *MEMORY[0x277CC20C8]) != 0;
  }

  return Type;
}

- (BOOL)_decodeImageToIOSurface
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = objc_msgSend_initWithObjectsAndKeys_(v3, v4, *MEMORY[0x277CBED28], v5, *MEMORY[0x277CF6DB0], 0);
  v7 = CMPhotoJPEGCreateIOSurfaceFromJPEG();

  if (v7)
  {
    self->_canHardwareScaleImage = 0;
  }

  self->_imageData = 0;
  return v7 != 0;
}

- (BOOL)scaleImageToFitLargestDimension:(id)dimension outputData:(id *)data
{
  v54 = *MEMORY[0x277D85DE8];
  if (!data)
  {
    return 0;
  }

  *data = 0;
  if (!self->_canHardwareScaleImage || objc_msgSend_intValue(dimension, a2, dimension, data) > 0x4000)
  {
    return 0;
  }

  ioSurfaceRef = self->_ioSurfaceRef;
  if (!ioSurfaceRef)
  {
    if (objc_msgSend__decodeImageToIOSurface(self, 0, v7, v8))
    {
      return 0;
    }

    ioSurfaceRef = self->_ioSurfaceRef;
  }

  pixelTransferSessionOut = 0;
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], ioSurfaceRef, 0, &pixelBufferOut);
  VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v12 = self->_ioSurfaceRef;
  if (qword_27F611A20 != -1)
  {
    sub_254831018();
  }

  off_27F611A18(v12);
  v13 = self->_ioSurfaceRef;
  if (qword_27F611A30 != -1)
  {
    sub_254831040();
  }

  off_27F611A28(v13);
  objc_msgSend_intValue(dimension, v14, v15, v16);
  FigCreateIOSurfaceBackedCVPixelBuffer();
  VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, 0);
  CVPixelBufferRelease(pixelBufferOut);
  pixelBufferOut = 0;
  IOSurface = CVPixelBufferGetIOSurface(0);
  CFRetain(IOSurface);
  CVPixelBufferRelease(0);
  objc_msgSend_targetJPEGCompressionValue(self, v18, v19, v20);
  v22 = v21;
  if (v21 <= 0.0)
  {
    v22 = 0.899999976;
  }

  else
  {
    v23 = 926232686;
    if (v21 == 0.75)
    {
LABEL_25:
      v33 = objc_alloc(MEMORY[0x277CBEAC0]);
      v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v34, v23, v35);
      v32 = objc_msgSend_initWithObjectsAndKeys_(v33, v37, v36, v38, *MEMORY[0x277CF6DB8], 0);
      goto LABEL_26;
    }

    if (v21 == 0.800000012)
    {
      v23 = 942682222;
      goto LABEL_25;
    }

    if (v21 == 0.824999988)
    {
      v23 = 942814579;
      goto LABEL_25;
    }

    if (v21 == 0.850000024)
    {
      v23 = 943009907;
      goto LABEL_25;
    }

    if (v21 == 0.899999976)
    {
      v23 = 959459438;
      goto LABEL_25;
    }
  }

  v24 = objc_alloc(MEMORY[0x277CBEAC0]);
  *&v25 = v22;
  v29 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v26, v27, v28, v25);
  v32 = objc_msgSend_initWithObjectsAndKeys_(v24, v30, v29, v31, *MEMORY[0x277CD2D48], 0);
LABEL_26:
  v39 = v32;
  v40 = CMPhotoJPEGCreateJPEGFromIOSurface();

  v9 = v40 == 0;
  if (!v40)
  {
    if (qword_27F611A50 != -1)
    {
      sub_254831068();
    }

    off_27F611A48(0, 1, 0);
    v41 = objc_alloc(MEMORY[0x277CBEA90]);
    if (qword_27F611A40 != -1)
    {
      sub_254831090();
    }

    v42 = off_27F611A38(0);
    v44 = objc_msgSend_initWithBytesNoCopy_length_freeWhenDone_(v41, v43, v42, 0, 0);
    imageProperties = self->_imageProperties;
    v46 = IMOSLoggingEnabled();
    if (imageProperties)
    {
      if (v46)
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = imageProperties;
          _os_log_impl(&dword_254811000, v47, OS_LOG_TYPE_INFO, "Out image properties: %@", buf, 0xCu);
        }
      }

      EXIFJPEGData = CGImageCreateEXIFJPEGData();
    }

    else
    {
      if (v46)
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = 0;
          _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "Empty image properties: %@", buf, 0xCu);
        }
      }

      EXIFJPEGData = v44;
    }

    *data = EXIFJPEGData;

    if (qword_27F611A60 != -1)
    {
      sub_2548310B8();
    }

    off_27F611A58(0, 1, 0);
  }

  if (IOSurface)
  {
    CFRelease(IOSurface);
  }

  if (pixelTransferSessionOut)
  {
    CFRelease(pixelTransferSessionOut);
  }

  return v9;
}

@end