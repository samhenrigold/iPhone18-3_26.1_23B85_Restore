uint64_t PRMPBSReader::createReaderInstanceContext(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Cannot create reader instance context for inactive PRMReader for key: %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Cannot create reader instance context for inactive PRMReader for key: %s", v10, v11, v12, v13, v26, v27);
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
  return PRMPBSReader::deleteReaderInstanceContext(v23, v24);
}

uint64_t PRMPBSReader::deleteReaderInstanceContext(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Cannot delete context if buffer group has already been destroyed for key: %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Cannot delete context if buffer group has already been destroyed for key: %s", v10, v11, v12, v13, v26, v27);
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
  return PRMPBSReader::_checkBeforeAcquire(v23, v24);
}

uint64_t PRMPBSReader::_checkBeforeAcquire(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Tried to use both frameID and seqNum for resource %s.", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Tried to use both frameID and seqNum for resource %s.", v10, v11, v12, v13, v26, v27);
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
  return PRMPBSReader::_checkBeforeAcquire(v23, v24);
}

{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Tried to use frameID for resource %s, but found an invalid frameID.", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Tried to use frameID for resource %s, but found an invalid frameID.", v10, v11, v12, v13, v26, v27);
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
  return PRMPBSReader::populateResources(v23, v24);
}

uint64_t PRMPBSReader::populateResources(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Received an invalid class type for reader %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Received an invalid class type for reader %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (OUTLINED_FUNCTION_6(v16))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v23 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_populateClientResTypeMTLBuffer(v23);
}

uint64_t PRMPBSReader::_populateClientResTypeMTLBuffer(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "MTLBuffer type not yet implemented.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v23 = 136315394;
    *&v23[4] = "_populateClientResTypeMTLBuffer";
    *&v23[12] = 1024;
    *&v23[14] = 568;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d MTLBuffer type not yet implemented.", v6, v7, v8, v9, *v23, *&v23[8], *&v23[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = v10;
    v13 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v13))
    {
      *v22 = 136315394;
      *&v22[4] = "_populateClientResTypeMTLBuffer";
      *&v22[12] = 1024;
      *&v22[14] = v12;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, *v22, *&v22[8], *&v22[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMPBSReader::_populateClientResTypeMTLTexture(v20);
}

void PRMPBSReader::_populateClientResTypeMTLTexture(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "MTLTexture type not yet implemented.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v23 = 136315394;
    *&v23[4] = "_populateClientResTypeMTLTexture";
    *&v23[12] = 1024;
    *&v23[14] = 580;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d MTLTexture type not yet implemented.", v6, v7, v8, v9, *v23, *&v23[8], *&v23[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = v10;
    v13 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v13))
    {
      *v22 = 136315394;
      *&v22[4] = "_populateClientResTypeMTLTexture";
      *&v22[12] = 1024;
      *&v22[14] = v12;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, *v22, *&v22[8], *&v22[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  PRMPBSReader::populatePBSValidity(v20, v21);
}

void PRMPBSReader::populatePBSValidity(char **a1, PRMReader *a2)
{
  v4 = OUTLINED_FUNCTION_3_5(a2, a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "Received an invalid class type for reader %s", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    PRMReader::getKey(a2);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_13_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Received an invalid class type for reader %s", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (OUTLINED_FUNCTION_6(v16))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  PRMPBSReaderInstance::PRMPBSReaderInstance();
}

void PRMPBSReaderInstance::PRMPBSReaderInstance()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRMPBSReaderInstance::~PRMPBSReaderInstance()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

uint64_t PRMPBSReaderInstance::acquireResources(char **a1, PRMReaderInstance *this)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PRMReaderInstance::getKey(this);
  v5 = asprintf(a1, "You cannot acquire a new buffer if you are already holding an old buffer! If you need to acquire multiple buffers at multiple instances in time, please create a new reader instance for key %s.", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v16 = "acquireResources";
    v17 = 1024;
    v18 = 85;
    v19 = 2080;
    v20 = PRMReaderInstance::getKey(this);
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d You cannot acquire a new buffer if you are already holding an old buffer! If you need to acquire multiple buffers at multiple instances in time, please create a new reader instance for key %s.", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v10 = v8;
    v11 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "acquireResources";
      v17 = 1024;
      v18 = v10;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v12 = abort_with_reason();
  return PRMReader::init(v12, v13);
}

uint64_t PRMReader::init(char **a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = (a2 + 24);
  v4 = (a2 + 24);
  if (*(a2 + 47) < 0)
  {
    v4 = *v3;
  }

  v5 = asprintf(a1, "Tried to init PRMReader for key %s that's already initialized", v4);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 47) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315650;
    v14 = "init";
    v15 = 1024;
    v16 = 49;
    v17 = 2080;
    v18 = v3;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d Tried to init PRMReader for key %s that's already initialized", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  v10 = v8;
  if (v8)
  {
    v11 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "init";
      v15 = 1024;
      v16 = v10;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PRMReader::deinit(char **a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = (a2 + 24);
  v4 = (a2 + 24);
  if (*(a2 + 47) < 0)
  {
    v4 = *v3;
  }

  v5 = asprintf(a1, "Tried to deinit PRMReader for key %s with nonzero (%d) refcount.", v4, *(a2 + 64));
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    if (*(a2 + 47) < 0)
    {
      v3 = *v3;
    }

    v8 = *(a2 + 64);
    *buf = 136315906;
    v14 = "deinit";
    v15 = 1024;
    v16 = 68;
    v17 = 2080;
    v18 = v3;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_FAULT, "%s:%d Tried to deinit PRMReader for key %s with nonzero (%d) refcount.", buf, 0x22u);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v11 = v9;
    v12 = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "deinit";
      v15 = 1024;
      v16 = v11;
      _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PRMWriterInstance::PRMWriterInstance();
}

void PRMWriterInstance::PRMWriterInstance()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PRMWriterInstance::initBuffers()
{
  OUTLINED_FUNCTION_2_4();
  if (OUTLINED_FUNCTION_3_4(v0))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

uint64_t PRMWriterInstance::installBufferTypeSurface(void *a1)
{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for IOSurface type %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for IOSurface type %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePixelBuffer(v20);
}

uint64_t PRMWriterInstance::installBufferTypePixelBuffer(void *a1)
{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Metadata IOSurface properties were not configured for: %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Metadata IOSurface properties were not configured for: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePixelBuffer(v20);
}

{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for CVPixelBuffer type %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for CVPixelBuffer type %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeDataBuffer(v20);
}

uint64_t PRMWriterInstance::installBufferTypeDataBuffer(void *a1)
{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Metadata IOSurface properties were not configured for: %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Metadata IOSurface properties were not configured for: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeDataBuffer(v20);
}

{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for CVDataBuffer type %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for CVDataBuffer type %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeJasperBuffer(v20);
}

uint64_t PRMWriterInstance::installBufferTypeJasperBuffer(void *a1)
{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Metadata IOSurface properties were not configured for: %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Metadata IOSurface properties were not configured for: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypeJasperBuffer(v20);
}

{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for CVDataBuffer type %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for CVDataBuffer type %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v20);
}

uint64_t PRMWriterInstance::installBufferTypePearlBuffer(void *a1)
{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for Pearlbuffer type %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for Pearlbuffer type %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v20);
}

{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Metadata IOSurface properties were not configured for: %s", v22);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Metadata IOSurface properties were not configured for: %s", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::installBufferTypePearlBuffer(v20);
}

{
  v1 = OUTLINED_FUNCTION_19(a1, *MEMORY[0x277D85DE8]);
  v2 = asprintf(v1, "Creation mode was not defined for Pearlbuffer type %s", v23);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_20_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Creation mode was not defined for Pearlbuffer type %s", v7, v8, v9, v10, v24, v25);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PRMWriterInstance::acquireResources(v20, v21);
}

uint64_t _iosurfaceAllocator(char **a1, int a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to create CVPixelBuffer for resource with error code %d", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v5, v6, "%s:%d Failed to create CVPixelBuffer for resource with error code %d", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _iosurfaceAllocator(v20);
}

uint64_t _iosurfaceAllocator(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Failed to get IOSurface from CVPixelBuffer.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v24 = 136315394;
    *&v24[4] = "_iosurfaceAllocator";
    *&v24[12] = 1024;
    *&v24[14] = 110;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to get IOSurface from CVPixelBuffer.", v6, v7, v8, v9, *v24, *&v24[8], *&v24[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = v10;
    v13 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v13))
    {
      *v23 = 136315394;
      *&v23[4] = "_iosurfaceAllocator";
      *&v23[12] = 1024;
      *&v23[14] = v12;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, *v23, *&v23[8], *&v23[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _cvPixelBufferAllocator(v20, v21);
}

uint64_t _cvPixelBufferAllocator(char **a1, int a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to create CVPixelBuffer for resource with error code %d", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v5, v6, "%s:%d Failed to create CVPixelBuffer for resource with error code %d", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _cvPixelBufferAllocator(v20, v21);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "failed to increment category 1 use count for CV Pixel Buffer ret=%d", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v5, v6, "%s:%d failed to increment category 1 use count for CV Pixel Buffer ret=%d", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v20, v21);
}

uint64_t _cvDataBufferAllocator(char **a1, int a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to create CVDataBuffer for resource with error code %d", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v5, v6, "%s:%d Failed to create CVDataBuffer for resource with error code %d", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v20, v21);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "failed to increment category 1 use count for CV Data Buffer ret=%d", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2_1(&dword_25EA3A000, v5, v6, "%s:%d failed to increment category 1 use count for CV Data Buffer ret=%d", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return _cvDataBufferAllocator(v20);
}

void _cvDataBufferAllocator(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Failed to allocate IOSurface for properties");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v22 = 136315394;
    *&v22[4] = "_cvDataBufferAllocator";
    *&v22[12] = 1024;
    *&v22[14] = 212;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate IOSurface for properties", v6, v7, v8, v9, *v22, *&v22[8], *&v22[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = v10;
    v13 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v13))
    {
      *v21 = 136315394;
      *&v21[4] = "_cvDataBufferAllocator";
      *&v21[12] = 1024;
      *&v21[14] = v12;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, *v21, *&v21[8], *&v21[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  PSActionTaker::signalResourceAvailable(v20);
}

void PSActionTaker::signalResourceAvailable(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "Tried to call a null resource callback");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v10 = 136315394;
    v11 = "signalResourceAvailable";
    v12 = 1024;
    v13 = 44;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d Tried to call a null resource callback", &v10, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v6 = v4;
    v7 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "signalResourceAvailable";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v10, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v8 = abort_with_reason();
  PSActionTakerManager::~PSActionTakerManager(v8, v9);
}

void PSActionTakerManager::~PSActionTakerManager(NSObject *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "~PSActionTakerManager";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

uint64_t PSActionTakerManager::initializeActionTaker(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "No free slots available to populate a new action taker (ie >%d action takers registered).", 64);
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "initializeActionTaker";
    v11 = 1024;
    v12 = 110;
    v13 = 1024;
    v14 = 64;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_FAULT, "%s:%d No free slots available to populate a new action taker (ie >%d action takers registered).", buf, 0x18u);
  }

  v4 = OSLogFlushBuffers();
  v6 = v4;
  if (v4)
  {
    v7 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "initializeActionTaker";
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_25EA3A000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSListenerThread::start(char **a1, uint64_t a2)
{
  *a1 = 0;
  Key = PRMReader::getKey(*(a2 + 16));
  v5 = asprintf(a1, "No pthread creation opt was found for resource %s", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    PRMReader::getKey(*(a2 + 16));
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d No pthread creation opt was found for resource %s", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v25, v26);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = OUTLINED_FUNCTION_0();
  _thread_workloop(v23, v24);
}

void _thread_workloop(char **a1, PRMReader **a2)
{
  *a1 = 0;
  Key = PRMReader::getKey(*a2);
  v5 = asprintf(a1, "Could not find a frameid for resource %s", Key);
  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    PRMReader::getKey(*a2);
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not find a frameid for resource %s", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v23, v24);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  __PSResourceManagerLogSharedInstance_cold_1();
}

uint64_t ps_prm_opts_create_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Failed to allocate memory.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_copy_cold_1(v19);
}

uint64_t ps_prm_opts_copy_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Failed to allocate memory");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Failed to allocate memory", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_copy_cold_2(v19);
}

uint64_t ps_prm_opts_copy_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_resource_key_cold_1();
}

uint64_t ps_prm_opts_set_resource_key_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_graph_cold_1(v19);
}

uint64_t ps_prm_opts_set_graph_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_graph_cold_1(v19);
}

uint64_t ps_prm_opts_get_graph_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_resource_class_cold_1();
}

uint64_t ps_prm_opts_set_resource_class_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_provider_type_cold_1(v19);
}

uint64_t ps_prm_opts_set_provider_type_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_is_camera_stream_cold_1();
}

uint64_t ps_prm_opts_set_is_camera_stream_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_use_prm_camera_reader_cold_1(v19);
}

uint64_t ps_prm_opts_set_use_prm_camera_reader_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_ariadne_id_cold_1(v19);
}

uint64_t ps_prm_opts_set_ariadne_id_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_resource_available_callback_cold_1(v19);
}

uint64_t ps_prm_opts_set_resource_available_callback_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_removal_callback_cold_1(v19);
}

uint64_t ps_prm_opts_set_removal_callback_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_return_capacity_cold_1();
}

uint64_t ps_prm_opts_set_return_capacity_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_buffer_depth_cold_1(v19);
}

uint64_t ps_prm_opts_set_buffer_depth_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_creation_mode_cold_1(v19);
}

uint64_t ps_prm_opts_set_creation_mode_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_storage_mode_cold_1();
}

uint64_t ps_prm_opts_set_storage_mode_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_forwarding_count_cold_1(v19);
}

uint64_t ps_prm_opts_set_forwarding_count_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_data_size_cold_1();
}

uint64_t ps_prm_opts_set_data_size_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_iosurface_width_cold_1(v19);
}

uint64_t ps_prm_opts_set_iosurface_width_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_iosurface_height_cold_1(v19);
}

uint64_t ps_prm_opts_set_iosurface_height_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_iosurface_pixelformat_cold_1(v19);
}

uint64_t ps_prm_opts_set_iosurface_pixelformat_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_iosurface_properties_cold_1(v19);
}

uint64_t ps_prm_opts_set_iosurface_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_iosurface_allocator_cold_1(v19);
}

uint64_t ps_prm_opts_set_iosurface_allocator_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_width_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_width_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_height_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_height_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_pixelformat_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_pixelformat_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_properties_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_allocator_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_allocator_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties_cold_1(v19, v20);
}

uint64_t ps_prm_opts_set_cvpixelbuffer_metadata_iosurface_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvdatabuffer_width_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvdatabuffer_width_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvdatabuffer_height_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvdatabuffer_height_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvdatabuffer_pixelformat_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvdatabuffer_pixelformat_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvdatabuffer_allocator_cold_1(v19);
}

uint64_t ps_prm_opts_set_cvdatabuffer_allocator_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties_cold_1(v19, v20);
}

uint64_t ps_prm_opts_set_cvdatabuffer_metadata_iosurface_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_jasperbuffer_width_cold_1(v19);
}

uint64_t ps_prm_opts_set_jasperbuffer_width_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_jasperbuffer_height_cold_1(v19);
}

uint64_t ps_prm_opts_set_jasperbuffer_height_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_jasperbuffer_pixelformat_cold_1(v19);
}

uint64_t ps_prm_opts_set_jasperbuffer_pixelformat_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties_cold_1(v19, v20);
}

uint64_t ps_prm_opts_set_jasperbuffer_metadata_iosurface_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_width_cold_1(v19);
}

uint64_t ps_prm_opts_set_pearlbuffer_width_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_height_cold_1(v19);
}

uint64_t ps_prm_opts_set_pearlbuffer_height_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_pixelformat_cold_1(v19);
}

uint64_t ps_prm_opts_set_pearlbuffer_pixelformat_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_has_attachments_cold_1(v19);
}

uint64_t ps_prm_opts_set_pearlbuffer_has_attachments_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_properties_cold_1(v19);
}

uint64_t ps_prm_opts_set_pearlbuffer_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties_cold_1();
}

uint64_t ps_prm_opts_set_pearlbuffer_metadata_iosurface_properties_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_matting_params_cold_1(v19);
}

uint64_t ps_prm_opts_set_matting_params_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_resource_avail_context_cold_1();
}

uint64_t ps_prm_opts_set_resource_avail_context_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_object_stream_cold_1(v19);
}

uint64_t ps_prm_opts_set_object_stream_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_opaque_stream_cold_1(v19);
}

uint64_t ps_prm_opts_set_opaque_stream_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_fastpath_stream_cold_1(v19);
}

uint64_t ps_prm_opts_set_fastpath_stream_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_resource_key_cold_1(v19);
}

uint64_t ps_prm_opts_get_resource_key_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_resource_class_cold_1(v19);
}

uint64_t ps_prm_opts_get_resource_class_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_return_capacity_cold_1(v19);
}

uint64_t ps_prm_opts_get_return_capacity_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_forwarding_count_cold_1(v19);
}

uint64_t ps_prm_opts_get_forwarding_count_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_writer_depth_cold_1();
}

uint64_t ps_prm_opts_get_writer_depth_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_resource_metadata_type_cold_1();
}

uint64_t ps_prm_opts_set_resource_metadata_type_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_resource_metadata_type_cold_1(v19);
}

uint64_t ps_prm_opts_get_resource_metadata_type_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_get_reader_depth_cold_1(v19);
}

uint64_t ps_prm_opts_get_reader_depth_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_ane_chained_stream_cold_1();
}

uint64_t ps_prm_opts_set_ane_chained_stream_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource is class is not ANE buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource is class is not ANE buffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_ane_chained_stream_cold_2(v19);
}

uint64_t ps_prm_opts_set_ane_chained_stream_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvpixelbuffer_cold_1(v19);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource class is not pixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource class is not pixelbuffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvpixelbuffer_cold_2(v19);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_1(v19);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource class is not pixelbuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource class is not pixelbuffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_2(v19);
}

uint64_t ps_prm_opts_set_camera_cvpixelbuffer_superframe_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvdatabuffer_cold_1(v19);
}

uint64_t ps_prm_opts_set_camera_cvdatabuffer_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource class is not databuffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource class is not databuffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_cvdatabuffer_cold_2(v19);
}

uint64_t ps_prm_opts_set_camera_cvdatabuffer_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_jasperbuffer_cold_1(v19);
}

uint64_t ps_prm_opts_set_camera_jasperbuffer_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource class is not a jasper buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource class is not a jasper buffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_jasperbuffer_cold_2(v19);
}

uint64_t ps_prm_opts_set_camera_jasperbuffer_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_pearlbuffer_cold_1(v19);
}

uint64_t ps_prm_opts_set_camera_pearlbuffer_cold_1()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Resource class is not a jasper buffer");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Resource class is not a jasper buffer", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_prm_opts_set_camera_pearlbuffer_cold_2(v19);
}

void ps_prm_opts_set_camera_pearlbuffer_cold_2()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Opts is null");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Opts is null", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PSResourceManager::PSResourceManager(v19);
}

void PSResourceManager::PSResourceManager(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

void PSResourceManager::createReaderInstance(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_4(&dword_25EA3A000, v1, v2, "%s() failed to flush buffers with error code: %d", v3, v4, v5, v6, v7);
  }
}

uint64_t PSResourceManager::createReaderInstance()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  *v0 = 0;
  v2 = asprintf(v0, "Tried to create a new reader instance with null opts.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d Tried to create a new reader instance with null opts.", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *v1);
  __break(1u);
  return result;
}

uint64_t PSResourceManager::deleteReaderInstance()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  *v0 = 0;
  v2 = asprintf(v0, "Tried to delete a null reader instance.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d Tried to delete a null reader instance.", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *v1);
  __break(1u);
  return result;
}

uint64_t PSResourceManager::createWriterInstance()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  *v0 = 0;
  v2 = asprintf(v0, "Tried to create a new writer instance with null opts.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d Tried to create a new writer instance with null opts.", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *v1);
  __break(1u);
  return result;
}

uint64_t PSResourceManager::deleteWriterInstance()
{
  OUTLINED_FUNCTION_10();
  v1 = v0;
  *v0 = 0;
  v2 = asprintf(v0, "Tried to delete a null writer instance.");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d Tried to delete a null writer instance.", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v15 = __PSResourceManagerLogSharedInstance(v11, v12);
    v13 = OUTLINED_FUNCTION_17_0(v15);
    if (v13)
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_3_3(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_7();
  }

  result = OUTLINED_FUNCTION_6_2(v13, v14, *v1);
  __break(1u);
  return result;
}

uint64_t PSResourceManager::createActionTaker(char **a1, const char *a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Could not find provider (writer) for key %s.", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v5, v6, "%s:%d Could not find provider (writer) for key %s.", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v20, v21);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Could not find actionTakerManager for key %s.", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v5, v6, "%s:%d Could not find actionTakerManager for key %s.", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v20, v21);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Could not find provider (listener thread) for key %s.", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v5, v6, "%s:%d Could not find provider (listener thread) for key %s.", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSResourceManager::createActionTaker(v20, v21);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "Could not find provider (reader) for key %s.", a2);
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_9(v4))
  {
    OUTLINED_FUNCTION_3_6(&dword_25EA3A000, v5, v6, "%s:%d Could not find provider (reader) for key %s.", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return PSResourceManager::deleteActionTaker(v20);
}

uint64_t PSResourceManager::deleteActionTaker()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "No actionTakerManager found for action taker.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d No actionTakerManager found for action taker.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return PSResourceManager::deleteActionTaker(v19);
}

void PSResourceManager::deleteActionTaker()
{
  OUTLINED_FUNCTION_10();
  *v0 = 0;
  v1 = asprintf(v0, "Tried to delete a null action taker.");
  v3 = __PSResourceManagerLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Tried to delete a null action taker.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSResourceManagerLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  PSResourceManager::getIOSurfaces(v19, v20);
}

void PSResourceManager::getIOSurfaces(char **a1, const char *a2)
{
  *a1 = 0;
  asprintf(a1, "%s: reader/writer instance nil for key (%s)", "getIOSurfaces", a2);
  _os_crash();
  __break(1u);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    *v25 = 136315394;
    *&v25[4] = "ps_prm_allocate_retained_nsobject_array";
    *&v25[12] = 1024;
    *&v25[14] = 53;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d OOM!", v7, v8, v9, v10, *v25, *&v25[8], *&v25[16]);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = v11;
    v14 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      *v24 = 136315394;
      *&v24[4] = "ps_prm_allocate_retained_nsobject_array";
      *&v24[12] = 1024;
      *&v24[14] = v13;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, *v24, *&v24[8], *&v24[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_retained_nsobject_array_cold_2(v21, v22);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "NSObject allocator returned nil for key %s", [v4 UTF8String]);

  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d NSObject allocator returned nil for key %s", v11, v12, v13, v14, v27, v28);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v17 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_retained_nsobject_array_cold_3(v24, v25);
}

uint64_t ps_prm_allocate_retained_nsobject_array_cold_3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No retainable allocator was specified for stream %s", [v4 UTF8String]);

  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d No retainable allocator was specified for stream %s", v11, v12, v13, v14, v26, v27);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v17 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v26, v27);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_1(v24);
}

uint64_t ps_prm_allocate_opaque_array_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v4 = __PSResourceManagerLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    *v25 = 136315394;
    *&v25[4] = "ps_prm_allocate_opaque_array";
    *&v25[12] = 1024;
    *&v25[14] = 104;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v5, v6, "%s:%d OOM!", v7, v8, v9, v10, *v25, *&v25[8], *&v25[16]);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = v11;
    v14 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      *v24 = 136315394;
      *&v24[4] = "ps_prm_allocate_opaque_array";
      *&v24[12] = 1024;
      *&v24[14] = v13;
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, *v24, *&v24[8], *&v24[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_2(v21, v22);
}

uint64_t ps_prm_allocate_opaque_array_cold_2(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "Opaque allocator returned nil for key %s", [v4 UTF8String]);

  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d Opaque allocator returned nil for key %s", v11, v12, v13, v14, v27, v28);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v17 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return ps_prm_allocate_opaque_array_cold_3(v24, v25);
}

uint64_t ps_prm_allocate_opaque_array_cold_3(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No allocator was specified for stream %s", [v4 UTF8String]);

  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d No allocator was specified for stream %s", v11, v12, v13, v14, v27, v28);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v17 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  return ps_prm_deallocate_opaque_array_cold_1(v24, v25);
}

void ps_prm_deallocate_opaque_array_cold_1(char **a1, void *a2)
{
  *a1 = 0;
  v4 = [a2 key];
  asprintf(a1, "No deallocator found for stream %s", [v4 UTF8String]);

  v7 = __PSResourceManagerLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v8 = [a2 key];
    [v8 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v9, v10, "%s:%d No deallocator found for stream %s", v11, v12, v13, v14, v27, v28);
  }

  v15 = OSLogFlushBuffers();
  if (v15)
  {
    v17 = __PSResourceManagerLogSharedInstance(v15, v16);
    if (OUTLINED_FUNCTION_6(v17))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v18, v19, "%s() failed to flush buffers with error code: %d", v20, v21, v22, v23, v27, v28);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v24 = OUTLINED_FUNCTION_0();
  ps_frame_history_writer_buffer_init(v24, v25, v26);
}

void ps_frame_history_writer_buffer_init(PSFrameHistoryBufferServiceClient *a1, void *a2, void *a3)
{
  v64 = a2;
  v5 = a3;
  if (a1 && v64 && v5)
  {
    v6 = [v5 getContext];
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (v6 + 96), [v64 resolvedFrequency]))
    {
      v7 = ps_frame_history_graph_metadata_set_submission_timestamp(*(v6 + 96));
      [OUTLINED_FUNCTION_2_5(v7 v8];
      v15 = OUTLINED_FUNCTION_1_5();
      v17 = ps_frame_history_graph_metadata_set_deadline(v15, v16);
      [OUTLINED_FUNCTION_2_5(v17 v18];
      v25 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v25, v26);
      v27 = *(v6 + 96);
      v28 = [v5 name];
      [v28 UTF8String];
      v29 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_graph_name(v29, v30, v31, 0);

      v40 = [OUTLINED_FUNCTION_2_5(v32 v33];
      v41 = [v40 key];
      [v41 UTF8String];
      v42 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_domain(v42, v43, v44);

      v53 = [OUTLINED_FUNCTION_2_5(v45 v46];
      LODWORD(v41) = [v53 intValue];
      v54 = [v64 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v27, v41, [v54 intValue]);

      v55 = [v5 output];
      v56 = [v55 resourceKey];
      [v56 UTF8String];
      v57 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_add_output(v57, v58, v59);

      ps_frame_history_buffer_set_init_complete(*(v6 + 96));
    }

    else
    {
      *(v6 + 96) = 0;
    }
  }
}

void ps_frame_history_reader_buffer_init(PSFrameHistoryBufferServiceClient *a1, void *a2, void *a3)
{
  v64 = a2;
  v5 = a3;
  if (a1 && v64 && v5)
  {
    v6 = [v5 getContext];
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (v6 + 32), [v64 resolvedFrequency]))
    {
      v7 = ps_frame_history_graph_metadata_set_submission_timestamp(*(v6 + 32));
      [OUTLINED_FUNCTION_4_3(v7 v8];
      v15 = OUTLINED_FUNCTION_1_5();
      v17 = ps_frame_history_graph_metadata_set_deadline(v15, v16);
      [OUTLINED_FUNCTION_4_3(v17 v18];
      v25 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v25, v26);
      v27 = *(v6 + 32);
      v28 = [v5 name];
      [v28 UTF8String];
      v29 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_graph_name(v29, v30, v31, 1);

      v40 = [OUTLINED_FUNCTION_4_3(v32 v33];
      v41 = [v40 key];
      [v41 UTF8String];
      v42 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_set_domain(v42, v43, v44);

      v53 = [OUTLINED_FUNCTION_4_3(v45 v46];
      LODWORD(v41) = [v53 intValue];
      v54 = [v64 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v27, v41, [v54 intValue]);

      v55 = [v5 input];
      v56 = [v55 resourceKey];
      [v56 UTF8String];
      v57 = OUTLINED_FUNCTION_0_4();
      ps_frame_history_graph_metadata_add_input(v57, v58, v59);

      ps_frame_history_buffer_set_init_complete(*(v6 + 32));
    }

    else
    {
      *(v6 + 32) = 0;
    }
  }
}

void ps_frame_history_graph_buffer_init(PSFrameHistoryBufferServiceClient *a1, uint64_t a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a1 && a2 && v5)
  {
    if (ps_frame_history_buffer_service_allocate_buffer(a1, (a2 + 6816), [v5 resolvedFrequency]))
    {
      ps_frame_history_graph_metadata_set_submission_timestamp(*(a2 + 6816));
      [v6 resolvedDeadline];
      v7 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_deadline(v7, v8);
      [v6 resolvedFrequency];
      v9 = OUTLINED_FUNCTION_1_5();
      ps_frame_history_graph_metadata_set_frequency(v9, v10);
      v11 = +[PSExecutionSessionWorkarounds sharedInstance];
      v12 = [v6 name];
      v13 = [MEMORY[0x277CCAC38] processInfo];
      v14 = [v13 processName];
      v15 = [v11 shortenedNameForGraph:v12 procName:v14];

      v16 = *(a2 + 6816);
      v47 = v15;
      [v15 UTF8String];
      v17 = OUTLINED_FUNCTION_3_7();
      ps_frame_history_graph_metadata_set_graph_name(v17, v16, v18, 2);
      v19 = *(a2 + 6816);
      v20 = [v6 resolvedDomain];
      v21 = [v20 key];
      [v21 UTF8String];
      v22 = OUTLINED_FUNCTION_3_7();
      ps_frame_history_graph_metadata_set_domain(v22, v19, v23);

      v24 = *(a2 + 6816);
      v25 = [v6 systemPulseStride];
      LODWORD(v21) = [v25 intValue];
      v26 = [v6 offset];
      ps_frame_history_graph_metadata_set_stride_and_offset(v24, v21, [v26 intValue]);

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v48 = v6;
      obj = [v6 tasks];
      v51 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v51)
      {
        v50 = *v62;
        do
        {
          v27 = 0;
          do
          {
            if (*v62 != v50)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v61 + 1) + 8 * v27);
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v52 = v28;
            v29 = [v28 inputs];
            v30 = [v29 countByEnumeratingWithState:&v57 objects:v66 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v58;
              do
              {
                v33 = 0;
                do
                {
                  if (*v58 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  v34 = *(a2 + 6816);
                  v35 = [*(*(&v57 + 1) + 8 * v33) resourceKey];
                  [v35 UTF8String];
                  v36 = OUTLINED_FUNCTION_3_7();
                  ps_frame_history_graph_metadata_add_input(v36, v34, v37);

                  ++v33;
                }

                while (v31 != v33);
                v31 = [v29 countByEnumeratingWithState:&v57 objects:v66 count:16];
              }

              while (v31);
            }

            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v38 = [v52 outputs];
            v39 = [v38 countByEnumeratingWithState:&v53 objects:v65 count:16];
            if (v39)
            {
              v40 = v39;
              v41 = *v54;
              do
              {
                v42 = 0;
                do
                {
                  if (*v54 != v41)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v43 = *(a2 + 6816);
                  v44 = [*(*(&v53 + 1) + 8 * v42) resourceKey];
                  [v44 UTF8String];
                  v45 = OUTLINED_FUNCTION_3_7();
                  ps_frame_history_graph_metadata_add_output(v45, v43, v46);

                  ++v42;
                }

                while (v40 != v42);
                v40 = [v38 countByEnumeratingWithState:&v53 objects:v65 count:16];
              }

              while (v40);
            }

            ++v27;
          }

          while (v27 != v51);
          v51 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v51);
      }

      ps_frame_history_buffer_set_init_complete(*(a2 + 6816));
      v6 = v48;
    }

    else
    {
      *(a2 + 6816) = 0;
    }
  }
}

void ps_frame_history_notify_start_frame_data(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      graph_metadata = ps_frame_history_buffer_get_graph_metadata(a1);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v13[2] = __ps_frame_history_notify_start_frame_data_block_invoke;
      v13[3] = &__block_descriptor_tmp_12;
      v13[4] = a4;
      v13[5] = graph_metadata;
      v13[6] = a3;
      v13[7] = a2;
      v14 = a5;
      v13[8] = a6;
      ps_frame_history_buffer_update_data_entry(a1, 2u, v13);
    }
  }
}

void ps_frame_history_notify_end_frame_data(unint64_t *a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  if (a1)
  {
    if (a2)
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 0x40000000;
      v5[2] = __ps_frame_history_notify_end_frame_data_block_invoke;
      v5[3] = &__block_descriptor_tmp_1_2;
      v5[4] = a2;
      v5[5] = a3;
      v7 = a4;
      v6 = a5;
      ps_frame_history_buffer_update_data_entry(a1, 3u, v5);
    }
  }
}

uint64_t ps_gsm_gst_notify_complete_cold_1(uint64_t result)
{
  if (atomic_fetch_add((result + 136), 0xFFFFFFFFFFFFFFFFLL) == 1)
  {
    return (*(*(result + 144) + 16))();
  }

  return result;
}

uint64_t ps_gsm_wait_on_sem_cold_1(void *a1, mach_error_t a2)
{
  v4 = OUTLINED_FUNCTION_1_6(a1, a2);
  v5 = asprintf(v2, "%s: semaphore_timedwait failed with code %d (%s)", "ps_gsm_wait_on_sem", v3, v4);
  v7 = __PolarisGSMLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    mach_error_string(v3);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_2_6(&dword_25EA3A000, v8, v9, "%s:%d %s: semaphore_timedwait failed with code %d (%s)", v10, v11, v12, v13, v26, v27, v28, v29);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PolarisGSMLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v26, v27, v28, v29);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = OUTLINED_FUNCTION_0();
  return ps_gsm_signal_sem_cold_1(v23, v24);
}

uint64_t ps_gsm_signal_sem_cold_1(void *a1, mach_error_t a2)
{
  v4 = OUTLINED_FUNCTION_1_6(a1, a2);
  v5 = asprintf(v2, "%s: semaphore_signal failed with code %d (%s)", "ps_gsm_signal_sem", v3, v4);
  v7 = __PolarisGSMLogSharedInstance(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    mach_error_string(v3);
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_2_6(&dword_25EA3A000, v8, v9, "%s:%d %s: semaphore_signal failed with code %d (%s)", v10, v11, v12, v13, v26, v27, v28, v29);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v16 = __PolarisGSMLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23(&dword_25EA3A000, v17, v18, "%s() failed to flush buffers with error code: %d", v19, v20, v21, v22, v26, v27, v28, v29);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v23 = OUTLINED_FUNCTION_0();
  return ps_gsm_create_gst_internal_cold_1(v23, v24);
}

uint64_t ps_gsm_create_gst_internal_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s NULL Shared Trigger for shared gst (%s) creation", (a2 + 16), "ps_gsm_create_gst_internal");
  v4 = __PolarisGSMLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s NULL Shared Trigger for shared gst (%s) creation", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PolarisGSMLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_gsm_gst_handle_source_death_cold_1(v20, v21);
}

uint64_t ps_gsm_gst_handle_source_death_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Out of bounds assert error (%llu >= %llu)", a2, 1024);
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_6_3(&dword_25EA3A000, v5, v6, "%s:%d Out of bounds assert error (%llu >= %llu)", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_util_assert_less_than_equal_unsigned_cold_1(v20, v21);
}

uint64_t ps_util_assert_less_than_equal_unsigned_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Out of bounds assert error (%llu > %llu)", a2, 1024);
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_6_3(&dword_25EA3A000, v5, v6, "%s:%d Out of bounds assert error (%llu > %llu)", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_gsm_request_waiter_sequenced_teardown_cold_1(v20, v21);
}

uint64_t ps_gsm_request_waiter_sequenced_teardown_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = a2 + 16;
  v4 = asprintf(a1, "GST (%s) Sequenced Teardown not supported on shared trigger", (a2 + 16));
  v6 = __PolarisGSMLogSharedInstance(v4, v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    *buf = 136315650;
    v22 = "ps_gsm_request_waiter_sequenced_teardown";
    v23 = 1024;
    v24 = 391;
    v25 = 2080;
    v26 = v3;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d GST (%s) Sequenced Teardown not supported on shared trigger", buf, 0x1Cu);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v9 = __PolarisGSMLogSharedInstance(v7, v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v16 = OUTLINED_FUNCTION_0();
  return ps_gsm_gst_trigger_set_stride_cold_1(v16, v17);
}

void ps_gsm_gst_trigger_set_stride_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Stride %llu does not fit within the allocated %d bits.", a2, 10);
  v5 = __PolarisGSMLogSharedInstance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v21 = "ps_gsm_gst_trigger_set_stride";
    v22 = 1024;
    v23 = 96;
    v24 = 2048;
    v25 = a2;
    v26 = 1024;
    v27 = 10;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Stride %llu does not fit within the allocated %d bits.", buf, 0x22u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = __PolarisGSMLogSharedInstance(v6, v7);
    if (OUTLINED_FUNCTION_6(v8))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v9, v10, "%s() failed to flush buffers with error code: %d", v11, v12, v13, v14, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  ps_gsm_wait_gst_cold_1(v15, v16, v17);
}

void ps_gsm_wait_gst_cold_1(unint64_t *a1, unsigned int *a2, _BYTE *a3)
{
  if (a1[598])
  {
    ps_gsm_remove_waiter_async(a1, a2);
  }

  else
  {
    OUTLINED_FUNCTION_5_3(a1, a2);
  }

  *a3 = 1;
}

void ps_gsm_wait_gst_cold_3(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s called for gst (%s) belonging to shared trigger", "ps_gsm_wait_gst", (a2 + 16));
  v4 = __PolarisGSMLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_1(&dword_25EA3A000, v5, v6, "%s:%d %s called for gst (%s) belonging to shared trigger", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PolarisGSMLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  ps_gsm_gst_handle_death_cold_1(v20, v21);
}

void ps_gsm_gst_handle_death_cold_1(unsigned __int8 a1, char **a2)
{
  *a2 = 0;
  v4 = asprintf(a2, "%s: invalid storage_mode %d", "void ps_gsm_gst_handle_death(ps_gsm_t, ps_gsm_gst_t)", a1);
  v6 = __PolarisGSMLogSharedInstance(v4, v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    *buf = 136315906;
    v19 = "ps_gsm_gst_handle_death";
    v20 = 1024;
    v21 = 1089;
    v22 = 2080;
    v23 = "void ps_gsm_gst_handle_death(ps_gsm_t, ps_gsm_gst_t)";
    v24 = 1024;
    v25 = a1;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s: invalid storage_mode %d", buf, 0x22u);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v9 = __PolarisGSMLogSharedInstance(v7, v8);
    if (OUTLINED_FUNCTION_6(v9))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v10, v11, "%s() failed to flush buffers with error code: %d", v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  ps_gsm_get_gst_cold_1();
}

uint64_t ps_gsm_shared_trigger_get_available_index_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Shared Trigger (%s) Exec Mask no longer has bit available to execute in single waiter architecture", (a2 + 2));
  v4 = __PolarisGSMLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Shared Trigger (%s) Exec Mask no longer has bit available to execute in single waiter architecture", v7, v8, v9, v10, v23, v24);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PolarisGSMLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = OUTLINED_FUNCTION_0();
  return ps_gsm_shared_trigger_get_available_index_cold_2(v20, v21);
}

void ps_gsm_shared_trigger_get_available_index_cold_2(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Shared Trigger (%s) Cached Mask changed in single waiter architecture", (a2 + 2));
  v4 = __PolarisGSMLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Shared Trigger (%s) Cached Mask changed in single waiter architecture", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PolarisGSMLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v20 = OUTLINED_FUNCTION_0();
  ps_gsm_wait_shared_trigger_cold_1(v20, v21);
}

void ps_gsm_wait_shared_trigger_cold_1(char **a1, uint64_t a2)
{
  *a1 = 0;
  v2 = asprintf(a1, "Exited shared trigger (%s) wait without a bit to execute", (a2 + 2));
  v4 = __PolarisGSMLogSharedInstance(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Exited shared trigger (%s) wait without a bit to execute", v7, v8, v9, v10, v20, v21);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PolarisGSMLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_0();
  ps_gsm_get_shared_trigger_cold_1();
}

void ps_util_assert_less_than_equal_unsigned_cold_1_0(char **a1, uint64_t a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Out of bounds assert error (%llu > %llu)", a2, 1024);
  v5 = __PSUtilitiesLogSharedInstance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "ps_util_assert_less_than_equal_unsigned";
    v12 = 1024;
    v13 = 199;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = 1024;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Out of bounds assert error (%llu > %llu)", buf, 0x26u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = __PSUtilitiesLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "ps_util_assert_less_than_equal_unsigned";
      v12 = 1024;
      v13 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  ps_gsm_notify_cold_1();
}

_DWORD *_liveness_remove_node(_DWORD *result, int a2)
{
  v2 = a2 & 0x7FFFFFF;
  if (v2 < result[8])
  {
    v3 = a2;
    v4 = result;
    v5 = result[2];
    v6 = result[3];
    v7 = result[5];
    v8 = result + (16 * result[4]);
    result = mach_absolute_time();
    v9 = &v8[400 * v2];
    *(v9 + 25) = result;
    if (v4[1])
    {
      if (v2 < v4[8])
      {
        v17 = &v4[4 * v2] + (16 * v4[3]);
        result = *v17;
        v18 = *(v17 + 8);
        v19 = -1;
        do
        {
          OUTLINED_FUNCTION_0_5(result, v18, v19);
          _ZF = _ZF && v21 == v20;
          result = v21;
          v18 = v22;
        }

        while (!_ZF);
      }
    }

    else
    {
      atomic_store(0, v9);
      atomic_fetch_add((&v4[v2] + (16 * v7)), 1u);
      v10 = &v4[4 * v2] + (16 * v6);
      result = *v10;
      _X2 = -1;
      do
      {
        _X5 = *(v10 + 8);
        __asm { CASPAL          X4, X5, X2, X3, [X10] }

        _ZF = _X4 == result;
        result = _X4;
      }

      while (!_ZF);
      v9[8] = 0;
      v9[88] = 0;
      v9[72] = 0;
      atomic_fetch_or((&v4[2 * (v2 >> 6)] + (16 * v5)), 1 << v3);
    }
  }

  return result;
}

uint64_t ps_liveness_reset_deadline_if_needed(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v28 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) != 0 && qword_27FD127D0)
  {
    if (a1 != -1)
    {
      v3 = a1 & 0x7FFFFFF;
      if ((a1 & 0x7FFFFFF) >= *(qword_27FD127D0 + 32))
      {
        snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_reset_deadline_if_needed", a1);
        if (qword_27FD127D0)
        {
          v13 = strlen(__str);
          if (v13)
          {
            v15 = OUTLINED_FUNCTION_3_8(v13, v14);
            OUTLINED_FUNCTION_2_7(v15, v16, v17, v18, v19, v20, v21, v22, v24, v25, 0, 0, v26);
            ps_ringbuffer_close_allocation();
          }
        }
      }

      else if (*(xmmword_27FD127E8 + 400 * v3 + 136) <= a2)
      {
        v2 = 1;
        v4 = a1;
        ps_liveness_node_pause(a1, 1);
        _X0 = 0;
        _X1 = 0;
        __asm { CASPAL          X0, X1, X0, X1, [X9] }

        v12 = (xmmword_27FD127E8 + 400 * v3);
        ps_liveness_node_set_deadlines(v4, v12[18], v12[19]);
        v12[18] = 0;
        v12[19] = 0;
        v12[17] = -1;
        v12[46] = 3000000000;
        ps_liveness_node_pause(v4, 0);
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

uint64_t ps_liveness_node_pause(int a1, int a2)
{
  result = 0;
  v34 = *MEMORY[0x277D85DE8];
  if ((a1 & 0x80000000) == 0 || !qword_27FD127D0)
  {
    return result;
  }

  if (a1 == -1)
  {
    return 0;
  }

  v4 = a1 & 0x7FFFFFF;
  if ((a1 & 0x7FFFFFFu) >= *(qword_27FD127D0 + 32))
  {
    snprintf(__str, 0x200uLL, "(%s) Node %x: out of range", "ps_liveness_node_pause", a1);
    if (qword_27FD127D0)
    {
      v20 = strlen(__str);
      if (v20)
      {
        v22 = OUTLINED_FUNCTION_3_8(v20, v21);
        OUTLINED_FUNCTION_2_7(v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, 0, 0, v32);
        ps_ringbuffer_close_allocation();
      }
    }

    return 0;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v11 = xmmword_27FD127E8 + 400 * v4;
  if (!a2 || _X2 == -1)
  {
    return 0;
  }

  if (v4 < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7();
    v13 = OUTLINED_FUNCTION_4_5(v12);
    do
    {
      OUTLINED_FUNCTION_0_5(v13, v14, v15);
      _ZF = _ZF && v17 == v16;
      v13 = v17;
      v14 = v18;
    }

    while (!_ZF);
  }

  *(v11 + 184) = mach_absolute_time();
  return 1;
}

uint64_t __ps_liveness_init_block_invoke_cold_1(char **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v1 = asprintf(a1, "Liveness: Failed to obtain an address from the serial data writer - cannot continue\n");
  v2 = __PLSLogSharedInstance(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v11 = 136315394;
    v12 = "ps_liveness_init_block_invoke";
    v13 = 1024;
    v14 = 843;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Liveness: Failed to obtain an address from the serial data writer - cannot continue\n", &v11, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "ps_liveness_init_block_invoke";
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v11, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return _liveness_cleanup_session_by_name_cold_1(v6, v7, v8, v9);
}

uint64_t _liveness_cleanup_session_by_name_cold_1(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  if ((a1 & 0x7FFFFFF) < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7();
    v8 = (v7 + 16 * (a1 & 0x7FFFFFF));
    v9 = *v8;
    v10 = v8[1];
    v11 = -1;
    do
    {
      OUTLINED_FUNCTION_0_5(v9, v10, v11);
      v15 = v15 && v13 == v12;
      v9 = v13;
      v10 = v14;
    }

    while (!v15);
  }

  v16 = ps_ringbuffer_allocate();
  *v16 = a3;
  *(v16 + 12) = *(xmmword_27FD127E8 + 400 * a1 + 116);
  v17 = atomic_load((*(&xmmword_27FD127F8 + 1) + 4 * a1));
  *(v16 + 16) = v17;
  *(v16 + 8) = a4;
  *(v16 + 20) = *(xmmword_27FD127E8 + 400 * a1 + 108);
  __strlcpy_chk();
  __strlcpy_chk();
  strlcpy((v16 + 104), (xmmword_27FD127E8 + 400 * a1 + 88), 0x10uLL);
  return ps_ringbuffer_close_allocation();
}

uint64_t ps_liveness_node_finalize_cold_1(unsigned int a1, uint64_t a2)
{
  if (a1 < *(qword_27FD127D0 + 32))
  {
    OUTLINED_FUNCTION_1_7();
    v4 = OUTLINED_FUNCTION_4_5(v3);
    do
    {
      OUTLINED_FUNCTION_0_5(v4, v5, v6);
      v10 = v10 && v8 == v7;
      v4 = v8;
      v5 = v9;
    }

    while (!v10);
  }

  result = mach_absolute_time();
  *(xmmword_27FD127E8 + 400 * a2 + 184) = result;
  return result;
}

uint64_t ps_liveness_server_init_state_cold_1(char **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Liveness: Failed to create serial data writer\n");
  v4 = _polarisdLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    v7 = *a1;
    v17 = 136315650;
    v18 = "ps_liveness_server_init_state";
    v19 = 1024;
    v20 = 856;
    v21 = 2080;
    v22 = v7;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v5, v6, "%s:%d %s", &v17);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v10 = v8;
    v11 = _polarisdLogSharedInstance(v8, v9);
    if (OUTLINED_FUNCTION_6(v11))
    {
      v17 = 136315394;
      v18 = "ps_liveness_server_init_state";
      v19 = 1024;
      v20 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", &v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_1(v14, v15);
}

uint64_t ps_liveness_server_init_cold_1(char **a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "Could not set attribute type compositor for graph:(%s) error:(%d)", liveness_workgroup_id, a2);
  v5 = _polarisdLogSharedInstance(v3, v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    v8 = *a1;
    v18 = 136315650;
    v19 = "_liveness_create_workgroup";
    v20 = 1024;
    v21 = 159;
    v22 = 2080;
    v23 = v8;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v6, v7, "%s:%d %s", &v18);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v11 = v9;
    v12 = _polarisdLogSharedInstance(v9, v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      v18 = 136315394;
      v19 = "_liveness_create_workgroup";
      v20 = 1024;
      v21 = v11;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", &v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_2(v15, v16);
}

uint64_t ps_liveness_server_init_cold_2(char **a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "Could not create pthread for liveness with err:(%d)", a2);
  v5 = _polarisdLogSharedInstance(v3, v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    v8 = *a1;
    v17 = 136315650;
    v18 = "ps_liveness_server_init";
    v19 = 1024;
    v20 = 939;
    v21 = 2080;
    v22 = v8;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v6, v7, "%s:%d %s", &v17);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v11 = v9;
    v12 = _polarisdLogSharedInstance(v9, v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      v17 = 136315394;
      v18 = "ps_liveness_server_init";
      v19 = 1024;
      v20 = v11;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", &v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_liveness_server_init_cold_3(v15);
}

uint64_t ps_liveness_server_init_cold_3(char **a1)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = __error();
  v3 = strerror(*v2);
  v4 = __error();
  v5 = asprintf(a1, "Could not create liveness workgroup with (%s) (%d)", v3, *v4);
  v7 = _polarisdLogSharedInstance(v5, v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    v10 = *a1;
    v19 = 136315650;
    v20 = "_liveness_create_workgroup";
    v21 = 1024;
    v22 = 169;
    v23 = 2080;
    v24 = v10;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v8, v9, "%s:%d %s", &v19);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = v11;
    v14 = _polarisdLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      v19 = 136315394;
      v20 = "_liveness_create_workgroup";
      v21 = 1024;
      v22 = v13;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", &v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v17 = OUTLINED_FUNCTION_0();
  return _liveness_watchdog_thread_cold_1(v17);
}

uint64_t _liveness_watchdog_thread_cold_1(char **a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Liveness: RT Watchdog annotation failed");
  v4 = _polarisdLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    v7 = *a1;
    v16 = 136315650;
    v17 = "_liveness_watchdog_thread";
    v18 = 1024;
    v19 = 630;
    v20 = 2080;
    v21 = v7;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v5, v6, "%s:%d %s", &v16);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v10 = v8;
    v11 = _polarisdLogSharedInstance(v8, v9);
    if (OUTLINED_FUNCTION_6(v11))
    {
      v16 = 136315394;
      v17 = "_liveness_watchdog_thread";
      v18 = 1024;
      v19 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", &v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return _liveness_watchdog_thread_cold_2(v14);
}

void _liveness_watchdog_thread_cold_2(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Could not align-alloc checkinTimes array");
  v4 = _polarisdLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    v7 = *a1;
    v14 = 136315650;
    v15 = "_liveness_watchdog_thread";
    v16 = 1024;
    v17 = 620;
    v18 = 2080;
    v19 = v7;
    OUTLINED_FUNCTION_1_8(&dword_25EA3A000, v5, v6, "%s:%d %s", &v14);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v10 = v8;
    v11 = _polarisdLogSharedInstance(v8, v9);
    if (OUTLINED_FUNCTION_6(v11))
    {
      v14 = 136315394;
      v15 = "_liveness_watchdog_thread";
      v16 = 1024;
      v17 = v10;
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", &v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  __PSSGLogSharedInstance_cold_1();
}

CVPixelBufferRef cvpixBufferAllocator(uint64_t *a1)
{
  v111 = *MEMORY[0x277D85DE8];
  pixelBufferOut = 0;
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 4);
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CVPixelFormatDescriptionCreateWithPixelFormatType(v4, v3);
  [CFDictionaryGetValue(v6 *MEMORY[0x277CC4F38])];
  v7 = [CFDictionaryGetValue(v6 *MEMORY[0x277CC4F48])];
  [CFDictionaryGetValue(v6 *MEMORY[0x277CC4ED8])];
  v8 = [CFDictionaryGetValue(v6 *MEMORY[0x277CC4ED0])];
  v9 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4EF0]);
  v107 = CFDictionaryGetValue(v6, *MEMORY[0x277CC4EE8]);
  v105 = v9;
  if (v9)
  {
    v10 = [v9 unsignedIntValue];
  }

  else
  {
    v10 = 1;
  }

  if (v107)
  {
    v11 = [v107 unsignedIntValue];
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v6);
  value = CFArrayCreateMutable(v4, 2, MEMORY[0x277CBF128]);
  if (value)
  {
    if (v7)
    {
      v12 = (v1 + 63) & 0xFFFFFFFFFFFFFFC0;
      v13 = v2;
      v14 = v1;
      v15 = (v13 + 63) & 0xFFFFFFFFFFFFFFC0;
      v16 = v15 * v12;
      v104 = v12;
      v17 = (v15 >> 1) * v12;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2970], &unk_2870CAE90);
      v18 = *MEMORY[0x277CD2B88];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v19 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v19, v18, v20);
      v21 = *MEMORY[0x277CD2A28];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v22 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v22, v21, v23);
      v24 = *MEMORY[0x277CD2A70];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      v25 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v25, v24, v26);
      v27 = *MEMORY[0x277CD2948];
      v103 = v17;
      v28 = v16;
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v17 + v16];
      v29 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v29, v27, v30);
      v31 = value;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], value);
      v32 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v32)
      {
        goto LABEL_25;
      }

      v33 = v32;
      CFArrayAppendValue(value, v32);
      key = *MEMORY[0x277CD2B38];
      CFDictionarySetValue(v33, *MEMORY[0x277CD2B38], &unk_2870CAE90);
      v34 = *MEMORY[0x277CD2B50];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
      v35 = OUTLINED_FUNCTION_3_9();
      v102 = v34;
      CFDictionarySetValue(v35, v34, v36);
      v37 = *MEMORY[0x277CD2B18];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v38 = OUTLINED_FUNCTION_3_9();
      v101 = v37;
      CFDictionarySetValue(v38, v37, v39);
      v40 = *MEMORY[0x277CD2A98];
      CFDictionarySetValue(v33, *MEMORY[0x277CD2A98], &unk_2870CAEA8);
      v41 = *MEMORY[0x277CD2AA0];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v104];
      v42 = OUTLINED_FUNCTION_3_9();
      v99 = v41;
      CFDictionarySetValue(v42, v41, v43);
      v44 = *MEMORY[0x277CD2B40];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v45 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v45, v44, v46);
      CFRelease(v33);
      v47 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v47)
      {
        goto LABEL_25;
      }

      v48 = v47;
      CFArrayAppendValue(value, v47);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v28];
      v49 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v49, key, v50);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v14 + 1) >> 1];
      v51 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v51, v102, v52);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v13 + 1) >> 1];
      v53 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v53, v101, v54);
      CFDictionarySetValue(v48, v40, &unk_2870CAEC0);
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v104];
      v55 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v55, v99, v56);
      v57 = MEMORY[0x277CCABB0];
      v58 = v103;
    }

    else
    {
      v59 = *MEMORY[0x277CD2B88];
      v60 = v8 / v10 / v11;
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v61 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v61, v59, v62);
      v63 = *MEMORY[0x277CD2A28];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v64 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v64, v63, v65);
      v66 = *MEMORY[0x277CD2A70];
      [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
      v67 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v67, v66, v68);
      v69 = *MEMORY[0x277CD2960];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60 >> 3];
      v70 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v70, v69, v71);
      v72 = *MEMORY[0x277CD2968];
      v73 = (v1 * v60 + 511) >> 3;
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v73 & 0x1FFFFFFFFFFFFFC0];
      v74 = OUTLINED_FUNCTION_5_4();
      CFDictionarySetValue(v74, v72, v75);
      if (v3 != 1899524402)
      {
LABEL_16:
        v88 = IOSurfaceCreate(Mutable);
        v31 = value;
        if (v88)
        {
          v89 = v88;
          CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
          v90 = CVPixelBufferCreateWithIOSurface(v4, v89, Mutable, &pixelBufferOut);
          if (v90)
          {
            v95 = v90;
            v96 = __PLSLogSharedInstance(v90);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v110 = v95;
              v97 = "failed to create CV Pixel Buffer for resource ret=%d";
LABEL_30:
              _os_log_impl(&dword_25EA3A000, v96, OS_LOG_TYPE_ERROR, v97, buf, 8u);
            }
          }

          else
          {
            v91 = CVPixelBufferIncrementUseCountForCategory();
            if (!v91)
            {
LABEL_19:
              CFRelease(value);
              v92 = v89;
LABEL_20:
              CFRelease(v92);
              goto LABEL_21;
            }

            v98 = v91;
            v96 = __PLSLogSharedInstance(v91);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v110 = v98;
              v97 = "failed to increment category 1 use count for CV Pixel Buffer ret=%d";
              goto LABEL_30;
            }
          }

          goto LABEL_19;
        }

        NSLog(&cfstr_FailedToAlloca_6.isa);
LABEL_25:
        v92 = v31;
        goto LABEL_20;
      }

      v31 = value;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD2B30], value);
      v76 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v76)
      {
        goto LABEL_25;
      }

      v48 = v76;
      CFArrayAppendValue(value, v76);
      CFDictionarySetValue(v48, *MEMORY[0x277CD2B38], &unk_2870CAE90);
      v77 = *MEMORY[0x277CD2B50];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
      v78 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v78, v77, v79);
      v80 = *MEMORY[0x277CD2B18];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
      v81 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v81, v80, v82);
      v83 = *MEMORY[0x277CD2A88];
      [MEMORY[0x277CCABB0] numberWithUnsignedLong:v60];
      v84 = OUTLINED_FUNCTION_3_9();
      CFDictionarySetValue(v84, v83, v85);
      v44 = *MEMORY[0x277CD2AA0];
      v57 = MEMORY[0x277CCABB0];
      v58 = v73 & 0x1FFFFFFFFFFFFFC0;
    }

    [v57 numberWithUnsignedLong:v58];
    v86 = OUTLINED_FUNCTION_3_9();
    CFDictionarySetValue(v86, v44, v87);
    CFRelease(v48);
    goto LABEL_16;
  }

LABEL_21:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v93 = pixelBufferOut;

  return v93;
}

uint64_t ps_buffer_writer_init_cold_1(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "OOM!!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    v9 = 136315394;
    v10 = "ps_buffer_writer_init";
    v11 = 1024;
    v12 = 257;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d OOM!!", &v9, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance(v4);
    if (OUTLINED_FUNCTION_6(v6))
    {
      v9 = 136315394;
      v10 = "ps_buffer_writer_init";
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_1(v7);
}

uint64_t ps_buffer_writer_create_resource_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Unsupported resource class to create resource", "ps_buffer_writer_create_resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Unsupported resource class to create resource", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_2(v18, v19);
}

uint64_t ps_buffer_writer_create_resource_cold_2(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Invalid metadata type passed into ps buffer writer create method for key: %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Invalid metadata type passed into ps buffer writer create method for key: %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_create_resource_cold_3(v19, v20);
}

void ps_buffer_writer_create_resource_cold_3(char **a1, const char *a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to create GSM source for key %s", a2);
  v4 = __PLSLogSharedInstance(v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v5, v6, "%s:%d Unable to create GSM source for key %s", v7, v8, v9, v10, v20, v21);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v12 = __PLSLogSharedInstance(v11);
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
  cvdataBufferAllocator_cold_1_0(v19);
}

void cvdataBufferAllocator_cold_1_0(uint64_t a1)
{
  v1 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "failed to allocate IO Surface for properties", v2, 2u);
  }
}

void cvdataBufferAllocator_cold_2_0(uint64_t *a1, uint64_t *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6 = *a2;
    v7 = 136315650;
    v8 = "cvdataBufferAllocator";
    v9 = 2048;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "integer overflow in computing allocSize in %s (width=%lu, height=%lu)", &v7, 0x20u);
  }
}

uint64_t ps_buffer_writer_camerastream_install_bufferpool_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Unsupported resource class to create resource", "ps_buffer_writer_camerastream_install_bufferpool");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Unsupported resource class to create resource", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_get_cam_stream_attr_cold_1(v18);
}

uint64_t ps_buffer_writer_get_cam_stream_attr_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Cannot get attributes for invalid resource type.", "ps_buffer_writer_get_cam_stream_attr");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Cannot get attributes for invalid resource type.", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _publishCVPixelBuffer_cold_1(v18);
}

uint64_t _publishCVPixelBuffer_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Serialize metadata failed. Aborting!", "_publishCVPixelBuffer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Serialize metadata failed. Aborting!", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return _publishCVDataBuffer_cold_1(v18);
}

uint64_t _publishCVDataBuffer_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Serialize metadata failed. Aborting!", "_publishCVDataBuffer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Serialize metadata failed. Aborting!", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_1(v18, v19);
}

uint64_t ps_buffer_writer_publish_resource_cold_1(char **a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No metadata found for resource %s", v4);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No metadata found for resource %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_2(v21, v22);
}

uint64_t ps_buffer_writer_publish_resource_cold_2(char **a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No metadata found for resource %s", v4);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No metadata found for resource %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_3(v21, v22);
}

uint64_t ps_buffer_writer_publish_resource_cold_3(char **a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No metadata found for resource %s", v4);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No metadata found for resource %s", v9, v10, v11, v12, v24, v25);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v24, v25);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_4(v21, v22);
}

uint64_t ps_buffer_writer_publish_resource_cold_4(char **a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_9_3(a1, *MEMORY[0x277D85DE8]);
  v5 = asprintf(a1, "No metadata found for resource %s", v4);
  v6 = __PLSLogSharedInstance(v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    ps_resource_get_key();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d No metadata found for resource %s", v9, v10, v11, v12, v23, v24);
  }

  v13 = OSLogFlushBuffers();
  if (v13)
  {
    v14 = __PLSLogSharedInstance(v13);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v15, v16, "%s() failed to flush buffers with error code: %d", v17, v18, v19, v20, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v21 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_5(v21);
}

uint64_t ps_buffer_writer_publish_resource_cold_5(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Unsupported resource type to publish. Aborting!", "ps_buffer_writer_publish_resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Unsupported resource type to publish. Aborting!", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_publish_resource_cold_6(v18);
}

uint64_t ps_buffer_writer_publish_resource_cold_6(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): Unsupported resource type to publish. Aborting!", "ps_buffer_writer_publish_resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): Unsupported resource type to publish. Aborting!", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_camerastream_attach_synctag_cold_1(v18);
}

uint64_t ps_buffer_writer_camerastream_attach_synctag_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): This method is currently unsupported for normal buffer writers. Aborting!", "ps_buffer_writer_camerastream_attach_synctag");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): This method is currently unsupported for normal buffer writers. Aborting!", v6, v7, v8, v9, v20, v21);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_buffer_writer_broadcast_resource_cold_1(v18);
}

void ps_buffer_writer_broadcast_resource_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "(%s): This method is currently unsupported for normal buffer writers. Aborting!", "ps_buffer_writer_broadcast_resource");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d (%s): This method is currently unsupported for normal buffer writers. Aborting!", v6, v7, v8, v9, v18, v19);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  +[PSRCConstants setUp];
}

uint64_t ps_synchronizer_init_cold_1(char **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: OOM!", "ps_synchronizer_init");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *buf = 136315650;
    v19 = "ps_synchronizer_init";
    v20 = 1024;
    v21 = 20;
    v22 = 2080;
    v23 = "ps_synchronizer_init";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s: OOM!", v6, v7, v8, v9, v16, v17);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_1(v14);
}

uint64_t ps_synchronizer_register_writer_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_synchronizer_register_writer";
    *&v20[12] = 1024;
    *&v20[14] = 85;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_2(v18);
}

uint64_t ps_synchronizer_register_writer_cold_2(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "OOM!");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_synchronizer_register_writer";
    *&v20[12] = 1024;
    *&v20[14] = 66;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d OOM!", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_3(v18);
}

uint64_t ps_synchronizer_register_writer_cold_3(char **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: OOM!", "ps_synchronizer_register_writer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *buf = 136315650;
    v19 = "ps_synchronizer_register_writer";
    v20 = 1024;
    v21 = 55;
    v22 = 2080;
    v23 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s: OOM!", v6, v7, v8, v9, v16, v17);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_4(v14);
}

uint64_t ps_synchronizer_register_writer_cold_4(char **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: Invalid buffer_writer", "ps_synchronizer_register_writer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *buf = 136315650;
    v19 = "ps_synchronizer_register_writer";
    v20 = 1024;
    v21 = 45;
    v22 = 2080;
    v23 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s: Invalid buffer_writer", v6, v7, v8, v9, v16, v17);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_register_writer_cold_5(v14);
}

uint64_t ps_synchronizer_register_writer_cold_5(char **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: Invalid synchronizer", "ps_synchronizer_register_writer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *buf = 136315650;
    v19 = "ps_synchronizer_register_writer";
    v20 = 1024;
    v21 = 41;
    v22 = 2080;
    v23 = "ps_synchronizer_register_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s: Invalid synchronizer", v6, v7, v8, v9, v16, v17);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_1(v14);
}

uint64_t ps_synchronizer_unregister_writer_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Unregister called. But was never initialized");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_synchronizer_unregister_writer";
    *&v20[12] = 1024;
    *&v20[14] = 107;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Unregister called. But was never initialized", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_2(v18);
}

uint64_t ps_synchronizer_unregister_writer_cold_2(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Something is wrong. Lock value is not valid");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v20 = 136315394;
    *&v20[4] = "ps_synchronizer_unregister_writer";
    *&v20[12] = 1024;
    *&v20[14] = 111;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Something is wrong. Lock value is not valid", v6, v7, v8, v9, *v20, *&v20[8], *&v20[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v18 = OUTLINED_FUNCTION_0();
  return ps_synchronizer_unregister_writer_cold_3(v18);
}

void ps_synchronizer_unregister_writer_cold_3(char **a1)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "%s: Invalid synchronizer", "ps_synchronizer_unregister_writer");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *buf = 136315650;
    v18 = "ps_synchronizer_unregister_writer";
    v19 = 1024;
    v20 = 99;
    v21 = 2080;
    v22 = "ps_synchronizer_unregister_writer";
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s: Invalid synchronizer", v6, v7, v8, v9, v15, v16);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_3_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v14 = OUTLINED_FUNCTION_0();
  ps_synchronizer_check_time_and_broadcast_cold_1(v14);
}

void ps_synchronizer_check_time_and_broadcast_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Something is wrong. Lock value is not valid in broadcast");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v18 = 136315394;
    *&v18[4] = "ps_synchronizer_check_time_and_broadcast";
    *&v18[12] = 1024;
    *&v18[14] = 176;
    OUTLINED_FUNCTION_1_0(&dword_25EA3A000, v4, v5, "%s:%d Something is wrong. Lock value is not valid in broadcast", v6, v7, v8, v9, *v18, *&v18[8], *&v18[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PLSLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_0(&dword_25EA3A000, v12, v13, "%s() failed to flush buffers with error code: %d", v14, v15, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  OUTLINED_FUNCTION_0();
  [PSSystemGraphClientInterface serverRequestedResourcesWithStrides:];
}

void PSSG::Client::flushRegisterDeregisterAcknowledgements()
{
  __assert_rtn("flushRegisterDeregisterAcknowledgements", "PSSGClientProxy.cpp", 460, "mClientPendingRegisterAck == false");
}

{
  __assert_rtn("flushRegisterDeregisterAcknowledgements", "PSSGClientProxy.cpp", 455, "mClientPendingDeRegisterAck == false");
}

void PSSG::ServerComms::deallocateOOLMemory(char **a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "Unknown mach msg descriptor type %#x\n", a2);
  v5 = __PSSGLogSharedInstance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v13 = "deallocateOOLMemory";
    v14 = 1024;
    v15 = 529;
    v16 = 1024;
    v17 = a2;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d Unknown mach msg descriptor type %#x\n", buf, 0x18u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = __PSSGLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "deallocateOOLMemory";
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v10 = abort_with_reason();
  ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_cold_1(v10, v11);
}

void ___ZN4PSSGL16sys_graph_notifyEPvP14comms_cb_arg_t_block_invoke_cold_1(NSObject *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "sys_graph_notify_block_invoke";
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_25EA3A000, a1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v4, 0x12u);
  }
}

void PSSH::SysProcessMonitor::handleProcessRegisterDispatched()
{
  OUTLINED_FUNCTION_2_4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
  }
}

void PSSH::SysProcessMonitor::handleProcessDiedDispatched()
{
  OUTLINED_FUNCTION_2_4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x12u);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
  }
}

uint64_t PSSH::SysProcessMonitor::handleProcessDiedDispatched(NSObject *a1, char *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  result = os_signpost_enabled(a1);
  if (result)
  {
    if (*a2 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *v8 = 136315394;
    *&v8[4] = "handleProcessDiedDispatched";
    *&v8[12] = 2080;
    *&v8[14] = v7;
    return _os_signpost_emit_unreliably_with_name_impl(&dword_25EA3A000, a1, 0, 0xEEEEB0B5B2B2EEEELL, "PSSH Log", "%s() process [%s] is not monitored. ignoring", *v8, *&v8[8]);
  }

  return result;
}

void PSSH::SysProcessMonitor::handleSystemActionKillProcessDispatched()
{
  OUTLINED_FUNCTION_2_4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_INFO, v3, v4, 0x12u);
  }
}

{
  OUTLINED_FUNCTION_2_4();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_1_9();
    _os_log_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x12u);
  }
}

void ps_system_action_handle_graph_hang_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "ps_system_action_handle_graph_hang";
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_INFO, "%s() system action is paused. Ignoring.", &v3, 0xCu);
  }
}

void ps_system_action_handle_graph_hang_cold_3(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = __PSSysHealthLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v6 = 136315394;
    v7 = a1;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_DEBUG, "PolarisD SystemAction::Critical Graph [%s] is Hung for less than [%llu] (waitTimeBeforeKillMs), not taking any action for now", &v6, 0x16u);
  }
}

uint64_t ps_system_action_trigger_panic(char **a1, const char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "%s() panicMessage: [%s]", "ps_system_action_trigger_panic", a2);
  v5 = __PSSysHealthLogSharedInstance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v12 = "ps_system_action_trigger_panic";
    v13 = 1024;
    v14 = 188;
    v15 = 2080;
    v16 = "ps_system_action_trigger_panic";
    v17 = 2080;
    v18 = a2;
    _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s() panicMessage: [%s]", buf, 0x26u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v8 = v6;
    v9 = __PSSysHealthLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "ps_system_action_trigger_panic";
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return ps_telemetry_is_enabled();
}

uint64_t ps_telemetry_is_enabled()
{
  if (ps_telemetry_is_disabled_for_current_process)
  {
    v2 = 0;
  }

  else
  {
    v0 = &unk_27FD13000;
    v1 = _MergedGlobals;
    if (!_MergedGlobals)
    {
      if (qword_27FD132F8 != -1)
      {
        dispatch_once(&qword_27FD132F8, &__block_literal_global_25);
        v0 = &unk_27FD13000;
      }

      v1 = *(v0 + 94);
    }

    v2 = atomic_load(v1);
  }

  return v2 & 1;
}

void ps_telemetry_init_reader_cold_1(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  v4 = asprintf(v2, "%s Encountered an error while connecting to sysgraph xpc service : error = %s", xmmword_27FD2B658, v3);
  v6 = __PSTelemetryLogSharedInstance(v4, v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d %s", v9, v10, v11, v12, v14, v15);
  }

  v13 = OUTLINED_FUNCTION_0();
  ps_telemetry_init_reader_cold_2(v13);
}

void ps_telemetry_init_reader_cold_2(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "Received a NULL graph_reply from polarisd for graph addition for session %s", xmmword_27FD2B658);
  v3 = __PSTelemetryLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v4, v5, "%s:%d %s", v6, v7, v8, v9, v12, v13);
  }

  v10 = OUTLINED_FUNCTION_0();
  ps_telemetry_init_reader_cold_3(v10, v11);
}

void ps_telemetry_init_reader_cold_3(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  v4 = asprintf(v2, "Did not a receive a reply from polarisd for graph addition for session %s! Error = %s", xmmword_27FD2B658, v3);
  v6 = __PSTelemetryLogSharedInstance(v4, v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d %s", v9, v10, v11, v12, v14, v15);
  }

  v13 = OUTLINED_FUNCTION_0();
  ps_telemetry_start_reader_cold_1(v13);
}

void ps_telemetry_start_reader_cold_1(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "Failed to create telemetry pthread");
  v4 = __PSTelemetryLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    *v11 = 136315650;
    *&v11[4] = "ps_telemetry_start_reader";
    *&v11[12] = 1024;
    *&v11[14] = 167;
    *&v11[18] = 2080;
    *&v11[20] = *a1;
    OUTLINED_FUNCTION_4_6(&dword_25EA3A000, v5, v6, "%s:%d %s", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16], *&v11[24]);
  }

  OUTLINED_FUNCTION_0();
  __ps_telemetry_start_reader_block_invoke_cold_1();
}

void remove_remote_gst_cold_1(void *a1, _xpc_rich_error_s *a2)
{
  v3 = OUTLINED_FUNCTION_3_10(a1, a2);
  v4 = asprintf(v2, "Could not send a message for gst removal for session %s! Error = %s", xmmword_27FD2B658, v3);
  v6 = __PSTelemetryLogSharedInstance(v4, v5);
  if (OUTLINED_FUNCTION_5(v6))
  {
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v7, v8, "%s:%d %s", v9, v10, v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_0();
  __setup_xpc_connection_block_invoke_cold_1();
}

uint64_t ps_telemetry_create_string_id(char *__s1)
{
  if (ps_telemetry_is_disabled_for_current_process)
  {
    return 0xFFFFLL;
  }

  v2 = atomic_load(byte_27FD2EE84);
  if ((v2 & 1) == 0 && ps_telemetry_init_process_onceToken != -1)
  {
    dispatch_once(&ps_telemetry_init_process_onceToken, &__block_literal_global_29);
  }

  if (!atomic_load(qword_27FD2DE78))
  {
LABEL_9:
    v8 = atomic_load(qword_27FD2DE78);
    if (v8 != 1024)
    {
      add = atomic_fetch_add(qword_27FD2DE78, 1u);
      strlcpy((qword_27FD2DE78 + 130 * add + 4), __s1, 0x80uLL);
      atomic_store(add, (qword_27FD2DE78 + 130 * add + 2));
      return add;
    }

    return 0xFFFFLL;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = qword_27FD2DE78;
    if (!strncmp(__s1, (qword_27FD2DE78 + v5 * 2 + 2), 0x80uLL))
    {
      return atomic_load(&v6[v5]);
    }

    ++v4;
    v7 = atomic_load(v6);
    v5 += 65;
    if (v4 >= v7)
    {
      goto LABEL_9;
    }
  }
}

_BYTE *ps_telemetry_init_thread_cold_1()
{
  v12 = *MEMORY[0x277D85DE8];
  result = threadState();
  if ((*result & 1) == 0)
  {
    v1 = result;
    *result = 1;
    v2 = threadid();
    pthread_threadid_np(0, v2);
    v3 = pthread_self();
    pthread_getname_np(v3, __s1, 0x40uLL);
    ps_telemetry_create_string_id(__s1);
    v7 = threadNameID(&threadNameID, v4, v5, v6);
    *v7 = v9;
    LOBYTE(v9) = atomic_load(&ps_telemetry_writer_context[514] + 4);
    if ((v9 & 1) == 0)
    {
      ps_telemetry_init_process(v7, v8);
    }

    ps_telemetry_acquire_thread_buffer(*v2);
    result = buffer();
    *result = v10;
    if (v10)
    {
      *(v1 + 1) = 0;
      *(v1 + 3) = 0;
    }
  }

  return result;
}

void ps_telemetry_deinit_thread_cold_1()
{
  v0 = *buffer();
  if (v0)
  {

    ps_telemetry_release_thread_buffer(v0);
  }
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}