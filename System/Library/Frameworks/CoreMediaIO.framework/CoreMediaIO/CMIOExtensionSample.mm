@interface CMIOExtensionSample
+ (id)sampleWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionSample)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (CMIOExtensionSample)initWithCoder:(id)coder;
- (CMIOExtensionSample)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMIOExtensionSample

+ (id)sampleWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v3 = [objc_alloc(objc_opt_class()) initWithCMSampleBuffer:buffer];

  return v3;
}

- (CMIOExtensionSample)initWithCMSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v9.receiver = self;
  v9.super_class = CMIOExtensionSample;
  v4 = [(CMIOExtensionSample *)&v9 init];
  if (v4)
  {
    if (buffer)
    {
      v5 = CFRetain(buffer);
      v4->_sampleBuffer = v5;
      FormatDescription = CMSampleBufferGetFormatDescription(v5);
      MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
    }

    else
    {
      MediaType = 0;
      v4->_sampleBuffer = 0;
    }

    v4->_mediaType = MediaType;
  }

  return v4;
}

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionSample;
  [(CMIOExtensionSample *)&v4 dealloc];
}

- (id)description
{
  description = self->_description;
  if (!description)
  {
    sampleBuffer = self->_sampleBuffer;
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    if (sampleBuffer)
    {
      description = [v5 initWithFormat:@"<sample: %p, %c%c%c%c>", self->_sampleBuffer, HIBYTE(self->_mediaType), BYTE2(self->_mediaType), BYTE1(self->_mediaType), self->_mediaType];
    }

    else
    {
      description = [v5 initWithFormat:@"<sample: NULL>", v8, v9, v10, v11, v12];
    }

    self->_description = description;
  }

  v6 = description;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  sampleBuffer = self->_sampleBuffer;
  return sampleBuffer == [equal sampleBuffer];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionSample allocWithZone:zone];
  sampleBuffer = self->_sampleBuffer;

  return [(CMIOExtensionSample *)v4 initWithCMSampleBuffer:sampleBuffer];
}

- (void)encodeWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  copyXPCDictionary = [(CMIOExtensionSample *)self copyXPCDictionary];
  if (copyXPCDictionary)
  {
    v6 = copyXPCDictionary;
    [coder encodeXPCObject:copyXPCDictionary forKey:@"sampleBuffer"];

    xpc_release(v6);
  }
}

- (CMIOExtensionSample)initWithCoder:(id)coder
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ can only be encoded as part of an xpc message", self}];
  }

  v5 = [coder decodeXPCObjectOfType:MEMORY[0x277D86468] forKey:@"sampleBuffer"];
  if (v5)
  {

    return [(CMIOExtensionSample *)self initWithXPCDictionary:v5];
  }

  else
  {

    return [(CMIOExtensionSample *)self initWithCMSampleBuffer:0];
  }
}

- (id)copyXPCDictionary
{
  if (!self->_sampleBuffer)
  {
    return 0;
  }

  dataPointerOut = 0;
  theBuffer = 0;
  totalLengthOut = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(self->_sampleBuffer);
  v5 = ImageBuffer;
  if (ImageBuffer)
  {
    v6 = CVBufferCopyAttachment(ImageBuffer, @"MetadataDictionary", 0);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFDictionaryGetTypeID() && !CMGetAttachment(self->_sampleBuffer, @"MetadataDictionary", 0))
      {
        CMSetAttachment(self->_sampleBuffer, @"MetadataDictionary", v7, 1u);
      }

      CFRelease(v7);
    }
  }

  v9 = *MEMORY[0x277CBECE8];
  SerializedAtomDataBlockBufferForSampleBuffer = FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer();
  if (SerializedAtomDataBlockBufferForSampleBuffer)
  {
    v12 = CMIOLog(SerializedAtomDataBlockBufferForSampleBuffer, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSample copyXPCDictionary];
    }

    goto LABEL_25;
  }

  IsRangeContiguous = CMBlockBufferIsRangeContiguous(theBuffer, 0, 0);
  v14 = theBuffer;
  if (IsRangeContiguous)
  {
LABEL_18:
    DataPointer = CMBlockBufferGetDataPointer(v14, 0, 0, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      [(CMIOExtensionSample *)DataPointer copyXPCDictionary];
    }

    else
    {
      v18 = xpc_data_create(dataPointerOut, totalLengthOut);
      xpc_dictionary_set_value(v3, "buffer", v18);
      xpc_release(v18);
      if (v5)
      {
        IOSurface = CVPixelBufferGetIOSurface(v5);
        if (IOSurface)
        {
          XPCObject = IOSurfaceCreateXPCObject(IOSurface);
          xpc_dictionary_set_value(v3, "iosurface", XPCObject);
          xpc_release(XPCObject);
        }

        else
        {
          v22 = CMIOLog(0, v20);
          if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionSample copyXPCDictionary];
          }
        }
      }
    }

    goto LABEL_25;
  }

  v24 = 0;
  v15 = CMBlockBufferCreateContiguous(v9, theBuffer, v9, 0, 0, 0, 0, &v24);
  if (!v15)
  {
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    v14 = v24;
    theBuffer = v24;
    goto LABEL_18;
  }

  [(CMIOExtensionSample *)&v24 copyXPCDictionary];
LABEL_25:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v3;
}

- (CMIOExtensionSample)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    v51 = 0;
    blockBufferOut = 0;
    formatDescriptionOut = 0;
    pixelBufferOut = 0;
    value = xpc_dictionary_get_value(dictionary, "buffer");
    if (!value)
    {
      v16 = CMIOLog(0, v6);
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }

      goto LABEL_19;
    }

    v7 = value;
    bytes_ptr = xpc_data_get_bytes_ptr(value);
    if (!bytes_ptr)
    {
      v17 = CMIOLog(0, v9);
      if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }

      goto LABEL_19;
    }

    v10 = bytes_ptr;
    length = xpc_data_get_length(v7);
    HIDWORD(customBlockSource.AllocateBlock) = 0;
    *&customBlockSource.version = 0;
    customBlockSource.FreeBlock = cmio_bbufUtilXPCObjectReleaser;
    customBlockSource.refCon = v7;
    v12 = *MEMORY[0x277CBECE8];
    v13 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x277CBECE8], v10, length, 0, &customBlockSource, 0, length, 0, &blockBufferOut);
    if (v13)
    {
      v15 = CMIOLog(v13, v14);
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }
    }

    else
    {
      xpc_retain(v7);
      SampleBufferFromSerializedAtomDataBlockBuffer = FigRemote_CreateSampleBufferFromSerializedAtomDataBlockBuffer();
      CFRelease(blockBufferOut);
      blockBufferOut = 0;
      if (!SampleBufferFromSerializedAtomDataBlockBuffer)
      {
        v24 = CMGetAttachment(v51, @"MetadataDictionary", 0);
        v25 = v24;
        if (v24)
        {
          v26 = CFGetTypeID(v24);
          if (v26 != CFDictionaryGetTypeID())
          {
            v25 = 0;
          }
        }

        v27 = xpc_dictionary_get_value(dictionary, "iosurface");
        if (v27)
        {
          v28 = IOSurfaceLookupFromXPCObject(v27);
          if (!v28)
          {
            v36 = CMIOLog(0, v29);
            if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          v30 = v28;
          v31 = CVPixelBufferCreateWithIOSurface(v12, v28, 0, &pixelBufferOut);
          CFRelease(v30);
          if (v31)
          {
            v34 = CMIOLog(v32, v33);
            if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          if (v25 && !CVBufferHasAttachment(pixelBufferOut, @"MetadataDictionary"))
          {
            CVBufferSetAttachment(pixelBufferOut, @"MetadataDictionary", v25, kCVAttachmentMode_ShouldPropagate);
          }

          v37 = CMVideoFormatDescriptionCreateForImageBuffer(v12, pixelBufferOut, &formatDescriptionOut);
          if (v37)
          {
            v39 = CMIOLog(v37, v38);
            if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          memset(&timingArrayOut, 0, sizeof(timingArrayOut));
          SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v51, 1, &timingArrayOut, 0);
          if (SampleTimingInfoArray)
          {
            v42 = CMIOLog(SampleTimingInfoArray, v41);
            if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          sampleBufferOut = 0;
          v43 = CMSampleBufferCreateForImageBuffer(v12, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &timingArrayOut, &sampleBufferOut);
          if (v43)
          {
            v45 = CMIOLog(v43, v44);
            if (v45 && os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [CMIOExtensionSample initWithXPCDictionary:];
            }

            goto LABEL_19;
          }

          CFRelease(pixelBufferOut);
          pixelBufferOut = 0;
          CFRelease(formatDescriptionOut);
          formatDescriptionOut = 0;
          CMPropagateAttachments(v51, sampleBufferOut);
          CFRelease(v51);
          v35 = sampleBufferOut;
          v51 = sampleBufferOut;
        }

        else
        {
          v35 = v51;
        }

        v22 = [(CMIOExtensionSample *)self initWithCMSampleBuffer:v35];
        CFRelease(v51);
        return v22;
      }

      v21 = CMIOLog(v19, v20);
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSample initWithXPCDictionary:];
      }
    }

LABEL_19:
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }

    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }

    if (v51)
    {
      CFRelease(v51);
    }

    if (formatDescriptionOut)
    {
      CFRelease(formatDescriptionOut);
    }

    return 0;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
  return 0;
}

- (void)copyXPCDictionary
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.5()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.6()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.7()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.8()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithXPCDictionary:.cold.9()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end