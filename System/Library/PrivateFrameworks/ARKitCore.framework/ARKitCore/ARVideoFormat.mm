@interface ARVideoFormat
+ (BOOL)isCaptureDeviceTypeAvailable:(id)available position:(int64_t)position;
+ (CGSize)hiResVideoDimensions;
+ (id)_querySupportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate;
+ (id)_supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type resolutions:(id)resolutions frameRatesByPowerUsage:(id)usage videoBinned:(BOOL)binned pixelFormat:(unsigned int)format needsHDRSupport:(BOOL)support;
+ (id)bestDepthFormatForDeviceFormat:(id)format;
+ (id)bestTimeOfFlightFormatForDevicePosition:(int64_t)position depthSensorNumberOfPointsMode:(int64_t)mode frameRates:(id)rates;
+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRate:(double)rate videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support needsMultiCamSupport:(BOOL)camSupport pixelFormat:(unsigned int)self0;
+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRates:(id)rates videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support pixelFormat:(unsigned int)format;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type frameRate:(double)rate;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned;
+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate;
+ (id)supportedVideoFormatsForHiResOrX420;
+ (id)supportedVideoFormatsForHiResOrX420ForDevicePosition:(int64_t)position deviceType:(id)type;
+ (id)supportedVideoFormatsForStillImageCapture;
+ (id)supportedVideoFormatsForStillImageCaptureForDevicePosition:(int64_t)position deviceType:(id)type;
+ (int64_t)photoQualityPrioritizationOverride;
- ($2825F4736939C4A6D3AD43837233062D)maxPhotoDimensions;
- (ARVideoFormat)initWithCaptureDevice:(id)device format:(id)format;
- (ARVideoFormat)initWithCoder:(id)coder;
- (ARVideoFormat)initWithImageResolution:(CGSize)resolution captureDevicePosition:(int64_t)position captureDeviceType:(id)type frameRatesByPowerUsage:(id)usage pixelFormat:(unsigned int)format;
- (ARVideoFormat)videoFormatWithDepthDataFormat:(id)format;
- (ARVideoFormat)videoFormatWithUnthrottledLowPowerUsageFramerate;
- (AVCapturePhotoSettings)defaultPhotoSettings;
- (BOOL)has4KVideoResolution;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRecommendedForHighResolutionFrameCapturing;
- (BOOL)isVideoHDRSupported;
- (BOOL)isX420PixelFormat;
- (CGSize)imageResolution;
- (NSInteger)framesPerSecond;
- (NSString)pixelFormat;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)defaultColorSpace;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARVideoFormat

- (ARVideoFormat)initWithCaptureDevice:(id)device format:(id)format
{
  deviceCopy = device;
  formatCopy = format;
  v15.receiver = self;
  v15.super_class = ARVideoFormat;
  v9 = [(ARVideoFormat *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_deviceFormat, format);
    frameRatesByPowerUsage = v10->_frameRatesByPowerUsage;
    v10->_frameRatesByPowerUsage = &unk_1F42590D0;

    v10->_captureDevicePosition = objc_msgSend_position(deviceCopy);
    deviceType = [deviceCopy deviceType];
    captureDeviceType = v10->_captureDeviceType;
    v10->_captureDeviceType = deviceType;
  }

  return v10;
}

- (ARVideoFormat)initWithImageResolution:(CGSize)resolution captureDevicePosition:(int64_t)position captureDeviceType:(id)type frameRatesByPowerUsage:(id)usage pixelFormat:(unsigned int)format
{
  height = resolution.height;
  width = resolution.width;
  typeCopy = type;
  usageCopy = usage;
  v19.receiver = self;
  v19.super_class = ARVideoFormat;
  v16 = [(ARVideoFormat *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_imageResolution.width = width;
    v16->_imageResolution.height = height;
    objc_storeStrong(&v16->_frameRatesByPowerUsage, usage);
    v17->_captureDevicePosition = position;
    objc_storeStrong(&v17->_captureDeviceType, type);
    v17->_pixelFormat = format;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong((v5 + 8), self->_device);
    objc_storeStrong((v6 + 16), self->_deviceFormat);
    objc_storeStrong((v6 + 72), self->_depthDataFormat);
    v7 = [(NSArray *)self->_frameRatesByPowerUsage copyWithZone:zone];
    v8 = *(v6 + 64);
    *(v6 + 64) = v7;

    *(v6 + 32) = self->_imageResolution;
    *(v6 + 48) = self->_captureDevicePosition;
    objc_storeStrong((v6 + 56), self->_captureDeviceType);
    *(v6 + 24) = self->_pixelFormat;
  }

  return v6;
}

- (ARVideoFormat)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ARVideoFormat;
  v5 = [(ARVideoFormat *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"frameRatesByPowerUsage"];
    frameRatesByPowerUsage = v5->_frameRatesByPowerUsage;
    v5->_frameRatesByPowerUsage = v6;

    [coderCopy decodeSizeForKey:@"imageResolution"];
    v5->_imageResolution.width = v8;
    v5->_imageResolution.height = v9;
    v5->_captureDevicePosition = [coderCopy decodeIntegerForKey:@"captureDevicePosition"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"captureDeviceType"];
    captureDeviceType = v5->_captureDeviceType;
    v5->_captureDeviceType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pixelFormat"];
    v5->_pixelFormat = [v12 unsignedIntValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  frameRatesByPowerUsage = self->_frameRatesByPowerUsage;
  coderCopy = coder;
  [coderCopy encodeObject:frameRatesByPowerUsage forKey:@"frameRatesByPowerUsage"];
  [(ARVideoFormat *)self imageResolution];
  [coderCopy encodeSize:@"imageResolution" forKey:?];
  [coderCopy encodeInteger:self->_captureDevicePosition forKey:@"captureDevicePosition"];
  [coderCopy encodeObject:self->_captureDeviceType forKey:@"captureDeviceType"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_pixelFormat];
  [coderCopy encodeObject:v6 forKey:@"pixelFormat"];
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AVCaptureDevice *)self->_device description];
  v5 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
  v6 = [v3 stringWithFormat:@"%@|%@|%li", v4, v5, -[ARVideoFormat framesPerSecond](self, "framesPerSecond")];

  v7 = [v6 hash];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_device == *(v5 + 1) && self->_deviceFormat == *(v5 + 2) && self->_depthDataFormat == *(v5 + 9) && [(NSArray *)self->_frameRatesByPowerUsage isEqualToArray:*(v5 + 8)])
    {
      [(ARVideoFormat *)self imageResolution];
      v8 = v7;
      v10 = v9;
      [v6 imageResolution];
      v12 = 0;
      if (v8 != v13 || v10 != v11)
      {
        goto LABEL_13;
      }

      captureDevicePosition = self->_captureDevicePosition;
      if (captureDevicePosition == [v6 captureDevicePosition])
      {
        captureDeviceType = self->_captureDeviceType;
        captureDeviceType = [v6 captureDeviceType];
        if ([(NSString *)captureDeviceType isEqual:captureDeviceType])
        {
          v12 = self->_pixelFormat == v6[6];
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_13;
      }
    }

    v12 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (NSInteger)framesPerSecond
{
  firstObject = [(NSArray *)self->_frameRatesByPowerUsage firstObject];
  integerValue = [firstObject integerValue];

  return integerValue;
}

- (id)description
{
  [(ARVideoFormat *)self imageResolution];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  pixelFormat = [(ARVideoFormat *)self pixelFormat];
  framesPerSecond = [(ARVideoFormat *)self framesPerSecond];
  captureDeviceType = [(ARVideoFormat *)self captureDeviceType];
  v13 = [v7 stringWithFormat:@"<%@: %p imageResolution=(%.0f, %.0f) pixelFormat=(%@) framesPerSecond=(%li) captureDeviceType=%@ captureDevicePosition=(%li)>", v9, self, v4, v6, pixelFormat, framesPerSecond, captureDeviceType, -[ARVideoFormat captureDevicePosition](self, "captureDevicePosition")];

  return v13;
}

- (CGSize)imageResolution
{
  deviceFormat = self->_deviceFormat;
  if (deviceFormat)
  {
    if (CMFormatDescriptionGetMediaSubType([(AVCaptureDeviceFormat *)deviceFormat formatDescription]) == 1785950320)
    {
      width = *MEMORY[0x1E695F060];
      height = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions([(AVCaptureDeviceFormat *)self->_deviceFormat formatDescription]);
      width = Dimensions.width;
      height = Dimensions.height;
    }
  }

  else
  {
    width = self->_imageResolution.width;
    height = self->_imageResolution.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isRecommendedForHighResolutionFrameCapturing
{
  captureDeviceType = [(ARVideoFormat *)self captureDeviceType];
  if ([captureDeviceType isEqualToString:*MEMORY[0x1E6986950]])
  {
    v4 = 0;
  }

  else
  {
    captureDeviceType2 = [(ARVideoFormat *)self captureDeviceType];
    if ([captureDeviceType2 isEqualToString:*MEMORY[0x1E6986908]])
    {
      v4 = 0;
    }

    else
    {
      captureDeviceType3 = [(ARVideoFormat *)self captureDeviceType];
      v7 = [captureDeviceType3 isEqualToString:*MEMORY[0x1E6986938]];

      v4 = v7 ^ 1;
    }
  }

  LOBYTE(captureDeviceType) = 0;
  if ([(ARVideoFormat *)self captureDevicePosition]== AVCaptureDevicePositionBack && (v4 & 1) == 0)
  {
    deviceFormat = [(ARVideoFormat *)self deviceFormat];
    LODWORD(captureDeviceType) = [deviceFormat isVideoBinned] ^ 1;
  }

  return captureDeviceType;
}

- (AVCapturePhotoSettings)defaultPhotoSettings
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6987100];
  v12 = *MEMORY[0x1E6966130];
  v13[0] = &unk_1F4258AB8;
  v4 = 1;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = [v3 photoSettingsWithFormat:v5];

  v9 = ARBackWidePhotoQualityPrioritizationOverride(v7, v8);
  if (v9)
  {
    v4 = ARBackWidePhotoQualityPrioritizationOverride(v9, v10);
  }

  [v6 setPhotoQualityPrioritization:v4];
  [v6 setMaxPhotoDimensions:{-[ARVideoFormat maxPhotoDimensions](self, "maxPhotoDimensions")}];

  return v6;
}

- ($2825F4736939C4A6D3AD43837233062D)maxPhotoDimensions
{
  v37 = *MEMORY[0x1E69E9840];
  supportedMaxPhotoDimensions = [(AVCaptureDeviceFormat *)self->_deviceFormat supportedMaxPhotoDimensions];
  v4 = [supportedMaxPhotoDimensions count];

  if (!v4)
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      [ARVideoFormat maxPhotoDimensions];
    }

    v6 = ARShouldUseLogTypeError_internalOSVersion_36;
    v7 = _ARLogSensor_10(v5);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
        *buf = 138543874;
        v32 = v10;
        v33 = 2048;
        selfCopy2 = self;
        v35 = 2112;
        v36 = v11;
        v12 = "%{public}@ <%p>: Returning {0, 0} for maxPhotoDimensions because the supportedMaxPhotoDimensions array is empty for video format: %@";
        v13 = v8;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v10 = NSStringFromClass(v15);
      v11 = [(AVCaptureDeviceFormat *)self->_deviceFormat description];
      *buf = 138543874;
      v32 = v10;
      v33 = 2048;
      selfCopy2 = self;
      v35 = 2112;
      v36 = v11;
      v12 = "Error: %{public}@ <%p>: Returning {0, 0} for maxPhotoDimensions because the supportedMaxPhotoDimensions array is empty for video format: %@";
      v13 = v8;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_9;
    }
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  supportedMaxPhotoDimensions2 = [(AVCaptureDeviceFormat *)self->_deviceFormat supportedMaxPhotoDimensions];
  v17 = [supportedMaxPhotoDimensions2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    LODWORD(v18) = 0;
    LODWORD(v19) = 0;
    v20 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(supportedMaxPhotoDimensions2);
        }

        cMVideoDimensionsValue = [*(*(&v26 + 1) + 8 * i) CMVideoDimensionsValue];
        v24 = v19 < cMVideoDimensionsValue || v18 < SHIDWORD(cMVideoDimensionsValue);
        if (v24)
        {
          v18 = HIDWORD(cMVideoDimensionsValue);
        }

        else
        {
          v18 = v18;
        }

        if (v24)
        {
          v19 = cMVideoDimensionsValue;
        }

        else
        {
          v19 = v19;
        }
      }

      v17 = [supportedMaxPhotoDimensions2 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v17);
    v17 = v18 << 32;
  }

  else
  {
    v19 = 0;
  }

  return (v17 | v19);
}

+ (int64_t)photoQualityPrioritizationOverride
{
  if (photoQualityPrioritizationOverride_onceToken != -1)
  {
    +[ARVideoFormat photoQualityPrioritizationOverride];
  }

  return photoQualityPrioritizationOverride_override;
}

void __51__ARVideoFormat_photoQualityPrioritizationOverride__block_invoke()
{
  v0 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.photoQualityPrioritization"];
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v2 = [v0 integerValue];
    v1 = v3;
    if (v2 >= 1)
    {
      photoQualityPrioritizationOverride_override = v2;
    }
  }
}

- (int64_t)defaultColorSpace
{
  deviceFormat = [(ARVideoFormat *)self deviceFormat];
  supportedColorSpaces = [deviceFormat supportedColorSpaces];
  firstObject = [supportedColorSpaces firstObject];

  integerValue = [firstObject integerValue];
  return integerValue;
}

- (BOOL)isVideoHDRSupported
{
  deviceFormat = [(ARVideoFormat *)self deviceFormat];
  isVideoHDRSupported = [deviceFormat isVideoHDRSupported];

  return isVideoHDRSupported;
}

- (NSString)pixelFormat
{
  deviceFormat = self->_deviceFormat;
  if (deviceFormat)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType([(AVCaptureDeviceFormat *)deviceFormat formatDescription]);
  }

  else
  {
    MediaSubType = self->_pixelFormat;
  }

  v5 = AROSTypeToString(MediaSubType);

  return v5;
}

- (BOOL)isX420PixelFormat
{
  pixelFormat = [(ARVideoFormat *)self pixelFormat];
  v3 = AROSTypeToString(0x78343230u);
  v4 = [pixelFormat isEqualToString:v3];

  return v4;
}

- (BOOL)has4KVideoResolution
{
  [(ARVideoFormat *)self imageResolution];
  v3 = v2;
  v5 = v4;
  [objc_opt_class() hiResVideoDimensions];
  return v5 == v7 && v3 == v6;
}

- (ARVideoFormat)videoFormatWithUnthrottledLowPowerUsageFramerate
{
  v10[3] = *MEMORY[0x1E69E9840];
  v3 = [(ARVideoFormat *)self copy];
  v4 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:0];
  v5 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:0, v4];
  v10[1] = v5;
  v6 = [(NSArray *)self->_frameRatesByPowerUsage objectAtIndexedSubscript:2];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:3];
  v8 = v3[8];
  v3[8] = v7;

  return v3;
}

- (ARVideoFormat)videoFormatWithDepthDataFormat:(id)format
{
  formatCopy = format;
  v5 = [(ARVideoFormat *)self copy];
  v6 = v5[9];
  v5[9] = formatCopy;

  return v5;
}

+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRate:(double)rate videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support needsMultiCamSupport:(BOOL)camSupport pixelFormat:(unsigned int)self0
{
  camSupportCopy = camSupport;
  binnedCopy = binned;
  supportCopy = support;
  v97[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v15 = MEMORY[0x1E69870A8];
  v74 = typeCopy;
  v97[0] = typeCopy;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:1];
  v17 = [v15 discoverySessionWithDeviceTypes:v16 mediaType:*MEMORY[0x1E6987608] position:position];

  devices = [v17 devices];
  v19 = [devices count];
  if (!v19)
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v22 = ARShouldUseLogTypeError_internalOSVersion_36;
    v23 = _ARLogGeneral_28(v19);
    v24 = v23;
    if (v22 == 1)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromAVCaptureDevicePosition(position);
        *buf = 138544130;
        v90 = v26;
        v91 = 2048;
        selfCopy2 = self;
        v93 = 2114;
        v94 = v74;
        v95 = 2114;
        v96 = v27;
        v28 = "%{public}@ <%p>: No image capture device found in bestVideoFormatForDevicePosition. (%{public}@ / %{public}@)";
        v29 = v24;
        v30 = OS_LOG_TYPE_ERROR;
LABEL_53:
        _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v62 = objc_opt_class();
      v26 = NSStringFromClass(v62);
      v27 = NSStringFromAVCaptureDevicePosition(position);
      *buf = 138544130;
      v90 = v26;
      v91 = 2048;
      selfCopy2 = self;
      v93 = 2114;
      v94 = v74;
      v95 = 2114;
      v96 = v27;
      v28 = "Error: %{public}@ <%p>: No image capture device found in bestVideoFormatForDevicePosition. (%{public}@ / %{public}@)";
      v29 = v24;
      v30 = OS_LOG_TYPE_INFO;
      goto LABEL_53;
    }

    v57 = 0;
    goto LABEL_57;
  }

  if (camSupportCopy)
  {
    v20 = ARDeviceSupportsMulticamMode();
    if (v20 && (v20 = ARUserDefaultsMulticamModeEnabled(v20, v21), (v20 & 1) != 0))
    {
      v70 = 1;
    }

    else
    {
      v70 = ARDeviceSupportsJasper(v20, v21);
    }
  }

  else
  {
    v70 = 0;
  }

  v64 = devices;
  v65 = v17;
  [devices firstObject];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v66 = v85 = 0u;
  formats = [v66 formats];
  v75 = [formats countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (!v75)
  {
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v57 = 0;
LABEL_50:

    goto LABEL_56;
  }

  obj = formats;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v69 = *v83;
  v68 = *MEMORY[0x1E6986940];
  do
  {
    for (i = 0; i != v75; ++i)
    {
      if (*v83 != v69)
      {
        objc_enumerationMutation(obj);
      }

      v36 = *(*(&v82 + 1) + 8 * i);
      Dimensions = CMVideoFormatDescriptionGetDimensions([v36 formatDescription]);
      if (supportCopy)
      {
        isVideoHDRSupported = [v36 isVideoHDRSupported];
      }

      else
      {
        isVideoHDRSupported = 1;
      }

      v39 = CMFormatDescriptionGetMediaSubType([v36 formatDescription]) == format;
      v40 = v39 & ~([v36 isVideoBinned] ^ binnedCopy);
      if (Dimensions != resolution)
      {
        v40 = 0;
      }

      v41 = v40 & isVideoHDRSupported;
      if (v70)
      {
        v41 &= [v36 isMultiCamSupported];
      }

      if (v41)
      {
        v42 = v68 == v74;
      }

      else
      {
        v42 = 0;
      }

      if (v42)
      {
        v43 = [ARVideoFormat bestDepthFormatForDeviceFormat:v36];

        v33 = v43;
        if (!v43)
        {
          continue;
        }
      }

      else if (!v41)
      {
        continue;
      }

      v76 = i;
      v77 = v33;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      videoSupportedFrameRateRanges = [v36 videoSupportedFrameRateRanges];
      v45 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v78 objects:v87 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v79;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v79 != v47)
            {
              objc_enumerationMutation(videoSupportedFrameRateRanges);
            }

            v49 = *(*(&v78 + 1) + 8 * j);
            [v49 maxFrameRate];
            if (v50 >= rate)
            {
              [v49 maxFrameRate];
              if (v51 <= 120.0)
              {
                if (!v32 || ([v49 maxFrameRate], v53 = v52, objc_msgSend(v32, "maxFrameRate"), v53 <= v54))
                {
                  v55 = v36;

                  v56 = v49;
                  v32 = v56;
                  v34 = v55;
                }
              }
            }
          }

          v46 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v78 objects:v87 count:16];
        }

        while (v46);
      }

      i = v76;
      v33 = v77;
    }

    v75 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  }

  while (v75);

  if (v34)
  {
    v57 = [[ARVideoFormat alloc] initWithCaptureDevice:v66 format:v34];
    objc_storeStrong(&v57->_depthDataFormat, v33);
    formats = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v86[0] = formats;
    v58 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v86[1] = v58;
    v59 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
    v86[2] = v59;
    v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
    frameRatesByPowerUsage = v57->_frameRatesByPowerUsage;
    v57->_frameRatesByPowerUsage = v60;

    goto LABEL_50;
  }

  v57 = 0;
LABEL_56:

  devices = v64;
  v17 = v65;
  v24 = v66;
LABEL_57:

  return v57;
}

+ (id)bestVideoFormatForDevicePosition:(int64_t)position deviceType:(id)type resolution:(id)resolution frameRates:(id)rates videoBinned:(BOOL)binned needsHDRSupport:(BOOL)support pixelFormat:(unsigned int)format
{
  supportCopy = support;
  binnedCopy = binned;
  ratesCopy = rates;
  typeCopy = type;
  firstObject = [ratesCopy firstObject];
  [firstObject doubleValue];
  LODWORD(v21) = format;
  v19 = [self bestVideoFormatForDevicePosition:position deviceType:typeCopy resolution:resolution frameRate:binnedCopy videoBinned:supportCopy needsHDRSupport:1 needsMultiCamSupport:v21 pixelFormat:?];

  if (v19)
  {
    objc_storeStrong(v19 + 8, rates);
  }

  return v19;
}

+ (id)bestTimeOfFlightFormatForDevicePosition:(int64_t)position depthSensorNumberOfPointsMode:(int64_t)mode frameRates:(id)rates
{
  v111 = *MEMORY[0x1E69E9840];
  ratesCopy = rates;
  v8 = *MEMORY[0x1E6986930];
  v9 = v8;
  selfCopy = self;
  if (ratesCopy)
  {
    v10 = _ARLogSensor_10(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [(NSArray *)ratesCopy objectAtIndexedSubscript:0];
      [v13 doubleValue];
      v15 = v14;
      v16 = [(NSArray *)ratesCopy objectAtIndexedSubscript:1];
      [v16 doubleValue];
      v18 = v17;
      v19 = [(NSArray *)ratesCopy objectAtIndexedSubscript:2];
      [v19 doubleValue];
      *buf = 138544386;
      v102 = v12;
      v103 = 2048;
      selfCopy2 = self;
      v105 = 2048;
      positionCopy2 = v15;
      v107 = 2048;
      v108 = v18;
      v109 = 2048;
      v110 = v20;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat jasper frame rates set to %f, %f, %f", buf, 0x34u);
    }
  }

  else
  {
    ratesCopy = &unk_1F4259118;
  }

  v21 = MEMORY[0x1E69870A8];
  v100 = v9;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
  v23 = [v21 discoverySessionWithDeviceTypes:v22 mediaType:*MEMORY[0x1E6986FA8] position:position];

  devices = [v23 devices];
  v25 = [devices count];
  if (!v25)
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v66 = ARShouldUseLogTypeError_internalOSVersion_36;
    v67 = _ARLogGeneral_28(v25);
    v68 = v67;
    if (v66 == 1)
    {
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        *buf = 138543874;
        v102 = v70;
        v103 = 2048;
        selfCopy2 = selfCopy;
        v105 = 2048;
        positionCopy2 = position;
        v71 = "%{public}@ <%p>: No point cloud capture device found. (%ld)";
        v72 = v68;
        v73 = OS_LOG_TYPE_ERROR;
LABEL_48:
        _os_log_impl(&dword_1C241C000, v72, v73, v71, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      v74 = objc_opt_class();
      v70 = NSStringFromClass(v74);
      *buf = 138543874;
      v102 = v70;
      v103 = 2048;
      selfCopy2 = selfCopy;
      v105 = 2048;
      positionCopy2 = position;
      v71 = "Error: %{public}@ <%p>: No point cloud capture device found. (%ld)";
      v72 = v68;
      v73 = OS_LOG_TYPE_INFO;
      goto LABEL_48;
    }

    v65 = 0;
    goto LABEL_52;
  }

  v80 = devices;
  [devices firstObject];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v81 = v96 = 0u;
  frameRatesByPowerUsage = [v81 formats];
  v27 = [frameRatesByPowerUsage countByEnumeratingWithState:&v93 objects:v99 count:16];
  if (v27)
  {
    v28 = v27;
    v76 = v23;
    v77 = ratesCopy;
    v78 = v9;
    v88 = 0;
    v29 = 0;
    v30 = *v94;
    v31 = -1;
    v82 = *v94;
    v83 = frameRatesByPowerUsage;
    do
    {
      v32 = 0;
      v85 = v28;
      do
      {
        if (*v94 != v30)
        {
          objc_enumerationMutation(frameRatesByPowerUsage);
        }

        v33 = *(*(&v93 + 1) + 8 * v32);
        if (CMFormatDescriptionGetMediaSubType([v33 formatDescription]) == 1785950320)
        {
          v86 = v32;
          [v33 formatDescription];
          NumberOfPoints = CMPointCloudFormatDescriptionGetNumberOfPoints();
          v35 = NumberOfPoints;
          if (v31 == -1)
          {
            v31 = NumberOfPoints;
          }

          v89 = 0u;
          v90 = 0u;
          if (mode == 1)
          {
            v36 = NumberOfPoints > v31;
          }

          else
          {
            v36 = NumberOfPoints < v31;
          }

          v91 = 0uLL;
          v92 = 0uLL;
          obj = [v33 videoSupportedFrameRateRanges];
          v37 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v90;
            do
            {
              for (i = 0; i != v38; ++i)
              {
                if (*v90 != v39)
                {
                  objc_enumerationMutation(obj);
                }

                v41 = *(*(&v89 + 1) + 8 * i);
                if (v29 == 0 || v36)
                {
LABEL_24:
                  v42 = v33;

                  v43 = v41;
                  v31 = v35;
                  v88 = v43;
                  v29 = v42;
                  continue;
                }

                if (v35 == v31)
                {
                  [*(*(&v89 + 1) + 8 * i) maxFrameRate];
                  v45 = v44;
                  [v88 maxFrameRate];
                  if (v45 > v46)
                  {
                    goto LABEL_24;
                  }

                  v31 = v35;
                }
              }

              v38 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
            }

            while (v38);
          }

          v30 = v82;
          frameRatesByPowerUsage = v83;
          v28 = v85;
          v32 = v86;
        }

        ++v32;
      }

      while (v32 != v28);
      v28 = [frameRatesByPowerUsage countByEnumeratingWithState:&v93 objects:v99 count:16];
    }

    while (v28);

    if (!v29)
    {
      v65 = 0;
      ratesCopy = v77;
      v9 = v78;
      v23 = v76;
      goto LABEL_51;
    }

    [v88 maxFrameRate];
    v48 = v47;
    v49 = v77;
    v50 = [(NSArray *)v77 objectAtIndexedSubscript:0];
    [v50 doubleValue];
    v52 = v51;

    v9 = v78;
    v23 = v76;
    if (v48 < v52)
    {
      v53 = MEMORY[0x1E696AD98];
      [v88 maxFrameRate];
      v54 = [v53 numberWithDouble:?];
      v55 = _ARLogSensor_10(v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = [(NSArray *)v77 objectAtIndexedSubscript:0];
        [v58 doubleValue];
        v60 = v59;
        [v54 doubleValue];
        *buf = 138544130;
        v102 = v57;
        v103 = 2048;
        selfCopy2 = selfCopy;
        v105 = 2048;
        positionCopy2 = v60;
        v107 = 2048;
        v108 = v61;
        _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Requested time of flight framerate: %f. Returning best available framerate: %f.", buf, 0x2Au);
      }

      v97[0] = v54;
      v62 = [(NSArray *)v77 objectAtIndexedSubscript:1];
      v97[1] = v62;
      v63 = [(NSArray *)v77 objectAtIndexedSubscript:2];
      v97[2] = v63;
      v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:3];

      v49 = v64;
    }

    v65 = [[ARVideoFormat alloc] initWithCaptureDevice:v81 format:v29];
    ratesCopy = v49;
    frameRatesByPowerUsage = v65->_frameRatesByPowerUsage;
    v65->_frameRatesByPowerUsage = ratesCopy;
  }

  else
  {
    v29 = 0;
    v88 = 0;
    v65 = 0;
  }

LABEL_51:
  devices = v80;
  v68 = v81;
LABEL_52:

  return v65;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy frameRate:0.0];

  return v6;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned
{
  binnedCopy = binned;
  typeCopy = type;
  v8 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:binnedCopy frameRate:0.0];

  return v8;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type frameRate:(double)rate
{
  typeCopy = type;
  v8 = typeCopy;
  if (position == 2)
  {
    v9 = &ARFrontFacingImageSensorVideoBinnedUserDefaultsKey;
  }

  else
  {
    if (position != 1)
    {
      goto LABEL_10;
    }

    if (*MEMORY[0x1E6986950] == typeCopy)
    {
      v9 = &ARBackFacingWideImageSensorVideoBinnedUserDefaultsKey;
    }

    else
    {
      if (*MEMORY[0x1E6986948] != typeCopy)
      {
        goto LABEL_10;
      }

      v9 = &ARBackFacingUltraWideImageSensorVideoBinnedUserDefaultsKey;
    }
  }

  v10 = [ARKitUserDefaults objectForKey:*v9];
  if (v10)
  {
    v11 = v10;
    bOOLValue = [v10 BOOLValue];

    goto LABEL_11;
  }

LABEL_10:
  bOOLValue = 1;
LABEL_11:
  v13 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:v8 videoBinned:bOOLValue frameRate:rate];

  return v13;
}

+ (id)supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate
{
  binnedCopy = binned;
  typeCopy = type;
  if (supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__onceToken != -1)
  {
    +[ARVideoFormat supportedVideoFormatsForDevicePosition:deviceType:videoBinned:frameRate:];
  }

  dispatch_semaphore_wait(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (!supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats;
    supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats = dictionary;
  }

  v12 = @"non-binned";
  if (binnedCopy)
  {
    v12 = @"binned";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@:%li:%f", typeCopy, v12, position, *&rate];
  v14 = [supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats objectForKey:v13];
  if (v14)
  {
    dispatch_semaphore_signal(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore);
    v15 = v14;
  }

  else
  {
    v15 = [objc_opt_class() _querySupportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:binnedCopy frameRate:rate];
    if ([v15 count])
    {
      [supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__cachedSupportedVideoFormats setObject:v15 forKey:v13];
    }

    dispatch_semaphore_signal(supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore);
  }

  return v15;
}

void __89__ARVideoFormat_supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate___block_invoke()
{
  v0 = dispatch_semaphore_create(1);
  v1 = supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore;
  supportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate__semaphore = v0;
}

+ (id)_querySupportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type videoBinned:(BOOL)binned frameRate:(double)rate
{
  binnedCopy = binned;
  v205[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E69870A8];
  v205[0] = typeCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:1];
  v12 = [v10 discoverySessionWithDeviceTypes:v11 mediaType:*MEMORY[0x1E6987608] position:position];

  v146 = v12;
  devices = [v12 devices];
  v14 = [devices count];
  positionCopy = position;
  v145 = devices;
  if (!v14)
  {
    if (ARShouldUseLogTypeError_onceToken_36 != -1)
    {
      +[ARVideoFormat bestVideoFormatForDevicePosition:deviceType:resolution:frameRate:videoBinned:needsHDRSupport:needsMultiCamSupport:pixelFormat:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_36;
    v20 = _ARLogGeneral_28(v14);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138544130;
        v196 = v23;
        v197 = 2048;
        selfCopy7 = self;
        v199 = 2114;
        *v200 = typeCopy;
        *&v200[8] = 2048;
        positionCopy3 = position;
        v24 = "%{public}@ <%p>: No image capture device found in supportedVideoFormatsForDevicePosition. (%{public}@ / %ld)";
        v25 = v21;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v25, v26, v24, buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v23 = NSStringFromClass(v30);
      *buf = 138544130;
      v196 = v23;
      v197 = 2048;
      selfCopy7 = self;
      v199 = 2114;
      *v200 = typeCopy;
      *&v200[8] = 2048;
      positionCopy3 = position;
      v24 = "Error: %{public}@ <%p>: No image capture device found in supportedVideoFormatsForDevicePosition. (%{public}@ / %ld)";
      v25 = v21;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v31 = v9;
    goto LABEL_193;
  }

  firstObject = [devices firstObject];
  v165 = firstObject;
  v189 = 0;
  v16 = MEMORY[0x1E6986948];
  if (position == 1)
  {
    if (*MEMORY[0x1E6986950] == typeCopy)
    {
      v17 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.wide.resolution" resultingDimensions:&v189];
      v18 = &ARBackFacingWideImageSensorFrameRateUserDefaultsKey;
LABEL_21:
      firstObject = [ARKitUserDefaults numberForKey:*v18];
      v152 = 0;
      if (!v17)
      {
        goto LABEL_22;
      }

LABEL_32:
      v50 = firstObject;
      v51 = _ARLogSensor_10(firstObject);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138544130;
        v196 = v53;
        v197 = 2048;
        selfCopy7 = self;
        v199 = 1024;
        *v200 = v189;
        *&v200[4] = 1024;
        *&v200[6] = HIDWORD(v189);
        _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution set to %i, %i by user defaults", buf, 0x22u);
      }

      firstObject = v50;
      if (v50)
      {
        goto LABEL_23;
      }

      goto LABEL_35;
    }

    if (*MEMORY[0x1E6986948] == typeCopy)
    {
      v17 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.ultrawide.resolution" resultingDimensions:&v189];
      v18 = &ARBackFacingUltraWideImageSensorFrameRateUserDefaultsKey;
      goto LABEL_21;
    }

LABEL_15:
    v152 = 0;
    goto LABEL_35;
  }

  if (position != 2)
  {
    goto LABEL_15;
  }

  v27 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.front.resolution" resultingDimensions:&v189];
  v28 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.front.frameRate"];
  v29 = ARFaceTrackingDevice(v28);

  if (v29 != typeCopy)
  {
    v152 = 0;
    firstObject = v28;
    if (!v27)
    {
      goto LABEL_22;
    }

    goto LABEL_32;
  }

  v38 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateNormal"];
  v39 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateLow"];
  v40 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.face.frameRateLowest"];
  v41 = v40;
  v152 = 0;
  if (v38 && v39 && v40)
  {
    v204[0] = v38;
    v204[1] = v39;
    v204[2] = v40;
    v152 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:3];
    v42 = _ARLogSensor_10(v152);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      NSStringFromClass(v43);
      v44 = v154 = v9;
      [v38 doubleValue];
      v46 = v45;
      [v39 doubleValue];
      v48 = v47;
      [v41 doubleValue];
      *buf = 138544386;
      v196 = v44;
      v197 = 2048;
      selfCopy7 = self;
      v199 = 2048;
      *v200 = v46;
      *&v200[8] = 2048;
      positionCopy3 = v48;
      v202 = 2048;
      v203 = v49;
      _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat face tracking frame rates set to %f, %f, %f by user defaults", buf, 0x34u);

      v9 = v154;
    }
  }

  firstObject = v28;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (firstObject)
  {
LABEL_23:
    v142 = firstObject;
    doubleValue = [firstObject doubleValue];
    rateCopy = v33;
    v35 = _ARLogSensor_10(doubleValue);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138543874;
      v196 = v37;
      v197 = 2048;
      selfCopy7 = self;
      v199 = 2048;
      *v200 = rateCopy;
      _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by user defaults", buf, 0x20u);
    }

    goto LABEL_39;
  }

LABEL_35:
  if (rate <= 0.0)
  {
    v142 = 0;
    rateCopy = 0.0;
    goto LABEL_41;
  }

  v35 = _ARLogSensor_10(firstObject);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v54 = objc_opt_class();
    v55 = NSStringFromClass(v54);
    *buf = 138543874;
    v196 = v55;
    v197 = 2048;
    selfCopy7 = self;
    v199 = 2048;
    *v200 = rate;
    _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by SPI", buf, 0x20u);
  }

  v142 = 0;
  rateCopy = rate;
LABEL_39:

LABEL_41:
  v56 = [MEMORY[0x1E695DFA8] set];
  v58 = v56;
  if (positionCopy == 1)
  {
    v56 = ARDeviceIsiPad(v56, v57);
    v59 = v56;
  }

  else
  {
    v59 = 0;
  }

  v60 = ARDeviceString(v56);
  v143 = v60;
  v62 = positionCopy;
  if (positionCopy == 2)
  {
    v63 = ARFaceTrackingDevice(v60);
    if (v63 == typeCopy)
    {
      v64 = [v143 hasPrefix:@"D22"] ^ 1;
    }

    else
    {
      v64 = 0;
    }

    v59 |= v64;

    v62 = 2;
  }

  v141 = *v16;
  if (v62 == 2 && *v16 == typeCopy)
  {
    v66 = 1;
  }

  else
  {
    v66 = v59;
  }

  v156 = v66;
  v67 = ARShouldSupport1440pAndAutofocus(v60, v61);
  v69 = v67;
  if (positionCopy == 1)
  {
    v70 = ARShouldSupport1440pAndAutofocus(v67, v68);
    v161 = v70 ^ 1;
    v72 = ARShouldSupport1440pAndAutofocus(v70, v71) ^ 1;
  }

  else
  {
    LOBYTE(v72) = 1;
    v161 = 1;
  }

  v160 = v72;
  v150 = objc_opt_new();
  if (rateCopy <= 0.0)
  {
    v74 = binnedCopy;
    if (v152)
    {
      firstObject2 = [v152 firstObject];
      [firstObject2 doubleValue];
      v73 = v76;

      v157 = 0;
      rateCopy = v73;
    }

    else
    {
      v157 = 1;
      v73 = 30.0;
    }
  }

  else
  {
    v157 = 0;
    v73 = rateCopy;
    v74 = binnedCopy;
  }

  v77 = ARDeviceSupportsMulticamMode();
  if (v77 && (v77 = ARUserDefaultsMulticamModeEnabled(v77, v78), (v77 & 1) != 0))
  {
    v169 = 1;
  }

  else
  {
    v169 = ARDeviceSupportsJasper(v77, v78);
  }

  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v148 = [&unk_1F4259130 countByEnumeratingWithState:&v185 objects:v194 count:16];
  if (!v148)
  {
    goto LABEL_185;
  }

  v153 = 0;
  v159 = v69 ^ 1;
  v147 = *v186;
  v168 = *MEMORY[0x1E6986940];
  v166 = v58;
  v155 = v9;
  v162 = typeCopy;
  do
  {
    v79 = 0;
    do
    {
      if (*v186 != v147)
      {
        v80 = v79;
        objc_enumerationMutation(&unk_1F4259130);
        v79 = v80;
      }

      v149 = v79;
      v171 = *(*(&v185 + 1) + 8 * v79);
      v181 = 0u;
      v182 = 0u;
      v183 = 0u;
      v184 = 0u;
      obj = [v165 formats];
      v172 = [obj countByEnumeratingWithState:&v181 objects:v193 count:16];
      if (v172)
      {
        v170 = *v182;
        do
        {
          v81 = 0;
          do
          {
            if (*v182 != v170)
            {
              objc_enumerationMutation(obj);
            }

            v82 = *(*(&v181 + 1) + 8 * v81);
            MediaSubType = CMFormatDescriptionGetMediaSubType([v82 formatDescription]);
            unsignedIntegerValue = [v171 unsignedIntegerValue];
            Dimensions = CMVideoFormatDescriptionGetDimensions([v82 formatDescription]);
            v86 = Dimensions;
            v87 = HIDWORD(Dimensions);
            if (v189)
            {
              v89 = v189 == Dimensions && HIDWORD(v189) == HIDWORD(Dimensions);
            }

            else
            {
              v89 = Dimensions == 1280 && v87 == 720;
              if (((v89 | v159) & 1) == 0 && v156)
              {
                v89 = Dimensions == 1440 && v87 == 1080;
              }

              v93 = Dimensions == 1920 && v87 == 1080;
              if (((v89 | v161) & 1) == 0)
              {
                v89 = v93;
              }

              v95 = Dimensions == 1920 && v87 == 1440;
              if (((v89 | v160) & 1) == 0)
              {
                v89 = v95;
              }
            }

            v96 = unsignedIntegerValue == MediaSubType && v89;
            v97 = v96 & ([v82 isVideoBinned] ^ v74 ^ 1);
            if (v169)
            {
              v97 &= [v82 isMultiCamSupported];
            }

            if (v97)
            {
              v98 = v168 == typeCopy;
            }

            else
            {
              v98 = 0;
            }

            if (v98)
            {
              v99 = [ARVideoFormat bestDepthFormatForDeviceFormat:v82];
              if (!v99)
              {
                goto LABEL_166;
              }
            }

            else
            {
              if (!v97)
              {
                goto LABEL_166;
              }

              v99 = 0;
            }

            v179 = 0u;
            v180 = 0u;
            v177 = 0u;
            v178 = 0u;
            videoSupportedFrameRateRanges = [v82 videoSupportedFrameRateRanges];
            v101 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v177 objects:v192 count:16];
            if (v101)
            {
              v102 = v101;
              v103 = *v178;
              while (2)
              {
                for (i = 0; i != v102; ++i)
                {
                  if (*v178 != v103)
                  {
                    objc_enumerationMutation(videoSupportedFrameRateRanges);
                  }

                  v105 = *(*(&v177 + 1) + 8 * i);
                  [v105 maxFrameRate];
                  if (v106 >= v73)
                  {
                    if (rateCopy > 0.0 || ([v105 maxFrameRate], v107 <= 120.0))
                    {
                      v108 = [[ARVideoFormat alloc] initWithCaptureDevice:v165 format:v82];
                      objc_storeStrong(&v108->_depthDataFormat, v99);
                      if (rateCopy > 0.0)
                      {
                        if (v152)
                        {
                          v111 = v152;
                          frameRatesByPowerUsage = v108->_frameRatesByPowerUsage;
                          v108->_frameRatesByPowerUsage = v111;
                        }

                        else
                        {
                          frameRatesByPowerUsage = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v191[0] = frameRatesByPowerUsage;
                          v163 = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v191[1] = v163;
                          v112 = [MEMORY[0x1E696AD98] numberWithDouble:rateCopy];
                          v191[2] = v112;
                          v113 = [MEMORY[0x1E695DEC8] arrayWithObjects:v191 count:3];
                          v114 = v108->_frameRatesByPowerUsage;
                          v108->_frameRatesByPowerUsage = v113;
                        }
                      }

                      else
                      {
                        frameRatesByPowerUsage = v108->_frameRatesByPowerUsage;
                        if (v73 == 30.0)
                        {
                          v110 = &unk_1F4259148;
                        }

                        else if (positionCopy == 2)
                        {
                          v110 = &unk_1F4259160;
                        }

                        else
                        {
                          v110 = &unk_1F4259178;
                        }

                        v108->_frameRatesByPowerUsage = v110;
                      }

                      v164 = v86 * v87;
                      v115 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ARVideoFormat framesPerSecond](v108, "framesPerSecond") * v164}];
                      v58 = v166;
                      if (([v166 containsObject:v115] & 1) == 0)
                      {
                        [v155 addObject:v108];
                        [v166 addObject:v115];
                        if (v86 == 1920 && v87 == 1440)
                        {
                          v116 = v108;

                          v153 = v116;
                          v58 = v166;
                        }

                        else if (v86 == 1440 && v87 == 1080)
                        {
                          [v150 addObject:v108];
                        }
                      }

                      if (v157)
                      {
                        [v105 maxFrameRate];
                        if (v117 >= 60.0)
                        {
                          v118 = [[ARVideoFormat alloc] initWithCaptureDevice:v165 format:v82];
                          objc_storeStrong(&v118->_depthDataFormat, v99);
                          if (positionCopy == 2 && (ARFaceTrackingDevice(v119), v120 = objc_claimAutoreleasedReturnValue(), v120, v120 == v162))
                          {
                            v121 = &unk_1F4259190;
                          }

                          else
                          {
                            v121 = &unk_1F42591A8;
                          }

                          v122 = v118->_frameRatesByPowerUsage;
                          v118->_frameRatesByPowerUsage = v121;

                          v123 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ARVideoFormat framesPerSecond](v118, "framesPerSecond") * v164}];
                          v58 = v166;
                          if (([v166 containsObject:v123] & 1) == 0)
                          {
                            [v155 addObject:v118];
                            [v166 addObject:v123];
                            if (v86 == 1440 && v87 == 1080)
                            {
                              [v150 addObject:v118];
                            }
                          }
                        }
                      }

                      typeCopy = v162;
                      v74 = binnedCopy;
                      goto LABEL_165;
                    }
                  }
                }

                v102 = [videoSupportedFrameRateRanges countByEnumeratingWithState:&v177 objects:v192 count:16];
                if (v102)
                {
                  continue;
                }

                break;
              }

              typeCopy = v162;
              v74 = binnedCopy;
              v58 = v166;
            }

LABEL_165:

LABEL_166:
            ++v81;
          }

          while (v81 != v172);
          v124 = [obj countByEnumeratingWithState:&v181 objects:v193 count:16];
          v172 = v124;
        }

        while (v124);
      }

      v9 = v155;
      if ([v155 count])
      {
        goto LABEL_173;
      }

      v79 = v149 + 1;
    }

    while (v149 + 1 != v148);
    v148 = [&unk_1F4259130 countByEnumeratingWithState:&v185 objects:v194 count:16];
  }

  while (v148);
LABEL_173:
  if (!v153)
  {
LABEL_185:
    v153 = 0;
    goto LABEL_186;
  }

  if ([v150 count])
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v125 = v150;
    v126 = [v125 countByEnumeratingWithState:&v173 objects:v190 count:16];
    if (v126)
    {
      v127 = v126;
      v128 = *v174;
      do
      {
        for (j = 0; j != v127; ++j)
        {
          if (*v174 != v128)
          {
            objc_enumerationMutation(v125);
          }

          [v155 removeObject:*(*(&v173 + 1) + 8 * j)];
        }

        v127 = [v125 countByEnumeratingWithState:&v173 objects:v190 count:16];
      }

      while (v127);
    }

    v131 = _ARLogGeneral_28(v130);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_INFO))
    {
      v132 = objc_opt_class();
      v133 = NSStringFromClass(v132);
      *buf = 138543618;
      v196 = v133;
      v197 = 2048;
      selfCopy7 = self;
      _os_log_impl(&dword_1C241C000, v131, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing 1440x1080 video format, because 1920x1440 is supported", buf, 0x16u);
    }

    v58 = v166;
  }

LABEL_186:
  v134 = ARFaceTrackingDevice([v9 sortUsingComparator:&__block_literal_global_80_0]);
  v135 = v134;
  if (positionCopy == 2 && v134 == typeCopy && (v136 = [v165 isGeometricDistortionCorrectionSupported], v136))
  {
    v138 = ARLinkedOnOrAfterAzulE(v136, v137);

    if (v138)
    {
      v135 = [objc_opt_class() _querySupportedVideoFormatsForDevicePosition:2 deviceType:v141 videoBinned:v74 frameRate:rate];
      [v9 addObjectsFromArray:v135];
      goto LABEL_191;
    }
  }

  else
  {
LABEL_191:
  }

  v139 = v9;

LABEL_193:

  return v9;
}

uint64_t __95__ARVideoFormat__querySupportedVideoFormatsForDevicePosition_deviceType_videoBinned_frameRate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 imageResolution];
  v7 = v6;
  [v4 imageResolution];
  v9 = v7 * v8;
  [v5 imageResolution];
  v11 = v10;
  [v5 imageResolution];
  if (v9 >= v11 * v12)
  {
    v14 = [v4 framesPerSecond];
    if (v14 < [v5 framesPerSecond])
    {
      v13 = 1;
    }

    else
    {
      v13 = -1;
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

+ (id)bestDepthFormatForDeviceFormat:(id)format
{
  v19 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  supportedDepthDataFormats = [formatCopy supportedDepthDataFormats];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [supportedDepthDataFormats countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(supportedDepthDataFormats);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (CMFormatDescriptionGetMediaSubType([v10 formatDescription]) == 1717855600)
        {
          width = CMVideoFormatDescriptionGetDimensions([v10 formatDescription]).width;
          if (!v7 || width > CMVideoFormatDescriptionGetDimensions([v7 formatDescription]).width)
          {
            v12 = v10;

            v7 = v12;
          }
        }
      }

      v6 = [supportedDepthDataFormats countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)supportedVideoFormatsForStillImageCapture
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6986950];

  return [v2 supportedVideoFormatsForStillImageCaptureForDevicePosition:1 deviceType:v3];
}

+ (id)supportedVideoFormatsForStillImageCaptureForDevicePosition:(int64_t)position deviceType:(id)type
{
  typeCopy = type;
  v6 = [objc_opt_class() supportedVideoFormatsForDevicePosition:position deviceType:typeCopy videoBinned:0];

  return v6;
}

+ (CGSize)hiResVideoDimensions
{
  v2 = 3840.0;
  v3 = 2160.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)supportedVideoFormatsForHiResOrX420
{
  v2 = objc_opt_class();
  v3 = *MEMORY[0x1E6986950];

  return [v2 supportedVideoFormatsForHiResOrX420ForDevicePosition:1 deviceType:v3];
}

+ (id)supportedVideoFormatsForHiResOrX420ForDevicePosition:(int64_t)position deviceType:(id)type
{
  v33[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = objc_opt_new();
  [objc_opt_class() hiResVideoDimensions];
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_class();
  v30[0] = v8;
  v30[1] = v10;
  v12 = [MEMORY[0x1E696B098] valueWithBytes:v30 objCType:"{CGSize=dd}"];
  v33[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  LOBYTE(v24) = 1;
  v14 = [v11 _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v13 frameRatesByPowerUsage:&unk_1F4259208 videoBinned:0 pixelFormat:875704422 needsHDRSupport:v24];
  [v6 addObjectsFromArray:v14];

  v15 = objc_opt_class();
  v29[0] = v8;
  v29[1] = v10;
  v16 = [MEMORY[0x1E696B098] valueWithBytes:v29 objCType:"{CGSize=dd}"];
  v32 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  LOBYTE(v25) = 0;
  v18 = [v15 _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v17 frameRatesByPowerUsage:&unk_1F4259208 videoBinned:0 pixelFormat:2016686640 needsHDRSupport:v25];
  [v6 addObjectsFromArray:v18];

  v28 = xmmword_1C25C9280;
  v19 = [MEMORY[0x1E696B098] valueWithBytes:&v28 objCType:"{CGSize=dd}"];
  v31[0] = v19;
  v27 = xmmword_1C25C84C0;
  v20 = [MEMORY[0x1E696B098] valueWithBytes:&v27 objCType:"{CGSize=dd}"];
  v31[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];

  LOBYTE(v26) = 0;
  v22 = [objc_opt_class() _supportedVideoFormatsForDevicePosition:position deviceType:typeCopy resolutions:v21 frameRatesByPowerUsage:&unk_1F4259250 videoBinned:0 pixelFormat:2016686640 needsHDRSupport:v26];

  [v6 addObjectsFromArray:v22];

  return v6;
}

+ (id)_supportedVideoFormatsForDevicePosition:(int64_t)position deviceType:(id)type resolutions:(id)resolutions frameRatesByPowerUsage:(id)usage videoBinned:(BOOL)binned pixelFormat:(unsigned int)format needsHDRSupport:(BOOL)support
{
  binnedCopy = binned;
  v71[3] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  resolutionsCopy = resolutions;
  usageCopy = usage;
  v52 = objc_opt_new();
  v13 = [MEMORY[0x1E695DFA8] setWithArray:usageCopy];
  v14 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.wide.frameRate"];
  v15 = v14;
  if (v14)
  {
    v71[0] = v14;
    v71[1] = v14;
    v71[2] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    [v13 addObject:v16];
  }

  v17 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:0 comparator:&__block_literal_global_119];
  v70 = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v49 = [v13 sortedArrayUsingDescriptors:v18];

  v19 = ARIsBravoCamera(typeCopy);
  v53 = v19;
  v21 = ARDeviceSupportsUltraWideCamera(v19, v20);
  if ((v21 || !((format == 2016686640) | v53 & 1)) && (format != 2016686640 || (ARDeviceIsiPad(v21, v22) & 1) == 0))
  {
    v44 = v13;
    v45 = usageCopy;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v46 = resolutionsCopy;
    obj = resolutionsCopy;
    v50 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (!v50)
    {
      goto LABEL_34;
    }

    v48 = *v65;
    while (1)
    {
      v23 = 0;
      do
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v23;
        v24 = *(*(&v64 + 1) + 8 * v23);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v25 = v49;
        v26 = [v25 countByEnumeratingWithState:&v60 objects:v68 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v61;
          do
          {
            v29 = 0;
            do
            {
              if (*v61 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v60 + 1) + 8 * v29);
              v58 = 0.0;
              v59 = 0.0;
              [v24 getValue:&v58 size:16];
              v31 = v58;
              v32 = v59;
              hiResVideoDimensions = [objc_opt_class() hiResVideoDimensions];
              if (v58 == v36 && v59 == v35)
              {
                v39 = ARDeviceSupportsJasper(hiResVideoDimensions, v34);
                if (v39)
                {
                  if (v53)
                  {
                    goto LABEL_24;
                  }
                }

                else if (v53 & 1 | ((ARDeviceSupportsUltraWideCamera(v39, v40) & 1) == 0))
                {
                  goto LABEL_24;
                }
              }

              LODWORD(v43) = format;
              v38 = [objc_opt_class() bestVideoFormatForDevicePosition:position deviceType:typeCopy resolution:v31 | (v32 << 32) frameRates:v30 videoBinned:binnedCopy needsHDRSupport:support pixelFormat:v43];
              if (v38)
              {
                [v52 addObject:v38];
              }

LABEL_24:
              ++v29;
            }

            while (v27 != v29);
            v41 = [v25 countByEnumeratingWithState:&v60 objects:v68 count:16];
            v27 = v41;
          }

          while (v41);
        }

        v23 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v50 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (!v50)
      {
LABEL_34:

        usageCopy = v45;
        resolutionsCopy = v46;
        v13 = v44;
        break;
      }
    }
  }

  return v52;
}

uint64_t __143__ARVideoFormat__supportedVideoFormatsForDevicePosition_deviceType_resolutions_frameRatesByPowerUsage_videoBinned_pixelFormat_needsHDRSupport___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 count] && objc_msgSend(v5, "count"))
  {
    v6 = [v4 firstObject];
    v7 = [v5 firstObject];
    v8 = [v6 compare:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isCaptureDeviceTypeAvailable:(id)available position:(int64_t)position
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69870A8];
  availableCopy = available;
  v6 = MEMORY[0x1E695DEC8];
  availableCopy2 = available;
  v8 = [v6 arrayWithObjects:&availableCopy count:1];
  v9 = [v5 discoverySessionWithDeviceTypes:v8 mediaType:*MEMORY[0x1E6987608] position:{position, availableCopy, v13}];

  devices = [v9 devices];
  LOBYTE(position) = [devices count] != 0;

  return position;
}

@end