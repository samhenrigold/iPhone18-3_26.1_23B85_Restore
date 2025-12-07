@interface CMContinuityCaptureConfiguration
+ (id)stringForManualFramingDeviceType:(int64_t)type;
- (CMContinuityCaptureConfiguration)init;
- (CMContinuityCaptureConfiguration)initWithCoder:(id)coder;
- (NSDictionary)centerStageRectOfInterest;
- (id)description;
- (int)maxPhotoQualityPrioritization;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCenterStageRectOfInterest:(id)interest;
@end

@implementation CMContinuityCaptureConfiguration

- (CMContinuityCaptureConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureConfiguration;
  result = [(CMContinuityCaptureConfiguration *)&v3 init];
  if (result)
  {
    result->_stateLock._os_unfair_lock_opaque = 0;
    result->_audioBlockSize = 0.01;
  }

  return result;
}

- (void)dealloc
{
  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    CFRelease(backgroundReplacementPixelBuffer);
    self->_backgroundReplacementPixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureConfiguration;
  [(CMContinuityCaptureConfiguration *)&v4 dealloc];
}

- (void)setCenterStageRectOfInterest:(id)interest
{
  interestCopy = interest;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [interestCopy copy];
  centerStageRectOfInterest = self->_centerStageRectOfInterest;
  self->_centerStageRectOfInterest = v5;

  v7 = *(MEMORY[0x277CBF3A0] + 16);
  rect.origin = *MEMORY[0x277CBF3A0];
  rect.size = v7;
  CGRectMakeWithDictionaryRepresentation(interestCopy, &rect);

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:*&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height];
  centerStageRectOfInterestStr = self->_centerStageRectOfInterestStr;
  self->_centerStageRectOfInterestStr = v8;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (NSDictionary)centerStageRectOfInterest
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSDictionary *)self->_centerStageRectOfInterest copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSString *)self->_centerStageRectOfInterestStr copy];
  os_unfair_lock_unlock(&self->_stateLock);
  v37 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entity = self->_entity;
  v36 = v5;
  suppressVideoEffects = self->_suppressVideoEffects;
  portraitEffectEnabled = self->_portraitEffectEnabled;
  centerStageEnabled = self->_centerStageEnabled;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"default";
  }

  v30 = v6;
  forcefulCenterStageEnablementType = self->_forcefulCenterStageEnablementType;
  faceDetectionEnabled = self->_faceDetectionEnabled;
  centerStageFramingMode = self->_centerStageFramingMode;
  humanBodyDetectionEnabled = self->_humanBodyDetectionEnabled;
  humanFullBodyDetectionEnabled = self->_humanFullBodyDetectionEnabled;
  asyncStillCaptureEnabled = self->_asyncStillCaptureEnabled;
  maxPhotoQualityPrioritization = [(CMContinuityCaptureConfiguration *)self maxPhotoQualityPrioritization];
  studioLightingEnabled = self->_studioLightingEnabled;
  backgroundReplacementEnabled = self->_backgroundReplacementEnabled;
  videoZoomFactor = self->_videoZoomFactor;
  format = self->_format;
  deskViewCameraMode = self->_deskViewCameraMode;
  generationID = self->_generationID;
  portraitEffectAperture = self->_portraitEffectAperture;
  studioLightingIntensity = self->_studioLightingIntensity;
  audioBlockSize = self->_audioBlockSize;
  panningAngleX = self->_panningAngleX;
  panningAngleY = self->_panningAngleY;
  maxFrameRate = self->_maxFrameRate;
  minFrameRate = self->_minFrameRate;
  audioDeviceMode = self->_audioDeviceMode;
  v20 = [CMContinuityCaptureConfiguration stringForManualFramingDeviceType:?];
  v21 = [v37 stringWithFormat:v36, entity, suppressVideoEffects, portraitEffectEnabled, centerStageEnabled, forcefulCenterStageEnablementType, v30, centerStageFramingMode, faceDetectionEnabled, humanBodyDetectionEnabled, humanFullBodyDetectionEnabled, asyncStillCaptureEnabled, maxPhotoQualityPrioritization, studioLightingEnabled, backgroundReplacementEnabled, maxFrameRate, minFrameRate, *&videoZoomFactor, format, deskViewCameraMode, audioDeviceMode, *&audioBlockSize, generationID, *&portraitEffectAperture, *&studioLightingIntensity, *&panningAngleX, *&panningAngleY, v20, self->_centerStageFieldOfViewRestrictedToWide, self];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeDouble:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeInt32:? forKey:?];
  [coderCopy encodeDouble:? forKey:?];
  [coderCopy encodeInt64:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
  [coderCopy encodeCVPixelBuffer:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeInteger:? forKey:?];
  [coderCopy encodeBool:? forKey:?];
}

- (int)maxPhotoQualityPrioritization
{
  v2 = [(NSDictionary *)self->_asyncStillCaptureConfigs objectForKeyedSubscript:?];
  intValue = [v2 intValue];

  return intValue;
}

+ (id)stringForManualFramingDeviceType:(int64_t)type
{
  v3 = @"Unknown Manual Framing device type";
  if (type == 2)
  {
    v3 = @"ultra wide";
  }

  if (type == 1)
  {
    return @"back wide";
  }

  else
  {
    return v3;
  }
}

- (CMContinuityCaptureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CMContinuityCaptureConfiguration;
  v5 = [(CMContinuityCaptureConfiguration *)&v24 init];
  if (v5)
  {
    v5->_entity = [coderCopy decodeInt64ForKey:?];
    v5->_suppressVideoEffects = [coderCopy decodeBoolForKey:?];
    v5->_portraitEffectEnabled = [coderCopy decodeBoolForKey:?];
    v5->_centerStageEnabled = [coderCopy decodeBoolForKey:?];
    objc_opt_class();
    objc_opt_class();
    v6 = [coderCopy decodeDictionaryWithKeysOfClass:? objectsOfClass:? forKey:?];
    centerStageRectOfInterest = v5->_centerStageRectOfInterest;
    v5->_centerStageRectOfInterest = v6;

    v5->_centerStageFramingMode = [coderCopy decodeInt64ForKey:?];
    v5->_forcefulCenterStageEnablementType = [coderCopy decodeInt32ForKey:?];
    v5->_faceDetectionEnabled = [coderCopy decodeBoolForKey:?];
    v5->_humanBodyDetectionEnabled = [coderCopy decodeBoolForKey:?];
    v5->_humanFullBodyDetectionEnabled = [coderCopy decodeBoolForKey:?];
    v5->_studioLightingEnabled = [coderCopy decodeBoolForKey:?];
    v5->_reactionEffectsEnabled = [coderCopy decodeBoolForKey:?];
    v5->_backgroundReplacementEnabled = [coderCopy decodeBoolForKey:?];
    v5->_maxFrameRate = [coderCopy decodeInt32ForKey:?];
    v5->_minFrameRate = [coderCopy decodeInt32ForKey:?];
    objc_opt_class();
    v8 = [coderCopy decodeObjectOfClass:? forKey:?];
    format = v5->_format;
    v5->_format = v8;

    [coderCopy decodeDoubleForKey:?];
    v5->_videoZoomFactor = v10;
    objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:? forKey:?];
    sessionID = v5->_sessionID;
    v5->_sessionID = v11;

    v5->_asyncStillCaptureEnabled = [coderCopy decodeBoolForKey:?];
    objc_opt_class();
    objc_opt_class();
    v13 = [coderCopy decodeDictionaryWithKeysOfClass:? objectsOfClass:? forKey:?];
    asyncStillCaptureConfigs = v5->_asyncStillCaptureConfigs;
    v5->_asyncStillCaptureConfigs = v13;

    v5->_generationID = [coderCopy decodeInt64ForKey:?];
    v5->_deskViewCameraMode = [coderCopy decodeInt32ForKey:?];
    if ([coderCopy containsValueForKey:?])
    {
      v15 = [coderCopy decodeInt32ForKey:?];
    }

    else
    {
      v15 = 1684434036;
    }

    v5->_audioDeviceMode = v15;
    if ([coderCopy containsValueForKey:?])
    {
      [coderCopy decodeDoubleForKey:?];
    }

    else
    {
      v16 = 0x3F847AE147AE147BLL;
    }

    *&v5->_audioBlockSize = v16;
    [coderCopy decodeFloatForKey:?];
    v5->_portraitEffectAperture = v17;
    [coderCopy decodeFloatForKey:?];
    v5->_studioLightingIntensity = v18;
    v5->_reactionEffectGesturesEnabled = [coderCopy decodeBoolForKey:?];
    v5->_reactionEffectSuppressedGesturesEnabled = [coderCopy decodeBoolForKey:?];
    v19 = [coderCopy decodeCVPixelBufferForKey:? expectSourceMedia:?];
    if (v19)
    {
      v19 = CFRetain(v19);
    }

    v5->_backgroundReplacementPixelBuffer = v19;
    [coderCopy decodeFloatForKey:?];
    v5->_panningAngleX = v20;
    [coderCopy decodeFloatForKey:?];
    v5->_panningAngleY = v21;
    v5->_manualFramingDeviceType = [coderCopy decodeInt32ForKey:?];
    v5->_centerStageFieldOfViewRestrictedToWide = [coderCopy decodeBoolForKey:?];
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v22 = v5;
  }

  return v5;
}

@end