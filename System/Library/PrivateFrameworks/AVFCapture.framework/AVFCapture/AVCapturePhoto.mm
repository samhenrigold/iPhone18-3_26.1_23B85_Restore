@interface AVCapturePhoto
+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)type codec:(unsigned int)codec unresolvedSettings:(id)settings;
- (AVCameraCalibrationData)cameraCalibrationData;
- (AVCaptureDeviceType)sourceDeviceType;
- (AVCaptureLensStabilizationStatus)lensStabilizationStatus;
- (AVCapturePhoto)initWithTimestamp:(id *)timestamp photoSurface:(__IOSurface *)surface photoSurfaceSize:(unint64_t)size processedFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface embeddedThumbnailSourceSurface:(__IOSurface *)sourceSurface photoLibraryThumbnails:(id)thumbnails metadata:(id)self0 depthDataSurface:(__IOSurface *)self1 depthMetadataDictionary:(id)self2 portraitEffectsMatteSurface:(__IOSurface *)self3 portraitEffectsMatteMetadataDictionary:(id)self4 hairSegmentationMatteSurface:(__IOSurface *)self5 hairSegmentationMatteMetadataDictionary:(id)self6 skinSegmentationMatteSurface:(__IOSurface *)self7 skinSegmentationMatteMetadataDictionary:(id)self8 teethSegmentationMatteSurface:(__IOSurface *)self9 teethSegmentationMatteMetadataDictionary:(id)teethSegmentationMatteMetadataDictionary glassesSegmentationMatteSurface:(__IOSurface *)glassesSegmentationMatteSurface glassesSegmentationMatteMetadataDictionary:(id)glassesSegmentationMatteMetadataDictionary constantColorConfidenceMapSurface:(__IOSurface *)mapSurface constantColorMetadataDictionary:(id)colorMetadataDictionary captureRequest:(id)request bracketSettings:(id)settings sequenceCount:(unint64_t)count photoCount:(unint64_t)photoCount expectedPhotoProcessingFlags:(unsigned int)flags sourceDeviceType:(id)timestamp0;
- (AVCaptureResolvedPhotoSettings)resolvedSettings;
- (AVDepthData)depthData;
- (AVPortraitEffectsMatte)portraitEffectsMatte;
- (AVSemanticSegmentationMatte)semanticSegmentationMatteForType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType;
- (BOOL)_isCompressedPhoto;
- (BOOL)_isUncompressedYUVOrRGBPhoto;
- (BOOL)isConstantColorFallbackPhoto;
- (BOOL)isRawPhoto;
- (CGImageRef)CGImageRepresentation;
- (CGImageRef)previewCGImageRepresentation;
- (CVPixelBufferRef)pixelBuffer;
- (NSData)fileDataRepresentation;
- (NSData)fileDataRepresentationWithCustomizer:(id)customizer;
- (NSData)fileDataRepresentationWithReplacementMetadata:(NSDictionary *)replacementMetadata replacementEmbeddedThumbnailPhotoFormat:(NSDictionary *)replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:(CVPixelBufferRef)replacementEmbeddedThumbnailPixelBuffer replacementDepthData:(AVDepthData *)replacementDepthData;
- (NSDictionary)embeddedThumbnailPhotoFormat;
- (NSDictionary)metadata;
- (__CVBuffer)_embeddedThumbnailSourcePixelBuffer;
- (float)focusPixelBlurScore;
- (id)_fileDataRepresentationWithReplacementMetadata:(id)metadata replacementEmbeddedThumbnailPhotoFormat:(id)format replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)buffer replacementDepthData:(id)data replacementPortraitEffectsMatte:(id)matte replacementHairSegmentationMatte:(id)segmentationMatte replacementSkinSegmentationMatte:(id)skinSegmentationMatte replacementTeethSegmentationMatte:(id)self0 replacementGlassesSegmentationMatte:(id)self1 replacementRawCompressionSettings:(id)self2 exceptionReason:(id *)self3;
- (id)debugDescription;
- (id)description;
- (id)livePhotoMovieFileURL;
- (id)photoLibraryThumbnails;
- (int)_maximumAppleProRAWBitDepth;
- (uint64_t)portraitEffectsMatte;
- (unsigned)_orientation;
- (void)dealloc;
@end

@implementation AVCapturePhoto

- (AVCapturePhoto)initWithTimestamp:(id *)timestamp photoSurface:(__IOSurface *)surface photoSurfaceSize:(unint64_t)size processedFileType:(id)type previewPhotoSurface:(__IOSurface *)photoSurface embeddedThumbnailSourceSurface:(__IOSurface *)sourceSurface photoLibraryThumbnails:(id)thumbnails metadata:(id)self0 depthDataSurface:(__IOSurface *)self1 depthMetadataDictionary:(id)self2 portraitEffectsMatteSurface:(__IOSurface *)self3 portraitEffectsMatteMetadataDictionary:(id)self4 hairSegmentationMatteSurface:(__IOSurface *)self5 hairSegmentationMatteMetadataDictionary:(id)self6 skinSegmentationMatteSurface:(__IOSurface *)self7 skinSegmentationMatteMetadataDictionary:(id)self8 teethSegmentationMatteSurface:(__IOSurface *)self9 teethSegmentationMatteMetadataDictionary:(id)teethSegmentationMatteMetadataDictionary glassesSegmentationMatteSurface:(__IOSurface *)glassesSegmentationMatteSurface glassesSegmentationMatteMetadataDictionary:(id)glassesSegmentationMatteMetadataDictionary constantColorConfidenceMapSurface:(__IOSurface *)mapSurface constantColorMetadataDictionary:(id)colorMetadataDictionary captureRequest:(id)request bracketSettings:(id)settings sequenceCount:(unint64_t)count photoCount:(unint64_t)photoCount expectedPhotoProcessingFlags:(unsigned int)flags sourceDeviceType:(id)timestamp0
{
  v69.receiver = self;
  v69.super_class = AVCapturePhoto;
  v36 = [(AVCapturePhoto *)&v69 init];
  if (!v36)
  {
    return v36;
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@" constantColorConfidence:%p", mapSurface];
  v37 = objc_alloc_init(AVCapturePhotoInternal);
  v36->_internal = v37;
  if (!v37)
  {

    return 0;
  }

  surface = photoSurface;
  v38 = *&timestamp->var0;
  v37->timestamp.epoch = timestamp->var3;
  *&v37->timestamp.value = v38;
  if (surface)
  {
    v39 = CFRetain(surface);
  }

  else
  {
    v39 = 0;
  }

  v36->_internal->photoSurface = v39;
  v36->_internal->photoSurfaceSize = size;
  if (!type)
  {
    type = [objc_msgSend(request "unresolvedSettings")];
  }

  v36->_internal->processedFileType = type;
  v36->_internal->photoLibraryThumbnails = thumbnails;
  if (metadata)
  {
    v36->_internal->privateClientMetadata = [[AVCapturePhotoPrivateClientMetadata alloc] initWithMetadataDictionary:metadata];
    if (v36->_internal->privateClientMetadata)
    {
      v40 = [metadata mutableCopy];
      [v40 setObject:0 forKeyedSubscript:*MEMORY[0x1E6990CB0]];
    }

    else
    {
      v40 = 0;
    }

    v42 = objc_msgSend_objectForKeyedSubscript_(metadata);
    if (v42)
    {
      v36->_internal->portraitMetadata = [[AVApplePortraitMetadata alloc] initWithPortraitMetadataDictionary:v42];
      if (!v40)
      {
        v40 = [metadata mutableCopy];
      }

      [v40 setObject:0 forKeyedSubscript:0x1F1CCCB68];
    }

    if (v40)
    {

      v36->_internal->metadata = [v40 copy];
      goto LABEL_21;
    }

    metadataCopy = metadata;
  }

  else
  {
    metadataCopy = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v36->_internal->metadata = metadataCopy;
LABEL_21:
  v36->_internal->resolvedSettings = [request resolvedSettings];
  v36->_internal->unresolvedSettings = [request unresolvedSettings];
  v36->_internal->bracketSettings = settings;
  v36->_internal->sequenceCount = count;
  v36->_internal->photoCount = photoCount;
  v36->_internal->sourceDeviceType = deviceType;
  v43 = objc_msgSend_objectForKeyedSubscript_(metadata);
  v36->_internal->expectedPhotoProcessingFlags = flags;
  v36->_internal->actualPhotoProcessingFlags = [objc_msgSend_objectForKeyedSubscript_(v43) unsignedIntValue];
  _isSushiRAWPhoto = [(AVCapturePhoto *)v36 _isSushiRAWPhoto];
  _isProRAWPhoto = [(AVCapturePhoto *)v36 _isProRAWPhoto];
  v36->_internal->lensStabilizationSupported = [request lensStabilizationSupported];
  resolvedSettings = v36->_internal->resolvedSettings;
  if (_isSushiRAWPhoto || _isProRAWPhoto)
  {
    rawEmbeddedThumbnailDimensions = [(AVCaptureResolvedPhotoSettings *)resolvedSettings rawEmbeddedThumbnailDimensions];
    rawEmbeddedThumbnailPhotoFormat = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings rawEmbeddedThumbnailPhotoFormat];
  }

  else
  {
    rawEmbeddedThumbnailDimensions = [(AVCaptureResolvedPhotoSettings *)resolvedSettings embeddedThumbnailDimensions];
    rawEmbeddedThumbnailPhotoFormat = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings embeddedThumbnailPhotoFormat];
  }

  v49 = *MEMORY[0x1E6987CB0];
  v50 = objc_msgSend_objectForKeyedSubscript_(rawEmbeddedThumbnailPhotoFormat);
  v51 = HIDWORD(rawEmbeddedThumbnailDimensions);
  if (HIDWORD(rawEmbeddedThumbnailDimensions))
  {
    if (rawEmbeddedThumbnailDimensions)
    {
      v52 = v50;
      if (v50)
      {
        v53 = objc_alloc(MEMORY[0x1E695DF20]);
        v54 = [MEMORY[0x1E696AD98] numberWithInt:rawEmbeddedThumbnailDimensions];
        v55 = *MEMORY[0x1E6987E08];
        v56 = [MEMORY[0x1E696AD98] numberWithInt:v51];
        v36->_internal->embeddedThumbnailPhotoFormat = [v53 initWithObjectsAndKeys:{v52, v49, v54, v55, v56, *MEMORY[0x1E6987D70], 0}];
      }
    }
  }

  v57 = MEMORY[0x1E695E480];
  if (surface && (_isSushiRAWPhoto || [(AVCapturePhoto *)v36 _isUncompressedYUVOrRGBPhoto]))
  {
    CVPixelBufferCreateWithIOSurface(*v57, surface, 0, &v36->_internal->photoPixelBuffer);
  }

  if (surface)
  {
    CVPixelBufferCreateWithIOSurface(*v57, surface, 0, &v36->_internal->previewPixelBuffer);
  }

  if (sourceSurface)
  {
    CVPixelBufferCreateWithIOSurface(*v57, sourceSurface, 0, &v36->_internal->embeddedThumbnailSourcePixelBuffer);
  }

  if (dataSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, dataSurface, 0, &pixelBufferOut);
    v58 = [AVDepthData alloc];
    v36->_internal->depthData = [(AVDepthData *)v58 initWithPixelBuffer:pixelBufferOut depthMetadataDictionary:dictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (matteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, matteSurface, 0, &pixelBufferOut);
    v59 = [AVPortraitEffectsMatte alloc];
    v36->_internal->portraitEffectsMatte = [(AVPortraitEffectsMatte *)v59 initWithPixelBuffer:pixelBufferOut portraitEffectsMatteMetadataDictionary:metadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (segmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, segmentationMatteSurface, 0, &pixelBufferOut);
    v60 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->hairSegmentationMatte = [(AVSemanticSegmentationMatte *)v60 initWithType:@"AVSemanticSegmentationMatteTypeHair" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:matteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (skinSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, skinSegmentationMatteSurface, 0, &pixelBufferOut);
    v61 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->skinSegmentationMatte = [(AVSemanticSegmentationMatte *)v61 initWithType:@"AVSemanticSegmentationMatteTypeSkin" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:segmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (teethSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, teethSegmentationMatteSurface, 0, &pixelBufferOut);
    v62 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->teethSegmentationMatte = [(AVSemanticSegmentationMatte *)v62 initWithType:@"AVSemanticSegmentationMatteTypeTeeth" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:teethSegmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (glassesSegmentationMatteSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, glassesSegmentationMatteSurface, 0, &pixelBufferOut);
    v63 = [AVSemanticSegmentationMatte alloc];
    v36->_internal->glassesSegmentationMatte = [(AVSemanticSegmentationMatte *)v63 initWithType:@"AVSemanticSegmentationMatteTypeGlasses" pixelBuffer:pixelBufferOut semanticSegmentationMatteMetadataDictionary:glassesSegmentationMatteMetadataDictionary];
    if (pixelBufferOut)
    {
      CFRelease(pixelBufferOut);
    }
  }

  if (mapSurface)
  {
    pixelBufferOut = 0;
    CVPixelBufferCreateWithIOSurface(*v57, mapSurface, 0, &pixelBufferOut);
    v36->_internal->constantColorConfidenceMap = pixelBufferOut;
    if (colorMetadataDictionary)
    {
      [objc_msgSend_objectForKeyedSubscript_(colorMetadataDictionary) floatValue];
      v36->_internal->constantColorCenterWeightedMeanConfidenceLevel = v64;
    }
  }

  isCameraCalibrationDataDeliveryEnabled = [(AVCapturePhotoSettings *)v36->_internal->unresolvedSettings isCameraCalibrationDataDeliveryEnabled];
  if (dictionary && isCameraCalibrationDataDeliveryEnabled)
  {
    v36->_internal->cameraCalibrationData = [[AVCameraCalibrationData alloc] initWithDepthMetadataDictionary:dictionary];
  }

  return v36;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    photoSurface = internal->photoSurface;
    if (photoSurface)
    {
      CFRelease(photoSurface);
      internal = self->_internal;
    }

    photoPixelBuffer = internal->photoPixelBuffer;
    if (photoPixelBuffer)
    {
      CFRelease(photoPixelBuffer);
      internal = self->_internal;
    }

    v6 = self->_internal;
    previewPixelBuffer = v6->previewPixelBuffer;
    if (previewPixelBuffer)
    {
      CFRelease(previewPixelBuffer);
      v6 = self->_internal;
    }

    embeddedThumbnailSourcePixelBuffer = v6->embeddedThumbnailSourcePixelBuffer;
    if (embeddedThumbnailSourcePixelBuffer)
    {
      CFRelease(embeddedThumbnailSourcePixelBuffer);
      v6 = self->_internal;
    }

    v9 = self->_internal;
    constantColorConfidenceMap = v9->constantColorConfidenceMap;
    if (constantColorConfidenceMap)
    {
      CFRelease(constantColorConfidenceMap);
      v9 = self->_internal;
    }
  }

  v11.receiver = self;
  v11.super_class = AVCapturePhoto;
  [(AVCapturePhoto *)&v11 dealloc];
}

- (id)debugDescription
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [-[AVCapturePhotoSettings bracketedSettings](self->_internal->unresolvedSettings "bracketedSettings")];
  }

  else
  {
    v3 = 0;
  }

  isRawPhoto = [(AVCapturePhoto *)self isRawPhoto];
  internal = self->_internal;
  if (internal->bracketSettings)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" bracket:%d/%d lens:%d %@", internal->sequenceCount, v3, -[AVCapturePhoto lensStabilizationStatus](self, "lensStabilizationStatus"), -[AVCaptureBracketedStillImageSettings debugDescription](self->_internal->bracketSettings, "debugDescription")];
    internal = self->_internal;
  }

  else
  {
    v6 = &stru_1F1CBCFE8;
  }

  if (isRawPhoto)
  {
    v7 = @" (raw)";
  }

  else
  {
    v7 = &stru_1F1CBCFE8;
  }

  v8 = *&internal->timestamp.value;
  time.epoch = internal->timestamp.epoch;
  *&time.value = v8;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"pts:%f %d/%d%@%@ settings:%@", CMTimeGetSeconds(&time), self->_internal->photoCount, -[AVCaptureResolvedPhotoSettings expectedPhotoCount](self->_internal->resolvedSettings, "expectedPhotoCount"), v7, v6, -[AVCaptureResolvedPhotoSettings debugDescription](self->_internal->resolvedSettings, "debugDescription")];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCapturePhoto debugDescription](self, "debugDescription")];
}

- (BOOL)isRawPhoto
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 1;
  }

  return [(AVCapturePhoto *)self _isProRAWPhoto];
}

- (CVPixelBufferRef)pixelBuffer
{
  if ([(AVCapturePhoto *)self _isProRAWPhoto])
  {
    internal = self->_internal;
    if (internal->photoSurface)
    {
      if (!internal->photoPixelBuffer)
      {
        v5 = *MEMORY[0x1E6991A78];
        v6 = &unk_1F1CE9950;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
        CMPhotoDNGUnpack();
      }
    }
  }

  return self->_internal->photoPixelBuffer;
}

- (NSDictionary)embeddedThumbnailPhotoFormat
{
  v2 = self->_internal->embeddedThumbnailPhotoFormat;

  return v2;
}

- (AVDepthData)depthData
{
  internal = self->_internal;
  depthData = internal->depthData;
  if (depthData)
  {
    v4 = depthData;

    return v4;
  }

  else if ([(AVCapturePhotoSettings *)internal->unresolvedSettings isDepthDataDeliveryEnabled])
  {
    v8 = 0;
    cf = 0;
    if (!self->_internal->didTryToDecodeDepthData && [(AVCapturePhoto *)self _isCompressedPhoto]&& !avcp_copyFirstAuxiliaryImageOfType(self->_internal->photoSurface, 1, 0, &cf, &v8))
    {
      v7 = [AVDepthData alloc];
      self->_internal->depthData = [(AVDepthData *)v7 initWithPixelBuffer:cf auxiliaryMetadata:v8];
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    self->_internal->didTryToDecodeDepthData = 1;
    return self->_internal->depthData;
  }

  else
  {
    return 0;
  }
}

- (AVPortraitEffectsMatte)portraitEffectsMatte
{
  p_internal = &self->_internal;
  internal = self->_internal;
  portraitEffectsMatte = internal->portraitEffectsMatte;
  if (portraitEffectsMatte)
  {
    v5 = portraitEffectsMatte;

    return v5;
  }

  else if ([(AVCapturePhotoSettings *)internal->unresolvedSettings isPortraitEffectsMatteDeliveryEnabled])
  {
    cf = 0;
    v9 = 0;
    if (!(*p_internal)->didTryToDecodePortraitEffectsMatte && (![(AVCapturePhoto *)self _isCompressedPhoto]|| ([(AVCapturePhoto *)p_internal portraitEffectsMatte]& 1) == 0) && cf)
    {
      CFRelease(cf);
    }

    (*p_internal)->didTryToDecodePortraitEffectsMatte = 1;
    return (*p_internal)->portraitEffectsMatte;
  }

  else
  {
    return 0;
  }
}

- (AVSemanticSegmentationMatte)semanticSegmentationMatteForType:(AVSemanticSegmentationMatteType)semanticSegmentationMatteType
{
  cf = 0uLL;
  if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeSkin"]& 1) != 0)
  {
    v5 = MEMORY[0x1E69917E8];
    v6 = 184;
    v7 = 176;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeHair"]& 1) != 0)
  {
    v5 = MEMORY[0x1E69917E0];
    v6 = 168;
    v7 = 160;
  }

  else if (([(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeTeeth"]& 1) != 0)
  {
    v5 = MEMORY[0x1E69917F8];
    v6 = 200;
    v7 = 192;
  }

  else
  {
    if (![(NSString *)semanticSegmentationMatteType isEqual:@"AVSemanticSegmentationMatteTypeGlasses"])
    {
      return 0;
    }

    v5 = MEMORY[0x1E69917D8];
    v6 = 216;
    v7 = 208;
  }

  internal = self->_internal;
  v9 = *(&internal->super.isa + v7);
  if (!v9)
  {
    v12 = *v5;
    if ([(NSArray *)[(AVCapturePhotoSettings *)internal->unresolvedSettings enabledSemanticSegmentationMatteTypes] containsObject:semanticSegmentationMatteType])
    {
      if ((*(&internal->super.isa + v6) & 1) == 0 && [(AVCapturePhoto *)self _isCompressedPhoto])
      {
        AuxiliaryImageOfType = avcp_copyFirstAuxiliaryImageOfType(self->_internal->photoSurface, 4, v12, &cf + 1, &cf);
        v14 = *(&cf + 1);
        if (!AuxiliaryImageOfType)
        {
          if (cf == 0)
          {
LABEL_18:
            *(&internal->super.isa + v6) = 1;
            return *(&internal->super.isa + v7);
          }

          v15 = [AVSemanticSegmentationMatte alloc];
          *(&internal->super.isa + v7) = [(AVSemanticSegmentationMatte *)v15 initWithType:semanticSegmentationMatteType pixelBuffer:*(&cf + 1) auxiliaryMetadata:cf];
          v14 = *(&cf + 1);
        }

        if (v14)
        {
          CFRelease(v14);
        }
      }

      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_18;
    }

    return 0;
  }

  v10 = v9;

  return v10;
}

- (id)photoLibraryThumbnails
{
  v2 = self->_internal->photoLibraryThumbnails;

  return v2;
}

- (NSDictionary)metadata
{
  v2 = self->_internal->metadata;

  return v2;
}

- (AVCameraCalibrationData)cameraCalibrationData
{
  v2 = self->_internal->cameraCalibrationData;

  return v2;
}

- (AVCaptureResolvedPhotoSettings)resolvedSettings
{
  v2 = self->_internal->resolvedSettings;

  return v2;
}

- (AVCaptureDeviceType)sourceDeviceType
{
  if ([(NSArray *)[(AVCapturePhotoSettings *)self->_internal->unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices] count])
  {
    v3 = objc_msgSend_objectForKeyedSubscript_(self->_internal->metadata);
    [objc_msgSend_objectForKeyedSubscript_(v3) floatValue];
    v5 = v4;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    virtualDeviceConstituentPhotoDeliveryEnabledDevices = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings virtualDeviceConstituentPhotoDeliveryEnabledDevices];
    v7 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(virtualDeviceConstituentPhotoDeliveryEnabledDevices);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          [v11 lensAperture];
          if (v5 == v12)
          {
            return [v11 deviceType];
          }
        }

        v8 = [(NSArray *)virtualDeviceConstituentPhotoDeliveryEnabledDevices countByEnumeratingWithState:&v15 objects:v14 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  return self->_internal->sourceDeviceType;
}

- (NSData)fileDataRepresentation
{
  if (!self->_internal->photoSurface)
  {
    return 0;
  }

  if (![(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    if ([(AVCapturePhoto *)self _isCompressedPhoto])
    {
      IOSurfaceLock(self->_internal->photoSurface, 1u, 0);
      v7 = [MEMORY[0x1E695DEF0] dataWithBytes:IOSurfaceGetBaseAddress(self->_internal->photoSurface) length:self->_internal->photoSurfaceSize];
      IOSurfaceUnlock(self->_internal->photoSurface, 1u, 0);
      return v7;
    }

    if ([(AVCapturePhoto *)self _isUncompressedYUVOrRGBPhoto])
    {
      v9 = objc_msgSend_objectForKeyedSubscript_([(AVCapturePhoto *)self embeddedThumbnailPhotoFormat]);
      v10 = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
      v5 = avcp_copyTIFFFileDataRepresentationForImage(v10, [(AVCapturePhoto *)self metadata], v9);
      if (v10)
      {
        CFRelease(v10);
      }

      v4 = v5;
      goto LABEL_4;
    }

    return 0;
  }

  v3 = objc_msgSend_objectForKeyedSubscript_([(AVCapturePhoto *)self embeddedThumbnailPhotoFormat]);
  v4 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer([(AVCapturePhoto *)self pixelBuffer], [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer], [(AVCapturePhoto *)self metadata], [(AVCapturePhoto *)self depthData], v3, [(AVCaptureResolvedPhotoSettings *)self->_internal->resolvedSettings rawEmbeddedThumbnailDimensions]);
  v5 = v4;
LABEL_4:
  v6 = v4;
  return v5;
}

- (NSData)fileDataRepresentationWithReplacementMetadata:(NSDictionary *)replacementMetadata replacementEmbeddedThumbnailPhotoFormat:(NSDictionary *)replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:(CVPixelBufferRef)replacementEmbeddedThumbnailPixelBuffer replacementDepthData:(AVDepthData *)replacementDepthData
{
  v16 = 0;
  portraitEffectsMatte = 0;
  if ([(AVCapturePhoto *)self depthData]== replacementDepthData)
  {
    portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  }

  v12 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:replacementMetadata replacementEmbeddedThumbnailPhotoFormat:replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:replacementEmbeddedThumbnailPixelBuffer replacementDepthData:replacementDepthData replacementPortraitEffectsMatte:portraitEffectsMatte replacementHairSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"] replacementSkinSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"] replacementTeethSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"] replacementGlassesSegmentationMatte:[(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"] replacementRawCompressionSettings:0 exceptionReason:&v16];
  if (v16)
  {
    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
    if (AVCaptureShouldThrowForAPIViolations(v13, v14))
    {
      objc_exception_throw(v13);
    }

    NSLog(&cfstr_SuppressingExc.isa, v13);
  }

  return v12;
}

- (NSData)fileDataRepresentationWithCustomizer:(id)customizer
{
  metadata = [(AVCapturePhoto *)self metadata];
  embeddedThumbnailPhotoFormat = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  depthData = [(AVCapturePhoto *)self depthData];
  portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  v18 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v5 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v6 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v7 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  if (customizer)
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      metadata = [customizer replacementMetadataForPhoto:self];
    }

    if (objc_opt_respondsToSelector())
    {
      v17 = [customizer replacementEmbeddedThumbnailPixelBufferWithPhotoFormat:&embeddedThumbnailPhotoFormat forPhoto:self];
    }

    else
    {
      v17 = 0;
    }

    if ([(AVCapturePhoto *)self _isProRAWPhoto])
    {
      if (objc_opt_respondsToSelector())
      {
        v12 = [customizer replacementAppleProRAWCompressionSettingsForPhoto:self defaultSettings:-[AVCapturePhoto _defaultRawCompressionSettings](self maximumBitDepth:{"_defaultRawCompressionSettings"), -[AVCapturePhoto _maximumAppleProRAWBitDepth](self, "_maximumAppleProRAWBitDepth")}];
LABEL_19:
        v13 = v18;
LABEL_20:
        v22 = 0;
        v11 = [(AVCapturePhoto *)self _fileDataRepresentationWithReplacementMetadata:metadata replacementEmbeddedThumbnailPhotoFormat:embeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer:v17 replacementDepthData:depthData replacementPortraitEffectsMatte:portraitEffectsMatte replacementHairSegmentationMatte:v13 replacementSkinSegmentationMatte:v5 replacementTeethSegmentationMatte:v6 replacementGlassesSegmentationMatte:v8 replacementRawCompressionSettings:v12 exceptionReason:&v22];
        if (v22)
        {
          v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
          if (AVCaptureShouldThrowForAPIViolations(v14, v15))
          {
            objc_exception_throw(v14);
          }

          NSLog(&cfstr_SuppressingExc.isa, v14);
        }

        return v11;
      }
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        depthData = [customizer replacementDepthDataForPhoto:self];
      }

      if (objc_opt_respondsToSelector())
      {
        portraitEffectsMatte = [customizer replacementPortraitEffectsMatteForPhoto:self];
      }

      if (objc_opt_respondsToSelector())
      {
        v13 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeHair" forPhoto:self];
        v5 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeSkin" forPhoto:self];
        v6 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeTeeth" forPhoto:self];
        v8 = [customizer replacementSemanticSegmentationMatteOfType:@"AVSemanticSegmentationMatteTypeGlasses" forPhoto:self];
        v12 = 0;
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];
  if (AVCaptureShouldThrowForAPIViolations(v9, v10))
  {
    objc_exception_throw(v9);
  }

  NSLog(&cfstr_SuppressingExc.isa, v9);
  return 0;
}

- (AVCaptureLensStabilizationStatus)lensStabilizationStatus
{
  if (!self->_internal->lensStabilizationSupported)
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unresolvedSettings = self->_internal->unresolvedSettings;
  }

  else
  {
    unresolvedSettings = 0;
  }

  if (![(AVCapturePhotoSettings *)unresolvedSettings isLensStabilizationEnabled])
  {
    return 1;
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(self->_internal->metadata);
  v6 = objc_msgSend_objectForKeyedSubscript_(v5);
  v7 = objc_msgSend_objectForKeyedSubscript_(self->_internal->metadata);
  v8 = objc_msgSend_objectForKeyedSubscript_(v7);
  if (!(v6 | v8))
  {
    return 4;
  }

  v9 = v8;
  intValue = [v6 intValue];
  if (([v9 intValue] & 6) != 0)
  {
    return 3;
  }

  if ((intValue - 1) <= 4)
  {
    return qword_1A92AB0E0[intValue - 1];
  }

  else
  {
    return 4;
  }
}

- (id)livePhotoMovieFileURL
{
  internal = self->_internal;
  unresolvedSettings = internal->unresolvedSettings;
  if (internal->expectedPhotoProcessingFlags)
  {
    return [(AVCapturePhotoSettings *)unresolvedSettings livePhotoMovieFileURLForOriginalPhoto];
  }

  else
  {
    return [(AVCapturePhotoSettings *)unresolvedSettings livePhotoMovieFileURL];
  }
}

- (float)focusPixelBlurScore
{
  v2 = objc_msgSend_objectForKeyedSubscript_(self->_internal->metadata, a2, *MEMORY[0x1E696DE30]);
  v3 = objc_msgSend_objectForKeyedSubscript_(v2);
  if (!v3)
  {
    return NAN;
  }

  [v3 floatValue];
  return result;
}

- (BOOL)isConstantColorFallbackPhoto
{
  isConstantColorEnabled = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings isConstantColorEnabled];
  if (isConstantColorEnabled)
  {
    LOBYTE(isConstantColorEnabled) = self->_internal->constantColorConfidenceMap == 0;
  }

  return isConstantColorEnabled;
}

+ (id)AVFileTypeFromFigCaptureStillImageSettingsFileType:(int)type codec:(unsigned int)codec unresolvedSettings:(id)settings
{
  if (type > 1751476581)
  {
    switch(type)
    {
      case 1953064550:
        v5 = MEMORY[0x1E69874C8];
        break;
      case 1785096550:
        v5 = MEMORY[0x1E69874B0];
        break;
      case 1751476582:
        v5 = MEMORY[0x1E69874A8];
        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    switch(type)
    {
      case 1684628333:
        v5 = MEMORY[0x1E6987490];
        break;
      case 1684956519:
        v5 = MEMORY[0x1E6987498];
        break;
      case 1751476579:
        v5 = MEMORY[0x1E69874A0];
        break;
      default:
        goto LABEL_15;
    }
  }

  result = *v5;
  if (*v5)
  {
    return result;
  }

LABEL_15:
  if (codec > 1635148592)
  {
    switch(codec)
    {
      case 0x61766331u:
        v7 = MEMORY[0x1E6987470];
        break;
      case 0x6A706567u:
        v7 = MEMORY[0x1E69874B0];
        break;
      case 0x68766331u:
        v7 = MEMORY[0x1E69874A0];
        break;
      default:
        return [settings processedFileType];
    }
  }

  else
  {
    if (codec != 875704422 && codec != 875704438 && codec != 1111970369)
    {
      return [settings processedFileType];
    }

    v7 = MEMORY[0x1E69874C8];
  }

  result = *v7;
  if (!*v7)
  {
    return [settings processedFileType];
  }

  return result;
}

- (BOOL)_isCompressedPhoto
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 0;
  }

  internal = self->_internal;
  processedFileType = internal->processedFileType;
  if (processedFileType)
  {
    if (![(NSString *)processedFileType isEqualToString:*MEMORY[0x1E69874C8]])
    {
      return 1;
    }

    internal = self->_internal;
  }

  if (objc_msgSend_objectForKeyedSubscript_([(AVCapturePhotoSettings *)internal->unresolvedSettings format]))
  {
    return 1;
  }

  v6 = self->_internal;
  if (!v6->unresolvedSettings)
  {
    if (v6->photoSurface)
    {
      return 1;
    }
  }

  return [(AVCapturePhoto *)self _isProRAWPhoto];
}

- (BOOL)_isUncompressedYUVOrRGBPhoto
{
  v3 = objc_msgSend_objectForKeyedSubscript_([(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format]);
  if (v3)
  {
    if ([(AVCapturePhoto *)self _isCompressedPhoto])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(AVCapturePhoto *)self _isSushiRAWPhoto];
    }
  }

  return v3;
}

- (__CVBuffer)_embeddedThumbnailSourcePixelBuffer
{
  internal = self->_internal;
  result = internal->embeddedThumbnailSourcePixelBuffer;
  if (!result)
  {
    return internal->previewPixelBuffer;
  }

  return result;
}

- (unsigned)_orientation
{
  v2 = objc_msgSend_objectForKeyedSubscript_([(AVCapturePhoto *)self metadata]);
  if (!v2)
  {
    return 1;
  }

  return [v2 intValue];
}

- (int)_maximumAppleProRAWBitDepth
{
  if (![(AVCapturePhoto *)self _isProRAWPhoto]|| !self->_internal->photoSurface)
  {
    return 12;
  }

  cf = 0;
  v10 = *MEMORY[0x1E6991A80];
  v11 = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v3 = CMPhotoDNGUnpack();
  v4 = cf;
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = cf == 0;
  }

  if (v5)
  {
    v6 = 12;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_16;
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(cf);
  if (v7 && (v8 = objc_msgSend_objectForKeyedSubscript_(v7), [v8 count]))
  {
    v6 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
  }

  else
  {
    v6 = 12;
  }

  v4 = cf;
  if (cf)
  {
LABEL_16:
    CFRelease(v4);
  }

  return v6;
}

- (id)_fileDataRepresentationWithReplacementMetadata:(id)metadata replacementEmbeddedThumbnailPhotoFormat:(id)format replacementEmbeddedThumbnailPixelBuffer:(__CVBuffer *)buffer replacementDepthData:(id)data replacementPortraitEffectsMatte:(id)matte replacementHairSegmentationMatte:(id)segmentationMatte replacementSkinSegmentationMatte:(id)skinSegmentationMatte replacementTeethSegmentationMatte:(id)self0 replacementGlassesSegmentationMatte:(id)self1 replacementRawCompressionSettings:(id)self2 exceptionReason:(id *)self3
{
  v115 = 0;
  v19 = [MEMORY[0x1E695DFD8] setWithArray:{+[AVCapturePhotoOutput validMetadataTopLevelCGImagePropertiesKeys](AVCapturePhotoOutput, "validMetadataTopLevelCGImagePropertiesKeys")}];
  v20 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(metadata, "allKeys")}];
  [v20 minusSet:v19];
  if ([v20 count])
  {
    v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replacementMetadata contains invalid keys: %@", v20];
    dataCopy = 0;
    v66 = 0;
    v39 = 0;
    v115 = v67;
    if (!v67)
    {
      goto LABEL_114;
    }

    goto LABEL_113;
  }

  segmentationMatteCopy = segmentationMatte;
  if (format)
  {
    v21 = *MEMORY[0x1E6987E08];
    v114[0] = *MEMORY[0x1E6987CB0];
    v114[1] = v21;
    v114[2] = *MEMORY[0x1E6987D70];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:3];
    if (AVGestaltGetBoolAnswer(@"AVGQCapturePhotoSettingsSupportRawEmbeddedThumbnailFormat") && [(AVCapturePhoto *)self isRawPhoto])
    {
      availableRawEmbeddedThumbnailPhotoCodecTypes = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableRawEmbeddedThumbnailPhotoCodecTypes];
    }

    else
    {
      availableRawEmbeddedThumbnailPhotoCodecTypes = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings availableEmbeddedThumbnailPhotoCodecTypes];
    }

    if (![AVCaptureVideoSettingsValidator validateVideoSettings:format allowingFeatures:25 validPixelKeys:0 validPixelFormats:0 validCodecKeys:v22 validCodecs:availableRawEmbeddedThumbnailPhotoCodecTypes exceptionReason:&v115])
    {
      goto LABEL_109;
    }
  }

  else if (buffer)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"If you specify a replacementEmbeddedThumbnailPixelBuffer, you must also specify a replacementEmbeddedThumbnailPhotoFormat";
    goto LABEL_199;
  }

  dataCopy = data;
  if (data)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v39 = 0;
      v66 = 0;
      dataCopy = 0;
      v67 = @"replacementDepthData must be an instance of AVDepthData";
LABEL_199:
      v115 = v67;
      goto LABEL_113;
    }
  }

  if (!matte)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementPortraitEffectsMatte must be an instance of AVPortraitEffectsMatte";
    goto LABEL_199;
  }

  if (!data)
  {
    v39 = 0;
    v66 = 0;
    v67 = @"If you wish to include a portrait effects matte in the file data representation, you must also include depth data";
    goto LABEL_199;
  }

LABEL_15:
  if (!segmentationMatte)
  {
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementHairSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(segmentationMatte "matteType")] & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementHairSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeHair";
    goto LABEL_199;
  }

LABEL_18:
  if (!skinSegmentationMatte)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementSkinSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(skinSegmentationMatte "matteType")] & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementSkinSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeSkin";
    goto LABEL_199;
  }

LABEL_21:
  if (!teethSegmentationMatte)
  {
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementTeethSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(teethSegmentationMatte "matteType")] & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementTeethSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeTeeth";
    goto LABEL_199;
  }

LABEL_24:
  if (!glassesSegmentationMatte)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementGlassesSegmentationMatte must be an instance of AVSemanticSegmentationMatte";
    goto LABEL_199;
  }

  if (([objc_msgSend(glassesSegmentationMatte "matteType")] & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementGlassesSegmentationMatte must have a matteType of AVSemanticSegmentationMatteTypeGlasses";
    goto LABEL_199;
  }

LABEL_27:
  bufferCopy = buffer;
  if (!settings)
  {
    _defaultRawCompressionSettings = [(AVCapturePhoto *)self _defaultRawCompressionSettings];
    goto LABEL_41;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v39 = 0;
    v66 = 0;
    dataCopy = 0;
    v67 = @"replacementRawCompressionSettings must be an instance of NSDictionary";
    goto LABEL_199;
  }

  v25 = *MEMORY[0x1E6987DC0];
  v26 = *MEMORY[0x1E6987C58];
  v113[0] = *MEMORY[0x1E6987DC0];
  v113[1] = v26;
  v27 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v113, 2)}];
  v28 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(settings, "allKeys")}];
  [v28 minusSet:v27];
  if ([v28 count])
  {
    v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported keys specified: %@. Supported keys are %@", v28, v27];
    dataCopy = 0;
    v66 = 0;
    v39 = 0;
    v115 = v97;
    goto LABEL_112;
  }

  _defaultRawCompressionSettings = [-[AVCapturePhoto _defaultRawCompressionSettings](self "_defaultRawCompressionSettings")];
  if (objc_msgSend_objectForKeyedSubscript_(settings))
  {
    objc_msgSend_objectForKeyedSubscript_(settings);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      dataCopy = 0;
      v66 = 0;
      v39 = 0;
      v98 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be an instance of NSNumber";
      goto LABEL_204;
    }

    [objc_msgSend_objectForKeyedSubscript_(settings) doubleValue];
    if (v30 < 0.0 || v30 > 1.0)
    {
      dataCopy = 0;
      v66 = 0;
      v39 = 0;
      v98 = @"replacementAppleProRAWCompressionSettings[AVVideoQualityKey] must be a value >= 0.0 and <= 1.0";
      goto LABEL_204;
    }

    [_defaultRawCompressionSettings setObject:objc_msgSend_objectForKeyedSubscript_(settings) forKeyedSubscript:v25];
  }

  if (objc_msgSend_objectForKeyedSubscript_(settings))
  {
    objc_msgSend_objectForKeyedSubscript_(settings);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [objc_msgSend_objectForKeyedSubscript_(settings) intValue];
      segmentationMatteCopy3 = segmentationMatte;
      if (intValue >= 8)
      {
        matteCopy2 = matte;
        if (intValue <= [(AVCapturePhoto *)self _maximumAppleProRAWBitDepth])
        {
          [_defaultRawCompressionSettings setObject:objc_msgSend_objectForKeyedSubscript_(settings) forKeyedSubscript:v26];
          goto LABEL_42;
        }
      }

      dataCopy = 0;
      v66 = 0;
      v39 = 0;
      v98 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be a value >= 8 and <= maximumBitDepth";
    }

    else
    {
      dataCopy = 0;
      v66 = 0;
      v39 = 0;
      v98 = @"replacementAppleProRAWCompressionSettings[AVVideoAppleProRAWBitDepthKey] must be an instance of NSNumber";
    }

LABEL_204:
    v115 = v98;
    goto LABEL_112;
  }

LABEL_41:
  segmentationMatteCopy3 = segmentationMatte;
  matteCopy2 = matte;
LABEL_42:
  v34 = [_defaultRawCompressionSettings isEqual:{-[AVCapturePhoto _defaultRawCompressionSettings](self, "_defaultRawCompressionSettings")}];
  if ([(AVCapturePhoto *)self metadata]== metadata)
  {
    v109 = 0;
  }

  else
  {
    v109 = [(NSDictionary *)[(AVCapturePhoto *)self metadata] isEqual:metadata]^ 1;
  }

  embeddedThumbnailPhotoFormat = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
  if (bufferCopy)
  {
    v36 = 0;
  }

  else
  {
    v36 = embeddedThumbnailPhotoFormat == format;
  }

  v37 = !v36;
  v101 = v37;
  depthData = [(AVCapturePhoto *)self depthData];
  portraitEffectsMatte = [(AVCapturePhoto *)self portraitEffectsMatte];
  v105 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeHair"];
  v106 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeSkin"];
  v107 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeTeeth"];
  v108 = [(AVCapturePhoto *)self semanticSegmentationMatteForType:@"AVSemanticSegmentationMatteTypeGlasses"];
  if (objc_msgSend_objectForKeyedSubscript_(metadata))
  {
    objc_msgSend_objectForKeyedSubscript_(metadata);
  }

  if (!((v109 | v101) & 1 | (depthData != data || portraitEffectsMatte != matteCopy2) | (v105 != segmentationMatteCopy3) | (v106 != skinSegmentationMatte || v107 != teethSegmentationMatte) | (v108 != glassesSegmentationMatte) | (v34 ^ 1) & 1))
  {
    return [(AVCapturePhoto *)self fileDataRepresentation];
  }

  if (!self->_internal->photoSurface)
  {
    goto LABEL_109;
  }

  metadataCopy = metadata;
  array = [MEMORY[0x1E695DF70] array];
  v39 = array;
  if (!array)
  {
    goto LABEL_96;
  }

  if (depthData != data)
  {
    [(__CFData *)array addObject:*MEMORY[0x1E69917B0]];
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917C8]];
  }

  if (portraitEffectsMatte != matteCopy2)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917D0]];
  }

  if (v105 != segmentationMatteCopy3)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917E0]];
  }

  if (v106 != skinSegmentationMatte)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917E8]];
  }

  if (v107 != teethSegmentationMatte)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917F8]];
  }

  if (v108 != glassesSegmentationMatte)
  {
    [(__CFData *)v39 addObject:*MEMORY[0x1E69917D8]];
  }

  _isSushiRAWPhoto = [(AVCapturePhoto *)self _isSushiRAWPhoto];
  _isProRAWPhoto = [(AVCapturePhoto *)self _isProRAWPhoto];
  format = [(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format];
  v99 = [objc_msgSend_objectForKeyedSubscript_(format) isEqualToString:*MEMORY[0x1E6987D00]];
  if (objc_msgSend_objectForKeyedSubscript_([(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format]) && !_isSushiRAWPhoto)
  {
    if (!_isProRAWPhoto)
    {
      v112 = 0;
      if (bufferCopy)
      {
        intValue2 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
        intValue3 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
        if (intValue2 <= intValue3)
        {
          v45 = intValue3;
        }

        else
        {
          v45 = intValue2;
        }

        v46 = v45;
        v112 = v45;
        if (!v45)
        {
          v47 = [objc_msgSend_objectForKeyedSubscript_(-[AVCapturePhotoSettings embeddedThumbnailPhotoFormat](self->_internal->unresolvedSettings "embeddedThumbnailPhotoFormat"))];
          v48 = [objc_msgSend_objectForKeyedSubscript_(-[AVCapturePhotoSettings embeddedThumbnailPhotoFormat](self->_internal->unresolvedSettings "embeddedThumbnailPhotoFormat"))];
          if (v47 <= v48)
          {
            LODWORD(v46) = v48;
          }

          else
          {
            LODWORD(v46) = v47;
          }

          v46 = v46;
          v112 = v46;
        }

        if (!v46)
        {
          if ([(NSString *)self->_internal->processedFileType isEqual:*MEMORY[0x1E69874B0]])
          {
            v49 = 160;
LABEL_136:
            v112 = v49;
            goto LABEL_137;
          }

          [(AVCapturePhoto *)self dimensions];
          [(AVCapturePhoto *)self dimensions];
          if (CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize())
          {
            v49 = 320;
            goto LABEL_136;
          }
        }
      }

LABEL_137:
      objc_msgSend_objectForKeyedSubscript_(format);
      v70 = AVOSTypeForString();
      photoSurfaceSize = self->_internal->photoSurfaceSize;
      v120 = 0;
      if (!CMPhotoCompressionSessionCreate())
      {
        v72 = *MEMORY[0x1E6991860];
        v119[0] = &unk_1F1CE9968;
        v73 = *MEMORY[0x1E6991858];
        v118[0] = v72;
        v118[1] = v73;
        v119[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:photoSurfaceSize];
        v118[2] = *MEMORY[0x1E6991888];
        v119[2] = [MEMORY[0x1E696AD98] numberWithBool:v109];
        v118[3] = *MEMORY[0x1E6991890];
        v119[3] = [MEMORY[0x1E696AD98] numberWithBool:v101];
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v119 forKeys:v118 count:4];
        if (!CMPhotoCompressionSessionOpenExistingContainerForModification() && (!metadataCopy || !v109 || !CMPhotoCompressionSessionAddMetadataFromImageProperties()))
        {
          if (bufferCopy)
          {
            v74 = 160;
            if (v112 < 0xA0)
            {
              v74 = v112;
            }

            if (v99)
            {
              v75 = v74;
            }

            else
            {
              v75 = v112;
            }

            v116[0] = *MEMORY[0x1E69918D0];
            v117[0] = [MEMORY[0x1E696AD98] numberWithInt:v70];
            v116[1] = *MEMORY[0x1E6991940];
            v117[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v75];
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];
            v76 = CMPhotoCompressionSessionAddThumbnail();
            dataCopy = v120;
            if (v76)
            {
              goto LABEL_110;
            }
          }

          else
          {
            dataCopy = v120;
          }

          dataCopy2 = data;
          teethSegmentationMatteCopy5 = teethSegmentationMatte;
          if (data && depthData != data)
          {
            if ([data depthDataType] != 1751411059)
            {
              dataCopy2 = [data depthDataByConvertingToDepthDataType:1751411059];
            }

            if ([dataCopy2 isDepthDataFiltered])
            {
              v79 = 0;
            }

            else
            {
              v79 = &unk_1F1CE9980;
            }

            copyAuxiliaryMetadata = [dataCopy2 copyAuxiliaryMetadata];
            _addAuxiliaryImage(dataCopy, 0, *MEMORY[0x1E696D260], 1, 0, copyAuxiliaryMetadata, v79, [dataCopy2 depthDataMap]);
            teethSegmentationMatteCopy5 = teethSegmentationMatte;
            if (copyAuxiliaryMetadata)
            {
              CFRelease(copyAuxiliaryMetadata);
            }
          }

          if (matte)
          {
            if (portraitEffectsMatte != matte)
            {
              copyAuxiliaryMetadata2 = [matte copyAuxiliaryMetadata];
              v82 = *MEMORY[0x1E696D288];
              mattingImage = [matte mattingImage];
              v84 = v82;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v84, 5, 0, copyAuxiliaryMetadata2, 0, mattingImage);
              if (copyAuxiliaryMetadata2)
              {
                CFRelease(copyAuxiliaryMetadata2);
              }
            }
          }

          if (segmentationMatteCopy)
          {
            if (v105 != segmentationMatteCopy)
            {
              copyAuxiliaryMetadata3 = [(AVSemanticSegmentationMatte *)segmentationMatteCopy copyAuxiliaryMetadata];
              v86 = *MEMORY[0x1E696D298];
              v87 = *MEMORY[0x1E69917E0];
              mattingImage2 = [(AVSemanticSegmentationMatte *)segmentationMatteCopy mattingImage];
              v89 = v86;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v89, 4, v87, copyAuxiliaryMetadata3, 0, mattingImage2);
              if (copyAuxiliaryMetadata3)
              {
                CFRelease(copyAuxiliaryMetadata3);
              }
            }
          }

          if (skinSegmentationMatte)
          {
            if (v106 != skinSegmentationMatte)
            {
              copyAuxiliaryMetadata4 = [skinSegmentationMatte copyAuxiliaryMetadata];
              v91 = *MEMORY[0x1E696D2A0];
              v92 = *MEMORY[0x1E69917E8];
              mattingImage3 = [skinSegmentationMatte mattingImage];
              v94 = v91;
              teethSegmentationMatteCopy5 = teethSegmentationMatte;
              _addAuxiliaryImage(dataCopy, 0, v94, 4, v92, copyAuxiliaryMetadata4, 0, mattingImage3);
              if (copyAuxiliaryMetadata4)
              {
                CFRelease(copyAuxiliaryMetadata4);
              }
            }
          }

          if (teethSegmentationMatteCopy5)
          {
            if (v107 != teethSegmentationMatteCopy5)
            {
              copyAuxiliaryMetadata5 = [(AVSemanticSegmentationMatte *)teethSegmentationMatteCopy5 copyAuxiliaryMetadata];
              _addAuxiliaryImage(dataCopy, 0, *MEMORY[0x1E696D2B0], 4, *MEMORY[0x1E69917F8], copyAuxiliaryMetadata5, 0, [(AVSemanticSegmentationMatte *)teethSegmentationMatteCopy5 mattingImage]);
              if (copyAuxiliaryMetadata5)
              {
                CFRelease(copyAuxiliaryMetadata5);
              }
            }
          }

          if (glassesSegmentationMatte)
          {
            if (v108 != glassesSegmentationMatte)
            {
              copyAuxiliaryMetadata6 = [glassesSegmentationMatte copyAuxiliaryMetadata];
              _addAuxiliaryImage(dataCopy, 0, *MEMORY[0x1E696D290], 4, *MEMORY[0x1E69917D8], copyAuxiliaryMetadata6, 0, [glassesSegmentationMatte mattingImage]);
              if (copyAuxiliaryMetadata6)
              {
                CFRelease(copyAuxiliaryMetadata6);
              }
            }
          }

          v119[0] = 0;
          if (CMPhotoCompressionSessionCloseContainerAndCopyBacking())
          {
LABEL_110:
            v66 = 0;
LABEL_111:
            v39 = 0;
            goto LABEL_112;
          }

          CMPhotoCompressionSessionInvalidate();
          v39 = v119[0];
          goto LABEL_182;
        }
      }

      v65 = v120;
      if (!v120)
      {
LABEL_109:
        dataCopy = 0;
        goto LABEL_110;
      }

LABEL_108:
      CFRelease(v65);
      goto LABEL_109;
    }

    goto LABEL_85;
  }

  metadata = metadataCopy;
  if (!_isProRAWPhoto)
  {
    if (_isSushiRAWPhoto)
    {
      if ((v109 & 1) == 0)
      {
        metadata = [(AVCapturePhoto *)self metadata];
      }

      if ((v101 & 1) == 0)
      {
        bufferCopy = [(AVCapturePhoto *)self _embeddedThumbnailSourcePixelBuffer];
        format = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v58 = objc_msgSend_objectForKeyedSubscript_(format);
      intValue4 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
      intValue5 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
      v61 = avcp_copyDNGFileDataRepresentationForSushiRawBuffer([(AVCapturePhoto *)self pixelBuffer], bufferCopy, metadata, 0, v58, intValue4 | (intValue5 << 32));
      v39 = v61;
    }

    else
    {
      if (!objc_msgSend_objectForKeyedSubscript_([(AVCapturePhotoSettings *)self->_internal->unresolvedSettings format]))
      {
        goto LABEL_109;
      }

      if ((v109 & 1) == 0)
      {
        metadata = [(AVCapturePhoto *)self metadata];
      }

      if ((v101 & 1) == 0)
      {
        format = [(AVCapturePhoto *)self embeddedThumbnailPhotoFormat];
      }

      v63 = objc_msgSend_objectForKeyedSubscript_(format);
      v64 = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
      v39 = avcp_copyTIFFFileDataRepresentationForImage(v64, metadata, v63);
      if (v64)
      {
        CFRelease(v64);
      }

      v61 = v39;
    }

    v62 = v61;
LABEL_96:
    dataCopy = 0;
LABEL_182:
    v66 = 0;
    goto LABEL_112;
  }

LABEL_85:
  intValue6 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
  intValue7 = [objc_msgSend_objectForKeyedSubscript_(format) intValue];
  v119[0] = 0;
  if (CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler())
  {
    goto LABEL_107;
  }

  if ((v34 & 1) == 0)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend_objectForKeyedSubscript_(_defaultRawCompressionSettings), "intValue")), *MEMORY[0x1E6991A30]}];
    [objc_msgSend_objectForKeyedSubscript_(_defaultRawCompressionSettings) doubleValue];
    v55 = v54;
    v56 = *MEMORY[0x1E6991A40];
    if (v54 == 1.0)
    {
      v57 = &unk_1F1CE9998;
    }

    else
    {
      [dictionary setObject:&unk_1F1CE99B0 forKeyedSubscript:v56];
      v57 = [MEMORY[0x1E696AD98] numberWithDouble:v55];
      v56 = *MEMORY[0x1E6991A50];
    }

    [dictionary setObject:v57 forKeyedSubscript:v56];
    if (CMPhotoDNGCompressorReplaceMainImageOptions())
    {
      goto LABEL_107;
    }
  }

  if (v109 && CMPhotoDNGCompressorReplaceMainImageProperties())
  {
    goto LABEL_107;
  }

  if (v101)
  {
    if (bufferCopy)
    {
      if (intValue6 <= intValue7)
      {
        v69 = intValue7;
      }

      else
      {
        v69 = intValue6;
      }

      v117[0] = *MEMORY[0x1E6991A60];
      v118[0] = [MEMORY[0x1E696AD98] numberWithInt:v69];
      [MEMORY[0x1E695DF20] dictionaryWithObjects:v118 forKeys:v117 count:1];
      if ([AVCapturePhotoOutput isAppleProRAWPixelFormat:CVPixelBufferGetPixelFormatType(bufferCopy)])
      {
        if (CMPhotoDNGCompressorSetPreviewImageFromRAW())
        {
          goto LABEL_107;
        }
      }

      else if (CMPhotoDNGCompressorSetPreviewImage())
      {
        goto LABEL_107;
      }

      goto LABEL_132;
    }

    if (CMPhotoDNGCompressorSetCompressedPreviewImage())
    {
LABEL_107:
      v65 = v119[0];
      if (!v119[0])
      {
        goto LABEL_109;
      }

      goto LABEL_108;
    }
  }

LABEL_132:
  v66 = v119[0];
  v119[0] = 0;
  if (CMPhotoDNGCompressorFinalizeAndCreateData())
  {
    dataCopy = 0;
    goto LABEL_111;
  }

  v39 = v119[0];
  dataCopy = 0;
LABEL_112:
  v67 = v115;
  if (v115)
  {
LABEL_113:
    *reason = v67;
  }

LABEL_114:
  if (dataCopy)
  {
    CFRelease(dataCopy);
  }

  if (v66)
  {
    CFRelease(v66);
  }

  return v39;
}

void *__384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, *MEMORY[0x1E6991828]);
  if ([v3 count] >= 2)
  {
    v4 = [v3 objectAtIndexedSubscript:1];
    if ([objc_msgSend_objectForKeyedSubscript_(v4) unsignedIntValue] != 1953325424)
    {
      v20 = 1326;
      goto LABEL_34;
    }

    if (*(a1 + 48) == 1)
    {
      [v4 setObject:&unk_1F1CE9968 forKeyedSubscript:*MEMORY[0x1E6991838]];
    }
  }

  if ([v3 count] > 2)
  {
    v20 = 1335;
LABEL_34:
    __384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke_cold_1(v20, &v31);
    return v31;
  }

  v5 = [v3 objectAtIndexedSubscript:0];
  if ((*(a1 + 49) & 1) == 0)
  {
    if ([*(a1 + 32) count])
    {
      v6 = objc_msgSend_objectForKeyedSubscript_(v5);
      v7 = [v6 count];
      if (v7 - 1 >= 0)
      {
        v8 = v7;
        do
        {
          if ([*(a1 + 32) containsObject:{objc_msgSend_objectForKeyedSubscript_(objc_msgSend(v6, "objectAtIndexedSubscript:", --v8))}])
          {
            [v6 removeObjectAtIndex:v8];
          }
        }

        while (v8 > 0);
      }
    }
  }

  if (*(a1 + 48) != 1 || *(a1 + 50) != 1)
  {
    return 0;
  }

  v9 = *MEMORY[0x1E6991838];
  [v5 setObject:*(a1 + 40) forKeyedSubscript:*MEMORY[0x1E6991838]];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = objc_msgSend_objectForKeyedSubscript_([v3 objectAtIndexedSubscript:0]);
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v27 + 1) + 8 * i) setObject:*(a1 + 40) forKeyedSubscript:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v26 count:16];
    }

    while (v12);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = objc_msgSend_objectForKeyedSubscript_([v3 objectAtIndexedSubscript:0]);
  result = [v15 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (result)
  {
    v17 = result;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v22 + 1) + 8 * v19) setObject:*(a1 + 40) forKeyedSubscript:v9];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      result = [v15 countByEnumeratingWithState:&v22 objects:v21 count:16];
      v17 = result;
    }

    while (result);
  }

  return result;
}

- (CGImageRef)CGImageRepresentation
{
  if ([(AVCapturePhoto *)self _isSushiRAWPhoto])
  {
    return 0;
  }

  if ([(AVCapturePhoto *)self _isUncompressedYUVOrRGBPhoto])
  {
    ImageAtIndex = avcp_copyCGImageForUncompressedBuffer(self->_internal->photoPixelBuffer);
    if (!ImageAtIndex)
    {
      return ImageAtIndex;
    }

    goto LABEL_7;
  }

  if (![(AVCapturePhoto *)self _isCompressedPhoto])
  {
    return 0;
  }

  fileDataRepresentation = [(AVCapturePhoto *)self fileDataRepresentation];
  if (!fileDataRepresentation)
  {
    return 0;
  }

  v11 = fileDataRepresentation;
  v12 = OUTLINED_FUNCTION_2(MEMORY[0x1E695DF20], v4, v5, v6, v7, v8, v9, v10, *MEMORY[0x1E696E118], self->_internal->processedFileType);
  v13 = CGImageSourceCreateWithData(v11, v12);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  CFRelease(v14);
  if (ImageAtIndex)
  {
LABEL_7:
    CFAutorelease(ImageAtIndex);
  }

  return ImageAtIndex;
}

- (CGImageRef)previewCGImageRepresentation
{
  previewPixelBuffer = self->_internal->previewPixelBuffer;
  if (!previewPixelBuffer)
  {
    return 0;
  }

  v3 = avcp_copyCGImageForUncompressedBuffer(previewPixelBuffer);
  v4 = v3;
  if (v3)
  {
    CFAutorelease(v3);
  }

  return v4;
}

- (uint64_t)portraitEffectsMatte
{
  AuxiliaryImageOfType = avcp_copyFirstAuxiliaryImageOfType(*(*self + 32), 5, 0, a2, a3);
  result = *a2;
  if (!AuxiliaryImageOfType)
  {
    if (!(result | *a3))
    {
      return 1;
    }

    *(*self + 144) = [[AVPortraitEffectsMatte alloc] initWithPixelBuffer:*a2 auxiliaryMetadata:*a3];
    result = *a2;
  }

  if (result)
  {
    CFRelease(result);
    return 0;
  }

  return result;
}

uint64_t __384__AVCapturePhoto__fileDataRepresentationWithReplacementMetadata_replacementEmbeddedThumbnailPhotoFormat_replacementEmbeddedThumbnailPixelBuffer_replacementDepthData_replacementPortraitEffectsMatte_replacementHairSegmentationMatte_replacementSkinSegmentationMatte_replacementTeethSegmentationMatte_replacementGlassesSegmentationMatte_replacementRawCompressionSettings_exceptionReason___block_invoke_cold_1(uint64_t a1, _DWORD *a2)
{
  fig_log_get_emitter();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  *a2 = result;
  return result;
}

@end