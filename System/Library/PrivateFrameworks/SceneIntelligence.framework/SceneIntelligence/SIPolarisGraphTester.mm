@interface SIPolarisGraphTester
- (BOOL)addGraphInputResourceStreamWithParameters:(id)parameters;
- (BOOL)commitInputResourceGraphs;
- (BOOL)commitTargetGraph:(id)graph;
- (BOOL)finalizeAndSubmitGraphs;
- (BOOL)runGraph;
- (BOOL)setDataInputForResourceKey:(id)key data:(void *)data;
- (BOOL)setupResourceStreamsByAttributes:(id)attributes;
- (SIPolarisGraphTester)init;
- (ps_resource)getResourceForName:(id)name;
- (void)copyData:(void *)data toResource:(ps_resource *)resource;
- (void)dealloc;
- (void)setupTargetGraphWithGraphProvider:(id)provider;
@end

@implementation SIPolarisGraphTester

- (SIPolarisGraphTester)init
{
  v15.receiver = self;
  v15.super_class = SIPolarisGraphTester;
  v2 = [(SIPolarisGraphTester *)&v15 init];
  if (v2)
  {
    initForLocalReplay = [objc_alloc(MEMORY[0x277D3E660]) initForLocalReplay];
    session = v2->_session;
    v2->_session = initForLocalReplay;

    context = [(PSExecutionSession *)v2->_session context];
    context = v2->_context;
    v2->_context = context;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inputResourceSetters = v2->_inputResourceSetters;
    v2->_inputResourceSetters = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    realityCameraMetadata = v2->_realityCameraMetadata;
    v2->_realityCameraMetadata = v9;

    v11 = objc_alloc_init(SIPolarisGraphTesterProbeData);
    probeData = v2->_probeData;
    v2->_probeData = v11;

    v2->_surfaceSerialCount = 0;
    v13 = v2;
  }

  return v2;
}

- (void)setupTargetGraphWithGraphProvider:(id)provider
{
  v4 = [provider graphWithContext:self->_context];
  graph = self->_graph;
  self->_graph = v4;

  [(PSGraph *)self->_graph setFrequency:1];
  v6 = self->_graph;

  [(PSGraph *)v6 setCriticalityCPU:2];
}

- (BOOL)setupResourceStreamsByAttributes:(id)attributes
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [attributes objectForKey:@"input_resource"];
  v4 = v3;
  if (v3)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = @"resource_key";
      v8 = @"parameter";
      v28 = *v30;
      v26 = v4;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [v4 objectForKeyedSubscript:*(*(&v29 + 1) + 8 * i)];
          v11 = [v10 objectForKeyedSubscript:v7];
          v12 = [v10 objectForKeyedSubscript:v8];
          v13 = [v12 objectForKeyedSubscript:@"type"];
          v14 = [v13 isEqualToString:@"pixel_buffer"];

          if (v14)
          {
            v15 = v6;
            v16 = v8;
            v17 = v7;
            v18 = objc_alloc_init(SIPolarisGraphTesterPixelBufferParameters);
            [(SIPolarisGraphTesterPixelBufferParameters *)v18 setResourceKey:v11];
            v19 = [v12 objectForKeyedSubscript:@"width"];
            -[SIPolarisGraphTesterPixelBufferParameters setWidth:](v18, "setWidth:", [v19 intValue]);

            v20 = [v12 objectForKeyedSubscript:@"height"];
            -[SIPolarisGraphTesterPixelBufferParameters setHeight:](v18, "setHeight:", [v20 intValue]);

            v21 = [v12 objectForKeyedSubscript:@"format"];
            v22 = [v21 isEqualToString:@"32BGRA"];

            if (v22)
            {
              [(SIPolarisGraphTesterPixelBufferParameters *)v18 setFormat:1111970369];
            }

            v23 = [v12 objectForKeyedSubscript:@"use_384_stride"];
            -[SIPolarisGraphTesterPixelBufferParameters setUse384Stride:](v18, "setUse384Stride:", [v23 BOOLValue]);

            [(SIPolarisGraphTester *)self addGraphInputResourceStreamWithParameters:v18];
            v7 = v17;
            v8 = v16;
            v6 = v15;
            v4 = v26;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v24 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v36 = 1025;
      v37 = 101;
      _os_log_impl(&dword_21DE0D000, v24, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** input attribute does not have the setting for resource streams! ***", buf, 0x12u);
    }
  }

  return v4 != 0;
}

- (BOOL)addGraphInputResourceStreamWithParameters:(id)parameters
{
  v21 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  resourceKey = [parametersCopy resourceKey];
  context = self->_context;
  streamFromParameters = [parametersCopy streamFromParameters];

  [(PSContext *)context addResourceStream:streamFromParameters];
  v8 = objc_alloc_init(SIPolarisGraphTesterInputResourceSetter);
  v9 = [objc_alloc(MEMORY[0x277D3E6E0]) initWithResourceKey:resourceKey];
  v10 = objc_alloc(MEMORY[0x277D3E6E8]);
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"producer_writer_%@", resourceKey];
  v12 = [v10 initWithName:v11 withOutput:v9];
  [(SIPolarisGraphTesterInputResourceSetter *)v8 setWriter:v12];

  writer = [(SIPolarisGraphTesterInputResourceSetter *)v8 writer];

  if (writer)
  {
    [(NSMutableDictionary *)self->_inputResourceSetters setObject:v8 forKeyedSubscript:resourceKey];
  }

  else
  {
    v15 = __SceneIntelligenceLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v19 = 1025;
      v20 = 131;
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed: Null Writer ***", buf, 0x12u);
    }
  }

  return writer != 0;
}

- (BOOL)finalizeAndSubmitGraphs
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"producer_graph"];
  [v3 setFrequency:{-[PSGraph frequency](self->_graph, "frequency")}];
  [v3 setRelativeDeadline:{0x3B9ACA00uLL / objc_msgSend(v3, "frequency")}];
  [v3 setCriticalityCPU:2];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = self->_inputResourceSetters;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v46;
    do
    {
      v8 = 0;
      do
      {
        if (*v46 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:*(*(&v45 + 1) + 8 * v8)];
        writer = [v9 writer];
        [v3 addWriter:writer];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v6);
  }

  v33 = v3;

  v31 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"verification_prober"];
  [v31 setFrequency:{-[PSGraph frequency](self->_graph, "frequency")}];
  v11 = [objc_alloc(MEMORY[0x277D3E6D0]) initWithName:@"probeTask"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  obj = [(PSGraph *)self->_graph tasks];
  v12 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v35 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        outputs = [v15 outputs];
        v17 = [outputs countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v38;
          do
          {
            v20 = 0;
            do
            {
              if (*v38 != v19)
              {
                objc_enumerationMutation(outputs);
              }

              v21 = *(*(&v37 + 1) + 8 * v20);
              v22 = objc_alloc(MEMORY[0x277D3E6D8]);
              resourceKey = [v21 resourceKey];
              v24 = [v22 initWithResourceKey:resourceKey type:0 capacity:1];

              [v11 addInput:v24];
              ++v20;
            }

            while (v18 != v20);
            v18 = [outputs countByEnumeratingWithState:&v37 objects:v50 count:16];
          }

          while (v18);
        }

        ++v14;
      }

      while (v14 != v13);
      v13 = [obj countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v13);
  }

  [v11 setFunction:tester_probe_task userdata:selfCopy->_probeData];
  [v31 addTask:v11];
  v25 = objc_alloc(MEMORY[0x277CBEB98]);
  v49[0] = selfCopy->_graph;
  v49[1] = v33;
  v49[2] = v31;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  v27 = [v25 initWithArray:v26];

  session = selfCopy->_session;
  v36 = 0;
  v29 = [(PSExecutionSession *)session commitAddedGraphs:v27 removedGraphs:0 option:1 error:&v36];

  return v29;
}

- (BOOL)commitTargetGraph:(id)graph
{
  selfCopy = self;
  v40 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v25 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"verification_prober"];
  [v25 setFrequency:{objc_msgSend(graphCopy, "frequency")}];
  v4 = [objc_alloc(MEMORY[0x277D3E6D0]) initWithName:@"probeTask"];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = [graphCopy tasks];
  v5 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v27 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        outputs = [v8 outputs];
        v10 = [outputs countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(outputs);
              }

              v14 = *(*(&v29 + 1) + 8 * j);
              v15 = objc_alloc(MEMORY[0x277D3E6D8]);
              resourceKey = [v14 resourceKey];
              v17 = [v15 initWithResourceKey:resourceKey type:0 capacity:1];

              [v4 addInput:v17];
            }

            v11 = [outputs countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v6);
  }

  [v4 setFunction:tester_probe_task userdata:selfCopy->_probeData];
  [v25 addTask:v4];
  v18 = objc_alloc(MEMORY[0x277CBEB98]);
  v37[0] = graphCopy;
  v37[1] = v25;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
  v20 = [v18 initWithArray:v19];

  session = selfCopy->_session;
  v28 = 0;
  v22 = [(PSExecutionSession *)session commitAddedGraphs:v20 removedGraphs:0 option:1 error:&v28];

  return v22;
}

- (BOOL)commitInputResourceGraphs
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D3E698]) initWithName:@"producer_graph"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_inputResourceSetters;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v8)];
        writer = [v9 writer];
        [v3 addWriter:writer];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  [v3 setFrequency:1];
  [v3 setRelativeDeadline:{0x3B9ACA00uLL / objc_msgSend(v3, "frequency")}];
  [v3 setCriticalityCPU:2];
  v11 = objc_alloc(MEMORY[0x277CBEB98]);
  v22 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
  v13 = [v11 initWithArray:v12];

  session = self->_session;
  v17 = 0;
  v15 = [(PSExecutionSession *)session commitAddedGraphs:v13 removedGraphs:0 option:1 error:&v17];

  return v15;
}

- (BOOL)setDataInputForResourceKey:(id)key data:(void *)data
{
  keyCopy = key;
  v7 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKey:keyCopy];

  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:keyCopy];
    [v8 setData:data];
  }

  return v7 != 0;
}

- (BOOL)runGraph
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_inputResourceSetters;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8, v19];
        writer = [v9 writer];
        [writer context];
        ps_writer_acquire();

        v11 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        data = [v11 data];
        [(SIPolarisGraphTester *)self copyData:data toResource:v23];

        v13 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        writer2 = [v13 writer];
        [writer2 context];
        ps_writer_relinquish();

        v15 = [(NSMutableDictionary *)self->_inputResourceSetters objectForKeyedSubscript:v8];
        writer3 = [v15 writer];
        [writer3 context];
        ++self->_surfaceSerialCount;
        ps_writer_publish();
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  probeGraphSem = [(SIPolarisGraphTesterProbeData *)self->_probeData probeGraphSem];
  dispatch_semaphore_wait(probeGraphSem, 0xFFFFFFFFFFFFFFFFLL);

  return 1;
}

- (void)copyData:(void *)data toResource:(ps_resource *)resource
{
  v24 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v5 = ps_resource_get_class();
    switch(v5)
    {
      case 1:
        ps_resource_get_data();
        break;
      case 2:
        v18 = ps_resource_get_object();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dataCopy = data;
          v9 = v18;
          SIPixelBufferCopy([dataCopy depthMap], objc_msgSend(v9, "depthMap"));
          SIPixelBufferCopy([dataCopy normalsBuffer], objc_msgSend(v9, "normalsBuffer"));
          [dataCopy deviceTransform];
          [v9 setDeviceTransform:?];
          [dataCopy extrinsicsToAppNode];
          v16 = v11;
          v17 = v10;
          v14 = v13;
          v15 = v12;

          [v9 setExtrinsicsToAppNode:{v17, v16, v15, v14}];
        }

        break;
      case 7:
        pixelbuffer = ps_resource_get_pixelbuffer();

        SIPixelBufferCopy(data, pixelbuffer);
        break;
    }
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      buf[0] = 136381187;
      *&buf[1] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/PolarisGraph/SIPolarisGraphTester/SIPolarisGraphTester.m";
      v20 = 1025;
      v21 = 256;
      v22 = 2081;
      key = ps_resource_get_key();
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** Warning: trying to copy nil data for polaris resource [%{private}s]. Ignored ***", buf, 0x1Cu);
    }
  }
}

- (ps_resource)getResourceForName:(id)name
{
  probeData = self->_probeData;
  nameCopy = name;
  resourceData = [(SIPolarisGraphTesterProbeData *)probeData resourceData];
  v6 = [resourceData objectForKeyedSubscript:nameCopy];

  resource = [v6 resource];
  return resource;
}

- (void)dealloc
{
  session = self->_session;
  v6 = 0;
  [(PSExecutionSession *)session stopAllGraphs:1 error:&v6];
  v4 = v6;
  [(PSExecutionSession *)self->_session deleteSession];

  v5.receiver = self;
  v5.super_class = SIPolarisGraphTester;
  [(SIPolarisGraphTester *)&v5 dealloc];
}

@end