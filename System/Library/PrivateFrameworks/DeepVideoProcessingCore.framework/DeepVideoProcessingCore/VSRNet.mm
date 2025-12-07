@interface VSRNet
- (BOOL)allocateInputBufferObjects;
- (BOOL)getInputPortNames;
- (BOOL)initializeInputPorts;
- (BOOL)processSuperResolutionInputBuffer:(__CVBuffer *)buffer withPrevHighResolutionFrame:(__CVBuffer *)frame outputBuffer:(__CVBuffer *)outputBuffer;
- (VSRNet)initWithModelPath:(id)path inputWidth:(unint64_t)width inputHeight:(unint64_t)height;
- (void)allocateInputBufferObjects;
- (void)dealloc;
- (void)initializeInputPorts;
@end

@implementation VSRNet

- (BOOL)initializeInputPorts
{
  [(VSRNet *)self getInputPortNames];
  [(SRNet *)self operation];
  v3 = [(NSMutableArray *)self->_inputPortNames objectAtIndexedSubscript:0];
  [v3 UTF8String];
  v4 = e5rt_execution_stream_operation_retain_input_port();

  if (v4)
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet initializeInputPorts];
    }

    return 0;
  }

  [(SRNet *)self operation];
  inputPortNames = self->_inputPortNames;
  v6 = 1;
  v7 = [(NSMutableArray *)inputPortNames objectAtIndexedSubscript:1];
  [v7 UTF8String];
  v8 = e5rt_execution_stream_operation_retain_input_port();

  if (v8)
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet initializeInputPorts];
    }

    return 0;
  }

  return v6;
}

- (BOOL)getInputPortNames
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = 0;
  [(SRNet *)self operation];
  if (!e5rt_execution_stream_operation_get_num_inputs())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v2)
      {
        return v2;
      }

      [VSRNet getInputPortNames];
    }

    goto LABEL_6;
  }

  if ((global_logLevel & 0x10) == 0)
  {
LABEL_6:
    LOBYTE(v2) = 0;
    return v2;
  }

  v2 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    [VSRNet getInputPortNames];
    goto LABEL_6;
  }

  return v2;
}

- (BOOL)allocateInputBufferObjects
{
  v30 = *MEMORY[0x277D85DE8];
  v21[2] = 0;
  input_ports = self->_input_ports;
  if (e5rt_io_port_retain_tensor_desc())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
LABEL_15:
      LOBYTE(v4) = 0;
      return v4;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [VSRNet allocateInputBufferObjects];
      goto LABEL_15;
    }
  }

  else if (e5rt_tensor_desc_alloc_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) == 0)
    {
      goto LABEL_15;
    }

    v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      [VSRNet allocateInputBufferObjects];
      goto LABEL_15;
    }
  }

  else
  {
    v21[1] = 0;
    if (e5rt_io_port_retain_tensor_desc())
    {
      e5rt_get_last_error_message();
      if ((global_logLevel & 0x10) == 0)
      {
        goto LABEL_15;
      }

      v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (v4)
      {
        [VSRNet allocateInputBufferObjects];
        goto LABEL_15;
      }
    }

    else
    {
      if (e5rt_tensor_desc_alloc_buffer_object())
      {
        e5rt_get_last_error_message();
        if ((global_logLevel & 0x10) != 0)
        {
          v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
          if (!v4)
          {
            return v4;
          }

          [VSRNet allocateInputBufferObjects];
        }

        goto LABEL_15;
      }

      e5rt_tensor_desc_release();
      e5rt_tensor_desc_release();
      v20 = 0;
      v21[0] = 0;
      v18 = 0;
      v19 = 0;
      getPortShape(*input_ports, v21, &v20, &v19, &v18);
      if ((global_logLevel & 8) != 0)
      {
        v5 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
        {
          inputPortNames = self->_inputPortNames;
          v8 = v5;
          v9 = [(NSMutableArray *)inputPortNames objectAtIndexedSubscript:0];
          *buf = 138413058;
          v23 = v9;
          v24 = 2048;
          v25 = v21[0];
          v26 = 2048;
          v27 = v20;
          v28 = 2048;
          v29 = v19;
          _os_log_debug_impl(&dword_24874B000, v8, OS_LOG_TYPE_DEBUG, "Input0 [%@]: %ld x %ld x %ld", buf, 0x2Au);
        }
      }

      v16 = 0;
      v17 = 0;
      v15 = 0;
      getPortShape(input_ports[1], &v17, &v16, &v15, &v14);
      if ((global_logLevel & 8) != 0)
      {
        v6 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
        {
          v10 = self->_inputPortNames;
          v11 = v6;
          v12 = [(NSMutableArray *)v10 objectAtIndexedSubscript:1];
          *buf = 138413058;
          v23 = v12;
          v24 = 2048;
          v25 = v17;
          v26 = 2048;
          v27 = v16;
          v28 = 2048;
          v29 = v15;
          _os_log_debug_impl(&dword_24874B000, v11, OS_LOG_TYPE_DEBUG, "Input1 [%@]: %ld x %ld x %ld", buf, 0x2Au);
        }
      }

      if (v19 == 3)
      {
        if (e5rt_buffer_object_get_iosurface())
        {
          e5rt_get_last_error_message();
          if ((global_logLevel & 0x10) != 0)
          {
            v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            [VSRNet allocateInputBufferObjects];
          }

          goto LABEL_15;
        }

        if (e5rt_buffer_object_get_iosurface())
        {
          e5rt_get_last_error_message();
          if ((global_logLevel & 0x10) != 0)
          {
            v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            [VSRNet allocateInputBufferObjects];
          }

          goto LABEL_15;
        }
      }

      else
      {
        if (e5rt_buffer_object_get_iosurface())
        {
          e5rt_get_last_error_message();
          if ((global_logLevel & 0x10) != 0)
          {
            v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            [VSRNet allocateInputBufferObjects];
          }

          goto LABEL_15;
        }

        if (e5rt_buffer_object_get_iosurface())
        {
          e5rt_get_last_error_message();
          if ((global_logLevel & 0x10) != 0)
          {
            v4 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
            if (!v4)
            {
              return v4;
            }

            [VSRNet allocateInputBufferObjects];
          }

          goto LABEL_15;
        }
      }

      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = 0;
  inputBufferObjects = self->_inputBufferObjects;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = &inputBufferObjects[v3];
    if (*v7)
    {
      e5rt_buffer_object_release();
      *v7 = 0;
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  if (self->_input_ports[0])
  {
    e5rt_io_port_release();
  }

  if (self->_input_ports[1])
  {
    e5rt_io_port_release();
  }

  v8.receiver = self;
  v8.super_class = VSRNet;
  [(SRNet *)&v8 dealloc];
}

- (BOOL)processSuperResolutionInputBuffer:(__CVBuffer *)buffer withPrevHighResolutionFrame:(__CVBuffer *)frame outputBuffer:(__CVBuffer *)outputBuffer
{
  normalization = [(SRNet *)self normalization];
  LODWORD(buffer) = [normalization convertBuffer:buffer toFP16IOSurface:self->_inputSurface];

  if (!buffer)
  {
    return 0;
  }

  normalization2 = [(SRNet *)self normalization];
  v11 = [normalization2 convertBuffer:frame toFP16ShuffledIOSurface:self->_prevHRSurface];

  if (!v11)
  {
    return 0;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:];
    }

    return 0;
  }

  if (e5rt_io_port_bind_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:];
    }

    return 0;
  }

  [(SRNet *)self output_port];
  [(SRNet *)self outputBufferObject];
  if (e5rt_io_port_bind_buffer_object())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VSRNet processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:];
    }

    return 0;
  }

  v12 = [(SRNet *)self executeSynchronouslyOperation:[(SRNet *)self operation] onStream:[(SRNet *)self stream]];
  normalization3 = [(SRNet *)self normalization];
  v15 = [normalization3 convertFP16IOSurface:-[SRNet outputSurface](self toBuffer:{"outputSurface"), outputBuffer}];

  if (!v15 || ![(SRNet *)self resetStream:[(SRNet *)self stream]])
  {
    return 0;
  }

  return v12;
}

- (VSRNet)initWithModelPath:(id)path inputWidth:(unint64_t)width inputHeight:(unint64_t)height
{
  v9.receiver = self;
  v9.super_class = VSRNet;
  v5 = [(SRNet *)&v9 initWithModelPath:path inputWidth:width inputHeight:height];
  v6 = v5;
  if (!v5 || [(VSRNet *)v5 initializeInputPorts]&& [(VSRNet *)v6 allocateInputBufferObjects])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initializeInputPorts
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)allocateInputBufferObjects
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:.cold.1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:.cold.2()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

- (void)processSuperResolutionInputBuffer:withPrevHighResolutionFrame:outputBuffer:.cold.3()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

@end