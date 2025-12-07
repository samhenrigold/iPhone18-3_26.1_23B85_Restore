@interface SIE5RTSurfacePortDescriptor
- (SIE5RTSurfacePortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type;
- (const)getShape;
- (id)getSurface;
- (int64_t)bindSurface:(id)surface;
- (unint64_t)getBatchnum;
- (unint64_t)getBytePerRow;
- (unint64_t)getChannels;
- (unint64_t)getComponentSize;
- (unint64_t)getNumberOfElements;
- (unint64_t)getRank;
- (unint64_t)getRowElements;
- (unint64_t)getSizeInBytes;
- (void)bindRawPointer:(const void *)pointer;
- (void)dealloc;
- (void)getDataPtr;
@end

@implementation SIE5RTSurfacePortDescriptor

- (SIE5RTSurfacePortDescriptor)initWithE5RTPort:(e5rt_io_port *)port portType:(int64_t)type
{
  v34 = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = SIE5RTSurfacePortDescriptor;
  v5 = [(SIE5RTSurfacePortDescriptor *)&v27 init:port];
  if (v5)
  {
    v6 = e5rt_io_port_retain_surface_desc();
    if (v6)
    {
      v7 = __SceneIntelligenceLogSharedInstance(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 39);
        *buf = 136381187;
        v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v30 = 1025;
        v31 = 39;
        v32 = 2113;
        v33 = v8;
        _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v10 = __SceneIntelligenceLogSharedInstance(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = "YES";
        v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        *buf = 136381187;
        if (!port)
        {
          v11 = "NO";
        }

        v30 = 1025;
        v31 = 39;
        v32 = 2081;
        v33 = v11;
        _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the descriptor for surface port. port is init: %{private}s ***", buf, 0x1Cu);
      }
    }

    else
    {
      v5->_port = port;
      width = e5rt_surface_desc_get_width();
      if (width)
      {
        v13 = __SceneIntelligenceLogSharedInstance(width);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 44);
          *buf = 136381187;
          v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
          v30 = 1025;
          v31 = 44;
          v32 = 2113;
          v33 = v14;
          _os_log_impl(&dword_21DE0D000, v13, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
        }

        v16 = __SceneIntelligenceLogSharedInstance(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
          v30 = 1025;
          v31 = 44;
          _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the width surface port. ***", buf, 0x12u);
        }
      }

      else
      {
        height = e5rt_surface_desc_get_height();
        if (height)
        {
          v18 = __SceneIntelligenceLogSharedInstance(height);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 47);
            *buf = 136381187;
            v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v30 = 1025;
            v31 = 47;
            v32 = 2113;
            v33 = v19;
            _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
          }

          v16 = __SceneIntelligenceLogSharedInstance(v20);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136380931;
            v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v30 = 1025;
            v31 = 47;
            _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the height surface port. ***", buf, 0x12u);
          }
        }

        else
        {
          format = e5rt_surface_desc_get_format();
          if (!format)
          {
            v25 = v5;
            goto LABEL_29;
          }

          v22 = __SceneIntelligenceLogSharedInstance(format);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 50);
            *buf = 136381187;
            v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v30 = 1025;
            v31 = 50;
            v32 = 2113;
            v33 = v23;
            _os_log_impl(&dword_21DE0D000, v22, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
          }

          v16 = __SceneIntelligenceLogSharedInstance(v24);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136380931;
            v29 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
            v30 = 1025;
            v31 = 50;
            _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to get the format surface port. ***", buf, 0x12u);
          }
        }
      }
    }
  }

  v25 = 0;
LABEL_29:

  return v25;
}

- (int64_t)bindSurface:(id)surface
{
  v25 = *MEMORY[0x277D85DE8];
  surfaceCopy = surface;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  createE5RTSurface = [surfaceCopy createE5RTSurface];
  if (v16[3])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v12 = __43__SIE5RTSurfacePortDescriptor_bindSurface___block_invoke;
    v13 = &unk_27833C320;
    v14 = &v15;
    v4 = e5rt_io_port_bind_surface_object();
    if (v4)
    {
      v5 = __SceneIntelligenceLogSharedInstance(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm", 66);
        *buf = 136381187;
        v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v21 = 1025;
        v22 = 66;
        v23 = 2113;
        v24 = v6;
        _os_log_impl(&dword_21DE0D000, v5, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v8 = __SceneIntelligenceLogSharedInstance(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v20 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
        v21 = 1025;
        v22 = 66;
        _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to bind the internal iosurface for output port. ***", buf, 0x12u);
      }

      v9 = 7;
    }

    else
    {
      v9 = 0;
    }

    v12(v11);
  }

  else
  {
    v9 = 7;
  }

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)bindRawPointer:(const void *)pointer
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 86;
    _os_log_impl(&dword_21DE0D000, v3, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }
}

- (unint64_t)getBatchnum
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 92;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getChannels
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 98;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (void)getDataPtr
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 104;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getNumberOfElements
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 110;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getRank
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 116;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getRowElements
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 122;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (const)getShape
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 128;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getBytePerRow
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 133;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getComponentSize
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 139;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (unint64_t)getSizeInBytes
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 144;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (id)getSurface
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136380931;
    v5 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTSurfacePortDescriptor.mm";
    v6 = 1025;
    v7 = 149;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Low-level attribute access is not allowed in surface descriptor ***", &v4, 0x12u);
  }

  return 0;
}

- (void)dealloc
{
  if (self->_port)
  {
    e5rt_io_port_release();
  }

  if (self->_desc)
  {
    e5rt_surface_desc_release();
  }

  v3.receiver = self;
  v3.super_class = SIE5RTSurfacePortDescriptor;
  [(SIE5RTSurfacePortDescriptor *)&v3 dealloc];
}

@end