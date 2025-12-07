@interface ARInternalFaceTrackingConfiguration
+ (BOOL)isSupported;
- (ARInternalFaceTrackingConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageSensorSettings;
- (void)createTechniques:(id)techniques;
- (void)setCameraPosition:(int64_t)position;
- (void)setLightEstimationEnabled:(BOOL)enabled;
- (void)setMaximumNumberOfTrackedFaces:(int64_t)faces;
@end

@implementation ARInternalFaceTrackingConfiguration

- (ARInternalFaceTrackingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARInternalFaceTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v5 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(ARInternalFaceTrackingConfiguration *)initPrivate setLightEstimationEnabled:1];
    [(ARInternalFaceTrackingConfiguration *)v3 setMaximumNumberOfTrackedFaces:1];
  }

  return v3;
}

- (void)setLightEstimationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  [(ARConfiguration *)self setLightEstimation:v3];
}

- (void)setCameraPosition:(int64_t)position
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.faceTracking.backCamera.allowed"];
  if (v5)
  {
    if (position && (-[ARConfiguration videoFormat](self, "videoFormat"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 captureDevicePosition], v6, v7 != position))
    {
      v15.receiver = self;
      v15.super_class = ARInternalFaceTrackingConfiguration;
      [(ARConfiguration *)&v15 setCameraPosition:position];
    }

    else
    {
      supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__ARInternalFaceTrackingConfiguration_setCameraPosition___block_invoke;
      v14[3] = &__block_descriptor_40_e30_B32__0__ARVideoFormat_8Q16_B24l;
      v14[4] = position;
      v9 = [supportedVideoFormats ar_firstObjectPassingTest:v14];
      videoFormat = self->super._videoFormat;
      self->super._videoFormat = v9;

      self->super._cameraPosition = position;
    }
  }

  else
  {
    v11 = _ARLogGeneral_12(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v17 = v13;
      v18 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: setCameraPosition failed: The camera position for face tracking cannot be changed.", buf, 0x16u);
    }
  }
}

+ (BOOL)isSupported
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ARInternalFaceTrackingConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_isSupported);
  if (v2)
  {
    LOBYTE(v2) = +[ARFaceTrackingInternalTechnique isSupported];
  }

  return v2;
}

- (void)createTechniques:(id)techniques
{
  v11[1] = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  if ([(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces]< 1)
  {
    goto LABEL_4;
  }

  v5 = [[ARFaceTrackingInternalTechnique alloc] initWithMaximumNumberOfTrackedFaces:[(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces] options:0];
  if (v5)
  {
    v6 = v5;
    v7 = [ARParentTechnique alloc];
    v11[0] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v9 = [(ARParentTechnique *)v7 initWithParallelTechniques:v8];

    [techniquesCopy addObject:v9];
LABEL_4:
    v10.receiver = self;
    v10.super_class = ARInternalFaceTrackingConfiguration;
    [(ARConfiguration *)&v10 createTechniques:techniquesCopy];
  }
}

- (void)setMaximumNumberOfTrackedFaces:(int64_t)faces
{
  if (ARLinkedOnOrAfterYukon(self, a2))
  {
    v5 = +[ARFaceTrackingConfiguration supportedNumberOfTrackedFaces];
    if ((faces & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    self->_maximumNumberOfTrackedFaces = 0;
    return;
  }

  v5 = 1;
  if (faces < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5 >= faces)
  {
    self->_maximumNumberOfTrackedFaces = faces;
  }

  else
  {
    self->_maximumNumberOfTrackedFaces = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = ARInternalFaceTrackingConfiguration;
  if ([(ARConfiguration *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    useAlternativeResources = [(ARInternalFaceTrackingConfiguration *)self useAlternativeResources];
    if (useAlternativeResources == [v5 useAlternativeResources])
    {
      maximumNumberOfTrackedFaces = [(ARInternalFaceTrackingConfiguration *)self maximumNumberOfTrackedFaces];
      v7 = maximumNumberOfTrackedFaces == [v5 maximumNumberOfTrackedFaces];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = ARInternalFaceTrackingConfiguration;
  v4 = [(ARConfiguration *)&v6 copyWithZone:zone];
  [v4 setUseAlternativeResources:{-[ARInternalFaceTrackingConfiguration useAlternativeResources](self, "useAlternativeResources")}];
  v4[15] = self->_maximumNumberOfTrackedFaces;
  return v4;
}

- (id)imageSensorSettings
{
  v4.receiver = self;
  v4.super_class = ARInternalFaceTrackingConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v4 imageSensorSettings];
  [imageSensorSettings setMetaData:*MEMORY[0x1E6986FE8]];

  return imageSensorSettings;
}

@end