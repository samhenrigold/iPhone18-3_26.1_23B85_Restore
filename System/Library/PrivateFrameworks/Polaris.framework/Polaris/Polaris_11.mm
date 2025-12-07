uint64_t PRM::Camera::HybridLoopBufferPool::getBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index < m_bufferList->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "buffer_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

uint64_t PRM::Camera::HybridLoopBufferPool::setBufferWithResource(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType == buffer.buffer_type");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "view_index < m_viewIndexBufferIndexMap->getSize()");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index >= 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index < m_bufferList->getSize() || incoming_buffer_index == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "incoming_buffer_index >= 0 || incoming_buffer_index == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "reserved_buffer_index < m_bufferList->getSize() || reserved_buffer_index == BufferIndexInvalid");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferType != BufferTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "setBufferWithResource", "m_bufferList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::deinitialize(v19);
}

uint64_t PRM::Camera::HybridLoopBufferPool::deinitialize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_bufferType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::HybridLoopBufferPool::deinitialize(v19);
}

void PRM::Camera::HybridLoopBufferPool::deinitialize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "deinitialize", "m_viewIndexBufferIndexMap");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool();
}

void PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v4[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4);
  }

  OUTLINED_FUNCTION_20();
}

void PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "operator()", "property_name");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::PixelBufferStream::PixelBufferStream();
}

void PRM::Camera::PixelBufferStream::PixelBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::PixelBufferStream::~PixelBufferStream()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v4[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4);
  }

  OUTLINED_FUNCTION_20();
}

void PRM::Camera::PixelBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVPixelBufferOpts.metadata_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "child_iosurface_properties");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::PixelBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "Stream::GroupTypeUnused");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_groupType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

uint64_t PRM::Camera::PixelBufferStream::read(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVPixelBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown option detected for type: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_frameinfo");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

uint64_t PRM::Camera::PixelBufferStream::write(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pixel_buffer_resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_frameinfo");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v19);
}

uint64_t PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "iosurfaceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(v19);
}

uint64_t PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v19);
}

uint64_t PRM::Camera::PixelBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVPixelBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PixelBufferStream::inUse(v19);
}

void PRM::Camera::PixelBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::DataBufferStream::DataBufferStream();
}

void PRM::Camera::DataBufferStream::DataBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::DataBufferStream::~DataBufferStream()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v4[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4);
  }

  OUTLINED_FUNCTION_20();
}

void PRM::Camera::DataBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvdatabuffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVDataBufferOpts.image_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraCVDataBufferOpts.metadata_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_timestamp");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::DataBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

uint64_t PRM::Camera::DataBufferStream::read(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVDataBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown option detected for type: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "timestamp_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_timestamp");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

uint64_t PRM::Camera::DataBufferStream::write(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "data_buffer_resource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "timestamp_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata) && (m_metadataType != MetadataTypeUnused)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_timestamp");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v19);
}

uint64_t PRM::Camera::DataBufferStream::getBackingIOSurfaceList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "iosurfaceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(v19);
}

uint64_t PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v19);
}

uint64_t PRM::Camera::DataBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVDataBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::DataBufferStream::inUse(v19);
}

void PRM::Camera::DataBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::JasperBufferStream::JasperBufferStream();
}

void PRM::Camera::JasperBufferStream::JasperBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::JasperBufferStream::~JasperBufferStream()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v4[0] = 136315394;
    OUTLINED_FUNCTION_4_2();
    *(&v4[3] + 2) = v0;
    OUTLINED_FUNCTION_9_2(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4);
  }

  OUTLINED_FUNCTION_20();
}

void PRM::Camera::JasperBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvdatabuffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraJasperBufferOpts.image_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraJasperBufferOpts.metadata_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_imageBufferPool[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_timestamp[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_valid");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_timestamp");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::JasperBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

uint64_t PRM::Camera::JasperBufferStream::read(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer[i].buffer_type == BufferTypeCVDataBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata->length > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown option detected for type: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer[i].cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "timestamp_ref[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata[i]) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata[i])");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_timestamp[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

uint64_t PRM::Camera::JasperBufferStream::write(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "cfdata_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion (%s). %s", "write", "outgoing_metadata_buffer->length > 0", "All valid buffers must have non zero length metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_24(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion (%s). %s", v6, v7, v8, v9, v21, v22, v23, v24);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion (%s). %s", "write", "cfdata_metadata[i]", "All valid buffers must have valid metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_24(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion (%s). %s", v6, v7, v8, v9, v21, v22, v23, v24);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface_metadata[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "timestamp_ref[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "cvbuffers");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "jasperTimestamps");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "jasperBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata[i]) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata[i])");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_timestamp[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v19);
}

uint64_t PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool[jasper_bank_index]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(v19);
}

uint64_t PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool[jasper_bank_index]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v19);
}

uint64_t PRM::Camera::JasperBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVDataBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvdatabuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::JasperBufferStream::inUse(v19);
}

void PRM::Camera::JasperBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::PearlBufferStream();
}

void PRM::Camera::PearlBufferStream::PearlBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::PearlBufferStream::~PearlBufferStream()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRM::Camera::PearlBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_maximumViewIndex == 0");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "depth_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "score_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "dy_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "dx_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.depth_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.score_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.dy_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.dx_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options->cameraPearlBufferOpts.metadata_buffer_list[buffer_ix]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_cfdataMetadata");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "metadata_view_index_buffer_index_map_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "iosurface_metadata_bufflet");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_imageBufferPool[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "image_view_index_buffer_index_map_bufflet[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "cvpixel_bufflets[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_valid[i]");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_valid");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_res_timestamp");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "bufflet_list");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupWriter");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_groupType == Stream::GroupTypeWriter || m_groupType == Stream::GroupTypeReader");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "initialize", "m_options");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::PearlBufferStream::initialize(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_options->provider_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unknown option detected for type: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Invalid option detected: %s", "m_options->metadata_type");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid option detected: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_15();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
  return result;
}

uint64_t PRM::Camera::PearlBufferStream::read(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResourceIndex < ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.buffer_type == BufferTypeCVPixelBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "Stream::MetadataTypeUnused");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "serial_metadata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.buffer_type == BufferTypeIOSurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "metadata_buffer.iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Unknown option detected for type: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Unknown option detected for type: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "image_buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "valid_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "res_valid_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "res_timestamp_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "pbsResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::read(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "read", "m_res_timestamp");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

uint64_t PRM::Camera::PearlBufferStream::write(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "1 == ps_resource_get_item_count(prmResource)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(uint32_t)resource_view_index < m_maximumViewIndex");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_cfdata");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "outgoing_metadata_buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "ps_resource_get_metadata_type(prmResource, 0) == ps_resource_metadata_type_iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "valid_ref[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "res_valid_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "res_timestamp_ref");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::PearlBufferStream::write(v19);
}

void PRM::Camera::PearlBufferStream::write(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "m_metadataType");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pearlBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "prmResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "(m_metadataType == MetadataTypeIOSurface && m_iosurfaceMetadata) || (m_metadataType == MetadataTypeCFData && m_cfdataMetadata)");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_res_timestamp");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::write(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "write", "m_maximumViewIndex > 0");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(v19);
}

void PRM::Camera::PearlBufferStream::getBackingIOSurfaceList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceList", "m_imageBufferPool[pearl_attachment_id]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(v19);
}

void PRM::Camera::PearlBufferStream::getBackingIOSurfaceListSize(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getBackingIOSurfaceListSize", "m_imageBufferPool[pearl_attachment_id]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v19);
}

void PRM::Camera::PearlBufferStream::inUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.buffer_type == BufferTypeCVPixelBuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "iosurface");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "buffer.cvpixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "this->m_imageBufferPool[i]");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::PearlBufferStream::inUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "inUse", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::StreamReader::init(v19);
}

void PRM::Camera::StreamReader::init(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "init", "options->is_camera_stream");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "init", "m_maxForwardBufferCount == 0");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "init", "m_pbsReader == NULL");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "init", "options");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: Assertion failed for %s", "init", "manager");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s: Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_6_2(v13, v14, *a1);
  __break(1u);
}

uint64_t PRM::Camera::StreamReader::init(char **a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "Unknown option detected for type: %s", "default");
  v5 = __PSResourceManagerLogSharedInstance(v3, v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_11();
    v22 = 59;
    v23 = 2080;
    v24 = "default";
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Unknown option detected for type: %s", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  v8 = v6;
  if (v6)
  {
    v11 = __PSResourceManagerLogSharedInstance(v6, v7);
    v9 = OUTLINED_FUNCTION_17_0(v11);
    if (v9)
    {
      OUTLINED_FUNCTION_11();
      v22 = v8;
      OUTLINED_FUNCTION_5_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v19, v20);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v9, v10, *a1);
  __break(1u);
  return result;
}

uint64_t PRM::Camera::StreamReader::acquirePBSResources(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquirePBSResources", "m_pbsReader");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::acquirePBSResources(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquirePBSResources", "pbsResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::isResourceInUse(v19);
}

uint64_t PRM::Camera::StreamReader::isResourceInUse(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "isResourceInUse", "m_stream");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::isResourceInUse(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "isResourceInUse", "pbsResource");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaceCount(v19);
}

uint64_t PRM::Camera::StreamReader::getIOSurfaceCount(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaceCount", "m_stream->getBackingIOSurfaceListSize(iosurface_count) == kIOReturnSuccess");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaceCount(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaceCount", "m_stream");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v19);
}

uint64_t PRM::Camera::StreamReader::getIOSurfaces(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "m_stream->getBackingIOSurfaceList(surfaces) == kIOReturnSuccess");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "surfaces");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReader::getIOSurfaces(v19);
}

void PRM::Camera::StreamReader::getIOSurfaces(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getIOSurfaces", "m_stream");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PRM::Camera::StreamReaderInstance::StreamReaderInstance(v19, v20);
}

void PRM::Camera::StreamReaderInstance::StreamReaderInstance(NSObject *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "StreamReaderInstance";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

uint64_t PRM::Camera::StreamReaderInstance::acquireResources(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "_reader");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::acquireResources(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "_capacity");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::acquireResources(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "this->sync_tag_arr");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::acquireResources(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "this->m_forwardedBuffersList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v19);
}

uint64_t PRM::Camera::StreamReaderInstance::updateForwardBufferList(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedPBSAcquiredCountList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedPSResourceList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "this->m_forwardedBuffersList");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::updateForwardBufferList(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "updateForwardBufferList", "_reader");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(v19);
}

uint64_t PRM::Camera::StreamReaderInstance::getFreeForwardBufferListIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "getFreeForwardBufferListIndex", "outIndex < this->m_maxForwardedBufferCount");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(v19);
}

uint64_t PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "releaseForwardBufferListIndex", "index < this->m_maxForwardedBufferCount");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(v19);
}

void PRM::Camera::StreamReaderInstance::releaseForwardBufferListIndex(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "releaseForwardBufferListIndex", "in_use_indicies_bitarray_current & set_bit_mask");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::StreamWriterInstance::StreamWriterInstance();
}

void PRM::Camera::StreamWriterInstance::StreamWriterInstance()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

uint64_t PRM::Camera::StreamWriterInstance::acquireResources(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireResources", "pbs_res");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "acquireResources";
    v12 = 1024;
    v13 = 119;
    v14 = 2080;
    v15 = "acquireResources";
    v16 = 2080;
    v17 = "pbs_res";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v6 = v4;
    v7 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "acquireResources";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = OUTLINED_FUNCTION_0();
  return PRM::Camera::StreamWriterInstance::relinquishResources(v8);
}

void PRM::Camera::StreamWriterInstance::relinquishResources(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion (%s). %s", "relinquishResources", "this->has_acquired_resource", "Tried to relinquish when no buffer was held");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v9 = "relinquishResources";
    v10 = 1024;
    v11 = 131;
    v12 = 2080;
    v13 = "relinquishResources";
    v14 = 2080;
    v15 = "this->has_acquired_resource";
    v16 = 2080;
    v17 = "Tried to relinquish when no buffer was held";
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion (%s). %s", buf, 0x30u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v6 = v4;
    v7 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "relinquishResources";
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  PRM::Camera::StreamWriterInstance::~StreamWriterInstance();
}

void PRM::Camera::StreamWriterInstance::~StreamWriterInstance()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRMFastPathHIDReader::createReaderInstanceContext(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "createReaderInstanceContext";
  *(buf + 6) = 1024;
  *(buf + 14) = 71;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d Cannot create reader instance context for inactive PRMReader for key: %s", buf, 0x1Cu);
}

void PRMFastPathHIDReader::createReaderInstanceContext(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v8 = *MEMORY[0x277D85DE8];
  v3 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "createReaderInstanceContext";
    v6 = 1024;
    v7 = v2;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

void PRMFastPathHIDReaderInstance::~PRMFastPathHIDReaderInstance(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

void PRMFastPathHIDReaderInstance::acquireResources(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "acquireResources";
  *(buf + 6) = 1024;
  *(buf + 14) = 127;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d Double acquire! Relinquish before acquiring again %s.", buf, 0x1Cu);
}

void PRMFastPathHIDReaderInstance::acquireResources(uint64_t a1, uint64_t a2)
{
  v2 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, v9);
  }
}

void PRMIOSurfaceSharedEventWaiter::init(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

void PRMPBSAneReader::init(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "init";
  *(buf + 6) = 1024;
  *(buf + 14) = 43;
  *(buf + 9) = 2080;
  *(buf + 20) = a1;
  _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d PRM ANE Reader (key %s) expects ANE chained stream!", buf, 0x1Cu);
}

void PRMPBSAneReader::init(uint64_t a1, uint64_t a2)
{
  v2 = __PSResourceManagerLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v3, v4, "%s() failed to flush buffers with error code: %d", v5, v6, v7, v8, v9);
  }
}

void PRMPBSAneReader::init()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v1))
  {
    v8 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8);
  }
}

uint64_t PRMPBSCameraReader::init(char **a1, PRMReader *this)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReader::getKey(this);
  v5 = asprintf(a1, "PRM Camera Reader (key %s) expects camera stream!", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v15 = "init";
    v16 = 1024;
    v17 = 31;
    v18 = 2080;
    v19 = PRMReader::getKey(this);
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d PRM Camera Reader (key %s) expects camera stream!", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v10 = v8;
    v11 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "init";
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v12 = OUTLINED_FUNCTION_0();
  return PRMPBSCameraReader::_populateClientResTypeJasperBuffer(v12);
}

uint64_t PRMPBSCameraReader::_populateClientResTypeJasperBuffer(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "Unsupported metadata type");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315394;
    v11 = "_populateClientResTypeJasperBuffer";
    v12 = 1024;
    v13 = 320;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d Unsupported metadata type", &v10, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v6 = v4;
    v7 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "_populateClientResTypeJasperBuffer";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = OUTLINED_FUNCTION_0();
  return PRMPBSGenericReader::_populateClientResTypePixelBuffer(v8);
}

uint64_t PRMPBSGenericReader::_populateClientResTypePixelBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "this->metadata_type");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSGenericReader::_populateClientResTypeDataBuffer(v19);
}

uint64_t PRMPBSGenericReader::_populateClientResTypeDataBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Invalid option detected: %s", "this->metadata_type");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d Invalid option detected: %s", v6, v7, v8, v9, v22, v23);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v19 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::init(v19, v20);
}

uint64_t PRMPBSReader::init(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Received an invalid class type for reader %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Received an invalid class type for reader %s", v10, v11, v12, v13, v26, v27);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (OUTLINED_FUNCTION_6(v16))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v23 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::init(v23, v24);
}

{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Received an invalid class type for reader %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Received an invalid class type for reader %s", v10, v11, v12, v13, v26, v27);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (OUTLINED_FUNCTION_6(v16))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v23 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::createReaderInstanceContext(v23, v24);
}