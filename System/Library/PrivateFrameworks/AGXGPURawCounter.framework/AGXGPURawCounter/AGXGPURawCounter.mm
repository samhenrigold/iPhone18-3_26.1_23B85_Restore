AGXGPURawCounterImpl *AGXGPURawCounter::createInstance(AGXGPURawCounter *this)
{
  os_unfair_lock_lock(&sAGXGPURawCounterLock);
  if (!sAGXGPURawCounterImpl)
  {
    operator new();
  }

  os_unfair_lock_unlock(&sAGXGPURawCounterLock);
  return 0;
}

uint64_t AGXGPURawCounter::destroyInstance(AGXGPURawCounter *this)
{
  result = sAGXGPURawCounterImpl;
  if (sAGXGPURawCounterImpl)
  {
    AGXGPURawCounterImpl::free(sAGXGPURawCounterImpl);
    result = sAGXGPURawCounterImpl;
    if (sAGXGPURawCounterImpl)
    {
      result = (*(*sAGXGPURawCounterImpl + 8))(sAGXGPURawCounterImpl);
    }

    sAGXGPURawCounterImpl = 0;
  }

  return result;
}

size_t AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::drain(AGXGPURawCounterImpl::SourceImpl::RingBufferImpl *this, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if ((a2 & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", "AGXGPURawCounterImpl.mm", 352, "drain");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "AGXGPURawCounterImpl.mm";
      v15 = 1024;
      v16 = 352;
      v17 = 2080;
      v18 = "drain";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v14 = "AGXGPURawCounterImpl.mm";
      v15 = 1024;
      v16 = 352;
      v17 = 2080;
      v18 = "drain";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Amount of data to be drained must be aligned to 64-bits!\n", buf, 0x1Cu);
    }

    return 0;
  }

  else
  {
    LODWORD(v2) = a2;
    v12 = 0;
    *buf = 0;
    (*(*this + 32))(this, buf, &v12);
    if (v12 >= v2)
    {
      v2 = v2;
    }

    else
    {
      v2 = v12;
    }

    v4 = *(this + 3);
    v5 = *(v4 + 24);
    if (*buf + v2 <= v5)
    {
      v8 = (*v4 + *buf);
      v9 = v2;
    }

    else
    {
      v6 = v5 - *buf;
      v7 = (v2 - v6);
      sys_dcache_flush((*v4 + *buf), v6);
      v8 = **(this + 3);
      v9 = v7;
    }

    sys_dcache_flush(v8, v9);
    v10 = *(this + 3);
    *buf = (*buf + v2) % *(v10 + 24);
    *(v10 + 32) = *(v10 + 8) + *buf;
    sys_dcache_flush((v10 + 32), 8uLL);
  }

  return v2;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::state(void **this, unsigned int *a2, unsigned int *a3)
{
  sys_dcache_flush(this[3], 0x40uLL);
  v6 = this[3];
  *a2 = v6[4] - *(v6 + 2);
  *a3 = (v6[6] + *(v6 + 6) - v6[4]) % *(v6 + 6);
  return 1;
}

void AGXGPURawCounterImpl::SourceImpl::RingBufferImpl::~RingBufferImpl(AGXGPURawCounterImpl::SourceImpl::RingBufferImpl *this)
{
  *this = &unk_284F28E10;
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E10;
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }
}

void AGXGPURawCounterImpl::SourceImpl::ringBufferFree(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = *(this + 785);
  if (v2)
  {
    v3 = *(this + 1572);
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = v2[i];
        if (v5)
        {
          (*(*v5 + 8))(v2[i]);
          v2 = *(this + 785);
          v3 = *(this + 1572);
        }

        v2[i] = 0;
      }
    }

    free(v2);
    *(this + 785) = 0;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::ringBufferInit(AGXGPURawCounterImpl::SourceImpl *this, unint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v5 = (*(*this + 224))(this, a4);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    operator new();
  }

  return v5;
}

BOOL AGXGPURawCounterImpl::SourceImpl::ringBufferAlloc(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1572);
  if (v4 == a2)
  {
    (*(*this + 240))(this);
    if (a2)
    {
      v5 = malloc_type_malloc(8 * *(this + 1572), 0x2004093837F09uLL);
      *(this + 785) = v5;
      if (v5)
      {
        bzero(v5, 8 * *(this + 1572));
        return 1;
      }

      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n", "AGXGPURawCounterImpl.mm", 2183, "ringBufferAlloc", *(this + 7));
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v15 = *(this + 7);
        *buf = 136315906;
        v17 = "AGXGPURawCounterImpl.mm";
        v18 = 1024;
        v19 = 2183;
        v20 = 2080;
        v21 = "ringBufferAlloc";
        v22 = 1024;
        v23 = v15;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n", buf, 0x22u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        v12 = *(this + 7);
        *buf = 136315906;
        v17 = "AGXGPURawCounterImpl.mm";
        v18 = 1024;
        v19 = 2183;
        v20 = 2080;
        v21 = "ringBufferAlloc";
        v22 = 1024;
        v23 = v12;
        v9 = MEMORY[0x277D86220];
        v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to allocate ring buffer for source[%u]!\n";
        goto LABEL_17;
      }
    }

    else
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n", "AGXGPURawCounterImpl.mm", 2176, "ringBufferAlloc", 0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v17 = "AGXGPURawCounterImpl.mm";
        v18 = 1024;
        v19 = 2176;
        v20 = 2080;
        v21 = "ringBufferAlloc";
        v22 = 1024;
        v23 = 0;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n", buf, 0x22u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        *buf = 136315906;
        v17 = "AGXGPURawCounterImpl.mm";
        v18 = 1024;
        v19 = 2176;
        v20 = 2080;
        v21 = "ringBufferAlloc";
        v22 = 1024;
        v23 = 0;
        v9 = MEMORY[0x277D86220];
        v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer count (%u)!\n";
LABEL_17:
        v11 = 34;
        goto LABEL_18;
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n", "AGXGPURawCounterImpl.mm", 2167, "ringBufferAlloc", *(this + 7), v4, a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = *(this + 7);
      v14 = *(this + 1572);
      *buf = 136316418;
      v17 = "AGXGPURawCounterImpl.mm";
      v18 = 1024;
      v19 = 2167;
      v20 = 2080;
      v21 = "ringBufferAlloc";
      v22 = 1024;
      v23 = v13;
      v24 = 1024;
      v25 = v14;
      v26 = 1024;
      v27 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n", buf, 0x2Eu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      v7 = *(this + 7);
      v8 = *(this + 1572);
      *buf = 136316418;
      v17 = "AGXGPURawCounterImpl.mm";
      v18 = 1024;
      v19 = 2167;
      v20 = 2080;
      v21 = "ringBufferAlloc";
      v22 = 1024;
      v23 = v7;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = a2;
      v9 = MEMORY[0x277D86220];
      v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent ring buffer count for source[%u]. (%u != %u)\n";
      v11 = 46;
LABEL_18:
      _os_log_impl(&dword_23C542000, v9, OS_LOG_TYPE_INFO, v10, buf, v11);
      return 0;
    }
  }

  return result;
}

void AGXGPURawCounterImpl::SourceImpl::postProcessReset(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(this + 787);
  if (v2 && (v3 = *(v2 + 8)) != 0 && *(v2 + 24))
  {
    v3(*(*(this + 1) + 704));
    *(this + 1576) = a2;
    bzero(*(this + 790), *(this + 1582));
    *(this + 1577) = (*(*(this + 787) + 24))();
    if (*(this + 36))
    {
      LODWORD(v7) = *(this + 1554);
      LODWORD(v6) = *(this + 1555);
      *(this + 1578) = 8 * (v7 - v6);
    }

    else
    {
      *(this + 1578) = 0;
      v6 = *(this + 1555);
      v7 = *(this + 1554);
      if (v6 < v7)
      {
        v8 = v7 - v6;
        if ((v7 - v6) >= 9)
        {
          v11 = v8 & 7;
          if ((v8 & 7) == 0)
          {
            v11 = 8;
          }

          v12 = v8 - v11;
          v13 = v11 + v6 - v7;
          v14 = (this + 24 * v6 + 136);
          v15 = 0uLL;
          v16 = 0uLL;
          do
          {
            v17.i32[0] = *(v14 - 12);
            v17.i32[1] = *(v14 - 6);
            v17.i32[2] = *v14;
            v17.i32[3] = v14[6];
            v18.i32[0] = v14[12];
            v18.i32[1] = v14[18];
            v18.i32[2] = v14[24];
            v18.i32[3] = v14[30];
            v15 = vsraq_n_u32(v15, v17, 3uLL);
            v16 = vsraq_n_u32(v16, v18, 3uLL);
            v14 += 48;
            v13 += 8;
          }

          while (v13);
          v10 = v12 + v6;
          v9 = vaddvq_s32(vaddq_s32(v16, v15));
        }

        else
        {
          v9 = 0;
          v10 = *(this + 1555);
        }

        v19 = v7 - v10;
        v20 = (this + 24 * v10 + 88);
        do
        {
          v21 = *v20;
          v20 += 6;
          v9 += v21 >> 3;
          --v19;
        }

        while (v19);
        *(this + 1578) = v9;
        LODWORD(v7) = 1;
      }
    }

    v22 = 8 * v6;
    v23 = v22 + 8;
    *(this + 1579) = v22 + 8;
    if (*(this + 6304))
    {
      *(this + 1579) = v22 + 40;
    }

    if (v7 && (((*(*this + 128))(this) & 1) != 0 || *(this + 1556)))
    {
      *(this + 1579) += v23;
    }

    if (((*(*this + 128))(this) & 2) != 0)
    {
      *(this + 1579) += 3 * v23 * *(*(this + 787) + 40);
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", "AGXGPURawCounterImpl.mm", 1899, "postProcessReset");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "AGXGPURawCounterImpl.mm";
      v26 = 1024;
      v27 = 1899;
      v28 = 2080;
      v29 = "postProcessReset";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v25 = "AGXGPURawCounterImpl.mm";
      v26 = 1024;
      v27 = 1899;
      v28 = 2080;
      v29 = "postProcessReset";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** chip dispatch table is not propertly set!\n", buf, 0x1Cu);
    }
  }
}

BOOL AGXGPURawCounterImpl::SourceImpl::postProcessData(AGXGPURawCounterImpl::SourceImpl *this, unsigned int a2, const unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t a6, unsigned __int8 *a7, unint64_t a8, unint64_t a9, unint64_t *a10, BOOL a11)
{
  v146 = *MEMORY[0x277D85DE8];
  v11 = *(this + 787);
  if (v11 && *(v11 + 16))
  {
    if (*(this + 1572) <= a2)
    {
      return 0;
    }

    result = 0;
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          result = 0;
          if (a6 < a4)
          {
            if (a7)
            {
              if (a8)
              {
                result = 0;
                if (a9 < a8)
                {
                  if (a10)
                  {
                    if (*a5 < a4 && *a10 < a8 && (((a6 | a4) | *a5) & 7) == 0 && (((a9 | a8) | *a10) & 7) == 0)
                    {
                      v17 = this;
                      if ((*(**(this + 1) + 104))(*(this + 1)) <= a8)
                      {
                        if ((*(*v17 + 128))(v17))
                        {
                          v114 = 1;
                          v18 = v17;
                        }

                        else
                        {
                          v18 = v17;
                          v114 = *(v17 + 1556) != 0;
                        }

                        v19 = (*(*v18 + 128))(v18);
                        v109 = (*(*v18 + 128))(v18);
                        v107 = *(v18 + 1576);
                        v20 = (*(*v18 + 16))(v18);
                        if (((*(*v20 + 56))(v20) & 2) != 0)
                        {
                          v108 = ((*(*v17 + 96))(v17) >> 2) & 1;
                        }

                        else
                        {
                          v108 = 0;
                        }

                        v111 = v19;
                        if ((v19 & 2) != 0)
                        {
                          v21 = v17;
                          v110 = 8 * *(*(v17 + 787) + 56);
                        }

                        else
                        {
                          v110 = 0;
                          v21 = v17;
                        }

                        v112 = *(v21 + 794);
                        v115 = *(v21 + 1554);
                        v22 = *(v21 + 1555);
                        v23 = *(v21 + 1556);
                        v122 = 0;
                        {
                          v21 = v17;
                          if (v90)
                          {
                            if (*(v17 + 9))
                            {
                              v91 = 4096;
                            }

                            else
                            {
                              v91 = 2048;
                            }

                            AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize = v91;
                            v21 = v17;
                          }
                        }

                        {
                          v21 = v17;
                          if (v92)
                          {
                            if (*(v17 + 9))
                            {
                              v93 = 1;
                            }

                            else
                            {
                              v93 = 4;
                            }

                            AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcPayloadScale = v93;
                            v21 = v17;
                          }
                        }

                        if (AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize)
                        {
                          operator new();
                        }

                        LOBYTE(v121[0]) = 0;
                        memset(v121 + 4, 0, 28);
                        v24 = (*(**(v21 + 1) + 104))(*(v21 + 1));
                        StackAllocator::init(v121, v24);
                        v25 = a5;
                        v26 = *a5;
                        v27 = *a10;
                        if (*a5 == a6)
                        {
                          result = 1;
                          v28 = a6;
                          goto LABEL_121;
                        }

                        v102 = (v112 + 8 * (a2 << 8));
                        v103 = v23 + v22;
                        v99 = v115 != v23 + v22 || !v114;
                        v29 = v17;
                        v106 = v17 + 72;
                        __n = (8 * (v115 - (v23 + v22)));
                        v104 = (v115 - (v23 + v22));
                        v30 = 8 * v104;
                        v31 = a3;
                        while (1)
                        {
                          v28 = v26;
                          while (1)
                          {
                            v32 = (*(*(v29 + 787) + 32))(*&v31[v28]);
                            v33 = a6;
                            v34 = a4;
                            if (v32)
                            {
                              break;
                            }

                            v28 = (v28 + 8) % a4;
                            v31 = a3;
                            v29 = v17;
                            if (v28 == a6)
                            {
                              result = 1;
                              v28 = a6;
                              goto LABEL_120;
                            }
                          }

                          v35 = a3;
                          v26 = v28;
                          v36 = v17;
                          while (1)
                          {
                            v26 = (v26 + 8) % v34;
                            if (v26 == v33)
                            {
                              break;
                            }

                            v37 = (*(*(v36 + 787) + 32))(*&v35[v26]);
                            v33 = a6;
                            v34 = a4;
                            v35 = a3;
                            v36 = v17;
                            if (v37)
                            {
                              goto LABEL_48;
                            }
                          }

                          v26 = v33;
                          if (!a11)
                          {
                            break;
                          }

LABEL_48:
                          v38 = (v34 - v28);
                          v39 = (v34 - v28 + v26) % v34;
                          if (v39 < *(v36 + 1577))
                          {
                            result = 0;
LABEL_120:
                            v25 = a5;
LABEL_121:
                            *v25 = v28;
                            *a10 = v27;
                            if (LOBYTE(v121[0]) == 1)
                            {
                              v85 = result;
                              free(v121[1]);
                              return v85;
                            }

                            return result;
                          }

                          v113 = v27;
                          if (v39 > AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize)
                          {
                            v86 = (v34 - v28 + v26) % v34;
                            fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n", "AGXGPURawCounterImpl.mm", 1499, "postProcessData", v39, AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize);
                            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                            {
                              *v129 = 136316162;
                              v130 = "AGXGPURawCounterImpl.mm";
                              v131 = 1024;
                              v132 = 1499;
                              v133 = 2080;
                              v134 = "postProcessData";
                              v135 = 2048;
                              v136 = v86;
                              v137 = 1024;
                              LODWORD(v138) = AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize;
                              _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n", v129, 0x2Cu);
                            }

                            result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
                            if (result)
                            {
                              *v129 = 136316162;
                              v130 = "AGXGPURawCounterImpl.mm";
                              v131 = 1024;
                              v132 = 1499;
                              v133 = 2080;
                              v134 = "postProcessData";
                              v135 = 2048;
                              v136 = v86;
                              v137 = 1024;
                              LODWORD(v138) = AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcSampleMaxSize;
                              v87 = MEMORY[0x277D86220];
                              v88 = "AGXGRC:AGXGRC:%s:%d:%s: *** Source sample size is unexpectedly larger than the maximum! (%llu > %u)\n";
                              v89 = 44;
LABEL_138:
                              _os_log_impl(&dword_23C542000, v87, OS_LOG_TYPE_INFO, v88, v129, v89);
LABEL_139:
                              result = 0;
                            }

LABEL_140:
                            v25 = a5;
                            v27 = v113;
                            goto LABEL_121;
                          }

                          v105 = (v34 - v28 + v26) % v34;
                          if (v28 >= v26)
                          {
                            v40 = 0;
                            memcpy(0, &a3[v28], v38);
                            memcpy(v38, a3, v105 - v38);
                          }

                          else
                          {
                            v40 = &a3[v28];
                          }

                          v120 = *(*(v17 + 793) + 8 * a2);
                          v41 = (*(*(v17 + 787) + 16))(v40, &v124, &v120);
                          v42 = v124 & 0xF;
                          if (v42 != 5)
                          {
                            v44 = v41;
                            v96 = v30;
                            v97 = v40;
                            v45 = v105 - v41;
                            v46 = (*(v17 + 1579) + (v45 - v110) * AGXGPURawCounterImpl::SourceImpl::postProcessData(unsigned int,unsigned char const*,unsigned long long,unsigned long long *,unsigned long long,unsigned char *,unsigned long long,unsigned long long,unsigned long long *,BOOL)::kSrcPayloadScale);
                            v95 = ((a8 - a9 + 8 + v113) / a8 * a8 - (8 - a9 + v113));
                            result = v95 < v46;
                            if (v95 < v46)
                            {
                              goto LABEL_140;
                            }

                            if (v121[2] < v46)
                            {
                              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n", "AGXGPURawCounterImpl.mm", 1579, "postProcessData", v121[2], v46);
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                *v129 = 136316162;
                                v130 = "AGXGPURawCounterImpl.mm";
                                v131 = 1024;
                                v132 = 1579;
                                v133 = 2080;
                                v134 = "postProcessData";
                                v135 = 2048;
                                v136 = v121[2];
                                v137 = 2048;
                                v138 = v46;
                                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n", v129, 0x30u);
                              }

                              result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
                              if (result)
                              {
                                *v129 = 136316162;
                                v130 = "AGXGPURawCounterImpl.mm";
                                v131 = 1024;
                                v132 = 1579;
                                v133 = 2080;
                                v134 = "postProcessData";
                                v135 = 2048;
                                v136 = v121[2];
                                v137 = 2048;
                                v138 = v46;
                                v87 = MEMORY[0x277D86220];
                                v88 = "AGXGRC:AGXGRC:%s:%d:%s: *** Potential intermediate buffer overflow! (bufferSize=%llu processedPayloadSizeMax=%llu)\n";
                                v89 = 48;
                                goto LABEL_138;
                              }

                              goto LABEL_140;
                            }

                            v47 = *(v17 + 792);
                            if (v125 < *(v47 + 8 * a2))
                            {
                              goto LABEL_139;
                            }

                            v121[3] = 0;
                            if (v45 < *(v17 + 1578))
                            {
                              goto LABEL_139;
                            }

                            v48 = v44;
                            if ((v111 & 2) != 0)
                            {
                              result = AGXGPURawCounterImpl::SourceImpl::generateKickTimestampSamples(v17, a2, *(v47 + 8 * a2), v125, v97, v44, v139, &v122);
                              if (!result)
                              {
                                goto LABEL_140;
                              }

                              v48 += v110;
                              if (v121[1])
                              {
                                v49 = (v121[1] + v121[3]);
                              }

                              else
                              {
                                v49 = 0;
                              }

                              v50 = AGXGPURawCounterImpl::SourceImpl::emitKickTimestampSamples(v17, a2, v139, v122, v125, v49);
                              StackAllocator::reserve(v121, v50);
                              v42 = v124 & 0xF;
                            }

                            if (v42 != 5)
                            {
                              v51 = (v97 + v48);
                              v129[0] = 0;
                              SampleType = generateSampleType(&v124, v129);
                              if (!v99 && SampleType >= 6u || ((v53 = SampleType, *StackAllocator::reserve(v121, 8u) = 0x52544E4357525047, (v107 & 1) != 0) ? (v54 = StackAllocator::reserve(v121, 0x20u)) : (v54 = v123), v55 = *(v17 + 7), *v54 = v126, v54[4] = 4, *(v54 + 3) = -1519, v56 = v124, *(v54 + 1) = v125, *(v54 + 4) = v127, *(v54 + 5) = v56 >> 16, v54[24] = v55, v54[25] = a2, v54[26] = v128 & 0x3F, v54[5] = v53, v54[27] = *(v17 + 6216) - *(v17 + 1556), copyMetaCounterList(v121, v54, v106, *(v17 + 1555)), v115 == v103))
                              {
                                v61 = (v97 + v48);
LABEL_95:
                                if (v114)
                                {
                                  goto LABEL_96;
                                }
                              }

                              else
                              {
                                v57 = StackAllocator::reserve(v121, __n);
                                v58 = v57;
                                if ((*(v17 + 36) & 1) == 0)
                                {
                                  bzero(v57, __n);
                                  v59 = 0;
                                  v94 = v129[0];
                                  v60 = v17;
                                  v61 = v51;
                                  while (1)
                                  {
                                    v62 = (v106 + 24 * (v59 + *(v60 + 1555)));
                                    v100 = v62[4] >> 3;
                                    v101 = v61;
                                    memcpy(v58, v61, v100);
                                    v60 = v17;
                                    if (v62[2] < *(*(v17 + 1) + 676))
                                    {
                                      break;
                                    }

                                    if (!v108 || (*(*v62 + 48) & 1) == 0)
                                    {
                                      if ((v109 & 4) == 0)
                                      {
                                        goto LABEL_78;
                                      }

                                      v66 = *v58;
                                      *&buf[8 * v59] = *v58;
                                      v65 = v66 - v102[v59];
LABEL_77:
                                      *v58 = v65;
                                      goto LABEL_78;
                                    }

                                    if ((v109 & 4) != 0)
                                    {
                                      if ((v94 & 1) == 0)
                                      {
                                        v68 = *v58;
                                        *&buf[8 * v59] = *v58;
                                        *v58 = v68 - v102[v59];
                                        v60 = v17;
                                        goto LABEL_78;
                                      }

                                      v67 = v102[v59];
                                    }

                                    else
                                    {
                                      if ((v94 & 1) == 0)
                                      {
                                        *v58 += v102[v59];
                                        *&buf[8 * v59] = 0;
                                        v60 = v17;
                                        goto LABEL_78;
                                      }

                                      v67 = *v58;
                                    }

                                    *&buf[8 * v59] = v67;
                                    *v58 = 0;
                                    v60 = v17;
LABEL_78:
                                    v61 = &v101[v100 & 0x1FFFFFFE];
                                    ++v58;
                                    if (v104 == ++v59)
                                    {
                                      goto LABEL_95;
                                    }
                                  }

                                  if ((*(*v62 + 48) & 8) == 0)
                                  {
                                    goto LABEL_78;
                                  }

                                  v63 = 2 << (v62[3] - 1);
                                  v64 = *v58;
                                  *&buf[8 * v59] = *v58;
                                  v65 = (v64 - v102[v59]) & (v63 - 1);
                                  goto LABEL_77;
                                }

                                memcpy(v57, v51, __n);
                                v61 = &v51[__n];
                                if (v114)
                                {
LABEL_96:
                                  v69 = v61;
                                  if ((v61 + 32) <= v97 + v105)
                                  {
                                    *StackAllocator::reserve(v121, 8u) = 0x52544E4357525047;
                                    v70 = (v107 & 1) != 0 ? StackAllocator::reserve(v121, 0x20u) : v123;
                                    v71 = v97 + v105 - v69;
                                    v72 = *(v17 + 7);
                                    *v70 = v126;
                                    v70[4] = 4;
                                    *(v70 + 3) = -1519;
                                    v73 = v124;
                                    *(v70 + 1) = v125;
                                    *(v70 + 4) = v127;
                                    *(v70 + 5) = v73 >> 16;
                                    v70[24] = v72;
                                    v70[25] = a2;
                                    v70[26] = v128 & 0x3F;
                                    v70[5] = 7;
                                    v70[27] = (v71 >> 3) & 0xFC;
                                    copyMetaCounterList(v121, v70, v106, *(v17 + 1555));
                                    v74 = StackAllocator::reserve(v121, v71 & 0xFFFFFFE0);
                                    if ((v71 & 0xFFFFFFE0) != 0 && v74 != 0)
                                    {
                                      memcpy(v74, v69, v71 & 0xFFFFFFE0);
                                    }
                                  }
                                }
                              }
                            }

                            v76 = v121[3];
                            if (v121[3] > v95)
                            {
                              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n", "AGXGPURawCounterImpl.mm", 1836, "postProcessData");
                              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                              {
                                *v129 = 136315650;
                                v130 = "AGXGPURawCounterImpl.mm";
                                v131 = 1024;
                                v132 = 1836;
                                v133 = 2080;
                                v134 = "postProcessData";
                                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n", v129, 0x1Cu);
                              }

                              result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
                              if (result)
                              {
                                *v129 = 136315650;
                                v130 = "AGXGPURawCounterImpl.mm";
                                v131 = 1024;
                                v132 = 1836;
                                v133 = 2080;
                                v134 = "postProcessData";
                                v87 = MEMORY[0x277D86220];
                                v88 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient free space in the final destination buffer!\n";
                                v89 = 28;
                                goto LABEL_138;
                              }

                              goto LABEL_140;
                            }

                            if (v121[3] + v113 <= a8)
                            {
                              v79 = v121[1];
                              v80 = &a7[v113];
                              v78 = v121[3];
                            }

                            else
                            {
                              v77 = v121[1];
                              memcpy(&a7[v113], v121[1], a8 - v113);
                              v78 = &v76[-(a8 - v113)];
                              v79 = &v77[a8 - v113];
                              v80 = a7;
                            }

                            memcpy(v80, v79, v78);
                            v29 = v17;
                            v81 = a2;
                            *(*(v17 + 792) + 8 * a2) = v125;
                            if ((v124 & 0xF) != 5)
                            {
                              *(*(v17 + 793) + 8 * a2) = v120;
                              if (v115 != v103)
                              {
                                memcpy(v102, buf, v96);
                                v29 = v17;
                                v81 = a2;
                              }
                            }

                            v82 = v122;
                            if (v122)
                            {
                              v83 = v139;
                              do
                              {
                                v84 = *(v29 + 795) + 24 * (v83[17] + *(*(v29 + 787) + 40) * v81);
                                *v84 = *v83;
                                *(v84 + 16) = *(v83 + 2);
                                v83 += 24;
                                --v82;
                              }

                              while (v82);
                            }

                            v27 = (v121[3] + v113) % a8;
                            v30 = v96;
                            goto LABEL_118;
                          }

                          *(*(v17 + 792) + 8 * a2) = v125;
                          *(*(v17 + 793) + 8 * a2) = v120;
                          if (v115 != v103)
                          {
                            bzero(v102, v30);
                          }

                          if ((v111 & 2) != 0)
                          {
                            v43 = *(*(v17 + 787) + 40);
                            bzero((*(v17 + 795) + 24 * v43 * a2), 24 * v43);
                          }

                          v29 = v17;
                          v27 = v113;
LABEL_118:
                          result = 1;
                          v31 = a3;
                          if (v26 == a6)
                          {
                            v28 = a6;
                            goto LABEL_120;
                          }
                        }

                        result = 1;
                        goto LABEL_120;
                      }
                    }

                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", "AGXGPURawCounterImpl.mm", 1345, "postProcessData");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v141 = "AGXGPURawCounterImpl.mm";
      v142 = 1024;
      v143 = 1345;
      v144 = 2080;
      v145 = "postProcessData";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v141 = "AGXGPURawCounterImpl.mm";
      v142 = 1024;
      v143 = 1345;
      v144 = 2080;
      v145 = "postProcessData";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** parseSampleHeader() is not set!\n", buf, 0x1Cu);
      return 0;
    }
  }

  return result;
}

void sub_23C546B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, void *a43)
{
  if (a42 == 1)
  {
    free(a43);
    if (__p)
    {
      goto LABEL_3;
    }
  }

  else if (__p)
  {
LABEL_3:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void StackAllocator::init(StackAllocator *this, uint64_t a2)
{
  *this = 1;
  *(this + 1) = 8;
  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(this + 2) = v3;
  *(this + 3) = 0;
  malloc_type_posix_memalign(this + 1, 8uLL, v3, 0x61E504A1uLL);
  v4 = *(this + 1);
  v5 = *(this + 2);

  bzero(v4, v5);
}

BOOL AGXGPURawCounterImpl::SourceImpl::generateKickTimestampSamples(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, unsigned int *a8)
{
  v111 = *MEMORY[0x277D85DE8];
  v15 = a1[795];
  v16 = a1[787];
  v17 = *(v16 + 40);
  bzero(v110, 0x280uLL);
  if (a3)
  {
    v18 = a3 - *(a1[1] + 704);
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v19 = 0;
    v20 = *(v16 + 56);
    if (!v20)
    {
LABEL_34:
      *a8 = 0;
      return 1;
    }

    goto LABEL_7;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v19 = a4 - *(a1[1] + 704);
  v20 = *(v16 + 56);
  if (!v20)
  {
    goto LABEL_34;
  }

LABEL_7:
  v21 = 0;
  v22 = 0;
  v23 = (v15 + 24 * (v17 * a2));
  v24 = (*(v16 + 48) + 2);
  do
  {
    v27 = &v110[80 * (v21 >> 1)];
    v28 = *(v27 + 18);
    if (v28 >= 2)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", "AGXGPURawCounterImpl.mm", 2320, "generateKickTimestampSamples");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "AGXGPURawCounterImpl.mm";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2320;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = "generateKickTimestampSamples";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", buf, 0x1Cu);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (result)
      {
        LODWORD(buf[0]) = 136315650;
        *(buf + 4) = "AGXGPURawCounterImpl.mm";
        WORD2(buf[1]) = 1024;
        *(&buf[1] + 6) = 2320;
        WORD1(buf[2]) = 2080;
        *(&buf[2] + 4) = "generateKickTimestampSamples";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unexpected number of kickslot data to be added to the queue!\n", buf, 0x1Cu);
        return 0;
      }

      return result;
    }

    v29 = *(a5 + 8 * *(v24 - 2));
    if (v29)
    {
      v30 = *(a5 + a6 + 8 * v21);
      v31 = v18 > v30 || v30 > v19;
      if (!v31 && *(v23 + 3 * (v21 >> 1)) < v30)
      {
        v32 = &v27[24 * v28];
        *v32 = v30;
        *(v32 + 1) = v29;
        v32[16] = *(v24 - 1);
        v32[17] = v21 >> 1;
        v32[18] = *v24;
        *(v27 + 18) = v28 + 1;
        if (v28 != 1)
        {
          goto LABEL_9;
        }

        v34 = v27 + 24;
        v33 = *(v27 + 3);
        if (v33 < *v27)
        {
          goto LABEL_9;
        }

        if (v33 > *v27)
        {
          goto LABEL_8;
        }

        if (v27[40] != v27[16])
        {
          goto LABEL_9;
        }

        v35 = v27[42];
        v22 = 1;
        if ((v35 - 8) <= 5 && (v35 & 1) == 0)
        {
          v36 = v27[18];
          if (v36 - 8) <= 5 && (v36)
          {
LABEL_8:
            v25 = *(v27 + 2);
            v26 = *v27;
            *v27 = *v34;
            *(v27 + 2) = *(v27 + 5);
            *v34 = v26;
            *(v27 + 5) = v25;
LABEL_9:
            v22 = 1;
          }
        }
      }
    }

    ++v21;
    v24 += 3;
  }

  while (v20 != v21);
  if ((v22 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!v17)
  {
    v59 = 0;
    goto LABEL_95;
  }

  v38 = 0;
  while (2)
  {
    v42 = &v110[v38];
    v43 = *&v110[v38 + 72];
    if (v43)
    {
      v44 = v43 - 1;
      if (!*v23)
      {
        v52 = v110[24 * v44 + 18 + v38];
        v49 = v52 - 8;
        v51 = v52 & 1;
        goto LABEL_45;
      }

      v45 = *(v23 + 18);
      v46 = v45 - 8;
      v47 = v45 & 1;
      v48 = v110[24 * v44 + 18 + v38];
      v49 = v48 - 8;
      if (v46 <= 5 && v47 == 0)
      {
        v54 = v48 & 1;
        if (v49 <= 5 && v54 == 0)
        {
          v39 = &v110[24 * v43 + v38];
          *(v42 + 18) = v43 + 1;
          v40 = *v23;
          v41 = *(v23 + 2);
          *(v39 + 2) = v41;
          *v39 = v40;
          v39[18] = BYTE2(v41) + 1;
          *v39 = *&v110[24 * v44 + v38] - 1;
        }

        else
        {
          v56 = *(v23 + 1);
          v57 = &v110[24 * v44 + v38];
          if (v56 != *(v57 + 1))
          {
            *(v57 + 1) = v56;
          }
        }
      }

      else
      {
        v51 = v48 & 1;
LABEL_45:
        if (v49 <= 5 && v51 != 0)
        {
          *(v42 + 18) = v44;
        }
      }
    }

    v38 += 80;
    v23 = (v23 + 24);
    if (80 * v17 != v38)
    {
      continue;
    }

    break;
  }

  v58 = 0;
  v59 = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  memset(buf, 0, sizeof(buf));
  v60 = vdupq_n_s64(0x30uLL);
  v61 = vdupq_n_s64(4uLL);
  v62 = v110;
  while (2)
  {
    v63 = &v110[80 * v58];
    v64 = *(v63 + 18);
    if (v64)
    {
      if (v64 < 0xA || v59 > -v64)
      {
        v66 = 0;
        goto LABEL_67;
      }

      v66 = v64 & 0xFFFFFFFC;
      v67 = vdupq_n_s64(v63);
      v68 = v59;
      v69 = v66;
      v70 = xmmword_23C553BE0;
      do
      {
        v71.i64[0] = 24 * v70.i64[0];
        v71.i64[1] = 24 * v70.i64[1];
        v72 = vaddq_s64(v67, v71);
        v73 = &buf[v68];
        *v73 = v72;
        v73[1] = vaddq_s64(v72, v60);
        v70 = vaddq_s64(v70, v61);
        v68 += 4;
        v69 -= 4;
      }

      while (v69);
      v59 += v66;
      if (v66 != v64)
      {
LABEL_67:
        v74 = v64 - v66;
        v75 = &v62[24 * v66];
        do
        {
          buf[v59++] = v75;
          v75 += 24;
          --v74;
        }

        while (v74);
      }
    }

    ++v58;
    v62 += 80;
    if (v58 != v17)
    {
      continue;
    }

    break;
  }

  if (!v59)
  {
LABEL_95:
    v80 = a8;
    goto LABEL_96;
  }

  v76 = 0;
  v77 = v59;
  v78 = v59 - 1;
  v79 = &buf[1];
  v80 = a8;
  do
  {
    v81 = v76 + 1;
    if (v76 + 1 < v59)
    {
      v82 = v79;
      v83 = v78;
      do
      {
        v84 = buf[v76];
        v85 = *v82;
        v86 = **v82;
        if (*v84 >= v86)
        {
          if (*v84 > v86 || *(v84 + 16) == *(v85 + 16) && ((v87 = *(v84 + 18), v88 = v87 - 8, v89 = v87 & 1, v88 <= 5) ? (v90 = v89 == 0) : (v90 = 0), v90 && ((v91 = *(v85 + 18), v92 = v91 - 8, v93 = v91 & 1, v92 <= 5) ? (v94 = v93 == 0) : (v94 = 1), !v94)))
          {
            buf[v76] = v85;
            *v82 = v84;
          }
        }

        ++v82;
        --v83;
      }

      while (v83);
    }

    --v78;
    ++v79;
    ++v76;
  }

  while (v81 != v59);
  v95 = buf;
  do
  {
    v96 = *v95++;
    v97 = *(v96 + 16);
    *a7 = *v96;
    *(a7 + 16) = v97;
    a7 += 24;
    --v77;
  }

  while (v77);
LABEL_96:
  *v80 = v59;
  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::emitKickTimestampSamples(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unint64_t a5, unint64_t *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v9 = 0;
    v29 = a2;
    v30 = a4;
    v28 = a1 + 72;
    v10 = MEMORY[0x277D86220];
    v27 = a6;
    v11 = a6;
    while (1)
    {
      v12 = a3 + 24 * v9;
      v13 = *(v12 + 8);
      if (v13)
      {
        v14 = *(*(a1 + 8) + 704) + *v12;
        if (v14 > a5)
        {
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", "AGXGPURawCounterImpl.mm", 2562, "emitKickTimestampSamples", v9, a5, v14, *(v12 + 18), HIDWORD(v13), *(v12 + 8), *(v12 + 16));
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v23 = *(v12 + 18);
            v24 = *(v12 + 8);
            v25 = *(v12 + 16);
            *buf = 136317442;
            v32 = "AGXGPURawCounterImpl.mm";
            v33 = 1024;
            v34 = 2562;
            v35 = 2080;
            v36 = "emitKickTimestampSamples";
            v37 = 1024;
            v38 = v9;
            v39 = 2048;
            v40 = a5;
            v41 = 2048;
            v42 = v14;
            v43 = 1024;
            v44 = v23;
            v45 = 1024;
            v46 = HIDWORD(v24);
            v47 = 1024;
            v48 = v24;
            v49 = 1024;
            v50 = v25;
            _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", buf, 0x4Eu);
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v15 = *(v12 + 18);
            v16 = *(v12 + 8);
            v17 = *(v12 + 16);
            *buf = 136317442;
            v32 = "AGXGPURawCounterImpl.mm";
            v33 = 1024;
            v34 = 2562;
            v35 = 2080;
            v36 = "emitKickTimestampSamples";
            v37 = 1024;
            v38 = v9;
            v39 = 2048;
            v40 = a5;
            v41 = 2048;
            v42 = v14;
            v43 = 1024;
            v44 = v15;
            v45 = 1024;
            v46 = HIDWORD(v16);
            v47 = 1024;
            v48 = v16;
            v49 = 1024;
            v50 = v17;
            _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** kick_timestamp > rde_sample_timestamp, [%u] timestampMax=%16llx timestamp=%16llx type=%2u encoderId=%8x traceId=%8x slotIdx=%2u\n\n", buf, 0x4Eu);
          }

          goto LABEL_3;
        }

        *v11++ = 0x52544E4357525047;
        v18 = *(a1 + 6220);
        if (v18)
        {
          break;
        }
      }

LABEL_3:
      if (++v9 == v30)
      {
        return (v11 - v27);
      }
    }

    v19 = 0;
    v20 = v28;
    while (1)
    {
      v22 = *(*v20 + 32);
      if (v22 > 3)
      {
        break;
      }

      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v21 = *(v12 + 18);
        }

        else
        {
          v21 = *(v12 + 12);
        }

LABEL_13:
        *v11 = v21;
        goto LABEL_14;
      }

      if (v22)
      {
        if (v22 != 1)
        {
          goto LABEL_31;
        }

        *v11 = v14;
      }

      else
      {
        *v11 = 0;
      }

LABEL_14:
      ++v19;
      ++v11;
      v20 += 24;
      if (v19 >= v18)
      {
        goto LABEL_3;
      }
    }

    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v21 = *(a1 + 28);
      }

      else
      {
        if (v22 != 7)
        {
LABEL_31:
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", "AGXGPURawCounterImpl.mm", 2605, "emitKickTimestampSamples");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v32 = "AGXGPURawCounterImpl.mm";
            v33 = 1024;
            v34 = 2605;
            v35 = 2080;
            v36 = "emitKickTimestampSamples";
            _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 136315650;
            v32 = "AGXGPURawCounterImpl.mm";
            v33 = 1024;
            v34 = 2605;
            v35 = 2080;
            v36 = "emitKickTimestampSamples";
            _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
          }

          *v11 = 0;
          v18 = *(a1 + 6220);
          goto LABEL_14;
        }

        v21 = v29;
      }
    }

    else if (v22 == 4)
    {
      v21 = *(v12 + 8);
    }

    else
    {
      v21 = *(v12 + 16);
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t StackAllocator::reserve(StackAllocator *this, unsigned int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3 + a2 <= v4)
  {
    result = *(this + 1) + v3;
    *(this + 3) = ((a2 + *(this + 1) - 1) & -*(this + 1)) + v3;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", "AGXGPURawCounterImpl.mm", 234, "reserve", a2, v4);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = *(this + 2);
      *buf = 136316162;
      v10 = "AGXGPURawCounterImpl.mm";
      v11 = 1024;
      v12 = 234;
      v13 = 2080;
      v14 = "reserve";
      v15 = 1024;
      v16 = a2;
      v17 = 2048;
      v18 = v8;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", buf, 0x2Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = *(this + 2);
      *buf = 136316162;
      v10 = "AGXGPURawCounterImpl.mm";
      v11 = 1024;
      v12 = 234;
      v13 = 2080;
      v14 = "reserve";
      v15 = 1024;
      v16 = a2;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, reserving more than available memory! (%u > %llu)\n", buf, 0x2Cu);
    }

    return 0;
  }

  return result;
}

uint64_t generateSampleType(uint64_t *a1, BOOL *a2)
{
  v2 = *a1;
  if ((~*a1 & 0xC000) != 0)
  {
    if ((v2 & 0xF) - 1 > 1)
    {
      return 14;
    }

    else
    {
      *a2 = (*a1 & 0xF) == 1;
      return (((*a1 >> 13) & 6) + (*a1 & 0xF) - 1);
    }
  }

  else if ((v2 & 0xF) != 0)
  {
    return 14;
  }

  else
  {
    return 6;
  }
}

void copyMetaCounterList(StackAllocator *a1, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v7 = StackAllocator::reserve(a1, 8 * a4);
    v8 = MEMORY[0x277D85DF8];
    v9 = a4;
    v10 = MEMORY[0x277D86220];
    do
    {
      v12 = *(*a3 + 32);
      if (v12 > 3)
      {
        if (v12 > 5)
        {
          if (v12 == 6)
          {
            v11 = *(a2 + 24);
          }

          else
          {
            if (v12 != 7)
            {
LABEL_21:
              fprintf(*v8, "AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", "AGXGPURawCounterImpl.mm", 1262, "copyMetaCounterList");
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                v14 = "AGXGPURawCounterImpl.mm";
                v15 = 1024;
                v16 = 1262;
                v17 = 2080;
                v18 = "copyMetaCounterList";
                _os_log_error_impl(&dword_23C542000, v10, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
              }

              if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                v14 = "AGXGPURawCounterImpl.mm";
                v15 = 1024;
                v16 = 1262;
                v17 = 2080;
                v18 = "copyMetaCounterList";
                _os_log_impl(&dword_23C542000, v10, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Unknown meta counter type!\n", buf, 0x1Cu);
              }

              v11 = 0;
              goto LABEL_4;
            }

            v11 = *(a2 + 25);
          }
        }

        else if (v12 == 4)
        {
          v11 = a2[5];
        }

        else
        {
          v11 = *(a2 + 26);
        }
      }

      else if (v12 > 1)
      {
        if (v12 == 2)
        {
          v11 = *(a2 + 5);
        }

        else
        {
          v11 = a2[4];
        }
      }

      else if (v12)
      {
        if (v12 != 1)
        {
          goto LABEL_21;
        }

        v11 = *(a2 + 1);
      }

      else
      {
        v11 = *a2;
      }

LABEL_4:
      *v7++ = v11;
      a3 += 24;
      --v9;
    }

    while (v9);
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::postProcessData(AGXGPURawCounterImpl::SourceImpl *this, uint64_t a2, const unsigned __int8 *a3, uint64_t a4, unint64_t *a5, unsigned __int8 *a6, uint64_t a7, unint64_t *a8, BOOL a9)
{
  v9 = 0;
  if (!a3 || !a5 || !a6 || !a7 || !a8)
  {
    return v9;
  }

  if (a4)
  {
    v9 = (*(*this + 200))(this, a2);
    *a5 = 0;
    *a8 = 0;
    return v9;
  }

  *a5 = 0;
  *a8 = 0;
  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::ringBuffer(AGXGPURawCounterImpl::SourceImpl *this, unsigned int a2)
{
  *&v22[5] = *MEMORY[0x277D85DE8];
  if ((*(*this + 176))(this) <= a2)
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = (*(*this + 176))(this);
    fprintf(v6, "AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n", "AGXGPURawCounterImpl.mm", 1156, "ringBuffer", a2, v7);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = (*(*this + 176))(this);
      *buf = 136316162;
      v16 = "AGXGPURawCounterImpl.mm";
      v17 = 1024;
      v18 = 1156;
      v19 = 2080;
      v20 = "ringBuffer";
      v21 = 1024;
      *v22 = a2;
      v22[2] = 1024;
      *&v22[3] = v13;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n", buf, 0x28u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    v8 = (*(*this + 176))(this);
    *buf = 136316162;
    v16 = "AGXGPURawCounterImpl.mm";
    v17 = 1024;
    v18 = 1156;
    v19 = 2080;
    v20 = "ringBuffer";
    v21 = 1024;
    *v22 = a2;
    v22[2] = 1024;
    *&v22[3] = v8;
    v9 = MEMORY[0x277D86220];
    v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)\n";
    v11 = 40;
    goto LABEL_12;
  }

  v4 = *(this + 785);
  if (v4)
  {
    return *(v4 + 8 * a2);
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n", "AGXGPURawCounterImpl.mm", 1162, "ringBuffer", *(this + 2));
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v14 = *(this + 2);
    *buf = 136315906;
    v16 = "AGXGPURawCounterImpl.mm";
    v17 = 1024;
    v18 = 1162;
    v19 = 2080;
    v20 = "ringBuffer";
    v21 = 2080;
    *v22 = v14;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n", buf, 0x26u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = *(this + 2);
    *buf = 136315906;
    v16 = "AGXGPURawCounterImpl.mm";
    v17 = 1024;
    v18 = 1162;
    v19 = 2080;
    v20 = "ringBuffer";
    v21 = 2080;
    *v22 = v12;
    v9 = MEMORY[0x277D86220];
    v10 = "AGXGRC:AGXGRC:%s:%d:%s: *** Ring buffers have not been allocated. Was sampling ever started on source %s?\n";
    v11 = 38;
LABEL_12:
    _os_log_impl(&dword_23C542000, v9, OS_LOG_TYPE_INFO, v10, buf, v11);
  }

  return 0;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::calcBufferSizeWithRingBufferSize(AGXGPURawCounterImpl::SourceImpl *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(*this + 152);

    return v2();
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterImpl.mm", 1135, "calcBufferSizeWithRingBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 1135;
      v8 = 2080;
      v9 = "calcBufferSizeWithRingBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterImpl.mm";
      v6 = 1024;
      v7 = 1135;
      v8 = 2080;
      v9 = "calcBufferSizeWithRingBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::alignBufferSize(AGXGPURawCounterImpl::SourceImpl *this, unint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(this + 1572);
    v4 = 0x800000000uLL / (v3 << 14) * (v3 << 14);
    if (v4 >= a2)
    {
      v4 = a2;
    }

    v5 = v4 / v3 + 0x3FFF;
    v6 = v5 & 0x1FFFFFC000;
    v7 = (v5 & 0x1FC0000000) == 0;
    v8 = 0x40000000;
    if (v7)
    {
      v8 = v6;
    }

    v9 = v4 >= v3;
    v10 = 0x4000;
    if (!v9)
    {
      v8 = 0x4000;
    }

    if (!a3)
    {
      v10 = 0;
    }

    return v10 + v8 * v3;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterImpl.mm", 1104, "alignBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "AGXGPURawCounterImpl.mm";
      v14 = 1024;
      v15 = 1104;
      v16 = 2080;
      v17 = "alignBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v13 = "AGXGPURawCounterImpl.mm";
      v14 = 1024;
      v15 = 1104;
      v16 = 2080;
      v17 = "alignBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setBufferSize(AGXGPURawCounterImpl::SourceImpl *this, uint64_t a2)
{
  if ((*(**(this + 1) + 96))(*(this + 1)))
  {
    (*(**(this + 1) + 88))(*(this + 1));
  }

  (*(*this + 40))(this, 0);
  if (*(this + 781))
  {
    (*(*this + 240))(this);
    free(*(this + 781));
    *(this + 781) = 0;
    *(this + 782) = 0;
  }

  if (a2)
  {
    memptr = 0;
    v4 = (*(*this + 152))(this, a2, 1);
    if (malloc_type_posix_memalign(&memptr, 0x4000uLL, v4, 0xB64A1CD1uLL))
    {
      return 0;
    }

    bzero(memptr, v4);
    *(this + 781) = memptr;
    *(this + 782) = v4;
  }

  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setFlags(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  (*(*this + 40))(this, 0);
  *(this + 1560) = (*(*this + 112))(this) & a2;
  return 1;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::availableFlags(AGXGPURawCounterImpl::SourceImpl *this)
{
  if (*(*(this + 787) + 56))
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setOptions(AGXGPURawCounterImpl::SourceImpl *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = (*(*this + 112))(this);
  v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"RingBufferSizeInKB"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 unsignedLongValue];
    v7 = v6 << 10;
    if ((v6 << 10) >= 0x800000000)
    {
      v7 = 0;
    }

    v8 = (*(*this + 160))(this, v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SourceBufferSizeInKB"];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
LABEL_12:
      v11 = [v10 unsignedLongValue] << 10;
      if (v11 >= v8)
      {
        v11 = v8;
      }

      if (v11 >= 0x800000000)
      {
        v8 = 0x800000000;
      }

      else
      {
        v8 = v11;
      }

      goto LABEL_18;
    }
  }

  v10 = [(NSDictionary *)v3 objectForKeyedSubscript:@"BufferSizeInKB"];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }
  }

  if (v8 == -1)
  {
    goto LABEL_19;
  }

LABEL_18:
  if ((*(*this + 136))(this, v8))
  {
LABEL_19:
    if (v4)
    {
      v14 = [(NSDictionary *)v3 objectForKeyedSubscript:@"ShaderProfiler"];
      v15 = [v14 BOOLValue];

      v12 = v15 & 1;
      if ((v4 & 2) == 0)
      {
LABEL_21:
        if ((v4 & 4) == 0)
        {
LABEL_32:
          v13 = (*(*this + 120))(this, v12);
          goto LABEL_33;
        }

LABEL_29:
        v18 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SWResetOnRead"];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          v12 = v12 | 4;
        }

        else
        {
          v12 = v12;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v12 = 0;
      if ((v4 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    v16 = [(NSDictionary *)v3 objectForKeyedSubscript:@"KickTimestamp"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v12 = v12 | 2;
    }

    else
    {
      v12 = v12;
    }

    if ((v4 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v13 = 0;
LABEL_33:

  return v13;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::addTrigger(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 - 1) < 2)
  {
    *(a1 + 6236) |= a2;
    v8 = [v5 objectForKeyedSubscript:@"Period"];
    *(a1 + 6232) = [v8 unsignedLongValue];

    v9 = 1;
  }

  else
  {
    if (a2 == 4)
    {
      v7 = *(a1 + 6236) | 4;
      goto LABEL_7;
    }

    if (a2 == 8)
    {
      v7 = *(a1 + 6236) | 8;
LABEL_7:
      *(a1 + 6236) = v7;
      v9 = 1;
      goto LABEL_13;
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", "AGXGPURawCounterImpl.mm", 926, "addTrigger", a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v12 = "AGXGPURawCounterImpl.mm";
      v13 = 1024;
      v14 = 926;
      v15 = 2080;
      v16 = "addTrigger";
      v17 = 1024;
      v18 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v12 = "AGXGPURawCounterImpl.mm";
      v13 = 1024;
      v14 = 926;
      v15 = 2080;
      v16 = "addTrigger";
      v17 = 1024;
      v18 = a2;
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
    }

    v9 = 0;
  }

LABEL_13:

  return v9;
}

void sub_23C548A9C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t AGXGPURawCounterImpl::SourceImpl::clearTriggers(AGXGPURawCounterImpl::SourceImpl *this)
{
  result = (*(*this + 40))(this, 0);
  *(this + 1559) = 0;
  return result;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::availableTriggers(AGXGPURawCounterImpl::SourceImpl *this)
{
  v1 = *(this + 9);
  v2 = 7;
  if ((v1 & 0x1E) != 0)
  {
    if (*(*(this + 1) + 92) <= 0xCu)
    {
      v2 = 7;
    }

    else
    {
      v2 = 15;
    }
  }

  if ((v1 & 0x18) != 0)
  {
    return v2 & 0xFFFFFFFD;
  }

  else
  {
    return v2;
  }
}

uint64_t AGXGPURawCounterImpl::SourceImpl::addCounter(AGXGPURawCounterImpl::SourceImpl *this, const char *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = a3;
  v56 = *MEMORY[0x277D85DE8];
  (*(*this + 40))(this, 0);
  if (!a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n", "AGXGPURawCounterImpl.mm", 652, "addCounter");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 652;
      *&buf[18] = 2080;
      *&buf[20] = "addCounter";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 652;
    *&buf[18] = 2080;
    *&buf[20] = "addCounter";
    v11 = MEMORY[0x277D86220];
    v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterName cannot be NULL!\n";
    v13 = buf;
    goto LABEL_13;
  }

  v55 = 0;
  v54 = 0u;
  memset(buf, 0, sizeof(buf));
  if (a4 != -1)
  {
    if (a5 == -1)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n", "AGXGPURawCounterImpl.mm", 664, "addCounter", a2, a4, -1);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v43 = 136316418;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 664;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = a2;
        *&v50[8] = 1024;
        *v51 = a4;
        *&v51[4] = 2048;
        v52 = -1;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n", v43, 0x36u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *v43 = 136316418;
      v44 = "AGXGPURawCounterImpl.mm";
      v45 = 1024;
      v46 = 664;
      v47 = 2080;
      v48 = "addCounter";
      v49 = 2080;
      *v50 = a2;
      *&v50[8] = 1024;
      *v51 = a4;
      *&v51[4] = 2048;
      v52 = -1;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s)! Both partition (0x%x) and select (0x%llx) must be specified!\n";
      v13 = v43;
      v14 = 54;
      goto LABEL_81;
    }

    if (a4 == -2)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n", "AGXGPURawCounterImpl.mm", 670, "addCounter", a2);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v43 = 136315906;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 670;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = a2;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n", v43, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      *v43 = 136315906;
      v44 = "AGXGPURawCounterImpl.mm";
      v45 = 1024;
      v46 = 670;
      v47 = 2080;
      v48 = "addCounter";
      v49 = 2080;
      *v50 = a2;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Cannot add user defined counter (%s) using GPURawCounter internal partition!\n";
LABEL_80:
      v13 = v43;
      v14 = 38;
      goto LABEL_81;
    }

    *buf = a2;
    *&buf[28] = a4;
    v15 = buf;
    *&v54 = a5;
LABEL_16:
    if (a4 == -1)
    {
      v16 = *(this + 1554);
      if (v16 == *(this + 1555))
      {
        if (v16 != 16)
        {
          v27 = v16 + 1;
          *(this + 1555) = v16 + 1;
          v28 = this + 24 * v16;
          *(v28 + 9) = v15;
          *(v28 + 20) = -1;
          *(v28 + 84) = vdup_n_s32(v7);
          *(this + 1554) = v27;
          return 1;
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n", "AGXGPURawCounterImpl.mm", 716, "addCounter", *v15);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v38 = *v15;
          *v43 = 136315906;
          v44 = "AGXGPURawCounterImpl.mm";
          v45 = 1024;
          v46 = 716;
          v47 = 2080;
          v48 = "addCounter";
          v49 = 2080;
          *v50 = v38;
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n", v43, 0x26u);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        v17 = *v15;
        *v43 = 136315906;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 716;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = v17;
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add metadata counter (%s)!\n";
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n", "AGXGPURawCounterImpl.mm", 710, "addCounter", *v15);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v37 = *v15;
          *v43 = 136315906;
          v44 = "AGXGPURawCounterImpl.mm";
          v45 = 1024;
          v46 = 710;
          v47 = 2080;
          v48 = "addCounter";
          v49 = 2080;
          *v50 = v37;
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n", v43, 0x26u);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        v25 = *v15;
        *v43 = 136315906;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 710;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = v25;
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Metadata (%s) counter must be added before any other counters!\n";
      }

      goto LABEL_80;
    }

    if (*(this + 1556))
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n", "AGXGPURawCounterImpl.mm", 801, "addCounter", *v15);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v36 = *v15;
        *v43 = 136315906;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 801;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = v36;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n", v43, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v24 = *v15;
      *v43 = 136315906;
      v44 = "AGXGPURawCounterImpl.mm";
      v45 = 1024;
      v46 = 801;
      v47 = 2080;
      v48 = "addCounter";
      v49 = 2080;
      *v50 = v24;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** HW counter (%s) must be added before any shader profiler counters!\n";
      goto LABEL_80;
    }

    if (*(this + 1554) >= 0x100u)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n", "AGXGPURawCounterImpl.mm", 807, "addCounter", *v15);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v39 = *v15;
        *v43 = 136315906;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 807;
        v47 = 2080;
        v48 = "addCounter";
        v49 = 2080;
        *v50 = v39;
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n", v43, 0x26u);
      }

      result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
      if (!result)
      {
        return result;
      }

      v26 = *v15;
      *v43 = 136315906;
      v44 = "AGXGPURawCounterImpl.mm";
      v45 = 1024;
      v46 = 807;
      v47 = 2080;
      v48 = "addCounter";
      v49 = 2080;
      *v50 = v26;
      v11 = MEMORY[0x277D86220];
      v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** Insufficient space to add HW counter (%s)!\n";
      goto LABEL_80;
    }

    if (a4)
    {
      if ((v7 & 0xF) != 0 || v7 - 65 <= 0xFFFFFFBF)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n", "AGXGPURawCounterImpl.mm", 819, "addCounter");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v43 = 136315650;
          v44 = "AGXGPURawCounterImpl.mm";
          v45 = 1024;
          v46 = 819;
          v47 = 2080;
          v48 = "addCounter";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n", v43, 0x1Cu);
        }

        result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
        if (!result)
        {
          return result;
        }

        *v43 = 136315650;
        v44 = "AGXGPURawCounterImpl.mm";
        v45 = 1024;
        v46 = 819;
        v47 = 2080;
        v48 = "addCounter";
        v11 = MEMORY[0x277D86220];
        v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be 16, 32, 48, or 64!\n";
        v13 = v43;
LABEL_13:
        v14 = 28;
LABEL_81:
        _os_log_impl(&dword_23C542000, v11, OS_LOG_TYPE_INFO, v12, v13, v14);
        return 0;
      }
    }

    else
    {
      v7 = 64;
    }

    if (v7 < 0x21 || (v15[6] & 0x10) == 0)
    {
      if (a4 < *(*(this + 1) + 676) || v7 == 64)
      {
        v32 = v7;
      }

      else
      {
        v32 = v7 + 16;
      }

      if (!perfCtrSamplerAddSourceCounter(*(this + 7), v15, v7, v32))
      {
        if (v15 == buf)
        {
          v33 = 0;
        }

        else
        {
          v33 = v15;
        }

        v34 = *(this + 1554);
        v35 = this + 24 * v34;
        *(v35 + 9) = v33;
        *(v35 + 20) = a4;
        *(v35 + 21) = v7;
        *(v35 + 22) = v32;
        *(this + 1554) = v34 + 1;
        return 1;
      }

      return 0;
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n", "AGXGPURawCounterImpl.mm", 825, "addCounter", a2);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v43 = 136315906;
      v44 = "AGXGPURawCounterImpl.mm";
      v45 = 1024;
      v46 = 825;
      v47 = 2080;
      v48 = "addCounter";
      v49 = 2080;
      *v50 = a2;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n", v43, 0x26u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *v43 = 136315906;
    v44 = "AGXGPURawCounterImpl.mm";
    v45 = 1024;
    v46 = 825;
    v47 = 2080;
    v48 = "addCounter";
    v49 = 2080;
    *v50 = a2;
    v11 = MEMORY[0x277D86220];
    v12 = "AGXGRC:AGXGRC:%s:%d:%s: *** counterWidth must be <= 32 as %s has only 32 valid bits\n";
    goto LABEL_80;
  }

  result = bsearch_b(a2, *(this + 7), *(this + 12), 0x18uLL, &__block_literal_global);
  if (!result)
  {
    return result;
  }

  v15 = (*(*(this + 1) + 128) + 56 * *(*(this + 5) - 0x5555555555555555 * ((result - *(this + 7)) >> 1)));
  a4 = *(v15 + 7);
  if (a4 != -2)
  {
    goto LABEL_16;
  }

  v42 = *(this + 1554);
  v18 = *(this + 1556);
  *(this + 1556) = 0;
  v40 = *(this + 9);
  v41 = v18;
  if (v40)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if ((*(*(this + 1) + 120) & 1) == 0)
  {
    v20 = v15[4];
    AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[28] = v20 / 0xA + 48;
    AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[29] = (v20 % 0xA) | 0x30;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if ((*(*(this + 1) + 120) & 1) == 0)
    {
      AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[21] = 48;
      AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName[22] = v22 | 0x30;
      if ((AGXGPURawCounterImpl::SourceImpl::addCounter(this, AGXGPURawCounterImpl::SourceImpl::addCounter(char const*,unsigned int,unsigned int,unsigned long long)::uscProfileDataName, 32, 0xFFFFFFFF, -1) & 1) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_35;
    }

    v23 = *(v15 + 8);
    if (v23 >= 0xA)
    {
      break;
    }

    if (!AGXGPURawCounterImpl::SourceImpl::addCounter(this, (&obfuscatedUSCProfileName(unsigned int,unsigned int)::obfuscatedUSCProfileNameList[v21])[v23], 32, 0xFFFFFFFF, -1))
    {
      goto LABEL_59;
    }

LABEL_35:
    v22 += v19;
    v21 += 10 * v19;
    if (v22 >= 8)
    {
      goto LABEL_59;
    }
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", "AGXGPURawCounterImpl.mm", 4722, "obfuscatedUSCProfileName", v23, 10, v22, 8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *v43 = 136316674;
    v44 = "AGXGPURawCounterImpl.mm";
    v45 = 1024;
    v46 = 4722;
    v47 = 2080;
    v48 = "obfuscatedUSCProfileName";
    v49 = 1024;
    *v50 = v23;
    *&v50[4] = 1024;
    *&v50[6] = 10;
    *v51 = 1024;
    *&v51[2] = v22;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = 8;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", v43, 0x34u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *v43 = 136316674;
    v44 = "AGXGPURawCounterImpl.mm";
    v45 = 1024;
    v46 = 4722;
    v47 = 2080;
    v48 = "obfuscatedUSCProfileName";
    v49 = 1024;
    *v50 = v23;
    *&v50[4] = 1024;
    *&v50[6] = 10;
    *v51 = 1024;
    *&v51[2] = v22;
    LOWORD(v52) = 1024;
    *(&v52 + 2) = 8;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, invalid uscIndex (%u >= %u) and/or invalid regIndex (%u >= %u)!\n", v43, 0x34u);
  }

LABEL_59:
  *(this + 1556) = v41;
  if (v40)
  {
    v29 = 4;
  }

  else
  {
    v29 = 8;
  }

  v30 = *(this + 1554);
  if (v29 + v42 == v30)
  {
    *(this + 1556) = v29 + v41;
    return 1;
  }

  bzero(this + 24 * v42 + 72, 24 * (v30 - v42));
  result = 0;
  *(this + 1554) = v42;
  return result;
}

uint64_t perfCtrSamplerAddSourceCounter(char a1, uint64_t a2, char a3, char a4)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  LODWORD(v6) = 7;
  BYTE4(v6) = a1;
  BYTE8(v6) = *(a2 + 28);
  BYTE9(v6) = a3;
  BYTE10(v6) = a4;
  HIDWORD(v6) = *(a2 + 48);
  *&v7 = *(a2 + 32);
  v4 = *(sAGXGPURawCounterImpl + 88);
  if (!v4)
  {
    return 5;
  }

  outputStructCnt = 64;
  return IOConnectCallStructMethod(v4, 0x105u, &v6, 0x40uLL, &v6, &outputStructCnt);
}

void AGXGPURawCounterImpl::SourceImpl::clearSelectedCounterList(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = sAGXGPURawCounterImpl;
  v3 = *(sAGXGPURawCounterImpl + 689);
  *(sAGXGPURawCounterImpl + 689) = 0;
  if (v3 == 1)
  {
    v4 = *(this + 1);
    if (*(v4 + 656))
    {
      if (*(v2 + 88))
      {
        v5 = 0;
        do
        {
          memset(v7, 0, sizeof(v7));
          LODWORD(v7[0]) = 6;
          BYTE4(v7[0]) = v5;
          v6 = *(v2 + 88);
          if (v6)
          {
            outputStructCnt = 64;
            IOConnectCallStructMethod(v6, 0x105u, v7, 0x40uLL, v7, &outputStructCnt);
            v2 = sAGXGPURawCounterImpl;
            v4 = *(this + 1);
          }

          ++v5;
        }

        while (v5 < *(v4 + 656));
      }
    }
  }

  bzero(this + 72, 0x180CuLL);
}

uint64_t AGXGPURawCounterImpl::SourceImpl::setEnabled(AGXGPURawCounterImpl::SourceImpl *this, int a2)
{
  if (!a2)
  {
    *(this + 1559) &= ~0x80000000;
LABEL_6:
    v2 = 1;
    goto LABEL_7;
  }

  v2 = *(this + 781);
  if (v2)
  {
    v2 = *(this + 1559);
    if (v2)
    {
      goto LABEL_6;
    }
  }

  LOBYTE(a2) = 0;
LABEL_7:
  *(this + 6228) = a2;
  return v2;
}

uint64_t AGXGPURawCounterImpl::SourceImpl::copyAvailableCounterList(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return *(a1 + 48);
  }

  v4 = malloc_type_malloc(*(a1 + 64), 0x10500409456A368uLL);
  *a2 = v4;
  memcpy(v4, *(a1 + 56), *(a1 + 64));
  result = *(a1 + 48);
  if (result)
  {
    v6 = *a2;
    v7 = *(a1 + 56);
    v8 = (*a2 + 8);
    v9 = *(a1 + 48);
    do
    {
      v10 = v6 + *v8 - v7;
      *(v8 - 1) = v6 + *(v8 - 1) - v7;
      *v8 = v10;
      v8 += 3;
      --v9;
    }

    while (v9);
  }

  return result;
}

void *AGXGPURawCounterImpl::SourceImpl::copyName(AGXGPURawCounterImpl::SourceImpl *this)
{
  v2 = malloc_type_malloc((*(this + 6) + 1), 0x100004077774924uLL);
  v3 = *(this + 2);
  v4 = (*(this + 6) + 1);

  return memcpy(v2, v3, v4);
}

void AGXGPURawCounterImpl::SourceImpl::~SourceImpl(void **this)
{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;
}

uint64_t AGXGPURawCounterImpl::populateFeaturesDict(AGXGPURawCounterImpl *this, NSMutableDictionary *a2)
{
  v3 = a2;
  [(NSMutableDictionary *)v3 setObject:*(this + 14) forKeyedSubscript:@"ConstantAGX_CoreConfig"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(*(*this + 104))(this)];
  [(NSMutableDictionary *)v3 setObject:v4 forKeyedSubscript:@"ConstantAGX_PostProcessBufferSizeMin"];

  [(NSMutableDictionary *)v3 setObject:&unk_284F29E20 forKeyedSubscript:@"ConstantAGX_PostProcessBufferSizeAlignment"];
  [(NSMutableDictionary *)v3 setObject:&unk_284F29E20 forKeyedSubscript:@"ConstantAGX_PostProcessBufferAddrAlignment"];
  [(NSMutableDictionary *)v3 setObject:&unk_284F29E38 forKeyedSubscript:@"ConstantAGX_SampleTypeList"];

  return 1;
}

BOOL AGXGPURawCounterImpl::stopSampling(AGXGPURawCounterImpl *this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 4062, "virtual BOOL AGXGPURawCounterImpl::stopSampling()");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(outputStruct[0]) = 136315650;
      *(outputStruct + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(outputStruct[0]) = 1024;
      *(outputStruct + 14) = 4062;
      WORD1(outputStruct[1]) = 2080;
      *(&outputStruct[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::stopSampling()";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", outputStruct, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(outputStruct[0]) = 136315650;
      *(outputStruct + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(outputStruct[0]) = 1024;
      *(outputStruct + 14) = 4062;
      WORD1(outputStruct[1]) = 2080;
      *(&outputStruct[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::stopSampling()";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", outputStruct, 0x1Cu);
    }

    abort();
  }

  v2 = *(this + 164);
  if (v2)
  {
    v12 = 0u;
    v13 = 0u;
    memset(outputStruct, 0, sizeof(outputStruct));
    LODWORD(outputStruct[0]) = 9;
    v3 = *(sAGXGPURawCounterImpl + 88);
    if (v3)
    {
      outputStructCnt = 64;
      IOConnectCallStructMethod(v3, 0x105u, outputStruct, 0x40uLL, outputStruct, &outputStructCnt);
      v4 = *(this + 164);
      if (!v4)
      {
LABEL_5:
        *(this + 344) = 256;
        return v2 != 0;
      }
    }

    else
    {
      v4 = v2;
    }

    v6 = 0;
    v7 = this + 144;
    do
    {
      v8 = *&v7[8 * v6];
      if (v8)
      {
        if ((*(*v8 + 144))(v8))
        {
          v12 = 0u;
          v13 = 0u;
          outputStruct[0] = 3uLL;
          outputStruct[1] = 0u;
          BYTE4(outputStruct[0]) = v6;
          *&outputStruct[1] = 0;
          v9 = *(sAGXGPURawCounterImpl + 88);
          if (v9)
          {
            outputStructCnt = 64;
            IOConnectCallStructMethod(v9, 0x105u, outputStruct, 0x40uLL, outputStruct, &outputStructCnt);
          }

          (*(**&v7[8 * v6] + 48))(*&v7[8 * v6]);
        }

        (*(**&v7[8 * v6] + 40))(*&v7[8 * v6], 0);
        v4 = *(this + 164);
      }

      ++v6;
    }

    while (v6 < v4);
    goto LABEL_5;
  }

  return v2 != 0;
}

uint64_t AGXGPURawCounterImpl::startSampling(AGXGPURawCounterImpl *this)
{
  v36 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3924, "virtual BOOL AGXGPURawCounterImpl::startSampling()");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3924;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::startSampling()";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3924;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "virtual BOOL AGXGPURawCounterImpl::startSampling()";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v2 = *(this + 164);
  if (!v2)
  {
    return 0;
  }

  if (*(this + 688) == 1)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", "AGXGPURawCounterImpl.mm", 3941, "startSampling");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3941;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "startSampling";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      LODWORD(buf[0]) = 136315650;
      *(buf + 4) = "AGXGPURawCounterImpl.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 3941;
      WORD1(buf[1]) = 2080;
      *(&buf[1] + 4) = "startSampling";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Sampling has been started! Stop sampling before starting again.\n", buf, 0x1Cu);
      return 0;
    }

    return result;
  }

  v4 = 0;
  v5 = 0;
  *(this + 689) = 1;
  v6 = MEMORY[0x277D86220];
  do
  {
    while (1)
    {
      v7 = *(this + v4 + 18);
      if (!v7)
      {
        break;
      }

      if (((*(*v7 + 48))(v7) & 1) == 0)
      {
        v2 = *(this + 164);
        break;
      }

      *(v7 + 6236) |= (*(*v7 + 128))(v7) >> 1 << 31;
      if (((*(*v7 + 128))(v7) & 4) != 0)
      {
        v8 = (*(*(v7 + 8) + 96) > 1u) << 31;
      }

      else
      {
        v8 = 0;
      }

      *(v7 + 6236) |= v8;
      result = (*(*v7 + 144))(v7);
      if (!result)
      {
        goto LABEL_51;
      }

      v9 = *(v7 + 6248);
      v10 = (*(*v7 + 144))(v7);
      memset(&buf[2], 0, 32);
      LODWORD(buf[0]) = 3;
      DWORD1(buf[0]) = v4;
      *(&buf[0] + 1) = v9;
      buf[1] = v10;
      result = *(sAGXGPURawCounterImpl + 88);
      if (!result)
      {
        goto LABEL_51;
      }

      outputStructCnt = 64;
      v11 = IOConnectCallStructMethod(result, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
      if (!v9 || v11)
      {
        v12 = 0;
        if (v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *(v7 + 6264) = *(&buf[1] + 1);
        *(v7 + 6272) = v9 + *(&buf[0] + 1);
        v12 = buf[1];
      }

      if (v12 != (*(*v7 + 176))(v7))
      {
        v13 = *MEMORY[0x277D85DF8];
        v14 = (*(*v7 + 176))(v7);
        fprintf(v13, "AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", "AGXGPURawCounterImpl.mm", 3998, "startSampling", v12, v14);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v22 = (*(*v7 + 176))(v7);
          LODWORD(buf[0]) = 136316162;
          *(buf + 4) = "AGXGPURawCounterImpl.mm";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 3998;
          WORD1(buf[1]) = 2080;
          *(&buf[1] + 4) = "startSampling";
          WORD6(buf[1]) = 1024;
          *(&buf[1] + 14) = v12;
          WORD1(buf[2]) = 1024;
          DWORD1(buf[2]) = v22;
          _os_log_error_impl(&dword_23C542000, v6, OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", buf, 0x28u);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v15 = (*(*v7 + 176))(v7);
          LODWORD(buf[0]) = 136316162;
          *(buf + 4) = "AGXGPURawCounterImpl.mm";
          WORD6(buf[0]) = 1024;
          *(buf + 14) = 3998;
          WORD1(buf[1]) = 2080;
          *(&buf[1] + 4) = "startSampling";
          WORD6(buf[1]) = 1024;
          *(&buf[1] + 14) = v12;
          WORD1(buf[2]) = 1024;
          DWORD1(buf[2]) = v15;
          _os_log_impl(&dword_23C542000, v6, OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Inconsistent sub-buffer count! (%u != %u)\n", buf, 0x28u);
        }
      }

      v16 = *(v7 + 6264);
      v17 = *(v7 + 6272);
      v18 = (*(*v7 + 176))(v7);
      result = (*(*v7 + 232))(v7, v16, v17, v18);
      if (!result)
      {
        goto LABEL_51;
      }

      v19 = (*(*v7 + 96))(v7);
      v20 = (*(*v7 + 128))(v7);
      v21 = (4 * v19) & 8 | v19 & 1 | (v19 >> 1) & 6 | (32 * ((v19 >> 4) & 3));
      if ((v19 & 0x80000000) != 0)
      {
        v21 |= 0x10u;
      }

      else if (!v21)
      {
        goto LABEL_50;
      }

      memset(&buf[1], 0, 48);
      LODWORD(buf[0]) = 5;
      DWORD1(buf[0]) = v4;
      DWORD2(buf[0]) = v21;
      HIDWORD(buf[0]) = (v20 << 6) & 0x180 | v20 & 1 | 0x40;
      (*(*v7 + 216))(v7, buf);
      result = *(sAGXGPURawCounterImpl + 88);
      if (!result)
      {
        goto LABEL_51;
      }

      outputStructCnt = 64;
      if (IOConnectCallStructMethod(result, 0x105u, buf, 0x40uLL, buf, &outputStructCnt))
      {
        goto LABEL_50;
      }

      ++v4;
      v2 = *(this + 164);
      v5 = 1;
      if (v4 >= v2)
      {
        goto LABEL_37;
      }
    }

    ++v4;
  }

  while (v4 < v2);
  if ((v5 & 1) == 0)
  {
LABEL_50:
    result = 0;
LABEL_51:
    *(this + 688) = 1;
    return result;
  }

LABEL_37:
  v23 = (*(*this + 56))(this);
  v24 = (*(*this + 72))(this);
  if ((v23 & 2) != 0)
  {
    v25 = 80;
  }

  else
  {
    v25 = 64;
  }

  LODWORD(buf[0]) = 4;
  DWORD1(buf[0]) = (v23 >> 1) & 8 | (((v23 >> 5) & 1) << 9) | v25 & 0xFFFFFFDF | (v23 >> 1) & 4 | (32 * (((v23 & 4) >> 2) & 1));
  WORD4(buf[0]) = v24 & ((v23 << 13) >> 15);
  v26 = *(sAGXGPURawCounterImpl + 88);
  if (v26)
  {
    outputStructCnt = 64;
    if (!IOConnectCallStructMethod(v26, 0x105u, buf, 0x40uLL, buf, &outputStructCnt))
    {
      LODWORD(buf[0]) = 8;
      v31 = *(sAGXGPURawCounterImpl + 88);
      if (v31)
      {
        outputStructCnt = 64;
        v32 = IOConnectCallStructMethod(v31, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        v33 = *(sAGXGPURawCounterImpl + 88);
        LODWORD(buf[0]) = 11;
        memset(buf + 4, 0, 48);
        buf[3] = 0u;
        if (v33)
        {
          outputStructCnt = 64;
          IOConnectCallStructMethod(v33, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        }

        if (!v32)
        {
          result = 1;
          goto LABEL_51;
        }
      }
    }
  }

  v27 = *(this + 164);
  if (v27)
  {
    for (i = 0; i < v27; ++i)
    {
      v29 = *(this + i + 18);
      if (v29)
      {
        (*(*v29 + 240))(v29);
        buf[0] = 3uLL;
        memset(&buf[1], 0, 48);
        BYTE4(buf[0]) = i;
        *&buf[1] = 0;
        v30 = *(sAGXGPURawCounterImpl + 88);
        if (v30)
        {
          outputStructCnt = 64;
          IOConnectCallStructMethod(v30, 0x105u, buf, 0x40uLL, buf, &outputStructCnt);
        }

        v27 = *(this + 164);
      }
    }
  }

  return 0;
}

uint64_t AGXGPURawCounterImpl::gpuPerfState(AGXGPURawCounterImpl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3917, "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v3 = "AGXGPURawCounterImpl.mm";
      v4 = 1024;
      v5 = 3917;
      v6 = 2080;
      v7 = "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "AGXGPURawCounterImpl.mm";
      v4 = 1024;
      v5 = 3917;
      v6 = 2080;
      v7 = "virtual uint32_t AGXGPURawCounterImpl::gpuPerfState() const";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  return *(this + 174);
}

uint64_t AGXGPURawCounterImpl::setGPUPerfState(AGXGPURawCounterImpl *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3909, "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3909;
      v7 = 2080;
      v8 = "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3909;
      v7 = 2080;
      v8 = "virtual BOOL AGXGPURawCounterImpl::setGPUPerfState(uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 174) = a2;
  return 1;
}

uint64_t AGXGPURawCounterImpl::flags(AGXGPURawCounterImpl *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3903, "virtual uint32_t AGXGPURawCounterImpl::flags() const");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v3 = "AGXGPURawCounterImpl.mm";
      v4 = 1024;
      v5 = 3903;
      v6 = 2080;
      v7 = "virtual uint32_t AGXGPURawCounterImpl::flags() const";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v3 = "AGXGPURawCounterImpl.mm";
      v4 = 1024;
      v5 = 3903;
      v6 = 2080;
      v7 = "virtual uint32_t AGXGPURawCounterImpl::flags() const";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  return *(this + 173);
}

uint64_t AGXGPURawCounterImpl::setFlags(AGXGPURawCounterImpl *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3890, "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3890;
      v7 = 2080;
      v8 = "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v4 = "AGXGPURawCounterImpl.mm";
      v5 = 1024;
      v6 = 3890;
      v7 = 2080;
      v8 = "virtual BOOL AGXGPURawCounterImpl::setFlags(uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  *(this + 173) = (*(*this + 40))(this) & a2;
  return 1;
}

uint64_t AGXGPURawCounterImpl::availableFlags(AGXGPURawCounterImpl *this)
{
  v1 = *(this + 23);
  if (v1 < 0xE)
  {
    v2 = 0;
  }

  else
  {
    v2 = 32 * (*(this + 24) > 1u);
  }

  v3 = v1 > 0xA;
  if (v1 <= 0xC)
  {
    v4 = 6;
  }

  else
  {
    v4 = 14;
  }

  return v4 | (16 * v3) | v2;
}

uint64_t AGXGPURawCounterImpl::setOptions(AGXGPURawCounterImpl *this, NSDictionary *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (sAGXGPURawCounterImpl != this)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3827, "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "AGXGPURawCounterImpl.mm";
      v24 = 1024;
      v25 = 3827;
      v26 = 2080;
      v27 = "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "AGXGPURawCounterImpl.mm";
      v24 = 1024;
      v25 = 3827;
      v26 = 2080;
      v27 = "virtual BOOL AGXGPURawCounterImpl::setOptions(NSDictionary *__strong)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v4 = v3;
  v5 = (*(*this + 40))(this);
  v6 = v5;
  if ((v5 & 2) != 0)
  {
    v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DisableOverlap"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    if ((v6 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }
  }

  v10 = [(NSDictionary *)v4 objectForKeyedSubscript:@"LockGPUPerfState"];
  v11 = [v10 unsignedShortValue];

  if (v11)
  {
    v12 = [(NSDictionary *)v4 objectForKeyedSubscript:@"LockGPUPerfState"];
    v13 = [v12 shortValue];

    (*(*this + 64))(this, v13 & ~(v13 >> 31));
    v7 = v7 | 4;
  }

LABEL_11:
  if ((v6 & 8) != 0)
  {
    v14 = [(NSDictionary *)v4 objectForKeyedSubscript:@"DisableMCH"];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      v7 = v7 | 8;
    }

    else
    {
      v7 = v7;
    }
  }

  if ((v6 & 0x10) != 0)
  {
    v16 = [(NSDictionary *)v4 objectForKeyedSubscript:@"ReduceCDMCluster"];
    v17 = [v16 BOOLValue];

    if (v17)
    {
      v7 = v7 | 0x10;
    }

    else
    {
      v7 = v7;
    }
  }

  if ((v6 & 0x20) != 0)
  {
    v18 = [(NSDictionary *)v4 objectForKeyedSubscript:@"SingleVDMChannel"];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v7 = v7 | 0x20;
    }

    else
    {
      v7 = v7;
    }
  }

  v20 = (*(*this + 48))(this, v7);

  return v20;
}

uint64_t AGXGPURawCounterImpl::sourceList(int64x2_t *a1, uint64_t a2, unsigned int a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (sAGXGPURawCounterImpl != a1)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", "AGXGPURawCounterImpl.mm", 3805, "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "AGXGPURawCounterImpl.mm";
      v21 = 1024;
      v22 = 3805;
      v23 = 2080;
      v24 = "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v20 = "AGXGPURawCounterImpl.mm";
      v21 = 1024;
      v22 = 3805;
      v23 = 2080;
      v24 = "virtual uint32_t AGXGPURawCounterImpl::sourceList(Source **, uint32_t)";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: !!! AGXGPURawCounterImpl is not initialized!\n", buf, 0x1Cu);
    }

    abort();
  }

  v4 = a1[41].u32[0];
  if (!v4)
  {
    return 0;
  }

  if (a2)
  {
    result = 0;
    v6 = a1 + 9;
    do
    {
      if (v6->i64[0])
      {
        if (result < a3)
        {
          *(a2 + 8 * result) = v6->i64[0];
        }

        result = (result + 1);
      }

      v6 = (v6 + 8);
      --v4;
    }

    while (v4);
  }

  else
  {
    if (v4 >= 8)
    {
      v7 = v4 & 0xFFFFFFF8;
      v8 = a1 + 11;
      v9 = 0uLL;
      v10 = v7;
      v11 = 0uLL;
      do
      {
        v12 = v8[-2];
        v13 = v8[-1];
        v14 = *v8;
        v15 = v8[1];
        v8 += 4;
        v9 = vsubq_s32(v9, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v12), vceqzq_s64(v13))));
        v11 = vsubq_s32(v11, vmvnq_s8(vuzp1q_s32(vceqzq_s64(v14), vceqzq_s64(v15))));
        v10 -= 8;
      }

      while (v10);
      result = vaddvq_s32(vaddq_s32(v11, v9));
      if (v7 == v4)
      {
        return result;
      }
    }

    else
    {
      v7 = 0;
      LODWORD(result) = 0;
    }

    v16 = v4 - v7;
    v17 = &a1[9].i64[v7];
    do
    {
      if (*v17++)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      --v16;
    }

    while (v16);
  }

  return result;
}

void *AGXGPURawCounterImpl::copyDeviceName(AGXGPURawCounterImpl *this)
{
  v2 = strlen(this + 24) + 1;
  result = malloc_type_malloc(v2, 0x100004077774924uLL);
  if (result)
  {

    return memcpy(result, this + 24, v2);
  }

  return result;
}

void AGXGPURawCounterImpl::~AGXGPURawCounterImpl(id *this)
{

  JUMPOUT(0x23EED55C0);
}

{
}

uint64_t AGXGPURawCounterImpl::SourceImpl::SourceImpl(uint64_t a1, uint64_t a2, int a3, char *__s, uint64_t a5, unsigned int a6, uint64_t a7)
{
  *a1 = &unk_284F28E50;
  *(a1 + 8) = a2;
  *(a1 + 28) = a3;
  *(a1 + 32) = *(__s + 36);
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 6232) = 0;
  *(a1 + 6240) = 0;
  *(a1 + 6280) = 0;
  *(a1 + 6221) = 0;
  *(a1 + 6216) = 0;
  *(a1 + 6256) = 0;
  *(a1 + 6264) = 0;
  *(a1 + 6248) = 0;
  *(a1 + 6288) = *(__s + 8);
  *(a1 + 6296) = a7;
  *(a1 + 6328) = 0;
  *(a1 + 6312) = 0;
  *(a1 + 6320) = 0;
  *(a1 + 6304) = 0;
  *(a1 + 6352) = 0u;
  *(a1 + 6336) = 0u;
  v55[1] = 0;
  v12 = strlen(__s);
  *(a1 + 24) = v12;
  v13 = (((v12 + 1) + 7) & 0x1FFFFFFF8) + 24 * a6;
  v14 = *(a2 + 128);
  if (a6)
  {
    if (a6 == 1)
    {
      v15 = 0;
LABEL_7:
      v20 = a6 - v15;
      v21 = (a5 + 4 * v15);
      v22 = vdupq_n_s64(7uLL);
      v23 = vdupq_n_s64(0x1FFFFFFF8uLL);
      do
      {
        v24 = *v21++;
        v25 = vandq_s8(vaddw_u32(v22, vadd_s32(*(v14 + 56 * v24 + 16), 0x100000001)), v23);
        v13 += v25.i64[1] + v25.i64[0];
        --v20;
      }

      while (v20);
      goto LABEL_9;
    }

    v16 = 0;
    v15 = a6 & 0xFFFFFFFE;
    v17 = (a5 + 4);
    v18 = v15;
    do
    {
      v19 = v14 + 56 * *(v17 - 1);
      v13 += (((*(v19 + 20) + 1) + 7) & 0x1FFFFFFF8) + (((*(v19 + 16) + 1) + 7) & 0x1FFFFFFF8);
      v16 += (((*(v14 + 56 * *v17 + 20) + 1) + 7) & 0x1FFFFFFF8) + (((*(v14 + 56 * *v17 + 16) + 1) + 7) & 0x1FFFFFFF8);
      v17 += 2;
      v18 -= 2;
    }

    while (v18);
    v13 += v16;
    if (v15 != a6)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  LOBYTE(v55[0]) = 1;
  HIDWORD(v55[0]) = 8;
  v55[2] = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v55[3] = 0;
  malloc_type_posix_memalign(&v55[1], 8uLL, v55[2], 0x61E504A1uLL);
  bzero(v55[1], v55[2]);
  v26 = *(a1 + 24);
  v27 = (v26 + 1);
  v28 = StackAllocator::reserve(v55, v26 + 1);
  v29 = v28;
  if (v27 && v28)
  {
    memcpy(v28, __s, v27);
  }

  *(a1 + 16) = v29;
  v30 = StackAllocator::reserve(v55, 24 * *(a1 + 48));
  *(a1 + 56) = v30;
  if (*(a1 + 48))
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v34 = v14 + 56 * *(*(a1 + 40) + 4 * v32);
      v35 = *(a1 + 56);
      v36 = *v34;
      v37 = *(v34 + 16);
      v38 = (v37 + 1);
      v39 = StackAllocator::reserve(v55, v37 + 1);
      v40 = v39;
      if (v38)
      {
        v41 = v39 == 0;
      }

      else
      {
        v41 = 1;
      }

      if (!v41)
      {
        memcpy(v39, v36, v38);
      }

      *(v35 + v31) = v40;
      v42 = *(v34 + 8);
      v43 = *(v34 + 20);
      v44 = (v43 + 1);
      v45 = StackAllocator::reserve(v55, v43 + 1);
      v46 = v45;
      if (v44)
      {
        v47 = v45 == 0;
      }

      else
      {
        v47 = 1;
      }

      if (!v47)
      {
        memcpy(v45, v42, v44);
      }

      v33 = v35 + v31;
      *(v33 + 8) = v46;
      *(v33 + 16) = *(v34 + 24);
      ++v32;
      v31 += 24;
    }

    while (v32 < *(a1 + 48));
    v30 = *(a1 + 56);
  }

  if (v55[1])
  {
    v48 = LODWORD(v55[1]) + LODWORD(v55[3]);
  }

  else
  {
    v48 = 0;
  }

  *(a1 + 64) = v48 - v30;
  bzero((a1 + 72), 0x1800uLL);
  LOBYTE(v55[0]) = 0;
  memset(v55 + 4, 0, 28);
  v49 = *(a1 + 6288);
  v50 = ((24 * *(*(a1 + 6296) + 40) + 2064) * v49);
  *(a1 + 6328) = v50;
  v51 = malloc_type_malloc(v50, 0x100004000313F17uLL);
  v52 = (8 * v49);
  *(a1 + 6320) = v51;
  *(a1 + 6336) = v51;
  *(a1 + 6344) = &v51[v52];
  v53 = &v51[v52 + v52];
  *(a1 + 6352) = v53;
  *(a1 + 6360) = &v53[v49 << 11];
  if (LOBYTE(v55[0]) == 1)
  {
    free(v55[1]);
  }

  return a1;
}

void sub_23C54BCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12)
{
  if (a11 == 1)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AGXGPURawCounterImpl::init(AGXGPURawCounterImpl *this, uint64_t a2)
{
  v2 = a2;
  v244[325] = *MEMORY[0x277D85DE8];
  bzero(__s1, 0xB00uLL);
  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v234 = 0u;
  v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  v226 = 0u;
  v227 = 0u;
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  *v210 = 0u;
  v211 = 0u;
  memset(v209, 0, sizeof(v209));
  *(this + 2) = v2;
  v4 = IOGPUDeviceCreate();
  *(this + 2) = v4;
  if (!v4)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n", "AGXGPURawCounterImpl.mm", 2767, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2767;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2767;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** (_deviceRef = IOGPUDeviceCreate(_acceleratorPort)) != NULL\n";
LABEL_11:
    _os_log_impl(&dword_23C542000, v5, OS_LOG_TYPE_INFO, v6, buf, 0x1Cu);
    goto LABEL_12;
  }

  if (IOGPUDeviceGetName())
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n", "AGXGPURawCounterImpl.mm", 2770, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2770;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2770;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** IOGPUDeviceGetName(_deviceRef, _deviceName, sizeof(_deviceName)) == kIOReturnSuccess\n";
    goto LABEL_11;
  }

  Connect = IOGPUDeviceGetConnect();
  *(this + 22) = Connect;
  if (!Connect)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n", "AGXGPURawCounterImpl.mm", 2773, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2773;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2773;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** (_sharedConnection = IOGPUDeviceGetConnect(_deviceRef)) != 0\n";
    goto LABEL_11;
  }

  *outputStructCnt = 64;
  memset(buf, 0, 64);
  buf[4] = 1;
  v10 = Connect;
  if (IOConnectCallStructMethod(Connect, 0x105u, buf, 0x40uLL, buf, outputStructCnt))
  {
    memset(&buf[4], 0, 60);
    *buf = 11;
    IOConnectCallStructMethod(v10, 0x105u, buf, *outputStructCnt, buf, outputStructCnt);
    goto LABEL_12;
  }

  CFProperty = IORegistryEntryCreateCFProperty(*(this + 2), @"AbsTimeOffset", 0, 0);
  v12 = CFProperty;
  if (!CFProperty || !CFNumberGetValue(CFProperty, kCFNumberSInt64Type, this + 704))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", "AGXGPURawCounterImpl.mm", 2785, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2785;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2785;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfAbsTimeOffset = (CFNumberRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @AbsTimeOffset, NULL, 0)) != NULL) && CFNumberGetValue(cfAbsTimeOffset, kCFNumberSInt64Type, (void*)(&_samplingState.absTimeOffset))\n", buf, 0x1Cu);
    }

    if (!v12)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  CFRelease(v12);
  v13 = *(this + 22);
  v14 = *MEMORY[0x277CBECE8];
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0x4000);
  memset(buf, 0, 64);
  *buf = 12;
  *&buf[8] = CFDataGetMutableBytePtr(Mutable);
  *&buf[16] = 0x4000;
  if (!v13 && (v13 = *(sAGXGPURawCounterImpl + 88)) == 0 || (*outputStructCnt = 64, IOConnectCallStructMethod(v13, 0x105u, buf, 0x40uLL, buf, outputStructCnt)))
  {
    v12 = 0;
LABEL_27:
    v16 = 1;
    goto LABEL_28;
  }

  CFDataSetLength(Mutable, *&buf[16]);
  v12 = CFPropertyListCreateWithData(v14, Mutable, 0, 0, 0);
  CFRelease(Mutable);
  if (!v12)
  {
    goto LABEL_27;
  }

  Value = CFDictionaryGetValue(v12, @"num_cores");
  if (!Value || !CFNumberGetValue(Value, kCFNumberSInt32Type, this + 100) || (v18 = CFDictionaryGetValue(v12, @"num_mgpus")) == 0 || !CFNumberGetValue(v18, kCFNumberSInt32Type, this + 96) || (v19 = CFDictionaryGetValue(v12, @"gpu_gen")) == 0 || !CFNumberGetValue(v19, kCFNumberSInt32Type, this + 92))
  {
    v16 = 0;
LABEL_28:
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", "AGXGPURawCounterImpl.mm", 2799, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2799;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2799;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreConfig = createInternalCoreConfigDict(_sharedConnection)) != NULL) && ((cfCoreNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_cores)) != NULL) && CFNumberGetValue(cfCoreNum, kCFNumberSInt32Type, (void*)(&_coreNum)) && ((cfMGPUNum = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @num_mgpus)) != NULL) && CFNumberGetValue(cfMGPUNum, kCFNumberSInt32Type, (void*)(&_mgpuNum)) && ((cfGPUGen = (CFNumberRef)CFDictionaryGetValue(cfCoreConfig, @gpu_gen)) != NULL) && CFNumberGetValue(cfGPUGen, kCFNumberSInt32Type, (void*)(&_gpuGeneration))\n", buf, 0x1Cu);
    }

    if (v16)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

  *(this + 26) = *(this + 25) / *(this + 24);
  v20 = CFDictionaryGetValue(v12, @"core_mask_list");
  v21 = v20;
  if (v20)
  {
    Count = CFArrayGetCount(v20);
    *outputStructCnt = 0;
    *(this + 27) = 0;
    v23 = Count;
    if (Count)
    {
      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v21, v24);
        if (!ValueAtIndex || !CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, outputStructCnt))
        {
          break;
        }

        v26 = vcnt_s8(*outputStructCnt);
        v26.i16[0] = vaddlv_u8(v26);
        *(this + 27) += v26.i32[0];
        if (v23 == ++v24)
        {
          goto LABEL_56;
        }
      }

      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", "AGXGPURawCounterImpl.mm", 2825, "init");
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2825;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", buf, 0x1Cu);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2825;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfCoreMask = (CFNumberRef)CFArrayGetValueAtIndex(cfCoreMaskList, i)) != NULL) && CFNumberGetValue(cfCoreMask, kCFNumberSInt32Type, (void*)(&coreMask))\n", buf, 0x1Cu);
      }

LABEL_39:
      CFRelease(v12);
      goto LABEL_12;
    }
  }

  else
  {
    *(this + 27) = *(this + 25);
  }

LABEL_56:
  objc_storeStrong(this + 14, v12);
  CFRelease(v12);
  v27 = (this + 656);
  if (perfCtrSamplerGetSourceNum(this + 164, *(this + 22)))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n", "AGXGPURawCounterImpl.mm", 2843, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2843;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2843;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceNum(&_sourceNum, _sharedConnection) == KERN_SUCCESS\n";
    goto LABEL_11;
  }

  if (*v27 >= 0x41)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n", "AGXGPURawCounterImpl.mm", 2845, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2845;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2845;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v5 = MEMORY[0x277D86220];
    v6 = "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceNum <= AGXGPURawCounterImpl::kSourceNumMax\n";
    goto LABEL_11;
  }

  if (!*v27)
  {
LABEL_319:
    v7 = 1;
    return v7 & 1;
  }

  v28 = IORegistryEntryCreateCFProperty(*(this + 2), @"PerfCtrPartitionInfoList", 0, 0);
  v29 = v28;
  if (!v28 || (v30 = CFArrayGetCount(v28), (*(this + 168) = v30) == 0) || (v31 = malloc_type_malloc(44 * v30, 0x1000040D4159EFEuLL), (*(this + 83) = v31) == 0))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n", "AGXGPURawCounterImpl.mm", 2860, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2860;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2860;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      v55 = MEMORY[0x277D86220];
      v56 = "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfPartitionInfoList = (CFArrayRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @PerfCtrPartitionInfoList, NULL, 0)) != NULL) && ((_partitionInfoNum = (uint32_t)CFArrayGetCount(cfPartitionInfoList)) != 0) && ((_partitionInfoList = (PartitionInfo*)malloc(sizeof(PartitionInfo) * _partitionInfoNum)) != NULL)\n";
      goto LABEL_114;
    }

    goto LABEL_115;
  }

  bzero(v31, 44 * *(this + 168));
  v32 = 2;
  if (*(this + 23) >= 0xEu)
  {
    if (*(this + 24) < 2u)
    {
      v32 = 2;
    }

    else
    {
      v32 = 3;
    }
  }

  *(this + 169) = v32;
  if (*(this + 168))
  {
    v33 = 0;
    while (1)
    {
      v34 = CFArrayGetValueAtIndex(v29, v33);
      v35 = v34;
      if (!v34)
      {
        break;
      }

      v36 = CFDictionaryGetValue(v34, @"index");
      v37 = CFDictionaryGetValue(v35, @"name");
      v38 = CFDictionaryGetValue(v35, @"free_num");
      v39 = CFDictionaryGetValue(v35, @"source_mask");
      v40 = v39;
      *outputStructCnt = 0;
      if (!v36 && !v38 && !v39)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n", "AGXGPURawCounterImpl.mm", 2878, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2878;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n", buf, 0x1Cu);
        }

        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_115;
        }

        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2878;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        v55 = MEMORY[0x277D86220];
        v56 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfIndex != NULL) || (cfFreeNum != NULL) || (cfSourceMask != NULL)\n";
        goto LABEL_114;
      }

      if (!CFNumberGetValue(v36, kCFNumberSInt32Type, outputStructCnt))
      {
        goto LABEL_117;
      }

      v41 = *outputStructCnt;
      if (*outputStructCnt >= *(this + 168))
      {
        goto LABEL_117;
      }

      if (v37)
      {
        if (!CFStringGetCString(v37, (*(this + 83) + 44 * *outputStructCnt + 4), 32, 0x8000100u))
        {
          goto LABEL_117;
        }

        v41 = *outputStructCnt;
      }

      if (!CFNumberGetValue(v38, kCFNumberSInt32Type, (*(this + 83) + 44 * v41 + 36)) || !CFNumberGetValue(v40, kCFNumberSInt32Type, (*(this + 83) + 44 * *outputStructCnt + 40)))
      {
LABEL_117:
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n", "AGXGPURawCounterImpl.mm", 2884, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2884;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2884;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          v55 = MEMORY[0x277D86220];
          v56 = "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue (cfIndex, kCFNumberSInt32Type, &index) && (index < _partitionInfoNum) && ((cfName == NULL) || CFStringGetCString(cfName, _partitionInfoList[index].name, sizeof(_partitionInfoList[index].name), kCFStringEncodingUTF8)) && CFNumberGetValue (cfFreeNum, kCFNumberSInt32Type, &_partitionInfoList[index].availableCounterNum) && CFNumberGetValue (cfSourceMask, kCFNumberSInt32Type, &_partitionInfoList[index].sourceMask)\n";
          goto LABEL_114;
        }

LABEL_115:
        if (!v29)
        {
          goto LABEL_12;
        }

LABEL_116:
        CFRelease(v29);
        goto LABEL_12;
      }

      if (++v33 >= *(this + 168))
      {
        goto LABEL_84;
      }
    }

    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** info != NULL\n", "AGXGPURawCounterImpl.mm", 2870, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AGXGPURawCounterImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2870;
      *&buf[18] = 2080;
      *&buf[20] = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** info != NULL\n", buf, 0x1Cu);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_115;
    }

    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2870;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    v55 = MEMORY[0x277D86220];
    v56 = "AGXGRC:AGXGRC:%s:%d:%s: *** info != NULL\n";
LABEL_114:
    _os_log_impl(&dword_23C542000, v55, OS_LOG_TYPE_INFO, v56, buf, 0x1Cu);
    goto LABEL_115;
  }

LABEL_84:
  CFRelease(v29);
  v42 = objc_autoreleasePoolPush();
  v43 = IORegistryEntryCreateCFProperty(*(this + 2), @"MetalPluginName", 0, 0);
  v29 = v43;
  if (!v43 || !CFStringGetCString(v43, buf, 256, 0x8000100u))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", "AGXGPURawCounterImpl.mm", 2904, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2904;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2904;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** ((cfMmetalPluginName = (CFStringRef)IORegistryEntryCreateCFProperty(_acceleratorPort, @MetalPluginName, NULL, 0)) != NULL) && CFStringGetCString(cfMmetalPluginName, metalPluginName, sizeof(metalPluginName), kCFStringEncodingUTF8)\n", outputStructCnt, 0x1Cu);
    }

    objc_autoreleasePoolPop(v42);
    if (!v29)
    {
      goto LABEL_12;
    }

    goto LABEL_116;
  }

  CFRelease(v29);
  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"/AppleInternal/Library/AGX/Performance/%s/AGXMetalPerfCounters.plist", buf];
  v45 = v44;
  if (!v44)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** plistPath != nil\n", "AGXGPURawCounterImpl.mm", 2910, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2910;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** plistPath != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2910;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** plistPath != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_266;
  }

  v46 = v44;
  theDict = cfDictionaryCreateFromPlist([v45 UTF8String]);
  if (theDict)
  {
    goto LABEL_88;
  }

  v57 = MEMORY[0x277CCA8D8];
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%s.bundle", buf, 0];
  v59 = [v57 bundleWithPath:v58];

  if (!v59)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** driverBundle != nil\n", "AGXGPURawCounterImpl.mm", 2921, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2921;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2921;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_266;
  }

  v60 = [v59 pathForResource:@"AGXMetalPerfCounters" ofType:@"plist"];

  v61 = v60;
  theDict = cfDictionaryCreateFromPlist([v60 UTF8String]);

  if (theDict)
  {
    v45 = v60;
    goto LABEL_88;
  }

  v145 = MEMORY[0x277CCA8D8];
  v146 = [MEMORY[0x277CCACA8] stringWithFormat:@"/System/Library/Extensions/%s.bundle", buf, 0];
  v147 = [v145 bundleWithPath:v146];

  if (!v147)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** driverBundle != nil\n", "AGXGPURawCounterImpl.mm", 2935, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2935;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2935;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** driverBundle != nil\n", outputStructCnt, 0x1Cu);
    }

    goto LABEL_265;
  }

  v45 = [v147 pathForResource:@"AGXMetalPerfCountersExternal" ofType:@"plist"];

  v148 = v45;
  theDict = cfDictionaryCreateFromPlist([v45 UTF8String]);
  if (!theDict)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", "AGXGPURawCounterImpl.mm", 2941, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2941;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2941;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfDict = cfDictionaryCreateFromPlist([plistPath UTF8String])) != NULL\n", outputStructCnt, 0x1Cu);
    }

    v60 = v45;
LABEL_265:

LABEL_266:
    objc_autoreleasePoolPop(v42);
    goto LABEL_12;
  }

  *(this + 120) = 1;

LABEL_88:
  objc_autoreleasePoolPop(v42);
  v47 = *v27;
  if (*v27)
  {
    v48 = 0;
    v49 = __s1;
    do
    {
      if (perfCtrSamplerGetSourceInfo(v48, v49, *(this + 22)))
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", "AGXGPURawCounterImpl.mm", 2959, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2959;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2959;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** perfCtrSamplerGetSourceInfo(sourceIdx, &sourceInfo, _sharedConnection) == KERN_SUCCESS\n", buf, 0x1Cu);
        }

        theString2 = 0;
        goto LABEL_342;
      }

      ++v48;
      v47 = *v27;
      v49 += 11;
    }

    while (v48 < *v27);
  }

  buf[0] = 0;
  memset(&buf[4], 0, 28);
  if (v47 == 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = ~(-1 << v47) & 6;
  }

  v193 = v50;
  if (*(this + 120))
  {
    v51 = "_423ccc54aeb6a01f9abb7b533d6542a7d502c505be6e14c69056cc6886c4d1b5";
  }

  else
  {
    v51 = "GBL_USC_PROFILE_DATA_00_USC_00";
  }

  theString2 = CFStringCreateWithCString(v14, v51, 0x8000100u);
  if (!theString2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", "AGXGPURawCounterImpl.mm", 2982, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2982;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 2982;
      v206 = 2080;
      v207 = "init";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfShaderProfilerCounterName = CFStringCreateWithCString(kCFAllocatorDefault, shaderProfilerCounterName, kCFStringEncodingUTF8)) != NULL\n", outputStructCnt, 0x1Cu);
    }

    theString2 = 0;
    goto LABEL_284;
  }

  v52 = *v27;
  if (!v52)
  {
    v54 = 0;
    goto LABEL_166;
  }

  if (v52 > 7)
  {
    v53 = v52 & 0xFFFFFFF8;
    v63 = v244;
    v64 = 0uLL;
    v65.i64[0] = 0x1F0000001FLL;
    v65.i64[1] = 0x1F0000001FLL;
    v66 = v53;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
    do
    {
      v70.i32[0] = *(v63 - 44);
      v70.i32[1] = *(v63 - 33);
      v70.i32[2] = *(v63 - 22);
      v70.i32[3] = *(v63 - 11);
      v71.i32[0] = *v63;
      v71.i32[1] = v63[11];
      v71.i32[2] = v63[22];
      v71.i32[3] = v63[33];
      v72 = vbicq_s8(v70, vceqzq_s32(vandq_s8(v70, v65)));
      v73 = vbicq_s8(v71, vceqzq_s32(vandq_s8(v71, v65)));
      v74.i64[0] = v72.u32[0];
      v74.i64[1] = v72.u32[1];
      v75 = v74;
      v74.i64[0] = v72.u32[2];
      v74.i64[1] = v72.u32[3];
      v76 = v74;
      v74.i64[0] = v73.u32[0];
      v74.i64[1] = v73.u32[1];
      v77 = v74;
      v74.i64[0] = v73.u32[2];
      v74.i64[1] = v73.u32[3];
      v67 = vorrq_s8(v67, v76);
      v64 = vorrq_s8(v64, v75);
      v69 = vorrq_s8(v69, v74);
      v68 = vorrq_s8(v68, v77);
      v63 += 88;
      v66 -= 8;
    }

    while (v66);
    v78 = vorrq_s8(vorrq_s8(v68, v64), vorrq_s8(v69, v67));
    v54 = vorr_s8(*v78.i8, *&vextq_s8(v78, v78, 8uLL));
    if (v53 == v52)
    {
      goto LABEL_166;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v79 = v52 - v53;
  v80 = &__s1[11 * v53 + 10];
  do
  {
    v82 = *v80;
    v80 += 11;
    LODWORD(v81) = v82;
    if ((v82 & 0x1F) != 0)
    {
      v81 = v81;
    }

    else
    {
      v81 = 0;
    }

    *&v54 |= v81;
    --v79;
  }

  while (v79);
LABEL_166:
  *&buf[4] = 8;
  *&buf[16] = 0;
  theArray = CFDictionaryGetValue(theDict, @"DeviceCounters");
  if (theArray && (v83 = CFArrayGetCount(theArray), (v197 = v83) != 0))
  {
    v194 = 0;
    v195 = 0;
    v84 = 1;
    while (2)
    {
      v85 = 0;
      v198 = 0;
      v196 = v84;
      do
      {
        v87 = CFArrayGetValueAtIndex(theArray, v85);
        if (v87 && (v88 = CFDictionaryGetValue(theDict, v87), (v89 = v88) != 0))
        {
          v90 = CFDictionaryGetValue(v88, @"Partition");
          v91 = CFDictionaryGetValue(v89, @"Select");
          v92 = &stru_284F298A0;
          if ((*(this + 120) & 1) == 0)
          {
            v92 = CFDictionaryGetValue(v89, @"Description");
          }

          v93 = CFDictionaryGetValue(v89, @"Flag");
          v94 = 1;
        }

        else
        {
          v90 = 0;
          v94 = 0;
          v91 = 0;
          v93 = 0;
          if (*(this + 120))
          {
            v92 = &stru_284F298A0;
          }

          else
          {
            v92 = 0;
          }
        }

        valuePtr = 0;
        if (!v94 || !v90 || !v91 || !v92)
        {
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n", "AGXGPURawCounterImpl.mm", 3026, "init");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v204 = 1024;
            v205 = 3026;
            v206 = 2080;
            v207 = "init";
            _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n", outputStructCnt, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v204 = 1024;
            v205 = 3026;
            v206 = 2080;
            v207 = "init";
            v143 = MEMORY[0x277D86220];
            v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrInfo != NULL) && (cfPerfCtrPartition != NULL) && (cfPerfCtrSelect != NULL) && (cfPerfCtrDesc != NULL)\n";
            goto LABEL_283;
          }

          goto LABEL_284;
        }

        if (!CFNumberGetValue(v90, kCFNumberSInt32Type, &valuePtr + 4) || (v95 = HIDWORD(valuePtr), HIDWORD(valuePtr) >= *(this + 168)))
        {
          fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n", "AGXGPURawCounterImpl.mm", 3027, "init");
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v204 = 1024;
            v205 = 3027;
            v206 = 2080;
            v207 = "init";
            _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n", outputStructCnt, 0x1Cu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *outputStructCnt = 136315650;
            *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
            v204 = 1024;
            v205 = 3027;
            v206 = 2080;
            v207 = "init";
            v143 = MEMORY[0x277D86220];
            v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** CFNumberGetValue(cfPerfCtrPartition, kCFNumberSInt32Type, &perfCtrPartition) && (perfCtrPartition < _partitionInfoNum)\n";
            goto LABEL_283;
          }

          goto LABEL_284;
        }

        if (v93)
        {
          if (!CFNumberGetValue(v93, kCFNumberSInt32Type, &valuePtr))
          {
            fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n", "AGXGPURawCounterImpl.mm", 3028, "init");
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *outputStructCnt = 136315650;
              *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
              v204 = 1024;
              v205 = 3028;
              v206 = 2080;
              v207 = "init";
              _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n", outputStructCnt, 0x1Cu);
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *outputStructCnt = 136315650;
              *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
              v204 = 1024;
              v205 = 3028;
              v206 = 2080;
              v207 = "init";
              v143 = MEMORY[0x277D86220];
              v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (cfPerfCtrFlag == NULL) || CFNumberGetValue(cfPerfCtrFlag, kCFNumberSInt32Type, &perfCtrFlag)\n";
              goto LABEL_283;
            }

            goto LABEL_284;
          }

          v95 = HIDWORD(valuePtr);
        }

        v96 = *(*(this + 83) + 44 * v95 + 40);
        if (v96)
        {
          if (v196)
          {
            Length = CFStringGetLength(v87);
            *&buf[16] += ((Length + 1) + *&buf[4] - 1) & -*&buf[4];
            v98 = CFStringGetLength(v92);
            *&buf[16] += ((v98 + 1) + *&buf[4] - 1) & -*&buf[4];
            v194 |= v96;
            v86 = v195 || CFStringCompare(v87, theString2, 0) == kCFCompareEqualTo;
            v195 = v86;
          }

          else
          {
            v99 = *(this + 16);
            v100 = CFStringGetLength(v87);
            v101 = v99 + 56 * v198;
            *(v101 + 16) = v100;
            v102 = StackAllocator::reserve(buf, v100 + 1);
            *v101 = v102;
            if (!v102)
            {
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n", "AGXGPURawCounterImpl.mm", 3063, "init");
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3063;
                v206 = 2080;
                v207 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n", outputStructCnt, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3063;
                v206 = 2080;
                v207 = "init";
                v143 = MEMORY[0x277D86220];
                v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name = (char*)(allocator.reserve(counterDesc.nameLen + 1))) != NULL\n";
                goto LABEL_283;
              }

              goto LABEL_284;
            }

            CFStringGetCString(v87, v102, (*(v101 + 16) + 1), 0x8000100u);
            v103 = CFStringGetLength(v92);
            *(v101 + 20) = v103;
            v104 = StackAllocator::reserve(buf, v103 + 1);
            *(v101 + 8) = v104;
            if (!v104)
            {
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n", "AGXGPURawCounterImpl.mm", 3068, "init");
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3068;
                v206 = 2080;
                v207 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n", outputStructCnt, 0x1Cu);
              }

              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3068;
                v206 = 2080;
                v207 = "init";
                v143 = MEMORY[0x277D86220];
                v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.description = (char*)(allocator.reserve(counterDesc.descriptionLen + 1))) != NULL\n";
                goto LABEL_283;
              }

              goto LABEL_284;
            }

            CFStringGetCString(v92, v104, (*(v101 + 20) + 1), 0x8000100u);
            CFNumberGetValue(v90, kCFNumberSInt64Type, (v101 + 28));
            CFNumberGetValue(v91, kCFNumberSInt64Type, (v101 + 32));
            *(v101 + 40) = v96;
            v105 = valuePtr;
            if ((valuePtr & 8) != 0)
            {
              v107 = 1;
            }

            else
            {
              v106 = *(v101 + 28);
              if (v106)
              {
                v107 = v106 >= *(this + 169);
              }

              else
              {
                v107 = sAGXSWCounterValueTypeList[*(v101 + 32)];
              }
            }

            *(v101 + 24) = v107;
            *(v101 + 48) = v105;
          }

          ++v198;
        }

        ++v85;
      }

      while (v197 != v85);
      if ((v196 & 1) == 0)
      {
        v117 = 0;
        v118 = &dword_278BC00E8;
        while (1)
        {
          v119 = *(this + 16) + 56 * (v198 + v117);
          v120 = *(v118 - 2);
          v121 = strlen(v120);
          *(v119 + 16) = v121;
          v122 = (v121 + 1);
          v123 = StackAllocator::reserve(buf, v122);
          v124 = v123;
          if (v122)
          {
            v125 = v123 == 0;
          }

          else
          {
            v125 = 1;
          }

          if (!v125)
          {
            memcpy(v123, v120, v122);
          }

          *v119 = v124;
          v126 = *(v118 - 1);
          v127 = strlen(v126);
          *(v119 + 20) = v127;
          v128 = (v127 + 1);
          v129 = StackAllocator::reserve(buf, v128);
          v130 = v129;
          if (v128)
          {
            v131 = v129 == 0;
          }

          else
          {
            v131 = 1;
          }

          if (!v131)
          {
            memcpy(v129, v126, v128);
          }

          *(v119 + 8) = v130;
          if (!v130 || *v119 == 0)
          {
            break;
          }

          v133 = *v118;
          v118 += 6;
          *(v119 + 24) = v133;
          *(v119 + 28) = -1;
          *(v119 + 32) = v117;
          *(v119 + 40) = v54;
          if (++v117 == 8)
          {
            v134 = v198 + 8;
            if (v195 && *(this + 26))
            {
              v135 = 0;
              while (1)
              {
                v136 = *(this + 16) + 56 * (v198 + 8 + v135);
                *(v136 + 16) = 27;
                v137 = StackAllocator::reserve(buf, 0x1Cu);
                if (v137)
                {
                  strcpy(v137, "GRC_SHADER_PROFILER_DATA_00");
                }

                *v136 = v137;
                *(v136 + 20) = 64;
                v138 = StackAllocator::reserve(buf, 0x41u);
                if (!v138)
                {
                  break;
                }

                strcpy(v138, "Virtual counter to read shader profiler trace buffer from USC 00");
                *(v136 + 8) = v138;
                v139 = *v136;
                if (!*v136)
                {
                  goto LABEL_347;
                }

                *(v136 + 24) = 1;
                v140 = v135 / 0xA + 48;
                *(v139 + (*(v136 + 16) - 2)) = v140;
                v141 = (v135 % 0xA) | 0x30;
                *(*v136 + (*(v136 + 16) - 1)) = v141;
                *(*(v136 + 8) + (*(v136 + 20) - 2)) = v140;
                *(*(v136 + 8) + (*(v136 + 20) - 1)) = v141;
                *(v136 + 28) = -2;
                *(v136 + 32) = v135;
                *(v136 + 40) = v193;
                if (++v135 >= *(this + 26))
                {
                  v134 = v198 + 8 + v135;
                  goto LABEL_236;
                }
              }

              *(v136 + 8) = 0;
LABEL_347:
              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", "AGXGPURawCounterImpl.mm", 3168, "init");
              v186 = MEMORY[0x277D86220];
              v187 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3168;
                v206 = 2080;
                v207 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
              }

              v188 = v186;
              if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3168;
                v206 = 2080;
                v207 = "init";
                _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
              }
            }

            else
            {
LABEL_236:
              if (*&buf[16] == *&buf[24] && v134 == *(this + 34))
              {
                buf[0] = 0;
                memset(&buf[4], 0, 28);
                goto LABEL_239;
              }

              fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", "AGXGPURawCounterImpl.mm", 3185, "init");
              v190 = MEMORY[0x277D86220];
              v191 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3185;
                v206 = 2080;
                v207 = "init";
                _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", outputStructCnt, 0x1Cu);
              }

              v192 = v190;
              if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
              {
                *outputStructCnt = 136315650;
                *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
                v204 = 1024;
                v205 = 3185;
                v206 = 2080;
                v207 = "init";
                _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (allocator.free() == 0) && (perfCtrIdx == _masterCounterNum)\n", outputStructCnt, 0x1Cu);
              }
            }

            goto LABEL_284;
          }
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", "AGXGPURawCounterImpl.mm", 3147, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3147;
          v206 = 2080;
          v207 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3147;
          v206 = 2080;
          v207 = "init";
          v143 = MEMORY[0x277D86220];
          v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (counterDesc.name != NULL) && (counterDesc.description != NULL)\n";
          goto LABEL_283;
        }

        break;
      }

      if (v198 && v194)
      {
        v108 = -*&buf[4];
        v109 = vdupq_n_s64(*&buf[4]);
        v110 = vdupq_n_s64(v108);
        v111 = vandq_s8(vaddq_s64(v109, xmmword_23C553C00), v110);
        v112 = vandq_s8(vaddq_s64(v109, xmmword_23C553BF0), v110);
        v112.i64[0] *= 3;
        v112.i64[1] *= 2;
        v113 = vaddvq_s64(vaddq_s64(v112, vaddq_s64(vandq_s8(vaddq_s64(v109, xmmword_23C553C20), v110), vaddq_s64(vaddq_s64(v111, v111), vandq_s8(vaddq_s64(v109, xmmword_23C553C10), v110))))) + ((*&buf[4] + 95) & v108) + ((*&buf[4] + 52) & v108) + ((*&buf[4] + 56) & v108) + *&buf[16];
        v114 = v198 + 8;
        if (v195)
        {
          v115 = *(this + 26);
          if (v115)
          {
            v116 = ((*&buf[4] + 27) & v108) + ((*&buf[4] + 64) & v108);
            v113 += v116 + v116 * (v115 - 1);
            v114 = v115 + v198 + 8;
          }
        }

        *&buf[16] = ((*&buf[4] + 56 * v114 - 1) & v108) + v113;
        StackAllocator::init(buf, *&buf[16]);
        *(this + 16) = *&buf[8];
        *(this + 34) = v114;
        if (StackAllocator::reserve(buf, 56 * v114))
        {
LABEL_239:
          v84 = 0;
          if (v196)
          {
            continue;
          }

          CFRelease(theDict);
          CFRelease(theString2);
          qsort_b(*(this + 16), *(this + 34), 0x38uLL, &__block_literal_global_149);
          v142 = 0;
          theString2 = 0;
          theDict = 0;
          goto LABEL_285;
        }

        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n", "AGXGPURawCounterImpl.mm", 3131, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3131;
          v206 = 2080;
          v207 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3131;
          v206 = 2080;
          v207 = "init";
          v143 = MEMORY[0x277D86220];
          v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** allocator.reserve(sizeof(CounterDescImpl) * _masterCounterNum) != NULL\n";
          goto LABEL_283;
        }
      }

      else
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n", "AGXGPURawCounterImpl.mm", 3101, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3101;
          v206 = 2080;
          v207 = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n", outputStructCnt, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *outputStructCnt = 136315650;
          *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
          v204 = 1024;
          v205 = 3101;
          v206 = 2080;
          v207 = "init";
          v143 = MEMORY[0x277D86220];
          v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** (perfCtrIdx != 0) && (sourceMaskAll != 0)\n";
          goto LABEL_283;
        }
      }

      break;
    }
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n", "AGXGPURawCounterImpl.mm", 3004, "init");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 3004;
      v206 = 2080;
      v207 = "init";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n", outputStructCnt, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *outputStructCnt = 136315650;
      *&outputStructCnt[4] = "AGXGPURawCounterImpl.mm";
      v204 = 1024;
      v205 = 3004;
      v206 = 2080;
      v207 = "init";
      v143 = MEMORY[0x277D86220];
      v144 = "AGXGRC:AGXGRC:%s:%d:%s: *** ((perfCtrList = (CFArrayRef)CFDictionaryGetValue(cfDict, @DeviceCounters)) != NULL) && ((perfCtrNum = (uint32_t)CFArrayGetCount(perfCtrList)) != 0)\n";
LABEL_283:
      _os_log_impl(&dword_23C542000, v143, OS_LOG_TYPE_INFO, v144, outputStructCnt, 0x1Cu);
    }
  }

LABEL_284:
  v142 = 6;
LABEL_285:
  if (buf[0] == 1)
  {
    free(*&buf[8]);
  }

  if (v142 == 6)
  {
    goto LABEL_342;
  }

  v149 = *(this + 34);
  if (v149)
  {
    v150 = *(this + 164);
    if (!v150)
    {
      goto LABEL_316;
    }

    v151 = 0;
    v152 = *(this + 16);
    do
    {
      v153 = *(v152 + 56 * v151 + 40);
      v154 = v209;
      v155 = v243;
      v156 = v150;
      do
      {
        v157 = *v155;
        v155 += 11;
        if ((v153 & v157) != 0)
        {
          ++*v154;
        }

        ++v154;
        --v156;
      }

      while (v156);
      ++v151;
    }

    while (v151 != v149);
  }

  else
  {
    v150 = *v27;
    if (!v150)
    {
      goto LABEL_316;
    }
  }

  for (i = 0; i < v150; ++i)
  {
    v159 = v209[i];
    if (v159)
    {
      v160 = malloc_type_malloc(4 * v159, 0x100004052888210uLL);
      v210[i] = v160;
      if (!v160)
      {
        fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", "AGXGPURawCounterImpl.mm", 3243, "init");
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3243;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", buf, 0x1Cu);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          *&buf[4] = "AGXGPURawCounterImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3243;
          *&buf[18] = 2080;
          *&buf[20] = "init";
          _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** sourceCounterIdxList[i] != NULL\n", buf, 0x1Cu);
        }

        goto LABEL_342;
      }

      v209[i] = 0;
      v150 = *v27;
    }
  }

  v161 = *(this + 34);
  if (v161)
  {
    if (v150)
    {
      v162 = 0;
      v163 = *(this + 16);
      v164 = 1;
      do
      {
        if (v164)
        {
          v165 = 0;
          v166 = *(v163 + 56 * v162 + 40);
          v167 = v243;
          do
          {
            v168 = *v167;
            v167 += 11;
            if ((v166 & v168) != 0)
            {
              v169 = v209[v165];
              *(v210[v165] + v169) = v162;
              v209[v165] = v169 + 1;
              v150 = *v27;
            }

            ++v165;
          }

          while (v165 < v150);
          v161 = *(this + 34);
          v164 = v150;
        }

        ++v162;
      }

      while (v162 < v161);
      goto LABEL_317;
    }

LABEL_316:
    *(this + 170) = 0x4000;
    v7 = 1;
    return v7 & 1;
  }

LABEL_317:
  *(this + 170) = 0x4000;
  if (!v150)
  {
    goto LABEL_319;
  }

  v170 = 0;
  v171 = __s1;
  v172 = v210;
  while (1)
  {
    if (!*(v171 + 8))
    {
      free(*v172);
      v173 = v172;
      goto LABEL_321;
    }

    v174 = AGXGPURawCounterImpl::chipDispatchTableForSource(*(this + 23), *(this + 24), *(this + 26), v171, v62);
    if (!v174)
    {
      break;
    }

    v175 = this + 8 * v170;
    if (*(v175 + 18))
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", "AGXGPURawCounterImpl.mm", 3285, "init");
      v180 = MEMORY[0x277D86220];
      v181 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v180, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3285;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", buf, 0x1Cu);
      }

      v182 = v180;
      if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3285;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** _sourceList[sourceIdx] == nullptr\n", buf, 0x1Cu);
      }

      goto LABEL_341;
    }

    v176 = (*v174)(this, v170, v171, *v172, v209[v170], v174);
    *(v175 + 18) = v176;
    if (!v176)
    {
      fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", "AGXGPURawCounterImpl.mm", 3292, "init");
      v183 = MEMORY[0x277D86220];
      v184 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3292;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", buf, 0x1Cu);
      }

      v185 = v183;
      if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        *&buf[4] = "AGXGPURawCounterImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3292;
        *&buf[18] = 2080;
        *&buf[20] = "init";
        _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** (_sourceList[sourceIdx] = chipDispatchTable->createSource( this, sourceIdx, &sourceInfo, sourceCounterIdxList[sourceIdx], sourceCounterIdxNum [sourceIdx], chipDispatchTable)) != nullptr\n", buf, 0x1Cu);
      }

      goto LABEL_341;
    }

    v173 = &v210[v170];
LABEL_321:
    *v173 = 0;
    ++v170;
    ++v172;
    v171 += 44;
    v7 = 1;
    if (v170 >= *v27)
    {
      return v7 & 1;
    }
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", "AGXGPURawCounterImpl.mm", 3284, "init");
  v177 = MEMORY[0x277D86220];
  v178 = MEMORY[0x277D86220];
  if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3284;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", buf, 0x1Cu);
  }

  v179 = v177;
  if (os_log_type_enabled(v177, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AGXGPURawCounterImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3284;
    *&buf[18] = 2080;
    *&buf[20] = "init";
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** chipDispatchTable != nullptr\n", buf, 0x1Cu);
  }

LABEL_341:

LABEL_342:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (theString2)
  {
    CFRelease(theString2);
  }

LABEL_12:
  free(v210[0]);
  free(v210[1]);
  free(v211);
  free(*(&v211 + 1));
  free(v212);
  free(*(&v212 + 1));
  free(v213);
  free(*(&v213 + 1));
  free(v214);
  free(*(&v214 + 1));
  free(v215);
  free(*(&v215 + 1));
  free(v216);
  free(*(&v216 + 1));
  free(v217);
  free(*(&v217 + 1));
  free(v218);
  free(*(&v218 + 1));
  free(v219);
  free(*(&v219 + 1));
  free(v220);
  free(*(&v220 + 1));
  free(v221);
  free(*(&v221 + 1));
  free(v222);
  free(*(&v222 + 1));
  free(v223);
  free(*(&v223 + 1));
  free(v224);
  free(*(&v224 + 1));
  free(v225);
  free(*(&v225 + 1));
  free(v226);
  free(*(&v226 + 1));
  free(v227);
  free(*(&v227 + 1));
  free(v228);
  free(*(&v228 + 1));
  free(v229);
  free(*(&v229 + 1));
  free(v230);
  free(*(&v230 + 1));
  free(v231);
  free(*(&v231 + 1));
  free(v232);
  free(*(&v232 + 1));
  free(v233);
  free(*(&v233 + 1));
  free(v234);
  free(*(&v234 + 1));
  free(v235);
  free(*(&v235 + 1));
  free(v236);
  free(*(&v236 + 1));
  free(v237);
  free(*(&v237 + 1));
  free(v238);
  free(*(&v238 + 1));
  free(v239);
  free(*(&v239 + 1));
  free(v240);
  free(*(&v240 + 1));
  free(v241);
  free(*(&v241 + 1));
  AGXGPURawCounterImpl::free(this);
  v7 = 0;
  return v7 & 1;
}

void sub_23C54F4AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *a36)
{
  if (a35 == 1)
  {
    free(a36);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t perfCtrSamplerGetSourceNum(unsigned int *a1, mach_port_t connection)
{
  memset(v4, 0, sizeof(v4));
  LODWORD(v4[0]) = 1;
  if (!connection)
  {
    connection = *(sAGXGPURawCounterImpl + 88);
    if (!connection)
    {
      return 5;
    }
  }

  outputStructCnt = 64;
  result = IOConnectCallStructMethod(connection, 0x105u, v4, 0x40uLL, v4, &outputStructCnt);
  if (!result)
  {
    *a1 = DWORD1(v4[0]);
  }

  return result;
}

CFPropertyListRef cfDictionaryCreateFromPlist(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  fseek(v1, 0, 2);
  v3 = MEMORY[0x23EED56C0](v2);
  fseek(v2, 0, 0);
  v4 = *MEMORY[0x277CBECE8];
  v5 = v3;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v3);
  if (Mutable)
  {
    v7 = Mutable;
    CFDataSetLength(Mutable, v5);
    MutableBytePtr = CFDataGetMutableBytePtr(v7);
    if (fread(MutableBytePtr, v5, 1uLL, v2) == 1)
    {
      v9 = CFPropertyListCreateWithData(v4, v7, 0, 0, 0);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  fclose(v2);
  return v9;
}

uint64_t perfCtrSamplerGetSourceInfo(unsigned __int8 a1, uint64_t a2, mach_port_t connection)
{
  v3 = connection;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v6[0] = 2;
  v6[1] = a1;
  v7 = a2;
  LODWORD(v8) = 32;
  if (!connection)
  {
    v3 = *(sAGXGPURawCounterImpl + 88);
    if (!v3)
    {
      return 5;
    }
  }

  outputStructCnt = 64;
  result = IOConnectCallStructMethod(v3, 0x105u, v6, 0x40uLL, v6, &outputStructCnt);
  if (!result)
  {
    *(a2 + 32) = *(&v8 + 4);
    *(a2 + 40) = HIDWORD(v8);
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::chipDispatchTableForSource(AGXGPURawCounterImpl *this, unsigned int a2, unsigned int a3, char *__s1, const char *a5)
{
  v8 = this;
  v22 = *MEMORY[0x277D85DE8];
  {
    AGXGPURawCounterImpl::chipDispatchTableForSource(unsigned int,unsigned int,unsigned int,char const*)const::sourceToDispatchMapList = xmmword_23C553C30;
    dword_27E1F77C0 = 999;
    qword_27E1F77C8 = "Firmware";
    dword_27E1F77D0 = 8;
    qword_27E1F77D8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F77E0 = xmmword_23C553C40;
    dword_27E1F77F0 = 999;
    qword_27E1F77F8 = "Firmware";
    dword_27E1F7800 = 8;
    qword_27E1F7808 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7810 = xmmword_23C553C50;
    dword_27E1F7820 = 999;
    qword_27E1F7828 = "Firmware";
    dword_27E1F7830 = 8;
    qword_27E1F7838 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7840 = xmmword_23C553C50;
    dword_27E1F7850 = 999;
    qword_27E1F7858 = "RDE";
    dword_27E1F7860 = 3;
    qword_27E1F7868 = &AGXGRC_G11::sChipDispatchTable;
    xmmword_27E1F7870 = xmmword_23C553C60;
    dword_27E1F7880 = 999;
    qword_27E1F7888 = "Firmware";
    dword_27E1F7890 = 8;
    qword_27E1F7898 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F78A0 = xmmword_23C553C60;
    dword_27E1F78B0 = 999;
    qword_27E1F78B8 = "RDE";
    dword_27E1F78C0 = 3;
    qword_27E1F78C8 = &AGXGRC_G12::sChipDispatchTable;
    xmmword_27E1F78D0 = xmmword_23C553C70;
    dword_27E1F78E0 = 999;
    qword_27E1F78E8 = "Firmware";
    dword_27E1F78F0 = 8;
    qword_27E1F78F8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7900 = xmmword_23C553C70;
    dword_27E1F7910 = 999;
    qword_27E1F7918 = "RDE";
    dword_27E1F7920 = 3;
    qword_27E1F7928 = &AGXGRC_G13::sChipDispatchTableTMB;
    xmmword_27E1F7930 = xmmword_23C553C70;
    dword_27E1F7940 = 999;
    qword_27E1F7948 = "BMPR_RDE";
    dword_27E1F7950 = 8;
    qword_27E1F7958 = &AGXGRC_G13::sChipDispatchTableBMPR;
    xmmword_27E1F7960 = xmmword_23C553C80;
    dword_27E1F7970 = 999;
    qword_27E1F7978 = "Firmware";
    dword_27E1F7980 = 8;
    qword_27E1F7988 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7990 = xmmword_23C553C80;
    dword_27E1F79A0 = 999;
    qword_27E1F79A8 = "RDE";
    dword_27E1F79B0 = 3;
    qword_27E1F79B8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F79C0 = xmmword_23C553C80;
    dword_27E1F79D0 = 999;
    qword_27E1F79D8 = "BMPR_RDE";
    dword_27E1F79E0 = 8;
    qword_27E1F79E8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F79F0 = xmmword_23C553C90;
    dword_27E1F7A00 = 999;
    qword_27E1F7A08 = "Firmware";
    dword_27E1F7A10 = 8;
    qword_27E1F7A18 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7A20 = xmmword_23C553C90;
    dword_27E1F7A30 = 999;
    qword_27E1F7A38 = "RDE";
    dword_27E1F7A40 = 3;
    qword_27E1F7A48 = &AGXGRC_G14X::sChipDispatchTableTMB;
    xmmword_27E1F7A50 = xmmword_23C553C90;
    dword_27E1F7A60 = 999;
    qword_27E1F7A68 = "BMPR_RDE";
    dword_27E1F7A70 = 8;
    qword_27E1F7A78 = &AGXGRC_G14X::sChipDispatchTableBMPR;
    xmmword_27E1F7A80 = xmmword_23C553CA0;
    dword_27E1F7A90 = 999;
    qword_27E1F7A98 = "Firmware";
    dword_27E1F7AA0 = 8;
    qword_27E1F7AA8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7AB0 = xmmword_23C553CA0;
    dword_27E1F7AC0 = 5;
    qword_27E1F7AC8 = "RDE";
    dword_27E1F7AD0 = 3;
    qword_27E1F7AD8 = &AGXGRC_G14::sChipDispatchTable;
    xmmword_27E1F7AE0 = xmmword_23C553CB0;
    dword_27E1F7AF0 = 999;
    qword_27E1F7AF8 = "RDE";
    dword_27E1F7B00 = 3;
    qword_27E1F7B08 = &AGXGRC_G15::sChipDispatchTable;
    xmmword_27E1F7B10 = xmmword_23C553CA0;
    dword_27E1F7B20 = 999;
    qword_27E1F7B28 = "APS_USC";
    dword_27E1F7B30 = 7;
    qword_27E1F7B38 = &AGXGRC_G15::sChipDispatchTableAPS;
    xmmword_27E1F7B40 = xmmword_23C553CC0;
    dword_27E1F7B50 = 6;
    qword_27E1F7B58 = "Firmware";
    dword_27E1F7B60 = 8;
    qword_27E1F7B68 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7B70 = xmmword_23C553CC0;
    dword_27E1F7B80 = 6;
    qword_27E1F7B88 = "RDE";
    dword_27E1F7B90 = 3;
    qword_27E1F7B98 = &AGXGRC_G16::sChipDispatchTable;
    xmmword_27E1F7BA0 = xmmword_23C553CC0;
    dword_27E1F7BB0 = 6;
    qword_27E1F7BB8 = "APS_USC";
    dword_27E1F7BC0 = 7;
    qword_27E1F7BC8 = &AGXGRC_G16::sChipDispatchTableAPS;
    xmmword_27E1F7BD0 = xmmword_23C553CD0;
    dword_27E1F7BE0 = 999;
    qword_27E1F7BE8 = "Firmware";
    dword_27E1F7BF0 = 8;
    qword_27E1F7BF8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7C00 = xmmword_23C553CD0;
    dword_27E1F7C10 = 999;
    qword_27E1F7C18 = "RDE";
    dword_27E1F7C20 = 3;
    qword_27E1F7C28 = &AGXGRC_HAL200::sChipDispatchTable;
    xmmword_27E1F7C30 = xmmword_23C553CD0;
    dword_27E1F7C40 = 999;
    qword_27E1F7C48 = "APS_USC";
    dword_27E1F7C50 = 7;
    qword_27E1F7C58 = &AGXGRC_HAL200::sChipDispatchTableAPS;
    xmmword_27E1F7C60 = xmmword_23C553CE0;
    dword_27E1F7C70 = 6;
    qword_27E1F7C78 = "Firmware";
    dword_27E1F7C80 = 8;
    qword_27E1F7C88 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7C90 = xmmword_23C553CE0;
    dword_27E1F7CA0 = 6;
    qword_27E1F7CA8 = "RDE";
    dword_27E1F7CB0 = 3;
    qword_27E1F7CB8 = &AGXGRC_HAL200::sChipDispatchTable;
    xmmword_27E1F7CC0 = xmmword_23C553CE0;
    dword_27E1F7CD0 = 6;
    qword_27E1F7CD8 = "APS_USC";
    dword_27E1F7CE0 = 7;
    qword_27E1F7CE8 = &AGXGRC_HAL200::sChipDispatchTableAPS;
    xmmword_27E1F7CF0 = xmmword_23C553CF0;
    dword_27E1F7D00 = 999;
    qword_27E1F7D08 = "Firmware";
    dword_27E1F7D10 = 8;
    qword_27E1F7D18 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7D20 = xmmword_23C553CF0;
    dword_27E1F7D30 = 999;
    qword_27E1F7D38 = "RDE";
    dword_27E1F7D40 = 3;
    qword_27E1F7D48 = &AGXGRC_HAL300::sChipDispatchTable;
    xmmword_27E1F7D50 = xmmword_23C553CF0;
    dword_27E1F7D60 = 999;
    qword_27E1F7D68 = "APS_USC";
    dword_27E1F7D70 = 7;
    qword_27E1F7D78 = &AGXGRC_HAL300::sChipDispatchTableAPS;
    xmmword_27E1F7D80 = xmmword_23C553D00;
    dword_27E1F7D90 = 6;
    qword_27E1F7D98 = "Firmware";
    dword_27E1F7DA0 = 8;
    qword_27E1F7DA8 = &AGXGRC_G10::sChipDispatchTable;
    xmmword_27E1F7DB0 = xmmword_23C553D00;
    dword_27E1F7DC0 = 6;
    qword_27E1F7DC8 = "RDE";
    dword_27E1F7DD0 = 3;
    qword_27E1F7DD8 = &AGXGRC_HAL300::sChipDispatchTable;
    xmmword_27E1F7DE0 = xmmword_23C553D00;
    dword_27E1F7DF0 = 6;
    qword_27E1F7DF8 = "APS_USC";
    dword_27E1F7E00 = 7;
    qword_27E1F7E08 = &AGXGRC_HAL300::sChipDispatchTableAPS;
  }

  v9 = &AGXGPURawCounterImpl::chipDispatchTableForSource(unsigned int,unsigned int,unsigned int,char const*)const::sourceToDispatchMapList;
  v10 = 34;
  do
  {
    if (*v9 == v8 && *(v9 + 1) <= a2 && *(v9 + 2) >= a2 && *(v9 + 3) <= a3 && *(v9 + 4) >= a3 && !strncmp(__s1, *(v9 + 3), *(v9 + 8)))
    {
      return *(v9 + 5);
    }

    v9 += 3;
    --v10;
  }

  while (v10);
  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", "AGXGPURawCounterImpl.mm", 3529, "chipDispatchTableForSource", v8, __s1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    v13 = "AGXGPURawCounterImpl.mm";
    v14 = 1024;
    v15 = 3529;
    v16 = 2080;
    v17 = "chipDispatchTableForSource";
    v18 = 1024;
    v19 = v8;
    v20 = 2080;
    v21 = __s1;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", buf, 0x2Cu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v13 = "AGXGPURawCounterImpl.mm";
    v14 = 1024;
    v15 = 3529;
    v16 = 2080;
    v17 = "chipDispatchTableForSource";
    v18 = 1024;
    v19 = v8;
    v20 = 2080;
    v21 = __s1;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Fail to find dispatch table for gpuGen=%u sourceName=%s\n", buf, 0x2Cu);
  }

  return 0;
}

void AGXGPURawCounterImpl::free(AGXGPURawCounterImpl *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    outputStructCnt = 64;
    memset(v8, 0, sizeof(v8));
    if (IOConnectCallStructMethod(v2, 0x105u, v8, 0x40uLL, v8, &outputStructCnt))
    {
      memset(v8 + 4, 0, 60);
      LODWORD(v8[0]) = 11;
      IOConnectCallStructMethod(v2, 0x105u, v8, outputStructCnt, v8, &outputStructCnt);
    }
  }

  free(*(this + 83));
  *(this + 83) = 0;
  free(*(this + 16));
  *(this + 16) = 0;
  v3 = *(this + 164);
  if (v3)
  {
    v4 = 0;
    v5 = this + 144;
    do
    {
      v6 = *&v5[8 * v4];
      if (v6)
      {
        (*(*v6 + 8))(v6);
        *&v5[8 * v4] = 0;
        v3 = *(this + 164);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  if (*(this + 2))
  {
    IOGPUDeviceRelease();
    *(this + 2) = 0;
  }

  v7 = *(this + 14);
  *(this + 14) = 0;

  *(this + 22) = 0;
  *(this + 2) = 0;
}

size_t AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::drain(AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl *this, int a2)
{
  v2 = a2 & 0xFFFFF000;
  if ((a2 & 0xFFFFF000) != 0)
  {
    v11 = 0;
    if ((*(*this + 32))(this, &v11 + 4, &v11))
    {
      if (v2 >= v11)
      {
        v2 = v11;
      }

      else
      {
        v2 = v2;
      }

      v4 = *(this + 8);
      if (HIDWORD(v11) + v2 <= v4)
      {
        v7 = (*(this + 3) + HIDWORD(v11));
        v8 = v2;
      }

      else
      {
        v5 = v4 - HIDWORD(v11);
        v6 = (v2 - v5);
        sys_dcache_flush((*(this + 3) + HIDWORD(v11)), v5);
        v7 = *(this + 3);
        v8 = v6;
      }

      sys_dcache_flush(v7, v8);
      HIDWORD(v11) = (v2 + HIDWORD(v11) + *(this + 8) - 4096) % *(this + 8);
      v9 = *(this + 5);
      v9[4] = HIDWORD(v11) >> 12;
      sys_dcache_flush(v9, 0x10uLL);
    }

    else
    {
      sys_dcache_flush(*(this + 3), *(this + 8));
      return 0;
    }
  }

  return v2;
}

BOOL AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::state(void **this, unsigned int *a2, unsigned int *a3)
{
  sys_dcache_flush(this[5], 0x10uLL);
  v6 = this[5];
  v7 = v6[6];
  v8 = *(this + 8);
  v9 = *(v6 + 15);
  if (*(v6 + 15))
  {
    v6[4] = ((v8 >> 12) + v6[6] - 1) % (v8 >> 12);
    *(v6 + 15) = 0;
    sys_dcache_flush(v6, 0x10uLL);
    v10 = 0;
    *a2 = ((*(this[5] + 4) << 12) + 4096) % *(this + 8);
  }

  else
  {
    v11 = ((v6[4] << 12) + 4096) % v8;
    *a2 = v11;
    v10 = ((v7 << 12) % v8 - v11 + *(this + 8)) % *(this + 8);
  }

  result = v9 == 0;
  *a3 = v10;
  return result;
}

void AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl::~RingBufferAPSImpl(AGXGPURawCounterImpl::SourceAPSImpl::RingBufferAPSImpl *this)
{
  *this = &unk_284F29020;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F29020;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
}

void AGXGPURawCounterImpl::SourceAPSImpl::setOptionsPerUSCMasks(AGXGPURawCounterImpl::SourceAPSImpl *this, NSDictionary *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = a2;
  [(NSDictionary *)v36 objectForKeyedSubscript:@"USCConfigOverride"];
  v38 = v37 = this;
  v3 = *(this + 1);
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = [v38 objectForKeyedSubscript:@"mGPUMask"];
  if (v6 && ([v38 objectForKeyedSubscript:@"USCNumPerMGPU"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = [v38 objectForKeyedSubscript:@"USCNumPerMGPU"];
    v9 = [v8 unsignedIntValue];

    if (v9 <= v4)
    {
      v10 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [v38 objectForKeyedSubscript:@"USCMaskForMGPU"];
    v12 = [v11 count];

    if (v12)
    {
      v10 = 0;
LABEL_7:
      v39 = [*(*(v37 + 1) + 112) objectForKeyedSubscript:@"core_mask_list"];
      if (v10)
      {
        v13 = [v38 objectForKeyedSubscript:@"USCNumPerMGPU"];
        v14 = [v13 unsignedIntValue];

        v15 = [v38 objectForKeyedSubscript:@"mGPUMask"];
        v16 = [v15 unsignedIntValue];

        if (!v14 || !v16)
        {
          goto LABEL_37;
        }

        if (v5)
        {
          v17 = 0;
          LOBYTE(v18) = v16;
          do
          {
            if (v18)
            {
              v19 = [v39 objectAtIndexedSubscript:v17];
              v20 = [v19 unsignedIntValue];

              v21.i32[0] = v20;
              v22 = vcnt_s8(v21);
              v22.i16[0] = vaddlv_u8(v22);
              if (v14 >= v22.i32[0])
              {
                v14 = v22.i32[0];
              }

              if (v14)
              {
                v23 = -v20;
                v24 = v14 - 1;
                if (v14 != 1)
                {
                  do
                  {
                    LOWORD(v23) = v23 - (v23 ^ v20);
                    --v24;
                  }

                  while (v24);
                }

                v25 = v23 & v20;
              }

              else
              {
                v25 = 0;
              }

              *(v37 + v17 + 3184) = v25;
            }

            if (++v17 >= v5)
            {
              break;
            }

            v18 = v16 >> v17;
          }

          while (v16 >> v17);
        }
      }

      else
      {
        [v38 objectForKeyedSubscript:@"USCMaskForMGPU"];
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v26 = v41 = 0u;
        v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v27)
        {
          v28 = *v41;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v41 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = *(*(&v40 + 1) + 8 * i);
              v31 = [v30 intValue];
              if (v31 < v5)
              {
                v32 = [v26 objectForKeyedSubscript:v30];
                v33 = [v32 unsignedIntValue];

                v34 = [v39 objectAtIndexedSubscript:v31];
                v35 = [v34 unsignedIntValue];

                if ((v33 & ~v35) != 0)
                {

                  goto LABEL_37;
                }

                *(v37 + v31 + 3184) = v35 & v33;
              }
            }

            v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v27);
        }
      }

      *(v37 + 6388) = 1;
LABEL_37:
    }
  }
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::ringBufferInit(AGXGPURawCounterImpl::SourceAPSImpl *this, uint64_t a2, char *a3, uint64_t a4)
{
  v4 = a4;
  v5 = (*(*this + 224))(this, a4);
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    operator new();
  }

  return v5;
}

void AGXGPURawCounterImpl::SourceAPSImpl::fillKernelConfigData(uint64_t a1, uint64_t a2)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl20fillKernelConfigDataEP28AGXSPerfCtrSamplerControlRec_block_invoke;
  v12[3] = &__block_descriptor_48_e8_v12__0i8l;
  v4 = a1 + 4096;
  v12[4] = a1;
  v12[5] = a2;
  v5 = MEMORY[0x23EED5830](v12);
  v6 = v5;
  v7 = *(a1 + 6384);
  v8 = 32 - __clz(~(-1 << -__clz(v7 - 1)));
  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  *(a2 + 32) = v9;
  v10 = *(a2 + 33) & 0xFE | *(v4 + 2292);
  *(a2 + 33) = v10;
  *(a2 + 33) = v10 & 0xFD | (2 * *(v4 + 2293));
  (*(v5 + 16))(v5, 0);
  if (*(v4 + 2292) == 1)
  {
    v6[2](v6, 1);
    if (*(*(a1 + 8) + 96))
    {
      v11 = 0;
      do
      {
        *(a2 + 16 + 2 * v11) = *(a1 + 6368 + 2 * v11);
        ++v11;
      }

      while (v11 < *(*(a1 + 8) + 96));
    }
  }
}

uint64_t ___ZN20AGXGPURawCounterImpl13SourceAPSImpl20fillKernelConfigDataEP28AGXSPerfCtrSamplerControlRec_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32) + 28 * a2;
  v3 = v2 + 6392;
  v4 = 10 * a2;
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFD | (2 * *(v2 + 6401));
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFE | *(v2 + 6400);
  *(*(result + 40) + v4 + 36) = *(*(result + 40) + v4 + 36) & 0xFB | (4 * *(v2 + 6402));
  LODWORD(v2) = *(v2 + 6396);
  v5 = 32 - __clz(~(-1 << -__clz(v2 - 1)));
  if (v2 >= 2)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *(*(result + 40) + 10 * a2 + 35) = v6;
  v7 = 32 - __clz(~(-1 << -__clz(*v3 - 1)));
  if (*v3 >= 2u)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = 10 * a2;
  *(*(result + 40) + v9 + 34) = v8;
  *(*(result + 40) + v9 + 38) = *(v3 + 12);
  *(*(result + 40) + v9 + 40) = *(v3 + 16);
  *(*(result + 40) + v9 + 42) = *(v3 + 20);
  *(*(result + 40) + v9 + 43) = *(*(result + 40) + v9 + 43) & 0xFE | *(v3 + 24);
  *(*(result + 40) + v9 + 43) = *(*(result + 40) + v9 + 43) & 0xFD | (2 * *(v3 + 25));
  return result;
}

BOOL AGXGPURawCounterImpl::SourceAPSImpl::postProcessData(AGXGPURawCounterImpl::SourceAPSImpl *this, unsigned int a2, const unsigned __int8 *a3, unint64_t a4, unint64_t *a5, unint64_t a6, unsigned __int8 *a7, unint64_t a8, unint64_t a9, unint64_t *a10, BOOL a11)
{
  v74 = *MEMORY[0x277D85DE8];
  v11 = *(this + 1572);
  if (v11 <= a2)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n", "AGXGPURawCounterSourceAPSImpl.mm", 642, "postProcessData", a2, v11);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v31 = *(this + 1572);
      *buf = 136316162;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 642;
      v57 = 2080;
      v58 = "postProcessData";
      v59 = 1024;
      *v60 = a2;
      *&v60[4] = 1024;
      *&v60[6] = v31;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n", buf, 0x28u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v24 = *(this + 1572);
    *buf = 136316162;
    v54 = "AGXGPURawCounterSourceAPSImpl.mm";
    v55 = 1024;
    v56 = 642;
    v57 = 2080;
    v58 = "postProcessData";
    v59 = 1024;
    *v60 = a2;
    *&v60[4] = 1024;
    *&v60[6] = v24;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** Invalid ring buffer index (%u >= %u)!\n";
    v25 = 40;
LABEL_25:
    _os_log_impl(&dword_23C542000, v20, OS_LOG_TYPE_INFO, v21, buf, v25);
    return 0;
  }

  if (!a3 || !a4 || !a5 || a6 >= a4 || !a7 || !a8 || a8 <= a9 || !a10)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n", "AGXGPURawCounterSourceAPSImpl.mm", 649, "postProcessData", a3, a4, a5, a6, a7, a8, a9, a10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136317698;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 649;
      v57 = 2080;
      v58 = "postProcessData";
      v59 = 2048;
      *v60 = a3;
      *&v60[8] = 2048;
      v61 = a4;
      v62 = 2048;
      v63 = a5;
      v64 = 2048;
      v65 = a6;
      v66 = 2048;
      v67 = a7;
      v68 = 2048;
      v69 = a8;
      v70 = 2048;
      v71 = a9;
      v72 = 2048;
      v73 = a10;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n", buf, 0x6Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 136317698;
    v54 = "AGXGPURawCounterSourceAPSImpl.mm";
    v55 = 1024;
    v56 = 649;
    v57 = 2080;
    v58 = "postProcessData";
    v59 = 2048;
    *v60 = a3;
    *&v60[8] = 2048;
    v61 = a4;
    v62 = 2048;
    v63 = a5;
    v64 = 2048;
    v65 = a6;
    v66 = 2048;
    v67 = a7;
    v68 = 2048;
    v69 = a8;
    v70 = 2048;
    v71 = a9;
    v72 = 2048;
    v73 = a10;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** All parameters must be non-zero! (src=%p size=%llu read=0x%p write=%llu dst=0x%p size=%llu read=%llu write=%p\n";
    v25 = 108;
    goto LABEL_25;
  }

  v15 = *a5;
  v16 = *a10;
  v17 = a4 - *a5;
  if (a4 <= *a5 || (v18 = a8 - v16, a8 <= v16))
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n", "AGXGPURawCounterSourceAPSImpl.mm", 655, "postProcessData", v15, a4, *a10, a8);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v44 = *a5;
      v45 = *a10;
      *buf = 136316674;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 655;
      v57 = 2080;
      v58 = "postProcessData";
      v59 = 2048;
      *v60 = v44;
      *&v60[8] = 2048;
      v61 = a4;
      v62 = 2048;
      v63 = v45;
      v64 = 2048;
      v65 = a8;
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n", buf, 0x44u);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v29 = *a5;
    v30 = *a10;
    *buf = 136316674;
    v54 = "AGXGPURawCounterSourceAPSImpl.mm";
    v55 = 1024;
    v56 = 655;
    v57 = 2080;
    v58 = "postProcessData";
    v59 = 2048;
    *v60 = v29;
    *&v60[8] = 2048;
    v61 = a4;
    v62 = 2048;
    v63 = v30;
    v64 = 2048;
    v65 = a8;
    v20 = MEMORY[0x277D86220];
    v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** srcRead and/or dstWrite is out of bound! (*srcRead=%llu size=%llu *dstWrite=%llu size=%llu\n";
    v25 = 68;
    goto LABEL_25;
  }

  if ((((a6 | a4) | v15) & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n", "AGXGPURawCounterSourceAPSImpl.mm", 661, "postProcessData");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 661;
      v57 = 2080;
      v58 = "postProcessData";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 661;
      v57 = 2080;
      v58 = "postProcessData";
      v20 = MEMORY[0x277D86220];
      v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** srcSize/Read/Write is not aligned to 64-bits!\n";
LABEL_36:
      v25 = 28;
      goto LABEL_25;
    }
  }

  else if ((((a9 | a8) | v16) & 7) != 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n", "AGXGPURawCounterSourceAPSImpl.mm", 667, "postProcessData");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 667;
      v57 = 2080;
      v58 = "postProcessData";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n", buf, 0x1Cu);
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 136315650;
      v54 = "AGXGPURawCounterSourceAPSImpl.mm";
      v55 = 1024;
      v56 = 667;
      v57 = 2080;
      v58 = "postProcessData";
      v20 = MEMORY[0x277D86220];
      v21 = "AGXGRC:AGXGRC:%s:%d:%s: *** dstSize/Read/Write is not aligned to 64-bits!\n";
      goto LABEL_36;
    }
  }

  else
  {
    if ((a6 + a4 - v15) % a4 >= (a8 - a9 + v16) / a8 * a8 - (v16 - a9) - 8)
    {
      v32 = (a8 - a9 + v16) / a8 * a8 - (v16 - a9) - 8;
    }

    else
    {
      v32 = (a6 + a4 - v15) % a4;
    }

    if (v32 + v15 <= a4)
    {
      v39 = &a3[v15];
      if (v32 + v16 <= a8)
      {
        v43 = &a7[v16];
        v42 = &a3[v15];
        v41 = v32;
      }

      else
      {
        memcpy(&a7[v16], v39, a8 - v16);
        v41 = v32 - v18;
        v42 = &v39[v18];
        v43 = a7;
      }

      memcpy(v43, v42, v41);
      v47 = v32;
    }

    else
    {
      v33 = &a3[v15];
      if (v16 + v17 <= a8)
      {
        v37 = a7;
        v38 = &a7[v16];
        v36 = &a3[v15];
        v35 = a4 - *a5;
      }

      else
      {
        memcpy(&a7[v16], v33, a8 - v16);
        v35 = v17 - v18;
        v36 = &v33[v18];
        v37 = a7;
        v38 = a7;
      }

      memcpy(v38, v36, v35);
      v46 = (*a10 + v17) % a8;
      *a10 = v46;
      v47 = v32 - v17;
      v48 = a3;
      if (v46 + v47 <= a8)
      {
        v51 = &v37[v46];
        v50 = v47;
      }

      else
      {
        v49 = a8 - v46;
        memcpy(&v37[v46], a3, a8 - v46);
        v50 = v47 - v49;
        v48 = &a3[v49];
        v51 = v37;
      }

      memcpy(v51, v48, v50);
    }

    *a10 = (*a10 + v47) % a8;
    *a5 = (*a5 + v32) % a4;
    return 1;
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::postProcessData(AGXGPURawCounterImpl::SourceAPSImpl *this, unsigned int a2, const unsigned __int8 *__src, size_t a4, unint64_t *a5, unsigned __int8 *__dst, size_t a7, unint64_t *a8, BOOL a9)
{
  result = 0;
  if (__src && a5 && __dst && a7 && a8)
  {
    if (((a7 | a4) & 7) != 0)
    {
      return 0;
    }

    else
    {
      if (a4 >= a7)
      {
        v10 = a7;
      }

      else
      {
        v10 = a4;
      }

      memcpy(__dst, __src, v10);
      *a5 = v10;
      *a8 = v10;
      return 1;
    }
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::flushRingBuffers(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  memset(v2, 0, sizeof(v2));
  LODWORD(v2[0]) = 10;
  result = *(sAGXGPURawCounterImpl + 88);
  if (result)
  {
    outputStructCnt = 64;
    return IOConnectCallStructMethod(result, 0x105u, v2, 0x40uLL, v2, &outputStructCnt);
  }

  return result;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::calcBufferSizeWithRingBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(*this + 152);

    return v2();
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterSourceAPSImpl.mm", 574, "calcBufferSizeWithRingBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterSourceAPSImpl.mm";
      v6 = 1024;
      v7 = 574;
      v8 = 2080;
      v9 = "calcBufferSizeWithRingBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v5 = "AGXGPURawCounterSourceAPSImpl.mm";
      v6 = 1024;
      v7 = 574;
      v8 = 2080;
      v9 = "calcBufferSizeWithRingBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** calcBufferSizeWithRingBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    return 0;
  }
}

unint64_t AGXGPURawCounterImpl::SourceAPSImpl::alignBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(this + 1);
    v4 = *(v3 + 108);
    v5 = 0x800000000uLL / (v4 << 14) * (v4 << 14);
    if (v5 >= a2)
    {
      v5 = a2;
    }

    v6 = *(v3 + 100);
    v7 = (v5 / v4 + 0x3FFF) & 0x1FFFFFC000;
    if (v7 >= 0xFFFC000)
    {
      v7 = 268419072;
    }

    if (v5 < v4)
    {
      v7 = 0x4000;
    }

    v8 = v4 == v6;
    v9 = 0x8000;
    if (v8)
    {
      v9 = 0x4000;
    }

    if (!a3)
    {
      v9 = 0;
    }

    return v9 + v7 * v4;
  }

  else
  {
    fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", "AGXGPURawCounterSourceAPSImpl.mm", 540, "alignBufferSize");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v12 = "AGXGPURawCounterSourceAPSImpl.mm";
      v13 = 1024;
      v14 = 540;
      v15 = 2080;
      v16 = "alignBufferSize";
      _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v12 = "AGXGPURawCounterSourceAPSImpl.mm";
      v13 = 1024;
      v14 = 540;
      v15 = 2080;
      v16 = "alignBufferSize";
      _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** alignBufferSize should never be called with zero buffer size!\n", buf, 0x1Cu);
    }

    return 0;
  }
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::setBufferSize(AGXGPURawCounterImpl::SourceAPSImpl *this, unint64_t a2)
{
  v2 = 0x27E1F7000uLL;
  {
    v7 = a2;
    v8 = this;
    v2 = 0x27E1F7000uLL;
    v5 = v4;
    a2 = v7;
    this = v8;
    if (v5)
    {
      v6 = 0;
      if (*(*(v8 + 1) + 108) < 0x81u)
      {
        v6 = 268419072;
      }

      AGXGPURawCounterImpl::SourceAPSImpl::setBufferSize(unsigned long long)::kRingBufferSizeMax = v6;
      v2 = 0x27E1F7000;
      a2 = v7;
      this = v8;
    }
  }

  if (*(v2 + 3608) * *(*(this + 1) + 108) < a2)
  {
    a2 = *(v2 + 3608) * *(*(this + 1) + 108);
  }

  return AGXGPURawCounterImpl::SourceImpl::setBufferSize(this, a2);
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::availableFlags(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 92);
  if (v2 == 17 && *(v1 + 104) > 7u)
  {
    return 24;
  }

  if (v2 <= 0x11)
  {
    return 8;
  }

  return 24;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::setOptions(AGXGPURawCounterImpl::SourceAPSImpl *this, NSDictionary *a2)
{
  v3 = a2;
  v4 = AGXGPURawCounterImpl::SourceImpl::setOptions(this, v3);
  if (v4 && ((*(*this + 112))(this) & 8) != 0)
  {
    v5 = [(NSDictionary *)v3 objectForKeyedSubscript:@"USCConfigOverride"];
    if (v5)
    {
      (*(*this + 248))(this, v3);
    }

    v6 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SyncDrainMode"];
    *(this + 6389) = [v6 BOOLValue];

    v7 = [(NSDictionary *)v3 objectForKeyedSubscript:@"SystemTimePeriod"];
    *(this + 1596) = [v7 unsignedLongValue];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke;
    v11[3] = &unk_278BC0498;
    v14 = this;
    v8 = v5;
    v12 = v8;
    v13 = v3;
    v9 = MEMORY[0x23EED5830](v11);
    v9[2](v9, 0);
    v9[2](v9, 1);
  }

  return v4;
}

void ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 48);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke_2;
  v21 = &unk_278BC0470;
  v23 = a2;
  v22 = *(a1 + 32);
  v5 = MEMORY[0x23EED5830](&v18);
  v6 = v4 + 28 * a2 + 6392;
  if (((*(*v4 + 112))(v4) & 0x10) != 0)
  {
    v7 = (v5)[2](v5, @"CliqueAdvanceReason", *(a1 + 40));
    *(v6 + 10) = [v7 BOOLValue];
  }

  v8 = [*(a1 + 40) objectForKeyedSubscript:{@"CliqueSubSampling", v18, v19, v20, v21}];
  v9 = (v5)[2](v5, @"MinTraced", v8);
  *(v6 + 12) = [v9 unsignedLongValue];

  v10 = [*(a1 + 40) objectForKeyedSubscript:@"CliqueSubSampling"];
  v11 = (v5)[2](v5, @"TargetThreshold", v10);
  *(v6 + 16) = [v11 unsignedLongValue];

  v12 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v13 = (v5)[2](v5, @"CliqueTraceLevel", v12);
  *(v6 + 20) = [v13 unsignedLongValue];

  v14 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v15 = (v5)[2](v5, @"EmitPos", v14);
  *(v6 + 24) = [v15 BOOLValue];

  v16 = [*(a1 + 40) objectForKeyedSubscript:@"ProfileControl"];
  v17 = (v5)[2](v5, @"EmitThreadControlFlow", v16);
  *(v6 + 25) = [v17 BOOLValue];
}

id ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10setOptionsEP12NSDictionary_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40) && ([*(a1 + 32) objectForKeyedSubscript:v5], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:v5];
  }

  return v8;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::addTrigger(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"USCConfigOverride"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke;
  v12[3] = &unk_278BC0448;
  v15 = a1;
  v7 = v6;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  v16 = a2;
  v9 = MEMORY[0x23EED5830](v12);
  if (v9[2](v9, 0) && ((v9[2])(v9, 1) & 1) != 0)
  {
    *(a1 + 6236) |= a2;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke(uint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke_2;
  v17[3] = &unk_278BC0420;
  v20 = a2;
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  v5 = MEMORY[0x23EED5830](v17);
  v6 = v5;
  v7 = v4 + 28 * a2 + 6392;
  v8 = *(a1 + 56);
  if (v8 == 16)
  {
    goto LABEL_4;
  }

  if (v8 == 32)
  {
    v9 = (*(v5 + 16))(v5, @"ESLInstTracing");
    *(v7 + 8) = [v9 BOOLValue];

LABEL_4:
    v10 = (v6)[2](v6, @"TileTracing");
    *(v7 + 9) = [v10 BOOLValue];

    v11 = (v6)[2](v6, @"CountPeriod");
    *(v7 + 4) = [v11 unsignedLongValue];

    v12 = (v6)[2](v6, @"PulsePeriod");
    *v7 = [v12 unsignedLongValue];

    v13 = 1;
    goto LABEL_10;
  }

  fprintf(*MEMORY[0x277D85DF8], "AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", "AGXGPURawCounterSourceAPSImpl.mm", 310, "addTrigger_block_invoke", v8);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v16 = *(a1 + 56);
    *buf = 136315906;
    v22 = "AGXGPURawCounterSourceAPSImpl.mm";
    v23 = 1024;
    v24 = 310;
    v25 = 2080;
    v26 = "addTrigger_block_invoke";
    v27 = 1024;
    v28 = v16;
    _os_log_error_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 56);
    *buf = 136315906;
    v22 = "AGXGPURawCounterSourceAPSImpl.mm";
    v23 = 1024;
    v24 = 310;
    v25 = 2080;
    v26 = "addTrigger_block_invoke";
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&dword_23C542000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "AGXGRC:AGXGRC:%s:%d:%s: *** Error, adding unknown trigger (0x%x)\n", buf, 0x22u);
  }

  v13 = 0;
LABEL_10:

  return v13;
}

id ___ZN20AGXGPURawCounterImpl13SourceAPSImpl10addTriggerEN16AGXGPURawCounter11TriggerTypeEP12NSDictionary_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) && ([*(a1 + 32) objectForKeyedSubscript:v3], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  }

  else
  {
    v5 = [*(a1 + 40) objectForKeyedSubscript:v3];
  }

  return v5;
}

uint64_t AGXGPURawCounterImpl::SourceAPSImpl::clearTriggers(AGXGPURawCounterImpl::SourceAPSImpl *this)
{
  result = (*(*this + 40))(this, 0);
  *(this + 1559) = 0;
  *(this + 799) = 0;
  *(this + 3200) = 0;
  *(this + 6420) = 0;
  *(this + 3214) = 0;
  return result;
}

void AGXGPURawCounterImpl::SourceAPSImpl::~SourceAPSImpl(void **this)
{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;

  JUMPOUT(0x23EED55C0);
}

{
  *this = &unk_284F28E50;
  free(this[2]);
  this[2] = 0;
  free(this[5]);
  this[5] = 0;
  (*(*this + 30))(this);
  free(this[781]);
  *(this + 781) = 0u;
  free(this[790]);
  this[790] = 0;
  *(this + 1582) = 0;
  *(this + 396) = 0u;
  *(this + 397) = 0u;
}

uint64_t AGXGRC_G10::ParseSampleHeader(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return 32;
}

uint64_t AGXGRC_G11::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_25:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 80;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_25;
      }

      v9 = 0;
      v12 = 0xFFFFFFFF8001;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_25;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v9 = 0;
      v12 = 0xFFFFFFFF8002;
    }

    v8 = v7 | v12;
    *a2 = v8;
    v10 = 9;
    goto LABEL_25;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 80;
}

uint64_t AGXGRC_G12::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G13::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G14::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v3 = a1[3];
  v4 = *a3;
  if (v3 < *a3)
  {
    LODWORD(v4) = 0;
  }

  v5 = v3 - v4;
  *a3 = v3;
  v6 = a1[1];
  v7 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v5;
  *(a2 + 20) = -1;
  *a2 = v7 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v6 & 0x7E00000000) != 0)
  {
    if ((v6 & 0x5400000000) != 0)
    {
      if ((v6 & 0x600000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0001;
        *a2 = v8;
        v9 = (v6 >> 4) & 1;
        v10 = v9 | 4;
LABEL_27:
        v15 = a1[v10];
        *(a2 + 20) = HIDWORD(v15);
        *a2 = v8 & 0xFFFF00000000FFFFLL | (v15 << 16);
        *(a2 + 24) = v9;
        return 96;
      }

      if ((v6 & 0x1800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4001;
        *a2 = v8;
        v9 = (v6 >> 9) & 2;
        v13 = (v6 & 0x100) == 0;
LABEL_20:
        if (!v13)
        {
          v9 = 1;
        }

        v10 = v9 + 6;
        goto LABEL_27;
      }

      v8 = v7 | 0xFFFFFFFF8001;
      *a2 = v8;
      v9 = (v6 >> 18) & 2;
      v12 = (v6 & 0x20000) == 0;
    }

    else
    {
      if ((v6 & 0x200000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF0002;
        *a2 = v8;
        v9 = (v6 >> 5) & 1;
        v10 = v9 | 4;
        goto LABEL_27;
      }

      if ((v6 & 0x800000000) != 0)
      {
        v8 = v7 | 0xFFFFFFFF4002;
        *a2 = v8;
        v9 = (v6 >> 10) & 2;
        v13 = (v6 & 0x200) == 0;
        goto LABEL_20;
      }

      v8 = v7 | 0xFFFFFFFF8002;
      *a2 = v8;
      v9 = (v6 >> 19) & 2;
      v12 = (v6 & 0x40000) == 0;
    }

    if (!v12)
    {
      v9 = 1;
    }

    v10 = v9 + 9;
    goto LABEL_27;
  }

  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      v11 = v7 | 0xFFFFFFFFC005;
    }

    else
    {
      v11 = v7 | 0xFFFFFFFFC004;
    }

    *a2 = v11;
  }

  return 96;
}

uint64_t AGXGRC_G14X::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_G14X::ParseSampleHeaderInherited(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = (v7 >> 16) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) == 0)
    {
      v12 = 0xFFFFFFFF8002;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
    }

    if ((v7 & 0xC00000000) == 0)
    {
      v9 = v11;
    }

    if ((v7 & 0x1500000000) == 0)
    {
      v9 = v12;
    }

    v13 = v9 | v8;
    *a2 = v13;
    v14 = v9 >> 14;
    v15 = 4;
    if (v14)
    {
      v15 = 5;
    }

    v16 = v14 == 2;
    v17 = 6;
    if (!v16)
    {
      v17 = v15;
    }

    v18 = a1[v17];
    *(a2 + 20) = HIDWORD(v18);
    *a2 = v13 & 0xFFFF00000000FFF3 | (v18 << 16);
    *(a2 + 24) = v10;
    return 56;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 56;
  }
}

uint64_t AGXGRC_G15::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_G16::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_HAL200::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
  }
}

uint64_t AGXGRC_HAL300::ParseSampleHeader(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = 0xFFFFFFFFC004;
  *a2 = *a2 & 0xFFFFFFFFC03FLL | 0xFEED000000000000;
  *(a2 + 8) = AGXPerfCtrRDESampleHeaderParser::fAbsTimeOffset + a1[2];
  v4 = a1[3];
  v5 = *a3;
  if (v4 < *a3)
  {
    LODWORD(v5) = 0;
  }

  v6 = v4 - v5;
  *a3 = v4;
  v7 = a1[1];
  v8 = *a2 & 0xFFFFFFFFFFFF3FF0;
  *(a2 + 16) = v6;
  *(a2 + 20) = -1;
  *a2 = v8 | 0xFFFFFFFFC000;
  *(a2 + 24) = 0;
  if ((v7 & 0x3F00000000) != 0)
  {
    v9 = 0xFFFFFFFF0001;
    v10 = WORD1(v7) & 0x3F;
    v11 = 0xFFFFFFFF8001;
    v12 = 0xFFFFFFFF4002;
    if ((v7 & 0x2000000000) != 0)
    {
      v13 = 6;
    }

    else
    {
      v12 = 0xFFFFFFFF8002;
      v13 = 9;
    }

    if ((v7 & 0x800000000) != 0)
    {
      v12 = 0xFFFFFFFF0002;
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    if ((v7 & 0x3000000000) != 0)
    {
      v11 = 0xFFFFFFFF4001;
      v15 = 6;
    }

    else
    {
      v15 = 9;
    }

    if ((v7 & 0xC00000000) != 0)
    {
      v16 = 4;
    }

    else
    {
      v9 = v11;
      v16 = v15;
    }

    if ((v7 & 0x1500000000) != 0)
    {
      v17 = v16;
    }

    else
    {
      v9 = v12;
      v17 = v14;
    }

    v18 = v9 | v8;
    *a2 = v18;
    v19 = a1[(v17 + v10)];
    *(a2 + 20) = HIDWORD(v19);
    *a2 = v18 & 0xFFFF00000000FFF3 | (v19 << 16);
    *(a2 + 24) = v10;
    return 96;
  }

  else
  {
    if ((v7 & 0x401) != 0)
    {
      if (v7)
      {
        v3 = 0xFFFFFFFFC005;
      }

      *a2 = v8 | v3;
    }

    return 96;
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

void operator new()
{
    ;
  }
}