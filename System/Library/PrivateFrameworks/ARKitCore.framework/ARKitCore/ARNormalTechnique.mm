@interface ARNormalTechnique
- (ARNormalTechnique)init;
- (id)processData:(id)data;
- (void)dealloc;
@end

@implementation ARNormalTechnique

- (ARNormalTechnique)init
{
  v5.receiver = self;
  v5.super_class = ARNormalTechnique;
  v2 = [(ARTechnique *)&v5 init];
  if (v2)
  {
    v2->_session = CV3DNormalEstimationCreate();
    v3 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.normalsKernelSize"];
    v2->_kernelSize = [v3 unsignedIntValue];
  }

  return v2;
}

- (id)processData:(id)data
{
  v54 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = ARNormalTechnique;
  v4 = [(ARTechnique *)&v47 processData:data];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
    goto LABEL_4;
  }

  v7 = v4;
  if (![v7 normalsBuffer])
  {
    [v7 depthBufferSize];
    v10 = ARCreateCVPixelBufferFromPool(&self->_normalPixelBufferPool, 1380410945, self, @"Normals map", v8, v9);
    if (v10)
    {
      v11 = v10;
      objc_msgSend_timestamp(v7);
      kdebug_trace();
      sourceImageData = [v7 sourceImageData];
      [sourceImageData cameraIntrinsics];
      v45 = v14;
      v46 = v13;
      v43 = v15;
      sourceImageData2 = [v7 sourceImageData];
      [sourceImageData2 imageResolution];
      v18 = v17;
      v20 = v19;
      [v7 depthBufferSize];
      ARAdjustIntrinsicsForViewportSize(v46, v45, v43, v18, v20, v21, v22);
      v44 = v23;

      [v7 depthBuffer];
      v24 = CV3DNormalEstimationSessionCompute();
      if (v24)
      {
        [v7 setNormalsBuffer:v11];
LABEL_29:
        objc_msgSend_timestamp(v7, v44);
        kdebug_trace();
        CVPixelBufferRelease(v11);
        goto LABEL_4;
      }

      if (ARShouldUseLogTypeError_onceToken_12 != -1)
      {
        [ARNormalTechnique processData:];
      }

      v33 = ARShouldUseLogTypeError_internalOSVersion_12;
      v34 = _ARLogTechnique_7(v24);
      v35 = v34;
      if (v33 == 1)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          *buf = 138543874;
          v49 = v37;
          v50 = 2048;
          selfCopy4 = self;
          v52 = 2112;
          v53 = 0;
          v38 = "%{public}@ <%p>: Failed to compute normals: %@";
          v39 = v35;
          v40 = OS_LOG_TYPE_ERROR;
LABEL_27:
          _os_log_impl(&dword_1C241C000, v39, v40, v38, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        v37 = NSStringFromClass(v42);
        *buf = 138543874;
        v49 = v37;
        v50 = 2048;
        selfCopy4 = self;
        v52 = 2112;
        v53 = 0;
        v38 = "Error: %{public}@ <%p>: Failed to compute normals: %@";
        v39 = v35;
        v40 = OS_LOG_TYPE_INFO;
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    if (ARShouldUseLogTypeError_onceToken_12 != -1)
    {
      [ARNormalTechnique processData:];
    }

    v25 = ARShouldUseLogTypeError_internalOSVersion_12;
    v26 = _ARLogTechnique_7(v10);
    v27 = v26;
    if (v25 == 1)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138543618;
        v49 = v29;
        v50 = 2048;
        selfCopy4 = self;
        v30 = "%{public}@ <%p>: CVPixelBuffer to store normals could not be created from pool";
        v31 = v27;
        v32 = OS_LOG_TYPE_ERROR;
LABEL_23:
        _os_log_impl(&dword_1C241C000, v31, v32, v30, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v29 = NSStringFromClass(v41);
      *buf = 138543618;
      v49 = v29;
      v50 = 2048;
      selfCopy4 = self;
      v30 = "Error: %{public}@ <%p>: CVPixelBuffer to store normals could not be created from pool";
      v31 = v27;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_23;
    }
  }

LABEL_4:

  return v4;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_normalPixelBufferPool);
  CV3DNormalEstimationSessionRelease();
  v3.receiver = self;
  v3.super_class = ARNormalTechnique;
  [(ARNormalTechnique *)&v3 dealloc];
}

@end