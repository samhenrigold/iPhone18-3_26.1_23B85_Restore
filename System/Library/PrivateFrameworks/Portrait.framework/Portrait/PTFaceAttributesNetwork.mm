@interface PTFaceAttributesNetwork
- (PTFaceAttributesNetwork)init;
- (id)createRequest;
- (id)faceLandmarksInPixelBuffer:(__CVBuffer *)buffer faceRects:(id)rects orientation:(unsigned int)orientation;
@end

@implementation PTFaceAttributesNetwork

- (PTFaceAttributesNetwork)init
{
  v23[1] = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = PTFaceAttributesNetwork;
  v2 = [(PTFaceAttributesNetwork *)&v22 init];
  if (v2)
  {
    v3 = objc_opt_new();
    session = v2->_session;
    v2->_session = v3;

    createRequest = [(PTFaceAttributesNetwork *)v2 createRequest];
    v6 = createRequest;
    if (createRequest)
    {
      v7 = v2->_session;
      v23[0] = createRequest;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      v21 = 0;
      LOBYTE(v7) = [(VNSession *)v7 prepareForPerformingRequests:v8 error:&v21];
      v9 = v21;

      if ((v7 & 1) == 0)
      {
        v11 = _PTLogSystem(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [PTFaceAttributesNetwork init];
        }
      }

      v12 = [objc_alloc(MEMORY[0x277CE2E10]) initWithSession:v2->_session];
      handler = v2->_handler;
      v2->_handler = v12;

      if (v2->_handler)
      {
        v15 = MLAllComputeDevices();
        v16 = [v15 indexOfObjectPassingTest:&__block_literal_global_13];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          aneDevice = _PTLogSystem(0x7FFFFFFFFFFFFFFFLL);
          if (os_log_type_enabled(aneDevice, OS_LOG_TYPE_ERROR))
          {
            [PTFaceAttributesNetwork init];
          }
        }

        else
        {
          v19 = [v15 objectAtIndexedSubscript:v16];
          aneDevice = v2->_aneDevice;
          v2->_aneDevice = v19;
        }

        v18 = v2;
        goto LABEL_20;
      }

      v15 = _PTLogSystem(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTFaceAttributesNetwork init];
      }
    }

    else
    {
      v15 = _PTLogSystem(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [PTFaceAttributesNetwork init];
      }

      v9 = 0;
    }

    v18 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v18 = 0;
LABEL_21:

  return v18;
}

uint64_t __31__PTFaceAttributesNetwork_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)createRequest
{
  v3 = objc_opt_new();
  v4 = +[PTInference ANEConfigForAsynchronousWork];
  [v3 setModelExecutionPriority:{objc_msgSend(v4, "VNRequestModelExecutionPriority")}];

  v12 = 0;
  v5 = [v3 setRevision:3737841669 error:&v12];
  v6 = v12;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v8 = _PTLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork createRequest];
    }
  }

  defaultANEDevice = [MEMORY[0x277CE2DA0] defaultANEDevice];
  if (defaultANEDevice)
  {
    [v3 setComputeDevice:self->_aneDevice forComputeStage:*MEMORY[0x277CE2EB0]];
    [v3 setComputeDevice:self->_aneDevice forComputeStage:*MEMORY[0x277CE2EB8]];
  }

  else
  {
    v10 = _PTLogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork createRequest];
    }
  }

  return v3;
}

- (id)faceLandmarksInPixelBuffer:(__CVBuffer *)buffer faceRects:(id)rects orientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v19[1] = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  createRequest = [(PTFaceAttributesNetwork *)self createRequest];
  v10 = [createRequest setInputFaceObservations:rectsCopy];
  if (createRequest)
  {
    handler = self->_handler;
    v19[0] = createRequest;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v18 = 0;
    v13 = [(VNSequenceRequestHandler *)handler performRequests:v12 onCVPixelBuffer:buffer orientation:v5 error:&v18];
    v14 = v18;

    if (v13)
    {
      results = [createRequest results];
      goto LABEL_8;
    }
  }

  else
  {
    v16 = _PTLogSystem(v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork faceLandmarksInPixelBuffer:faceRects:orientation:];
    }

    v14 = 0;
  }

  results = 0;
LABEL_8:

  return results;
}

@end