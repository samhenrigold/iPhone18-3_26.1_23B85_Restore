@interface PSCVDataBufferResource
- (PSCVDataBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format;
- (id)deserialize:(char *)deserialize timeStamp:(unint64_t *)stamp;
- (void)copyCVDataBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output;
- (void)dealloc;
- (void)serialize:(id)serialize buff:(char *)buff time:(unint64_t)time buff_size:(unsigned int)buff_size;
- (void)writeDataBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time view_index:(int *)view_index;
@end

@implementation PSCVDataBufferResource

- (PSCVDataBufferResource)initWithKey:(id)key width:(unint64_t)width height:(unint64_t)height pixelFormat:(unsigned int)format
{
  keyCopy = key;
  v14.receiver = self;
  v14.super_class = PSCVDataBufferResource;
  v11 = [(PSCVDataBufferResource *)&v14 init];
  if (v11)
  {
    v12 = malloc_type_malloc(0x18uLL, 0x10000400CE834B2uLL);
    v11->cvdata_attributes = v12;
    if (v12)
    {
      v12->var0 = width;
      v12->var1 = height;
      v12->var2 = format;
      [keyCopy cStringUsingEncoding:4];
      v11->_writer = ps_buffer_create_group_writer_with_options();
      MEMORY[0x25F8C8900]();
      MEMORY[0x25F8C8D90](v11->_writer, cvdataBufferAllocator, v11->cvdata_attributes);
      MEMORY[0x25F8C88E0](v11->_writer, 8, 1, 0);
      MEMORY[0x25F8C8900](v11->_writer, 8);
      MEMORY[0x25F8C8C70](v11->_writer);
    }
  }

  return v11;
}

- (void)dealloc
{
  cvdata_attributes = self->cvdata_attributes;
  if (cvdata_attributes)
  {
    free(cvdata_attributes);
  }

  if (self->_writer)
  {
    ps_buffer_delete_write_buffer();
  }

  v4.receiver = self;
  v4.super_class = PSCVDataBufferResource;
  [(PSCVDataBufferResource *)&v4 dealloc];
}

- (void)serialize:(id)serialize buff:(char *)buff time:(unint64_t)time buff_size:(unsigned int)buff_size
{
  serializeCopy = serialize;
  v11 = serializeCopy;
  if (!serializeCopy)
  {
    if (buff_size >= 0x11)
    {
      *buff = 0;
      *(buff + 1) = time;
      goto LABEL_7;
    }

LABEL_10:
    [PSCVDataBufferResource serialize:serializeCopy buff:v10 time:? buff_size:?];
  }

  serializeCopy = [serializeCopy length];
  if (serializeCopy + 16 >= buff_size)
  {
    goto LABEL_10;
  }

  *buff = serializeCopy;
  *(buff + 1) = time;
  if (serializeCopy)
  {
    [v11 getBytes:buff + 20 length:{objc_msgSend(v11, "length")}];
  }

LABEL_7:
}

- (id)deserialize:(char *)deserialize timeStamp:(unint64_t *)stamp
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = _polarisdLogSharedInstance(self, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v21 = 134217984;
    deserializeCopy = deserialize;
    _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Deserializing from mem(%p)!!!\n", &v21, 0xCu);
  }

  v9 = _polarisdLogSharedInstance(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *deserialize;
    v21 = 134217984;
    deserializeCopy = v10;
    _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "Deserialized: len %lul \n", &v21, 0xCu);
  }

  *stamp = *(deserialize + 1);
  v13 = _polarisdLogSharedInstance(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = *stamp;
    v21 = 134217984;
    deserializeCopy = v14;
    _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_ERROR, "Deserialized: timeStamp %llul \n", &v21, 0xCu);
  }

  if (*deserialize)
  {
    v15 = [MEMORY[0x277CBEA90] dataWithBytes:deserialize + 20 length:?];
    v17 = _polarisdLogSharedInstance(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v15 length];
      v19 = *stamp;
      v21 = 134218240;
      deserializeCopy = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "Deserialized: %lul @%llu.....\n", &v21, 0x16u);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)copyCVDataBufferWithInput:(__CVBuffer *)input output:(__CVBuffer *)output
{
  if (input)
  {
    if (output)
    {
      DataSize = CVDataBufferGetDataSize();
      IOSurface = CVDataBufferGetIOSurface();
      if (IOSurface)
      {
        v7 = IOSurface;
        v8 = CVDataBufferGetIOSurface();
        if (v8)
        {
          v10 = v8;
          IOSurfaceLock(v8, 0, 0);
          BaseAddress = IOSurfaceGetBaseAddress(v10);
          IOSurfaceLock(v7, 0, 0);
          v12 = IOSurfaceGetBaseAddress(v7);
          memcpy(BaseAddress, v12, DataSize);
          IOSurfaceUnlock(v7, 0, 0);

          IOSurfaceUnlock(v10, 0, 0);
        }

        else
        {
          [PSCVDataBufferResource copyCVDataBufferWithInput:v9 output:?];
        }
      }

      else
      {
        [PSCVDataBufferResource copyCVDataBufferWithInput:v6 output:?];
      }
    }

    else
    {
      [PSCVDataBufferResource copyCVDataBufferWithInput:a2 output:?];
    }
  }

  else
  {
    [PSCVDataBufferResource copyCVDataBufferWithInput:a2 output:?];
  }
}

- (void)writeDataBuffer:(__CVBuffer *)buffer metadata:(id)metadata time:(id *)time view_index:(int *)view_index
{
  metadataCopy = metadata;
  v11 = ps_buffer_get_write_buffers();
  v12 = *(v11 + 8);
  v13 = *(v11 + 40);
  **(v11 + 104) = 1;
  [(PSCVDataBufferResource *)self copyCVDataBufferWithInput:buffer output:v12];
  v14 = *time;
  [(PSCVDataBufferResource *)self serialize:metadataCopy buff:v13 time:CMClockConvertHostTimeToSystemUnits(&v14) buff_size:90112];

  *view_index = ps_buffer_release_write_buffers();
}

- (void)serialize:(uint64_t)a1 buff:(uint64_t)a2 time:buff_size:.cold.1(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  abort();
}

- (void)copyCVDataBufferWithInput:(uint64_t)a1 output:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

- (void)copyCVDataBufferWithInput:(uint64_t)a1 output:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

- (void)copyCVDataBufferWithInput:(uint64_t)a1 output:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

- (void)copyCVDataBufferWithInput:(uint64_t)a1 output:(uint64_t)a2 .cold.4(uint64_t a1, uint64_t a2)
{
  v3 = _polarisdLogSharedInstance(a1, a2);
  if (OUTLINED_FUNCTION_1_1(v3))
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_0_0();
    _os_log_impl(v4, v5, v6, v7, v8, 0x12u);
  }
}

@end