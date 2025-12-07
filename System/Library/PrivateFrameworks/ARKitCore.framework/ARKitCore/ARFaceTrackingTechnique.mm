@interface ARFaceTrackingTechnique
+ (BOOL)isSupported;
- (ARFaceTrackingTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)faces;
- (BOOL)isEqual:(id)equal;
- (id)processData:(id)data;
- (id)resultDataClasses;
@end

@implementation ARFaceTrackingTechnique

- (ARFaceTrackingTechnique)initWithMaximumNumberOfTrackedFaces:(int64_t)faces
{
  v9.receiver = self;
  v9.super_class = ARFaceTrackingTechnique;
  v4 = [(ARImageBasedTechnique *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_isFaceTracked = 0;
    v4->_maximumNumberOfTrackedFaces = faces;
    v6 = objc_opt_new();
    singleUserAnchorIdentifier = v5->_singleUserAnchorIdentifier;
    v5->_singleUserAnchorIdentifier = v6;
  }

  return v5;
}

+ (BOOL)isSupported
{
  if (+[ARFaceTrackingTechnique isSupported]::onceToken != -1)
  {
    +[ARFaceTrackingTechnique isSupported];
  }

  return +[ARFaceTrackingTechnique isSupported]::supported;
}

uint64_t __38__ARFaceTrackingTechnique_isSupported__block_invoke(uint64_t a1, uint64_t a2)
{
  result = ARPearlCameraSupported(a1, a2);
  +[ARFaceTrackingTechnique isSupported]::supported = result;
  if ((result & 1) == 0)
  {
    result = ARRGBFaceTrackingEnabled(result, v3);
    if (result)
    {
      result = ARRGBFaceTrackingEnabled(result, v4);
      +[ARFaceTrackingTechnique isSupported]::supported = result;
    }
  }

  return result;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)processData:(id)data
{
  v34[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v33.receiver = self;
  v33.super_class = ARFaceTrackingTechnique;
  v5 = [(ARImageBasedTechnique *)&v33 processData:dataCopy];
  v6 = dataCopy;
  v29 = objc_opt_new();
  faceData = [v6 faceData];
  faceMeshPayload = [faceData faceMeshPayload];
  v9 = MEMORY[0x1E698C0C0];
  if (!faceMeshPayload)
  {

LABEL_6:
    objc_msgSend_timestamp(v6);
    kdebug_trace();
    goto LABEL_7;
  }

  faceData2 = [v6 faceData];
  faceMeshPayload2 = [faceData2 faceMeshPayload];
  v12 = [faceMeshPayload2 objectForKeyedSubscript:*v9];
  v13 = [v12 count] == 0;

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  faceData3 = [v6 faceData];
  isMirrored = [faceData3 isMirrored];
  isMirrored2 = [v6 isMirrored];

  faceData4 = [v6 faceData];
  faceMeshPayload3 = [faceData4 faceMeshPayload];
  v19 = [faceMeshPayload3 objectForKeyedSubscript:*v9];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __39__ARFaceTrackingTechnique_processData___block_invoke;
  v30[3] = &unk_1E817C378;
  v20 = isMirrored ^ isMirrored2;
  v30[4] = self;
  v32 = v20;
  v21 = v29;
  v31 = v21;
  [v19 enumerateObjectsUsingBlock:v30];

  if ([(ARFaceTrackingTechnique *)self maximumNumberOfTrackedFaces]== 1)
  {
    firstObject = [v21 firstObject];
    if (firstObject)
    {
      [v21 removeAllObjects];
      v23 = [ARFaceTrackingData alloc];
      trackingData = [firstObject trackingData];
      v25 = [(ARFaceTrackingData *)v23 initWithTrackingData:trackingData transformToMirrored:v20 anchorIdentifier:self->_singleUserAnchorIdentifier];

      [v21 addObject:v25];
    }
  }

  v26 = objc_opt_new();
  [v26 setTrackedFaces:v21];
  v34[0] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  objc_msgSend_timestamp(v6);
  [(ARImageBasedTechnique *)self pushResultData:v27 forTimestamp:?];

LABEL_12:

  return dataCopy;
}

void __39__ARFaceTrackingTechnique_processData___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x1E698C038]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    v9 = v8;
LABEL_5:
    v13 = _ARLogGeneral(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = *(a1 + 32);
      *v34 = 138543874;
      *&v34[4] = v15;
      *&v34[12] = 2048;
      *&v34[14] = v16;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Tracking anchor with ID = %@", v34, 0x20u);
    }

    v17 = [[ARFaceTrackingData alloc] initWithTrackingData:v6 transformToMirrored:*(a1 + 48) anchorIdentifier:v9];
    v18 = [*(a1 + 32) isFaceTracked];
    if (v18 != [(ARFaceTrackingData *)v17 isValid])
    {
      if (_ARLogTechnique(void)::onceToken != -1)
      {
        __39__ARFaceTrackingTechnique_processData___block_invoke_cold_2();
      }

      v19 = _ARLogTechnique(void)::logObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = *(a1 + 32);
        v23 = [(ARFaceTrackingData *)v17 isValid];
        v24 = @"NO";
        *v34 = 138543874;
        *&v34[4] = v21;
        if (v23)
        {
          v24 = @"YES";
        }

        *&v34[12] = 2048;
        *&v34[14] = v22;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Face is being tracked: %@", v34, 0x20u);
      }

      [*(a1 + 32) setIsFaceTracked:{-[ARFaceTrackingData isValid](v17, "isValid")}];
    }

    [*(a1 + 40) addObject:{v17, *v34, *&v34[8]}];
    v25 = [*(a1 + 40) count];
    *a4 = v25 >= [*(a1 + 32) maximumNumberOfTrackedFaces];

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v7;
    *v34 = [v11 intValue];
    v12 = [MEMORY[0x1E695DEF0] dataWithBytes:v34 length:4];
    v9 = [MEMORY[0x1E696AFB0] ar_UUIDWithData:v12];

    goto LABEL_5;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARFaceTrackingTechnique_processData___block_invoke_cold_1();
  }

  v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v27 = _ARLogGeneral(isKindOfClass);
  v9 = v27;
  if (v26 == 1)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = *(a1 + 32);
      *v34 = 138543618;
      *&v34[4] = v29;
      *&v34[12] = 2048;
      *&v34[14] = v30;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Encountered invalid face ID", v34, 0x16u);
    }
  }

  else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = *(a1 + 32);
    *v34 = 138543618;
    *&v34[4] = v32;
    *&v34[12] = 2048;
    *&v34[14] = v33;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Encountered invalid face ID", v34, 0x16u);
  }

LABEL_16:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = ARFaceTrackingTechnique;
  if ([(ARTechnique *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    maximumNumberOfTrackedFaces = [(ARFaceTrackingTechnique *)self maximumNumberOfTrackedFaces];
    v7 = maximumNumberOfTrackedFaces == [v5 maximumNumberOfTrackedFaces];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end