@interface VGMLSegmentationModel
- (VGMLSegmentationModel)init;
- (id)_performSegmentationRequest:(id)request onPixelBuffer:(__CVBuffer *)buffer segmentationRequestRevision:(unint64_t)revision error:(id *)error;
- (id)_resizePixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height;
- (id)segmentationMaps:(__CVBuffer *)maps;
- (id)segmentationSurfaces:(__CVBuffer *)surfaces;
@end

@implementation VGMLSegmentationModel

- (VGMLSegmentationModel)init
{
  v30 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = VGMLSegmentationModel;
  v2 = [(VGMLSegmentationModel *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    humanAttributesMap();
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v4 = v24 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v5)
    {
      v6 = *v24;
      do
      {
        v7 = 0;
        do
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v23 + 1) + 8 * v7);
          v9 = [v4 objectForKeyedSubscript:v8];
          [v3 addObject:v9];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
    }

    [v3 addObject:@"person"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = personInstancesMapNames();
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v11)
    {
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          [v3 addObject:{v14, v19}];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v11);
    }

    v15 = [MEMORY[0x277CBEB70] orderedSetWithArray:v3];
    outputSegmentationMaps = v2->_outputSegmentationMaps;
    v2->_outputSegmentationMaps = v15;

    v17 = v2;
  }

  return v2;
}

- (id)_performSegmentationRequest:(id)request onPixelBuffer:(__CVBuffer *)buffer segmentationRequestRevision:(unint64_t)revision error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v10 = objc_alloc(MEMORY[0x277CE2D50]);
  v11 = [v10 initWithCVPixelBuffer:buffer options:MEMORY[0x277CBEC10]];
  if (!v11)
  {
    v16 = __VGLogSharedInstance(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v17 = " Vision request handler failed to instantiate ";
LABEL_23:
    v21 = v16;
    v22 = 2;
    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = requestCopy;
    [v12 setQualityLevel:0];
    [v12 setOutputPixelFormat:1278226534];
    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = __VGLogSharedInstance(isKindOfClass);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v17 = " Unsupported type received for VNGenerateSegmentationRequest. ";
    goto LABEL_23;
  }

  v16 = requestCopy;
  [v16 setQualityLevel:0];
  v19 = [v16 setRevision:revision error:error];
  if ((v19 & 1) == 0)
  {
    v25 = __VGLogSharedInstance(v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *error;
      *buf = 138412290;
      v30 = v26;
      _os_log_impl(&dword_270F06000, v25, OS_LOG_TYPE_ERROR, " Error setting revision for person instance model %@ ", buf, 0xCu);
    }

    goto LABEL_25;
  }

  [v16 setMinimumConfidence:0.0];
  [v16 setOutputPixelFormat:1278226534];
LABEL_4:

  v28 = requestCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v14 = [v11 performRequests:v13 error:error];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v23 = objc_opt_isKindOfClass(), (v23))
    {
      results = [requestCopy results];
      goto LABEL_26;
    }

    v16 = __VGLogSharedInstance(v23);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = " SegmentationRequest not of supported type. ";
      goto LABEL_23;
    }
  }

  else
  {
    v16 = __VGLogSharedInstance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *error;
      *buf = 138412290;
      v30 = v20;
      v17 = " Failed to process segmentation request %@ ";
      v21 = v16;
      v22 = 12;
LABEL_24:
      _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, v17, buf, v22);
    }
  }

LABEL_25:

  results = 0;
LABEL_26:

  return results;
}

- (id)_resizePixelBuffer:(__CVBuffer *)buffer width:(unint64_t)width height:(unint64_t)height
{
  v7 = CVPixelBufferGetIOSurface(buffer);
  v8 = resizeSurface(v7, width, height);

  return v8;
}

- (id)segmentationSurfaces:(__CVBuffer *)surfaces
{
  v64 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(surfaces);
  Height = CVPixelBufferGetHeight(surfaces);
  v48 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSOrderedSet count](self->_outputSegmentationMaps, "count")}];
  v59 = 0;
  v38 = objc_opt_new();
  surfacesCopy = surfaces;
  v40 = [VGMLSegmentationModel _performSegmentationRequest:"_performSegmentationRequest:onPixelBuffer:segmentationRequestRevision:error:" onPixelBuffer:? segmentationRequestRevision:? error:?];
  v5 = 0;
  v39 = v5;
  if (v5)
  {
    v6 = __VGLogSharedInstance(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v39;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Could not perform human attributes segmentation request. %@ ", buf, 0xCu);
    }
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v6 = v40;
    obj = v6;
    v7 = [v6 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v7)
    {
      v8 = *v56;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v56 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          v11 = humanAttributesMap();
          featureName = [v10 featureName];
          v13 = [v11 objectForKey:featureName];
          v14 = v13 == 0;

          if (v14)
          {
            v16 = __VGLogSharedInstance(v15);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              featureName2 = [v10 featureName];
              *buf = 138412290;
              v63 = featureName2;
              _os_log_impl(&dword_270F06000, v16, OS_LOG_TYPE_ERROR, " Received an unexpected output map from VNGenerateHumanAttributesSegmentationRequest: %@ ", buf, 0xCu);
            }
          }

          else
          {
            v16 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v10 pixelBuffer], Width, Height);
            featureName3 = [v10 featureName];
            v18 = [v11 objectForKeyedSubscript:featureName3];
            [v48 setObject:v16 forKey:v18];
          }
        }

        v6 = obj;
        v7 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v7);
    }
  }

  v54 = v39;
  v41 = objc_opt_new();
  v43 = [VGMLSegmentationModel _performSegmentationRequest:"_performSegmentationRequest:onPixelBuffer:segmentationRequestRevision:error:" onPixelBuffer:? segmentationRequestRevision:? error:?];
  obja = v39;

  if (obja)
  {
    v21 = __VGLogSharedInstance(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = obja;
      _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Could not perform person segmentation request. %@ ", buf, 0xCu);
    }
  }

  else
  {
    v21 = personInstancesMapNames();
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v22 = v43;
    v23 = [v22 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v23)
    {
      v24 = 0;
      v25 = *v51;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v51 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v50 + 1) + 8 * j);
          v28 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v27 pixelBuffer], Width, Height);
          v29 = [v21 objectAtIndexedSubscript:v24];
          [v48 setObject:v28 forKey:v29];

          ++v24;
        }

        v23 = [v22 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v23);
    }
  }

  v30 = objc_opt_new();
  v49 = obja;
  v31 = [(VGMLSegmentationModel *)self _performSegmentationRequest:v30 onPixelBuffer:surfacesCopy segmentationRequestRevision:1 error:&v49];
  v32 = v49;

  if (v32)
  {
    v34 = __VGLogSharedInstance(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v63 = v32;
      _os_log_impl(&dword_270F06000, v34, OS_LOG_TYPE_ERROR, " Could not perform person segmentation request. %@ ", buf, 0xCu);
    }

    goto LABEL_30;
  }

  if (![v31 count])
  {
LABEL_30:
    v35 = 0;
    goto LABEL_33;
  }

  v36 = [v31 objectAtIndexedSubscript:0];
  v35 = -[VGMLSegmentationModel _resizePixelBuffer:width:height:](self, "_resizePixelBuffer:width:height:", [v36 pixelBuffer], Width, Height);

  [v48 setObject:v35 forKey:@"person"];
LABEL_33:

  return v48;
}

- (id)segmentationMaps:(__CVBuffer *)maps
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = [(VGMLSegmentationModel *)self segmentationSurfaces:maps];
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v14;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:{v8, v14}];
        CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v9);

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __42__VGMLSegmentationModel_segmentationMaps___block_invoke;
        v15[3] = &__block_descriptor_40_e5_v8__0l;
        v15[4] = CVPixelBufferFromIOSurface;
        v11 = MEMORY[0x2743B9AA0](v15);
        v12 = [[VGMLImageIOData alloc] initWithCVPixelBufferRef:CVPixelBufferFromIOSurface];
        [v3 setObject:v12 forKey:v8];

        v11[2](v11);
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v3;
}

@end