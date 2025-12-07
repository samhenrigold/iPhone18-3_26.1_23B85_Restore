uint64_t ps_buffer_resource_get_index(uint64_t a1)
{
  result = **(a1 + 16);
  if (result == 0x7FFFFFFF)
  {
    v4[1] = v1;
    v4[2] = v2;
    ps_buffer_resource_get_index_cold_1(v4);
  }

  return result;
}

uint64_t ps_buffer_delete_read_buffer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_delete_write_buffer(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ps_buffer_get_resource_view_index(uint64_t a1)
{
  result = **(a1 + 16);
  if (result == 0x7FFFFFFF)
  {
    v4[1] = v1;
    v4[2] = v2;
    ps_buffer_get_resource_view_index_cold_1(v4);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_1()
{

  return abort_with_reason();
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t PSShbufferGroup::isLocklessSupported(PSShbufferGroup *this, const char *a2)
{
  v3 = 0;
  while (1)
  {
    v4 = strlen(PSShbufferGroup::_fastpathReplayKeys[v3]);
    result = strncmp(a2, PSShbufferGroup::_fastpathReplayKeys[v3], v4);
    if (!result)
    {
      break;
    }

    if (++v3 == 2)
    {
      result = strncmp(a2, "local-kAddAnchorOutput", 0x17uLL);
      if (result)
      {
        result = strncmp(a2, "local-kRemoveAnchorOutput", 0x1AuLL);
        if (result)
        {
          return strncmp(a2, "local-kAnchorGroupChangedOutput", 0x20uLL) != 0;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t PSShbufferGroup::addResinfo(uint64_t a1, PSSharedResource *a2, int a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x50uLL, 0x10A00406ADA8A08uLL);
  if (!v8)
  {
    PSShbufferGroup::addResinfo();
  }

  v9 = v8;
  if (*(a1 + 624))
  {
    **(a1 + 616) = v8;
  }

  else
  {
    *(a1 + 624) = v8;
  }

  *(a1 + 616) = v8;
  *v8 = 0;
  ID = PSSharedResource::getID(a2);
  *(v9 + 2) = ID;
  *(v9 + 4) = ID;
  *(v9 + 5) = a3;
  v9[3] = 0;
  *(v9 + 8) = ID;
  *(v9 + 9) = a4;
  v9[5] = 0;
  v9[6] = a2;
  *(v9 + 14) = -1;
  *(a1 + 560) = vadd_s32(*(a1 + 560), 0x100000001);
  return 0;
}

uint64_t PSShbufferGroup::updateResourceFactoryStatus(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v17 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 1024;
    *(&buf[0].msgh_local_port + 2) = v3;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus:%d\n", buf, 0x12u);
  }

  if (v3 >= 4)
  {
    PSShbufferGroup::updateResourceFactoryStatus();
  }

  bzero(v11, 0x888uLL);
  strlcpy(v12, (v4 + 16), 0x200uLL);
  v16 = 0xD0000000CLL;
  v13 = 20;
  v14 = v3;
  v15 = *(v4 + 636);
  PSCommsClient::send_wait(*(v4 + 8), v11, 0x888u, buf, 2200, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::updateResourceFactoryStatus(&v8, v4 + 16);
LABEL_11:
    PSShbufferGroup::updateResourceFactoryStatus(v4);
  }

  isAck = PSCommsClient::isAck(v11, &buf[0].msgh_bits);
  v4 = _ps_buffer_log;
  if (isAck)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315138;
    v9 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus SUCCESS\n", &v8, 0xCu);
  }

  return 0;
}

uint64_t PSShbufferGroup::setupSerialDataLines(PSShbufferGroup *this, PSSharedSerialData *a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "SHBUFFER";
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupSerialData at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 64))(a2, v6);
      *(v10 + 4) = 3;
      if (++v6 >= *(this + 159))
      {
        return 0;
      }
    }

    PSShbufferGroup::setupSerialDataLines(buf);
LABEL_10:
    PSShbufferGroup::setupSerialDataLines();
  }

  return 0;
}

uint64_t PSShbufferGroup::setupIOSurfaceLines(PSShbufferGroup *this, PSSharedIOSurface *a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "SHBUFFER";
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupIOSurface at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 48))(a2, v6);
      *(v10 + 4) = 4;
      if (++v6 >= *(this + 159))
      {
        return 0;
      }
    }

    PSShbufferGroup::setupIOSurfaceLines(buf);
LABEL_10:
    PSShbufferGroup::setupIOSurfaceLines();
  }

  return 0;
}

uint64_t PSShbufferGroup::setupCVPixelBufferLines(PSShbufferGroup *this, PSSharedCVPixelBuffer *a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "SHBUFFER";
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupCVPixelBuffer at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = PSSharedCVPixelBuffer::getBuffer(a2, v6);
      *(v10 + 4) = 0;
      if (++v6 >= *(this + 159))
      {
        return 0;
      }
    }

    PSShbufferGroup::setupCVPixelBufferLines(buf);
LABEL_10:
    PSShbufferGroup::setupCVPixelBufferLines();
  }

  return 0;
}

uint64_t PSShbufferGroup::setupCVDataBufferLines(PSShbufferGroup *this, PSSharedCVDataBuffer *a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 141) <= a3)
  {
    goto LABEL_10;
  }

  if (*(this + 159))
  {
    v6 = 0;
    v7 = a3;
    while (1)
    {
      v8 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        v13 = "SHBUFFER";
        v14 = 1024;
        v15 = v6;
        v16 = 1024;
        v17 = a3;
        _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_DEBUG, "%s: setupCVDataBuffer at [%d][%d]\n", buf, 0x18u);
      }

      v9 = *(*(this + 80) + 8 * v6);
      if (!v9)
      {
        break;
      }

      v10 = v9 + 32 * v7;
      *v10 = a3;
      *(v10 + 8) = (*(*a2 + 48))(a2, v6);
      *(v10 + 4) = 1;
      if (++v6 >= *(this + 159))
      {
        return 0;
      }
    }

    PSShbufferGroup::setupCVDataBufferLines(buf);
LABEL_10:
    PSShbufferGroup::setupCVDataBufferLines();
  }

  return 0;
}

uint64_t PSShbufferGroup::registerBufferGroup(PSShbufferGroup *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v24 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 2080;
    *(&buf[0].msgh_local_port + 2) = PSSharedResource::getKey(v6);
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: registerBufferGroup:%s\n", buf, 0x16u);
  }

  bzero(v17, 0x888uLL);
  strlcpy(v18, (v6 + 16), 0x200uLL);
  v23 = 1;
  v19 = v5;
  v20 = v3;
  v21 = 0;
  v22 = 0;
  bzero(buf, 0x898uLL);
  PSCommsClient::send_wait(*(v6 + 8), v17, 0x888u, buf, 2200, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::registerBufferGroup(&v11, v6 + 16);
  }

  isAck = PSCommsClient::isAck(v17, &buf[0].msgh_bits);
  v9 = _ps_buffer_log;
  if (isAck)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = (v6 + 16);
      v13 = 1024;
      v14 = isAck;
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "Failed to register buffer group for key: %s with Resource Factory. Err code: %d", &v11, 0x12u);
    }
  }

  else
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "SHBUFFER";
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s: registerBufferGroup SUCCESS\n", &v11, 0xCu);
    }

    *(v6 + 568) = v16;
  }

  return isAck;
}

uint64_t PSShbufferGroup::unregisterBufferGroup(PSShbufferGroup *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v22 = *MEMORY[0x277D85DE8];
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    buf[0].msgh_bits = 136315394;
    *&buf[0].msgh_size = "SHBUFFER";
    LOWORD(buf[0].msgh_local_port) = 2080;
    *(&buf[0].msgh_local_port + 2) = PSSharedResource::getKey(v6);
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_DEBUG, "%s: unregisterBufferGroup:%s\n", buf, 0x16u);
  }

  bzero(v14, 0x888uLL);
  strlcpy(v15, (v6 + 16), 0x200uLL);
  v21 = 2;
  v16 = v5;
  v18 = v3;
  v19 = 0;
  v20 = 0;
  v17 = *(v6 + 568);
  bzero(buf, 0x898uLL);
  PSCommsClient::send_wait(*(v6 + 8), v14, 0x888u, buf, 2200, 0);
  if (!PSCommsClient::is_valid_simple_message(buf))
  {
    PSShbufferGroup::unregisterBufferGroup(&v11, v6 + 16);
  }

  isAck = PSCommsClient::isAck(v14, &buf[0].msgh_bits);
  v9 = _ps_buffer_log;
  if (isAck)
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = (v6 + 16);
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_ERROR, "Failed to unregister buffer group for key: %s with Resource Factory. We have reached maximum processes allowed.", &v11, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "SHBUFFER";
      _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "%s: unregisterBufferGroup SUCCESS\n", &v11, 0xCu);
    }

    *(v6 + 568) = 0x7FFFFFFF;
  }

  return isAck;
}

uint64_t PSShbufferGroup::deallocate(PSShbufferGroup *this)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "SHBUFFER";
    v17 = 2080;
    v18 = "deallocate";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s:%s Bye!\n", &v15, 0x16u);
  }

  v3 = *(this + 138);
  v4 = *(this + 143);
  v5 = (v4 + v3);
  if (v4 + v3 && *(this + 141))
  {
    v6 = *(this + 73);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    if (*(this + 75))
    {
      v7 = *(this + 76);
      *(this + 75) = 0;
      *(this + 76) = 0;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    (*(*this + 48))(this);
    v8 = *(this + 78);
    if (v8)
    {
      do
      {
        v9 = v8[6];
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        v10 = *v8;
        free(v8);
        v8 = v10;
      }

      while (v10);
    }

    v11 = 0;
    do
    {
      free(*(*(*(this + 80) + 8 * v11) + 16));
      free(*(*(this + 80) + 8 * v11++));
    }

    while (v5 != v11);
    free(*(this + 80));
  }

  else
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = *(this + 141);
      v15 = 136315906;
      v16 = "SHBUFFER";
      v17 = 2080;
      v18 = "deallocate";
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v13;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s:%s Nothing to deallocate num_lines=%d num_client_resources=%d\n", &v15, 0x22u);
    }
  }

  return 0;
}

uint64_t PSShbufferGroup::finalizeSetup(PSShbufferGroup *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v41 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s- --- finalizeSetup ---\n", buf, 0xCu);
  }

  v3 = *(this + 138);
  v4 = *(this + 143);
  v5 = (v4 + v3);
  if (!(v4 + v3) || !*(this + 141))
  {
    PSShbufferGroup::finalizeSetup();
  }

  v6 = malloc_type_calloc(1uLL, 8 * (v4 + v3), 0x2004093837F09uLL);
  *(this + 80) = v6;
  if (!v6)
  {
    PSShbufferGroup::finalizeSetup();
  }

  v7 = 0;
  do
  {
    *(*(this + 80) + 8 * v7) = malloc_type_calloc(1uLL, 32 * *(this + 141), 0x108004009D44AE3uLL);
    if (!*(*(this + 80) + 8 * v7))
    {
      v17 = PSShbufferGroup::finalizeSetup(v7, buf, v8, v9, v10, v11, v12, v13, v38, v39, buf[0], v41, SHIDWORD(v41), v42, *(&v43 + 2), SHIWORD(v43), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
LABEL_46:
      PSShbufferGroup::finalizeSetup(v17, v7);
    }

    v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    v15 = *(this + 80);
    *(*(v15 + 8 * v7) + 16) = v14;
    *(*(v15 + 8 * v7++) + 24) = -1;
  }

  while (v5 != v7);
  if (*(this + 593))
  {
    v16 = *(this + 78);
    if (v16)
    {
      LODWORD(v7) = 0;
      while (1)
      {
        v17 = *(v16 + 2);
        if (v7 != v17)
        {
          goto LABEL_46;
        }

        v18 = *(v16 + 5);
        v19 = _ps_buffer_log;
        if (v18 > 2)
        {
          if (v18 == 3)
          {
            v28 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v29 = v7;
            if (v28)
            {
              *buf = 136315650;
              v41 = "SHBUFFER";
              v42 = 2080;
              v43 = "finalizeSetup";
              v44 = 1024;
              LODWORD(v45) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_SERIALDATA - id (%d)\n", buf, 0x1Cu);
              v29 = *(v16 + 2);
            }

            PSShbufferGroup::setupSerialDataLines(this, v16[6], v29);
            goto LABEL_37;
          }

          if (v18 == 4)
          {
            v24 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v25 = v7;
            if (v24)
            {
              *buf = 136315650;
              v41 = "SHBUFFER";
              v42 = 2080;
              v43 = "finalizeSetup";
              v44 = 1024;
              LODWORD(v45) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_RAWSURFACE - id (%d)\n", buf, 0x1Cu);
              v25 = *(v16 + 2);
            }

            PSShbufferGroup::setupIOSurfaceLines(this, v16[6], v25);
            goto LABEL_37;
          }

          if (v18 != 5)
          {
LABEL_48:
            PSShbufferGroup::finalizeSetup(_ps_buffer_log);
          }

          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          *buf = 136315650;
          v41 = "SHBUFFER";
          v42 = 2080;
          v43 = "finalizeSetup";
          v44 = 1024;
          LODWORD(v45) = v7;
          v20 = v19;
          v21 = "%s- %s: finalizing CLIRESTYPE_NOTBACKED - id (%d)\n";
        }

        else
        {
          if (!v18)
          {
            v26 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v27 = v7;
            if (v26)
            {
              *buf = 136315650;
              v41 = "SHBUFFER";
              v42 = 2080;
              v43 = "finalizeSetup";
              v44 = 1024;
              LODWORD(v45) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_CVPIXELBUFF - id (%d)\n", buf, 0x1Cu);
              v27 = *(v16 + 2);
            }

            PSShbufferGroup::setupCVPixelBufferLines(this, v16[6], v27);
            goto LABEL_37;
          }

          if (v18 == 1)
          {
            v22 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG);
            v23 = v7;
            if (v22)
            {
              *buf = 136315650;
              v41 = "SHBUFFER";
              v42 = 2080;
              v43 = "finalizeSetup";
              v44 = 1024;
              LODWORD(v45) = v7;
              _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s- %s: finalizing CLIRESTYPE_CVDATABUFF - id (%d)\n", buf, 0x1Cu);
              v23 = *(v16 + 2);
            }

            PSShbufferGroup::setupCVDataBufferLines(this, v16[6], v23);
            goto LABEL_37;
          }

          if (v18 != 2)
          {
            goto LABEL_48;
          }

          if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_37;
          }

          *buf = 136315650;
          v41 = "SHBUFFER";
          v42 = 2080;
          v43 = "finalizeSetup";
          v44 = 1024;
          LODWORD(v45) = v7;
          v20 = v19;
          v21 = "%s- %s: finalizing CLIRESTYPE_MTLTEXTURE - id (%d)\n";
        }

        _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, v21, buf, 0x1Cu);
LABEL_37:
        LODWORD(v7) = v7 + 1;
        v16 = *v16;
        if (!v16)
        {
          return 0;
        }
      }
    }

    v36 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v41 = "SHBUFFER";
      v42 = 2080;
      v43 = "finalizeSetup";
      v32 = "%s: %s Initializing writer with no shared resources.\n";
      v33 = v36;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 22;
      goto LABEL_43;
    }
  }

  else
  {
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEFAULT))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315650;
      v41 = "SHBUFFER";
      v42 = 2080;
      v43 = "finalizeSetup";
      v44 = 2080;
      v45 = Key;
      v32 = "%s:%s - (Resource: %s): Finished setup without filling lines.";
      v33 = v30;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 32;
LABEL_43:
      _os_log_impl(&dword_25EBC5000, v33, v34, v32, buf, v35);
    }
  }

  return 0;
}

void *PSShbufferGroup::getBufflets(PSShbufferGroup *this)
{
  v26 = *MEMORY[0x277D85DE8];
  result = malloc_type_calloc(*(this + 140), 8uLL, 0x2004093837F09uLL);
  if (result)
  {
    v3 = *(this + 78);
    if (v3)
    {
      v4 = 0;
      do
      {
        result[v4++] = v3[6];
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(this + 140);
    if (v4 == v5)
    {
      return result;
    }
  }

  else
  {
    PSShbufferGroup::getBufflets(buf);
  }

  v13 = 0;
  v6 = v4;
  asprintf(&v13, "%s- %s: The number of shbufflets that we thought we had is different from the number we have. Expected: %d Found:%d", "SHBUFFER", "getBufflets", v5, v4);
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = *(this + 140);
    *buf = 136316418;
    v15 = "getBufflets";
    v16 = 1024;
    v17 = 520;
    v18 = 2080;
    v19 = "SHBUFFER";
    v20 = 2080;
    v21 = "getBufflets";
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v6;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s- %s: The number of shbufflets that we thought we had is different from the number we have. Expected: %d Found:%d", buf, 0x32u);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "getBufflets";
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v12 = abort_with_reason();
  return PSShbufferGroup::shareResource(v12);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x1Cu);
}

BOOL OUTLINED_FUNCTION_7()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

BOOL OUTLINED_FUNCTION_8()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return usleep(0x1E8480u);
}

BOOL OUTLINED_FUNCTION_10()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t PSShbufferGroupReader::acquireSharedLock(PSSharedSyncObject **this, int a2)
{
  if (*(this + 632) != 1 || a2 == 0)
  {
    return 1;
  }

  else
  {
    return PSSharedSyncObject::lock(this[82]);
  }
}

uint64_t PSShbufferGroupReader::releaseSharedLock(PSSharedSyncObject **this, int a2)
{
  if (*(this + 632) != 1 || a2 == 0)
  {
    return 1;
  }

  else
  {
    return PSSharedSyncObject::unlock(this[82]);
  }
}

uint64_t PSShbufferGroupReader::requestShbufferGroupList(PSShbufferGroupReader *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v56 = *MEMORY[0x277D85DE8];
  v12 = v51;
  bzero(v51, 0x888uLL);
  v13 = (v11 + 16);
  strlcpy(v52, (v11 + 16), 0x200uLL);
  v55 = 0x1000000012;
  v53 = 20;
  v54 = v54 & 0xFE | *(v11 + 649);
  PSCommsClient::send_wait(*(v11 + 8), v51, 0x888u, &v44, 2200, 0);
  if (PSCommsClient::is_valid_simple_message(&v44) && PSCommsClient::isAck(v51, &v44.msgh_bits))
  {
    v30 = PSShbufferGroupReader::requestShbufferGroupList(buf, v11 + 16);
LABEL_25:
    v27 = v30;
    v28 = *v12;
    if (!os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (!PSCommsClient::is_valid_ool_message(&v44))
  {
    v34 = 0;
    asprintf(&v34, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v44.msgh_bits & 0x80000000, v45, v47, (v11 + 16));
    v25 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v36 = "requestShbufferGroupList";
      v37 = 1024;
      v38 = 60;
      v39 = 1024;
      *v40 = v44.msgh_bits & 0x80000000;
      *&v40[4] = 1024;
      *&v40[6] = v45;
      *v41 = 1024;
      *&v41[2] = v47;
      v42 = 2080;
      v43 = v11 + 16;
      _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v26 = OSLogFlushBuffers();
    if (!v26)
    {
      goto LABEL_23;
    }

    v27 = v26;
    v28 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_27:
      v31 = abort_with_reason();
      return PSShbufferGroupReader::addSharedCVPixelBuffer(v31, v32);
    }

LABEL_26:
    *buf = 136315394;
    v36 = "requestShbufferGroupList";
    v37 = 1024;
    v38 = v27;
    _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_27;
  }

  v12 = &_ps_buffer_log;
  v14 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v36 = "SHBUFFERGROUPREADER";
    _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList SUCCESS\n", buf, 0xCu);
  }

  if (v45 != 1)
  {
    v34 = 0;
    asprintf(&v34, "Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", v13, v45);
    v29 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v36 = "requestShbufferGroupList";
      v37 = 1024;
      v38 = 70;
      v39 = 2080;
      *v40 = v13;
      *&v40[8] = 1024;
      *v41 = v45;
      _os_log_impl(&dword_25EBC5000, v29, OS_LOG_TYPE_FAULT, "%s:%d Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", buf, 0x22u);
    }

    v30 = OSLogFlushBuffers();
    if (!v30)
    {
LABEL_23:
      usleep(0x1E8480u);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v33 = v46;
  v15 = v48;
  *v10 = v49;
  *v8 = v50;
  *v6 = v15;
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v17 = *v10;
    *buf = 136315394;
    v36 = "SHBUFFERGROUPREADER";
    v37 = 1024;
    v38 = v17;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Found (%d) shbufflets\n", buf, 0x12u);
  }

  v18 = *v10;
  if (v18)
  {
    v19 = 0;
    v20 = _ps_buffer_log;
    v21 = (v33 + 4);
    do
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        *buf = 136315906;
        v36 = "SHBUFFERGROUPREADER";
        v37 = 1024;
        v38 = v19;
        v39 = 1024;
        *v40 = v22;
        *&v40[4] = 1024;
        *&v40[6] = v23;
        _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s: Resource (%d) type: (%d) id(%d)\n", buf, 0x1Eu);
        v20 = _ps_buffer_log;
        v18 = *v10;
      }

      ++v19;
      v21 += 2;
    }

    while (v19 < v18);
  }

  return v33;
}

void PSShbufferGroupReader::addSharedCVPixelBuffer(PSShbufferGroupReader *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedCVPixelBuffer";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s -s namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedCVDataBuffer(PSShbufferGroupReader *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedCVDataBuffer";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedIOSurface(PSShbufferGroupReader *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedIOSurface";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedStreamingCodecFrameSelector(PSShbufferGroupReader *this, const char *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedStreamingCodecFrameSelector";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v5, 0x26u);
  }

  PSBufferService::PSStreamingCodecFrameSelector::createReader((this + 16), a2);
}

void PSShbufferGroupReader::addSharedFIFOSelector(PSShbufferGroupReader *this, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "SHBUFFERGROUPREADER";
    v8 = 2080;
    v9 = "addSharedFIFOSelector";
    v10 = 2080;
    v11 = this + 16;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v6, 0x26u);
  }

  PSBufferService::PSStreamingCodecFrameSelector::createFifoReader((this + 16), a2, 0, v5);
}

void PSShbufferGroupReader::addSharedRingSwappableView(PSShbufferGroupReader *this, unsigned int a2, BOOL a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315906;
    v7 = "SHBUFFERGROUPREADER";
    v8 = 2080;
    v9 = "addSharedRingSwappableView";
    v10 = 2080;
    v11 = this + 16;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", &v6, 0x26u);
  }

  operator new();
}

uint64_t PSShbufferGroupReader::addLockLessSelector(PSShbufferGroupReader *this, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 136315906;
    *&v9[4] = "SHBUFFERGROUPREADER";
    *v10 = 2080;
    *&v10[2] = "addLockLessSelector";
    v11 = 2080;
    v12 = this + 16;
    LOWORD(v13) = 1024;
    *(&v13 + 2) = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) \n", v9, 0x26u);
  }

  *(this + 592) = 1;
  *v9 = 0x140000000FLL;
  *v10 = 0;
  *&v10[4] = 0;
  v14 = 0;
  v16 = 1;
  *&v9[8] = a2;
  v5 = this + 16;
  v15 = 1;
  v17 = 0;
  v6 = *(this + 1) + 44;
  v7 = (this + 600);
  v12 = v5;
  v13 = v6;
  if (PSBufferService::PSLocklessBufferSelector::Create(v9, v7))
  {
    PSShbufferGroupReader::addLockLessSelector();
  }

  if ((*(**v7 + 160))())
  {
    PSShbufferGroupReader::addLockLessSelector();
  }

  return 0;
}

void PSShbufferGroupReader::addSharedBufferGroupSyncObject(PSShbufferGroupReader *this, unsigned int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315906;
    v6 = "SHBUFFERGROUPREADER";
    v7 = 2080;
    v8 = "addSharedBufferGroupSyncObject";
    v9 = 2080;
    v10 = this + 16;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - namr (%s) (%d) \n", &v5, 0x26u);
  }

  operator new();
}

void PSShbufferGroupReader::addSharedResSerialData(PSShbufferGroupReader *this, unsigned int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(this + 648);
    v6 = 136316162;
    v7 = "SHBUFFERGROUPREADER";
    v8 = 2080;
    v9 = "addSharedResSerialData";
    v10 = 2080;
    v11 = this + 16;
    v12 = 1024;
    v13 = a2;
    v14 = 1024;
    v15 = v5;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s: %s - name (%s) (%d) hasWritePermission=%d \n", &v6, 0x2Cu);
  }

  operator new();
}

uint64_t PSShbufferGroupReader::getAllReadBuffers(PSShbufferGroupReader *this, uint64_t a2)
{
  result = *(this + 80);
  if (!result)
  {
    PSShbufferGroupReader::getAllReadBuffers();
  }

  return result;
}

PSSharedSyncObject *PSShbufferGroupReader::waitForBuffers(uint64_t a1, uint64_t a2, int *a3)
{
  result = *(a1 + 656);
  if (result)
  {
    if (*(a1 + 592))
    {
      return PSSharedSyncObject::waitForSignalAtomicTags(result, a2, a3);
    }

    else
    {
      return PSSharedSyncObject::waitForSignal(result, a2, a3);
    }
  }

  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourceswithFrameID(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unsigned int *a5)
{
  if (a4 == -1)
  {
    return 0;
  }

  result = *(a1 + 664);
  if (!result)
  {
    return result;
  }

  Data = PSSharedSerialData::getData(result);
  v11 = Data;
  v12 = 0;
  v13 = (*(a1 + 680) + *(a1 + 676) + *(a1 + 636)) % *(a1 + 636);
  while (1)
  {
    v14 = v13;
    v15 = atomic_load((Data + 8 * v13));
    if (v15 == a4)
    {
      break;
    }

    v16 = *(a1 + 636);
    if (v13 + 1 == v16)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v13 + 1);
    }

    if (++v12 >= v16)
    {
      goto LABEL_12;
    }
  }

  *(a1 + 680) = v13 - *(a1 + 676);
  *(a1 + 676) = v13;
  v16 = *(a1 + 636);
LABEL_12:
  if (v12 == v16)
  {
    return 0;
  }

  if (*(a1 + 592))
  {
    if (a5)
    {
      a5 = *a5;
    }

    if ((*(**(a1 + 600) + 208))())
    {
      return 0;
    }
  }

  else
  {
    a5 = 0;
    if ((*(**(a1 + 584) + 104))(*(a1 + 584), v13))
    {
      return 0;
    }
  }

  v17 = atomic_load((v11 + 8 * v14));
  if (v17 != a4)
  {
    if (*(a1 + 592) == 1)
    {
      (*(**(a1 + 600) + 232))(*(a1 + 600), v13, 0, a5);
    }

    else
    {
      (*(**(a1 + 584) + 80))(*(a1 + 584), v13, 0);
    }

    return 0;
  }

  result = *(*(a1 + 640) + 8 * v13);
  **(result + 2) = v13;
  if (a3)
  {
    atomic_store(a4, a3);
  }

  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourcesLastN(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, unsigned int *a7)
{
  i = a2;
  *&v52[5] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 552);
  v10 = (v9 - 1);
  if (v9 - 1 <= 0)
  {
LABEL_24:
    v45 = 0;
    asprintf(&v45, "Unsupported max last N count %d for buffer depth %d. Increase the buffer depth to resolve this. requested_buffer_count = %lld", v10, v9, i);
    v27 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v28 = *(a1 + 552);
      *buf = 136316162;
      v47 = "_getReadResourcesLastN";
      v48 = 1024;
      v49 = 387;
      v50 = 1024;
      *v51 = v10;
      *&v51[4] = 1024;
      *&v51[6] = v28;
      v52[0] = 2048;
      *&v52[1] = i;
      _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max last N count %d for buffer depth %d. Increase the buffer depth to resolve this. requested_buffer_count = %lld", buf, 0x28u);
    }

    v29 = OSLogFlushBuffers();
    if (!v29)
    {
LABEL_37:
      usleep(0x1E8480u);
      goto LABEL_40;
    }

    v30 = v29;
    v31 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_39:
      *buf = 136315394;
      v47 = "_getReadResourcesLastN";
      v48 = 1024;
      v49 = v30;
      _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

LABEL_40:
    v36 = abort_with_reason();
    return PSShbufferGroupReader::_getReadResourcesSinceLast(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  if (v10 < a2)
  {
    v45 = 0;
    asprintf(&v45, "Unsupported last N count %llu. Only upto %d supported", a2, v9 - 1);
    v32 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v47 = "_getReadResourcesLastN";
      v48 = 1024;
      v49 = 391;
      v50 = 2048;
      *v51 = i;
      *&v51[8] = 1024;
      *v52 = v10;
      _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_FAULT, "%s:%d Unsupported last N count %llu. Only upto %d supported", buf, 0x22u);
    }

    v33 = OSLogFlushBuffers();
    if (!v33)
    {
      goto LABEL_37;
    }

    v30 = v33;
    v31 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  MEMORY[0x28223BE20](a1);
  v10 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  if (!a4 || !a6)
  {
    v45 = 0;
    asprintf(&v45, "Invalid arg passed. resources=%p, read_buffer_count=%p", a4, a6);
    v34 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v47 = "_getReadResourcesLastN";
      v48 = 1024;
      v49 = 401;
      v50 = 2048;
      *v51 = a4;
      *&v51[8] = 2048;
      *v52 = a6;
      _os_log_impl(&dword_25EBC5000, v34, OS_LOG_TYPE_FAULT, "%s:%d Invalid arg passed. resources=%p, read_buffer_count=%p", buf, 0x26u);
    }

    v35 = OSLogFlushBuffers();
    if (!v35)
    {
      goto LABEL_37;
    }

    v30 = v35;
    v31 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*(a1 + 592))
  {
    if (a7)
    {
      v20 = *a7;
    }

    else
    {
      v20 = 0;
    }

    result = (*(**(a1 + 600) + 216))(*(a1 + 600), v20, v10, i, a3, v19, a6);
  }

  else
  {
    result = (*(**(a1 + 584) + 64))(*(a1 + 584), v10, i, a3, v19, a6);
  }

  if (*a6)
  {
    for (i = 0; i < *a6; ++i)
    {
      v22 = *(v10 + 4 * i);
      if (v22 == -1)
      {
        break;
      }

      if (v22 == -2)
      {
        PSShbufferGroupReader::_getReadResourcesLastN(a1, buf);
        goto LABEL_24;
      }

      v23 = v22;
      a4[i] = *(*(a1 + 640) + 8 * v22);
      v24 = *(*(*(a1 + 640) + 8 * v22) + 16);
      *v24 = v22;
      *(v24 + 8) = *&v19[8 * i];
      if (a5)
      {
        v25 = *(a5 + 8 * i);
        if (v25)
        {
          result = *(a1 + 664);
          if (result)
          {
            result = PSSharedSerialData::getData(result);
            v26 = atomic_load(result + v23);
            v25 = *(a5 + 8 * i);
          }

          else
          {
            v26 = 0;
          }

          atomic_store(v26, v25);
        }
      }
    }
  }

  return result;
}

PSSharedSerialData *PSShbufferGroupReader::_getReadResourcesSinceLast(PSSharedResource *this, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, unsigned int *a8, char a9)
{
  i = a2;
  v61[2] = *MEMORY[0x277D85DE8];
  LODWORD(v11) = *(this + 138);
  v12 = (v11 - 1);
  if (v11 - 1 <= 0)
  {
LABEL_24:
    v53 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v53, "Unsupported max last N count %d for buffer depth %d for %s. Increase the buffer depth to resolve this. max_buffer_count = %lld", v12, v11, Key, i);
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v31 = *(this + 138);
      v32 = PSSharedResource::getKey(this);
      *buf = 136316418;
      v55 = "_getReadResourcesSinceLast";
      v56 = 1024;
      v57 = 466;
      v58 = 1024;
      *v59 = v12;
      *&v59[4] = 1024;
      *&v59[6] = v31;
      *v60 = 2080;
      *&v60[2] = v32;
      LOWORD(v61[0]) = 2048;
      *(v61 + 2) = i;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max last N count %d for buffer depth %d for %s. Increase the buffer depth to resolve this. max_buffer_count = %lld", buf, 0x32u);
    }

    v33 = OSLogFlushBuffers();
    if (!v33)
    {
LABEL_37:
      usleep(0x1E8480u);
      goto LABEL_40;
    }

    v34 = v33;
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_39:
      *buf = 136315394;
      v55 = "_getReadResourcesSinceLast";
      v56 = 1024;
      v57 = v34;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }

LABEL_40:
    v44 = abort_with_reason();
    return PSShbufferGroupReader::_getReadResources(v44, v45, v46, v47, v48, v49, v50, v51, a9);
  }

  if (v12 < a2)
  {
    v53 = 0;
    v36 = PSSharedResource::getKey(this);
    asprintf(&v53, "Unsupported max buffer count %llu for %s. Only upto %d supported.", i, v36, v11 - 1);
    v37 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v38 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v55 = "_getReadResourcesSinceLast";
      v56 = 1024;
      v57 = 471;
      v58 = 2048;
      *v59 = i;
      *&v59[8] = 2080;
      *v60 = v38;
      *&v60[8] = 1024;
      LODWORD(v61[0]) = v11 - 1;
      _os_log_impl(&dword_25EBC5000, v37, OS_LOG_TYPE_FAULT, "%s:%d Unsupported max buffer count %llu for %s. Only upto %d supported.", buf, 0x2Cu);
    }

    v39 = OSLogFlushBuffers();
    if (!v39)
    {
      goto LABEL_37;
    }

    v34 = v39;
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  MEMORY[0x28223BE20](this);
  v12 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v12, v19);
  MEMORY[0x28223BE20](v20);
  v11 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v21);
  if (!a5 || !a7)
  {
    v53 = 0;
    v40 = PSSharedResource::getKey(this);
    asprintf(&v53, "Invalid arg passed. resources=%p, read_buffer_count=%p for %s", a5, a7, v40);
    v41 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v42 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v55 = "_getReadResourcesSinceLast";
      v56 = 1024;
      v57 = 481;
      v58 = 2048;
      *v59 = a5;
      *&v59[8] = 2048;
      *v60 = a7;
      *&v60[8] = 2080;
      v61[0] = v42;
      _os_log_impl(&dword_25EBC5000, v41, OS_LOG_TYPE_FAULT, "%s:%d Invalid arg passed. resources=%p, read_buffer_count=%p for %s", buf, 0x30u);
    }

    v43 = OSLogFlushBuffers();
    if (!v43)
    {
      goto LABEL_37;
    }

    v34 = v43;
    v35 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (*(this + 592))
  {
    if (a8)
    {
      v22 = *a8;
    }

    else
    {
      v22 = 0;
    }

    result = (*(**(this + 75) + 224))(*(this + 75), v22, v12, i, a3, a4, v11, a7);
  }

  else
  {
    result = (*(**(this + 73) + 64))(*(this + 73), v12, i, a4, v11, a7);
  }

  if (*a7)
  {
    for (i = 0; i < *a7; ++i)
    {
      v24 = *(v12 + 4 * i);
      if (v24 == -1)
      {
        break;
      }

      if (v24 == -2)
      {
        PSShbufferGroupReader::_getReadResourcesSinceLast(this, buf);
        goto LABEL_24;
      }

      v25 = v24;
      a5[i] = *(*(this + 80) + 8 * v24);
      v26 = *(*(*(this + 80) + 8 * v24) + 16);
      *v26 = v24;
      *(v26 + 8) = *&v11[8 * i];
      if (a6)
      {
        v27 = *(a6 + 8 * i);
        if (v27)
        {
          result = *(this + 83);
          if (result)
          {
            result = PSSharedSerialData::getData(result);
            v28 = atomic_load(result + v25);
            v27 = *(a6 + 8 * i);
          }

          else
          {
            v28 = 0;
          }

          atomic_store(v28, v27);
        }
      }
    }
  }

  return result;
}

uint64_t PSShbufferGroupReader::_getReadResources(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 592))
  {
    if (a4)
    {
      v11 = *a4;
    }

    else
    {
      v11 = 0;
    }

    v13 = (*(**(a1 + 600) + 200))(*(a1 + 600), v11);
  }

  else
  {
    v12 = **(a1 + 584);
    if (a2)
    {
      v13 = (*(v12 + 112))();
    }

    else
    {
      v13 = (*(v12 + 56))();
    }
  }

  if (v13 == -1)
  {
    return 0;
  }

  if (v13 != -2)
  {
    v14 = *(*(a1 + 640) + 8 * v13);
    **(v14 + 16) = v13;
    if (a3)
    {
      v15 = *(a1 + 664);
      if (v15)
      {
        v15 = atomic_load((PSSharedSerialData::getData(v15) + 8 * v13));
      }

      atomic_store(v15, a3);
    }

    return v14;
  }

  Resources = PSShbufferGroupReader::_getReadResources(a1, v25);
  return PSShbufferGroupReader::getReadBuffersLastN(Resources, v18, v19, v20, v21, v22, v23, v24, a9);
}

uint64_t PSShbufferGroupReader::getReadBuffersLastN(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t *a6, unsigned int *a7, int a8, char a9)
{
  if (!a2)
  {
    PSShbufferGroupReader::getReadBuffersLastN(v28, a1);
LABEL_14:
    PSShbufferGroupReader::getReadBuffersLastN(v28);
LABEL_15:
    BuffersLastN = PSShbufferGroupReader::getReadBuffersLastN(v28);
    return PSShbufferGroupReader::getReadBuffersSinceLast(BuffersLastN, v21, v22, v23, v24, v25, v26, v27, a9);
  }

  v17 = *(a1 + 632) != 1 || a8 == 0;
  if (!v17 && (PSSharedSyncObject::lock(*(a1 + 656)) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = PSShbufferGroupReader::_getReadResourcesLastN(a1, a2, a3, a4, a5, a6, a7);
  if (*(a1 + 632) == 1 && a8 != 0)
  {
    result = PSSharedSyncObject::unlock(*(a1 + 656));
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t PSShbufferGroupReader::getReadBuffersSinceLast(PSSharedSyncObject **this, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, unint64_t *a7, unsigned int *a8, char a9)
{
  if (!a2)
  {
    PSShbufferGroupReader::getReadBuffersSinceLast(v29, this);
LABEL_14:
    PSShbufferGroupReader::getReadBuffersSinceLast(v29);
LABEL_15:
    BuffersSinceLast = PSShbufferGroupReader::getReadBuffersSinceLast(v29);
    return PSShbufferGroupReader::getReadBuffers(BuffersSinceLast, v21, v22, v23, v24, v25, v26, v27);
  }

  v17 = *(this + 632) != 1 || a9 == 0;
  if (!v17 && (PSSharedSyncObject::lock(this[82]) & 1) == 0)
  {
    goto LABEL_14;
  }

  result = PSShbufferGroupReader::_getReadResourcesSinceLast(this, a2, a3, a4, a5, a6, a7, a8, v28);
  if (*(this + 632) == 1 && a9 != 0)
  {
    result = PSSharedSyncObject::unlock(this[82]);
    if ((result & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t PSShbufferGroupReader::getReadBuffers(uint64_t a1, uint64_t a2, unint64_t *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v13 = *(a1 + 632) != 1 || a5 == 0;
  if (v13 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    Resources = PSShbufferGroupReader::_getReadResources(a1, a2, a3, a4, a5, a6, a7, a8, v23);
    v15 = *(a1 + 632) != 1 || v8 == 0;
    if (v15 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return Resources;
    }
  }

  else
  {
    PSShbufferGroupReader::getReadBuffers(v24);
  }

  Buffers = PSShbufferGroupReader::getReadBuffers(v24);
  return PSShbufferGroupReader::getReadBufferswithFrameID(Buffers, v18, v19, v20, v21, v22);
}

PSSharedSerialData *PSShbufferGroupReader::getReadBufferswithFrameID(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unsigned int *a5, int a6)
{
  v11 = *(a1 + 632) != 1 || a6 == 0;
  if (v11 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    ResourceswithFrameID = PSShbufferGroupReader::_getReadResourceswithFrameID(a1, a2, a3, a4, a5);
    v13 = *(a1 + 632) != 1 || a6 == 0;
    if (v13 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return ResourceswithFrameID;
    }
  }

  else
  {
    PSShbufferGroupReader::getReadBufferswithFrameID(v17);
  }

  BufferswithFrameID = PSShbufferGroupReader::getReadBufferswithFrameID(v17);
  return PSShbufferGroupReader::releaseReadResources(BufferswithFrameID, v16);
}

uint64_t PSShbufferGroupReader::releaseReadResources(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*v2 == 0x7FFFFFFF)
  {
    PSShbufferGroupReader::releaseReadResources();
  }

  if (*(a1 + 592))
  {
    (*(**(a1 + 600) + 232))(*(a1 + 600));
  }

  else
  {
    (*(**(a1 + 584) + 80))(*(a1 + 584));
  }

  result = 0;
  *v2 = 0x7FFFFFFF;
  return result;
}

uint64_t PSShbufferGroupReader::releaseReadBuffers(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 632) != 1 || a4 == 0;
  if (v7 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    Resources = PSShbufferGroupReader::releaseReadResources(a1, a2);
    v9 = *(a1 + 632) != 1 || a4 == 0;
    if (v9 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return Resources;
    }
  }

  else
  {
    PSShbufferGroupReader::releaseReadBuffers(v16);
  }

  Buffers = PSShbufferGroupReader::releaseReadBuffers(v16);
  return PSShbufferGroupReader::releaseReadBuffersLastN(Buffers, v12, v13, v14, v15);
}

uint64_t PSShbufferGroupReader::releaseReadBuffersLastN(uint64_t result, uint64_t *a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  if (a3)
  {
    v7 = a3;
    v9 = result;
    v10 = a4;
    do
    {
      result = PSShbufferGroupReader::releaseReadBuffers(v9, *a2, a5, 1);
      if (a4)
      {
        *v10 = result;
      }

      ++v10;
      ++a2;
      --v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *PSShbufferGroupReader::initialize(PSShbufferGroupReader *this, unsigned int a2)
{
  v45 = *MEMORY[0x277D85DE8];
  *v34 = 0;
  v33 = 0;
  v6 = PSShbufferGroupReader::requestShbufferGroupList(this, &v34[1], v34, &v33);
  v7 = v34[0];
  v8 = v34[1];
  *(this + 168) = v34[1];
  *(this + 138) = v7;
  *(this + 159) = v7;
  *(this + 41) = 0u;
  if (!v6)
  {
    PSShbufferGroupReader::initialize(buf, this);
LABEL_57:
    v24 = PSShbufferGroupReader::initialize(buf, v2);
    goto LABEL_58;
  }

  v2 = v6;
  if (v8)
  {
    v9 = (v6 + 4);
    v10 = (a2 >> 7) & 1;
    do
    {
      v11 = *(v9 - 1);
      if (v11 <= 5)
      {
        if (v11 <= 1)
        {
          if (!v11)
          {
            v15 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v36 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedIOSurface(this, *v9);
          }

          if (v11 == 1)
          {
            v14 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v36 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE_CVPIXELBUFF\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedCVPixelBuffer(this, *v9);
          }

LABEL_45:
          v23 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v36 = "SHBUFFERGROUPREADER";
            v17 = v23;
            v18 = "%s UNKNOWN SHBUFFLET TYPE\n";
            goto LABEL_47;
          }

          goto LABEL_48;
        }

        if (v11 == 2)
        {
          v20 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v36 = "SHBUFFERGROUPREADER";
            _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_IOSURFACE_CVDATABUFF\n", buf, 0xCu);
          }

          PSShbufferGroupReader::addSharedCVDataBuffer(this, *v9);
        }

        if (v11 != 3)
        {
          if (v11 == 4)
          {
            v12 = _ps_buffer_log;
            if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v36 = "SHBUFFERGROUPREADER";
              _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA\n", buf, 0xCu);
            }

            PSShbufferGroupReader::addSharedResSerialData(this, *v9);
          }

          goto LABEL_45;
        }

        v16 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v36 = "SHBUFFERGROUPREADER";
          v17 = v16;
          v18 = "%s PLS_RES_FACT_IOSURFACE_MTLTEXT\n";
LABEL_47:
          _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
        }
      }

      else
      {
        if (v11 > 11)
        {
          switch(v11)
          {
            case 12:
              v22 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v36 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v22, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_SO\n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedBufferGroupSyncObject(this, *v9);
            case 15:
              v19 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v36 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_SCFS \n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedStreamingCodecFrameSelector(this, *v9);
            case 16:
              v13 = _ps_buffer_log;
              if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315138;
                v36 = "SHBUFFERGROUPREADER";
                _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s PLS_RES_FACT_SERIALDATA_FIFO_SELECTOR \n", buf, 0xCu);
              }

              PSShbufferGroupReader::addSharedFIFOSelector(this, *v9);
          }

          goto LABEL_45;
        }

        if (v11 != 6)
        {
          if (v11 == 8)
          {
            PSShbufferGroupReader::addSharedRingSwappableView(this, *v9, v10);
          }

          if (v11 == 10)
          {
            PSShbufferGroupReader::addLockLessSelector(this, *v9);
            goto LABEL_48;
          }

          goto LABEL_45;
        }

        v21 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v36 = "SHBUFFERGROUPREADER";
          v17 = v21;
          v18 = "%s PLS_RES_FACT_MANJUSURFACE\n";
          goto LABEL_47;
        }
      }

LABEL_48:
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v3 = v33;
  if (!v33)
  {
    goto LABEL_57;
  }

  v24 = MEMORY[0x25F8CAE70](*MEMORY[0x277D85F48], v2, v33);
  if (!v24)
  {
    *(this + 632) = !*(this + 75) && (*(**(this + 73) + 48))(*(this + 73)) != 3;
    return 0;
  }

LABEL_58:
  v26 = v24;
  v32 = 0;
  asprintf(&v32, "Failed to vm_deallocate mem. type_list=%p of size:%d ret=%#x\n", v2, v3, v24);
  v27 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v36 = "initialize";
    v37 = 1024;
    v38 = 856;
    v39 = 2048;
    v40 = v2;
    v41 = 1024;
    v42 = v3;
    v43 = 1024;
    v44 = v26;
    _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_FAULT, "%s:%d Failed to vm_deallocate mem. type_list=%p of size:%d ret=%#x\n", buf, 0x28u);
  }

  v28 = OSLogFlushBuffers();
  if (v28)
  {
    v29 = v28;
    v30 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "initialize";
      v37 = 1024;
      v38 = v29;
      _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v31 = abort_with_reason();
  return PSShbufferGroupReader::addReaderInstance(v31);
}

PSShbufferGroupReader *PSShbufferGroupReader::addReaderInstance(PSShbufferGroupReader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v21 = -1;
  if (*(this + 592) == 1)
  {
    v10 = *(this + 75);
    if (v10)
    {
      if (!(*(*v10 + 184))(v10, *(this + 142), &v21))
      {
        if (v21 != -1)
        {
          result = malloc_type_calloc(4uLL, 1uLL, 0x100004052888210uLL);
          *result = v21;
          return result;
        }

        return 0;
      }
    }

    else
    {
      PSShbufferGroupReader::addReaderInstance(v20, this);
    }

    v12 = PSShbufferGroupReader::addReaderInstance(v20, this);
    return PSShbufferGroupReader::removeReaderInstance(v12, v13, v14, v15, v16, v17, v18, v19, a9);
  }

  return 0;
}

PSShbufferGroupReader *PSShbufferGroupReader::removeReaderInstance(PSShbufferGroupReader *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  if (a2)
  {
    v9 = this;
    if (*(this + 592))
    {
      v10 = *a2;
      free(a2);
      this = (*(**(v9 + 75) + 192))(*(v9 + 75), *(v9 + 142), v10);
      if (this)
      {
        v11 = PSShbufferGroupReader::removeReaderInstance(v19, v9);
        PSShbufferGroupReader::PSShbufferGroupReader(v11, v12, v13, v14, v15, v16, v17, v18, a9);
      }
    }
  }

  return this;
}

void PSShbufferGroupReader::PSShbufferGroupReader(PSShbufferGroupReader *this, const char *a2, int (*a3)(void), int (*a4)(void *, unsigned int), int (*a5)(void), char *a6, char a7, char a8, int a9)
{
  v9 = *MEMORY[0x277D85DE8];
  PSShbufferGroup::PSShbufferGroup(this, a2, 0, 0, a6);
}

{
  PSShbufferGroupReader::PSShbufferGroupReader(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

void PSShbufferGroup::~PSShbufferGroup(PSShbufferGroup *this)
{
  *this = &unk_2870CC610;
  v2 = *(this + 76);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSShbufferGroupReader::deallocateBufferSyncContextObject(PSShbufferGroupReader *this)
{
  v1 = *(this + 83);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void PSShbufferGroupReader::~PSShbufferGroupReader(PSShbufferGroupReader *this)
{
  *this = &unk_2870CC670;
  v2 = *(this + 82);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 82) = 0;
  }

  PSShbufferGroup::deallocate(this);
  getpid();
  PSShbufferGroup::unregisterBufferGroup(this);
  *this = &unk_2870CC610;
  v3 = *(this + 76);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSShbufferGroupReader::~PSShbufferGroupReader(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_9_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

uint64_t OUTLINED_FUNCTION_11_0(void *a1, PSSharedResource *this, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *a1 = 0;

  return PSSharedResource::getKey(this);
}

void OUTLINED_FUNCTION_13_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t PSShbufferGroupWriter::getResourceAt(PSShbufferGroupWriter *this, unsigned int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(this + 159);
  if (v2 <= a2)
  {
    v15 = 0;
    asprintf(&v15, "%s:%s- index(%d) >= total lines (%d)\n", "SHBUFFERGROUPWRITER", "getResourceAt", a2, v2);
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v7 = *(this + 159);
      *buf = 136316418;
      v17 = "getResourceAt";
      v18 = 1024;
      v19 = 16;
      v20 = 2080;
      v21 = "SHBUFFERGROUPWRITER";
      v22 = 2080;
      v23 = "getResourceAt";
      v24 = 1024;
      v25 = a2;
      v26 = 1024;
      v27 = v7;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s:%s- index(%d) >= total lines (%d)\n", buf, 0x32u);
    }

    v8 = OSLogFlushBuffers();
    if (v8)
    {
      v9 = v8;
      v10 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v17 = "getResourceAt";
        v18 = 1024;
        v19 = v9;
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v11 = abort_with_reason();
    return PSShbufferGroupWriter::addNonSharedSerialData(v11, v12, v13, v14);
  }

  else
  {
    result = *(*(this + 80) + 8 * a2);
    **(result + 16) = a2;
  }

  return result;
}

void PSShbufferGroupWriter::addNonSharedSerialData(PSShbufferGroupWriter *this, unsigned int a2, char a3, char a4)
{
  if (*(this + 140) < 0x64u)
  {
    if ((a3 & 1) == 0 && (a4 & 1) == 0)
    {
      v6 = PSShbufferGroupWriter::addNonSharedSerialData(v7, this);
      MEMORY[0x25F8CA500](v5, v4);
      _Unwind_Resume(v6);
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::addSharedResSerialData(PSShbufferGroupWriter *this, unsigned int a2)
{
  if (*(this + 548) == 1)
  {

    PSShbufferGroupWriter::addNonSharedSerialData(this, a2, 1, 0);
  }

  if (*(this + 140) < 0x64u)
  {
    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __CVBuffer *(*a2)(void *), void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(this + 140) < 0x64u)
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFF0);
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(v12 - ((v7 + 15) & 0xFFFFFFFF0), v9);
    if (v6)
    {
      v10 = 0;
      do
      {
        v11 = a2(a3);
        *&v8[8 * v10] = v11;
        if (!v11)
        {
          PSShbufferGroupWriter::installCVPixelBuffer();
        }

        ++v10;
      }

      while (v10 < *(this + 159));
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __CVBuffer **a2, uint64_t a3, BOOL a4)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVPixelBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVPixelBuffer(PSShbufferGroupWriter *this, __IOSurface **a2, uint64_t a3, BOOL a4)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVPixelBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __CVBuffer *(*a2)(void *), void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(this + 140) < 0x64u)
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = v12 - ((v7 + 15) & 0xFFFFFFFF0);
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(v12 - ((v7 + 15) & 0xFFFFFFFF0), v9);
    if (v6)
    {
      v10 = 0;
      do
      {
        v11 = a2(a3);
        *&v8[8 * v10] = v11;
        if (!v11)
        {
          PSShbufferGroupWriter::installCVDataBuffer();
        }

        ++v10;
      }

      while (v10 < *(this + 159));
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

void PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __CVBuffer **a2, uint64_t a3)
{
  if (*(this + 140) < 0x64u)
  {
    if (*(this + 593) == 1 && *(this + 159) != a3)
    {
      PSShbufferGroupWriter::installCVDataBuffer();
    }

    operator new();
  }

  PSShbufferGroupWriter::addNonSharedSerialData();
}

uint64_t PSShbufferGroupWriter::installCVDataBuffer(PSShbufferGroupWriter *this, __IOSurface **a2, unsigned int a3, BOOL a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    PSShbufferGroupWriter::addNonSharedSerialData();
  }

  if (*(this + 593) != 1 || (v6 = *(this + 159), v6 == a3))
  {
    operator new();
  }

  v12 = 0;
  asprintf(&v12, "%s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", "SHBUFFERGROUPWRITER", v6, a3);
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = *(this + 159);
    *buf = 136316162;
    v14 = "installCVDataBuffer";
    v15 = 1024;
    v16 = 252;
    v17 = 2080;
    v18 = "SHBUFFERGROUPWRITER";
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = a3;
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", buf, 0x28u);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "installCVDataBuffer";
      v15 = 1024;
      v16 = v9;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
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

void PSShbufferGroupWriter::installIOSurface(PSShbufferGroupWriter *this, __IOSurface *(*a2)(void *), void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    PSShbufferGroupWriter::installIOSurface(v12, a2, a3);
  }

  else
  {
    v6 = *(this + 159);
    MEMORY[0x28223BE20](this);
    v8 = &v12[-((v7 + 15) & 0xFFFFFFFF0)];
    if (v7 >= 0x200)
    {
      v9 = 512;
    }

    else
    {
      v9 = v7;
    }

    bzero(&v12[-((v7 + 15) & 0xFFFFFFFF0)], v9);
    if (!v6)
    {
LABEL_9:
      operator new();
    }

    v10 = 0;
    while (1)
    {
      v11 = a2(a3);
      *&v8[8 * v10] = v11;
      if (!v11)
      {
        break;
      }

      if (++v10 >= *(this + 159))
      {
        goto LABEL_9;
      }
    }

    PSShbufferGroupWriter::installIOSurface(v12);
  }

  __break(1u);
}

uint64_t PSShbufferGroupWriter::installIOSurface(PSShbufferGroupWriter *this, __IOSurface **a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 140) >= 0x64u)
  {
    result = PSShbufferGroupWriter::installIOSurface(buf, a2);
  }

  else
  {
    if (*(this + 593) != 1 || (v5 = *(this + 159), v5 == a3))
    {
      operator new();
    }

    v11 = 0;
    asprintf(&v11, "%s: Invalid number of IOSurfaces to install. Expected (%d), provided (%d)\n", "SHBUFFERGROUPWRITER", v5, a3);
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v8 = *(this + 159);
      *buf = 136316162;
      v13 = "installIOSurface";
      v14 = 1024;
      v15 = 296;
      v16 = 2080;
      v17 = "SHBUFFERGROUPWRITER";
      v18 = 1024;
      v19 = v8;
      v20 = 1024;
      v21 = a3;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s: Invalid number of IOSurfaces to install. Expected (%d), provided (%d)\n", buf, 0x28u);
    }

    v9 = OSLogFlushBuffers();
    if (v9)
    {
      v10 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "installIOSurface";
        v14 = 1024;
        v15 = v9;
        _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
  }

  __break(1u);
  return result;
}

void PSShbufferGroupWriter::addSharedIOSurface(PSShbufferGroupWriter *this)
{
  if (*(this + 140) < 0x64u)
  {
    operator new();
  }

  v3 = PSShbufferGroupWriter::addSharedIOSurface(v4);
  MEMORY[0x25F8CA500](v2, v1);
  _Unwind_Resume(v3);
}

uint64_t PSShbufferGroupWriter::addSharedStreamingCodecFrameSelector(PSShbufferGroupWriter *this, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v8 = 136315906;
    v9 = "SHBUFFERGROUPWRITER";
    v10 = 2080;
    v11 = "addSharedStreamingCodecFrameSelector";
    v12 = 2080;
    v13 = this + 16;
    v14 = 1024;
    v15 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_DEBUG, "%s:%s - name (%s) id (%d)\n", &v8, 0x26u);
  }

  if ((*(this + 162) & 0xE) == 4)
  {
    PSBufferService::PSStreamingCodecFrameSelector::createFifoWriter((this + 16), a2, *(this + 138), 0, 0, v5);
  }

  if ((*(this + 162) & 0xE) == 2)
  {
    PSBufferService::PSStreamingCodecFrameSelector::createWriter((this + 16), a2, *(this + 138), 0);
  }

  v6 = PSShbufferGroupWriter::addSharedStreamingCodecFrameSelector(&v8);
  return PSShbufferGroupWriter::addSharedLocklessSelector(v6);
}

uint64_t PSShbufferGroupWriter::addSharedLocklessSelector(PSShbufferGroupWriter *this)
{
  v7 = 0;
  v11 = 0;
  v10 = 0;
  v1 = *(this + 143) + *(this + 138);
  v5[0] = *(this + 138);
  v5[1] = v1;
  v6 = 101;
  v13 = 1;
  v12 = 0;
  v2 = *(this + 1) + 44;
  v3 = this + 600;
  v8 = this + 16;
  v9 = v2;
  if (PSBufferService::PSLocklessBufferSelector::Create(v5, this + 75))
  {
    PSShbufferGroupWriter::addSharedLocklessSelector();
  }

  result = (*(**v3 + 168))();
  if (result)
  {
    PSShbufferGroupWriter::addSharedLocklessSelector();
  }

  return result;
}

uint64_t PSShbufferGroupWriter::getWriteBuffersIndex(PSShbufferGroupWriter *this)
{
  v1 = 584;
  if (*(this + 592))
  {
    v1 = 600;
  }

  result = (*(**(this + v1) + 56))(*(this + v1));
  if ((result & 0x80000000) != 0)
  {
    v3 = PSShbufferGroupWriter::getWriteBuffersIndex(&v4, result);
    return PSShbufferGroupWriter::getWriteResourceForFrameID(v3);
  }

  return result;
}

uint64_t PSShbufferGroupWriter::getWriteResourceForFrameID(PSShbufferGroupWriter *this)
{
  v2 = (*(**(this + 73) + 128))(*(this + 73));
  if ((v2 & 0x80000000) != 0)
  {
    return 0;
  }

  return PSShbufferGroupWriter::getResourceAt(this, v2);
}

uint64_t PSShbufferGroupWriter::getWriteBuffers(PSShbufferGroupWriter *this, int a2)
{
  v4 = *(this + 632) != 1 || a2 == 0;
  if (v4 || (PSSharedSyncObject::lock(*(this + 82)) & 1) != 0)
  {
    v5 = PSShbufferGroupWriter::getWriteBuffersIndex(this);
    ResourceAt = PSShbufferGroupWriter::getResourceAt(this, v5);
    v7 = *(this + 632) != 1 || a2 == 0;
    if (v7 || (PSSharedSyncObject::unlock(*(this + 82)) & 1) != 0)
    {
      return ResourceAt;
    }
  }

  else
  {
    PSShbufferGroupWriter::getWriteBuffers(v10);
  }

  v9 = PSShbufferGroupWriter::getWriteBuffers(v10);
  return PSShbufferGroupWriter::getWriteBuffersForFrameID(v9);
}

uint64_t PSShbufferGroupWriter::getWriteBuffersForFrameID(PSSharedSyncObject **this)
{
  if (*(this + 632) == 1 && (PSSharedSyncObject::lock(this[82]) & 1) == 0)
  {
    PSShbufferGroupWriter::getWriteBuffersForFrameID(v7);
  }

  else
  {
    v2 = PSShbufferGroupWriter::getWriteResourceForFrameID(this);
    if (*(this + 632) != 1 || (PSSharedSyncObject::unlock(this[82]) & 1) != 0)
    {
      return v2;
    }
  }

  v4 = PSShbufferGroupWriter::getWriteBuffersForFrameID(v7);
  return PSShbufferGroupWriter::attachSyncTagtoBuffer(v4, v5, v6);
}

uint64_t PSShbufferGroupWriter::attachSyncTagtoBuffer(uint64_t a1, int a2, unint64_t *a3)
{
  if (*(a1 + 632) == 1 && (PSSharedSyncObject::lock(*(a1 + 656)) & 1) == 0)
  {
    PSShbufferGroupWriter::attachSyncTagtoBuffer(v13);
  }

  else
  {
    if (a3)
    {
      v6 = atomic_load(a3);
      if (v6 != -1)
      {
        Data = PSSharedSerialData::getData(*(a1 + 664));
        v8 = atomic_load(a3);
        atomic_store(v8, (Data + 8 * a2));
      }
    }

    if (*(a1 + 632) != 1 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return 0;
    }
  }

  v10 = PSShbufferGroupWriter::attachSyncTagtoBuffer(v13);
  return PSShbufferGroupWriter::releaseWriteResource(v10, v11, v12);
}

uint64_t PSShbufferGroupWriter::releaseWriteResource(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  v4 = *v3;
  if (v4 == 0x7FFFFFFF)
  {
    v8 = PSShbufferGroupWriter::releaseWriteResource(v12);
    return PSShbufferGroupWriter::releaseWriteBuffers(v8, v9, v10);
  }

  else
  {
    v11 = 0;
    if (a3)
    {
      if (*(a1 + 592))
      {
        v5 = *(a1 + 600);
      }

      else
      {
        v5 = *(a1 + 584);
      }

      (*(*v5 + 80))(v5, v4, &v11);
    }

    else
    {
      if (*(a1 + 592))
      {
        v6 = *(a1 + 600);
      }

      else
      {
        v6 = *(a1 + 584);
      }

      (*(*v6 + 88))(v6, v4, &v11);
    }

    if (!v11)
    {
      *v3 = 0x7FFFFFFF;
    }

    return v4;
  }
}

uint64_t PSShbufferGroupWriter::releaseWriteBuffers(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 632) != 1 || a3 == 0;
  if (v6 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    v7 = PSShbufferGroupWriter::releaseWriteResource(a1, a2, 1);
    v8 = *(a1 + 632) != 1 || a3 == 0;
    if (v8 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return v7;
    }
  }

  else
  {
    PSShbufferGroupWriter::releaseWriteBuffers(v13);
  }

  v10 = PSShbufferGroupWriter::releaseWriteBuffers(v13);
  return PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v10, v11, v12);
}

PSSharedSyncObject *PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 632) != 1 || a3 == 0;
  if (v6 || (PSSharedSyncObject::lock(*(a1 + 656)) & 1) != 0)
  {
    v7 = PSShbufferGroupWriter::releaseWriteResource(a1, a2, 0);
    v8 = *(a1 + 632) != 1 || a3 == 0;
    if (v8 || (PSSharedSyncObject::unlock(*(a1 + 656)) & 1) != 0)
    {
      return v7;
    }
  }

  else
  {
    PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v11);
  }

  v10 = PSShbufferGroupWriter::releaseWriteBuffersWithoutWriteIndexIncrement(v11);
  return PSShbufferGroupWriter::getAllWriteBuffers(v10);
}

PSSharedSyncObject *PSShbufferGroupWriter::getAllWriteBuffers(PSShbufferGroupWriter *this)
{
  result = *(this + 80);
  if (!result)
  {
    v6 = v1;
    v7 = v2;
    v4 = PSShbufferGroupWriter::getAllWriteBuffers(v5);
    return PSShbufferGroupWriter::broadcastBuffers(v4);
  }

  return result;
}

PSSharedSyncObject *PSShbufferGroupWriter::broadcastBuffers(PSShbufferGroupWriter *this)
{
  result = *(this + 82);
  if (result)
  {
    return PSSharedSyncObject::broadcastSignal(result, 0);
  }

  return result;
}

uint64_t PSShbufferGroupWriter::incrementWriteIndex(PSShbufferGroupWriter *this)
{
  if (*(this + 632) == 1 && (PSSharedSyncObject::lock(*(this + 82)) & 1) == 0)
  {
    PSShbufferGroupWriter::incrementWriteIndex(&v6);
  }

  else
  {
    if (*(this + 592) == 1)
    {
      v6 = 0;
      v2 = (*(**(this + 75) + 176))(*(this + 75), &v6);
    }

    else
    {
      v2 = (*(**(this + 73) + 96))(*(this + 73));
    }

    v3 = v2;
    if (*(this + 632) != 1 || (PSSharedSyncObject::unlock(*(this + 82)) & 1) != 0)
    {
      return v3;
    }
  }

  v5 = PSShbufferGroupWriter::incrementWriteIndex(&v6);
  return PSShbufferGroupWriter::finalizeSetup(v5);
}

uint64_t PSShbufferGroupWriter::finalizeSetup(PSShbufferGroupWriter *this)
{
  PSShbufferGroup::finalizeSetup(this);
  PSShbufferGroup::updateResourceFactoryStatus(this);
  *(this + 652) = 1;
  return 0;
}

PSSharedSyncObject *PSShbufferGroupWriter::finalizeSetupStatus(PSShbufferGroupWriter *this)
{
  PSShbufferGroup::updateResourceFactoryStatus(this);
  getpid();
  if (PSShbufferGroup::registerBufferGroup(this) != 13)
  {
    return 0;
  }

  v3 = PSShbufferGroupWriter::finalizeSetupStatus(v4, this);
  return PSShbufferGroupWriter::broadcastBuffers(v3);
}

PSSharedSyncObject *PSShbufferGroupWriter::broadcastBuffers(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 656);
  if (result)
  {
    if (*(a1 + 592))
    {
      return PSSharedSyncObject::broadcastSignalAtomicTags(result, a2);
    }

    else
    {
      return PSSharedSyncObject::broadcastSignal(result, a2);
    }
  }

  return result;
}

void PSShbufferGroupWriter::_requestShbufferGroupList(PSShbufferGroupWriter *this, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = MEMORY[0x28223BE20](this);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v4;
  v58 = *MEMORY[0x277D85DE8];
  bzero(v53, 0x888uLL);
  strlcpy(v54, (v11 + 16), 0x200uLL);
  v57 = 0x1000000012;
  v55 = 20;
  v56 &= ~1u;
  PSCommsClient::send_wait(*(v11 + 8), v53, 0x888u, &v46, 2200, 0);
  if (PSCommsClient::is_valid_simple_message(&v46) && PSCommsClient::isAck(v53, &v46.msgh_bits))
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v38 = "SHBUFFERGROUPWRITER";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList Failed. This is fine because we are the writer and when noone created the key, we will have to be the one's to create it\n", buf, 0xCu);
    }

    return;
  }

  if (!PSCommsClient::is_valid_ool_message(&v46))
  {
    v36 = 0;
    asprintf(&v36, "Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", v46.msgh_bits & 0x80000000, v47, v49, (v11 + 16));
    v24 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316418;
      v38 = "_requestShbufferGroupList";
      v39 = 1024;
      v40 = 751;
      v41 = 1024;
      *v42 = v46.msgh_bits & 0x80000000;
      *&v42[4] = 1024;
      *&v42[6] = v47;
      *v43 = 1024;
      *&v43[2] = v49;
      v44 = 2080;
      v45 = v11 + 16;
      _os_log_impl(&dword_25EBC5000, v24, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received, complex=%d desc_count=%d type=%d, key=%s.", buf, 0x2Eu);
    }

    v25 = OSLogFlushBuffers();
    if (!v25)
    {
      goto LABEL_26;
    }

    v26 = v25;
    v27 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
LABEL_29:
      v30 = abort_with_reason();
      PSShbufferGroupWriter::PSShbufferGroupWriter(v30, v31, v32, v33, v34, v35);
      return;
    }

    goto LABEL_28;
  }

  v13 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v38 = "SHBUFFERGROUPWRITER";
    _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_DEBUG, "%s: requestShbufferGroupList SUCCESS\n", buf, 0xCu);
  }

  if (v47 != 1)
  {
    v36 = 0;
    asprintf(&v36, "Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", v54, v47);
    v28 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v38 = "_requestShbufferGroupList";
      v39 = 1024;
      v40 = 761;
      v41 = 2080;
      *v42 = v54;
      *&v42[8] = 1024;
      *v43 = v47;
      _os_log_impl(&dword_25EBC5000, v28, OS_LOG_TYPE_FAULT, "%s:%d Failed requestShbufferGroupList for key %s; msgh_descriptor_count expected value of 1, actual value is %u", buf, 0x22u);
    }

    v29 = OSLogFlushBuffers();
    if (!v29)
    {
LABEL_26:
      usleep(0x1E8480u);
      goto LABEL_29;
    }

    v26 = v29;
    v27 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

LABEL_28:
    *buf = 136315394;
    v38 = "_requestShbufferGroupList";
    v39 = 1024;
    v40 = v26;
    _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    goto LABEL_29;
  }

  v14 = v48;
  v15 = v50;
  *v10 = v51;
  *v8 = v52;
  *v6 = v15;
  v16 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v17 = *v10;
    *buf = 136315394;
    v38 = "SHBUFFERGROUPWRITER";
    v39 = 1024;
    v40 = v17;
    _os_log_impl(&dword_25EBC5000, v16, OS_LOG_TYPE_DEBUG, "%s: Found (%d) shbufflets\n", buf, 0x12u);
  }

  v18 = *v10;
  if (v18)
  {
    v19 = 0;
    v20 = _ps_buffer_log;
    v21 = (v14 + 4);
    do
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(v21 - 1);
        v23 = *v21;
        *buf = 136315906;
        v38 = "SHBUFFERGROUPWRITER";
        v39 = 1024;
        v40 = v19;
        v41 = 1024;
        *v42 = v22;
        *&v42[4] = 1024;
        *&v42[6] = v23;
        _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_DEBUG, "%s: Resource (%d) type: (%d) id(%d)\n", buf, 0x1Eu);
        v20 = _ps_buffer_log;
        v18 = *v10;
      }

      ++v19;
      v21 += 2;
    }

    while (v19 < v18);
  }
}

uint64_t PSShbufferGroupWriter::deallocateBufferSyncContextObject(PSShbufferGroupWriter *this)
{
  v1 = *(this + 83);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  return 0;
}

void PSShbufferGroupWriter::~PSShbufferGroupWriter(PSShbufferGroupWriter *this)
{
  v9 = *MEMORY[0x277D85DE8];
  *this = &unk_2870CC6D0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315394;
    v6 = "SHBUFFERGROUPWRITER";
    v7 = 2080;
    v8 = this + 16;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "%s: Setting status to DEINITIALIZING... %s\n", &v5, 0x16u);
  }

  v3 = *(this + 82);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 82) = 0;
  }

  PSShbufferGroup::deallocate(this);
  getpid();
  PSShbufferGroup::unregisterBufferGroup(this);
  *this = &unk_2870CC610;
  v4 = *(this + 76);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  PSSharedResource::~PSSharedResource(this);
}

{
  PSShbufferGroupWriter::~PSShbufferGroupWriter(this);

  JUMPOUT(0x25F8CA500);
}

void sub_25EBCD820(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return abort_with_reason();
}

BOOL OUTLINED_FUNCTION_6_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

void OUTLINED_FUNCTION_15(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x22u);
}

void *PSBufferServiceManager::sharedInstance(PSBufferServiceManager *this)
{
  if (!bufferService)
  {
    operator new();
  }

  return bufferService;
}

void PSBufferServiceManager::~PSBufferServiceManager(PSBufferServiceManager *this)
{
  *this = &unk_2870CC730;
  if (bufferService)
  {
    (*(*bufferService + 8))(bufferService);
    bufferService = 0;
  }
}

{
  *this = &unk_2870CC730;
  if (bufferService)
  {
    (*(*bufferService + 8))(bufferService);
    bufferService = 0;
  }

  JUMPOUT(0x25F8CA500);
}

void sub_25EBCDB7C(_Unwind_Exception *a1)
{
  PSBufferService::AtomicDeque::AtomicDeque(v1 + 71);
  PSSharedResource::~PSSharedResource(v1);
  _Unwind_Resume(a1);
}

void PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(PSBufferService::PSLocklessBufferSelector *this)
{
  *this = &unk_2870CC760;
  *(this + 560) = 0;
  v2 = *(this + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PSBufferService::LocklessViewReaper::~LocklessViewReaper((this + 600));
  PSBufferService::AtomicDeque::AtomicDeque(this + 71);

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSBufferService::PSLocklessBufferSelector::Create(int *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0uLL;
  v7 = ((a1[1] + *a1) << 7) + 65052;
  v2 = a1[12];
  switch(v2)
  {
    case 2:
      v3 = *(a1 + 4);
      v6 = 1;
      v5 = v3;
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataWriter,std::allocator<PSSharedSerialDataWriter>,char const* const&,unsigned int const&,unsigned int const&,unsigned int &,int,unsigned int const&,unsigned int const&,char *,0>(&v9, (a1 + 6), (a1 + 2), (a1 + 10), &v7, &v6, (a1 + 4), (a1 + 3), &v5);
    case 1:
      LOBYTE(v6) = *(a1 + 46) ^ 1;
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataWriter,std::allocator<PSSharedSerialDataWriter>,char const* const&,unsigned int const&,BOOL &,char const* const&,0>();
    case 0:
      std::allocate_shared[abi:ne200100]<PSSharedSerialDataReader,std::allocator<PSSharedSerialDataReader>,char const* const&,unsigned int const&,BOOL const&,char const* const&,0>();
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  return 3;
}

void sub_25EBCE060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourcewithBufferID(PSBufferService::PSLocklessBufferSelector *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual int PSBufferService::PSLocklessBufferSelector::getResourcewithBufferID(int)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v3, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResource(PSBufferService::PSLocklessBufferSelector *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::getResource()");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v11 = "getResource";
    v12 = 1024;
    v13 = 128;
    v14 = 2080;
    v15 = "virtual int PSBufferService::PSLocklessBufferSelector::getResource()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "getResource";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResource(v5, v6, v7);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual int PSBufferService::PSLocklessBufferSelector::getResource(uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v3, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishResource(PSBufferService::PSLocklessBufferSelector *this, int a2, unsigned __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0;
  asprintf(&v11, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *)");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v13 = "relinquishResource";
    v14 = 1024;
    v15 = 134;
    v16 = 2080;
    v17 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "relinquishResource";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(v7, v8, v9);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResource(int, uint16_t *, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v5, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelector *this, int a2, unsigned __int16 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0;
  asprintf(&v10, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v12 = "relinquishResourceWithoutWriteIndexIncrement";
    v13 = 1024;
    v14 = 140;
    v15 = 2080;
    v16 = "virtual int PSBufferService::PSLocklessBufferSelector::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "relinquishResourceWithoutWriteIndexIncrement";
      v13 = 1024;
      v14 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(v7, v8);
}

uint64_t PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(PSBufferService::PSLocklessBufferSelector *this, unint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = 0;
  asprintf(&v8, "%s Non Implemented virtual function called", "virtual int PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(uint64_t &)");
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "incrementWriteIndex";
    v11 = 1024;
    v12 = 146;
    v13 = 2080;
    v14 = "virtual int PSBufferService::PSLocklessBufferSelector::incrementWriteIndex(uint64_t &)";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "incrementWriteIndex";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::getResource(v6);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceWithBufferID(PSBufferService::PSLocklessBufferSelector *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual int PSBufferService::PSLocklessBufferSelector::getResourceWithBufferID(int, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v3, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceLastN(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, int *a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0;
  asprintf(&v20, "%s Non Implemented virtual function called", "virtual void PSBufferService::PSLocklessBufferSelector::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)");
  v7 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v22 = "getResourceLastN";
    v23 = 1024;
    v24 = 171;
    v25 = 2080;
    v26 = "virtual void PSBufferService::PSLocklessBufferSelector::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
    _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = v8;
    v10 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "getResourceLastN";
      v23 = 1024;
      v24 = v9;
      _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v11 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, int *a3, unint64_t a4, unint64_t a5, unsigned int *a6, unint64_t *a7, unint64_t *a8)
{
  v23 = *MEMORY[0x277D85DE8];
  v16 = 0;
  asprintf(&v16, "%s Non Implemented virtual function called", "virtual void PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)");
  v8 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v18 = "getResourceSinceLast";
    v19 = 1024;
    v20 = 182;
    v21 = 2080;
    v22 = "virtual void PSBufferService::PSLocklessBufferSelector::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s Non Implemented virtual function called", buf, 0x1Cu);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v10 = v9;
    v11 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "getResourceSinceLast";
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v12 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelector::relinquishResource(v12, v13, v14);
}

uint64_t PSBufferService::PSLocklessBufferSelector::addReader(PSBufferService::PSLocklessBufferSelector *this, unsigned int a2, unsigned int *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "virtual PBSResult PSBufferService::PSLocklessBufferSelector::addReader(uint32_t, uint32_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v5, 0xCu);
  }

  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::removeReader(PSBufferService::PSLocklessBufferSelector *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual PBSResult PSBufferService::PSLocklessBufferSelector::removeReader(uint32_t, uint32_t)";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented virtual function called", &v3, 0xCu);
  }

  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::checkAVAViewCount(uint64_t a1, unsigned int a2)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v8 = v43;
  do
  {
    _X7 = v44;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v8;
    v8 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v14 = v41;
  do
  {
    _X7 = v42;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v14;
    v14 = _X6;
  }

  while (!_ZF);
  if (_X2)
  {
    return 0;
  }

  while (1)
  {
    v18 = *(a1 + 584);
    if (*(v18 + 144))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        _X2 = 0;
        _X3 = 0;
        __asm { CASPAL          X2, X3, X2, X3, [X15] }

        v24 = v40[0];
        do
        {
          _X7 = v40[1];
          __asm { CASPAL          X6, X7, X2, X3, [X12] }

          _ZF = _X6 == v24;
          v24 = _X6;
        }

        while (!_ZF);
        _ZF = (*(v40 + a2) & 0x7C00) != 0 || (*(v40 + a2) & 7) == 1;
        if (_ZF)
        {
          ++v20;
        }

        ++v19;
        v18 = *(a1 + 584);
      }

      while (v19 < *(v18 + 144));
    }

    else
    {
      v20 = 0;
    }

    v28 = *(v18 + 32 + 32 * a2);
    if (v28 <= v20)
    {
      break;
    }

    _X2 = 0;
    _X3 = 0;
    LOBYTE(v41) = v28 - v20;
    __asm { CASPAL          X2, X3, X2, X3, [X10] }

    _X5 = v44;
    __asm { CASPAL          X4, X5, X2, X3, [X13] }

    if (_X4 != v43)
    {
      _X2 = 0;
      v43 = _X4;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X11] }

      v37 = v41;
      do
      {
        _X7 = v42;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v37;
        v37 = _X6;
      }

      while (!_ZF);
      if (!_X2)
      {
        continue;
      }
    }

    return 0;
  }

  return 2;
}

uint64_t PSBufferService::PSLocklessBufferSelector::getReaderResource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, int a7)
{
  v9 = a2;
  v119 = *MEMORY[0x277D85DE8];
  v106 = a3;
  if (PSBufferService::LocklessViewReaper::setState(a1 + 600, a3, 1, *(*(a1 + 592) + (a2 << 7)), *(a1 + 624)))
  {
    v11 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315394;
    Key = PSSharedResource::getKey(a1);
    v113 = 1024;
    LODWORD(v114) = v106;
    v12 = " [key=%s] Failed to set state for memdesc for readerID %ul";
    v13 = v11;
    v14 = 18;
    goto LABEL_4;
  }

  v104 = a5;
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v22 = v109;
  do
  {
    _X5 = v110;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v22;
    v22 = _X4;
  }

  while (!_ZF);
  _X26 = 0;
  _X20 = 0;
  v105 = v9 << 7;
  while (1)
  {
    _X1 = 0;
    __asm { CASPAL          X0, X1, X20, X21, [X28] }

    v29 = v107;
    do
    {
      _X5 = v108;
      __asm { CASPAL          X4, X5, X0, X1, [X25] }

      _ZF = _X4 == v29;
      v29 = _X4;
    }

    while (!_ZF);
    v108 = 1 << v106;
    v32 = v9;
    SetBit = PSBufferService::AtomicPoolAccountant::GetSetBit(*(a1 + 584), v9);
    v34 = *(a1 + 624);
    v35 = *(&v109 + v34) & 7;
    if (v35 == 3)
    {
      break;
    }

    if (v35 != 1)
    {
      v68 = _ps_buffer_log;
      if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        return 0xFFFFFFFFLL;
      }

      v69 = PSSharedResource::getKey(a1);
      v70 = *(&v109 + *(a1 + 624)) & 7;
      *buf = 136315650;
      Key = "int PSBufferService::PSLocklessBufferSelector::getReaderResource(int, uint32_t, AVACriticality, uint32_t *, uint32_t, BOOL)";
      v113 = 2080;
      v114 = v69;
      v115 = 1024;
      v116 = v70;
      v12 = "%s [key=%s] Buffer state invalid for Reading, state=%d";
      v13 = v68;
      v14 = 28;
LABEL_4:
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
      return 0xFFFFFFFFLL;
    }

    if (!a7)
    {
      goto LABEL_29;
    }

    PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 3, *(*(a1 + 592) + v105), v34);
    v36 = *(a1 + 624);
    *(&v107 + v36) = (*(&v107 + v36) + 8) & 0x3F8 | *(&v107 + v36) & 0xFC07;
    v37 = ((HIWORD(v107) & 0xFFC0) + 64);
    HIWORD(v107) = ((HIWORD(v107) & 0xFFC0) + 64) & 0xFFC0 | BYTE6(v107) & 0x3F;
    _ZF = (*(&v107 + v36) & 0x3F8) == 0 || v37 == 0;
    if (_ZF)
    {
      PSBufferService::PSLocklessBufferSelector::getReaderResource(buf);
LABEL_72:
      PSBufferService::PSLocklessBufferSelector::getReaderResource(buf);
    }

    _X3 = 0;
    __asm { CASPAL          X2, X3, X26, X27, [X25] }

    _X1 = v110;
    __asm { CASPAL          X0, X1, X2, X3, [X8] }

    if (_X0 == v109)
    {
      v99 = v105;
      v98 = v106;
      v100 = *(*(a1 + 592) + v105);
      v101 = *(a1 + 624);
      v102 = a1 + 600;
      v103 = 4;
LABEL_67:
      PSBufferService::LocklessViewReaper::setState(v102, v98, v103, v100, v101);
      result = *(*(a1 + 592) + v99);
      if (v104)
      {
        *v104 = HIWORD(v107) >> 6;
      }

      return result;
    }

LABEL_30:
    v109 = _X0;
    v110 = _X1;
  }

  v43 = SetBit;
  PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 1, *(*(a1 + 592) + v105), v34);
  v44 = *(a1 + 624);
  if ((*(&v109 + v44) & 0x3C00) != 0)
  {
    if (!a7)
    {
      goto LABEL_29;
    }

    v45 = *(&v107 + v44);
    v46 = (v45 + 1024) & 0x3C00;
    v47 = v45 & 0xC3FF;
  }

  else
  {
    if ((a7 & 1) == 0)
    {
      goto LABEL_72;
    }

    v46 = *(&v107 + v44) & 0x43FF | (~v43 << 15);
    v47 = (*(&v107 + v44) + 1024) & 0x3C00;
  }

  *(&v107 + v44) = v46 | v47;
LABEL_29:
  _X3 = 0;
  __asm { CASPAL          X2, X3, X20, X21, [X25] }

  _X1 = v110;
  __asm { CASPAL          X0, X1, X2, X3, [X8] }

  v9 = v32;
  if (_X0 != v109)
  {
    goto LABEL_30;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 2, *(*(a1 + 592) + v105), *(a1 + 624));
  v50 = *(&v107 + *(a1 + 624)) >> 15;
  v51 = PSBufferService::AtomicPoolAccountant::DecrementPoolCount(*(a1 + 584), v50, v32);
  if (v51 != 2)
  {
    goto LABEL_34;
  }

  if (PSBufferService::PSLocklessBufferSelector::checkAVAViewCount(a1, *(a1 + 624)))
  {
    goto LABEL_35;
  }

  v51 = PSBufferService::AtomicPoolAccountant::DecrementPoolCount(*(a1 + 584), v50, v32);
LABEL_34:
  if ((v51 & 0xFFFFFFFE) == 2)
  {
LABEL_35:
    PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 5, *(*(a1 + 592) + v105), *(a1 + 624));
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v55 = v109;
    do
    {
      _X5 = v110;
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v55;
      v55 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    while (1)
    {
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }

      v61 = v107;
      do
      {
        _X7 = v108;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v61;
        v61 = _X6;
      }

      while (!_ZF);
      *(&v107 + *(a1 + 624)) = (*(&v107 + *(a1 + 624)) + 15360) & 0x3C00 | *(&v107 + *(a1 + 624)) & 0xC3FF;
      v108 &= ~(1 << v106);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X10] }

      _X3 = v110;
      __asm { CASPAL          X2, X3, X4, X5, [X12] }

      if (_X2 == v109)
      {
        break;
      }

      v109 = _X2;
    }

    v71 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v72 = PSSharedResource::getKey(a1);
      *buf = 136315906;
      Key = "int PSBufferService::PSLocklessBufferSelector::getReaderResource(int, uint32_t, AVACriticality, uint32_t *, uint32_t, BOOL)";
      v113 = 2080;
      v114 = v72;
      v115 = 1024;
      v116 = v32;
      v117 = 1024;
      v118 = v106;
      _os_log_impl(&dword_25EBC5000, v71, OS_LOG_TYPE_ERROR, "%s [key=%s] Out of views for this reader for buff_id=%d reader_id=%d!", buf, 0x22u);
    }

    return 4294967294;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 7, *(*(a1 + 592) + v105), *(a1 + 624));
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v76 = v109;
  do
  {
    _X5 = v110;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v76;
    v76 = _X4;
  }

  while (!_ZF);
  _X20 = 0;
  _X24 = 0;
  while (2)
  {
    _X1 = 0;
    __asm { CASPAL          X0, X1, X24, X25, [X23] }

    v83 = v107;
    do
    {
      _X5 = v108;
      __asm { CASPAL          X4, X5, X0, X1, [X26] }

      _ZF = _X4 == v83;
      v83 = _X4;
    }

    while (!_ZF);
    v108 = 0;
    v86 = *(a1 + 624);
    v87 = *(&v109 + v86) & 7;
    if (v87 > 1)
    {
      if (v87 != 2)
      {
        if (v87 != 3)
        {
LABEL_73:
          abort();
        }

        PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 7, *(*(a1 + 592) + v105), v86);
        v88 = *(a1 + 624);
        v89 = *(&v107 + v88) & 0xC000 | ((*(&v107 + v88) & 0x3FF8) + 15361) & 0x3C00 | ((*(&v107 + v88) & 0x3F8) + 9) & 0x3F8 | 1;
        goto LABEL_63;
      }
    }

    else if ((*(&v109 + v86) & 7) != 0)
    {
      if (v87 != 1)
      {
        goto LABEL_73;
      }

      PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 7, *(*(a1 + 592) + v105), v86);
      v88 = *(a1 + 624);
      v89 = (*(&v107 + v88) + 15360) & 0x3C00 | *(&v107 + v88) & 0xC007 | (*(&v107 + v88) + 8) & 0x3F8;
LABEL_63:
      *(&v107 + v88) = v89;
      HIWORD(v107) += 64;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X20, X21, [X26] }

      _X1 = v110;
      __asm { CASPAL          X0, X1, X2, X3, [X8] }

      if (_X0 == v109)
      {
        v99 = v105;
        v98 = v106;
        v100 = *(*(a1 + 592) + v105);
        v101 = *(a1 + 624);
        v102 = a1 + 600;
        v103 = 8;
        goto LABEL_67;
      }

LABEL_66:
      v109 = _X0;
      v110 = _X1;
      continue;
    }

    break;
  }

  PSBufferService::LocklessViewReaper::setState(a1 + 600, v106, 6, *(*(a1 + 592) + v105), v86);
  v94 = *(a1 + 624);
  v95 = *(&v107 + v94);
  *(&v107 + v94) = (v95 + 15360) & 0x3C00 | v95 & 0xC3FF;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X24, X25, [X26] }

  _X1 = v110;
  __asm { CASPAL          X0, X1, X2, X3, [X9] }

  if (_X0 != v109)
  {
    goto LABEL_66;
  }

  if (((v95 + 15360) & 0x3C00) == 0)
  {
    PSBufferService::AtomicPoolAccountant::IncrementPoolCount(*(a1 + 584));
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(uint64_t a1, unsigned int a2, _WORD *a3, uint64_t a4, uint64_t a5)
{
  v118 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(a1 + 552) <= a2)
  {
    v58 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v109 = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v110 = 2080;
      *v111 = PSSharedResource::getKey(a1);
      *&v111[8] = 1024;
      *&v111[10] = a2;
      _os_log_impl(&dword_25EBC5000, v58, OS_LOG_TYPE_ERROR, "%s [key=%s] Buffer Id invalid %d", buf, 0x1Cu);
    }

    return 0xFFFFFFFFLL;
  }

  v6 = a5;
  v7 = a4;
  _X10 = 0;
  _X11 = 0;
  __asm { CASPAL          X10, X11, X10, X11, [X8] }

  v14 = v106;
  do
  {
    _X5 = v107;
    __asm { CASPAL          X4, X5, X10, X11, [X8] }

    _ZF = _X4 == v14;
    v14 = _X4;
  }

  while (!_ZF);
  _X10 = 0;
  _X11 = 0;
  __asm { CASPAL          X10, X11, X10, X11, [X8] }

  v20 = v104;
  do
  {
    _X5 = v105;
    __asm { CASPAL          X4, X5, X10, X11, [X8] }

    _ZF = _X4 == v20;
    v20 = _X4;
  }

  while (!_ZF);
  v23 = *(&v106 + v6) & 7;
  if (v23 != 1)
  {
    v103 = 0;
    Key = PSSharedResource::getKey(a1);
    asprintf(&v103, "%s [key=%s] Trying to release a Buffer which is not in Reading %d state %d", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", Key, a2, v23);
    v81 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v82 = PSSharedResource::getKey(a1);
      v83 = *(&v106 + v6) & 7;
      *buf = 136316418;
      v109 = "relinquishReaderResource";
      v110 = 1024;
      *v111 = 598;
      *&v111[4] = 2080;
      *&v111[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
      v112 = 2080;
      v113 = v82;
      v114 = 1024;
      v115 = a2;
      v116 = 1024;
      v117 = v83;
      _os_log_impl(&dword_25EBC5000, v81, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to release a Buffer which is not in Reading %d state %d", buf, 0x32u);
    }

    v84 = OSLogFlushBuffers();
    if (!v84)
    {
      goto LABEL_74;
    }

    v85 = v84;
    v86 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_76;
    }

    goto LABEL_77;
  }

  v99 = (a1 + 584);
  v101 = a2 << 7;
  PSBufferService::LocklessViewReaper::setState(a1 + 600, a4, 9, *(*(a1 + 592) + v101), v6);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v28 = v106;
  do
  {
    _X5 = v107;
    __asm { CASPAL          X4, X5, X0, X1, [X20] }

    _ZF = _X4 == v28;
    v28 = _X4;
  }

  while (!_ZF);
  _X22 = 0;
  v32 = 1 << v7;
  v33 = a1;
  while (1)
  {
    _X26 = 0;
    _X27 = 0;
    __asm { CASPAL          X26, X27, X26, X27, [X28] }

    v37 = v104;
    do
    {
      _X3 = v105;
      __asm { CASPAL          X2, X3, X26, X27, [X24] }

      _ZF = _X2 == v37;
      v37 = _X2;
    }

    while (!_ZF);
    v105 = v32;
    v40 = *(&v106 + v6);
    v102 = v40 & 0x3FF8;
    if (v102 == 8)
    {
      v41 = v32;
      v42 = (_X26 & 0x20000000000000) == 0;
      v43 = *(*(v33 + 592) + v101);
      if ((_X26 & 0x20000000000000) != 0)
      {
        PSBufferService::LocklessViewReaper::setState(a1 + 600, v7, 11, v43, v6);
        HIWORD(v104) = HIWORD(_X26) & 0xFFDF;
        LODWORD(v104) = _X26 & 0xFFF8FFF8;
        v33 = a1;
        WORD2(v104) = WORD2(_X26) & 0xFFF8;
        v45 = *(&v104 + v6);
      }

      else
      {
        v44 = v33;
        PSBufferService::LocklessViewReaper::setState(v33 + 600, v7, 10, v43, v6);
        v33 = v44;
        v45 = *(&v104 + v6) & 0xBFF8 | 0x4003;
      }

      LOWORD(v50) = v45 & 0xFC07;
      v48 = (_X26 & 0x20000000000000) == 0;
      v51 = v42;
      v32 = v41;
      goto LABEL_30;
    }

    _ZF = (*(&v106 + v6) & 0x3C00) != 0 && (v40 & 0x3F8) == 8;
    if (_ZF)
    {
      v52 = v33;
      PSBufferService::LocklessViewReaper::setState(v33 + 600, v7, 9, *(*(v33 + 592) + v101), v6);
      v33 = v52;
      v48 = 0;
      LOWORD(v50) = *(&v104 + v6) & 0xFC07;
      goto LABEL_29;
    }

    if ((*(&v106 + v6) & 0x3F0) != 0)
    {
      v47 = v33;
      PSBufferService::LocklessViewReaper::setState(v33 + 600, v7, 9, *(*(v33 + 592) + v101), v6);
      v33 = v47;
      v48 = 0;
      v49 = *(&v104 + v6);
      v50 = v49 & 0xFFFFFC07 | (8 * (((v49 + 1016) >> 3) & 0x7F));
LABEL_29:
      v51 = 1;
LABEL_30:
      *(&v104 + v6) = v50;
      HIWORD(v104) -= 64;
      goto LABEL_31;
    }

    v48 = 0;
    v51 = 1;
LABEL_31:
    _X3 = 0;
    __asm { CASPAL          X2, X3, X22, X23, [X24] }

    _X1 = v107;
    __asm { CASPAL          X0, X1, X2, X3, [X9] }

    if (_X0 == v106)
    {
      break;
    }

    v106 = _X0;
  }

  if (HIWORD(v104) > 0x3Fu)
  {
    v51 = 1;
  }

  if (v51)
  {
LABEL_42:
    if (v102 == 8)
    {
      v62 = v33;
      PSBufferService::AtomicPoolAccountant::IncrementPoolCount(*v99);
      v33 = v62;
    }

    if (v48)
    {
      v63 = 12;
    }

    else
    {
      v63 = 13;
    }

    PSBufferService::LocklessViewReaper::setState(v33 + 600, v7, v63, *(*(v33 + 592) + v101), v6);
    _X0 = 0;
    _X1 = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v67 = v106;
    do
    {
      _X5 = v107;
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v67;
      v67 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    while (1)
    {
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X9] }

      v73 = v104;
      do
      {
        _X7 = v105;
        __asm { CASPAL          X6, X7, X2, X3, [X10] }

        _ZF = _X6 == v73;
        v73 = _X6;
      }

      while (!_ZF);
      v105 = 0;
      if (v48)
      {
        *(&v104 + v6) &= ~0x4000u;
      }

      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X10] }

      _X3 = v107;
      __asm { CASPAL          X2, X3, X4, X5, [X11] }

      if (_X2 == v106)
      {
        break;
      }

      v106 = _X2;
    }

    if (a3)
    {
      *a3 = HIWORD(v104) >> 6;
    }

    return 0;
  }

  else
  {
    v60 = v33;
    v61 = PSBufferService::MemDescPool::AddMemDescToFreePool(v99, a2);
    if (v61 == 1)
    {
      v103 = 0;
      v87 = PSSharedResource::getKey(v60);
      asprintf(&v103, "%s [key=%s] Failed to release memdesc id: %d to free pool in function. Memdesc ID is already free!", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", v87, a2);
      v88 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v89 = PSSharedResource::getKey(a1);
        *buf = 136316162;
        v109 = "relinquishReaderResource";
        v110 = 1024;
        *v111 = 693;
        *&v111[4] = 2080;
        *&v111[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
        v112 = 2080;
        v113 = v89;
        v114 = 1024;
        v115 = a2;
        _os_log_impl(&dword_25EBC5000, v88, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to release memdesc id: %d to free pool in function. Memdesc ID is already free!", buf, 0x2Cu);
      }

      v90 = OSLogFlushBuffers();
      if (!v90)
      {
        goto LABEL_74;
      }

      v85 = v90;
      v86 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }
    }

    else
    {
      v33 = v60;
      if (v61 != 3)
      {
        goto LABEL_42;
      }

      v103 = 0;
      v91 = PSSharedResource::getKey(v60);
      asprintf(&v103, "%s [key=%s] Failed to release memdesc id: %d to free pool in function. Invalid Parameters! NumMemDescNodes: %d", "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)", v91, a2, *(v60 + 138));
      v92 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
      {
        v93 = PSSharedResource::getKey(a1);
        v94 = *(a1 + 552);
        *buf = 136316418;
        v109 = "relinquishReaderResource";
        v110 = 1024;
        *v111 = 688;
        *&v111[4] = 2080;
        *&v111[6] = "int PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(int, uint16_t *, uint32_t, AVACriticality, uint32_t)";
        v112 = 2080;
        v113 = v93;
        v114 = 1024;
        v115 = a2;
        v116 = 1024;
        v117 = v94;
        _os_log_impl(&dword_25EBC5000, v92, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to release memdesc id: %d to free pool in function. Invalid Parameters! NumMemDescNodes: %d", buf, 0x32u);
      }

      v95 = OSLogFlushBuffers();
      if (!v95)
      {
LABEL_74:
        usleep(0x1E8480u);
        goto LABEL_77;
      }

      v85 = v95;
      v86 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
LABEL_76:
        *buf = 136315394;
        v109 = "relinquishReaderResource";
        v110 = 1024;
        *v111 = v85;
        _os_log_impl(&dword_25EBC5000, v86, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

LABEL_77:
    v96 = abort_with_reason();
    return PSBufferService::PSLocklessBufferSelectorWriter::Initialize(v96);
  }
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::Initialize(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    return 2;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeIntoRawBuffer((this + 568), (Data + 256), *(this + 139));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    goto LABEL_11;
  }

  v6 = (Data + (*(this + 139) << 7) + 384);
  v7 = PSBufferService::MemDescPool::InitializeIntoRawBuffer((this + 584), v6, *(this + 138));
  if (v7)
  {
    v1 = v7;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    *buf = 136315394;
    *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    v8 = "%s [key=%s] Failed to initialize memory descriptor";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0x16u);
    return v1;
  }

  v9 = PSBufferService::LocklessViewReaper::InitializeIntoRawBuffer((this + 600), &v6[128 * *(this + 138) + 256]);
  if (v9)
  {
    v1 = v9;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

LABEL_11:
    *buf = 136315394;
    *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    v8 = "%s [key=%s] Failed to initialize AtomicDeque";
    goto LABEL_12;
  }

  v11 = *(this + 72);
  v22 = 0;
  if (*(this + 139))
  {
    v12 = 0;
    v13 = (v11 + 24);
    do
    {
      *buf = 0;
      *&buf[8] = 0;
      PSBufferService::MemDescPool::GetFreeMemDescFromPool((this + 584), &v22, buf, 0);
      v14 = v22;
      atomic_store(v22, v13);
      *(*(this + 74) + (v14 << 7) + 4) = v12++;
      v15 = *(this + 139);
      v13 += 32;
    }

    while (v12 < v15);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  *&v21[4] = 0;
  v16 = *(this + 138);
  *v21 = v16 - v15;
  if (PSBufferService::AtomicPoolAccountant::Initialize(*(this + 73), v16, v21))
  {
    v17 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136315394;
      *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
      *&buf[12] = 2080;
      *&buf[14] = Key;
      _os_log_impl(&dword_25EBC5000, v17, OS_LOG_TYPE_ERROR, "%s [key=%s] Failed to initialize AVA structure", buf, 0x16u);
    }

    return 0;
  }

  else if ((*(**(this + 79) + 96))(*(this + 79), 10))
  {
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v20 = PSSharedResource::getKey(this);
      *buf = 136315394;
      *&buf[4] = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::Initialize()";
      *&buf[12] = 2080;
      *&buf[14] = v20;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_ERROR, " [key=%s]Failed to initialize remote resource %s", buf, 0x16u);
    }

    return 4;
  }

  else
  {
    v1 = 0;
    *(this + 560) = 1;
  }

  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    return 2;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeFromRawBuffer((this + 568), (Data + 256));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    v12 = 136315394;
    v13 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer()";
    v14 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize AtomicDeque structure";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v6, &v12, 0x16u);
    return v1;
  }

  v7 = *(*(this + 71) + 32);
  *(this + 139) = v7;
  v8 = (Data + (v7 << 7) + 384);
  v9 = PSBufferService::MemDescPool::InitializeFromRawBuffer((this + 584), v8);
  if (v9)
  {
    v1 = v9;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    goto LABEL_11;
  }

  v10 = *(*(this + 73) + 144);
  *(this + 138) = v10;
  v1 = PSBufferService::LocklessViewReaper::InitializeFromRawBuffer((this + 600), &v8[128 * v10 + 256]);
  if (!v1)
  {
    *(this + 560) = 1;
    return v1;
  }

  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    v12 = 136315394;
    v13 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorWriter::InitializeFromRawBuffer()";
    v14 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize memory descriptor";
    goto LABEL_12;
  }

  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResource(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  return PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(this, 0);
}

{
  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v71 = 0;
  v4 = *(this + 561);
  v5 = (this + 568);
  if (v4 == 1)
  {
    if (PSBufferService::AtomicDeque::Dequeue(v5, &v71))
    {
      goto LABEL_3;
    }
  }

  else if (PSBufferService::AtomicDeque::GetNodeIdFromTail(v5, &v71))
  {
LABEL_3:
    abort();
  }

  _X0 = 0;
  _X1 = 0;
  v8 = atomic_load((*(this + 72) + (v71 << 7) + 24));
  v69 = 0;
  v70 = v8;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v14 = v67;
  do
  {
    _X5 = v68;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v14;
    v14 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  while (1)
  {
    _X3 = 0;
    __asm { CASPAL          X2, X3, X0, X1, [X8] }

    v20 = v65;
    do
    {
      _X7 = v66;
      __asm { CASPAL          X6, X7, X2, X3, [X9] }

      _ZF = _X6 == v20;
      v20 = _X6;
    }

    while (!_ZF);
    if ((_X2 & 7) == 1 || (v23 = BYTE2(_X2) & 7, v23 == 1) || (v24 = BYTE4(_X2) & 7, v24 == 1))
    {
      HIWORD(v65) = HIWORD(_X2) | 0x20;
    }

    else
    {
      if ((_X2 & 7) == 2 || v23 == 2 || v24 == 2)
      {
        *&v64 = 0;
        Key = PSSharedResource::getKey(this);
        asprintf(&v64, "%s [key=%s] Trying to acquire memdesc already in WRITING!! %d %d", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", Key, v71, v8);
        v50 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
        {
          v51 = PSSharedResource::getKey(this);
          *buf = 136316418;
          v73 = "getResourceInternal";
          v74 = 1024;
          *v75 = 944;
          *&v75[4] = 2080;
          *&v75[6] = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
          v76 = 2080;
          *v77 = v51;
          *&v77[8] = 1024;
          *&v77[10] = v71;
          v78 = 1024;
          v79 = v8;
          _os_log_impl(&dword_25EBC5000, v50, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to acquire memdesc already in WRITING!! %d %d", buf, 0x32u);
        }

        v52 = OSLogFlushBuffers();
        if (v52)
        {
          v53 = v52;
          v54 = _ps_buffer_log;
          if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v73 = "getResourceInternal";
            v74 = 1024;
            *v75 = v53;
            _os_log_impl(&dword_25EBC5000, v54, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
          }
        }

        else
        {
          usleep(0x1E8480u);
        }

LABEL_44:
        abort_with_reason();
      }

      LOWORD(v65) = _X2 & 0xFFF8 | 2;
      WORD1(v65) = WORD1(_X2) & 0xFFF8 | 2;
      WORD2(v65) = WORD2(_X2) & 0xFFF8 | 2;
    }

    _X5 = 0;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _X3 = v68;
    __asm { CASPAL          X2, X3, X4, X5, [X10] }

    if (_X2 == v67)
    {
      break;
    }

    v67 = _X2;
  }

  if ((v65 & 0x20000000000000) == 0)
  {
    v29 = *(this + 74);
    v30 = v8 << 7;
    return *(v29 + v30);
  }

  v64 = 0uLL;
  v63 = 0uLL;
  if (PSBufferService::MemDescPool::ReadFreeMemDescFromPool((this + 584), &v70, &v64))
  {
    PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(buf, this);
    goto LABEL_46;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v35 = v65;
  do
  {
    _X5 = v66;
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    _ZF = _X4 == v35;
    v35 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  _X1 = 0;
  LOWORD(v65) = _X2 & 0xFFF8 | 2;
  WORD1(v65) = WORD1(_X2) & 0xFFF8 | 2;
  WORD2(v65) = WORD2(_X2) & 0xFFF8 | 2;
  v40 = *(this + 74) + (v70 << 7);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v42 = *(v40 + 16);
  do
  {
    _X5 = *(v40 + 24);
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v42;
    v42 = _X4;
  }

  while (!_ZF);
  if (a2 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (PSBufferService::MemDescPool::GetFreeMemDescFromPool((this + 584), &v69, &v63, &v70) || v69 != v70)
  {
LABEL_46:
    v55 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v73 = *(&v64 + 1);
      v74 = 2048;
      *v75 = v64;
      _os_log_impl(&dword_25EBC5000, v55, OS_LOG_TYPE_ERROR, "free_array_on_read =%llx %llx", buf, 0x16u);
      v55 = _ps_buffer_log;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v73 = *(&v63 + 1);
      v74 = 2048;
      *v75 = v63;
      _os_log_impl(&dword_25EBC5000, v55, OS_LOG_TYPE_ERROR, "free_array_on_get =%llx %llx", buf, 0x16u);
    }

    v62 = 0;
    v56 = PSSharedResource::getKey(this);
    asprintf(&v62, "%s line=%d [key=%s] Failed to get a new memDesc from pool (checkId=%u newId=%u)", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", 1001, v56, v69, v70);
    v57 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v58 = PSSharedResource::getKey(this);
      *buf = 136316674;
      v73 = "getResourceInternal";
      v74 = 1024;
      *v75 = 1001;
      *&v75[4] = 2080;
      *&v75[6] = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
      v76 = 1024;
      *v77 = 1001;
      *&v77[4] = 2080;
      *&v77[6] = v58;
      v78 = 1024;
      v79 = v69;
      v80 = 1024;
      v81 = v70;
      _os_log_impl(&dword_25EBC5000, v57, OS_LOG_TYPE_FAULT, "%s:%d %s line=%d [key=%s] Failed to get a new memDesc from pool (checkId=%u newId=%u)", buf, 0x38u);
    }

    v59 = OSLogFlushBuffers();
    if (v59)
    {
      v60 = v59;
      v61 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v73 = "getResourceInternal";
        v74 = 1024;
        *v75 = v60;
        _os_log_impl(&dword_25EBC5000, v61, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    goto LABEL_44;
  }

  if (a2 != 2)
  {
    v45 = *(this + 74);
    *(v45 + (v8 << 7) + 4) = -1;
    v46 = v71;
    *(v45 + (v70 << 7) + 4) = v71;
    v47 = (*(this + 72) + (v46 << 7) + 24);
    v48 = v70;
    atomic_store(v70, v47);
    v29 = *(this + 74);
    v30 = v48 << 7;
    return *(v29 + v30);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v32 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    v52 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
    v53 = 2080;
    *v54 = PSSharedResource::getKey(this);
    *&v54[8] = 1024;
    *&v54[10] = a2;
    v33 = "%s [key=%s] Buffer Id invalid %d";
LABEL_21:
    _os_log_impl(&dword_25EBC5000, v32, OS_LOG_TYPE_ERROR, v33, buf, 0x1Cu);
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(this + 74) + (a2 << 7) + 4);
  if (v5 >= *(this + 139))
  {
    v32 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    v52 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
    v53 = 2080;
    *v54 = PSSharedResource::getKey(this);
    *&v54[8] = 1024;
    *&v54[10] = a2;
    v33 = "%s [key=%s] NodeId not owned by buff_id %d";
    goto LABEL_21;
  }

  _X0 = 0;
  _X1 = 0;
  v9 = atomic_load((*(this + 72) + (v5 << 7) + 24));
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v15 = v49[1];
  do
  {
    _X5 = v49[2];
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v15;
    v15 = _X4;
  }

  while (!_ZF);
  if ((_X0 & 7) == 2)
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X9] }

    v21 = v50[0];
    do
    {
      _X5 = v50[1];
      __asm { CASPAL          X4, X5, X2, X3, [X9] }

      _ZF = _X4 == v21;
      v21 = _X4;
    }

    while (!_ZF);
    _X0 = 0;
    _X1 = 0;
    LOWORD(v50[0]) = _X2 & 0xFFF8 | 3;
    WORD1(v50[0]) = WORD1(_X2) & 0xFFF8 | 3;
    WORD2(v50[0]) = WORD2(_X2) & 0xFFF8 | 3;
    HIWORD(v50[0]) = HIWORD(_X2) & 0xFFE0 | (HIWORD(_X2) + 1) & 0x1F;
    v26 = *(this + 74) + (v9 << 7);
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v28 = *(v26 + 16);
    do
    {
      _X5 = *(v26 + 24);
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v28;
      v28 = _X4;
    }

    while (!_ZF);
    v49[0] = 0;
    if (*(this + 561) != 1)
    {
      (*(*this + 176))(this, v49, _X4);
      if (!a3)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (!PSBufferService::AtomicDeque::Enqueue((this + 568), v5, v49))
    {
      if (!a3)
      {
        return 0;
      }

LABEL_17:
      *a3 = 0;
      return 0;
    }

    v48 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v48, "%s [key=%s] Failed to Enqueue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)", Key, v5);
    v41 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v42 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v52 = "relinquishResource";
      v53 = 1024;
      *v54 = 1089;
      *&v54[4] = 2080;
      *&v54[6] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
      v55 = 2080;
      v56 = v42;
      v57 = 1024;
      v58 = v5;
      _os_log_impl(&dword_25EBC5000, v41, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Enqueue the nodeId %d", buf, 0x2Cu);
    }

    v43 = OSLogFlushBuffers();
    if (v43)
    {
      v44 = v43;
      v45 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v52 = "relinquishResource";
        v53 = 1024;
        *v54 = v44;
        _os_log_impl(&dword_25EBC5000, v45, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }
  }

  else
  {
    v50[0] = 0;
    v34 = PSSharedResource::getKey(this);
    asprintf(v50, "%s [key=%s] Trying to relinquish Buffer that is not in Writing %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)", v34, a2);
    v35 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v36 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v52 = "relinquishResource";
      v53 = 1024;
      *v54 = 1067;
      *&v54[4] = 2080;
      *&v54[6] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResource(int, uint16_t *)";
      v55 = 2080;
      v56 = v36;
      v57 = 1024;
      v58 = a2;
      _os_log_impl(&dword_25EBC5000, v35, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to relinquish Buffer that is not in Writing %d", buf, 0x2Cu);
    }

    v37 = OSLogFlushBuffers();
    if (v37)
    {
      v38 = v37;
      v39 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v52 = "relinquishResource";
        v53 = 1024;
        *v54 = v38;
        _os_log_impl(&dword_25EBC5000, v39, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }
  }

  v46 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(v46, v47);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(PSBufferService::PSLocklessBufferSelectorWriter *this, unint64_t *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v19 = 0;
  if (!PSBufferService::AtomicDeque::Dequeue((this + 568), &v19))
  {
    if (!PSBufferService::AtomicDeque::Enqueue((this + 568), v19, a2))
    {
      return 0;
    }

    v18 = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(&v18, "%s [key=%s] Failed to Enqueue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)", Key, v19);
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v13 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v21 = "incrementWriteIndex";
      v22 = 1024;
      v23 = 1116;
      v24 = 2080;
      v25 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)";
      v26 = 2080;
      v27 = v13;
      v28 = 1024;
      v29 = v19;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Enqueue the nodeId %d", buf, 0x2Cu);
    }

    v14 = OSLogFlushBuffers();
    if (!v14)
    {
      goto LABEL_12;
    }

    v9 = v14;
    v10 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v18 = 0;
  v5 = PSSharedResource::getKey(this);
  asprintf(&v18, "%s [key=%s] Failed to Dequeue the nodeId %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)", v5, v19);
  v6 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = PSSharedResource::getKey(this);
    *buf = 136316162;
    v21 = "incrementWriteIndex";
    v22 = 1024;
    v23 = 1110;
    v24 = 2080;
    v25 = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::incrementWriteIndex(uint64_t &)";
    v26 = 2080;
    v27 = v7;
    v28 = 1024;
    v29 = v19;
    _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Failed to Dequeue the nodeId %d", buf, 0x2Cu);
  }

  v8 = OSLogFlushBuffers();
  if (!v8)
  {
LABEL_12:
    usleep(0x1E8480u);
    goto LABEL_15;
  }

  v9 = v8;
  v10 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_14:
    *buf = 136315394;
    v21 = "incrementWriteIndex";
    v22 = 1024;
    v23 = v9;
    _os_log_impl(&dword_25EBC5000, v10, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
  }

LABEL_15:
  v15 = abort_with_reason();
  return PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(v15, v16, v17);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v31 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    *&buf[4] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    *&buf[22] = 1024;
    *&buf[24] = a2;
    v32 = "%s [key=%s] Buffer Id invalid %d";
LABEL_19:
    _os_log_impl(&dword_25EBC5000, v31, OS_LOG_TYPE_ERROR, v32, buf, 0x1Cu);
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(this + 74) + (a2 << 7) + 4);
  if (v5 >= *(this + 139))
  {
    v31 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 136315650;
    *&buf[4] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    *&buf[12] = 2080;
    *&buf[14] = PSSharedResource::getKey(this);
    *&buf[22] = 1024;
    *&buf[24] = a2;
    v32 = "%s [key=%s] NodeId not owned by buff_id %d";
    goto LABEL_19;
  }

  _X0 = 0;
  _X1 = 0;
  v8 = atomic_load((*(this + 72) + (v5 << 7) + 24));
  atomic_load((*(this + 72) + (v5 << 7) + 8));
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v14 = v40[1];
  do
  {
    _X7 = v40[2];
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v14;
    v14 = _X6;
  }

  while (!_ZF);
  if ((_X0 & 7) == 2)
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X4, X5, [X9] }

    v20 = *buf;
    do
    {
      _X7 = *&buf[8];
      __asm { CASPAL          X6, X7, X4, X5, [X9] }

      _ZF = _X6 == v20;
      v20 = _X6;
    }

    while (!_ZF);
    _X0 = 0;
    _X1 = 0;
    *buf = _X4 & 0xFFF8 | 3;
    *&buf[2] = WORD1(_X4) & 0xFFF8 | 3;
    *&buf[4] = WORD2(_X4) & 0xFFF8 | 3;
    *&buf[6] = HIWORD(_X4) & 0xFFE0 | (HIWORD(_X4) + 1) & 0x1F;
    v25 = *(this + 74) + (v8 << 7);
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v27 = *(v25 + 16);
    do
    {
      _X7 = *(v25 + 24);
      __asm { CASPAL          X6, X7, X0, X1, [X8] }

      _ZF = _X6 == v27;
      v27 = _X6;
    }

    while (!_ZF);
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }

  else
  {
    v40[0] = 0;
    Key = PSSharedResource::getKey(this);
    asprintf(v40, "%s [key=%s] Trying to relinquish Buffer that is not in Writing %d", "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)", Key, a2);
    v34 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v35 = PSSharedResource::getKey(this);
      *buf = 136316162;
      *&buf[4] = "relinquishResourceWithoutWriteIndexIncrement";
      *&buf[12] = 1024;
      *&buf[14] = 1152;
      *&buf[18] = 2080;
      *&buf[20] = "virtual int PSBufferService::PSLocklessBufferSelectorWriter::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
      v42 = 2080;
      v43 = v35;
      v44 = 1024;
      v45 = a2;
      _os_log_impl(&dword_25EBC5000, v34, OS_LOG_TYPE_FAULT, "%s:%d %s [key=%s] Trying to relinquish Buffer that is not in Writing %d", buf, 0x2Cu);
    }

    v36 = OSLogFlushBuffers();
    if (v36)
    {
      v37 = v36;
      v38 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "relinquishResourceWithoutWriteIndexIncrement";
        *&buf[12] = 1024;
        *&buf[14] = v37;
        _os_log_impl(&dword_25EBC5000, v38, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v39 = abort_with_reason();
    return PSBufferService::PSLocklessBufferSelectorWriter::relinquishWriterResources(v39);
  }
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishWriterResources(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = 0;
  MissingNodeInQueue = PSBufferService::AtomicDeque::FindMissingNodeInQueue((this + 568), &v39, a3, a4, a5, a6);
  if (MissingNodeInQueue == 2 && PSBufferService::AtomicDeque::GetNodeIdFromTail((this + 568), &v39))
  {
    abort();
  }

  _X2 = 0;
  _X3 = 0;
  v10 = atomic_load((*(this + 72) + (v39 << 7) + 24));
  v11 = (this + 584);
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  v17 = v37;
  do
  {
    _X7 = v38;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v17;
    v17 = _X6;
  }

  while (!_ZF);
  if ((_X2 & 7) == 3)
  {
    if ((BYTE2(_X2) & 7) == 3 && (BYTE4(_X2) & 7) == 3)
    {
      goto LABEL_24;
    }
  }

  else if ((_X2 & 7) == 2 && (BYTE2(_X2) & 7) == 2 && (BYTE4(_X2) & 7) == 2)
  {
    v20 = (*(this + 74) + (v10 << 7));
    v20[8] &= 0xFFF8u;
    v20[9] &= 0xFFF8u;
    v20[10] &= 0xFFF8u;
    goto LABEL_24;
  }

  v34 = 0;
  if (!*(*v11 + 144))
  {
    return 0;
  }

  _X2 = 0;
  while (1)
  {
    _X5 = 0;
    __asm { CASPAL          X4, X5, X2, X3, [X11] }

    v24 = v35;
    do
    {
      _X13 = v36;
      __asm { CASPAL          X12, X13, X4, X5, [X9] }

      _ZF = _X12 == v24;
      v24 = _X12;
    }

    while (!_ZF);
    if ((_X4 & 7) == 2 || (_X4 & 0x70000) == 0x20000 || (_X4 & 0x700000000) == 0x200000000)
    {
      break;
    }

    if (++v34 >= *(*v11 + 144))
    {
      return 0;
    }
  }

  v27 = *(this + 74);
  *(v27 + (v10 << 7) + 4) = -1;
  v28 = v39;
  v29 = v34;
  *(v27 + (v34 << 7) + 4) = v39;
  atomic_store(v29, (*(this + 72) + (v28 << 7) + 24));
  v30 = (*(this + 74) + (v29 << 7));
  v30[8] &= 0xFFF8u;
  v30[9] &= 0xFFF8u;
  v30[10] &= 0xFFF8u;
  v33 = 0uLL;
  v32 = 0;
  PSBufferService::MemDescPool::GetFreeMemDescFromPool(v11, &v32, &v33, &v34);
LABEL_24:
  if (MissingNodeInQueue != 2)
  {
    PSBufferService::AtomicDeque::AddNodeToTail((this + 568), v39);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  PSBufferService::LocklessViewReaper::setState(this + 600, a2, 0, a3, *(*(this + 77) + 880 * a2 + 8 * a3 + 2));
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X8] }

  v10 = v33;
  do
  {
    _X5 = v35;
    __asm { CASPAL          X4, X5, X0, X1, [X8] }

    _ZF = _X4 == v10;
    v10 = _X4;
  }

  while (!_ZF);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9,#0x40+var_40] }

  v16 = v37;
  do
  {
    _X5 = v38;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v16;
    v16 = _X4;
  }

  while (!_ZF);
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X9] }

  _X3 = v35;
  __asm { CASPAL          X2, X3, X4, X5, [X10] }

  if (_X2 != v33)
  {
    _X0 = 0;
    do
    {
      v34 = _X2;
      v36 = _X3;
      _X3 = 0;
      __asm { CASPAL          X2, X3, X0, X1, [X10] }

      v27 = v37;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X2, X3, [X9] }

        _ZF = _X6 == v27;
        v27 = _X6;
      }

      while (!_ZF);
      _X5 = 0;
      __asm { CASPAL          X4, X5, X0, X1, [X9] }

      _X3 = v36;
      __asm { CASPAL          X2, X3, X4, X5, [X11] }
    }

    while (_X2 != v34);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAcquirePrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v13 = v17;
  do
  {
    _X5 = v18;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v13;
    v13 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

void PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v8 = v11[1];
  do
  {
    _X5 = v11[2];
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v8;
    v8 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(v11);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAVAOutOfViewsState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v10 = v14;
  do
  {
    _X13 = v15;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v10;
    v10 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingFailedState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v10 = v14;
  do
  {
    _X13 = v15;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v10;
    v10 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v14 = v18;
  do
  {
    _X5 = v19;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v14;
    v14 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleReadingCommitState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, *(*(this + 77) + 880 * a2 + 8 * a3 + 2));
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v14 = v18;
  do
  {
    _X7 = v19;
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v14;
    v14 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseToPoolState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v14 = v18;
  do
  {
    _X5 = v19;
    __asm { CASPAL          X4, X5, X0, X1, [X9] }

    _ZF = _X4 == v14;
    v14 = _X4;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAvaPrepareState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  v8 = *(*(this + 77) + 880 * a2 + 8 * a3 + 2);
  __asm { CASPAL          X0, X1, X0, X1, [X10] }

  v14 = v18;
  do
  {
    _X7 = v19;
    __asm { CASPAL          X6, X7, X0, X1, [X10] }

    _ZF = _X6 == v14;
    v14 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelector::relinquishReaderResource(this, a3, 0, a2, v8);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAVACommitState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X11] }

  v10 = v14;
  do
  {
    _X13 = v15;
    __asm { CASPAL          X12, X13, X4, X5, [X11] }

    _ZF = _X12 == v10;
    v10 = _X12;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::handleAlreadyReadingState(PSBufferService::PSLocklessBufferSelectorWriter *this, uint64_t a2, uint64_t a3)
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v13 = v17;
  do
  {
    _X7 = v18;
    __asm { CASPAL          X6, X7, X0, X1, [X9] }

    _ZF = _X6 == v13;
    v13 = _X6;
  }

  while (!_ZF);
  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, a2, a3);
  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::relinquishReaderResourcesForProcessID(PSBufferService::PSLocklessBufferSelectorWriter *this, unsigned int a2)
{
  if (a2 > 0x3FF)
  {
    return 3;
  }

  v5 = *(*(this + 75) + 8 * a2 + 8);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v5)
      {
        v8 = 0;
        v9 = v6;
        do
        {
          v10 = *(*(this + 77) + v9);
          if (v10 > 7)
          {
            if (*(*(this + 77) + v9) > 0xAu)
            {
              switch(v10)
              {
                case 0xBu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseToPoolState(this, v7, v8);
                  break;
                case 0xCu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAVACommitState(this, v7, v8);
                  break;
                case 0xDu:
                  PSBufferService::PSLocklessBufferSelectorWriter::resetMemdescState(this, v7, v8);
                  break;
              }
            }

            else
            {
              switch(v10)
              {
                case 8u:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleReadingCommitState(this, v7, v8);
                  break;
                case 9u:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishPrepareState(this, v7, v8);
                  break;
                case 0xAu:
                  PSBufferService::PSLocklessBufferSelectorWriter::handleRelinquishReleaseAvaPrepareState(this, v7, v8);
                  break;
              }
            }
          }

          else if (*(*(this + 77) + v9) > 4u)
          {
            switch(v10)
            {
              case 5u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleAVAOutOfViewsState(this, v7, v8);
                break;
              case 6u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleReadingFailedState(this, v7, v8);
                break;
              case 7u:
                PSBufferService::PSLocklessBufferSelectorWriter::handleReadingPrepareState(this, v7, v8);
                break;
            }
          }

          else if (v10 - 3 < 2)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAlreadyReadingState(this, v7, v8);
          }

          else if (v10 == 1)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAcquirePrepareState(this, v7, v8);
          }

          else if (v10 == 2)
          {
            PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(this);
          }

          PSBufferService::LocklessViewReaper::removeReader(this + 75, a2, v7);
          ++v8;
          v9 += 8;
        }

        while (v8 != 110);
      }

      ++v7;
      v6 += 880;
      v11 = v5 > 1;
      v5 >>= 1;
    }

    while (v11);
  }

  return 0;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::Initialize(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(this + 560))
  {
    return 2;
  }

  Data = PSSharedSerialData::getData(*(this + 79));
  v4 = PSBufferService::AtomicDeque::InitializeFromRawBuffer((this + 568), (Data + 256));
  if (v4)
  {
    v1 = v4;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    v12 = 136315394;
    v13 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::Initialize()";
    v14 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize AtomicDeque structure";
LABEL_12:
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, v6, &v12, 0x16u);
    return v1;
  }

  v7 = *(*(this + 71) + 32);
  *(this + 139) = v7;
  v8 = (Data + (v7 << 7) + 384);
  v9 = PSBufferService::MemDescPool::InitializeFromRawBuffer((this + 584), v8);
  if (v9)
  {
    v1 = v9;
    v5 = _ps_buffer_log;
    if (!os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      return v1;
    }

    goto LABEL_11;
  }

  v10 = *(*(this + 73) + 144);
  *(this + 138) = v10;
  v1 = PSBufferService::LocklessViewReaper::InitializeFromRawBuffer((this + 600), &v8[128 * v10 + 256]);
  if (!v1)
  {
    *(this + 560) = 1;
    return v1;
  }

  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    v12 = 136315394;
    v13 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::Initialize()";
    v14 = 2080;
    Key = PSSharedResource::getKey(this);
    v6 = "%s [key=%s] Failed to initialize memory descriptor";
    goto LABEL_12;
  }

  return v1;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::getResource(PSBufferService::PSLocklessBufferSelectorReader *this, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  if (PSBufferService::AtomicDeque::GetNodeIdFromHead((this + 568), &v11, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  v6 = atomic_load((*(this + 72) + (v11 << 7) + 24));
  ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, v6, a2, 0, 0, v4, 1);
  if (ReaderResource >= 0xFFFFFFFE)
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      *buf = 136316162;
      v13 = "getResource";
      v14 = 2080;
      v15 = Key;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = a2;
      v20 = 1024;
      v21 = ReaderResource;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s [key=%s] id=%d reader_id=%d result=%d", buf, 0x28u);
    }
  }

  return ReaderResource;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::getResourceWithBufferID(PSBufferService::PSLocklessBufferSelectorReader *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2;
  v23 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0 || *(this + 138) <= a2)
  {
    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::getResourceWithBufferID(int, uint32_t)";
      v15 = 2080;
      Key = PSSharedResource::getKey(this);
      v17 = 1024;
      v18 = v6;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s [key=%s] Buffer Id invalid %d", &v13, 0x1Cu);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v8 = a3;
    ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a2, a3, 0, 0, a6, 1);
    result = 0;
    if (ReaderResource >= 0xFFFFFFFE)
    {
      v11 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316162;
        v14 = "getResourceWithBufferID";
        v15 = 2080;
        Key = PSSharedResource::getKey(this);
        v17 = 1024;
        v18 = v6;
        v19 = 1024;
        v20 = v8;
        v21 = 1024;
        v22 = ReaderResource;
        _os_log_impl(&dword_25EBC5000, v11, OS_LOG_TYPE_ERROR, "%s [key=%s] id=%d reader_id=%d result=%d", &v13, 0x28u);
      }

      return ReaderResource;
    }
  }

  return result;
}

void PSBufferService::PSLocklessBufferSelectorReader::getResourceLastN(PSBufferService::PSLocklessBufferSelectorReader *this, uint64_t a2, int *a3, unint64_t a4, unsigned int *a5, unint64_t *a6, unint64_t *a7)
{
  v39 = *MEMORY[0x277D85DE8];
  PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN((this + 568), a4, a3, a6, a7);
  if (*a7)
  {
    v14 = 0;
    for (i = a5; ; ++i)
    {
      v16 = a3[v14];
      v17 = a5 ? i : 0;
      ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a3[v14], a2, 0, v17, v13, 1);
      if (ReaderResource >= 0xFFFFFFFE)
      {
        break;
      }

      if (++v14 >= *a7)
      {
        return;
      }
    }

    v19 = ReaderResource;
    *a7 = v14;
    v20 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      v22 = *a7;
      v23 = 136316930;
      v24 = "virtual void PSBufferService::PSLocklessBufferSelectorReader::getResourceLastN(uint32_t, int *, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
      v25 = 2080;
      v26 = Key;
      v27 = 1024;
      v28 = v16;
      v29 = 1024;
      v30 = a2;
      v31 = 2048;
      v32 = a4;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v14;
      v37 = 1024;
      v38 = v19;
      _os_log_impl(&dword_25EBC5000, v20, OS_LOG_TYPE_ERROR, "%s [key=%s] index=%d reader_id=%d requested_buffer_count=%llu read_buffer_count=%llu i=%llu ret=%d", &v23, 0x46u);
    }
  }
}

void PSBufferService::PSLocklessBufferSelectorReader::getResourceSinceLast(PSBufferService::PSLocklessBufferSelectorReader *this, uint64_t a2, int *a3, unint64_t a4, unint64_t a5, unsigned int *a6, unint64_t *a7, unint64_t *a8)
{
  v42 = *MEMORY[0x277D85DE8];
  PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast((this + 568), a4, a5, a3, a7, a8);
  if (*a8)
  {
    v15 = 0;
    for (i = a6; ; ++i)
    {
      v17 = a3[v15];
      v18 = a6 ? i : 0;
      ReaderResource = PSBufferService::PSLocklessBufferSelector::getReaderResource(this, a3[v15], a2, 0, v18, v14, 1);
      if (ReaderResource >= 0xFFFFFFFE)
      {
        break;
      }

      if (++v15 >= *a8)
      {
        return;
      }
    }

    v20 = ReaderResource;
    *a8 = v15;
    v21 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      Key = PSSharedResource::getKey(this);
      v23 = *a8;
      v24 = 136317186;
      v25 = "virtual void PSBufferService::PSLocklessBufferSelectorReader::getResourceSinceLast(uint32_t, int *, uint64_t, uint64_t, uint32_t *, uint64_t *, uint64_t *)";
      v26 = 1024;
      v27 = 1942;
      v28 = 2080;
      v29 = Key;
      v30 = 1024;
      v31 = v17;
      v32 = 1024;
      v33 = a2;
      v34 = 2048;
      v35 = a4;
      v36 = 2048;
      v37 = v23;
      v38 = 2048;
      v39 = v15;
      v40 = 1024;
      v41 = v20;
      _os_log_impl(&dword_25EBC5000, v21, OS_LOG_TYPE_ERROR, "%s:%d [key=%s] index=%d reader_id=%d max_read_count=%llu read_buffer_count=%llu i=%llu ret=%d", &v24, 0x4Cu);
    }
  }
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::relinquishResourceWithoutWriteIndexIncrement(PSBufferService::PSLocklessBufferSelectorReader *this, int a2, unsigned __int16 *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315138;
    v6 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::relinquishResourceWithoutWriteIndexIncrement(int, uint16_t *)";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v5, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::incrementWriteIndex(PSBufferService::PSLocklessBufferSelectorReader *this, unint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "virtual int PSBufferService::PSLocklessBufferSelectorReader::incrementWriteIndex(uint64_t &)";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v4, 0xCu);
  }

  return 0xFFFFFFFFLL;
}

uint64_t PSBufferService::PSLocklessBufferSelectorReader::InitializeFromRawBuffer(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315138;
    v4 = "virtual PBSResult PSBufferService::PSLocklessBufferSelectorReader::InitializeFromRawBuffer()";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_ERROR, "%s Non Implemented function called", &v3, 0xCu);
  }

  return 2;
}

void PSBufferService::PSLocklessBufferSelectorWriter::~PSLocklessBufferSelectorWriter(PSBufferService::PSLocklessBufferSelectorWriter *this)
{
  PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(this);

  JUMPOUT(0x25F8CA500);
}

void PSBufferService::PSLocklessBufferSelectorReader::~PSLocklessBufferSelectorReader(PSBufferService::PSLocklessBufferSelectorReader *this)
{
  PSBufferService::PSLocklessBufferSelector::~PSLocklessBufferSelector(this);

  JUMPOUT(0x25F8CA500);
}

void *std::__shared_ptr_emplace<PSSharedSerialDataReader>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,BOOL const&,char const* const&,std::allocator<PSSharedSerialDataReader>,0>(void *a1, const char **a2, unsigned int *a3, BOOL *a4, const char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCAA8;
  PSSharedSerialDataReader::PSSharedSerialDataReader((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<PSSharedSerialDataReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCAA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorReader>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<PSSharedSerialData> &,char const* const&,unsigned int const&,char const* const&,std::allocator<PSBufferService::PSLocklessBufferSelectorReader>,0>(void *a1, void *a2, char **a3, unsigned int *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCAF8;
  PSBufferService::PSLocklessBufferSelector::PSLocklessBufferSelector((a1 + 3), a2, *a3, *a4, *a5);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorReader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCAF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void *std::__shared_ptr_emplace<PSSharedSerialDataWriter>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,BOOL &,char const* const&,std::allocator<PSSharedSerialDataWriter>,0>(void *a1, const char **a2, unsigned int *a3, BOOL *a4, const char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB48;
  PSSharedSerialDataWriter::PSSharedSerialDataWriter((a1 + 3), *a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<PSSharedSerialDataWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorWriter>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<PSSharedSerialData> &,char const* const&,unsigned int const&,char const* const&,std::allocator<PSBufferService::PSLocklessBufferSelectorWriter>,0>(void *a1, void *a2, char **a3, unsigned int *a4, char **a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB98;
  PSBufferService::PSLocklessBufferSelector::PSLocklessBufferSelector((a1 + 3), a2, *a3, *a4, *a5);
}

void std::__shared_ptr_emplace<PSBufferService::PSLocklessBufferSelectorWriter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CCB98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__shared_ptr_emplace<PSSharedSerialDataWriter>::__shared_ptr_emplace[abi:ne200100]<char const* const&,unsigned int const&,unsigned int const&,unsigned int &,int,unsigned int const&,unsigned int const&,char *,std::allocator<PSSharedSerialDataWriter>,0>(void *a1, const char **a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, char **a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CCB48;
  PSSharedSerialDataWriter::PSSharedSerialDataWriter((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8, *a9);
}

BOOL OUTLINED_FUNCTION_1_0()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

BOOL OUTLINED_FUNCTION_4()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
}

uint64_t PSBufferService::MemDescPool::InitializeFromRawBuffer(PSBufferService::MemDescPool *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  *this = a2;
  if (*(a2 + 36) > 0x6Eu)
  {
    return 2;
  }

  result = 0;
  *(this + 1) = a2 + 256;
  return result;
}

uint64_t PSBufferService::MemDescPool::InitializeIntoRawBuffer(PSBufferService::MemDescPool *this, unsigned __int8 *a2, unsigned int a3)
{
  v3 = 3;
  if (a2 && a3 <= 0x6E)
  {
    *(a2 + 36) = a3;
    v4 = a2 + 256;
    *this = a2;
    *(this + 1) = a2 + 256;
    if (a3)
    {
      _X4 = 0;
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = &v4[128 * v6];
        v9 = *(v8 + 2);
        do
        {
          _X7 = *(v8 + 3);
          __asm { CASPAL          X6, X7, X4, X5, [X11] }

          _ZF = _X6 == v9;
          v9 = _X6;
        }

        while (!_ZF);
        v4 = *(this + 1);
        v16 = &v4[128 * v6];
        *v16 = v6;
        *(v16 + 1) = -1;
        ++v6;
      }

      while (v6 != v7);
      a2 = *this;
    }

    v17 = *(a2 + 16);
    _X4 = -1;
    do
    {
      _X7 = *(a2 + 17);
      __asm { CASPAL          X6, X7, X4, X5, [X8] }

      _ZF = _X6 == v17;
      v17 = _X6;
    }

    while (!_ZF);
    return 0;
  }

  return v3;
}

uint64_t PSBufferService::MemDescPool::GetFreeMemDescFromPool(PSBufferService::MemDescPool *this, unsigned int *a2, unsigned __int128 *a3, unsigned int *a4)
{
  _X20 = 0;
  _X21 = 0;
  v38 = *MEMORY[0x277D85DE8];
  v6 = *(*this + 144);
  v7 = 1 << v6;
  _ZF = (v6 & 0x40) == 0;
  if ((v6 & 0x40) != 0)
  {
    v9 = 1 << v6;
  }

  else
  {
    v9 = 0;
  }

  if (!_ZF)
  {
    v7 = 0;
  }

  __asm { CASPAL          X20, X21, X20, X21, [X11] }

  do
  {
    if (a4)
    {
      v14 = *a4;
      if (*a4 >= *(*this + 144))
      {
        v29 = _ps_buffer_log;
        if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
        {
          v30 = 136315650;
          v31 = "GetFreeMemDescFromPool";
          v32 = 1024;
          v33 = 91;
          v34 = 1024;
          LODWORD(v35) = v14;
          v26 = "%s line=%d invalid inMemDescId=%u";
          v27 = v29;
          v28 = 24;
LABEL_30:
          _os_log_impl(&dword_25EBC5000, v27, OS_LOG_TYPE_ERROR, v26, &v30, v28);
        }

        return 2;
      }

      v15 = 1 << v14;
      if ((v14 & 0x40) != 0)
      {
        v16 = 1 << v14;
      }

      else
      {
        v16 = 0;
      }

      if ((v14 & 0x40) != 0)
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = _X20 & -_X20;
      v16 = 0;
    }

    if (v9 == v16 && v7 == v15)
    {
      v25 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v30 = 136315906;
        v31 = "GetFreeMemDescFromPool";
        v32 = 1024;
        v33 = 107;
        v34 = 2048;
        v35 = 0;
        v36 = 2048;
        v37 = _X20;
        v26 = "%s line=%d free_bitarray_curr=%llx %llx";
        v27 = v25;
        v28 = 38;
        goto LABEL_30;
      }

      return 2;
    }

    _X6 = _X20 & ~v15;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X6, X7, [X13] }

    _ZF = _X4 == _X20;
    _X20 = _X4;
  }

  while (!_ZF);
  v21 = v15 ^ 1 | v16;
  if (v21)
  {
    LODWORD(v21) = 0;
    do
    {
      *(&v22 + 1) = v16;
      *&v22 = v15;
      v15 = v22 >> 1;
      v23 = v15 ^ 1 | (v16 >> 1);
      v16 >>= 1;
      LODWORD(v21) = v21 + 1;
    }

    while (v23);
  }

  result = 0;
  *a2 = v21;
  *a3 = _X4;
  return result;
}

uint64_t PSBufferService::MemDescPool::ReadFreeMemDescFromPool(PSBufferService::MemDescPool *this, unsigned int *a2, unsigned __int128 *a3)
{
  _X20 = 0;
  _X21 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v5 = *(*this + 144);
  v6 = 1 << v5;
  if ((v5 & 0x40) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = 1 << v5;
  }

  if ((v5 & 0x40) == 0)
  {
    v6 = 0;
  }

  __asm { CASPAL          X20, X21, X20, X21, [X8] }

  v12 = _X20 & -_X20;
  v13 = 0;
  if (v6)
  {
    _ZF = 0;
  }

  else
  {
    _ZF = v7 == v12;
  }

  if (_ZF)
  {
    v15 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315906;
      v21 = "ReadFreeMemDescFromPool";
      v22 = 1024;
      v23 = 144;
      v24 = 2048;
      v25 = 0;
      v26 = 2048;
      v27 = _X20;
      _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_ERROR, "%s line=%d free_bitarray_curr=%llx %llx", &v20, 0x26u);
    }

    return 2;
  }

  else
  {
    v17 = v12 ^ 1;
    if (v12 != 1)
    {
      v17 = 0;
      do
      {
        *(&v18 + 1) = v13;
        *&v18 = v12;
        v12 = v18 >> 1;
        v19 = v12 ^ 1 | (v13 >> 1);
        v13 >>= 1;
        ++v17;
      }

      while (v19);
    }

    result = 0;
    *a2 = v17;
    *a3 = _X20;
  }

  return result;
}

uint64_t PSBufferService::MemDescPool::IsMemDescInFreePool(PSBufferService::MemDescPool *this, unsigned int a2)
{
  if (*(*this + 144) <= a2)
  {
    return 0;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v9 = _X2 >> a2;
  if ((a2 & 0x40) != 0)
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t PSBufferService::MemDescPool::AddMemDescToFreePool(PSBufferService::MemDescPool *this, unsigned int a2)
{
  if (*(*this + 144) <= a2)
  {
    return 3;
  }

  _X2 = 0;
  _X3 = 0;
  v4 = 1;
  if ((a2 & 0x40) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << a2;
  }

  __asm { CASPAL          X2, X3, X2, X3, [X11] }

  if ((_X2 & v5) == 0)
  {
    do
    {
      _X4 = _X2 | v5;
      _X7 = 0;
      __asm { CASPAL          X6, X7, X4, X5, [X8] }

      _ZF = _X6 == _X2;
      _X2 = _X6;
    }

    while (!_ZF);
    return 0;
  }

  return v4;
}

uint64_t PSBufferService::AtomicPoolAccountant::Initialize(uint64_t a1, unsigned int a2, int *a3)
{
  v3 = 3;
  if (a2 <= 0x6E)
  {
    v4 = a3[2] + a3[1] + *a3;
    if (v4 <= 255 && v4 <= a2)
    {
      *a1 = a2;
      if (a2 == 56)
      {
        v6 = -1;
      }

      else
      {
        v6 = ~(-1 << (a2 + 8));
      }

      if (a2 < 0x39)
      {
        v7 = 0;
      }

      else
      {
        v6 = -1;
        v7 = ~(-1 << (a2 - 56));
      }

      *(a1 + 16) = v6;
      *(a1 + 24) = v7;
      v8 = *a3;
      *(a1 + 32) = *a3;
      _X4 = *&v8 | 0xFFFFFFFFFFFFFF00;
      v10 = *(a1 + 48);
      do
      {
        _X11 = *(a1 + 56);
        __asm { CASPAL          X10, X11, X4, X5, [X8] }

        _ZF = _X10 == v10;
        v10 = _X10;
      }

      while (!_ZF);
      v17 = a3[1];
      *(a1 + 64) = v17;
      _X4 = *&v17 | 0xFFFFFFFFFFFFFF00;
      v19 = *(a1 + 80);
      do
      {
        _X11 = *(a1 + 88);
        __asm { CASPAL          X10, X11, X4, X5, [X8] }

        _ZF = _X10 == v19;
        v19 = _X10;
      }

      while (!_ZF);
      v22 = a3[2];
      *(a1 + 96) = v22;
      _X2 = *&v22 | 0xFFFFFFFFFFFFFF00;
      v24 = *(a1 + 112);
      do
      {
        _X7 = *(a1 + 120);
        __asm { CASPAL          X6, X7, X2, X3, [X8] }

        _ZF = _X6 == v24;
        v24 = _X6;
      }

      while (!_ZF);
      return 0;
    }
  }

  return v3;
}

uint64_t PSBufferService::AtomicPoolAccountant::DecrementPoolCount(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 1 || *a1 <= a3)
  {
    return 3;
  }

  _X4 = 0;
  _X5 = 0;
  v50 = 0;
  v49 = 0;
  v5 = 1 << (a3 + 8);
  if (((a3 + 8) & 0x40) != 0)
  {
    v5 = 0;
  }

  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v11 = 0;
  do
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X11] }

    _ZF = _X6 == v11;
    v11 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X4 = 0;
  while (1)
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X13] }

    v18 = v49;
    do
    {
      _X21 = 0;
      __asm { CASPAL          X20, X21, X6, X7, [X15] }

      _ZF = _X20 == v18;
      v18 = _X20;
    }

    while (!_ZF);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X19] }

    v23 = *a1 + 8;
    v24 = (v23 & 0x40) != 0 ? 0 : _X6 >> (*a1 + 8);
    v25 = v24 + 1;
    v26 = (v23 & 0x40) != 0 ? 0 : v25 << v23;
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X19] }

    if ((_X6 & v5) != 0)
    {
      if (a2)
      {
        return 1;
      }

      if (!_X6)
      {
        return 2;
      }

      v29 = v49;
      do
      {
        _X20 = v29 & ~v5;
        _X23 = 0;
        __asm { CASPAL          X22, X23, X20, X21, [X19] }

        _ZF = _X22 == v29;
        v29 = _X22;
      }

      while (!_ZF);
    }

    else
    {
      if (!a2)
      {
        return 1;
      }

      if (!_X6)
      {
        return 2;
      }

      v33 = v49;
      do
      {
        _X20 = v33 | v5;
        _X23 = 0;
        __asm { CASPAL          X22, X23, X20, X21, [X19] }

        _ZF = _X22 == v33;
        v33 = _X22;
      }

      while (!_ZF);
    }

    LOBYTE(v49) = v49 - 1;
    _X21 = 0;
    __asm { CASPAL          X20, X21, X2, X3, [X6] }

    _X20 = _X20 & *(a1 + 16) | v26;
    v40 = v49;
    do
    {
      _X23 = 0;
      __asm { CASPAL          X22, X23, X20, X21, [X6] }

      _ZF = _X22 == v40;
      v40 = _X22;
    }

    while (!_ZF);
    _X20 = 0;
    _X21 = 0;
    __asm { CASPAL          X20, X21, X20, X21, [X16] }

    _X7 = 0;
    __asm { CASPAL          X6, X7, X20, X21, [X10] }

    if (_X6 == v50)
    {
      break;
    }

    v50 = _X6;
  }

  return 0;
}

uint64_t PSBufferService::AtomicPoolAccountant::IncrementPoolCount(uint64_t a1)
{
  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v8 = v36;
  do
  {
    _X7 = v37;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == v8;
    v8 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X4 = 0;
  while (1)
  {
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X9] }

    v15 = v34;
    do
    {
      _X15 = v35;
      __asm { CASPAL          X14, X15, X6, X7, [X10] }

      _ZF = _X14 == v15;
      v15 = _X14;
    }

    while (!_ZF);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    v20 = *a1 + 8;
    v21 = _X6 >> (*a1 + 8);
    if ((v20 & 0x40) != 0)
    {
      v21 = 0;
    }

    _ZF = (v20 & 0x40) == 0;
    v22 = (v21 + 1) << v20;
    if (!_ZF)
    {
      v22 = 0;
    }

    v34 = _X6 & 0xFFFFFFFFFFFFFF00 | (_X6 + 1);
    _X7 = 0;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    _X6 = v22 | _X6 & *(a1 + 16);
    v26 = v34;
    do
    {
      _X15 = v35;
      __asm { CASPAL          X14, X15, X6, X7, [X10] }

      _ZF = _X14 == v26;
      v26 = _X14;
    }

    while (!_ZF);
    _X13 = 0;
    __asm { CASPAL          X12, X13, X2, X3, [X10] }

    _X7 = v37;
    __asm { CASPAL          X6, X7, X12, X13, [X8] }

    if (_X6 == v36)
    {
      break;
    }

    v36 = _X6;
  }

  return 0;
}

uint64_t PSBufferService::AtomicPoolAccountant::GetSetBit(unsigned int *a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 255;
  }

  _X4 = 0;
  _X5 = 0;
  v4 = 1 << (a2 + 8);
  if (((a2 + 8) & 0x40) != 0)
  {
    v4 = 0;
  }

  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v10 = v17;
  do
  {
    _X3 = v18;
    __asm { CASPAL          X2, X3, X4, X5, [X10] }

    _ZF = _X2 == v10;
    v10 = _X2;
  }

  while (!_ZF);
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X10,#0x10+var_10] }

  return (_X0 & v4) != 0;
}

void *PSBufferService::LocklessViewReaper::LocklessViewReaper(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

uint64_t PSBufferService::LocklessViewReaper::InitializeFromRawBuffer(PSBufferService::LocklessViewReaper *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  result = 0;
  *(this + 1) = a2 + 56320;
  *(this + 2) = a2;
  *this = a2 + 56324;
  return result;
}

uint64_t PSBufferService::LocklessViewReaper::InitializeIntoRawBuffer(PSBufferService::LocklessViewReaper *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  v2 = 0;
  v3 = 0;
  *(this + 2) = a2;
  do
  {
    v4 = 110;
    v5 = v2;
    do
    {
      *(*(this + 2) + v5) = 0;
      *(*(this + 2) + v5 + 2) = 1;
      v5 += 8;
      --v4;
    }

    while (v4);
    ++v3;
    v2 += 880;
  }

  while (v3 != 64);
  *this = a2 + 56324;
  *(this + 1) = a2 + 56320;
  atomic_store(0, (a2 + 56324));
  bzero(a2 + 56332, 0x2000uLL);
  return 0;
}

uint64_t PSBufferService::LocklessViewReaper::addReader(unint64_t **this, unsigned int a2, unsigned int *a3)
{
  v3 = 3;
  if (a2 <= 0x3FF && a3)
  {
    v4 = atomic_load(*this);
    while (1)
    {
      if (v4 == -1)
      {
        PSBufferService::LocklessViewReaper::addReader(&v10);
      }

      v5 = __clz(__rbit64(~v4));
      v6 = 1 << v5;
      if (((*this)[a2 + 1] & (1 << v5)) != 0)
      {
        break;
      }

      v7 = v4;
      atomic_compare_exchange_strong(*this, &v7, v6 | v4);
      *a3 = v5;
      v8 = v7 == v4;
      v4 = v7;
      if (v8)
      {
        v3 = 0;
        (*this)[a2 + 1] |= v6;
        return v3;
      }
    }

    return 2;
  }

  return v3;
}

uint64_t PSBufferService::LocklessViewReaper::removeReader(unint64_t **this, unsigned int a2, unsigned int a3)
{
  v3 = 3;
  if (a2 <= 0x3FF && a3 <= 0x3F)
  {
    v4 = atomic_load(*this);
    v5 = 1 << a3;
    v6 = ~(1 << a3);
    while ((v4 & v5) != 0 && ((*this)[a2 + 1] & v5) != 0)
    {
      v7 = v4;
      atomic_compare_exchange_strong(*this, &v7, v4 & v6);
      v8 = v7 == v4;
      v4 = v7;
      if (v8)
      {
        v3 = 0;
        (*this)[a2 + 1] &= v6;
        return v3;
      }
    }

    return 2;
  }

  return v3;
}

uint64_t PSBufferService::LocklessViewReaper::setState(uint64_t a1, unsigned int a2, __int16 a3, unsigned int a4, __int16 a5)
{
  if (a2 > 0x3F)
  {
    return 3;
  }

  v6 = atomic_load((*(a1 + 16) + 880 * a2 + 8 * a4));
  atomic_store(v6, &v17);
  v7 = atomic_load(&v17);
  atomic_store(v7, &v16);
  LOWORD(v16) = a3;
  WORD1(v16) = a5;
  v8 = (*(a1 + 16) + 880 * a2 + 8 * a4);
  v9 = atomic_load(&v16);
  v10 = v17;
  v11 = v17;
  atomic_compare_exchange_strong(v8, &v11, v9);
  if (v11 != v10)
  {
    do
    {
      v17 = v11;
      v12 = atomic_load(&v17);
      atomic_store(v12, &v16);
      LOWORD(v16) = a3;
      WORD1(v16) = a5;
      v13 = (*(a1 + 16) + 880 * a2 + 8 * a4);
      v14 = atomic_load(&v16);
      v15 = v17;
      v11 = v17;
      atomic_compare_exchange_strong(v13, &v11, v14);
    }

    while (v11 != v15);
  }

  return 0;
}

void *PSBufferService::AtomicDeque::AtomicDeque(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t PSBufferService::AtomicDeque::InitializeFromRawBuffer(PSBufferService::AtomicDeque *this, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 3;
  }

  result = 0;
  *this = a2;
  *(this + 1) = a2 + 128;
  return result;
}

uint64_t PSBufferService::AtomicDeque::InitializeIntoRawBuffer(PSBufferService::AtomicDeque *this, unsigned __int8 *a2, int a3)
{
  if (!a2)
  {
    return 3;
  }

  *(a2 + 8) = a3;
  *this = a2;
  *(this + 1) = a2 + 128;
  atomic_store(0x99u, a2 + 37);
  atomic_store(1u, a2 + 36);
  *(a2 + 32) = 0;
  atomic_store(1uLL, a2 + 17);
  *a2 = 0;
  v3 = (a3 - 1);
  v4 = *(this + 1);
  if (v3 < 2)
  {
    v7 = 2;
  }

  else
  {
    v5 = 0;
    v6 = (v4 + 148);
    do
    {
      atomic_store(v5, v6);
      atomic_store(v5 + 2, v6 - 1);
      *(v6 - 5) = v5 + 1;
      atomic_store(v5 + 2, (v6 - 3));
      v6 += 32;
      ++v5;
    }

    while (v3 - 1 != v5);
    v7 = v3 + 1;
  }

  v8 = 0;
  v9 = v4 + (v3 << 7);
  atomic_store(a3 - 2, (v9 + 20));
  atomic_store(0x99u, (v9 + 16));
  atomic_store(v7, (v9 + 8));
  *v9 = v3;
  *(*this + 16) = v3;
  v10 = *this;
  v11 = atomic_load((*(this + 1) + (v3 << 7) + 8));
  *(v10 + 24) = v11;
  v12 = *this;
  v13 = atomic_load((*(this + 1) + (v3 << 7) + 8));
  *(v12 + 8) = v13;
  atomic_store(0, (*this + 40));
  return v8;
}

uint64_t PSBufferService::AtomicDeque::Enqueue(PSBufferService::AtomicDeque *this, unsigned int a2, unint64_t *a3)
{
  if (*(*this + 32) <= a2)
  {
    return 3;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    return 2;
  }

  _X4 = 0;
  _X5 = 0;
  v6 = v3 + (a2 << 7);
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  v12 = v29;
  do
  {
    _X11 = v30;
    __asm { CASPAL          X10, X11, X4, X5, [X8] }

    _ZF = _X10 == v12;
    v12 = _X10;
  }

  while (!_ZF);
  _X14 = 0;
  atomic_store(_X4, (v6 + 16));
  atomic_store(0x99u, (v6 + 20));
  atomic_store(1uLL, (v6 + 8));
  atomic_load((v6 + 8));
  _X15 = 0;
  __asm { CASPAL          X14, X15, X14, X15, [X12,#0x20+var_20] }

  _X7 = v30;
  __asm { CASPAL          X6, X7, X14, X15, [X13] }

  if (_X6 != v29)
  {
    _X4 = 0;
    do
    {
      atomic_store(_X6, (v6 + 16));
      atomic_store(0x99u, (v6 + 20));
      atomic_store(v30 + 1, (v6 + 8));
      atomic_load((v6 + 8));
      _X15 = 0;
      __asm { CASPAL          X14, X15, X4, X5, [X12] }

      v23 = _X6;
      __asm { CASPAL          X6, X7, X14, X15, [X13] }
    }

    while (_X6 != v23);
  }

  v24 = 0;
  v25 = atomic_load((v6 + 8));
  *a3 = v25;
  v26 = *(this + 1);
  v27 = atomic_load((v6 + 16));
  atomic_store(*v6, (v26 + (v27 << 7) + 20));
  atomic_fetch_add((*this + 40), 1uLL);
  return v24;
}

uint64_t PSBufferService::AtomicDeque::Dequeue(PSBufferService::AtomicDeque *this, unsigned int *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*this || !*(this + 1))
  {
    return 2;
  }

  _X2 = 0;
  _X3 = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v9 = v21;
  do
  {
    _X7 = v22;
    __asm { CASPAL          X6, X7, X2, X3, [X8] }

    _ZF = _X6 == v9;
    v9 = _X6;
  }

  while (!_ZF);
  v12 = *(this + 1) + (_X2 << 7);
  v13 = atomic_load((v12 + 20));
  if (v13 == 153)
  {
LABEL_7:
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "PBSResult PSBufferService::AtomicDeque::Dequeue(uint32_t &)";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s Only one buffer left! Failed to get a buffer", buf, 0xCu);
    }

    return 2;
  }

  while (1)
  {
    v16 = *(this + 1) + (v13 << 7);
    atomic_load((v16 + 8));
    __asm { CASPAL          X2, X3, X2, X3, [X10] }

    _X5 = v22;
    __asm { CASPAL          X4, X5, X2, X3, [X11] }

    if (_X4 == v21)
    {
      break;
    }

    v21 = _X4;
    v12 = *(this + 1) + (_X4 << 7);
    v13 = atomic_load((v12 + 20));
    if (v13 == 153)
    {
      goto LABEL_7;
    }
  }

  result = 0;
  v20 = *v12;
  atomic_compare_exchange_strong((v16 + 16), &v20, 0x99u);
  atomic_store(0xFFFFFFFFFFFFFFFFLL, (v12 + 8));
  *a2 = *v12;
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdFromHead(PSBufferService::AtomicDeque *this, unsigned int *a2, unint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*this && *(this + 1))
  {
    _X4 = 0;
    _X5 = 0;
    __asm { CASPAL          X4, X5, X4, X5, [X8] }

    v10 = v15;
    do
    {
      _X11 = v16;
      __asm { CASPAL          X10, X11, X4, X5, [X8] }

      _ZF = _X10 == v10;
      v10 = _X10;
    }

    while (!_ZF);
    if (_X4 != 153)
    {
      result = 0;
      *a2 = _X4;
      *a3 = 0;
      return result;
    }

    v13 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdFromHead(uint32_t &, uint64_t &) const";
      _os_log_impl(&dword_25EBC5000, v13, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }
  }

  return 2;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(PSBufferService::AtomicDeque *this, unint64_t a2, int *a3, unint64_t *a4, unint64_t *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  if (!*this || !*(this + 1))
  {
    return 2;
  }

  _X6 = 0;
  _X7 = 0;
  __asm { CASPAL          X6, X7, X6, X7, [X8] }

  v11 = v27;
  do
  {
    _X13 = v28;
    __asm { CASPAL          X12, X13, X6, X7, [X10] }

    _ZF = _X12 == v11;
    v11 = _X12;
  }

  while (!_ZF);
  if (_X6 == 153)
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(uint64_t, int *, uint64_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }

    return 2;
  }

  v16 = atomic_load((*this + 40));
  if (v16 >= a2)
  {
    v17 = a2;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(this + 1) + (v27 << 7);
  v19 = atomic_load((v18 + 8));
  if (v17)
  {
    v20 = 0;
    v21 = v17 - 1;
    v22 = v19;
    while (1)
    {
      v17 = v20;
      v23 = atomic_load((v18 + 24));
      a3[v17] = v23;
      v24 = atomic_load((v18 + 8));
      a4[v17] = v24;
      _ZF = v24 != v22 || v24 == -1;
      if (_ZF)
      {
        break;
      }

      v26 = atomic_load((v18 + 16));
      if (v26 != 153)
      {
        v18 = *(this + 1) + (v26 << 7);
        v22 = atomic_load((v18 + 8));
        if (v21 != v17)
        {
          v20 = v17 + 1;
          if (v22 < v19)
          {
            continue;
          }
        }
      }

      ++v17;
      break;
    }
  }

  result = 0;
  *a5 = v17;
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast(PSBufferService::AtomicDeque *this, unint64_t a2, unint64_t a3, int *a4, unint64_t *a5, unint64_t *a6)
{
  v31 = *MEMORY[0x277D85DE8];
  *a6 = 0;
  if (!*this || !*(this + 1))
  {
    return 2;
  }

  _X6 = 0;
  _X7 = 0;
  __asm { CASPAL          X6, X7, X6, X7, [X8] }

  v11 = v27;
  do
  {
    _X13 = v28;
    __asm { CASPAL          X12, X13, X6, X7, [X10] }

    _ZF = _X12 == v11;
    v11 = _X12;
  }

  while (!_ZF);
  if (_X6 == 153)
  {
    v14 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdsFromHeadSinceLast(uint64_t, uint64_t, int *, uint64_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v14, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }

    return 2;
  }

  if (!a3)
  {
    return PSBufferService::AtomicDeque::GetNodeIdsFromHeadLastN(this, a2, a4, a5, a6);
  }

  v16 = *(this + 1) + (_X6 << 7);
  v17 = atomic_load((v16 + 8));
  if (v17 != 0xFFFFFFFF && (v17 > a3 ? (v18 = v17 > *(*this + 32)) : (v18 = 0), v18))
  {
    v19 = 0;
    v20 = v17;
    while (1)
    {
      v21 = v19;
      v22 = atomic_load((v16 + 24));
      a4[v21] = v22;
      v23 = atomic_load((v16 + 8));
      a5[v21] = v23;
      _ZF = v23 != v20 || v23 == -1;
      if (_ZF)
      {
        break;
      }

      v25 = atomic_load((v16 + 16));
      if (v25 != 153)
      {
        v16 = *(this + 1) + (v25 << 7);
        v20 = atomic_load((v16 + 8));
        if (v21 + 1 < a2)
        {
          v19 = v21 + 1;
          if (v20 > a3 && v20 < v17)
          {
            continue;
          }
        }
      }

      ++v21;
      break;
    }
  }

  else
  {
    v21 = 0;
  }

  result = 0;
  *a6 = v21;
  return result;
}

uint64_t PSBufferService::AtomicDeque::GetNodeIdFromTail(PSBufferService::AtomicDeque *this, unsigned int *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*this && *(this + 1))
  {
    _X2 = 0;
    _X3 = 0;
    __asm { CASPAL          X2, X3, X2, X3, [X8] }

    v9 = v14;
    do
    {
      _X7 = v15;
      __asm { CASPAL          X6, X7, X2, X3, [X8] }

      _ZF = _X6 == v9;
      v9 = _X6;
    }

    while (!_ZF);
    if (_X2 != 153)
    {
      result = 0;
      *a2 = _X2;
      return result;
    }

    v12 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "PBSResult PSBufferService::AtomicDeque::GetNodeIdFromTail(uint32_t &)";
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s No Nodes left", buf, 0xCu);
    }
  }

  return 2;
}

uint64_t PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(PSBufferService::AtomicDeque *this, unint64_t a2, unsigned int *a3, unint64_t *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (!*this || !*(this + 1))
  {
    return 2;
  }

  v5 = *(*this + 32);
  if (v5 < a2)
  {
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "PBSResult PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(uint64_t, uint32_t *, uint64_t *) const";
      *&buf[12] = 2048;
      *&buf[14] = a2;
      v28 = 1024;
      v29 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s Invalid params. lastNCount=%llu deque_->numNodes=%d", buf, 0x1Cu);
    }

    return 3;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X8] }

  v15 = *buf;
  do
  {
    _X11 = *&buf[8];
    __asm { CASPAL          X10, X11, X4, X5, [X8] }

    _ZF = _X10 == v15;
    v15 = _X10;
  }

  while (!_ZF);
  if (_X4 == 153)
  {
    v18 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v25 = 136315138;
      v26 = "PBSResult PSBufferService::AtomicDeque::GetMemDescIdsFromTailLastN(uint64_t, uint32_t *, uint64_t *) const";
      _os_log_impl(&dword_25EBC5000, v18, OS_LOG_TYPE_ERROR, "%s No Nodes left", &v25, 0xCu);
    }

    return 2;
  }

  v19 = 0;
  if (a2)
  {
    v20 = _X4;
    v21 = a2 - 1;
    do
    {
      v22 = *(this + 1) + (v20 << 7);
      v23 = atomic_load((v22 + 8));
      if (v23 != 0xFFFFFFFF && v23 > *(*this + 32))
      {
        v24 = atomic_load((v22 + 24));
        a3[v19++] = v24;
      }

      v20 = atomic_load((v22 + 20));
      if (!v21)
      {
        break;
      }

      --v21;
    }

    while (v20 != 153);
  }

  result = 0;
  *a4 = v19;
  return result;
}

BOOL PSBufferService::AtomicDeque::EverEnqueued(PSBufferService::AtomicDeque *this)
{
  if (!*this || !*(this + 1))
  {
    return 0;
  }

  v1 = atomic_load((*this + 40));
  return v1 != 0;
}

uint64_t PSBufferService::AtomicDeque::FindMissingNodeInQueue(PSBufferService::AtomicDeque *this, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*this)
  {
    return 2;
  }

  if (!*(this + 1))
  {
    return 2;
  }

  _X2 = 0;
  _X3 = 0;
  v8 = (*(*this + 32) + *(*this + 32) * *(*this + 32)) >> 1;
  __asm { CASPAL          X2, X3, X2, X3, [X9] }

  do
  {
    _X7 = a6;
    __asm { CASPAL          X6, X7, X2, X3, [X9] }

    _ZF = _X6 == a5;
    a5 = _X6;
  }

  while (!_ZF);
  for (i = (*(this + 1) + (_X2 << 7)); ; i = (v18 + (v19 << 7)))
  {
    v17 = atomic_load(i + 4);
    if (v17 == 153)
    {
      break;
    }

    v8 += ~*i;
    v18 = *(this + 1);
    v19 = atomic_load(i + 4);
  }

  v20 = v8 + ~*i;
  if (!v20)
  {
    return 2;
  }

  result = 0;
  *a2 = v20 - 1;
  return result;
}

uint64_t PSBufferService::AtomicDeque::AddNodeToTail(PSBufferService::AtomicDeque *this, unsigned int a2)
{
  if (!*this)
  {
    return 2;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 2;
  }

  _X4 = 0;
  _X5 = 0;
  __asm { CASPAL          X4, X5, X4, X5, [X10] }

  v10 = v22;
  do
  {
    _X7 = v23;
    __asm { CASPAL          X6, X7, X4, X5, [X10] }

    _ZF = _X6 == v10;
    v10 = _X6;
  }

  while (!_ZF);
  _X2 = 0;
  _X3 = 0;
  v15 = (*(this + 1) + (_X4 << 7));
  atomic_store(a2, v15 + 4);
  atomic_store(*v15, (v2 + (a2 << 7) + 20));
  __asm { CASPAL          X2, X3, X2, X3, [X8,#0x20+var_20] }

  v17 = *this;
  v18 = *(*this + 16);
  do
  {
    _X5 = *(v17 + 24);
    __asm { CASPAL          X4, X5, X2, X3, [X8] }

    _ZF = _X4 == v18;
    v18 = _X4;
  }

  while (!_ZF);
  return 0;
}

void PSRingSwappableView::~PSRingSwappableView(PSRingSwappableView *this)
{
  *this = &unk_2870CCBE8;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSRingSwappableView::~PSRingSwappableView - Bye!\n", v3, 2u);
  }

  PSSharedResource::~PSSharedResource(this);
}

uint64_t PSRingSwappableView::getMemdescForOwner(PSRingSwappableView *this, __int16 a2)
{
  v2 = *(this + 70);
  if (v2[153])
  {
    v3 = v2[154];
    v4 = *(this + 73);
    v5 = (v2[152] + 1) % v3;
    while (1)
    {
      result = v4 + 336 * v5;
      if (!*(result + 6))
      {
        break;
      }

      v5 = (v5 + 1) % v3;
      if (v5 == (v2[152] + 1) % v3)
      {
        PSRingSwappableView::getMemdescForOwner();
      }
    }

    --v2[153];
    *(result + 6) = 1;
    *(result + 4) = a2;
    v2[152] = v5;
  }

  else
  {
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "OUT OF VIEWS!\n", v8, 2u);
    }

    return 0;
  }

  return result;
}

uint64_t PSRingSwappableViewReader::_release_view(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 4) = 0xFFFF;
  v3 = *(a3 + 2) + 1;
  *(a3 + 2) = v3;
  if (*(a3 + 4) < v3)
  {
    PSRingSwappableViewReader::_release_view();
  }

  return 0;
}

uint64_t PSRingSwappableViewReader::initialize(PSSharedSerialData **this)
{
  v27 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(this[75]);
  this[70] = Data;
  v3 = *(Data + 260);
  *(this + 138) = v3;
  this[72] = (Data + 312);
  this[73] = (Data + 312 + 12 * v3);
  v4 = *(Data + 308) - v3;
  *(this + 139) = v4;
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(Data + 306);
    *buf = 67109632;
    v22 = v3;
    v23 = 1024;
    v24 = v4;
    v25 = 1024;
    v26 = v6;
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader mmaped: shared memory numBuffers (%d) numViews (%d) freeViews (%d)\n", buf, 0x14u);
    v3 = *(this + 138);
  }

  if (v3)
  {
    v7 = 0;
    v8 = 0;
    v9 = _ps_buffer_log;
    do
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = (this[72] + v7);
        v11 = *v10;
        v12 = v10[1];
        LODWORD(v10) = v10[2];
        *buf = 67109632;
        v22 = v11;
        v23 = 1024;
        v24 = v12;
        v25 = 1024;
        v26 = v10;
        _os_log_impl(&dword_25EBC5000, v9, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader: memdec_id (%d) view_memdec_id (%d) id (%d) \n", buf, 0x14u);
        v9 = _ps_buffer_log;
        v3 = *(this + 138);
      }

      ++v8;
      v7 += 12;
    }

    while (v8 < v3);
  }

  v13 = *(this + 139) + v3;
  if (v13)
  {
    v14 = 0;
    v15 = _ps_buffer_log;
    v16 = 336 * v13;
    do
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = (this[73] + v14);
        v18 = v17[1];
        v19 = *v17;
        LODWORD(v17) = v17[2];
        *buf = 67109632;
        v22 = v18;
        v23 = 1024;
        v24 = v19;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_25EBC5000, v15, OS_LOG_TYPE_DEBUG, "PSSwappableViewReader: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v15 = _ps_buffer_log;
      }

      v14 += 336;
    }

    while (v16 != v14);
  }

  return 0;
}

__int16 *PSRingSwappableViewReader::_getResourcewithViewIndex(PSRingSwappableViewReader *this, int *a2, int a3)
{
  if (a3 << 16 != -65536)
  {
    v7 = (*(this + 72) + 12 * a3);
    if (v7[1] == -1)
    {
      result = PSRingSwappableView::getMemdescForOwner(this, a3);
      if (!result)
      {
        LODWORD(v5) = -2;
        goto LABEL_19;
      }

      v9 = *v7;
      if (v9 == -1)
      {
        PSRingSwappableViewReader::_getResourcewithViewIndex();
      }

      v7[1] = v9;
      *v7 = *result;
      *(v7 + 2) &= ~1u;
      result = (*(this + 73) + 336 * v9);
      if ((*(this + 592) & 1) == 0)
      {
        v8 = result + 8;
        v5 = 20;
        while (*v8)
        {
          v8 += 8;
          if (!--v5)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      result = (*(this + 73) + 336 * v7[1]);
      ++result[3];
      if ((*(this + 592) & 1) == 0)
      {
        v8 = result + 8;
        v5 = 20;
        while (*v8)
        {
          v8 += 8;
          if (!--v5)
          {
            goto LABEL_19;
          }
        }

LABEL_18:
        LODWORD(v5) = 0;
        *v8 = *(this + 71);
        *(v8 + 2) = *(this + 136);
        goto LABEL_19;
      }
    }

    LODWORD(v5) = 0;
    goto LABEL_19;
  }

  result = 0;
  LODWORD(v5) = -1;
LABEL_19:
  *a2 = v5;
  return result;
}

__int16 *PSRingSwappableViewReader::_getResourceLastN(PSRingSwappableViewReader *this, int *a2, __int16 **a3, unint64_t a4, uint64_t *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = *(this + 70);
  v7 = *(v6 + 260);
  v8 = (v7 - 1);
  if (v8 < a4)
  {
    v33 = 0;
    v22 = a4;
    Key = PSSharedResource::getKey(this);
    v24 = v22;
    asprintf(&v33, "requested_buffer_count=%llu is greater than depth-1=%d for key=%s", v22, v8, Key);
    v25 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v26 = *(*(this + 70) + 260) - 1;
      v27 = PSSharedResource::getKey(this);
      *buf = 136316162;
      v35 = "_getResourceLastN";
      v36 = 1024;
      v37 = 168;
      v38 = 2048;
      v39 = v24;
      v40 = 1024;
      v41 = v26;
      v42 = 2080;
      v43 = v27;
      _os_log_impl(&dword_25EBC5000, v25, OS_LOG_TYPE_FAULT, "%s:%d requested_buffer_count=%llu is greater than depth-1=%d for key=%s", buf, 0x2Cu);
    }

    v28 = OSLogFlushBuffers();
    if (v28)
    {
      v29 = v28;
      v30 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "_getResourceLastN";
        v36 = 1024;
        v37 = v29;
        _os_log_impl(&dword_25EBC5000, v30, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v31 = abort_with_reason();
    return PSRingSwappableViewReader::getResourcewithBufferID(v31, v32);
  }

  else
  {
    if (*(v6 + 296) < a4)
    {
      a4 = *(v6 + 296);
    }

    v12 = *(v6 + 280);
    if (*(v6 + 280) == 0xFFFF)
    {
      v13 = *(v6 + 280);
    }

    else
    {
      v14 = v7 + v12 - (a4 - 1);
      if (v12 >= a4 - 1)
      {
        LOWORD(v13) = v12 - (a4 - 1);
      }

      else
      {
        LOWORD(v13) = v14;
      }
    }

    v15 = v12;
    result = PSRingSwappableViewReader::_getResourcewithViewIndex(this, a2, v12);
    *a3 = result;
    if (result)
    {
      v17 = a3 + 1;
      v18 = 0x100000000;
      do
      {
        v19 = v18;
        if (v13 == v15)
        {
          break;
        }

        v20 = v12 ? v12 : *(*(this + 70) + 260);
        v12 = (v20 - 1) % *(*(this + 70) + 260);
        v15 = v12;
        result = PSRingSwappableViewReader::_getResourcewithViewIndex(this, a2, v12);
        *v17++ = result;
        v18 = v19 + 0x100000000;
      }

      while (result);
      v21 = v19 >> 32;
    }

    else
    {
      v21 = 0;
    }

    *a5 = v21;
  }

  return result;
}

uint64_t PSRingSwappableViewReader::getResourcewithBufferID(PSRingSwappableViewReader *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewReader::getResourcewithBufferID(&v13);
  }

  v2 = *(this + 73) + 336 * a2;
  v3 = *(v2 + 6);
  if (!v3)
  {
    return 4294967293;
  }

  v4 = (*(this + 72) + 12 * *(v2 + 4));
  v5 = *v4;
  if (v5 == -1)
  {
    return 4294967293;
  }

  v6 = v4[1];
  if (v5 == a2)
  {
    if (v6 != 0xFFFF)
    {
      return 4294967293;
    }

    v6 = 0xFFFF;
  }

  else if (v4[1] != a2)
  {
    *(v2 + 6) = v3 + 1;
    if (*(this + 592))
    {
      return 0;
    }

    v9 = v2 + 16;
    v10 = 20;
    while (1)
    {
      v7 = *v9;
      if (!*v9)
      {
        break;
      }

      v7 = 0;
      v9 += 16;
      if (!--v10)
      {
        return v7;
      }
    }

LABEL_28:
    *v9 = *(this + 71);
    *(v9 + 8) = *(this + 136);
    return v7;
  }

  if (a2 == v6)
  {
    *(v2 + 6) = v3 + 1;
    if (*(this + 592))
    {
      return 0;
    }

    v9 = v2 + 16;
    v12 = 20;
    while (1)
    {
      v7 = *v9;
      if (!*v9)
      {
        break;
      }

      v7 = 0;
      v9 += 16;
      if (!--v12)
      {
        return v7;
      }
    }

    goto LABEL_28;
  }

  if (v5 != a2 || v6 != 0xFFFF)
  {
    PSRingSwappableViewReader::getResourcewithBufferID(&v13);
  }

  LODWORD(v13) = 0;
  PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v13, v4[2]);
  return v13;
}

uint64_t PSRingSwappableViewReader::getResource(PSRingSwappableViewReader *this, unsigned int *a2)
{
  v5 = 0;
  ResourcewithViewIndex = PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v5, *(*(this + 70) + 280));
  if (!ResourcewithViewIndex)
  {
    return v5;
  }

  *a2 = ResourcewithViewIndex[3];
  return ResourcewithViewIndex[1];
}

uint64_t PSRingSwappableViewReader::getResource(PSRingSwappableViewReader *this)
{
  v3 = 0;
  ResourcewithViewIndex = PSRingSwappableViewReader::_getResourcewithViewIndex(this, &v3, *(*(this + 70) + 280));
  if (ResourcewithViewIndex)
  {
    return ResourcewithViewIndex[1];
  }

  else
  {
    return v3;
  }
}

__int16 *PSRingSwappableViewReader::getResourceLastN(PSRingSwappableViewReader *this, int *a2, unint64_t a3, unsigned int *a4, unint64_t *a5, unint64_t *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = *(this + 138);
  if (v8 < a3)
  {
    v28 = 0;
    asprintf(&v28, "Unsupported last N count %llu. Only upto %d supported", a3, v8);
    v19 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
    {
      v20 = *(this + 138);
      *buf = 136315906;
      v30 = "getResourceLastN";
      v31 = 1024;
      v32 = 324;
      v33 = 2048;
      v34 = a3;
      v35 = 1024;
      v36 = v20;
      _os_log_impl(&dword_25EBC5000, v19, OS_LOG_TYPE_FAULT, "%s:%d Unsupported last N count %llu. Only upto %d supported", buf, 0x22u);
    }

    v21 = OSLogFlushBuffers();
    if (v21)
    {
      v22 = v21;
      v23 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "getResourceLastN";
        v31 = 1024;
        v32 = v22;
        _os_log_impl(&dword_25EBC5000, v23, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    v24 = abort_with_reason();
    return PSRingSwappableViewReader::relinquishResource(v24, v25, v26);
  }

  else
  {
    MEMORY[0x28223BE20](this);
    v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v12 >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = v12;
    }

    bzero(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    result = PSRingSwappableViewReader::_getResourceLastN(this, buf, v13, a3, a6);
    v16 = *a6;
    if (*a6)
    {
      v17 = a4;
      do
      {
        v18 = *v13;
        if (!*v13)
        {
          break;
        }

        if (a4)
        {
          *v17 = v18[3];
        }

        *a2++ = v18[1];
        ++v17;
        ++v13;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

uint64_t PSRingSwappableViewReader::relinquishResource(PSRingSwappableViewReader *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewReader::relinquishResource(&v15);
  }

  v3 = (*(this + 73) + 336 * a2);
  if (!v3[3])
  {
    PSRingSwappableViewReader::relinquishResource();
  }

  v5 = v3[3] - 1;
  v3[3] = v5;
  if (*(this + 592))
  {
LABEL_7:
    if (!a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = v3 + 8;
  v7 = 20;
  while (*v6 != *(this + 71))
  {
    v6 += 8;
    if (!--v7)
    {
      goto LABEL_7;
    }
  }

  *v6 = 0;
  *(v6 + 2) = 0;
  if (a3)
  {
LABEL_8:
    *a3 = v5;
    v5 = v3[3];
  }

LABEL_9:
  if (v5)
  {
    goto LABEL_18;
  }

  if (v3[2] == -1)
  {
    PSRingSwappableViewReader::relinquishResource();
  }

  v8 = (*(this + 72) + 12 * v3[2]);
  v9 = v8[1];
  if (v9 != *v3)
  {
    PSRingSwappableViewReader::_release_view(this, v3, *(this + 70) + 304);
LABEL_18:
    if (!a3)
    {
      return 0;
    }

LABEL_19:
    *a3 = v3[3];
    return 0;
  }

  v10 = *(v8 + 2);
  if ((v10 & 1) != 0 || (v11 = *v8, v11 == -1))
  {
    v13 = *(this + 70) + 304;
    v12 = v3;
  }

  else
  {
    *v8 = v9;
    *(v8 + 2) = v10 | 1;
    v3[3] = 1;
    v12 = *(this + 73) + 336 * v11;
    v13 = *(this + 70) + 304;
  }

  PSRingSwappableViewReader::_release_view(this, v12, v13);
  v8[1] = -1;
  if (a3)
  {
    goto LABEL_19;
  }

  return 0;
}

PSRingSwappableViewReader *PSRingSwappableViewReader::relinquishResourceWithoutWriteIndexIncrement(PSRingSwappableViewReader *this, int a2, unsigned __int16 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s: %s Cannot relinquish resource and increment the write index for a reader. Something is wrong.\n", "PSRingSwappableViewReader", "relinquishResourceWithoutWriteIndexIncrement");
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "relinquishResourceWithoutWriteIndexIncrement";
    v12 = 1024;
    v13 = 423;
    v14 = 2080;
    v15 = "PSRingSwappableViewReader";
    v16 = 2080;
    v17 = "relinquishResourceWithoutWriteIndexIncrement";
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: %s Cannot relinquish resource and increment the write index for a reader. Something is wrong.\n", buf, 0x26u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "relinquishResourceWithoutWriteIndexIncrement";
      v12 = 1024;
      v13 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  return PSRingSwappableViewReader::incrementWriteIndex(v7);
}

void PSRingSwappableViewReader::incrementWriteIndex(PSRingSwappableViewReader *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v9 = 0;
  asprintf(&v9, "%s: %s Cannot increment the write index for a reader. Something is wrong.\n", "PSRingSwappableViewReader", "incrementWriteIndex");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "incrementWriteIndex";
    v12 = 1024;
    v13 = 428;
    v14 = 2080;
    v15 = "PSRingSwappableViewReader";
    v16 = 2080;
    v17 = "incrementWriteIndex";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s: %s Cannot increment the write index for a reader. Something is wrong.\n", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "incrementWriteIndex";
      v12 = 1024;
      v13 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  PSRingSwappableViewReader::PSRingSwappableViewReader(v5, v6, v7, v8);
}

uint64_t PSRingSwappableViewReader::relinquishAllPreviouslyHeldViews(uint64_t this)
{
  v6 = 0;
  if ((*(this + 592) & 1) == 0)
  {
    v1 = this;
    if (*(this + 552) + *(this + 556))
    {
      v2 = 0;
      v3 = 24;
      do
      {
        v4 = (*(v1 + 584) + v3);
        v5 = 20;
        do
        {
          if (*(v4 - 1) == *(v1 + 568) && *v4 != *(v1 + 544))
          {
            this = (*(*v1 + 80))(v1, v2, &v6);
          }

          v4 += 4;
          --v5;
        }

        while (v5);
        ++v2;
        v3 += 336;
      }

      while (v2 < (*(v1 + 552) + *(v1 + 556)));
    }
  }

  return this;
}

void PSRingSwappableViewReader::~PSRingSwappableViewReader(PSRingSwappableViewReader *this)
{
  *this = &unk_2870CCCB0;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, " PSRingSwappableViewReader::~PSRingSwappableViewReader - Bye!", v4, 2u);
  }

  v3 = *(this + 75);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSRingSwappableView::~PSRingSwappableView(this);
}

{
  PSRingSwappableViewReader::~PSRingSwappableViewReader(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_3_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

void OUTLINED_FUNCTION_4_0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x2Cu);
}

uint64_t std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(float *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = *(a1 + 2);
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void PSRingSwappableViewWriter::setupMemdesc(PSRingSwappableViewWriter *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = *(this + 70);
  v1 = *(this + 138);
  v2 = *(this + 139);
  v3 = (v2 + v1);
  if (v2 + v1)
  {
    v5 = 0;
    v6 = _ps_buffer_log;
    v7 = 2;
    do
    {
      v8 = (*(this + 73) + v7);
      *v8 = v5;
      *(v8 - 1) = v5;
      v8[1] = -1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v11 = v5;
        v12 = 1024;
        v13 = v5;
        v14 = 1024;
        v15 = -1;
        _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v6 = _ps_buffer_log;
      }

      ++v5;
      v7 += 336;
    }

    while (v3 != v5);
  }

  v9[152] = -1;
  v9[154] = v3;
  v9[153] = v3;
}

uint64_t PSRingSwappableViewWriter::initialize(PSSharedSerialData **this)
{
  v20 = *MEMORY[0x277D85DE8];
  Data = PSSharedSerialData::getData(this[74]);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *v17 = Data;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: initialize [CANARY: %s]\n", buf, 0xCu);
  }

  this[70] = Data;
  Data[65] = *(this + 138);
  *(this[70] + 70) = -1;
  *(this[70] + 37) = 0;
  this[72] = (Data + 78);
  this[73] = &Data[3 * *(this + 138) + 78];
  PSRingSwappableViewWriter::setupMemdesc(this);
  LODWORD(v4) = *(this + 138);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      MemdescForOwner = PSRingSwappableView::getMemdescForOwner(this, v6);
      if (!MemdescForOwner)
      {
        PSRingSwappableViewWriter::initialize();
      }

      v8 = (this[72] + v5);
      *v8 = *MemdescForOwner;
      v8[1] = -1;
      v8[2] = v6++;
      v4 = *(this + 138);
      v5 += 12;
    }

    while (v6 < v4);
  }

  v9 = *(this + 139);
  v10 = (v9 + v4);
  if (v9 + v4)
  {
    v11 = 0;
    v12 = _ps_buffer_log;
    v13 = 2;
    do
    {
      v14 = (this[73] + v13);
      *v14 = v11;
      *(v14 - 1) = v11;
      v14[1] = -1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v17 = v11;
        *&v17[4] = 1024;
        *&v17[6] = v11;
        v18 = 1024;
        v19 = -1;
        _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_DEBUG, "PSSwappableViewWriter: view buff_id (%d) view id (%d) view owner id (%d) \n", buf, 0x14u);
        v12 = _ps_buffer_log;
      }

      ++v11;
      v13 += 336;
    }

    while (v10 != v11);
  }

  return 0;
}

uint64_t PSRingSwappableViewWriter::getResource(PSRingSwappableViewWriter *this)
{
  v1 = (*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260);
  v2 = (*(this + 72) + 12 * v1);
  if (*v2 == -1)
  {
    PSRingSwappableViewWriter::getResource();
  }

  v3 = (*(this + 73) + 336 * *v2);
  v4 = v3[1];
  if (v4 == -1 || v3[3] != 1)
  {
    PSRingSwappableViewWriter::getResource(this);
  }

  v3[2] = v1;
  *v2 = -1;
  return v4;
}

uint64_t PSRingSwappableViewWriter::relinquishResource(PSRingSwappableViewWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewWriter::relinquishResource(&v7);
LABEL_6:
    PSRingSwappableViewWriter::relinquishResource();
  }

  v3 = (*(this + 73) + 336 * a2);
  v4 = v3[2];
  v5 = (*(this + 72) + 12 * v3[2]);
  if (*v5 != -1)
  {
    goto LABEL_6;
  }

  if (v4 != ((*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260)))
  {
    PSRingSwappableViewWriter::relinquishResource();
  }

  *v5 = *v3;
  v5[1] = -1;
  *(v5 + 2) |= 1u;
  *(*(this + 70) + 280) = v4;
  ++*(*(this + 70) + 296);
  *a3 = 0;
  return 0;
}

uint64_t PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(PSRingSwappableViewWriter *this, unsigned int a2, unsigned __int16 *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(&v6);
LABEL_6:
    PSRingSwappableViewWriter::relinquishResource();
  }

  v3 = (*(this + 73) + 336 * a2);
  v4 = (*(this + 72) + 12 * v3[2]);
  if (*v4 != -1)
  {
    goto LABEL_6;
  }

  if (v3[2] != ((*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260)))
  {
    PSRingSwappableViewWriter::relinquishResource();
  }

  *v4 = *v3;
  v4[1] = -1;
  *(v4 + 2) |= 1u;
  *a3 = 0;
  return 0;
}

uint64_t PSRingSwappableViewWriter::incrementWriteIndex(PSRingSwappableViewWriter *this)
{
  *(*(this + 70) + 280) = (*(*(this + 70) + 280) + 1) % *(*(this + 70) + 260);
  ++*(*(this + 70) + 296);
  return 0;
}

void PSRingSwappableViewWriter::~PSRingSwappableViewWriter(PSRingSwappableViewWriter *this)
{
  *this = &unk_2870CCD78;
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEBUG, "PSRingSwappableViewWriter::~PSRingSwappableViewWriter - Bye!\n", v4, 2u);
  }

  v3 = *(this + 74);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PSRingSwappableView::~PSRingSwappableView(this);
}

{
  PSRingSwappableViewWriter::~PSRingSwappableViewWriter(this);

  JUMPOUT(0x25F8CA500);
}

void OUTLINED_FUNCTION_6_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

PSAtomicWnRnArray *ps_buffer_destroy_atomic_array(PSAtomicWnRnArray *result)
{
  if (result)
  {
    PSAtomicWnRnArray::~PSAtomicWnRnArray(result);

    JUMPOUT(0x25F8CA500);
  }

  return result;
}

uint64_t ps_buffer_atomic_array_create_in_buffer(PSAtomicWnRnArray *a1, unsigned int a2, char *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::createInBuffer(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_init_from_buffer(PSAtomicWnRnArray *a1, _DWORD *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::initFromBuffer(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_write_idx(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireWriteIdx(a1, a2, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_write_idx_get_updated_mask(PSAtomicWnRnArray *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireWriteIdx(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_clear_write_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::clearWriteIdx(a1, a2, 0);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_clear_write_idx_get_updated_mask(PSAtomicWnRnArray *a1, unint64_t a2, unint64_t *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::clearWriteIdx(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_relinquish_write_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::relinquishWriteIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_acquire_read_idx(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::acquireReadIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_relinquish_read_idx(PSAtomicWnRnArray *a1, unint64_t a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::relinquishReadIdx(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_handle_death(PSAtomicWnRnArray *a1, int a2)
{
  if (!a1)
  {
    return 3758097090;
  }

  PSAtomicWnRnArray::handleDeath(a1, a2, 0, 0);
  return 0;
}

uint64_t ps_buffer_atomic_array_handle_death_get_updated_mask(PSAtomicWnRnArray *a1, int a2, unint64_t *a3)
{
  v3 = 3758097090;
  if (a1)
  {
    v5 = 0;
    PSAtomicWnRnArray::handleDeath(a1, a2, &v5, a3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return 3758097101;
    }
  }

  return v3;
}

PSAtomicWnRnArray *ps_buffer_atomic_array_get_arr_size(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getArrSize(result);
  }

  return result;
}

PSAtomicWnRnArray *ps_buffer_atomic_array_get_res_mask_size(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getResMaskSize(result);
  }

  return result;
}

PSAtomicWnRnArray *ps_buffer_atomic_array_get_reservation_id(PSAtomicWnRnArray *result)
{
  if (result)
  {
    return PSAtomicWnRnArray::getReservationID(result);
  }

  return result;
}

uint64_t ps_buffer_atomic_array_read_reservation_id(PSAtomicWnRnArray *a1, unint64_t a2, unsigned int *a3)
{
  if (a1)
  {
    return PSAtomicWnRnArray::readReservationID(a1, a2, a3);
  }

  else
  {
    return 3758097090;
  }
}

uint64_t ps_buffer_atomic_array_get_reservation_mask(PSAtomicWnRnArray *a1, unint64_t *a2)
{
  if (a1)
  {
    return PSAtomicWnRnArray::getReservationMask(a1, a2);
  }

  else
  {
    return 3758097090;
  }
}

void PSAtomicWnRnArray::PSAtomicWnRnArray(PSAtomicWnRnArray *this, int a2)
{
  *(this + 69) = a2;
  *(this + 280) = 0;
  operator new();
}

void PSAtomicWnRnArray::~PSAtomicWnRnArray(PSAtomicWnRnArray *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x25F8CA500](v1, 0x80C40803F642BLL);
  }
}

uint64_t PSAtomicWnRnArray::acquireWriteIdx(PSAtomicWnRnArray *this, unint64_t *a2, unint64_t *a3)
{
  v3 = 3758097084;
  if (!a2 || (*(this + 280) & 1) == 0)
  {
    return v3;
  }

  if (a3 && *(this + 67) > 1u)
  {
    return 3758097090;
  }

  v7 = ps_reservation_start(**this, *(this + 68), *(*this + 8), 8, *(this + 36));
  if (v7 == -1)
  {
    return 3758097136;
  }

  v8 = v7;
  ps_reservation_complete_get_updated_mask(**this, *(this + 68), v7, a3);
  if (v8 < *(this + 68))
  {
    v3 = 0;
    *a2 = v8;
    return v3;
  }

  v10 = PSAtomicWnRnArray::acquireWriteIdx(&v12);
  return PSAtomicWnRnArray::relinquishWriteIdx(v10, v11);
}

uint64_t PSAtomicWnRnArray::relinquishWriteIdx(PSAtomicWnRnArray *this, unint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  if (*(this + 280) != 1 || *(this + 68) <= a2)
  {
    return v2;
  }

  v3 = atomic_load((*(*this + 8) + 8 * a2));
  if (v3 != *(this + 36))
  {
    PSAtomicWnRnArray::relinquishWriteIdx(buf);
  }

  v4 = v3;
  atomic_compare_exchange_strong((*(*this + 8) + 8 * a2), &v4, *(this + 37));
  if (v4 == v3)
  {
    return 0;
  }

  *(this + 36) = v4;
  v16 = 0;
  v6 = asprintf(&v16, "%s: Assertion failed for %s", "relinquishWriteIdx", "atomic_compare_exchange_strong(&_patomic->_token_array[idx], &_reservation_token_write_start, _reservation_token_write_end)");
  v8 = __PSUtilitiesLogSharedInstance(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v18 = "relinquishWriteIdx";
    v19 = 1024;
    v20 = 239;
    v21 = 2080;
    v22 = "relinquishWriteIdx";
    v23 = 2080;
    v24 = "atomic_compare_exchange_strong(&_patomic->_token_array[idx], &_reservation_token_write_start, _reservation_token_write_end)";
    _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
  }

  v9 = OSLogFlushBuffers();
  if (v9)
  {
    v11 = v9;
    v12 = __PSUtilitiesLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "relinquishWriteIdx";
      v19 = 1024;
      v20 = v11;
      _os_log_impl(&dword_25EBC5000, v12, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = abort_with_reason();
  return PSAtomicWnRnArray::clearWriteIdx(v13, v14, v15);
}