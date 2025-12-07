@interface ABPKMLNetworkBufferV2
- (ABPKMLNetworkBufferV2)initWithName:(id)name operation:(e5rt_execution_stream_operation *)operation bindMode:(int64_t)mode useSurface:(BOOL)surface;
- (BOOL)_readSurfaceDescriptor;
- (BOOL)_readTensorDescriptor;
- (void)dealloc;
- (void)setInput:(id)input FromIOSurface:(__IOSurface *)surface;
@end

@implementation ABPKMLNetworkBufferV2

- (ABPKMLNetworkBufferV2)initWithName:(id)name operation:(e5rt_execution_stream_operation *)operation bindMode:(int64_t)mode useSurface:(BOOL)surface
{
  v23[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = ABPKMLNetworkBufferV2;
  v11 = [(ABPKMLNetworkBufferV2 *)&v21 init];
  v12 = v11;
  if (!v11)
  {
LABEL_27:
    v17 = v12;
    goto LABEL_28;
  }

  objc_storeStrong(&v11->_name, name);
  v12->_useSurface = surface;
  if (mode)
  {
    [nameCopy UTF8String];
    if (e5rt_execution_stream_operation_retain_output_port())
    {
      goto LABEL_29;
    }
  }

  else
  {
    [(NSString *)v12->_name UTF8String];
    if (e5rt_execution_stream_operation_retain_input_port())
    {
      goto LABEL_29;
    }
  }

  if (v12->_useSurface)
  {
    if (e5rt_io_port_retain_surface_desc())
    {
      goto LABEL_29;
    }

    if ([(ABPKMLNetworkBufferV2 *)v12 _readSurfaceDescriptor])
    {
      if (e5rt_surface_object_alloc() || e5rt_io_port_bind_surface_object())
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (e5rt_io_port_retain_tensor_desc())
    {
      goto LABEL_29;
    }

    _readTensorDescriptor = [(ABPKMLNetworkBufferV2 *)v12 _readTensorDescriptor];
    if (_readTensorDescriptor)
    {
      v22 = *MEMORY[0x277CC4DE8];
      v23[0] = MEMORY[0x277CBEC10];
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v15 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v12->_width, v12->_channels * v12->_height * v12->_batchNumber, 0x4C303068u, v14, &v12->_pixelBuffer);
      if (!v15)
      {
        CVPixelBufferLockBaseAddress(v12->_pixelBuffer, 0);
        CVPixelBufferGetIOSurface(v12->_pixelBuffer);
        if (e5rt_buffer_object_create_from_iosurface() || e5rt_io_port_bind_buffer_object() || e5rt_buffer_object_get_data_ptr() || e5rt_buffer_object_get_size())
        {
LABEL_29:
          last_error_message = e5rt_get_last_error_message();
          printf("E5RT operation failed with message = %s", last_error_message);
          exit(1);
        }

        CVPixelBufferUnlockBaseAddress(v12->_pixelBuffer, 0);

        goto LABEL_27;
      }

      v16 = __ABPKLogSharedInstance(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v16, OS_LOG_TYPE_ERROR, " Could not create espresso v2 output buffer ", buf, 2u);
      }
    }

    else
    {
      v14 = __ABPKLogSharedInstance(_readTensorDescriptor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v14, OS_LOG_TYPE_ERROR, " Reading tensor descriptor failed ", buf, 2u);
      }
    }
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (BOOL)_readSurfaceDescriptor
{
  if (e5rt_surface_desc_get_format() || e5rt_surface_desc_get_width() || e5rt_surface_desc_get_height())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  return 1;
}

- (BOOL)_readTensorDescriptor
{
  if (e5rt_tensor_desc_retain_dtype() || e5rt_tensor_desc_dtype_get_num_components() || e5rt_tensor_desc_dtype_get_component_dtype() || e5rt_tensor_desc_dtype_get_element_size() || e5rt_tensor_desc_get_shape() || (self->_width = 1, self->_height = 1, self->_channels = 1, self->_batchNumber = 1, self->_sequenceLength = 1, e5rt_tensor_desc_get_strides()))
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }

  bytesPerElement = self->_bytesPerElement;
  self->_strideWidth = MEMORY[0] / bytesPerElement;
  self->_strideHeight = MEMORY[0] / bytesPerElement;
  self->_strideChannels = MEMORY[0] / bytesPerElement;
  self->_strideBatchNumber = MEMORY[0] / bytesPerElement;
  self->_strideSequenceLength = MEMORY[0] / bytesPerElement;
  e5rt_tensor_desc_dtype_release();
  return 1;
}

- (void)setInput:(id)input FromIOSurface:(__IOSurface *)surface
{
  inputCopy = input;
  if (self->_surfaceObject && e5rt_surface_object_release() || e5rt_surface_object_create_from_iosurface() || e5rt_io_port_bind_surface_object())
  {
    last_error_message = e5rt_get_last_error_message();
    printf("E5RT operation failed with message = %s", last_error_message);
    exit(1);
  }
}

- (void)dealloc
{
  if (self->_memory)
  {
    e5rt_buffer_object_release();
  }

  if (self->_surfaceObject)
  {
    e5rt_surface_object_release();
  }

  if (self->_tensorDesc)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_surfaceDesc)
  {
    e5rt_surface_desc_release();
  }

  if (self->_port)
  {
    e5rt_io_port_release();
  }

  pixelBuffer = self->_pixelBuffer;
  if (pixelBuffer)
  {
    CVPixelBufferRelease(pixelBuffer);
  }

  v4.receiver = self;
  v4.super_class = ABPKMLNetworkBufferV2;
  [(ABPKMLNetworkBufferV2 *)&v4 dealloc];
}

@end