@interface MADImageRemoveBackgroundTask
- (BOOL)computeRegionOfInterest:(CGRect *)interest pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error;
- (MADImageRemoveBackgroundTask)initWithSignpostPayload:(id)payload;
- (id)computeSensitivityOfPixelBuffer:(__CVBuffer *)buffer;
- (id)generateMaskWithRequestHandler:(id)handler regionOfInterest:(CGRect)interest error:(id *)error;
@end

@implementation MADImageRemoveBackgroundTask

- (MADImageRemoveBackgroundTask)initWithSignpostPayload:(id)payload
{
  payloadCopy = payload;
  v9.receiver = self;
  v9.super_class = MADImageRemoveBackgroundTask;
  v6 = [(MADImageRemoveBackgroundTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signpostPayload, payload);
  }

  return v7;
}

- (id)computeSensitivityOfPixelBuffer:(__CVBuffer *)buffer
{
  v28 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|IVS] Checking image eligibility", buf, 2u);
  }

  v5 = +[MADImageSafetyClassificationResource sharedResource];
  v6 = +[VCPMADResourceManager sharedManager];
  v7 = [v6 activateResource:v5];

  v9 = VCPSignPostLog(v8);
  v10 = os_signpost_id_generate(v9);

  v12 = VCPSignPostLog(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    signpostPayload = [(MADImageRemoveBackgroundTask *)self signpostPayload];
    *buf = 138412290;
    v27 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SCMLHandler_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  safetyHandlerTypeN = [v5 safetyHandlerTypeN];
  v25 = 0;
  v16 = [safetyHandlerTypeN analyzePixelBuffer:buffer error:&v25];
  v17 = v25;

  v19 = VCPSignPostLog(v18);
  v20 = v19;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    signpostPayload2 = [(MADImageRemoveBackgroundTask *)self signpostPayload];
    *buf = 138412290;
    v27 = signpostPayload2;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v20, OS_SIGNPOST_INTERVAL_END, v10, "SCMLHandler_analyzePixelBuffer", "%@", buf, 0xCu);
  }

  [v7 reset];
  if (v16)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v16, "sensitive")}];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v17 description];
      *buf = 138412290;
      v27 = v23;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|IVS] Failed to check eligibility (%@)", buf, 0xCu);
    }

    v22 = 0;
  }

  return v22;
}

- (BOOL)computeRegionOfInterest:(CGRect *)interest pixelBuffer:(__CVBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error
{
  v7 = *&orientation;
  v55 = *MEMORY[0x1E69E9840];
  interest->origin.x = 0.0;
  interest->origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  interest->size = _Q0;
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackground|ROI] Image is screenshot - detecting ROI", buf, 2u);
  }

  v16 = [MEMORY[0x1E69E0450] imageWithPixelBuffer:buffer orientation:v7];
  v17 = objc_alloc(MEMORY[0x1E69E0488]);
  preferredMetalDevice = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
  v19 = [v17 initWithImage:v16 regionOfInterest:1 imageType:preferredMetalDevice preferredMetalDevice:{0.0, 0.0, 1.0, 1.0}];

  v20 = +[VCPMADVIVisualSearchResource sharedResource];
  v21 = +[VCPMADResourceManager sharedManager];
  v22 = [v21 activateResource:v20];

  service = [v20 service];
  v42 = 0;
  v24 = [service refineRegionsWithRequest:v19 error:&v42];
  v25 = v42;

  [v22 reset];
  if (v25)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = *&v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RemoveBackground|ROI] Failed to detect screenshot ROI (%@)", buf, 0xCu);
    }

    if (error)
    {
      v26 = [v25 copy];
      v27 = *error;
      *error = v26;
    }

LABEL_10:
    v28 = 0;
    goto LABEL_16;
  }

  refinedRegions = [v24 refinedRegions];
  v30 = [refinedRegions count] == 0;

  if (v30)
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|ROI] Screenshot has no ROI", buf, 2u);
    }

    goto LABEL_10;
  }

  refinedRegions2 = [v24 refinedRegions];
  firstObject = [refinedRegions2 firstObject];

  [firstObject regionOfInterest];
  v57.origin.x = 0.0;
  v57.origin.y = 0.0;
  v57.size.width = 1.0;
  v57.size.height = 1.0;
  *interest = CGRectIntersection(v56, v57);
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    x = interest->origin.x;
    y = interest->origin.y;
    width = interest->size.width;
    height = interest->size.height;
    [firstObject confidence];
    v35 = v34;
    refinedRegions3 = [v24 refinedRegions];
    v37 = [refinedRegions3 count];
    *buf = 134219264;
    v44 = x;
    v45 = 2048;
    v46 = y;
    v47 = 2048;
    v48 = width;
    v49 = 2048;
    v50 = height;
    v51 = 2048;
    v52 = v35;
    v53 = 1024;
    v54 = v37;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RemoveBackground|ROI] Screenshot ROI: (%0.2f, %0.2f) %0.2fx%0.2f Confidence: %0.2f [1 of %d]", buf, 0x3Au);
  }

  v28 = 1;
LABEL_16:

  return v28;
}

- (id)generateMaskWithRequestHandler:(id)handler regionOfInterest:(CGRect)interest error:(id *)error
{
  height = interest.size.height;
  width = interest.size.width;
  y = interest.origin.y;
  x = interest.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v12 = objc_alloc_init(MEMORY[0x1E6984560]);
  v13 = [v12 setRevision:1];
  if (DeviceHasANE(v13, v14))
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [v12 setProcessingDevice:defaultANEDevice];
  }

  preferredMetalDevice = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];

  if (preferredMetalDevice)
  {
    v17 = MEMORY[0x1E6984608];
    preferredMetalDevice2 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
    v19 = [v17 deviceForMetalDevice:preferredMetalDevice2];
    [v12 setProcessingDevice:v19];

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      processingDevice = [v12 processingDevice];
      preferredMetalDevice3 = [(MADImageRemoveBackgroundTask *)self preferredMetalDevice];
      *buf = 138412546;
      v46 = processingDevice;
      v47 = 2112;
      v48 = preferredMetalDevice3;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RemoveBackground|Mask] Set VNProcessingDevice: %@ (%@)", buf, 0x16u);
    }
  }

  v22 = VCPSignPostLog([v12 setRegionOfInterest:{x, y, width, height}]);
  v23 = os_signpost_id_generate(v22);

  v25 = VCPSignPostLog(v24);
  v26 = v25;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    signpostPayload = self->_signpostPayload;
    *buf = 138412290;
    v46 = signpostPayload;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
  }

  v44 = v12;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
  v43 = 0;
  v29 = [handlerCopy performRequests:v28 error:&v43];
  v30 = v43;

  v32 = VCPSignPostLog(v31);
  v33 = v32;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    v34 = self->_signpostPayload;
    *buf = 138412290;
    v46 = v34;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v33, OS_SIGNPOST_INTERVAL_END, v23, "VNImageRequestHandler_performRequests", "%@", buf, 0xCu);
  }

  if (v29)
  {
    results = [v12 results];
    v36 = [results count] == 0;

    if (!v36)
    {
      results2 = [v12 results];
      firstObject = [results2 firstObject];

      goto LABEL_21;
    }

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|Mask] No observations produced for image", buf, 2u);
    }
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v30 description];
      *buf = 138412290;
      v46 = v39;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RemoveBackground|Mask] Mask generation failed (%@)", buf, 0xCu);
    }

    v40 = [v30 copy];
    v41 = *error;
    *error = v40;
  }

  firstObject = 0;
LABEL_21:

  return firstObject;
}

@end