@interface ADCameraCalibration(ARAdditions)
+ (id)ar_calibrationWithImageData:()ARAdditions adCalibrationData:;
+ (id)ar_initWithCVACameraCalibrationData:()ARAdditions;
- (id)ar_initWithImageData:()ARAdditions calibrationData:;
- (id)ar_initWithImageData:()ARAdditions cameraToPlatformTransform:pixelSize:referenceDimensions:distortionCenter:lensDistortionLookupTable:inverseLensDistortionLookupTable:;
@end

@implementation ADCameraCalibration(ARAdditions)

+ (id)ar_calibrationWithImageData:()ARAdditions adCalibrationData:
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  pixelBuffer = [v6 pixelBuffer];
  if (pixelBuffer)
  {
    v9 = pixelBuffer;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(v9);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  [v7 referenceDimensions];
  if (Width == v13 && Height == v12)
  {
    v34 = v7;
    goto LABEL_21;
  }

  distortionModel = [v7 distortionModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_43;
    v36 = _ARLogGeneral_36(isKindOfClass);
    v37 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *buf = 138543618;
        v50 = v39;
        v51 = 2048;
        selfCopy2 = self;
        v40 = "%{public}@ <%p>: Unsupported distoration model to scale for imageData";
        v41 = v37;
        v42 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v41, v42, v40, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v43 = objc_opt_class();
      v39 = NSStringFromClass(v43);
      *buf = 138543618;
      v50 = v39;
      v51 = 2048;
      selfCopy2 = self;
      v40 = "Error: %{public}@ <%p>: Unsupported distoration model to scale for imageData";
      v41 = v37;
      v42 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v34 = 0;
    goto LABEL_20;
  }

  v17 = objc_alloc(MEMORY[0x1E698C160]);
  [v6 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986930]];
  v47 = v19;
  v48 = v18;
  v45 = v21;
  v46 = v20;
  [v7 pixelSize];
  v23 = v22;
  [v7 referenceDimensions];
  v25 = v24;
  v27 = v26;
  [distortionModel distortionCenter];
  v29 = v28;
  v31 = v30;
  lensDistortionLookupTable = [distortionModel lensDistortionLookupTable];
  inverseLensDistortionLookupTable = [distortionModel inverseLensDistortionLookupTable];
  v34 = [v17 ar_initWithImageData:v6 cameraToPlatformTransform:lensDistortionLookupTable pixelSize:inverseLensDistortionLookupTable referenceDimensions:v48 distortionCenter:v47 lensDistortionLookupTable:v46 inverseLensDistortionLookupTable:{v45, v23, v25, v27, v29, v31}];

LABEL_20:
LABEL_21:

  return v34;
}

+ (id)ar_initWithCVACameraCalibrationData:()ARAdditions
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v31 = ARShouldUseLogTypeError_internalOSVersion_43;
    v32 = _ARLogGeneral_36(v4);
    v33 = v32;
    if (v31 == 1)
    {
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543618;
      v57 = v35;
      v58 = 2048;
      selfCopy6 = self;
      v36 = "%{public}@ <%p>: calibrationData is nil";
LABEL_22:
      v44 = v33;
      v45 = OS_LOG_TYPE_ERROR;
LABEL_28:
      _os_log_impl(&dword_1C241C000, v44, v45, v36, buf, 0x16u);

      goto LABEL_29;
    }

    if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v40 = objc_opt_class();
    v35 = NSStringFromClass(v40);
    *buf = 138543618;
    v57 = v35;
    v58 = 2048;
    selfCopy6 = self;
    v36 = "Error: %{public}@ <%p>: calibrationData is nil";
LABEL_27:
    v44 = v33;
    v45 = OS_LOG_TYPE_INFO;
    goto LABEL_28;
  }

  lensDistortionLookupTable = [v4 lensDistortionLookupTable];

  if (!lensDistortionLookupTable)
  {
    if (ARShouldUseLogTypeError_onceToken_43 != -1)
    {
      +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
    }

    v37 = ARShouldUseLogTypeError_internalOSVersion_43;
    v38 = _ARLogGeneral_36(v7);
    v33 = v38;
    if (v37 == 1)
    {
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      v39 = objc_opt_class();
      v35 = NSStringFromClass(v39);
      *buf = 138543618;
      v57 = v35;
      v58 = 2048;
      selfCopy6 = self;
      v36 = "%{public}@ <%p>: lensDistortionLookupTable is nil";
      goto LABEL_22;
    }

    if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v46 = objc_opt_class();
    v35 = NSStringFromClass(v46);
    *buf = 138543618;
    v57 = v35;
    v58 = 2048;
    selfCopy6 = self;
    v36 = "Error: %{public}@ <%p>: lensDistortionLookupTable is nil";
    goto LABEL_27;
  }

  inverseLensDistortionLookupTable = [v5 inverseLensDistortionLookupTable];

  if (inverseLensDistortionLookupTable)
  {
    v10 = objc_alloc(MEMORY[0x1E698C178]);
    [v5 lensDistortionCenter];
    v12 = v11;
    v14 = v13;
    lensDistortionLookupTable2 = [v5 lensDistortionLookupTable];
    inverseLensDistortionLookupTable2 = [v5 inverseLensDistortionLookupTable];
    v17 = [v10 initWithDistortionCenter:lensDistortionLookupTable2 lensDistortionLookupTable:inverseLensDistortionLookupTable2 inverseLensDistortionLookupTable:{v12, v14}];

    v18 = objc_alloc(MEMORY[0x1E698C160]);
    [v5 intrinsicMatrix];
    v55 = v19;
    v53 = v21;
    v54 = v20;
    [v5 extrinsicMatrix];
    v51 = v23;
    v52 = v22;
    v49 = v25;
    v50 = v24;
    [v5 pixelSize];
    v27 = v26;
    [v5 intrinsicMatrixReferenceDimensions];
    v30 = [v18 initWithIntrinsics:v17 cameraToPlatformTransform:v55 pixelSize:v54 forReferenceDimensions:v53 withDistortionModel:{v52, v51, v50, v49, v27, v28, v29}];

    goto LABEL_30;
  }

  if (ARShouldUseLogTypeError_onceToken_43 != -1)
  {
    +[ADCameraCalibration(ARAdditions) ar_calibrationWithImageData:adCalibrationData:];
  }

  v41 = ARShouldUseLogTypeError_internalOSVersion_43;
  v42 = _ARLogGeneral_36(v9);
  v33 = v42;
  if (v41 != 1)
  {
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v47 = objc_opt_class();
    v35 = NSStringFromClass(v47);
    *buf = 138543618;
    v57 = v35;
    v58 = 2048;
    selfCopy6 = self;
    v36 = "Error: %{public}@ <%p>: inverseLensDistortionLookupTable is nil";
    goto LABEL_27;
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    v43 = objc_opt_class();
    v35 = NSStringFromClass(v43);
    *buf = 138543618;
    v57 = v35;
    v58 = 2048;
    selfCopy6 = self;
    v36 = "%{public}@ <%p>: inverseLensDistortionLookupTable is nil";
    goto LABEL_22;
  }

LABEL_29:

  v30 = 0;
LABEL_30:

  return v30;
}

- (id)ar_initWithImageData:()ARAdditions calibrationData:
{
  v6 = *MEMORY[0x1E6986930];
  v7 = a4;
  v8 = a3;
  [v8 extrinsicMatrixToDeviceType:v6];
  v29 = v10;
  v30 = v9;
  v27 = v12;
  v28 = v11;
  [v7 pixelSize];
  v14 = v13;
  [v7 intrinsicMatrixReferenceDimensions];
  v16 = v15;
  v18 = v17;
  [v7 lensDistortionCenter];
  v20 = v19;
  v22 = v21;
  lensDistortionLookupTable = [v7 lensDistortionLookupTable];
  inverseLensDistortionLookupTable = [v7 inverseLensDistortionLookupTable];

  v25 = [self ar_initWithImageData:v8 cameraToPlatformTransform:lensDistortionLookupTable pixelSize:inverseLensDistortionLookupTable referenceDimensions:v30 distortionCenter:v29 lensDistortionLookupTable:v28 inverseLensDistortionLookupTable:{v27, v14, v16, v18, v20, v22}];

  return v25;
}

- (id)ar_initWithImageData:()ARAdditions cameraToPlatformTransform:pixelSize:referenceDimensions:distortionCenter:lensDistortionLookupTable:inverseLensDistortionLookupTable:
{
  v21 = a12;
  v22 = a11;
  v23 = a10;
  [v23 imageResolution];
  v25 = v24 / a7;
  v26 = a14 * (v24 / a7);
  [v23 imageResolution];
  v28 = [objc_alloc(MEMORY[0x1E698C178]) initWithDistortionCenter:v22 lensDistortionLookupTable:v21 inverseLensDistortionLookupTable:{v26, -(v27 - a8 * v25) * -0.5 + a15 * v25}];

  selfCopy = self;
  [v23 cameraIntrinsics];
  v40 = v31;
  v41 = v30;
  v39 = v32;
  [v23 imageResolution];
  v34 = v33;
  v36 = v35;

  v37 = [selfCopy initWithIntrinsics:v28 cameraToPlatformTransform:v41 pixelSize:v40 forReferenceDimensions:v39 withDistortionModel:{a2, a3, a4, a5, a6, v34, v36}];

  return v37;
}

@end