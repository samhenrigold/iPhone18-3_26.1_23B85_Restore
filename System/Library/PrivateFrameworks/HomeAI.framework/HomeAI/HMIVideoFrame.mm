@interface HMIVideoFrame
- (CGSize)size;
- (HMIVideoFrame)initWithCoder:(id)coder;
- (HMIVideoFrame)initWithJPEGData:(id)data size:(CGSize)size presentationTimeStamp:(id *)stamp;
- (HMIVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp;
- (HMIVideoFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (NSData)data;
- (id)attributeDescriptions;
- (id)base64Encoded;
- (id)compressedFrameWithScale:(double)scale quality:(double)quality error:(id *)error;
- (id)pixelBufferFrameWithError:(id *)error;
- (id)redactedCopy;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)printWithHeight:(unint64_t)height;
- (void)printWithScale:(double)scale;
@end

@implementation HMIVideoFrame

- (HMIVideoFrame)initWithJPEGData:(id)data size:(CGSize)size presentationTimeStamp:(id *)stamp
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  if (dataCopy)
  {
    v11 = dataCopy;
    v20.receiver = self;
    v20.super_class = HMIVideoFrame;
    v12 = [(HMIVideoFrame *)&v20 init];
    v13 = v12;
    if (v12)
    {
      var3 = stamp->var3;
      *&v12->_presentationTimeStamp.value = *&stamp->var0;
      v12->_presentationTimeStamp.epoch = var3;
      objc_storeStrong(&v12->_data, data);
      v13->_size.width = width;
      v13->_size.height = height;
      v13->_store = 1;
    }

    return v13;
  }

  else
  {
    [HMIFaceprint initWithUUID:data:modelUUID:faceCropUUID:];
    return [(HMIVideoFrame *)v16 initWithPixelBuffer:v17 presentationTimeStamp:v18, v19];
  }
}

- (HMIVideoFrame)initWithPixelBuffer:(__CVBuffer *)buffer presentationTimeStamp:(id *)stamp
{
  v11.receiver = self;
  v11.super_class = HMIVideoFrame;
  v6 = [(HMIVideoFrame *)&v11 init];
  v7 = v6;
  if (v6)
  {
    var3 = stamp->var3;
    *&v6->_presentationTimeStamp.value = *&stamp->var0;
    v6->_presentationTimeStamp.epoch = var3;
    v6->_size.width = HMICVPixelBufferGetSize(buffer);
    v7->_size.height = v9;
    v7->_pixelBuffer = CFRetain(buffer);
    v7->_store = 0;
  }

  return v7;
}

- (HMIVideoFrame)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  CMSampleBufferGetImageBuffer(buffer);
  CMSampleBufferGetPresentationTimeStamp(&v6, buffer);
  return [HMIVideoFrame initWithPixelBuffer:"initWithPixelBuffer:presentationTimeStamp:" presentationTimeStamp:?];
}

- (id)redactedCopy
{
  v3 = objc_alloc(objc_opt_class());
  data = [MEMORY[0x277CBEA90] data];
  [(HMIVideoFrame *)self size];
  [v7 presentationTimeStamp];
  v5 = [v3 initWithJPEGData:? size:? presentationTimeStamp:?];

  return v5;
}

- (id)base64Encoded
{
  data = [(HMIVideoFrame *)self data];
  v3 = [data base64EncodedStringWithOptions:?];

  return v3;
}

- (id)compressedFrameWithScale:(double)scale quality:(double)quality error:(id *)error
{
  if (scale <= 0.0 || scale > 1.0)
  {
    [HMIVideoFrame compressedFrameWithScale:quality:error:];
LABEL_31:
    v19 = [HMIVideoFrame compressedFrameWithScale:quality:error:];
    return [(HMIVideoFrame *)v19 pixelBufferFrameWithError:v20, v21];
  }

  if (quality <= 0.0 || quality > 1.0)
  {
    goto LABEL_31;
  }

  store = self->_store;
  if (store != 1)
  {
    if (!store)
    {
      v11 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:"createJPEGDataFromPixelBuffer:scale:encodeQuality:error:" scale:? encodeQuality:? error:?];
      if (v11)
      {
        HMICVPixelBufferGetSize(self->_pixelBuffer);
        CGAffineTransformMakeScale(&v22, scale, scale);
        v12 = objc_alloc(objc_opt_class());
        *&v22.a = *&self->_presentationTimeStamp.value;
        *&v22.c = self->_presentationTimeStamp.epoch;
        p_isa = [v12 initWithJPEGData:? size:? presentationTimeStamp:?];
      }

      else
      {
        p_isa = 0;
      }
    }

    goto LABEL_27;
  }

  if (scale == 1.0 && quality == 1.0)
  {
    selfCopy = self;
  }

  else
  {
    if ([(NSData *)self->_data length])
    {
      v14 = [(HMIVideoFrame *)self pixelBufferFrameWithError:?];
      v15 = v14;
      if (v14)
      {
        p_isa = [v14 compressedFrameWithScale:? quality:? error:?];
      }

      else
      {
        p_isa = 0;
      }

      goto LABEL_27;
    }

    CGAffineTransformMakeScale(&v22, scale, scale);
    v17 = objc_alloc(objc_opt_class());
    *&v22.a = *&self->_presentationTimeStamp.value;
    *&v22.c = self->_presentationTimeStamp.epoch;
    selfCopy = [v17 initWithJPEGData:? size:? presentationTimeStamp:?];
  }

  p_isa = &selfCopy->super.super.isa;
LABEL_27:

  return p_isa;
}

- (id)pixelBufferFrameWithError:(id *)error
{
  if ([(HMIVideoFrame *)self pixelBuffer])
  {
    selfCopy = self;
  }

  else
  {
    v5 = [HMIVisionUtilities createPixelBufferFromImageData:"createPixelBufferFromImageData:error:" error:?];
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc(objc_opt_class());
      [v9 presentationTimeStamp];
      selfCopy = [v7 initWithPixelBuffer:? presentationTimeStamp:?];
      CVPixelBufferRelease(v6);
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (NSData)data
{
  data = self->_data;
  if (!data)
  {
    v4 = [HMIVideoFrame compressedFrameWithScale:"compressedFrameWithScale:quality:error:" quality:? error:?];
    v5 = 0;
    if (!v4)
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
      objc_exception_throw(v10);
    }

    v6 = v5;
    data = [v4 data];
    v8 = self->_data;
    self->_data = data;

    data = self->_data;
  }

  return data;
}

- (void)printWithHeight:(unint64_t)height
{
  [(HMIVideoFrame *)self size];

  [(HMIVideoFrame *)self printWithScale:?];
}

- (void)printWithScale:(double)scale
{
  v8 = [HMIVideoFrame compressedFrameWithScale:"compressedFrameWithScale:quality:error:" quality:? error:?];
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  data = [v8 data];
  v5 = [data base64EncodedDataWithOptions:?];
  v6 = [v3 initWithData:? encoding:?];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v6];
  fprintf(*MEMORY[0x277D85E08], "%s\n", [v7 UTF8String]);
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = HMIVideoFrame;
  [(HMIVideoFrame *)&v4 dealloc];
}

- (id)attributeDescriptions
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_store == 1)
  {
    v3 = @"Data (JPEG)";
  }

  else
  {
    v3 = @"CVPixelBuffer";
  }

  v4 = MEMORY[0x277D0F778];
  v5 = v3;
  v6 = [v4 alloc];
  presentationTimeStamp = self->_presentationTimeStamp;
  v7 = HMICMTimeDescription(&presentationTimeStamp);
  v8 = [v6 initWithName:? value:?];
  v16 = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = HMICGSizeDescription(self->_size.width, self->_size.height);
  v11 = [v9 initWithName:? value:?];
  v17 = v11;
  v12 = [objc_alloc(MEMORY[0x277D0F778]) initWithName:? value:?];

  v18 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  return v13;
}

- (HMIVideoFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = 0uLL;
  v15 = 0;
  v5 = NSStringFromSelector(sel_presentationTimeStamp);
  if (coderCopy)
  {
    [&v14 decodeCMTimeForKey:?];
  }

  else
  {
    v14 = 0uLL;
    v15 = 0;
  }

  objc_opt_class();
  v6 = NSStringFromSelector(sel_surface);
  v7 = [coderCopy decodeObjectOfClass:? forKey:?];

  if (v7)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v7, 0, &pixelBufferOut);
    v8 = [(HMIVideoFrame *)self initWithPixelBuffer:v14 presentationTimeStamp:v15];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  else
  {
    objc_opt_class();
    v9 = NSStringFromSelector(sel_data);
    v10 = [coderCopy decodeObjectOfClass:? forKey:?];

    v11 = NSStringFromSelector(sel_size);
    [coderCopy decodeSizeForKey:?];

    v8 = [(HMIVideoFrame *)self initWithJPEGData:v14 size:v15 presentationTimeStamp:?];
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_presentationTimeStamp);
  [coderCopy encodeCMTime:*&self->_presentationTimeStamp.value forKey:self->_presentationTimeStamp.epoch];

  store = self->_store;
  if (store == 1)
  {
    v10 = NSStringFromSelector(sel_data);
    [coderCopy encodeObject:? forKey:?];

    v8 = NSStringFromSelector(sel_size);
    [coderCopy encodeSize:? forKey:?];
LABEL_6:

    goto LABEL_7;
  }

  if (!store)
  {
    v7 = CVPixelBufferGetIOSurface(self->_pixelBuffer);
    if (!v7)
    {
      v11 = [MEMORY[0x277CBEAD8] exceptionWithName:? reason:? userInfo:?];
      objc_exception_throw(v11);
    }

    v8 = v7;
    v9 = NSStringFromSelector(sel_surface);
    [coderCopy encodeObject:? forKey:?];

    goto LABEL_6;
  }

LABEL_7:
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end