@interface PTPersonSemanticsNetwork
- (PTPersonSemanticsNetwork)initWithMetalContext:(id)context sharedResources:(id)resources;
- (id)espressoFileURLFor:(id)for prefix:(id)prefix chipId:(id)id;
- (unsigned)executeNetwork:(id)network;
@end

@implementation PTPersonSemanticsNetwork

- (id)espressoFileURLFor:(id)for prefix:(id)prefix chipId:(id)id
{
  if (id)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.%@.espresso.net", for, prefix, id];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v5];

    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PTPersonSemanticsNetwork)initWithMetalContext:(id)context sharedResources:(id)resources
{
  v73 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  resourcesCopy = resources;
  v69.receiver = self;
  v69.super_class = PTPersonSemanticsNetwork;
  v9 = [(PTPersonSemanticsNetwork *)&v69 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metalContext, context);
    kdebug_trace();
    v11 = MGGetBoolAnswer();
    if ((v11 & 1) == 0)
    {
      v17 = _PTLogSystem(v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }

      v33 = 0;
      goto LABEL_54;
    }

    PTKTraceInit(v11, v12);
    effectUtil = [resourcesCopy effectUtil];
    effectUtil = v10->_effectUtil;
    v10->_effectUtil = effectUtil;

    inRGBAName = v10->_inRGBAName;
    v10->_inRGBAName = @"image__Placeholder__0";

    v16 = FTGetChipIdentifier();
    v17 = [(PTPersonSemanticsNetwork *)v10 espressoFileURLFor:@"/System/Library/ImagingNetworks" prefix:@"personsemantics-preview-lowfps" chipId:v16];
    v18 = [(PTPersonSemanticsNetwork *)v10 espressoFileURLFor:@"/System/Library/ImagingNetworks" prefix:@"personsemantics-preview" chipId:v16];
    if (!(v17 | v18))
    {
      v64 = v16;
      v60 = resourcesCopy;
      v19 = _PTLogSystem(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }

      v62 = contextCopy;

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v21 = [defaultManager contentsOfDirectoryAtPath:@"/System/Library/ImagingNetworks" error:0];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (!v23)
      {
        v25 = 0;
        v26 = 0;
        goto LABEL_26;
      }

      v24 = v23;
      v25 = 0;
      v26 = 0;
      v27 = *v66;
      while (1)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v66 != v27)
          {
            objc_enumerationMutation(v22);
          }

          v29 = *(*(&v65 + 1) + 8 * i);
          if ([v29 hasSuffix:@".espresso.net"])
          {
            if ([v29 containsString:@"personsemantics-preview-lowfps"])
            {
              v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/System/Library/ImagingNetworks", v29];
              v31 = v26;
              v26 = v30;
            }

            else
            {
              if (![v29 containsString:@"personsemantics-preview"])
              {
                continue;
              }

              v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", @"/System/Library/ImagingNetworks", v29];
              v31 = v25;
              v25 = v32;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v65 objects:v72 count:16];
        if (!v24)
        {
LABEL_26:

          resourcesCopy = v60;
          contextCopy = v62;
          v16 = v64;
          v17 = v26;
          v34 = v25;
          goto LABEL_27;
        }
      }
    }

    v34 = v18;
LABEL_27:
    v35 = v17;
    if (v17 || (v35 = v34) != 0)
    {
      v36 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35];
      segmentationNetwork = [resourcesCopy segmentationNetwork];

      if (segmentationNetwork)
      {
        segmentationNetwork2 = [resourcesCopy segmentationNetwork];
        executor = v10->_executor;
        v10->_executor = segmentationNetwork2;
      }

      else
      {
        v61 = v34;
        v63 = v17;
        executor = +[PTInference ANEConfigForAsynchronousWork];
        v40 = [PTEspressoGenericExecutor alloc];
        metalContext = v10->_metalContext;
        v71 = v10->_inRGBAName;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
        v70[0] = @"skin:0";
        v70[1] = @"person:0";
        v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
        v44 = [(PTEspressoGenericExecutor *)v40 initWithMetalContext:metalContext url:v36 inputNames:v42 outputNames:v43 tensorSwapNames:0 reshapeNetworkSize:0 configuration:0 ANEConfig:executor];
        v45 = v10->_executor;
        v10->_executor = v44;

        if (!v10->_executor)
        {
          v58 = _PTLogSystem(v46);
          v34 = v61;
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
          }

          v33 = 0;
          v17 = v63;
          goto LABEL_53;
        }

        [resourcesCopy setSegmentationNetwork:?];
        v17 = v63;
        v34 = v61;
      }

      kdebug_trace();
      v47 = v10->_executor;
      if (v47)
      {
        v48 = [(PTEspressoGenericExecutor *)v47 getInputResourceWithName:v10->_inRGBAName];
        inRGBA = v10->_inRGBA;
        v10->_inRGBA = v48;

        if (v10->_inRGBA)
        {
          v51 = [(PTEspressoGenericExecutor *)v10->_executor getOutputResourceWithName:@"skin:0"];
          outSkinMask = v10->_outSkinMask;
          v10->_outSkinMask = v51;

          if (v10->_outSkinMask)
          {
            v54 = [(PTEspressoGenericExecutor *)v10->_executor getOutputResourceWithName:@"person:0"];
            outPersonMask = v10->_outPersonMask;
            v10->_outPersonMask = v54;

            if (v10->_outPersonMask)
            {
              v33 = v10;
LABEL_53:

LABEL_54:
              goto LABEL_55;
            }

            v57 = _PTLogSystem(v56);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
            }
          }

          else
          {
            v57 = _PTLogSystem(v53);
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
            }
          }
        }

        else
        {
          v57 = _PTLogSystem(v50);
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
          }
        }
      }

      else
      {
        v57 = _PTLogSystem(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
        }
      }
    }

    else
    {
      v36 = _PTLogSystem(v18);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [PTPersonSemanticsNetwork initWithMetalContext:sharedResources:];
      }
    }

    v33 = 0;
    goto LABEL_53;
  }

  v33 = 0;
LABEL_55:

  return v33;
}

- (unsigned)executeNetwork:(id)network
{
  networkCopy = network;
  kdebug_trace();
  executor = self->_executor;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PTPersonSemanticsNetwork_executeNetwork___block_invoke;
  v7[3] = &unk_278522E90;
  v7[4] = self;
  LODWORD(self) = [(PTEspressoGenericExecutor *)executor executeAsync:v7 metalContext:networkCopy];

  return self;
}

void __43__PTPersonSemanticsNetwork_executeNetwork___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) commandQueue];
  [v1 hash];
  kdebug_trace();
}

- (void)initWithMetalContext:sharedResources:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.6()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithMetalContext:sharedResources:.cold.8()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end