@interface AVSemanticSegmentationMatte
+ (AVSemanticSegmentationMatte)semanticSegmentationMatteFromImageSourceAuxiliaryDataType:(CFStringRef)imageSourceAuxiliaryDataType dictionaryRepresentation:(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary error:(NSError *)outError;
+ (id)_allSupportedSemanticSegmentationMatteTypes;
- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata;
- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer semanticSegmentationMatteMetadataDictionary:(id)dictionary;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError;
- (AVSemanticSegmentationMatteType)matteType;
- (CGImageMetadata)copyAuxiliaryMetadata;
- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType;
- (OSType)pixelFormatType;
- (__CFString)auxiliaryImageType;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVSemanticSegmentationMatte

- (id)debugDescription
{
  [(AVSemanticSegmentationMatte *)self pixelFormatType];
  v3 = AVStringForOSType();
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    v6 = self->_pixelBuffer;
    if (v6)
    {
      Height = CVPixelBufferGetHeight(v6);
      goto LABEL_6;
    }
  }

  else
  {
    Width = 0;
  }

  Height = 0;
LABEL_6:
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" v.%d.%d", (self->_version >> 16), self->_version];
  matteType = self->_matteType;
  v10 = @"Skin";
  v11 = @"Teeth";
  if (matteType == @"AVSemanticSegmentationMatteTypeGlasses")
  {
    v12 = @"Glasses";
  }

  else
  {
    v12 = 0;
  }

  if (matteType != @"AVSemanticSegmentationMatteTypeTeeth")
  {
    v11 = v12;
  }

  if (matteType != @"AVSemanticSegmentationMatteTypeSkin")
  {
    v10 = v11;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeHair")
  {
    v13 = @"Hair";
  }

  else
  {
    v13 = v10;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %zux%zu%@", v13, v3, Width, Height, v8];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVSemanticSegmentationMatte debugDescription](self, "debugDescription")];
}

- (void)dealloc
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = AVSemanticSegmentationMatte;
  [(AVSemanticSegmentationMatte *)&v4 dealloc];
}

- (AVSemanticSegmentationMatteType)matteType
{
  v2 = self->_matteType;

  return v2;
}

- (AVSemanticSegmentationMatte)semanticSegmentationMatteByApplyingExifOrientation:(CGImagePropertyOrientation)exifOrientation
{
  pixelRotationSessionOut = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  if (exifOrientation - 1 < 8)
  {
    pixelBuffer = self->_pixelBuffer;
    if (!pixelBuffer)
    {
      goto LABEL_45;
    }

    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(self->_pixelBuffer);
    PixelFormatType = CVPixelBufferGetPixelFormatType(self->_pixelBuffer);
    if (exifOrientation <= kCGImagePropertyOrientationDownMirrored)
    {
      if (exifOrientation <= kCGImagePropertyOrientationUpMirrored)
      {
        v9 = exifOrientation != kCGImagePropertyOrientationUp;
      }

      else
      {
        v9 = exifOrientation != kCGImagePropertyOrientationDown;
      }

      if (exifOrientation <= kCGImagePropertyOrientationUpMirrored)
      {
        v10 = 0;
      }

      else
      {
        v10 = 180;
      }

      v11 = Width;
      Width = Height;
LABEL_23:
      v30 = *MEMORY[0x1E69660D8];
      v31 = MEMORY[0x1E695E0F8];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v16 = *MEMORY[0x1E695E480];
      if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], v11, Width, PixelFormatType, v15, &pixelBufferOut))
      {
        v17 = *MEMORY[0x1E6965F60];
        CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
        if (((v10 == 0) & ~v9) != 0)
        {
          v18 = VTPixelTransferSessionCreate(v16, &pixelTransferSessionOut);
          if (!v18)
          {
            v18 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, self->_pixelBuffer, pixelBufferOut);
          }
        }

        else
        {
          v18 = VTPixelRotationSessionCreate(v16, &pixelRotationSessionOut);
          if (!v18)
          {
            v19 = pixelRotationSessionOut;
            v20 = *MEMORY[0x1E6983D98];
            v21 = AVCaptureVTRotationFromDegrees(v10);
            VTSessionSetProperty(v19, v20, v21);
            v22 = *MEMORY[0x1E695E4D0];
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D68], *MEMORY[0x1E695E4D0]);
            VTSessionSetProperty(pixelRotationSessionOut, *MEMORY[0x1E6983D50], v17);
            if (v9)
            {
              v23 = v10 == 90 || v10 == 270;
              v24 = MEMORY[0x1E6983D80];
              if (!v23)
              {
                v24 = MEMORY[0x1E6983D78];
              }

              VTSessionSetProperty(pixelRotationSessionOut, *v24, v22);
            }

            v18 = VTPixelRotationSessionRotateImage(pixelRotationSessionOut, self->_pixelBuffer, pixelBufferOut);
          }
        }

        v25 = v18;
        goto LABEL_37;
      }

LABEL_45:
      v25 = 0;
LABEL_37:
      v26 = [AVSemanticSegmentationMatte alloc];
      matteType = [(AVSemanticSegmentationMatte *)self matteType];
      if (v25)
      {
        v28 = 0;
      }

      else
      {
        v28 = pixelBufferOut;
      }

      v29 = [(AVSemanticSegmentationMatte *)v26 initWithType:matteType pixelBuffer:v28 semanticSegmentationMatteMetadataDictionary:0];
      v29->_version = self->_version;
      CVPixelBufferRelease(pixelBufferOut);
      if (pixelRotationSessionOut)
      {
        CFRelease(pixelRotationSessionOut);
      }

      if (pixelTransferSessionOut)
      {
        CFRelease(pixelTransferSessionOut);
      }

      return v29;
    }

    if (exifOrientation > kCGImagePropertyOrientationRight)
    {
      if (exifOrientation != kCGImagePropertyOrientationRightMirrored)
      {
        v9 = 0;
        goto LABEL_21;
      }

      v9 = 1;
    }

    else
    {
      if (exifOrientation == kCGImagePropertyOrientationLeftMirrored)
      {
        v9 = 1;
LABEL_21:
        v10 = 270;
        goto LABEL_22;
      }

      v9 = 0;
    }

    v10 = 90;
LABEL_22:
    v11 = Height;
    goto LABEL_23;
  }

  v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v12, v13))
  {
    objc_exception_throw(v12);
  }

  NSLog(&cfstr_SuppressingExc.isa, v12);
  return 0;
}

- (AVSemanticSegmentationMatte)semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:(CVPixelBufferRef)pixelBuffer error:(NSError *)outError
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (([objc_msgSend(objc_opt_class() "_allSupportedSemanticSegmentationMattePixelFormatTypes")] & 1) == 0)
  {
    [AVSemanticSegmentationMatte semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:];
    goto LABEL_11;
  }

  v8 = CVBufferCopyAttachment(pixelBuffer, *MEMORY[0x1E6965F30], 0);
  if (v8)
  {
    CFAutorelease(v8);
  }

  if (!FigCFEqual())
  {
    [AVSemanticSegmentationMatte semanticSegmentationMatteByReplacingSemanticSegmentationMatteWithPixelBuffer:error:];
LABEL_11:
    if (outError)
    {
      if (ErrorIsAVFoundationError())
      {
        v11 = AVLocalizedError();
      }

      else
      {
        v11 = AVLocalizedErrorWithUnderlyingOSStatus();
      }

      v12 = v11;
      v9 = 0;
      *outError = v12;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_6;
  }

  v9 = [[AVSemanticSegmentationMatte alloc] initWithType:[(AVSemanticSegmentationMatte *)self matteType] pixelBuffer:pixelBuffer semanticSegmentationMatteMetadataDictionary:0];
LABEL_6:

  return v9;
}

- (OSType)pixelFormatType
{
  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    LODWORD(pixelBuffer) = CVPixelBufferGetPixelFormatType(pixelBuffer);
  }

  return pixelBuffer;
}

- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer semanticSegmentationMatteMetadataDictionary:(id)dictionary
{
  v15.receiver = self;
  v15.super_class = AVSemanticSegmentationMatte;
  v8 = [(AVSemanticSegmentationMatte *)&v15 init];
  if (v8)
  {
    _allSupportedSemanticSegmentationMatteTypes = [objc_opt_class() _allSupportedSemanticSegmentationMatteTypes];
    if ([_allSupportedSemanticSegmentationMatteTypes containsObject:type])
    {
      v8->_matteType = type;
      if (buffer)
      {
        v10 = CFRetain(buffer);
      }

      else
      {
        v10 = 0;
      }

      v8->_pixelBuffer = v10;
      if (dictionary)
      {
        v8->_version = [objc_msgSend_objectForKeyedSubscript_(dictionary) intValue];
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:{0, _allSupportedSemanticSegmentationMatteTypes}];

      if (AVCaptureShouldThrowForAPIViolations(v12, v13))
      {
        objc_exception_throw(v11);
      }

      NSLog(&cfstr_SuppressingExc.isa, v11);
      return 0;
    }
  }

  return v8;
}

- (AVSemanticSegmentationMatte)initWithType:(id)type pixelBuffer:(__CVBuffer *)buffer auxiliaryMetadata:(CGImageMetadata *)metadata
{
  v6 = [(AVSemanticSegmentationMatte *)self initWithType:type pixelBuffer:buffer semanticSegmentationMatteMetadataDictionary:0];
  v7 = v6;
  if (metadata && v6)
  {
    v6->_version = [AVAuxiliaryMetadataStringTagWithPrefixedKey(metadata *MEMORY[0x1E6991510]];
  }

  return v7;
}

- (CGImageMetadata)copyAuxiliaryMetadata
{
  Mutable = CGImageMetadataCreateMutable();
  v4 = Mutable;
  if (Mutable)
  {
    v5 = *MEMORY[0x1E6991508];
    v6 = *MEMORY[0x1E6991510];
    if (!CGImageMetadataRegisterNamespaceForPrefix(Mutable, *MEMORY[0x1E6991508], *MEMORY[0x1E6991510], 0))
    {
      [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }

    if (!self->_version)
    {
LABEL_8:
      CFRelease(v4);
      return 0;
    }

    if (!AVAuxiliaryMetadataAddValue(v4, v5, v6, *MEMORY[0x1E6991518], [MEMORY[0x1E696AD98] numberWithInt:?]))
    {
      [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
      goto LABEL_8;
    }
  }

  else
  {
    [AVSemanticSegmentationMatte copyAuxiliaryMetadata];
  }

  return v4;
}

- (__CFString)auxiliaryImageType
{
  matteType = self->_matteType;
  if (matteType == @"AVSemanticSegmentationMatteTypeSkin")
  {
    v4 = MEMORY[0x1E696D2A0];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeHair")
  {
    v4 = MEMORY[0x1E696D298];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeTeeth")
  {
    v4 = MEMORY[0x1E696D2B0];
    return *v4;
  }

  if (matteType == @"AVSemanticSegmentationMatteTypeGlasses")
  {
    return *MEMORY[0x1E696D290];
  }

  else
  {
    return 0;
  }
}

+ (id)_allSupportedSemanticSegmentationMatteTypes
{
  v3[0] = @"AVSemanticSegmentationMatteTypeHair";
  v3[1] = @"AVSemanticSegmentationMatteTypeSkin";
  v3[2] = @"AVSemanticSegmentationMatteTypeTeeth";
  v3[3] = @"AVSemanticSegmentationMatteTypeGlasses";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
}

+ (AVSemanticSegmentationMatte)semanticSegmentationMatteFromImageSourceAuxiliaryDataType:(CFStringRef)imageSourceAuxiliaryDataType dictionaryRepresentation:(NSDictionary *)imageSourceAuxiliaryDataInfoDictionary error:(NSError *)outError
{
  pixelBufferOut = 0;
  v10 = objc_msgSend_objectForKeyedSubscript_(imageSourceAuxiliaryDataInfoDictionary, a2, *MEMORY[0x1E696D218]);
  v11 = objc_msgSend_objectForKeyedSubscript_(imageSourceAuxiliaryDataInfoDictionary);
  v12 = objc_msgSend_objectForKeyedSubscript_(imageSourceAuxiliaryDataInfoDictionary);
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  if (v14 == 1 && v12 == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_50:
    v41 = 0;
    v42 = -11865;
    goto LABEL_39;
  }

  v16 = v12;
  v53 = *MEMORY[0x1E696D298];
  v54[0] = *MEMORY[0x1E696D2A0];
  v54[1] = v53;
  v17 = *MEMORY[0x1E696D290];
  v54[2] = *MEMORY[0x1E696D2B0];
  v54[3] = v17;
  if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:{4), "containsObject:", imageSourceAuxiliaryDataType}] & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v14)
  {
LABEL_30:
    if (FigCFEqual())
    {
      v39 = @"AVSemanticSegmentationMatteTypeSkin";
LABEL_38:
      v40 = [AVSemanticSegmentationMatte alloc];
      v41 = [(AVSemanticSegmentationMatte *)v40 initWithType:v39 pixelBuffer:pixelBufferOut auxiliaryMetadata:v16];
      v42 = 0;
      goto LABEL_39;
    }

    if (FigCFEqual())
    {
      v39 = @"AVSemanticSegmentationMatteTypeHair";
      goto LABEL_38;
    }

    if (FigCFEqual())
    {
      v39 = @"AVSemanticSegmentationMatteTypeTeeth";
      goto LABEL_38;
    }

    if (FigCFEqual())
    {
      v39 = @"AVSemanticSegmentationMatteTypeGlasses";
      goto LABEL_38;
    }

    goto LABEL_49;
  }

  v52 = v17;
  intValue = [objc_msgSend_objectForKeyedSubscript_(v11) intValue];
  intValue2 = [objc_msgSend_objectForKeyedSubscript_(v11) intValue];
  intValue3 = [objc_msgSend_objectForKeyedSubscript_(v11) intValue];
  intValue4 = [objc_msgSend_objectForKeyedSubscript_(v11) intValue];
  if (!intValue || !intValue2 || !intValue3 || (v22 = intValue4) == 0)
  {
LABEL_49:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_50;
  }

  v51 = v16;
  _allSupportedSemanticSegmentationMattePixelFormatTypes = [self _allSupportedSemanticSegmentationMattePixelFormatTypes];
  if ([_allSupportedSemanticSegmentationMattePixelFormatTypes containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", intValue)}])
  {
    v24 = intValue3;
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v22];
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E0F8], *MEMORY[0x1E69660D8], v25, *MEMORY[0x1E6966020], 0}];
    v27 = CVPixelBufferCreate(*MEMORY[0x1E695E480], intValue2, intValue3, intValue, v26, &pixelBufferOut);
    if (!v27)
    {
      v50 = outError;
      CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v29 = BytesPerRow;
      if (BytesPerRow >= v22)
      {
        v30 = v22;
      }

      else
      {
        v30 = BytesPerRow;
      }

      bytes = [v10 bytes];
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      v33 = [v10 length];
      if (v30 <= v33)
      {
        v34 = &bytes[v33];
        v35 = 1;
        do
        {
          memcpy(BaseAddress, bytes, v30);
          v36 = &bytes[v30 + v22];
          bytes += v22;
          BaseAddress += v29;
        }

        while (v35++ < v24 && v36 <= v34);
      }

      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
      outError = v50;
      v16 = v51;
      goto LABEL_30;
    }

    v42 = v27;
    v41 = 0;
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45, v46, v47, v48, v49, v51, v5, v52);
    v41 = 0;
    v42 = -11864;
  }

LABEL_39:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (outError && v42)
  {
    if (ErrorIsAVFoundationError())
    {
      v43 = AVLocalizedError();
    }

    else
    {
      v43 = AVLocalizedErrorWithUnderlyingOSStatus();
    }

    *outError = v43;
  }

  return v41;
}

- (NSDictionary)dictionaryRepresentationForAuxiliaryDataType:(NSString *)outAuxDataType
{
  pixelFormatType = [(AVSemanticSegmentationMatte *)self pixelFormatType];
  Width = CVPixelBufferGetWidth([(AVSemanticSegmentationMatte *)self mattingImage]);
  Height = CVPixelBufferGetHeight([(AVSemanticSegmentationMatte *)self mattingImage]);
  BytesPerRow = CVPixelBufferGetBytesPerRow([(AVSemanticSegmentationMatte *)self mattingImage]);
  if (!pixelFormatType || !Width || !Height || (v9 = BytesPerRow) == 0 || (v10 = [MEMORY[0x1E695DF88] dataWithLength:BytesPerRow * Height]) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v11 = v10;
  mattingImage = [(AVSemanticSegmentationMatte *)self mattingImage];
  if (CVPixelBufferLockBaseAddress(mattingImage, 1uLL))
  {
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(mattingImage);
  memcpy([v11 mutableBytes], BaseAddress, v9 * Height);
  CVPixelBufferUnlockBaseAddress(mattingImage, 1uLL);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [(NSDictionary *)dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x1E696D218]];
  v19[0] = *MEMORY[0x1E696DEC0];
  v20[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:pixelFormatType];
  v19[1] = *MEMORY[0x1E696DFB8];
  v20[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Width];
  v19[2] = *MEMORY[0x1E696DD58];
  v20[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:Height];
  v19[3] = *MEMORY[0x1E696D430];
  v20[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v9];
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  [(NSDictionary *)dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E696D220]];
  copyAuxiliaryMetadata = [(AVSemanticSegmentationMatte *)self copyAuxiliaryMetadata];
  if (copyAuxiliaryMetadata)
  {
    v17 = copyAuxiliaryMetadata;
    [(NSDictionary *)dictionary setObject:copyAuxiliaryMetadata forKeyedSubscript:*MEMORY[0x1E696D228]];
    CFRelease(v17);
  }

  if (outAuxDataType)
  {
    *outAuxDataType = [(AVSemanticSegmentationMatte *)self auxiliaryImageType];
  }

  return dictionary;
}

@end