@interface SIE5RTTensorPortDescriptor
- (BOOL)isPacked;
- (BOOL)isPackedFP32;
- (BOOL)isS8_ANE;
- (BOOL)isU8_ANE;
- (SIE5RTTensorPortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type engineType:(int64_t)engineType surfaceAllocator:(id)allocator;
- (const)getShape;
- (const)getStrides;
- (e5rt_tensor_desc)createPackedFP32TensorDescriptor;
- (id)constructUndimensionedSurfaceWithAllocator:(id)allocator;
- (int)getComponentType;
- (int64_t)bindSurface:(id)surface;
- (unint64_t)getComponentSize;
- (unint64_t)getNumberOfElements;
- (unint64_t)getRank;
- (unint64_t)getSizeInBytes;
- (unsigned)getNumComponents;
- (void)bindRawPointer:(const void *)pointer;
- (void)dealloc;
- (void)getDataPtr;
@end

@implementation SIE5RTTensorPortDescriptor

- (id)constructUndimensionedSurfaceWithAllocator:(id)allocator
{
  allocatorCopy = allocator;
  1278226488 = [allocatorCopy allocateWithWidth:+[SIIOSurfaceAllocator alignAllocation:](SIIOSurfaceAllocator height:"alignAllocation:" pixelFormat:-[SIE5RTTensorPortDescriptor getSizeInBytes](self, "getSizeInBytes")), 1, 1278226488];

  return 1278226488;
}

- (SIE5RTTensorPortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type engineType:(int64_t)engineType surfaceAllocator:(id)allocator
{
  v58 = *MEMORY[0x277D85DE8];
  allocatorCopy = allocator;
  v51.receiver = self;
  v51.super_class = SIE5RTTensorPortDescriptor;
  v11 = [(SIE5RTTensorPortDescriptor *)&v51 init];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = e5rt_io_port_retain_tensor_desc();
  if (v12)
  {
    v13 = __SceneIntelligenceLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 57);
      *buf = 136381187;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 57;
      v56 = 2113;
      v57 = v14;
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
    }

    v16 = __SceneIntelligenceLogSharedInstance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = "YES";
      desc = v11->_desc;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      *buf = 136381187;
      if (!desc)
      {
        v17 = "NO";
      }

      v54 = 1025;
      v55 = 57;
      v56 = 2081;
      v57 = v17;
      _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to retain the tensor descriptor: desc has been init: %{private}s ***", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v11->_port = port;
  v11->_engineType = engineType;
  v11->_portType = type;
  if ([(SIE5RTTensorPortDescriptor *)v11 getComponentType])
  {
    v21 = 0;
  }

  else
  {
    v21 = [(SIE5RTTensorPortDescriptor *)v11 getNumComponents]== 4;
  }

  v11->_isFP32 = [(SIE5RTTensorPortDescriptor *)v11 isPackedFP32]|| v21;
  v11->_isFP16_ANE = [(SIE5RTTensorPortDescriptor *)v11 isFP16_ANE];
  v11->_isS8_ANE = [(SIE5RTTensorPortDescriptor *)v11 isS8_ANE];
  v11->_isU8_ANE = [(SIE5RTTensorPortDescriptor *)v11 isU8_ANE];
  createPackedFP32TensorDescriptor = [(SIE5RTTensorPortDescriptor *)v11 createPackedFP32TensorDescriptor];
  v11->_client_desc = createPackedFP32TensorDescriptor;
  if (type != 1)
  {
LABEL_55:
    if (v11->_desc)
    {
      if (v11->_client_desc)
      {
        v19 = v11;
        goto LABEL_11;
      }

      v16 = __SceneIntelligenceLogSharedInstance(createPackedFP32TensorDescriptor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 146;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** client tensor descriptor is nil in tesnor port descriptor ***", buf, 0x12u);
      }
    }

    else
    {
      v16 = __SceneIntelligenceLogSharedInstance(createPackedFP32TensorDescriptor);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 141;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** tensor descriptor is nil in tesnor port descriptor ***", buf, 0x12u);
      }
    }

    goto LABEL_9;
  }

  getWidth = [(SIE5RTTensorPortDescriptor *)v11 getWidth];
  getHeight = [(SIE5RTTensorPortDescriptor *)v11 getHeight];
  getChannels = [(SIE5RTTensorPortDescriptor *)v11 getChannels];
  createE5RTBuffer = 0;
  if (v11->_engineType == 2)
  {
    v26 = e5rt_tensor_desc_alloc_buffer_object();
    if (v26)
    {
      v27 = __SceneIntelligenceLogSharedInstance(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 85);
        *buf = 136381187;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 85;
        v56 = 2113;
        v57 = v28;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v29);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 85;
      v30 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for output port. ***";
      goto LABEL_66;
    }

    createPackedFP32TensorDescriptor = e5rt_io_port_bind_buffer_object();
    if (createPackedFP32TensorDescriptor)
    {
      v36 = __SceneIntelligenceLogSharedInstance(createPackedFP32TensorDescriptor);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 88);
        *buf = 136381187;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 88;
        v56 = 2113;
        v57 = v37;
        _os_log_impl(&dword_21DE0D000, v36, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v38);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 88;
      v30 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
      goto LABEL_66;
    }

    goto LABEL_54;
  }

  if (getChannels != 1)
  {
    v32 = e5rt_tensor_desc_alloc_buffer_object();
    if (v32)
    {
      v33 = __SceneIntelligenceLogSharedInstance(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 94);
        *buf = 136381187;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 94;
        v56 = 2113;
        v57 = v34;
        _os_log_impl(&dword_21DE0D000, v33, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v35);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 94;
      v30 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for output port. ***";
    }

    else
    {
      v39 = [[SIIOSurface alloc] initFromE5RTBuffer:0];
      memory_surface = v11->_memory_surface;
      v11->_memory_surface = v39;

      createPackedFP32TensorDescriptor = e5rt_io_port_bind_buffer_object();
      if (!createPackedFP32TensorDescriptor)
      {
        goto LABEL_54;
      }

      v41 = __SceneIntelligenceLogSharedInstance(createPackedFP32TensorDescriptor);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 106);
        *buf = 136381187;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 106;
        v56 = 2113;
        v57 = v42;
        _os_log_impl(&dword_21DE0D000, v41, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v43);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 106;
      v30 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
    }

LABEL_66:
    _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, v30, buf, 0x12u);
    goto LABEL_9;
  }

  v31 = 1278226488;
  if (v11->_isFP32)
  {
    v31 = 1278226534;
  }

  else if (v11->_isFP16_ANE)
  {
    v31 = 1278226536;
  }

  else if (!v11->_isU8_ANE)
  {
    if (v11->_isS8_ANE)
    {
      v31 = 1278226488;
    }

    else
    {
      v31 = 1111970369;
    }
  }

  if (allocatorCopy)
  {
    v44 = [allocatorCopy allocateWithWidth:getWidth height:getHeight pixelFormat:v31];
    v45 = v11->_memory_surface;
    v11->_memory_surface = v44;

    v46 = v11->_memory_surface;
    if (!v46)
    {
      __assert_rtn("[SIE5RTTensorPortDescriptor initWithE5RTPort:portType:engineType:surfaceAllocator:]", "SIE5RTTensorPortDescriptor.mm", 126, "_memory_surface");
    }

    createE5RTBuffer = [(SIIOSurface *)v46 createE5RTBuffer];
    if (!createE5RTBuffer)
    {
      goto LABEL_10;
    }

    createPackedFP32TensorDescriptor = e5rt_io_port_bind_buffer_object();
    if (createPackedFP32TensorDescriptor)
    {
      v47 = __SceneIntelligenceLogSharedInstance(createPackedFP32TensorDescriptor);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 133);
        *buf = 136381187;
        v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v54 = 1025;
        v55 = 133;
        v56 = 2113;
        v57 = v48;
        _os_log_impl(&dword_21DE0D000, v47, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v16 = __SceneIntelligenceLogSharedInstance(v49);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 136380931;
      v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v54 = 1025;
      v55 = 133;
      v30 = " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***";
      goto LABEL_66;
    }

LABEL_54:
    v11->_buffer = createE5RTBuffer;
    goto LABEL_55;
  }

  v16 = __SceneIntelligenceLogSharedInstance(1);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v53 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
    v54 = 1025;
    v55 = 122;
    v30 = " %{private}s:%{private}d *** SurfaceAllocator was required and not provided ***";
    goto LABEL_66;
  }

LABEL_9:

LABEL_10:
  v19 = 0;
LABEL_11:

  return v19;
}

- (void)dealloc
{
  if (self->_port)
  {
    e5rt_io_port_release();
  }

  if (self->_client_desc)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_desc)
  {
    e5rt_tensor_desc_release();
  }

  if (self->_buffer)
  {
    e5rt_buffer_object_release();
  }

  v3.receiver = self;
  v3.super_class = SIE5RTTensorPortDescriptor;
  [(SIE5RTTensorPortDescriptor *)&v3 dealloc];
}

- (int64_t)bindSurface:(id)surface
{
  v46 = *MEMORY[0x277D85DE8];
  surfaceCopy = surface;
  v6 = surfaceCopy;
  if (self->_engineType == 2)
  {
    copyData = [surfaceCopy copyData];
    bytes = [copyData bytes];

    v9 = e5rt_tensor_desc_alloc_buffer_object();
    if (v9)
    {
      v10 = __SceneIntelligenceLogSharedInstance(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 179);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 179;
        v38 = 2113;
        v39 = v11;
        _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v13 = __SceneIntelligenceLogSharedInstance(v12);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v36 = 1025;
      v37 = 179;
      v14 = " %{private}s:%{private}d *** Failed to alloc the internal iosurface for FP16_ANE input port. ***";
LABEL_35:
      _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x12u);
LABEL_36:

      v25 = 4;
      goto LABEL_39;
    }

    data_ptr = e5rt_buffer_object_get_data_ptr();
    if (data_ptr)
    {
      v27 = __SceneIntelligenceLogSharedInstance(data_ptr);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 181);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 181;
        v38 = 2113;
        v39 = v28;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v13 = __SceneIntelligenceLogSharedInstance(v29);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
      v36 = 1025;
      v37 = 181;
      v14 = " %{private}s:%{private}d *** Unable to get data for cpuEspressoData ***";
      goto LABEL_35;
    }

    copyData2 = [v6 copyData];
    memcpy(0, bytes, [copyData2 length]);

LABEL_38:
    v25 = 7;
    goto LABEL_39;
  }

  createE5RTBuffer = [surfaceCopy createE5RTBuffer];
  if (!createE5RTBuffer)
  {
    goto LABEL_38;
  }

  pixelFormat = [v6 pixelFormat];
  if (self->_isFP16_ANE && (pixelFormat == 1717855600 || pixelFormat == 1278226534))
  {
    v16 = e5rt_tensor_utils_cast_from_fp32_to_fp16();
    if (v16)
    {
      v17 = __SceneIntelligenceLogSharedInstance(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 201);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        v36 = 1025;
        v37 = 201;
        v38 = 2113;
        v39 = v18;
        _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v20 = __SceneIntelligenceLogSharedInstance(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        buffer = self->_buffer;
        if (self->_client_desc)
        {
          v22 = "YES";
        }

        else
        {
          v22 = "NO";
        }

        if (self->_desc)
        {
          v23 = "YES";
        }

        else
        {
          v23 = "NO";
        }

        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm";
        if (buffer)
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        *buf = 136381955;
        v36 = 1025;
        v37 = 201;
        v38 = 2081;
        v39 = v22;
        v40 = 2081;
        v41 = v23;
        v42 = 2081;
        v43 = v24;
        v44 = 2081;
        v45 = "YES";
        _os_log_impl(&dword_21DE0D000, v20, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to cast fp32 buffer to fp16. clientDescriptorInit:%{private}s descriptorInit:%{private}s srcBufferInit:%{private}s, dstBufferInit:%{private}s ***", buf, 0x3Au);
      }

      goto LABEL_38;
    }

    e5rt_buffer_object_release();
  }

  else
  {
    e5rt_io_port_bind_buffer_object();
    if (self->_buffer)
    {
      e5rt_buffer_object_release();
    }

    self->_buffer = createE5RTBuffer;
  }

  objc_storeStrong(&self->_memory_surface, surface);
  v25 = 0;
LABEL_39:

  return v25;
}

- (void)bindRawPointer:(const void *)pointer
{
  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v4 = 219;
    goto LABEL_20;
  }

  if (e5rt_tensor_desc_get_size())
  {
    v4 = 222;
    goto LABEL_20;
  }

  if (e5rt_buffer_object_get_data_ptr())
  {
    v4 = 226;
    goto LABEL_20;
  }

  if (!self->_isFP16_ANE)
  {
    if (!self->_isFP32)
    {
      return;
    }

    if (e5rt_io_port_bind_buffer_object())
    {
      v4 = 234;
    }

    else
    {
      buffer = self->_buffer;
      p_buffer = &self->_buffer;
      if (!buffer || !e5rt_buffer_object_release())
      {
        *p_buffer = 0;
        return;
      }

      v4 = 236;
    }

LABEL_20:
    v7 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v4);
    objc_exception_throw(v7);
  }

  if (e5rt_tensor_utils_cast_from_fp32_to_fp16())
  {
    v4 = 230;
    goto LABEL_20;
  }

  if (e5rt_buffer_object_release())
  {
    v4 = 231;
    goto LABEL_20;
  }
}

- (void)getDataPtr
{
  if (e5rt_buffer_object_get_data_ptr())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 245);
    objc_exception_throw(v3);
  }

  return 0;
}

- (int)getComponentType
{
  if (e5rt_tensor_desc_retain_dtype())
  {
    v3 = 252;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_component_dtype())
  {
    v3 = 254;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v3 = 255;
LABEL_8:
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v3);
    objc_exception_throw(v4);
  }

  return 0;
}

- (unsigned)getNumComponents
{
  if (e5rt_tensor_desc_retain_dtype())
  {
    v3 = 262;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_num_components())
  {
    v3 = 264;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v3 = 265;
LABEL_8:
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v3);
    objc_exception_throw(v4);
  }

  return 0;
}

- (unint64_t)getComponentSize
{
  if (e5rt_tensor_desc_retain_dtype())
  {
    v3 = 272;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_get_component_size())
  {
    v3 = 274;
    goto LABEL_8;
  }

  if (e5rt_tensor_desc_dtype_release())
  {
    v3 = 275;
LABEL_8:
    v4 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v3);
    objc_exception_throw(v4);
  }

  return 0;
}

- (unint64_t)getRank
{
  if (e5rt_tensor_desc_get_rank())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 282);
    objc_exception_throw(v3);
  }

  return 0;
}

- (const)getShape
{
  if (e5rt_tensor_desc_get_shape())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 290);
    objc_exception_throw(v3);
  }

  return 0;
}

- (const)getStrides
{
  if (e5rt_tensor_desc_get_strides())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 298);
    objc_exception_throw(v3);
  }

  return 0;
}

- (unint64_t)getSizeInBytes
{
  if (e5rt_tensor_desc_get_size())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 305);
    objc_exception_throw(v3);
  }

  return 0;
}

- (BOOL)isPacked
{
  getStrides = [(SIE5RTTensorPortDescriptor *)self getStrides];
  getShape = [(SIE5RTTensorPortDescriptor *)self getShape];
  getRank = [(SIE5RTTensorPortDescriptor *)self getRank];
  v6 = &getStrides[getRank - 1];
  v7 = getRank - 1;
  do
  {
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = getShape[v7] * *v6;
    v10 = *--v6;
    --v7;
  }

  while (v9 == v10);
  return v8 == 0;
}

- (BOOL)isPackedFP32
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]!= 4 || [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 4)
  {
    return 0;
  }

  return [(SIE5RTTensorPortDescriptor *)self isPacked];
}

- (BOOL)isS8_ANE
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]!= 1 || [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 1)
  {
    return 0;
  }

  getRank = [(SIE5RTTensorPortDescriptor *)self getRank];
  return (*([(SIE5RTTensorPortDescriptor *)self getStrides]+ 8 * getRank - 16) & 0x3F) == 0;
}

- (BOOL)isU8_ANE
{
  if ([(SIE5RTTensorPortDescriptor *)self getComponentType]|| [(SIE5RTTensorPortDescriptor *)self getComponentSize]!= 1)
  {
    return 0;
  }

  getRank = [(SIE5RTTensorPortDescriptor *)self getRank];
  return (*([(SIE5RTTensorPortDescriptor *)self getStrides]+ 8 * getRank - 16) & 0x3F) == 0;
}

- (e5rt_tensor_desc)createPackedFP32TensorDescriptor
{
  if (![(SIE5RTTensorPortDescriptor *)self isPackedFP32])
  {
    [(SIE5RTTensorPortDescriptor *)self getNumComponents];
    if (e5rt_tensor_desc_dtype_create())
    {
      v3 = 438;
    }

    else
    {
      [(SIE5RTTensorPortDescriptor *)self getShape];
      [(SIE5RTTensorPortDescriptor *)self getRank];
      if (e5rt_tensor_desc_create())
      {
        v3 = 443;
      }

      else
      {
        if (!e5rt_tensor_desc_dtype_release())
        {
          return 0;
        }

        v3 = 444;
      }
    }

LABEL_11:
    v5 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", v3);
    objc_exception_throw(v5);
  }

  if (e5rt_io_port_retain_tensor_desc())
  {
    v3 = 421;
    goto LABEL_11;
  }

  return 0;
}

- (unint64_t)getNumberOfElements
{
  if (e5rt_tensor_desc_get_shape())
  {
    v3 = createE5RTException("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTTensorPortDescriptor.mm", 452);
    objc_exception_throw(v3);
  }

  return 1;
}

@end