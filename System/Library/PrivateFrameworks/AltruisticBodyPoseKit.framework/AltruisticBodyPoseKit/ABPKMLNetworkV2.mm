@interface ABPKMLNetworkV2
- (ABPKMLNetworkV2)initWithNetworkPath:(id)path networkConfig:(id)config inputNames:(id)names outputNames:(id)outputNames useSurface:(BOOL)surface;
- (BOOL)changeNetWorkConfig:(id)config;
- (BOOL)execute;
- (void)dealloc;
@end

@implementation ABPKMLNetworkV2

- (ABPKMLNetworkV2)initWithNetworkPath:(id)path networkConfig:(id)config inputNames:(id)names outputNames:(id)outputNames useSurface:(BOOL)surface
{
  v60 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  configCopy = config;
  namesCopy = names;
  outputNamesCopy = outputNames;
  v55.receiver = self;
  v55.super_class = ABPKMLNetworkV2;
  v16 = [(ABPKMLNetworkV2 *)&v55 init];
  v17 = v16;
  if (v16)
  {
    v46 = outputNamesCopy;
    v18 = __ABPKLogSharedInstance(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v59 = configCopy;
      _os_log_impl(&dword_23EDDC000, v18, OS_LOG_TYPE_DEBUG, " network  config %@. ", buf, 0xCu);
    }

    [pathCopy UTF8String];
    [pathCopy UTF8String];
    [configCopy UTF8String];
    if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
    {
      goto LABEL_31;
    }

    v19 = [pathCopy copy];
    networkPath = v17->_networkPath;
    v17->_networkPath = v19;

    v17->_useSurface = surface;
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = namesCopy;
    v22 = namesCopy;
    v23 = [v22 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      while (2)
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v51 + 1) + 8 * i);
          v28 = [[ABPKMLNetworkBufferV2 alloc] initWithName:v27 operation:v17->_operation bindMode:0 useSurface:v17->_useSurface];
          if (!v28)
          {
            v40 = __ABPKLogSharedInstance(0);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v59 = v27;
              _os_log_impl(&dword_23EDDC000, v40, OS_LOG_TYPE_ERROR, " Could not create network buffer %@. ", buf, 0xCu);
            }

            v39 = 0;
            namesCopy = v45;
            outputNamesCopy = v46;
            goto LABEL_30;
          }

          v29 = v28;
          [v21 setObject:v28 forKeyedSubscript:v27];
        }

        v24 = [v22 countByEnumeratingWithState:&v51 objects:v57 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    objc_storeStrong(&v17->_inputBuffers, v21);
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v31 = v46;
    v32 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (!v32)
    {
      goto LABEL_21;
    }

    v33 = v32;
    v34 = *v48;
    v44 = pathCopy;
LABEL_15:
    v35 = 0;
    while (1)
    {
      if (*v48 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v47 + 1) + 8 * v35);
      v37 = [[ABPKMLNetworkBufferV2 alloc] initWithName:v36 operation:v17->_operation bindMode:1 useSurface:0];
      if (!v37)
      {
        break;
      }

      v38 = v37;
      [v30 setObject:v37 forKeyedSubscript:v36];

      if (v33 == ++v35)
      {
        v33 = [v31 countByEnumeratingWithState:&v47 objects:v56 count:16];
        pathCopy = v44;
        if (!v33)
        {
LABEL_21:

          objc_storeStrong(&v17->_outputBuffers, v30);
          if (!e5rt_execution_stream_create())
          {

            namesCopy = v45;
            outputNamesCopy = v46;
            goto LABEL_23;
          }

LABEL_31:
          last_error_message = e5rt_get_last_error_message();
          printf("E5RT operation failed with message = %s", last_error_message);
          exit(1);
        }

        goto LABEL_15;
      }
    }

    v41 = __ABPKLogSharedInstance(0);
    outputNamesCopy = v46;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v59 = v36;
      _os_log_impl(&dword_23EDDC000, v41, OS_LOG_TYPE_ERROR, " Could not create network buffer %@. ", buf, 0xCu);
    }

    v39 = 0;
    pathCopy = v44;
    namesCopy = v45;
  }

  else
  {
LABEL_23:
    v39 = v17;
  }

LABEL_30:

  return v39;
}

- (BOOL)execute
{
  e5rt_execution_stream_encode_operation();
  if (e5rt_execution_stream_execute_sync())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  e5rt_execution_stream_reset();
  return 1;
}

- (BOOL)changeNetWorkConfig:(id)config
{
  v12 = *MEMORY[0x277D85DE8];
  configCopy = config;
  if (e5rt_execution_stream_operation_release())
  {
    goto LABEL_10;
  }

  [(NSString *)self->_networkPath UTF8String];
  [(NSString *)self->_networkPath UTF8String];
  [configCopy UTF8String];
  if (e5rt_execution_stream_operation_create_precompiled_compute_operation())
  {
    goto LABEL_10;
  }

  num_inputs = e5rt_execution_stream_operation_get_num_inputs();
  if (num_inputs)
  {
    goto LABEL_10;
  }

  v6 = __ABPKLogSharedInstance(num_inputs);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_DEBUG, " Expected input names: ", buf, 2u);
  }

  v7 = malloc_type_malloc(0, 0x10040436913F5uLL);
  if (e5rt_execution_stream_operation_get_input_names() || (free(v7), e5rt_execution_stream_operation_get_num_outputs()) || (v8 = malloc_type_malloc(0, 0x10040436913F5uLL), e5rt_execution_stream_operation_get_output_names()))
  {
LABEL_10:
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  free(v8);

  return 1;
}

- (void)dealloc
{
  e5rt_execution_stream_release();
  e5rt_execution_stream_operation_release();
  v3.receiver = self;
  v3.super_class = ABPKMLNetworkV2;
  [(ABPKMLNetworkV2 *)&v3 dealloc];
}

@end