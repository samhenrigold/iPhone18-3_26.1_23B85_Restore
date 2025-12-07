void ___ZN33AccelerationStructureViewerServer6Server4recvEPvm_block_invoke_4(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v14 = &unk_2860BB738;
  *__p = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = *a2;
  if (*a2 != a2[1])
  {
    v8 = 0;
    do
    {
      if (v8 >= v16)
      {
        v9 = (v8 - __p[0]) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v10 = (v16 - __p[0]) >> 2;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v16 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v11 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        if (v11)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v11);
        }

        *(8 * v9) = v7;
        v8 = (8 * v9 + 8);
        v12 = (8 * v9 - (__p[1] - __p[0]));
        memcpy(v12, __p[0], __p[1] - __p[0]);
        v13 = __p[0];
        __p[0] = v12;
        __p[1] = v8;
        *&v16 = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v8 = v7;
        v8 += 8;
      }

      __p[1] = v8;
      v7 += 152;
    }

    while (v7 != a2[1]);
  }

  AccelerationStructureViewerServer::Server::replyQueryable(v6, 8, *(*(a1 + 40) + 8), &v14, v5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v14);
}

id *std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *,AccelerationStructureViewer::FilterToken *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 16);
    do
    {
      *(v5 - 2) = *(v4 + 8);
      objc_storeStrong(v5, *(v4 + 16));
      v4 += 24;
      v5 += 3;
    }

    while (v4 != a2);
    return v5 - 2;
  }

  return a3;
}

void *AccelerationStructureViewerServer::Server::lost(void *this, uint64_t a2)
{
  if (!a2)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 88))(this, 0, 1);
    }
  }

  return this;
}

uint64_t std::__function::__func<AccelerationStructureViewerServer::Intersector::Intersector(AccelerationStructureViewerServer::IntersectorType,objc_object  {objcproto9MTLDevice}*,objc_object  {objcproto10MTLLibrary}*,AccelerationStructureViewerServer::DataSource *,AccelerationStructureViewer::IntersectionFunctionTable *)::$_0,std::allocator<AccelerationStructureViewer::IntersectionFunctionTable>,void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewerServer::DataSource::IntersectionFunction *)>::operator()(void *a1, uint64_t a2, unsigned __int8 *a3, id *a4, uint64_t *a5)
{
  v6 = *a3;
  v7 = *a5;
  v8 = *a4;
  if (v8)
  {
    v31 = v8;
    v10 = *(v7 + 80);
    for (i = *(v7 + 88); v10 != i; ++v10)
    {
      v11 = a1[3];
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *v11;
      if (*v11 != v13)
      {
        v14 = *v11;
        while (*v14 != *v10)
        {
          v14 += 4;
          if (v14 == v13)
          {
            goto LABEL_9;
          }
        }
      }

      if (v14 == v13)
      {
LABEL_9:
        v15 = *(v11 + 16);
        if (v13 >= v15)
        {
          v17 = v13 - v12;
          v18 = (v13 - v12) >> 2;
          v19 = v18 + 1;
          if ((v18 + 1) >> 62)
          {
            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          v20 = v15 - v12;
          if (v20 >> 1 > v19)
          {
            v19 = v20 >> 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v21);
          }

          v22 = (v13 - v12) >> 2;
          v23 = (4 * v18);
          v24 = (4 * v18 - 4 * v22);
          *v23 = *v10;
          v16 = v23 + 1;
          memcpy(v24, v12, v17);
          v25 = *v11;
          *v11 = v24;
          *(v11 + 8) = v16;
          *(v11 + 16) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v13 = *v10;
          v16 = v13 + 4;
        }

        *(v11 + 8) = v16;
        i = *(v7 + 88);
      }
    }

    if (v6)
    {
      v28 = a1[2];
      v27 = (a1 + 2);
      v26 = v28;
    }

    else
    {
      v29 = a1[1];
      v27 = (a1 + 1);
      v26 = v29;
    }

    if (([*v26 containsObject:v31] & 1) == 0)
    {
      [**v27 addObject:v31];
    }
  }

  return MEMORY[0x2821F9730]();
}

__n128 std::__function::__func<AccelerationStructureViewerServer::Intersector::Intersector(AccelerationStructureViewerServer::IntersectorType,objc_object  {objcproto9MTLDevice}*,objc_object  {objcproto10MTLLibrary}*,AccelerationStructureViewerServer::DataSource *,AccelerationStructureViewer::IntersectionFunctionTable *)::$_0,std::allocator<AccelerationStructureViewer::IntersectionFunctionTable>,void ()(unsigned long,BOOL,objc_object  {objcproto11MTLFunction}*,AccelerationStructureViewerServer::DataSource::IntersectionFunction *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860BC980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::allocator<GTWaitInstructionInfo>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;

    operator delete(v3);
  }
}

void std::vector<GTRegisterPressureInstructionInfo>::__base_destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 96)
  {
    for (j = -24; j != -120; j -= 24)
    {
      v6 = *(i + j);
      if (v6)
      {
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

uint64_t std::__copy_move_unwrap_iters[abi:nn200100]<std::__copy_impl,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,GTRegisterPressureInstructionInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      for (i = 0; i != 96; i += 24)
      {
        if (a3 != v5)
        {
          v7 = v5 + i;
          v8 = *(v5 + i + 8);
          if (v8)
          {
            v9 = a3 + i;
            if (v8 > *(a3 + i + 16) << 6)
            {
              if (*v9)
              {
                operator delete(*v9);
                *v9 = 0;
                *(v9 + 8) = 0;
                *(v9 + 16) = 0;
                v8 = *(v7 + 8);
              }

              std::vector<BOOL>::__vallocate[abi:nn200100]((a3 + i), v8);
            }

            memmove(*v9, *(v5 + i), (((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
            v10 = *(v7 + 8);
          }

          else
          {
            v10 = 0;
          }

          *(a3 + i + 8) = v10;
        }
      }

      v5 += 96;
      a3 += 96;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *std::vector<GTRegisterPressureInstructionInfo>::__construct_at_end<GTRegisterPressureInstructionInfo*,GTRegisterPressureInstructionInfo*>(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[1];
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      for (i = 0; i != 96; i += 24)
      {
        result = std::vector<BOOL>::vector((v4 + i), v6 + i);
      }

      v6 += 96;
      v4 += 96;
    }

    while (v6 != a3);
  }

  v3[1] = v4;
  return result;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<GTWaitInstructionInfo *,GTWaitInstructionInfo *,GTWaitInstructionInfo *>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 = *v5;
      if (v5 != a3)
      {
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(a3 + 1, *(v5 + 8), *(v5 + 16), (*(v5 + 16) - *(v5 + 8)) >> 2);
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(a3 + 4, *(v5 + 32), *(v5 + 40), (*(v5 + 40) - *(v5 + 32)) >> 2);
      }

      v5 += 56;
      a3 += 7;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<GTWaitInstructionInfo>,GTWaitInstructionInfo*,GTWaitInstructionInfo*,GTWaitInstructionInfo*>(_DWORD *a1, _DWORD *a2, uint64_t *a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    return a3;
  }

  v5 = a1;
  v6 = a1;
  v7 = a3;
  do
  {
    v8 = *v6;
    v6 += 14;
    *v7 = v8;
    v7 += 7;
    std::vector<unsigned int>::vector[abi:nn200100](v3 + 1, v5 + 1);
    std::vector<unsigned int>::vector[abi:nn200100](v3 + 4, v5 + 4);
    v5 = v6;
    v3 = v7;
  }

  while (v6 != a2);
  return v7;
}

uint64_t *std::vector<unsigned int>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

uint64_t *std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 GTMTLGetTextureLevelInfoForDeviceWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v13 = a3 + 11;
  if ((a3 - 501) <= 0x3E)
  {
    if (((1 << v13) & 0x2000000000100001) != 0)
    {
      *a1 = 0u;
      result.n128_u64[0] = 0;
      *(a1 + 48) = 0u;
      v14 = 2 * a7;
      goto LABEL_7;
    }

    if (((1 << v13) & 0x4000000000800008) != 0)
    {
      goto LABEL_5;
    }
  }

  if (a3 == 590)
  {
LABEL_5:
    *a1 = 0u;
    result.n128_u64[0] = 0;
    *(a1 + 48) = 0u;
    v14 = 4 * a7;
LABEL_7:
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = v14;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    return result;
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  return result;
}

void *GTMTLPixelFormatGetInfoForDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  result = MTLPixelFormatGetInfoForDevice();
  v6 = *(a1 + 8);
  if (v6)
  {
    if (a3 > 500)
    {
      v7 = a3 + 11;
      if ((a3 - 501) > 0x3E)
      {
        goto LABEL_6;
      }

      if (((1 << v7) & 0x2000000000100001) != 0)
      {
        v8 = 2;
        goto LABEL_9;
      }

      if (((1 << v7) & 0x4000000000800008) == 0)
      {
LABEL_6:
        if (a3 != 590)
        {
          return result;
        }
      }

      v8 = 4;
LABEL_9:
      *(a1 + 24) = v8;
      return result;
    }

    if (a3 == 141 || a3 == 143)
    {
      *(a1 + 8) = v6 & 0xFFFFF7FF;
    }
  }

  return result;
}

id MTLHeap_backbuffer(void *a1)
{
  v1 = a1;
  v2 = [v1 currentAllocatedSize];
  v3 = [v1 resourceOptions];
  if ([v1 type])
  {
    if ([v1 type] == 1)
    {
      v4 = [v1 newBufferWithLength:v2 options:v3 offset:0];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = [v1 newBufferWithLength:v2 options:v3];
    [v4 makeAliasable];
  }

  [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.gputools.MTLHeapBackBuffer_0x%llx", v1];

  return v4;
}

id DEVICEOBJECT(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  while ((objc_opt_respondsToSelector() & 1) != 0)
  {
    a1 = [a1 performSelector:sel_baseObject];
  }

  objc_autoreleasePoolPop(v2);

  return a1;
}

void MakeGTMTLTensorExtents(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v9 = v3;
  v5 = [v3 rank];
  *a1 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    if ((v5 - 1) >= 0xF)
    {
      v7 = 15;
    }

    v8 = 8 * v7 + 8;
    do
    {
      *(v4 + v6) = *([v9 extents] + v6);
      v6 += 8;
    }

    while (v8 != v6);
  }
}

id MakeMTLTensorExtents(void *a1)
{
  v1 = 0;
  v6 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v2 = *a1;
  do
  {
    if (v2 == v1)
    {
      break;
    }

    *(v5 + v1) = a1[v1 + 1];
    ++v1;
  }

  while (v1 != 16);
  v3 = [objc_alloc(MEMORY[0x277CD7040]) initWithRank:*a1 extents:v5];

  return v3;
}

id MTLTensorExtents_computeStrides(void *a1)
{
  MakeGTMTLTensorExtents(&v8, a1);
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10[0] = v8;
  v10[1] = 1;
  if (v8 >= 2)
  {
    v1 = &v9;
    v2 = v8 - 1;
    v3 = v11;
    v4 = 1;
    do
    {
      v5 = *v1++;
      v4 *= v5;
      *v3++ = v4;
      --v2;
    }

    while (v2);
  }

  v6 = MakeMTLTensorExtents(v10);

  return v6;
}

void GTMTLTensor_wholeSlice(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7040];
  v4 = a2;
  v5 = [v3 alloc];
  v8 = [v4 dimensions];
  v6 = [v5 initWithRank:objc_msgSend(v8 extents:{"rank"), &GTMTLTensor_wholeSlice_origin}];
  MakeGTMTLTensorExtents(a1, v6);
  v7 = [v4 dimensions];

  MakeGTMTLTensorExtents(a1 + 136, v7);
}

id GTMTLTensorSlice_origin(uint64_t a1)
{
  v1 = *(a1 + 112);
  v7[6] = *(a1 + 96);
  v7[7] = v1;
  v8 = *(a1 + 128);
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v3 = *(a1 + 80);
  v7[4] = *(a1 + 64);
  v7[5] = v3;
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id GTMTLTensorSlice_dimensions(uint64_t a1)
{
  v1 = *(a1 + 216);
  v2 = *(a1 + 248);
  v7[6] = *(a1 + 232);
  v7[7] = v2;
  v8 = *(a1 + 264);
  v3 = *(a1 + 152);
  v4 = *(a1 + 184);
  v7[2] = *(a1 + 168);
  v7[3] = v4;
  v7[4] = *(a1 + 200);
  v7[5] = v1;
  v7[0] = *(a1 + 136);
  v7[1] = v3;
  v5 = MakeMTLTensorExtents(v7);

  return v5;
}

id MakeMTLLogicalToPhysicalColorAttachmentMap(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v2 = objc_opt_new();
  v3 = 0;
  while (1)
  {
    v4 = *(&v7 + v3);
    if (v4 == 255)
    {
      break;
    }

    [v2 setPhysicalIndex:v4 forLogicalIndex:{v3++, v7, v8}];
    if (v3 == 8)
    {
      v5 = v2;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

vm_address_t GTCoreAlloc(memory_object_size_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  address = 0;
  object_handle = 0;
  size = a1;
  v2 = MEMORY[0x277D85F48];
  memory_entry_64 = mach_make_memory_entry_64(*MEMORY[0x277D85F48], &size, 0, 139267, &object_handle, 0);
  if (memory_entry_64)
  {
    v4 = memory_entry_64;
    if (s_logUsingOsLog != 1)
    {
      v11 = *MEMORY[0x277D85DF8];
      mach_error_string(memory_entry_64);
      fprintf(v11, "warning: failed to create memory entry error 0x%x (%s)\n");
      return 0;
    }

    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = mach_error_string(v4);
      *buf = 67109378;
      v18 = v4;
      v19 = 2080;
      v20 = v6;
      v7 = "warning: failed to create memory entry error 0x%x (%s)";
LABEL_9:
      _os_log_error_impl(&dword_24D764000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    }
  }

  else
  {
    v8 = vm_map(*v2, &address, a1, 0, 1, object_handle, 0, 0, 3, 3, 1u);
    if (!v8)
    {
      mach_port_deallocate(*v2, object_handle);
      return address;
    }

    v9 = v8;
    if (s_logUsingOsLog != 1)
    {
      v13 = *MEMORY[0x277D85DF8];
      mach_error_string(v8);
      fprintf(v13, "warning: failed to map memory error 0x%x (%s)\n");
      return 0;
    }

    v5 = gt_tagged_log(3u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = mach_error_string(v9);
      *buf = 67109378;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      v7 = "warning: failed to map memory error 0x%x (%s)";
      goto LABEL_9;
    }
  }

  return 0;
}

id PrettifyFenumString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasPrefix:@"kDYFE"])
    {
      v3 = [v2 substringFromIndex:5];

      v2 = v3;
    }

    v4 = [v2 rangeOfString:@"_"];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@" " options:0 range:{v4, v5}];

      v2 = v6;
    }

    v7 = [v2 stringByReplacingOccurrencesOfString:@"_" withString:@":"];

    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%@%@]", @"-", v7, @":"];
  }

  return v2;
}

void GTError_addError(int *a1, uint64_t a2)
{
  if (a1 && *(a2 + 4))
  {
    if (GTError_initialize_onceToken != -1)
    {
      dispatch_once(&GTError_initialize_onceToken, &__block_literal_global_10851);
    }

    if (a1[1])
    {
      v4 = *a2 | *a1 | 2;
    }

    else
    {
      v5 = *a1;
      v7 = *(a2 + 16);
      v6 = *(a2 + 32);
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = v6;
      v4 = *a1 | v5;
    }

    *a1 = v4;
  }
}

uint64_t gt_error_assert_add_error(int *a1, int a2, uint64_t a3)
{
  if (a1 && (a2 & 1) == 0)
  {
    v5[0] = *a1;
    v5[1] = 500;
    v6 = a3;
    v7 = 0u;
    v8 = 0u;
    GTError_addError(a1, v5);
  }

  return a2 ^ 1u;
}

char *gt_filepath_merge(const char *a1, const char *a2, apr_pool_t *a3)
{
  v6 = strlen(a1);
  v7 = strlen(a2);
  v8 = v7;
  if (v6)
  {
    v6 -= a1[v6 - 1] == 47;
  }

  v9 = apr_palloc(a3, v7 + v6 + 2);
  memcpy(v9, a1, v6);
  v9[v6] = 47;
  memcpy(&v9[v6 + 1], a2, v8);
  v9[v8 + 1 + v6] = 0;
  return v9;
}

unint64_t MinBytesPerRow(int a1, unsigned int a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (a1 > 1885745711)
        {
          if (a1 <= 2016686639)
          {
            if (a1 != 1885745712)
            {
              if (a1 == 1999843442)
              {
                goto LABEL_67;
              }

              v4 = 1999908961;
              goto LABEL_56;
            }
          }

          else if (a1 <= 2019963439)
          {
            if (a1 != 2016686640)
            {
              return 0;
            }
          }

          else if (a1 != 2019963440)
          {
            if (a1 != 2037741171)
            {
              v3 = 2037741158;
LABEL_62:
              if (a1 == v3)
              {
                goto LABEL_63;
              }

              return 0;
            }

            goto LABEL_63;
          }
        }

        if (a1 <= 1815162993)
        {
          break;
        }

        if (a1 != 1882468912)
        {
          if (a1 == 1815162994)
          {
            goto LABEL_67;
          }

          v4 = 1815491698;
LABEL_56:
          if (a1 != v4)
          {
            return 0;
          }

LABEL_68:
          a2 *= 8;
          return a2;
        }
      }

      if (a1 <= 1380411456)
      {
        break;
      }

      if (a1 != 1751527984)
      {
        if (a1 == 1380411457)
        {
          goto LABEL_68;
        }

        v6 = 1667838256;
LABEL_66:
        if (a1 == v6)
        {
          goto LABEL_67;
        }

        return 0;
      }
    }

    if (a1 <= 846624101)
    {
      if (a1 > 828584239)
      {
        if (a1 > 843264103)
        {
          if (a1 == 843264104 || a1 == 843264310)
          {
            goto LABEL_67;
          }

          if (a1 != 845361456)
          {
            return 0;
          }

          v5 = 2 * a2 + 2;
        }

        else
        {
          if (a1 != 828584240)
          {
            if (a1 == 843264056)
            {
              goto LABEL_63;
            }

            v4 = 843264102;
            goto LABEL_56;
          }

          v5 = a2 + 2;
        }

        return (2 * ((2863311531u * v5) >> 32)) & 0xFFFFFFFC;
      }

      if (a1 > 826486885)
      {
        if (a1 == 826486886)
        {
          goto LABEL_67;
        }

        if (a1 != 826486888)
        {
          v3 = 826487094;
          goto LABEL_62;
        }

LABEL_63:
        a2 *= 2;
        return a2;
      }

      if (a1 == 24)
      {
        a2 *= 3;
        return a2;
      }

      if (a1 == 32)
      {
        goto LABEL_67;
      }

      v2 = 826486840;
LABEL_50:
      if (a1 == v2)
      {
        return a2;
      }

      return 0;
    }

    if (a1 > 1094862673)
    {
      break;
    }

    if (a1 > 875704437)
    {
      if (a1 != 875704438 && a1 != 875836518 && a1 != 875836534)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == 846624102 || a1 == 846624121)
      {
        goto LABEL_63;
      }

      if (a1 != 875704422)
      {
        return 0;
      }
    }

    a1 = 826486840;
  }

  if (a1 <= 1278226533)
  {
    if (a1 == 1094862674 || a1 == 1111970369)
    {
      goto LABEL_67;
    }

    v2 = 1278226488;
    goto LABEL_50;
  }

  if (a1 > 1278226741)
  {
    if (a1 == 1278226742)
    {
      goto LABEL_63;
    }

    v6 = 1380401729;
    goto LABEL_66;
  }

  if (a1 != 1278226534)
  {
    v3 = 1278226536;
    goto LABEL_62;
  }

LABEL_67:
  a2 *= 4;
  return a2;
}

uint64_t IsBiplanar(int a1)
{
  result = 1;
  if (a1 <= 875836517)
  {
    if (a1 > 645428783)
    {
      if (a1 != 645428784 && a1 != 875704422)
      {
        v3 = 875704438;
LABEL_18:
        if (a1 != v3)
        {
          return 0;
        }
      }
    }

    else if (a1 != 641230384 && a1 != 641234480)
    {
      v3 = 645424688;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 1882468911)
    {
      if (a1 > 2016686639)
      {
        if (a1 == 2016686640)
        {
          return result;
        }

        v3 = 2019963440;
      }

      else
      {
        if (a1 == 1882468912)
        {
          return result;
        }

        v3 = 1885745712;
      }

      goto LABEL_18;
    }

    if (a1 != 875836518 && a1 != 875836534)
    {
      v3 = 1751527984;
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t BytesPerElement(int a1)
{
  v1 = 1;
  if (a1 <= 875836533)
  {
    if (a1 <= 828584239)
    {
      if (a1 <= 645428783)
      {
        if (a1 <= 641230383)
        {
          if (a1 == 24)
          {
            return 3;
          }

          if (a1 == 32)
          {
            return 4;
          }
        }

        return 0;
      }

      if (a1 <= 826486885)
      {
        if (a1 == 826486840)
        {
          return v1;
        }

        return 0;
      }

      if (a1 == 826486886)
      {
        return 4;
      }

      if (a1 == 826486888)
      {
        return 2;
      }

      v3 = 826487094;
    }

    else
    {
      if (a1 > 845361455)
      {
        if (a1 <= 875704421)
        {
          if (a1 != 845361456)
          {
            if (a1 != 846624102)
            {
              v2 = 846624121;
              goto LABEL_56;
            }

            return 4;
          }

          return 8;
        }

        return 0;
      }

      if (a1 > 843264101)
      {
        if (a1 != 843264102)
        {
          if (a1 == 843264104)
          {
            return 4;
          }

          v2 = 843264310;
          goto LABEL_56;
        }

        return 8;
      }

      if (a1 == 828584240)
      {
        return 4;
      }

      v3 = 843264056;
    }

    goto LABEL_52;
  }

  if (a1 > 1751527983)
  {
    if (a1 <= 1999843441)
    {
      if (a1 > 1815491697)
      {
        if (a1 != 1815491698)
        {
          return 0;
        }

        return 8;
      }

      if (a1 == 1751527984)
      {
        return 0;
      }

      v2 = 1815162994;
    }

    else
    {
      if (a1 <= 2019963439)
      {
        if (a1 == 1999843442)
        {
          return 4;
        }

        if (a1 != 1999908961)
        {
          return 0;
        }

        return 8;
      }

      if (a1 == 2019963440)
      {
        return 0;
      }

      if (a1 == 2037741158)
      {
        return 4;
      }

      v2 = 2037741171;
    }

LABEL_56:
    if (a1 == v2)
    {
      return 4;
    }

    return 0;
  }

  if (a1 > 1278226535)
  {
    if (a1 > 1380401728)
    {
      if (a1 == 1380401729)
      {
        return 4;
      }

      if (a1 != 1380411457)
      {
        v2 = 1667838256;
        goto LABEL_56;
      }

      return 8;
    }

    if (a1 == 1278226536)
    {
      return 2;
    }

    v3 = 1278226742;
LABEL_52:
    if (a1 != v3)
    {
      return 0;
    }

    return 2;
  }

  if (a1 <= 1111970368)
  {
    if (a1 == 875836534)
    {
      return 0;
    }

    v2 = 1094862674;
    goto LABEL_56;
  }

  if (a1 == 1111970369)
  {
    return 4;
  }

  if (a1 != 1278226488)
  {
    v2 = 1278226534;
    goto LABEL_56;
  }

  return v1;
}

uint64_t ElementWidth(int a1)
{
  v1 = 2;
  if (a1 <= 875704437)
  {
    if (a1 <= 828584239)
    {
      if (a1 > 645424687)
      {
        if (a1 != 645424688)
        {
          v2 = 645428784;
          return a1 != v2;
        }
      }

      else if (a1 != 641230384)
      {
        v2 = 641234480;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 <= 846624101)
    {
      if (a1 != 828584240 && a1 != 845361456)
      {
        return 1;
      }

      return 3;
    }

    else if (a1 != 846624102 && a1 != 846624121)
    {
      v2 = 875704422;
      return a1 != v2;
    }
  }

  else
  {
    if (a1 <= 1885745711)
    {
      if (a1 > 875836533)
      {
        if (a1 == 875836534 || a1 == 1751527984)
        {
          return 0;
        }

        v2 = 1882468912;
        return a1 != v2;
      }

      if (a1 != 875704438)
      {
        v2 = 875836518;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 <= 2019963439)
    {
      if (a1 != 1885745712)
      {
        v2 = 2016686640;
        return a1 != v2;
      }

      return 0;
    }

    if (a1 == 2019963440)
    {
      return 0;
    }

    if (a1 != 2037741158 && a1 != 2037741171)
    {
      return 1;
    }
  }

  return v1;
}

id gt_tagged_log(unsigned int a1)
{
  v1 = &GTCoreLog_getLogForTag_s_logs[3 * a1];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __GTCoreLog_getLogForTag_block_invoke;
  v9 = &__block_descriptor_44_e5_v8__0l;
  LODWORD(v11) = a1;
  v10 = v1;
  if (*v1 != -1)
  {
    dispatch_once(&GTCoreLog_getLogForTag_s_logs[3 * a1], &v6);
  }

  if (v1[1] && ([MEMORY[0x277CBEBD0] standardUserDefaults], v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "BOOLForKey:", v1[1]), v2, !v3))
  {
    v4 = MEMORY[0x277D86228];
  }

  else
  {
    v4 = v1[2];
  }

  return v4;
}

void __GTCoreLogInit_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v1 = [v0 BOOLForKey:@"GPUToolsPerfLogging"];

  if (v1)
  {
    v2 = os_log_create("com.apple.gputools.perf", "");
    v3 = g_signpostLog;
    g_signpostLog = v2;
  }
}

id SanitizedShortString(void *a1, unint64_t a2)
{
  v3 = MEMORY[0x277CCA900];
  v4 = a1;
  v5 = [v3 alphanumericCharacterSet];
  v6 = [v5 invertedSet];

  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:&stru_2860BD438];
  if ([v8 length] > a2)
  {
    v9 = [v8 substringToIndex:a2];

    v8 = v9;
  }

  return v8;
}

const char *GTString_isMetalPackageURL(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    if (v2 >= 11)
    {
      return (strcmp(&v1[(v2 & 0x7FFFFFFF) - 11], ".mtlpackage") == 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

apr_hash_t *__cdecl apr_hash_make(apr_pool_t *pool)
{
  v6.tv_sec = 0;
  *&v6.tv_usec = 0;
  gettimeofday(&v6, 0);
  v6.tv_sec = v6.tv_usec + 1000000 * v6.tv_sec;
  tv_sec = v6.tv_sec;
  v3 = apr_palloc(pool, 0x50uLL);
  *v3 = pool;
  v3[9] = 0;
  v3[6] = 0xF00000000;
  *(v3 + 14) = (&v6 ^ pool ^ v3 ^ tv_sec ^ HIDWORD(tv_sec)) - 1;
  v4 = apr_palloc(pool, 0x80uLL);
  if (v4)
  {
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
  }

  v3[1] = v4;
  v3[8] = 0;
  return v3;
}

apr_hash_index_t *__cdecl apr_hash_next(apr_hash_index_t *hi)
{
  v1 = *(hi + 2);
  *(hi + 1) = v1;
  if (v1)
  {
LABEL_5:
    *(hi + 2) = *v1;
  }

  else
  {
    v2 = *hi;
    v3 = *(*hi + 52);
    v4 = *(hi + 6);
    while (v4 <= v3)
    {
      v1 = *(*(v2 + 8) + 8 * v4++);
      *(hi + 6) = v4;
      *(hi + 1) = v1;
      if (v1)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  return hi;
}

apr_hash_index_t *__cdecl apr_hash_first(apr_pool_t *p, apr_hash_t *ht)
{
  if (p)
  {
    v3 = apr_palloc(p, 0x20uLL);
  }

  else
  {
    v3 = ht + 16;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = ht;
  *(v3 + 6) = 0;

  return apr_hash_next(v3);
}

apr_hash_t *__cdecl apr_hash_copy(apr_pool_t *pool, const apr_hash_t *h)
{
  result = apr_palloc(pool, 40 * *(h + 12) + 8 * (*(h + 13) + 1) + 80);
  v5 = 0;
  v6 = 0;
  *(result + 12) = *(h + 12);
  v7 = *(h + 52);
  *(result + 52) = v7;
  *(result + 8) = *(h + 8);
  *(result + 9) = 0;
  *result = pool;
  *(result + 1) = result + 80;
  if ((v7 + 1) > 1)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 1;
  }

  do
  {
    v9 = (*(result + 1) + 8 * v5);
    v10 = *(*(h + 1) + 8 * v5);
    if (v10)
    {
      do
      {
        v11 = (v6 + 1);
        v12 = result + 40 * v6 + 8 * (v7 + 1) + 80;
        *v9 = v12;
        *(v12 + 2) = *(v10 + 2);
        v13 = v10[3];
        *(v12 + 2) = v10[2];
        v6 = *v9;
        v14 = v10[4];
        v6[3] = v13;
        v6[4] = v14;
        v9 = *v9;
        v10 = *v10;
        LODWORD(v6) = v11;
      }

      while (v10);
    }

    else
    {
      v11 = v6;
    }

    *v9 = 0;
    ++v5;
    v6 = v11;
  }

  while (v5 != v8);
  return result;
}

void *find_entry(uint64_t a1, _BYTE *a2, size_t a3, uint64_t a4)
{
  __n = a3;
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = v7(a2, &__n);
  }

  else
  {
    v8 = *(a1 + 56);
    if (a3 == -1)
    {
      v18 = *a2;
      if (*a2)
      {
        v19 = a2;
        do
        {
          v8 = 33 * v8 + v18;
          v20 = *++v19;
          v18 = v20;
        }

        while (v20);
      }

      else
      {
        v19 = a2;
      }

      __n = v19 - a2;
    }

    else if (a3)
    {
      v14 = a2;
      do
      {
        v15 = *v14++;
        v8 = 33 * v8 + v15;
        --a3;
      }

      while (a3);
    }
  }

  v9 = (*(a1 + 8) + 8 * (*(a1 + 52) & v8));
  v10 = *v9;
  if (*v9)
  {
    v11 = __n;
    while (1)
    {
      v12 = v9;
      v9 = v10;
      if (*(v10 + 8) == v8 && *(v10 + 24) == v11 && !memcmp(*(v10 + 16), a2, v11))
      {
        break;
      }

      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (a4)
    {
      v13 = *(a1 + 72);
      if (v13)
      {
        *(a1 + 72) = *v13;
      }

      else
      {
        v13 = apr_palloc(*a1, 0x28uLL);
      }

      *v13 = 0;
      v13[2] = v8;
      v16 = __n;
      *(v13 + 2) = a2;
      *(v13 + 3) = v16;
      *(v13 + 4) = a4;
      *v9 = v13;
      ++*(a1 + 48);
    }

    return v9;
  }

  return v12;
}

void apr_hash_set(apr_hash_t *ht, const void *key, apr_ssize_t klen, const void *val)
{
  entry = find_entry(ht, key, klen, val);
  v7 = *entry;
  if (*entry)
  {
    if (val)
    {
      v7[4] = val;
      v8 = *(ht + 13);
      if (*(ht + 12) > v8)
      {
        v9 = (2 * v8) | 1;
        v10 = 8 * (2 * v8 + 2);
        v11 = apr_palloc(*ht, v10);
        v12 = v11;
        if (v11)
        {
          bzero(v11, v10);
        }

        *(ht + 3) = 0;
        *(ht + 4) = 0;
        *(ht + 2) = ht;
        *(ht + 10) = 0;
        v13 = (ht + 16);
        while (1)
        {
          v13 = apr_hash_next(v13);
          if (!v13)
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v14 + 8) & v9;
          *v14 = v12[v15];
          v12[v15] = v14;
        }

        *(ht + 1) = v12;
        *(ht + 13) = v9;
      }
    }

    else
    {
      *entry = *v7;
      *v7 = *(ht + 9);
      *(ht + 9) = v7;
      --*(ht + 12);
    }
  }
}

void apr_hash_clear(apr_hash_t *ht)
{
  *(ht + 3) = 0;
  *(ht + 4) = 0;
  *(ht + 2) = ht;
  *(ht + 10) = 0;
  v2 = apr_hash_next((ht + 16));
  if (v2)
  {
    v3 = v2;
    do
    {
      apr_hash_set(ht, *(*(v3 + 1) + 16), *(*(v3 + 1) + 24), 0);
      v3 = apr_hash_next(v3);
    }

    while (v3);
  }
}

uint64_t atomic_cleanup(uint64_t a1)
{
  if (hash_mutex == a1)
  {
    hash_mutex = 0;
  }

  return 0;
}

void apr_pool_destroy(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v6 = *(p + 1);
    if (!v6)
    {
      break;
    }

    apr_pool_destroy(v6);
  }

  while (1)
  {
    v7 = *(p + 4);
    if (!v7)
    {
      break;
    }

    *(p + 4) = *v7;
    (*(v7 + 16))(*(v7 + 8));
  }

  free_proc_chain(*(p + 7), v1, v2, v3);
  if (*p)
  {
    v8 = *(*(*p + 48) + 24);
    if (v8)
    {
      pthread_mutex_lock((v8 + 8));
    }

    v9 = *(p + 2);
    **(p + 3) = v9;
    if (v9)
    {
      *(v9 + 24) = *(p + 3);
    }

    if (v8)
    {
      pthread_mutex_unlock((v8 + 8));
    }
  }

  v10 = *(p + 6);
  v11 = *(p + 12);
  *v11[1] = 0;
  if (v10[4] == p)
  {
    v10[3] = 0;
  }

  else
  {
    v12 = v10[3];
    if (v12)
    {
      pthread_mutex_lock((v12 + 8));
    }
  }

  v13 = 0;
  v14 = *v10;
  v15 = v10[1];
  v16 = (v10 + 5);
  v17 = v10[2];
  do
  {
    while (1)
    {
      v18 = v11;
      v11 = *v11;
      v19 = *(v18 + 4);
      if (!v15 || v17 > v19)
      {
        break;
      }

      *v18 = v13;
      v13 = v18;
      if (!v11)
      {
        goto LABEL_35;
      }
    }

    if (v19 > 0x13)
    {
      *v18 = *v16;
      *v16 = v18;
    }

    else
    {
      v20 = v16[v19];
      *v18 = v20;
      if (v14 <= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v14;
      }

      if (!v20)
      {
        v14 = v21;
      }

      v16[v19] = v18;
    }

    v22 = v17 > v19;
    v17 += ~v19;
    if (!v22)
    {
      v17 = 0;
    }
  }

  while (v11);
LABEL_35:
  *v10 = v14;
  v10[2] = v17;
  v23 = v10[3];
  if (v23)
  {
    pthread_mutex_unlock((v23 + 8));
  }

  if (v13)
  {
    v24 = MEMORY[0x277D85F48];
    do
    {
      v25 = *v13;
      MEMORY[0x253034350](*v24, v13, ((*(v13 + 4) << 12) + 4096));
      v13 = v25;
    }

    while (v25);
  }

  if (v10[4] == p)
  {

    apr_allocator_destroy(v10);
  }
}

unsigned int *free_proc_chain(unsigned int *result, uint64_t a2, apr_exit_why_e *a3, apr_wait_how_e a4)
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = result;
  do
  {
    result = apr_proc_wait(*v5, 1, a3, a4);
    if (result != 70006)
    {
      v5[2] = 0;
    }

    v5 = *(v5 + 2);
  }

  while (v5);
  v6 = v4;
  do
  {
    v7 = v6[2];
    if (v7 == 1)
    {
      result = apr_proc_kill(**v6, 9);
    }

    else if (v7 == 4 || v7 == 2)
    {
      result = apr_proc_kill(**v6, 15);
      if (!result)
      {
        LODWORD(v5) = 1;
      }
    }

    v6 = *(v6 + 2);
  }

  while (v6);
  v9 = v4;
  if (!v5)
  {
    goto LABEL_29;
  }

  v14 = xmmword_24DA8BC80;
  result = select(0, 0, 0, 0, &v14);
  v10 = 46875;
  while (2)
  {
    v11 = 0;
    v12 = v4;
    do
    {
      v13 = v11;
      if (v12[2] == 2)
      {
        v11 = 1;
        result = apr_proc_wait(*v12, 1, a3, a4);
        if (result == 70006)
        {
          goto LABEL_24;
        }

        v12[2] = 0;
      }

      v11 = v13;
LABEL_24:
      v12 = *(v12 + 2);
    }

    while (v12);
    if (v11 && v10 <= 0x2DC6BF)
    {
      *&v14 = v10 / 0xF4240;
      *(&v14 + 1) = v10 % 0xF4240;
      result = select(0, 0, 0, 0, &v14);
      v10 *= 2;
      continue;
    }

    break;
  }

  v9 = v4;
  do
  {
LABEL_29:
    if (v9[2] == 2)
    {
      result = apr_proc_kill(**v9, 9);
    }

    v9 = *(v9 + 2);
  }

  while (v9);
  do
  {
    if (v4[2])
    {
      result = apr_proc_wait(*v4, 0, a3, a4);
    }

    v4 = *(v4 + 2);
  }

  while (v4);
  return result;
}

void apr_allocator_destroy(apr_allocator_t *allocator)
{
  v1 = 0;
  v2 = allocator + 40;
  v3 = MEMORY[0x277D85F48];
  do
  {
    while (1)
    {
      v4 = *&v2[8 * v1];
      if (!v4)
      {
        break;
      }

      *&v2[8 * v1] = *v4;
      MEMORY[0x253034350](*v3);
    }

    ++v1;
  }

  while (v1 != 20);

  JUMPOUT(0x253034350);
}

uint64_t **allocator_alloc(unint64_t *a1, unint64_t a2)
{
  if (a2 + 4135 >= 0x2000)
  {
    v2 = (a2 + 4135) & 0xFFFFFFFFFFFFF000;
  }

  else
  {
    v2 = 0x2000;
  }

  if (((a2 + 4135) & 0xFFFFFFFFFFFFF000) < a2 || v2 == 0)
  {
    return 0;
  }

  v4 = v2 >> 12;
  v5 = (v2 >> 12) - 1;
  if (HIDWORD(v5))
  {
    return 0;
  }

  v8 = a1[3];
  if (v8)
  {
    pthread_mutex_lock((v8 + 8));
  }

  v10 = a1 + 5;
  v9 = *a1;
  if (v5 <= *a1)
  {
    v13 = &v10[v5];
    v6 = *v13;
    v14 = *v13 == 0;
    v15 = v5 < v9;
    if (*v13)
    {
      v16 = 1;
    }

    else
    {
      v16 = v5 >= v9;
    }

    if (!v16)
    {
      do
      {
        v17 = v13[1];
        ++v13;
        v6 = v17;
        v14 = v17 == 0;
        v15 = v4 < v9;
        if (v17)
        {
          v18 = 1;
        }

        else
        {
          v18 = v4 >= v9;
        }

        ++v4;
      }

      while (!v18);
    }

    if (v14)
    {
      goto LABEL_28;
    }

    v21 = *v6;
    *v13 = *v6;
    if (v21 == 0 && !v15)
    {
      v22 = v13 - 1;
      do
      {
        if (*v22--)
        {
          v24 = 1;
        }

        else
        {
          v24 = v9 == 1;
        }

        --v9;
      }

      while (!v24);
      *a1 = v9;
    }

    v12 = (*(v6 + 16) + 1);
LABEL_41:
    v25 = a1[2] + v12;
    if (v25 >= a1[1])
    {
      v25 = a1[1];
    }

    a1[2] = v25;
    v26 = a1[3];
    if (v26)
    {
      pthread_mutex_unlock((v26 + 8));
    }

    goto LABEL_45;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_28;
  }

  v11 = *(v6 + 16);
  if (v5 <= v11)
  {
LABEL_17:
    *v10 = *v6;
    v12 = (v11 + 1);
    goto LABEL_41;
  }

  while (1)
  {
    v10 = v6;
    v6 = *v6;
    if (!v6)
    {
      break;
    }

    v11 = *(v6 + 16);
    if (v5 <= v11)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  v19 = a1[3];
  if (v19)
  {
    pthread_mutex_unlock((v19 + 8));
  }

  v20 = GTCoreAlloc(v2);
  v6 = v20;
  if (v20)
  {
    *(v20 + 16) = v5;
    *(v20 + 32) = v20 + v2;
LABEL_45:
    *v6 = 0;
    *(v6 + 24) = v6 + 40;
  }

  return v6;
}

apr_status_t apr_pool_create_ex(apr_pool_t **newpool, apr_pool_t *parent, apr_abortfunc_t abort_fn, apr_allocator_t *allocator)
{
  v4 = abort_fn;
  *newpool = 0;
  if (parent)
  {
    v6 = parent;
  }

  else
  {
    v6 = global_pool;
  }

  if (v6)
  {
    v7 = *(v6 + 8);
    if (abort_fn)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = 0;
  if (!abort_fn)
  {
LABEL_6:
    v4 = *(v6 + 6);
  }

LABEL_7:
  v8 = allocator_alloc(v4, 0x1FD8uLL);
  if (v8)
  {
    *v8 = v8;
    v8[1] = v8;
    v9 = v8[3];
    v8[3] = v9 + 15;
    v9[12] = v8;
    v9[13] = (v9 + 15);
    v9[14] = 0;
    v9[6] = v4;
    v9[7] = 0;
    v9[4] = 0;
    v9[5] = 0;
    v9[10] = 0;
    v9[11] = v8;
    v9[8] = v7;
    v9[9] = 0;
    *v9 = v6;
    v9[1] = 0;
    if (v6)
    {
      v10 = *(*(v6 + 6) + 24);
      if (v10)
      {
        pthread_mutex_lock((v10 + 8));
      }

      v13 = *(v6 + 1);
      v12 = (v6 + 8);
      v11 = v13;
      v9[2] = v13;
      if (v13)
      {
        *(v11 + 24) = v9 + 2;
      }

      *v12 = v9;
      v9[3] = v12;
      if (v10)
      {
        pthread_mutex_unlock((v10 + 8));
      }
    }

    else
    {
      v9[2] = 0;
      v9[3] = 0;
    }

    v14 = 0;
    *newpool = v9;
  }

  else
  {
    v14 = 12;
    if (v7)
    {
      v7(12);
    }
  }

  return v14;
}

void *__cdecl apr_palloc(apr_pool_t *p, apr_size_t size)
{
  v3 = (size + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v3 < size)
  {
LABEL_2:
    v4 = *(p + 8);
    if (v4)
    {
      v4(12);
    }

    return 0;
  }

  v6 = *(p + 11);
  result = v6[3];
  if (v3 <= v6[4] - result)
  {
    v6[3] = (result + v3);
    return result;
  }

  v7 = *v6;
  if (v3 <= (*v6)[4] - (*v6)[3])
  {
    v8 = *v7;
    *v7[1] = *v7;
    v8[1] = v7[1];
  }

  else
  {
    v7 = allocator_alloc(*(p + 6), (size + 7) & 0xFFFFFFFFFFFFFFF8);
    if (!v7)
    {
      goto LABEL_2;
    }
  }

  *(v7 + 5) = 0;
  result = v7[3];
  v7[3] = (result + v3);
  v9 = v6[1];
  v7[1] = v9;
  *v9 = v7;
  *v7 = v6;
  v6[1] = v7;
  *(p + 11) = v7;
  v10 = (v6[4] - v6[3]) >> 12;
  *(v6 + 5) = v10;
  if (v10 < *(*v6 + 5))
  {
    v11 = *v6;
    do
    {
      v11 = *v11;
    }

    while (*(v11 + 5) > v10);
    *v7 = *v6;
    (*v6)[1] = v6[1];
    v12 = v11[1];
    v6[1] = v12;
    *v12 = v6;
    *v6 = v11;
    v11[1] = v6;
  }

  return result;
}

void apr_pool_clear(apr_pool_t *p)
{
  for (i = *(p + 14); i; i = *(p + 14))
  {
    *(p + 14) = *i;
    (*(i + 16))(*(i + 8));
  }

  *(p + 14) = 0;
  while (1)
  {
    v6 = *(p + 1);
    if (!v6)
    {
      break;
    }

    apr_pool_destroy(v6);
  }

  v8 = (p + 32);
  v7 = *(p + 4);
  if (v7)
  {
    do
    {
      *v8 = *v7;
      (*(v7 + 16))(*(v7 + 8));
      v7 = *v8;
    }

    while (*v8);
  }

  *v8 = 0;
  *(p + 5) = 0;
  free_proc_chain(*(p + 7), v1, v2, v3);
  *(p + 7) = 0;
  *(p + 9) = 0;
  v10 = *(p + 12);
  v9 = *(p + 13);
  *(p + 11) = v10;
  *(v10 + 24) = v9;
  if (*v10 != v10)
  {
    **(v10 + 8) = 0;
    v11 = *(p + 6);
    v12 = *v10;
    v13 = v11[3];
    if (v13)
    {
      pthread_mutex_lock((v13 + 8));
    }

    v14 = 0;
    v15 = *v11;
    v16 = v11[1];
    v17 = v11 + 5;
    v18 = v11[2];
    do
    {
      while (1)
      {
        v19 = v12;
        v12 = *v12;
        v20 = *(v19 + 4);
        if (!v16 || v18 > v20)
        {
          break;
        }

        *v19 = v14;
        v14 = v19;
        if (!v12)
        {
          goto LABEL_27;
        }
      }

      if (v20 > 0x13)
      {
        *v19 = *v17;
        *v17 = v19;
      }

      else
      {
        v21 = v17[v20];
        *v19 = v21;
        if (v15 <= v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = v15;
        }

        if (!v21)
        {
          v15 = v22;
        }

        v17[v20] = v19;
      }

      v23 = v18 > v20;
      v18 += ~v20;
      if (!v23)
      {
        v18 = 0;
      }
    }

    while (v12);
LABEL_27:
    *v11 = v15;
    v11[2] = v18;
    v24 = v11[3];
    if (v24)
    {
      pthread_mutex_unlock((v24 + 8));
    }

    if (v14)
    {
      v25 = MEMORY[0x277D85F48];
      do
      {
        v26 = *v14;
        MEMORY[0x253034350](*v25, v14, ((*(v14 + 4) << 12) + 4096));
        v14 = v26;
      }

      while (v26);
    }

    *v10 = v10;
    *(v10 + 8) = v10;
  }
}

uint64_t psprintf_flush(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1 - *(v3 + 24);
  if (2 * v4 <= 0x20)
  {
    v5 = 32;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (!*(a1 + 32))
  {
    v6 = *v3;
    if (v5 <= *(*v3 + 32) - *(*v3 + 24))
    {
      v10 = *v6;
      *v6[1] = *v6;
      v10[1] = v6[1];
      v11 = *(v3 + 8);
      v6[1] = v11;
      *v11 = v6;
      *v6 = v3;
      *(v3 + 8) = v6;
      *(v6 + 5) = 0;
      *(v2 + 88) = v6;
      v12 = (*(v3 + 32) - *(v3 + 24)) >> 12;
      *(v3 + 20) = v12;
      if (v12 < *(*v3 + 20))
      {
        v13 = *v3;
        do
        {
          v13 = *v13;
        }

        while (*(v13 + 5) > v12);
        *v6 = *v3;
        *(*v3 + 8) = *(v3 + 8);
        v14 = v13[1];
        *(v3 + 8) = v14;
        *v14 = v3;
        *v3 = v13;
        v13[1] = v3;
        v6 = *(v2 + 88);
      }

      goto LABEL_10;
    }
  }

  v7 = allocator_alloc(*(v2 + 48), v5);
  if (v7)
  {
    v6 = v7;
    if (*(a1 + 32))
    {
      *v3 = *(a1 + 40);
      *(a1 + 40) = v3;
    }

    *(a1 + 32) = 1;
LABEL_10:
    memcpy(v6[3], *(v3 + 24), v4);
    result = 0;
    *(a1 + 16) = v6;
    v9 = v6[4] - 1;
    *a1 = v6[3] + v4;
    *(a1 + 8) = v9;
    return result;
  }

  return 0xFFFFFFFFLL;
}

char *apr_psprintf(apr_pool_t *p, const char *fmt, ...)
{
  va_start(va, fmt);
  v49 = 0;
  v50 = 0;
  v47 = *(p + 11);
  v48 = p;
  v4 = *(v47 + 32);
  c.curpos = *(v47 + 24);
  c.endpos = v4 - 1;
  if (c.curpos == v4 && psprintf_flush(&c) == -1 || apr_vformatter(psprintf_flush, &c, fmt, va) == -1)
  {
    v29 = *(p + 8);
    if (v29)
    {
      v29(12);
    }

    if (v49)
    {
      v30 = v47;
      *v47 = v50;
      v31 = *(p + 6);
      v32 = v31[3];
      if (v32)
      {
        pthread_mutex_lock((v32 + 8));
      }

      v33 = 0;
      v34 = *v31;
      v35 = v31[1];
      v36 = v31 + 5;
      v37 = v31[2];
      do
      {
        while (1)
        {
          v38 = v30;
          v30 = *v30;
          v39 = *(v38 + 4);
          if (!v35 || v37 > v39)
          {
            break;
          }

          *v38 = v33;
          v33 = v38;
          if (!v30)
          {
            goto LABEL_54;
          }
        }

        if (v39 > 0x13)
        {
          *v38 = *v36;
          *v36 = v38;
        }

        else
        {
          v40 = v36[v39];
          *v38 = v40;
          if (v34 <= v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = v34;
          }

          if (!v40)
          {
            v34 = v41;
          }

          v36[v39] = v38;
        }

        v19 = v37 > v39;
        v37 += ~v39;
        if (!v19)
        {
          v37 = 0;
        }
      }

      while (v30);
LABEL_54:
      *v31 = v34;
      v31[2] = v37;
      v42 = v31[3];
      if (v42)
      {
        pthread_mutex_unlock((v42 + 8));
      }

      if (v33)
      {
        v43 = MEMORY[0x277D85F48];
        do
        {
          v44 = *v33;
          MEMORY[0x253034350](*v43, v33, ((*(v33 + 4) << 12) + 4096));
          v33 = v44;
        }

        while (v44);
      }
    }

    return 0;
  }

  else
  {
    v5 = c.curpos++;
    *v5 = 0;
    v6 = *(v47 + 24);
    *(v47 + 24) = &v6[(c.curpos - v6 + 7) & 0xFFFFFFFFFFFFFFF8];
    v7 = v50;
    if (v50)
    {
      v8 = *(p + 6);
      v9 = v8[3];
      if (v9)
      {
        pthread_mutex_lock((v9 + 8));
      }

      v10 = 0;
      v11 = *v8;
      v12 = v8[1];
      v13 = v8 + 5;
      v14 = v8[2];
      do
      {
        while (1)
        {
          v15 = v7;
          v7 = *v7;
          v16 = *(v15 + 4);
          if (!v12 || v14 > v16)
          {
            break;
          }

          *v15 = v10;
          v10 = v15;
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        if (v16 > 0x13)
        {
          *v15 = *v13;
          *v13 = v15;
        }

        else
        {
          v17 = v13[v16];
          *v15 = v17;
          if (v11 <= v16)
          {
            v18 = v16;
          }

          else
          {
            v18 = v11;
          }

          if (!v17)
          {
            v11 = v18;
          }

          v13[v16] = v15;
        }

        v19 = v14 > v16;
        v14 += ~v16;
        if (!v19)
        {
          v14 = 0;
        }
      }

      while (v7);
LABEL_23:
      *v8 = v11;
      v8[2] = v14;
      v20 = v8[3];
      if (v20)
      {
        pthread_mutex_unlock((v20 + 8));
      }

      if (v10)
      {
        v21 = MEMORY[0x277D85F48];
        do
        {
          v22 = *v10;
          MEMORY[0x253034350](*v21, v10, ((*(v10 + 4) << 12) + 4096));
          v10 = v22;
        }

        while (v22);
      }
    }

    if (v49)
    {
      v23 = *(p + 11);
      v24 = v47;
      *(v47 + 20) = 0;
      v25 = v23[1];
      v24[1] = v25;
      *v25 = v24;
      *v24 = v23;
      v23[1] = v24;
      *(p + 11) = v24;
      v26 = (v23[4] - v23[3]) >> 12;
      *(v23 + 5) = v26;
      if (v26 < *(*v23 + 20))
      {
        v27 = *v23;
        do
        {
          v27 = *v27;
        }

        while (*(v27 + 5) > v26);
        *v24 = *v23;
        *(*v23 + 8) = v23[1];
        v28 = v27[1];
        v23[1] = v28;
        *v28 = v23;
        *v23 = v27;
        v27[1] = v23;
      }
    }
  }

  return v6;
}

void apr_pool_cleanup_register(apr_pool_t *p, const void *data, apr_status_t (__cdecl *plain_cleanup)(void *), apr_status_t (__cdecl *child_cleanup)(void *))
{
  if (p)
  {
    v8 = *(p + 5);
    if (v8)
    {
      *(p + 5) = *v8;
    }

    else
    {
      v8 = apr_palloc(p, 0x20uLL);
    }

    v8[2] = plain_cleanup;
    v8[3] = child_cleanup;
    *v8 = *(p + 4);
    v8[1] = data;
    *(p + 4) = v8;
  }
}

uint64_t GTMTLTensorExtents_bytesLength(void *a1, void *a2, unsigned int a3)
{
  if (a3 > 0x29)
  {
    goto LABEL_4;
  }

  if (((1 << a3) & 0x220000008) != 0)
  {
    v3 = 4;
    return a2[*a2] * a1[*a1] * v3;
  }

  if (((1 << a3) & 0x22000010000) == 0)
  {
LABEL_4:
    if (a3 != 121)
    {
      v3 = 1;
      return a2[*a2] * a1[*a1] * v3;
    }
  }

  v3 = 2;
  return a2[*a2] * a1[*a1] * v3;
}

apr_status_t apr_proc_wait(apr_proc_t *proc, int *exitcode, apr_exit_why_e *exitwhy, apr_wait_how_e waithow)
{
  v8 = 0;
  if (exitcode)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  while (1)
  {
    v6 = waitpid(proc->pid, &v8, v5);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return *__error();
    }
  }

  if (!v6)
  {
    return 70006;
  }

  proc->pid = v6;
  if ((~v8 & 0x7F) != 0)
  {
    return 70005;
  }

  else
  {
    return 20014;
  }
}

apr_status_t apr_proc_kill(apr_proc_t *proc, int sig)
{
  if (kill(proc, sig) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

int apr_vformatter(int (__cdecl *flush_func)(apr_vformatter_buff_t *), apr_vformatter_buff_t *c, const char *fmt, va_list ap)
{
  v5 = c;
  v6 = flush_func;
  v184 = 0;
  v185 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v199 = *MEMORY[0x277D85DE8];
  v192 = 0;
  v193 = ap;
  v190 = 0;
  curpos = c->curpos;
  endpos = c->endpos;
LABEL_2:
  LOBYTE(v11) = *fmt;
  do
  {
    while (2)
    {
      if (v11 != 37)
      {
        if (!v11)
        {
          v5->curpos = curpos;
          return v9;
        }

        if (curpos)
        {
          v40 = endpos;
          if (curpos >= endpos)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              return -1;
            }

            curpos = v5->curpos;
            v40 = v5->endpos;
            LOBYTE(v11) = *fmt;
          }

          *curpos++ = v11;
        }

        else
        {
          v40 = endpos;
        }

        endpos = v40;
        ++v9;
LABEL_412:
        ++fmt;
        goto LABEL_2;
      }

      v13 = *++fmt;
      v12 = v13;
      if (v13 < 0)
      {
        if (__maskrune(v12, 0x1000uLL))
        {
LABEL_6:
          v188 = 0;
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v17 = 1;
          v18 = 32;
          v19 = 1;
          goto LABEL_42;
        }
      }

      else if ((*(MEMORY[0x277D85DE0] + 4 * v12 + 60) & 0x1000) != 0)
      {
        goto LABEL_6;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      v19 = 1;
      v18 = 32;
      while (1)
      {
        v20 = *fmt;
        if (v20 <= 0x2A)
        {
          break;
        }

        switch(v20)
        {
          case '0':
            v18 = 48;
            break;
          case '-':
            v19 = 0;
            break;
          case '+':
            v15 = 1;
            break;
          default:
            goto LABEL_21;
        }

LABEL_20:
        ++fmt;
      }

      if (v20 == 32)
      {
        v14 = 1;
        goto LABEL_20;
      }

      if (v20 == 35)
      {
        v16 = 1;
        goto LABEL_20;
      }

LABEL_21:
      if (v20 - 48 > 9)
      {
        if (v20 == 42)
        {
          v23 = v193;
          v193 += 8;
          v24 = *v23;
          v25 = *++fmt;
          v20 = v25;
          if (v24 >= 0)
          {
            v19 = v19;
          }

          else
          {
            v19 = 0;
          }

          if (v24 >= 0)
          {
            v7 = v24;
          }

          else
          {
            v7 = -v24;
          }

          goto LABEL_32;
        }

        v188 = 0;
      }

      else
      {
        v7 = *fmt - 48;
        v21 = *++fmt;
        v20 = v21;
        if (v21 - 48 <= 9)
        {
          do
          {
            v7 = 10 * v7 + v20 - 48;
            v22 = *++fmt;
            v20 = v22;
          }

          while (v22 - 48 < 0xA);
        }

LABEL_32:
        v188 = 1;
      }

      if (v20 == 46)
      {
        v26 = *(fmt + 1);
        if ((v26 - 48) > 9)
        {
          v17 = 0;
          if (v26 == 42)
          {
            v36 = v193;
            v193 += 8;
            fmt += 2;
            v185 = *v36 & ~(*v36 >> 31);
          }

          else
          {
            v185 = 0;
            ++fmt;
          }
        }

        else
        {
          v28 = *(fmt + 2);
          fmt += 2;
          v27 = v28;
          v185 = v26 - 48;
          if ((v28 - 48) <= 9)
          {
            v29 = v26 - 48;
            do
            {
              v30 = *++fmt;
              v29 = 10 * v29 + v27 - 48;
              v27 = v30;
            }

            while ((v30 - 48) < 0xA);
            v185 = v29;
          }

          v17 = 0;
        }
      }

      else
      {
        v17 = 1;
      }

LABEL_42:
      v31 = 0;
      v11 = *fmt;
      v32 = 1;
      if (v11 == 113 || v11 == 108)
      {
LABEL_46:
        v33 = v31;
        v34 = *++fmt;
        v11 = v34;
        v31 = v32;
      }

      else
      {
        if (v11 == 104)
        {
          v32 = 0;
          v31 = 1;
          goto LABEL_46;
        }

        v33 = 0;
      }

      v189 = v19;
      if (v11 > 102)
      {
        if (v11 > 111)
        {
          if (v11 <= 114)
          {
            if (v11 != 112)
            {
              goto LABEL_199;
            }

            v35 = *++fmt;
            v11 = v35;
            v6 = flush_func;
            if (v35)
            {
              if (v11 <= 82)
              {
                if (v11 > 69)
                {
                  if (v11 == 70)
                  {
                    goto LABEL_161;
                  }

                  if (v11 != 73)
                  {
                    goto LABEL_254;
                  }

                  v72 = v193;
                  v193 += 8;
                  v73 = *v72;
                  if (!v73)
                  {
                    goto LABEL_328;
                  }

                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v8 = 0;
                  v74 = v192;
                }

                else
                {
                  if (v11 != 65)
                  {
                    if (v11 != 66)
                    {
                      goto LABEL_254;
                    }

                    goto LABEL_161;
                  }

                  v110 = v193;
                  v193 += 8;
                  v73 = *v110;
                  if (!v73)
                  {
                    goto LABEL_328;
                  }

                  v111 = bswap32(*v73);
                  v112 = v111;
                  v113 = v195;
                  v114 = &v195[2];
                  v115 = &v195[4];
                  do
                  {
                    v116 = v114;
                    v117 = v113;
                    *(v115 - 2) = v112 % 0xA + 48;
                    --v115;
                    --v114;
                    --v113;
                    v61 = v112 > 9;
                    v112 /= 0xAu;
                  }

                  while (v61);
                  *(v115 - 2) = 46;
                  v118 = BYTE1(v111);
                  do
                  {
                    v119 = v117;
                    *(v116 - 2) = v118 % 0xA + 48;
                    --v116;
                    --v117;
                    v61 = v118 > 9;
                    v118 /= 0xAu;
                  }

                  while (v61);
                  *(v116 - 2) = 46;
                  v120 = BYTE2(v111);
                  do
                  {
                    *(v119 - 2) = v120 % 0xA + 48;
                    --v119;
                    v61 = v120 > 9;
                    v120 /= 0xAu;
                  }

                  while (v61);
                  *(v119 - 2) = 46;
                  v8 = v119 - 2;
                  v121 = HIBYTE(v111);
                  do
                  {
                    *--v8 = v121 % 0xA + 48;
                    v61 = v121 > 9;
                    v121 /= 0xAu;
                  }

                  while (v61);
LABEL_360:
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v74 = (&v195[3] - v8);
                }

                v78 = v185;
                if (v185 >= v74)
                {
                  v78 = v74;
                }

                v79 = v17 == 0;
                goto LABEL_364;
              }

              if (v11 > 108)
              {
                if (v11 == 109)
                {
                  v122 = v193;
                  v193 += 8;
                  v123 = *v122;
                  if (v123)
                  {
                    v124 = *v123;
                    if (*v123 > 19999)
                    {
                      if (v124 >> 6 > 0x752)
                      {
                        if (v124 > 0xA392F)
                        {
                          if (v124 > 0xAFC7F)
                          {
                            v163 = 0;
                            v164 = "Unrecognized resolver error";
                            if (v124 == 720004)
                            {
                              v164 = "No address for host";
                            }

                            v165 = "Unknown host";
                            if (v124 != 720001)
                            {
                              v165 = v164;
                            }

                            while (1)
                            {
                              v166 = v165[v163];
                              *(&__n[1] + v163) = v166;
                              if (!v166)
                              {
                                break;
                              }

                              if (++v163 == 510)
                              {
LABEL_511:
                                v177 = &v195[1];
                                goto LABEL_512;
                              }
                            }
                          }

                          else
                          {
                            v160 = gai_strerror(v124 - 670000);
                            if (v160)
                            {
                              v161 = 0;
                              while (1)
                              {
                                v162 = v160[v161];
                                *(&__n[1] + v161) = v162;
                                if (!v162)
                                {
                                  break;
                                }

                                if (++v161 == 510)
                                {
                                  goto LABEL_511;
                                }
                              }
                            }

                            else
                            {
                              v177 = &__n[1];
LABEL_512:
                              *v177 = 0;
                            }
                          }
                        }

                        else
                        {
                          for (i = 0; ; ++i)
                          {
                            *(&__n[1] + i) = aAprDoesNotUnde[i];
                            if (i == 39)
                            {
                              break;
                            }
                          }
                        }
                      }

                      else
                      {
                        v154 = "Could not perform a stat on the file.";
                        switch(v124)
                        {
                          case 0x4E21u:
                            break;
                          case 0x4E22u:
                            v154 = "A new pool could not be created.";
                            break;
                          case 0x4E23u:
                          case 0x4E32u:
LABEL_489:
                            v154 = "Error string not specified yet";
                            break;
                          case 0x4E24u:
                            v154 = "An invalid date has been provided";
                            break;
                          case 0x4E25u:
                            v154 = "An invalid socket was returned";
                            break;
                          case 0x4E26u:
                            v154 = "No process was provided and one was required.";
                            break;
                          case 0x4E27u:
                            v154 = "No time was provided and one was required.";
                            break;
                          case 0x4E28u:
                            v154 = "No directory was provided and one was required.";
                            break;
                          case 0x4E29u:
                            v154 = "No lock was provided and one was required.";
                            break;
                          case 0x4E2Au:
                            v154 = "No poll structure was provided and one was required.";
                            break;
                          case 0x4E2Bu:
                            v154 = "No socket was provided and one was required.";
                            break;
                          case 0x4E2Cu:
                            v154 = "No thread was provided and one was required.";
                            break;
                          case 0x4E2Du:
                            v154 = "No thread key structure was provided and one was required.";
                            break;
                          case 0x4E2Eu:
                            v154 = "Internal error (specific information not available)";
                            break;
                          case 0x4E2Fu:
                            v154 = "No shared memory is currently available";
                            break;
                          case 0x4E30u:
                            v154 = "The specified IP address is invalid.";
                            break;
                          case 0x4E31u:
                            v154 = "The specified network mask is invalid.";
                            break;
                          case 0x4E33u:
                            v154 = "DSO load failed";
                            break;
                          case 0x4E34u:
                            v154 = "The given path is absolute";
                            break;
                          case 0x4E35u:
                            v154 = "The given path is relative";
                            break;
                          case 0x4E36u:
                            v154 = "The given path is incomplete";
                            break;
                          case 0x4E37u:
                            v154 = "The given path was above the root path";
                            break;
                          case 0x4E38u:
                            v154 = "The given path is misformatted or contained invalid characters";
                            break;
                          case 0x4E39u:
                            v154 = "The given path contained wildcard characters";
                            break;
                          case 0x4E3Au:
                            v154 = "Could not find the requested symbol.";
                            break;
                          case 0x4E3Bu:
                            v154 = "The process is not recognized.";
                            break;
                          case 0x4E3Cu:
                            v154 = "Not enough entropy to continue.";
                            break;
                          default:
                            switch(v124)
                            {
                              case 0x11171u:
                                v154 = "Your code just forked, and you are currently executing in the child process";
                                break;
                              case 0x11172u:
                                v154 = "Your code just forked, and you are currently executing in the parent process";
                                break;
                              case 0x11173u:
                                v154 = "The specified thread is detached";
                                break;
                              case 0x11174u:
                                v154 = "The specified thread is not detached";
                                break;
                              case 0x11175u:
                                v154 = "The specified child process is done executing";
                                break;
                              case 0x11176u:
                                v154 = "The specified child process is not done executing";
                                break;
                              case 0x11177u:
                                v154 = "The timeout specified has expired";
                                break;
                              case 0x11178u:
                                v154 = "Partial results are valid but processing is incomplete";
                                break;
                              case 0x1117Cu:
                                v154 = "Bad character specified on command line";
                                break;
                              case 0x1117Du:
                                v154 = "Missing parameter for the specified command line option";
                                break;
                              case 0x1117Eu:
                                v154 = "End of file found";
                                break;
                              case 0x1117Fu:
                                v154 = "Could not find specified socket in poll list.";
                                break;
                              case 0x11183u:
                                v154 = "Shared memory is implemented anonymously";
                                break;
                              case 0x11184u:
                                v154 = "Shared memory is implemented using files";
                                break;
                              case 0x11185u:
                                v154 = "Shared memory is implemented using a key system";
                                break;
                              case 0x11186u:
                                v154 = "There is no error, this value signifies an initialized error code";
                                break;
                              case 0x11187u:
                                v154 = "This function has not been implemented on this platform";
                                break;
                              case 0x11188u:
                                v154 = "passwords do not match";
                                break;
                              case 0x11189u:
                                v154 = "The given lock was busy.";
                                break;
                              default:
                                goto LABEL_489;
                            }

                            break;
                        }

                        v178 = 0;
                        while (1)
                        {
                          v179 = v154[v178];
                          *(&__n[1] + v178) = v179;
                          if (!v179)
                          {
                            break;
                          }

                          if (++v178 == 510)
                          {
                            goto LABEL_511;
                          }
                        }
                      }
                    }

                    else if (strerror_r(v124, &__n[1], 0x1FFuLL) < 0)
                    {
                      for (j = 0; ; ++j)
                      {
                        *(&__n[1] + j) = aAprDoesNotUnde[j];
                        if (j == 39)
                        {
                          break;
                        }
                      }
                    }

                    v8 = &__n[1];
                    v152 = strlen(&__n[1]);
                    LODWORD(v19) = v189;
                  }

                  else
                  {
                    v152 = 6;
                    v8 = "(null)";
                  }

                  v109 = endpos;
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v192 = v152;
                  v18 = 32;
                  goto LABEL_370;
                }

                if (v11 != 116)
                {
                  if (v11 == 112)
                  {
                    v37 = v193;
                    v193 += 8;
                    v38 = *v37;
                    if (HIDWORD(v38))
                    {
                      v8 = &v195[3];
                      do
                      {
                        *--v8 = conv_p2_low_digits[v38 & 0xF];
                        v61 = v38 > 0xF;
                        v38 >>= 4;
                      }

                      while (v61);
                    }

                    else
                    {
                      v8 = &v195[3];
                      do
                      {
                        *--v8 = conv_p2_low_digits[v38 & 0xF];
                        v39 = v38 >= 0x10;
                        LODWORD(v38) = v38 >> 4;
                      }

                      while (v39);
                    }

                    LOBYTE(v73) = 0;
                    LOBYTE(v16) = 0;
                    v74 = (&v195[3] - v8);
LABEL_367:
                    v192 = v74;
                    goto LABEL_368;
                  }

LABEL_254:
                  LOBYTE(v73) = 0;
                  LOBYTE(v16) = 0;
                  v192 = 8;
                  v193 += 8;
                  v8 = "bogus %p";
                  goto LABEL_369;
                }

                v126 = v193;
                v193 += 8;
                v73 = *v126;
                if (v73)
                {
                  v127 = *v73;
                  if (HIDWORD(v127))
                  {
                    v8 = &v195[3];
                    do
                    {
                      *--v8 = conv_p2_low_digits[v127 & 0xF];
                      v61 = v127 > 0xF;
                      v127 >>= 4;
                    }

                    while (v61);
                  }

                  else
                  {
                    v8 = &v195[3];
                    do
                    {
                      *--v8 = conv_p2_low_digits[v127 & 0xF];
                      v39 = v127 >= 0x10;
                      LODWORD(v127) = v127 >> 4;
                    }

                    while (v39);
                  }

                  goto LABEL_360;
                }

LABEL_328:
                LOBYTE(v16) = 0;
                v192 = 6;
                v18 = 32;
                v8 = "(null)";
                goto LABEL_369;
              }

              if (v11 != 83)
              {
                if (v11 != 84)
                {
                  goto LABEL_254;
                }

                v75 = v193;
                v193 += 8;
                v73 = *v75;
                if (!v73)
                {
                  goto LABEL_328;
                }

                v76 = v17;
                v77 = conv_10_quad(*v73, 1, buf, &v195[3], &v192);
                LODWORD(v19) = v189;
                v8 = v77;
                LOBYTE(v73) = 0;
                LOBYTE(v16) = 0;
                v74 = v192;
                v78 = v185;
                if (v185 >= v192)
                {
                  v78 = v192;
                }

                v79 = v76 == 0;
LABEL_364:
                if (v79)
                {
                  v74 = v78;
                }

                goto LABEL_367;
              }

LABEL_161:
              v80 = v193;
              v193 += 8;
              v81 = *v80;
              if (v11 == 66)
              {
                if (v81)
                {
                  v82 = *v81;
                  goto LABEL_167;
                }

LABEL_223:
                v86 = apr_snprintf(buf, v19, "%3d ");
                goto LABEL_224;
              }

              if (!v81)
              {
                goto LABEL_223;
              }

              v82 = *v81;
              if ((*v81 & 0x8000000000000000) != 0)
              {
                v107 = "  - ";
LABEL_330:
                *buf = *v107;
                v198 = v107[4];
              }

              else
              {
LABEL_167:
                if (v82 < 0x3CD)
                {
                  goto LABEL_223;
                }

                v83 = "";
                do
                {
                  v84 = v82;
                  v82 >>= 10;
                  ++v83;
                }

                while (v82 > 0x3CC);
                v85 = v84 & 0x3FF;
                if (v82 < 9 || v82 == 9 && v85 <= 0x3CC)
                {
                  v86 = apr_snprintf(buf, v19, "%d.%d%c");
                }

                else
                {
                  v86 = apr_snprintf(buf, v19, "%3d%c");
                }

LABEL_224:
                if (v86 < 0)
                {
                  v107 = "****";
                  goto LABEL_330;
                }
              }

              v8 = buf;
              v150 = strlen(buf);
              LOBYTE(v73) = 0;
              LOBYTE(v16) = 0;
              v192 = v150;
              v18 = 32;
              v109 = endpos;
              LODWORD(v19) = v189;
              goto LABEL_370;
            }

            continue;
          }

          if (v11 == 115)
          {
            v99 = v193;
            v193 += 8;
            v8 = *v99;
            if (*v99)
            {
              if (v17)
              {
                v100 = strlen(*v99);
                LODWORD(v19) = v189;
                LOBYTE(v73) = 0;
                LOBYTE(v16) = 0;
                v192 = v100;
              }

              else
              {
                v192 = 0;
                LOBYTE(v73) = v185;
                if (v185)
                {
                  v151 = 0;
                  while (v8[v151])
                  {
                    v192 = ++v151;
                    v18 = 32;
                    if (v185 == v151)
                    {
                      goto LABEL_352;
                    }
                  }

                  LOBYTE(v73) = 0;
                }

                else
                {
                  v185 = 0;
                }

                LOBYTE(v16) = 0;
              }

              goto LABEL_368;
            }

            LOBYTE(v73) = 0;
            goto LABEL_328;
          }

          if (v11 != 120)
          {
            if (v11 != 117)
            {
              goto LABEL_199;
            }

            if (v31)
            {
              v50 = v193;
              v193 += 8;
              v51 = v17;
              v52 = conv_10_quad(*v50, 1, &v190, &v195[3], &v192);
              LODWORD(v19) = v189;
              v8 = v52;
              if ((v51 & 1) == 0)
              {
                goto LABEL_105;
              }

LABEL_292:
              LOBYTE(v73) = 0;
              LOBYTE(v16) = 0;
              goto LABEL_369;
            }

            v140 = v193;
            v193 += 8;
            v141 = *v140;
            if (v33)
            {
              v141 = v141;
            }

            v190 = 0;
            v8 = &v195[3];
            do
            {
              *--v8 = v141 % 0xA + 48;
              v61 = v141 > 9;
              v141 /= 0xAu;
            }

            while (v61);
            v192 = &v195[3] - v8;
            if (v17)
            {
              goto LABEL_292;
            }

LABEL_105:
            v53 = 511;
            if (v185 + 1 < 0x200)
            {
              v53 = v185;
            }

            for (; v192 < v53; ++v192)
            {
              *--v8 = 48;
            }

LABEL_352:
            LOBYTE(v73) = 0;
            LOBYTE(v16) = 0;
            goto LABEL_369;
          }

LABEL_136:
          if (v31)
          {
            v66 = v193;
            v193 += 8;
            v67 = *v66;
            v68 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v68 = "0123456789ABCDEF";
            }

            if (HIDWORD(v67))
            {
              v8 = &v195[3];
              do
              {
                *--v8 = v68[v67 & 0xF];
                v39 = v67 >= 0x10;
                v67 >>= 4;
              }

              while (v39);
            }

            else
            {
              v8 = &v195[3];
              do
              {
                *--v8 = v68[v67 & 0xF];
                v39 = v67 >= 0x10;
                LODWORD(v67) = v67 >> 4;
              }

              while (v39);
            }
          }

          else
          {
            v92 = v193;
            v193 += 8;
            v93 = *v92;
            v94 = v93;
            if (!v33)
            {
              v94 = v93;
            }

            v95 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v95 = "0123456789ABCDEF";
            }

            v8 = &v195[3];
            v184 = v94;
            do
            {
              *--v8 = v95[v94 & 0xF];
              v61 = v94 > 0xF;
              v94 >>= 4;
            }

            while (v61);
          }

          v192 = &v195[3] - v8;
          if ((v17 & 1) == 0)
          {
            v128 = 511;
            if (v185 + 1 < 0x200)
            {
              v128 = v185;
            }

            if (&v195[3] - v8 < v128)
            {
              do
              {
                *--v8 = 48;
                ++v192;
              }

              while (v192 < v128);
            }
          }

          LOBYTE(v73) = 0;
          if (!v16 || !v184)
          {
            LOBYTE(v16) = 0;
            goto LABEL_369;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v129 = *fmt;
          *(v8 - 2) = 48;
          v8 -= 2;
          v8[1] = v129;
          v130 = v192 + 2;
LABEL_269:
          v192 = v130;
          goto LABEL_369;
        }

        if (v11 > 109)
        {
          if (v11 == 110)
          {
            LOBYTE(v73) = 0;
            if (v31)
            {
              v98 = v193;
              v193 += 8;
              **v98 = v9;
            }

            else
            {
              v135 = v193;
              v193 += 8;
              if (v33)
              {
                **v135 = v9;
              }

              else
              {
                **v135 = v9;
              }
            }

            LOBYTE(v16) = 1;
            goto LABEL_369;
          }

          if (v31)
          {
            v69 = v193;
            v193 += 8;
            v70 = *v69;
            v71 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v71 = "0123456789ABCDEF";
            }

            if (HIDWORD(v70))
            {
              v8 = &v195[3];
              do
              {
                *--v8 = v71[v70 & 7];
                v39 = v70 >= 8;
                v70 >>= 3;
              }

              while (v39);
            }

            else
            {
              v8 = &v195[3];
              do
              {
                *--v8 = v71[v70 & 7];
                v39 = v70 >= 8;
                LODWORD(v70) = v70 >> 3;
              }

              while (v39);
            }
          }

          else
          {
            v136 = v193;
            v193 += 8;
            v137 = *v136;
            v138 = v137;
            if (!v33)
            {
              v138 = v137;
            }

            v139 = "0123456789abcdef";
            if (*fmt == 88)
            {
              v139 = "0123456789ABCDEF";
            }

            v8 = &v195[3];
            v184 = v138;
            do
            {
              *--v8 = v139[v138 & 7];
              v61 = v138 > 7;
              v138 >>= 3;
            }

            while (v61);
          }

          v192 = &v195[3] - v8;
          if ((v17 & 1) == 0)
          {
            v153 = 511;
            if (v185 + 1 < 0x200)
            {
              v153 = v185;
            }

            if (&v195[3] - v8 < v153)
            {
              do
              {
                *--v8 = 48;
                ++v192;
              }

              while (v192 < v153);
            }
          }

          if (!v16)
          {
            LOBYTE(v73) = 0;
            goto LABEL_369;
          }

          if (*v8 == 48)
          {
            goto LABEL_352;
          }

          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          *--v8 = 48;
          v130 = v192 + 1;
          goto LABEL_269;
        }

        if (v11 != 103)
        {
          if (v11 != 105)
          {
            goto LABEL_199;
          }

          goto LABEL_87;
        }

LABEL_110:
        v183 = v5;
        v54 = v185;
        if (v185 <= 1)
        {
          v54 = 1;
        }

        if (v17)
        {
          v55 = 6;
        }

        else
        {
          v55 = v54;
        }

        v56 = v193;
        v193 += 8;
        v57 = *v56;
        *&v195[3] = 0;
        __n[0] = 0;
        v185 = v55;
        apr_cvt(v55, __n, &v195[3], 1, buf, v57);
        v58 = &__n[1] + 1;
        if (*&v195[3])
        {
          BYTE1(__n[1]) = 45;
          v58 = &__n[1] + 2;
        }

        LODWORD(v59) = v185;
        if (v185 >= 2)
        {
          v59 = v185 & 0x7FFFFFFF;
          while (v196[v59 + 1] == 48)
          {
            if (v59-- <= 2)
            {
              LODWORD(v59) = 1;
              break;
            }
          }
        }

        v60 = __n[0];
        v61 = __n[0] < 0 || __n[0] - v59 <= 4;
        v62 = !v61;
        if (__n[0] >= -3 && v62 == 0)
        {
          if (__n[0] <= 0)
          {
            if (buf[0] != 48)
            {
              *v58++ = 46;
            }

            if (v60 < 0)
            {
              do
              {
                __n[0] = v60 + 1;
                *v58++ = 48;
                v60 = __n[0];
              }

              while (__n[0] < 0);
            }

            else
            {
              v60 = 0;
            }
          }

          if (v59 >= 1)
          {
            v87 = v59;
            v88 = buf;
            v89 = 1;
            do
            {
              v90 = *v88++;
              *v58 = v90;
              if (v89 == __n[0])
              {
                v58[1] = 46;
                v58 += 2;
              }

              else
              {
                ++v58;
              }

              ++v89;
              --v87;
            }

            while (v87);
            v60 = __n[0];
          }

          if (v59 < v60)
          {
            do
            {
              v91 = v58;
              LODWORD(v59) = v59 + 1;
              *v58++ = 48;
            }

            while (v59 < __n[0]);
            *v58 = 46;
            v58 = v91 + 2;
          }
        }

        else
        {
          --__n[0];
          *v58 = buf[0];
          v64 = v58 + 2;
          v58[1] = 46;
          if (v59 > 1)
          {
            v182 = v60;
            memcpy(v64, &buf[1], (v59 - 1));
            v60 = v182;
            v64 = &v58[(v59 + 1)];
          }

          *v64 = 101;
          if (v60 < 1)
          {
            __n[0] = 1 - v60;
            v65 = 45;
          }

          else
          {
            v65 = 43;
          }

          v64[1] = v65;
          v142 = __n[0];
          if (__n[0] < 100)
          {
            v143 = v64 + 2;
          }

          else
          {
            v143 = v64 + 3;
            v64[2] = __n[0] / 0x64u + 48;
            v142 = __n[0];
          }

          if (v142 >= 10)
          {
            *v143++ = ((103 * (v142 % 0x64u)) >> 10) | 0x30;
            v142 = __n[0];
          }

          *v143 = v142 % 10 + 48;
          v58 = v143 + 1;
        }

        v144 = v58 - 1;
        if (*(v58 - 1) != 46 || v16 != 0)
        {
          v144 = v58;
        }

        *v144 = 0;
        v146 = 32 * (v14 != 0);
        if (v15)
        {
          v146 = 43;
        }

        if (BYTE1(__n[1]) == 45)
        {
          v105 = 45;
        }

        else
        {
          v105 = v146;
        }

        if (BYTE1(__n[1]) == 45)
        {
          v8 = &__n[1] + 2;
        }

        else
        {
          v8 = &__n[1] + 1;
        }

        v147 = strlen(v8);
        v192 = v147;
        if (v16)
        {
          v148 = v147;
          if (!strchr(v8, 46))
          {
            v192 = v148 + 1;
            *&v8[v148] = 46;
          }
        }

        if (*fmt == 71)
        {
          v149 = strchr(v8, 101);
          if (v149)
          {
            *v149 = 69;
          }
        }

        v109 = endpos;
        LODWORD(v19) = v189;
LABEL_320:
        LOBYTE(v16) = 0;
        LOBYTE(v73) = v105 != 0;
        if (v105 && v8 != "(null)")
        {
          LOBYTE(v16) = 0;
          *--v8 = v105;
          ++v192;
          LOBYTE(v73) = 1;
        }

        v5 = v183;
        goto LABEL_370;
      }

      break;
    }

    if (v11 > 68)
    {
      if (v11 <= 98)
      {
        if (v11 != 69)
        {
          if (v11 != 71)
          {
            if (v11 != 88)
            {
              goto LABEL_199;
            }

            goto LABEL_136;
          }

          goto LABEL_110;
        }

LABEL_94:
        v44 = v193;
        v193 += 8;
        v45 = *v44;
        if (fabs(*v44) == INFINITY)
        {
          LOBYTE(v73) = 0;
          LOBYTE(v16) = 0;
          v192 = 3;
          v8 = "inf";
          goto LABEL_369;
        }

        v46 = *fmt;
        if (v17)
        {
          v47 = 6;
        }

        else
        {
          v47 = v185;
        }

        __n[0] = 0;
        v181 = v46;
        v183 = v5;
        if (v46 == 102)
        {
          v48 = v47;
          v49 = 0;
        }

        else
        {
          v48 = v47 + 1;
          v49 = 1;
        }

        apr_cvt(v48, __n, &v190, v49, buf, v45);
        v108 = buf[0];
        if ((buf[0] & 0x8000000000000000) != 0)
        {
          if (!__maskrune(buf[0], 0x100uLL))
          {
            goto LABEL_272;
          }

LABEL_229:
          v192 = strlen(buf);
          v8 = &__n[1] + 1;
          __memcpy_chk();
          v190 = 0;
          v109 = endpos;
          LODWORD(v19) = v189;
        }

        else
        {
          if ((*(MEMORY[0x277D85DE0] + 4 * buf[0] + 60) & 0x100) != 0)
          {
            goto LABEL_229;
          }

LABEL_272:
          v131 = v181;
          if (v181 == 102)
          {
            v132 = __n[0];
            if (__n[0] < 1)
            {
              BYTE1(__n[1]) = 48;
              if (v47 < 1)
              {
                LODWORD(v19) = v189;
                if (v16)
                {
                  BYTE2(__n[1]) = 46;
                  v133 = buf;
                  v134 = &__n[1] + 3;
                }

                else
                {
                  v133 = buf;
                  v134 = &__n[1] + 2;
                }
              }

              else
              {
                BYTE2(__n[1]) = 46;
                v134 = &__n[1] + 3;
                LODWORD(v19) = v189;
                if (__n[0] < 0)
                {
                  v159 = ~__n[0];
                  memset(&__n[1] + 3, 48, v159 + 1);
                  v131 = 102;
                  LODWORD(v19) = v189;
                  v134 = &__n[2] + v159;
                }

                __n[0] = 1;
                v133 = buf;
              }
            }

            else
            {
              memcpy(&__n[1] + 1, buf, __n[0]);
              v133 = &buf[v132];
              v134 = &__n[1] + v132 + 1;
              __n[0] = -1;
              if (v16 || v47 > 0)
              {
                *v134++ = 46;
              }

              LODWORD(v19) = v189;
              v131 = 102;
            }
          }

          else
          {
            BYTE1(__n[1]) = v108;
            LODWORD(v19) = v189;
            if (v16 || (v134 = &__n[1] + 2, v133 = &buf[1], v47 >= 1))
            {
              BYTE2(__n[1]) = 46;
              v134 = &__n[1] + 3;
              v133 = &buf[1];
            }
          }

          v167 = *v133;
          if (*v133)
          {
            v168 = (v133 + 1);
            do
            {
              *v134++ = v167;
              v169 = *v168++;
              v167 = v169;
            }

            while (v169);
          }

          if (v131 != 102)
          {
            *v134 = v131;
            v170 = __n[0];
            v171 = --__n[0];
            if (__n[0])
            {
              if (v171 >= 0)
              {
                v172 = v171;
              }

              else
              {
                v172 = -v171;
              }

              v173 = -1;
              v174 = v196;
              do
              {
                v175 = v173;
                *--v174 = v172 % 0xA + 48;
                --v173;
                v61 = v172 > 9;
                v172 /= 0xAu;
              }

              while (v61);
              if (v170 <= 0)
              {
                v176 = 45;
              }

              else
              {
                v176 = 43;
              }

              v134[1] = v176;
              if (v196 - v174 == 1)
              {
                v134[2] = 48;
                v134 += 3;
              }

              else
              {
                v134 += 2;
              }

              do
              {
                *v134++ = v196[v175];
                v39 = __CFADD__(v175++, 1);
              }

              while (!v39);
            }

            else
            {
              *(v134 + 1) = 12331;
              v134[3] = 48;
              v134 += 4;
            }
          }

          v192 = v134 - (&__n[1] + 1);
          v8 = &__n[1] + 1;
          v109 = endpos;
          if (v190)
          {
            v105 = 45;
            goto LABEL_320;
          }
        }

        if (v15)
        {
          v105 = 43;
        }

        else
        {
          v105 = 32 * (v14 != 0);
        }

        goto LABEL_320;
      }

      if ((v11 - 101) < 2)
      {
        goto LABEL_94;
      }

      if (v11 == 99)
      {
        LOBYTE(v73) = 0;
        LOBYTE(v16) = 0;
        v106 = v193;
        v193 += 8;
        v96 = *v106;
LABEL_221:
        v191[0] = v96;
        v97 = 1;
        goto LABEL_222;
      }

      if (v11 != 100)
      {
        goto LABEL_199;
      }

LABEL_87:
      if (v31)
      {
        v41 = v193;
        v193 += 8;
        v42 = v17;
        v43 = conv_10_quad(*v41, 0, &v190, &v195[3], &v192);
        LODWORD(v19) = v189;
        v8 = v43;
        if (v42)
        {
LABEL_218:
          v183 = v5;
          if (v190)
          {
            v105 = 45;
          }

          else if (v15)
          {
            v105 = 43;
          }

          else
          {
            v105 = 32 * (v14 != 0);
          }

          v109 = endpos;
          goto LABEL_320;
        }
      }

      else
      {
        v101 = v193;
        v193 += 8;
        v102 = *v101;
        if (v33)
        {
          v102 = v102;
        }

        v103 = v102 >> 31;
        if ((v102 & 0x80000000) != 0)
        {
          v102 = -v102;
        }

        v190 = v103;
        v8 = &v195[3];
        do
        {
          *--v8 = v102 % 0xA + 48;
          v61 = v102 > 9;
          v102 /= 0xAu;
        }

        while (v61);
        v192 = &v195[3] - v8;
        if (v17)
        {
          goto LABEL_218;
        }
      }

      v104 = 511;
      if (v185 + 1 < 0x200)
      {
        v104 = v185;
      }

      for (; v192 < v104; ++v192)
      {
        *--v8 = 48;
      }

      goto LABEL_218;
    }

    v6 = flush_func;
  }

  while (!v11);
  if (v11 == 37)
  {
    LOBYTE(v73) = 0;
    LOBYTE(v16) = 0;
    LOBYTE(v96) = 37;
    goto LABEL_221;
  }

LABEL_199:
  LOBYTE(v73) = 0;
  LOBYTE(v16) = 0;
  v191[0] = 37;
  v191[1] = *fmt;
  v97 = 2;
LABEL_222:
  v192 = v97;
  v8 = v191;
LABEL_368:
  v18 = 32;
LABEL_369:
  v109 = endpos;
LABEL_370:
  v155 = v192;
  if (!v188 || v19 != 1)
  {
    v6 = flush_func;
LABEL_390:
    if (v155)
    {
      v157 = v16;
    }

    else
    {
      v157 = 1;
    }

    if ((v157 & 1) == 0)
    {
      v9 += v155;
      do
      {
        if (curpos)
        {
          if (curpos >= v109)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              return -1;
            }

            curpos = v5->curpos;
            v109 = v5->endpos;
            LODWORD(v19) = v189;
          }

          *curpos++ = *v8;
        }

        ++v8;
        --v155;
      }

      while (v155);
      v155 = v192;
    }

    if (v188 && !v19)
    {
      while (v7 > v155)
      {
        if (curpos)
        {
          if (curpos >= v109)
          {
            v5->curpos = curpos;
            if ((v6)(v5))
            {
              return -1;
            }

            curpos = v5->curpos;
            v109 = v5->endpos;
          }

          *curpos++ = v18;
          v155 = v192;
        }

        ++v9;
        --v7;
      }
    }

    endpos = v109;
    goto LABEL_412;
  }

  v6 = flush_func;
  if (v7 <= v192)
  {
    goto LABEL_390;
  }

  v156 = v73 ^ 1;
  if (v18 != 48)
  {
    v156 = 1;
  }

  if (v156)
  {
    do
    {
LABEL_382:
      if (curpos)
      {
        if (curpos >= v109)
        {
          v5->curpos = curpos;
          if ((flush_func)(v5))
          {
            return -1;
          }

          curpos = v5->curpos;
          v109 = v5->endpos;
          LODWORD(v19) = v189;
        }

        *curpos++ = v18;
        v155 = v192;
      }

      ++v9;
      --v7;
    }

    while (v7 > v155);
    goto LABEL_390;
  }

  if (!curpos)
  {
    goto LABEL_381;
  }

  if (curpos < v109)
  {
    goto LABEL_380;
  }

  v5->curpos = curpos;
  if (!(flush_func)(v5))
  {
    curpos = v5->curpos;
    v109 = v5->endpos;
    LODWORD(v19) = v189;
LABEL_380:
    *curpos++ = *v8;
    v155 = v192;
LABEL_381:
    ++v9;
    ++v8;
    v192 = --v155;
    --v7;
    goto LABEL_382;
  }

  return -1;
}

uint64_t conv_10_quad(uint64_t a1, int a2, _DWORD *a3, uint64_t a4, void *a5)
{
  if ((HIDWORD(a1) || !a2) && (a1 != a1 || a2))
  {
    if (a1 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = -a1;
    }

    if (a2)
    {
      v11 = 0;
    }

    else
    {
      v11 = a1 >> 63;
    }

    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = v10;
    }

    *a3 = v11;
    result = a4;
    do
    {
      *--result = v12 % 0xA + 48;
      v13 = v12 > 9;
      v12 /= 0xAuLL;
    }

    while (v13);
  }

  else
  {
    if (a1 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = -a1;
    }

    if (a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = (a1 >> 31) & 1;
    }

    if (a2)
    {
      v7 = a1;
    }

    else
    {
      v7 = v5;
    }

    *a3 = v6;
    result = a4;
    do
    {
      *--result = v7 % 0xA + 48;
      v9 = v7 >= 0xA;
      v7 /= 0xAu;
    }

    while (v9);
  }

  *a5 = a4 - result;
  return result;
}

char *apr_cvt(int a1, int *a2, _DWORD *a3, int a4, char *a5, long double a6)
{
  if (a1 >= 78)
  {
    v9 = 78;
  }

  else
  {
    v9 = a1;
  }

  *a3 = 0;
  if (a6 < 0.0)
  {
    *a3 = 1;
    a6 = -a6;
  }

  v31 = 0.0;
  __y = 0.0;
  v10 = modf(a6, &__y);
  v11 = v10;
  v12 = __y;
  if (__y == 0.0)
  {
    if (v10 > 0.0)
    {
      v13 = 1;
      do
      {
        v21 = v11;
        v11 = v11 * 10.0;
        --v13;
      }

      while (v11 < 1.0);
      v19 = 0;
      v31 = v11;
      v11 = v21;
      goto LABEL_20;
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 80;
    v15 = 1;
    do
    {
      v16 = v14;
      v17 = v15;
      v18 = modf(v12 / 10.0, &__y);
      ++v13;
      v14 = v16 - 1;
      a5[v16 - 1] = ((v18 + 0.03) * 10.0) + 48;
      if (v16 == 1)
      {
        break;
      }

      v12 = __y;
      v15 = v17 + 1;
    }

    while (__y != 0.0);
    v31 = v18;
    if (v16 <= 80)
    {
      v19 = 81 - v16;
      v20 = a5;
      do
      {
        *v20 = v20[v14];
        ++v20;
        --v17;
      }

      while (v17);
      goto LABEL_20;
    }
  }

  v19 = 0;
LABEL_20:
  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v13;
  }

  v23 = v22 + v9;
  if (v23 < 0)
  {
    *a2 = -v9;
    v27 = a5;
  }

  else
  {
    *a2 = v13;
    if (v19 <= v23 && v19 <= 0x4F)
    {
      do
      {
        v11 = modf(v11 * 10.0, &v31);
        a5[v19] = v31 + 48;
        if (v19 >= v23)
        {
          break;
        }
      }

      while (v19++ < 0x4F);
    }

    if (v23 >= 80)
    {
      v27 = a5 + 79;
    }

    else
    {
      v25 = &a5[v23];
      v26 = (a5[v23] + 5);
      a5[v23] += 5;
      if (v26 < 58)
      {
        v27 = &a5[v23];
      }

      else
      {
        v27 = &a5[v23];
        do
        {
          *v25 = 48;
          if (v25 <= a5)
          {
            *v25 = 49;
            ++*a2;
            if (!a4)
            {
              if (v27 > a5)
              {
                *v27 = 48;
              }

              ++v27;
            }

            v29 = *v25;
          }

          else
          {
            v28 = *--v25;
            v29 = v28 + 1;
            *v25 = v28 + 1;
          }
        }

        while (v29 > 57);
      }
    }
  }

  *v27 = 0;
  return a5;
}

int apr_snprintf(char *buf, apr_size_t len, const char *format, ...)
{
  va_start(va, format);
  c.curpos = buf;
  c.endpos = buf + 4;
  va_copy(v5, va);
  result = apr_vformatter(snprintf_flush, &c, format, va);
  *c.curpos = 0;
  if (result == -1)
  {
    return 4;
  }

  return result;
}

char *__cdecl apr_pstrdup(apr_pool_t *p, const char *s)
{
  if (!s)
  {
    return 0;
  }

  v4 = strlen(s);
  v5 = apr_palloc(p, v4 + 1);

  return memcpy(v5, s, v4 + 1);
}

char *apr_pstrcat(apr_pool_t *p, ...)
{
  va_start(va, p);
  __s = va_arg(va, char *);
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  va_copy(v16, va);
  v2 = __s;
  if (__s)
  {
    v3 = 0;
    v4 = 0;
    v5 = __s;
    do
    {
      v6 = strlen(v5);
      if (v4 <= 5)
      {
        *(v18 + v4++) = v6;
      }

      v3 += v6;
      v7 = va_arg(v16, const char *);
      v5 = v7;
    }

    while (v7);
    v8 = v3 + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = apr_palloc(p, v8);
  v10 = v9;
  va_copy(v17, va);
  v11 = v9;
  if (__s)
  {
    v12 = 0;
    v11 = v9;
    do
    {
      if (v12 > 5)
      {
        v13 = strlen(v2);
      }

      else
      {
        v13 = *(v18 + v12++);
      }

      memcpy(v11, v2, v13);
      v11 += v13;
      v14 = v17;
      v17 += 8;
      v2 = *v14;
    }

    while (*v14);
  }

  *v11 = 0;
  return v10;
}

char *__cdecl apr_itoa(apr_pool_t *p, int n)
{
  v3 = apr_palloc(p, 0xEuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[13] = 0;
  v5 = v3 + 14;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAu;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

char *__cdecl apr_ltoa(apr_pool_t *p, uint64_t n)
{
  v3 = apr_palloc(p, 0x1AuLL);
  if (n >= 0)
  {
    v4 = n;
  }

  else
  {
    v4 = -n;
  }

  v3[25] = 0;
  v5 = v3 + 26;
  do
  {
    *(v5 - 2) = (v4 % 0xA) | 0x30;
    result = v5 - 2;
    --v5;
    v7 = v4 > 9;
    v4 /= 0xAuLL;
  }

  while (v7);
  if (n < 0)
  {
    *(v5 - 2) = 45;
    return v5 - 2;
  }

  return result;
}

apr_array_header_t *__cdecl apr_array_make(apr_pool_t *p, int nelts, int elt_size)
{
  v6 = apr_palloc(p, 0x20uLL);
  if (nelts <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = nelts;
  }

  v8 = apr_palloc(p, (v7 * elt_size));
  v9 = v8;
  if (v8)
  {
    bzero(v8, (v7 * elt_size));
  }

  v6->elts = v9;
  v6->pool = p;
  v6->elt_size = elt_size;
  v6->nelts = 0;
  v6->nalloc = v7;
  return v6;
}

void *__cdecl apr_array_push(apr_array_header_t *arr)
{
  nelts = arr->nelts;
  if (nelts == arr->nalloc)
  {
    if (nelts < 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * nelts;
    }

    elts = apr_palloc(arr->pool, arr->elt_size * v3);
    memcpy(elts, arr->elts, arr->elt_size * arr->nalloc);
    bzero(&elts[arr->elt_size * arr->nalloc], arr->elt_size * (v3 - arr->nalloc));
    arr->elts = elts;
    arr->nalloc = v3;
    nelts = arr->nelts;
  }

  else
  {
    elts = arr->elts;
  }

  arr->nelts = nelts + 1;
  return &elts[arr->elt_size * nelts];
}

apr_array_header_t *__cdecl apr_array_copy(apr_pool_t *p, const apr_array_header_t *arr)
{
  v4 = apr_palloc(p, 0x20uLL);
  elt_size = arr->elt_size;
  if (arr->nalloc <= 1)
  {
    nalloc = 1;
  }

  else
  {
    nalloc = arr->nalloc;
  }

  v7 = apr_palloc(p, nalloc * elt_size);
  v4->elts = v7;
  v4->pool = p;
  v4->elt_size = elt_size;
  v4->nelts = 0;
  v4->nalloc = nalloc;
  memcpy(v7, arr->elts, arr->nelts * arr->elt_size);
  nelts = arr->nelts;
  v4->nelts = nelts;
  bzero(&v4->elts[v4->elt_size * nelts], (v4->nalloc - nelts) * v4->elt_size);
  return v4;
}

char *__cdecl apr_array_pstrcat(apr_pool_t *p, const apr_array_header_t *arr, const char sep)
{
  nelts = arr->nelts;
  v5 = nelts - 1;
  if (nelts >= 1)
  {
    elts = arr->elts;
    if (elts)
    {
      v8 = 0;
      while (1)
      {
        if (*elts)
        {
          v8 += strlen(*elts);
        }

        if (!v5)
        {
          break;
        }

        elts += 8;
        --v5;
      }

      v10 = apr_palloc(p, v8 + 1);
      v12 = arr->elts;
      v13 = 1;
      v9 = v10;
      if (v12)
      {
LABEL_12:
        if (*v12)
        {
          v14 = strlen(*v12);
          memcpy(v9, *v12, v14);
          v9 += v14;
        }
      }

      while (v13 < arr->nelts)
      {
        v12 += 8;
        ++v13;
        if (v12)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_9;
    }
  }

  v9 = apr_palloc(p, 1uLL);
  v10 = v9;
  if (v9)
  {
LABEL_9:
    *v9 = 0;
  }

  return v10;
}

apr_status_t apr_thread_mutex_create(apr_thread_mutex_t **mutex, unsigned int flags, apr_pool_t *pool)
{
  v3 = *&flags;
  v5 = apr_palloc(*&flags, 0x48uLL);
  v6 = v5;
  if (v5)
  {
    *(v5 + 56) = 0u;
    *(v5 + 40) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 8) = 0u;
  }

  *v5 = v3;
  result = pthread_mutex_init((v5 + 8), 0);
  if (!result)
  {
    apr_pool_cleanup_register(*v6, v6, thread_mutex_cleanup, apr_pool_cleanup_null);
    result = 0;
    *mutex = v6;
  }

  return result;
}

id MakeNestedMTLRenderPassAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCABB0];
  v7 = *(a2 + 8);
  v8 = a3;
  v9 = [v6 numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];
  [v5 setTexture:v10];

  [v5 setLevel:*(a2 + 24)];
  [v5 setSlice:*(a2 + 22)];
  [v5 setDepthPlane:*(a2 + 16)];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a2];
  v12 = [v8 objectForKeyedSubscript:v11];

  [v5 setResolveTexture:v12];
  [v5 setResolveLevel:*(a2 + 26)];
  [v5 setResolveSlice:*(a2 + 20)];
  [v5 setResolveDepthPlane:*(a2 + 18)];
  [v5 setLoadAction:*(a2 + 25)];
  [v5 setStoreAction:*(a2 + 27)];
  [v5 setStoreActionOptions:*(a2 + 28)];
  if (objc_opt_respondsToSelector())
  {
    [v5 setYInvert:*(a2 + 29) != 0];
  }

  return v5;
}

id MakeNestedMTLRenderPassColorAttachmentDescriptor(void *a1, double *a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];

  return v5;
}

id MakeNestedMTLRenderPassDepthAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  [v5 setDepthResolveFilter:*(a2 + 40)];

  return v5;
}

id MakeNestedMTLRenderPassStencilAttachmentDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [MakeNestedMTLRenderPassAttachmentDescriptor(v5 a2];
  if (objc_opt_respondsToSelector())
  {
    [v5 setStencilResolveFilter:*(a2 + 36)];
  }

  return v5;
}

id MakeMTLTextureDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v2 setTextureType:*(a1 + 49)];
  [v2 setPixelFormat:*(a1 + 34)];
  [v2 setWidth:*(a1 + 24)];
  [v2 setHeight:*(a1 + 32)];
  [v2 setDepth:*(a1 + 30)];
  [v2 setMipmapLevelCount:*(a1 + 45)];
  [v2 setSampleCount:*(a1 + 47)];
  [v2 setArrayLength:*(a1 + 28)];
  [v2 setFramebufferOnly:*(a1 + 43) != 0];
  [v2 setIsDrawable:*(a1 + 44) != 0];
  [v2 setUsage:*(a1 + 20)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setRotation:*(a1 + 46)];
  }

  [v2 setResourceOptions:*(a1 + 36)];
  [v2 setAllowGPUOptimizedContents:*(a1 + 38) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setSwizzleKey:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSparseSurfaceDefaultValue:*(a1 + 48)];
  }

  [v2 setWriteSwizzleEnabled:*(a1 + 50) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionType:*(a1 + 41)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionFootprint:*(a1 + 39)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCompressionMode:*(a1 + 40)];
  }

  return v2;
}

id MakeMTLTextureDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTextureDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 8) != 0];
  [v2 setResourceIndex:*(a1 + 8)];

  return v2;
}

id MakeMTLBufferDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6CB0]);
  [v2 setLength:*a1];
  [v2 setResourceOptions:*(a1 + 32)];
  [v2 setNoCopy:*(a1 + 34) != 0];

  return v2;
}

id MakeNestedMTLVertexDescriptor(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  v5 = (a2 + 10);
  do
  {
    v6 = [v3 layouts];
    v7 = [v6 objectAtIndexedSubscript:v4];
    [v7 setStride:*(v5 - 10)];
    [v7 setStepRate:*(v5 - 1)];
    v8 = *v5;
    v5 += 16;
    [v7 setStepFunction:v8];

    ++v4;
  }

  while (v4 != 31);
  v9 = 0;
  v10 = (a2 + 501);
  do
  {
    v11 = [v3 attributes];
    v12 = [v11 objectAtIndexedSubscript:v9];
    [v12 setFormat:*v10];
    [v12 setOffset:*(v10 - 5)];
    [v12 setBufferIndex:*(v10 - 1)];

    ++v9;
    v10 += 8;
  }

  while (v9 != 31);

  return v3;
}

id MakeNestedMTLRenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setBlendingEnabled:*(a2 + 3) != 0];
  [v3 setSourceRGBBlendFactor:*(a2 + 8)];
  [v3 setDestinationRGBBlendFactor:*(a2 + 5)];
  [v3 setRgbBlendOperation:*(a2 + 6)];
  [v3 setSourceAlphaBlendFactor:*(a2 + 7)];
  [v3 setDestinationAlphaBlendFactor:*(a2 + 4)];
  [v3 setAlphaBlendOperation:*(a2 + 2)];
  [v3 setWriteMask:*(a2 + 9)];
  [v3 setPixelFormat:*a2];

  return v3;
}

id CreateObjectArrayWithMap(uint64_t *a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
  if (a2 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *a1++;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
      v10 = [v5 objectForKeyedSubscript:v9];

      if (v10)
      {
        [v6 addObject:v10];
      }

      --v7;
    }

    while (v7);
  }

  v11 = [v6 copy];

  return v11;
}

id MakeMTLRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1296)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVertexFunction:v6];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1176)];
  v8 = [v3 objectForKeyedSubscript:v7];
  [v4 setFragmentFunction:v8];

  v9 = [v4 vertexDescriptor];

  [v4 setRasterSampleCount:*(a1 + 1272)];
  [v4 setSampleMask:*(a1 + 1288)];
  LODWORD(v10) = *(a1 + 1332);
  [v4 setSampleCoverage:v10];
  [v4 setAlphaToCoverageEnabled:*(a1 + 1480) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 1481) != 0];
  [v4 setRasterizationEnabled:*(a1 + 1494) != 0];
  [v4 setDepthAttachmentPixelFormat:*(a1 + 1340)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 1352)];
  v11 = 0;
  v12 = (a1 + 744);
  do
  {
    v13 = [v4 colorAttachments];
    v14 = [v13 objectAtIndexedSubscript:v11];

    ++v11;
    v12 += 8;
  }

  while (v11 != 8);
  if (*(a1 + 1200))
  {
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v15];
  }

  [v4 setInputPrimitiveTopology:*(a1 + 1486)];
  [v4 setTessellationPartitionMode:*(a1 + 1506)];
  [v4 setMaxTessellationFactor:*(a1 + 1208)];
  [v4 setTessellationFactorScaleEnabled:*(a1 + 1503) != 0];
  [v4 setTessellationFactorFormat:*(a1 + 1502)];
  [v4 setTessellationControlPointIndexType:*(a1 + 1501)];
  [v4 setTessellationFactorStepFunction:*(a1 + 1504)];
  [v4 setTessellationOutputWindingOrder:*(a1 + 1505)];
  for (i = 0; i != 31; ++i)
  {
    v17 = [v4 vertexBuffers];
    v18 = [v17 objectAtIndexedSubscript:i];
    [v18 setMutability:*(a1 + 1447 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:j];
    [v21 setMutability:*(a1 + 1354 + j)];
  }

  [v4 setSupportIndirectCommandBuffers:*(a1 + 1500) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexAmplificationMode:*(a1 + 1508)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 1328)];
  }

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1264)];
  v23 = [v3 objectForKeyedSubscript:v22];
  [v4 setPipelineLibrary:v23];

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperation:*(a1 + 1487)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestFunction:*(a1 + 1479)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVertexDepthCompareClampMask:*(a1 + 1336)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setFragmentDepthCompareClampMask:*(a1 + 1324)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setLogicOperationEnabled:*(a1 + 1488) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 1490) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordLowerLeft:*(a1 + 1491) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSizeOutputVS:*(a1 + 1492) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTwoSideEnabled:*(a1 + 1507) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAlphaTestEnabled:*(a1 + 1478) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointSmoothEnabled:*(a1 + 1493) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setClipDistanceEnableMask:*(a1 + 1482)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 1160)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSampleCoverageInvert:*(a1 + 1495) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setNeedsCustomBorderColorSamplers:*(a1 + 1489) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDepthStencilWriteDisabled:*(a1 + 1484) != 0];
  }

  [v4 setForceSoftwareVertexFetch:*(a1 + 1485) != 0];
  if (objc_opt_respondsToSelector())
  {
    v24 = GTData_MakeDictionary(*(a1 + 1144), *(a1 + 1152));
    [v4 setPluginData:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = GTData_MakeDictionary(*(a1 + 1128), *(a1 + 1136));
    [v4 setDriverCompilerOptions:v25];
  }

  v26 = *(a1 + 1312);
  if (v26)
  {
    v27 = CreateObjectArrayWithMap(*(a1 + 1304), v26, v3);
    [v4 setVertexPreloadedLibraries:v27];
  }

  v28 = *(a1 + 1192);
  if (v28)
  {
    v29 = CreateObjectArrayWithMap(*(a1 + 1184), v28, v3);
    [v4 setFragmentPreloadedLibraries:v29];
  }

  v30 = [v4 vertexLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v30, a1 + 1064, v3);

  v31 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v31, a1 + 872, v3);

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1240)];
  v33 = [v3 objectForKeyedSubscript:v32];
  [v4 setObjectFunction:v33];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 1216)];
  v35 = [v3 objectForKeyedSubscript:v34];
  [v4 setMeshFunction:v35];

  for (k = 0; k != 31; ++k)
  {
    v37 = [v4 objectBuffers];
    v38 = [v37 objectAtIndexedSubscript:k];
    [v38 setMutability:*(a1 + 1416 + k)];
  }

  for (m = 0; m != 31; ++m)
  {
    v40 = [v4 meshBuffers];
    v41 = [v40 objectAtIndexedSubscript:m];
    [v41 setMutability:*(a1 + 1385 + m)];
  }

  v42 = *(a1 + 1256);
  if (v42)
  {
    v43 = CreateObjectArrayWithMap(*(a1 + 1248), v42, v3);
    [v4 setObjectPreloadedLibraries:v43];
  }

  v44 = *(a1 + 1232);
  if (v44)
  {
    v45 = CreateObjectArrayWithMap(*(a1 + 1224), v44, v3);
    [v4 setMeshPreloadedLibraries:v45];
  }

  v46 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v46, a1 + 1000, v3);

  v47 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v47, a1 + 936, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingVertexBinaryFunctions:*(a1 + 1499) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingFragmentBinaryFunctions:*(a1 + 1496) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingObjectBinaryFunctions:*(a1 + 1498) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingMeshBinaryFunctions:*(a1 + 1497) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 1320)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexCallStackDepth:*(a1 + 1350)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxFragmentCallStackDepth:*(a1 + 1344)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxObjectCallStackDepth:*(a1 + 1348)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxMeshCallStackDepth:*(a1 + 1346)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 1342)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 1483)];
  }

  v48 = v4;

  return v4;
}

id GTData_MakeDictionary(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v4 = MEMORY[0x277CCAAC8];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
    v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a1 length:a2 freeWhenDone:0];
    v21 = 0;
    v12 = [v4 unarchivedObjectOfClasses:v10 fromData:v11 error:&v21];
    v13 = v21;

    if (v13)
    {
      if (s_logUsingOsLog == 1)
      {
        v14 = gt_tagged_log(3u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v13 localizedDescription];
          v16 = [v15 UTF8String];
          *buf = 136315138;
          v23 = v16;
          _os_log_error_impl(&dword_24D764000, v14, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
        }
      }

      else
      {
        v17 = *MEMORY[0x277D85DF8];
        v18 = MEMORY[0x277CCACA8];
        v14 = [v13 localizedDescription];
        v19 = [v18 stringWithFormat:@"warning: %s", -[NSObject UTF8String](v14, "UTF8String")];
        fprintf(v17, "%s\n", [v19 UTF8String]);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void MakeNestedMTLLinkedFunctions(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  v5 = a3;
  if (*(a2 + 56) + *(a2 + 24) + *(a2 + 8) + *(a2 + 40))
  {
    v6 = v20;
    v7 = v5;
    v8 = *(a2 + 24);
    if (v8)
    {
      v9 = CreateObjectArrayWithMap(*(a2 + 16), v8, v7);
      [v6 setFunctions:v9];
    }

    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = CreateObjectArrayWithMap(*a2, v10, v7);
      [v6 setBinaryFunctions:v11];
    }

    v12 = *(a2 + 56);
    if (v12)
    {
      v13 = CreateObjectArrayWithMap(*(a2 + 48), v12, v7);
      [v6 setPrivateFunctions:v13];
    }

    if (*(a2 + 40))
    {
      v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:*(a2 + 40)];
      if (*(a2 + 40))
      {
        v15 = 0;
        v16 = 0;
        do
        {
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(*(a2 + 32) + v15)];
          v18 = CreateObjectArrayWithMap(*(*(a2 + 32) + v15 + 8), *(*(a2 + 32) + v15 + 16), v7);
          [v14 setObject:v18 forKeyedSubscript:v17];

          ++v16;
          v15 += 24;
        }

        while (*(a2 + 40) > v16);
      }

      v19 = [v14 copy];
      [v6 setGroups:v19];
    }
  }
}

id MakeMTLRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 1500))
  {
    [v3 setResourceIndex:*(a1 + 1280)];
  }

  return v4;
}

id MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6EE8]);
  if (*(a1 + 352))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 368)];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v4 setObjectFunction:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 360)];
  v9 = [v3 objectForKeyedSubscript:v8];
  [v4 setMeshFunction:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 344)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setFragmentFunction:v11];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 406)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 404)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 508) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 507) != 0];
  }

  [v4 setPayloadMemoryLength:*(a1 + 376)];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 336);
    v30 = *(a1 + 320);
    v31 = v12;
    [v4 setMaxThreadgroupsPerMeshGrid:&v30];
  }

  for (i = 0; i != 31; ++i)
  {
    v14 = [v4 objectBuffers];
    v15 = [v14 objectAtIndexedSubscript:i];
    [v15 setMutability:*(a1 + 472 + i)];
  }

  for (j = 0; j != 31; ++j)
  {
    v17 = [v4 meshBuffers];
    v18 = [v17 objectAtIndexedSubscript:j];
    [v18 setMutability:*(a1 + 441 + j)];
  }

  for (k = 0; k != 31; ++k)
  {
    v20 = [v4 fragmentBuffers];
    v21 = [v20 objectAtIndexedSubscript:k];
    [v21 setMutability:*(a1 + 410 + k)];
  }

  [v4 setRasterSampleCount:*(a1 + 509)];
  [v4 setAlphaToCoverageEnabled:*(a1 + 503) != 0];
  [v4 setAlphaToOneEnabled:*(a1 + 504) != 0];
  [v4 setRasterizationEnabled:*(a1 + 510) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 396)];
  }

  v22 = 0;
  v23 = a1;
  do
  {
    v24 = [v4 colorAttachments];
    v25 = [v24 objectAtIndexedSubscript:v22];

    ++v22;
    v23 += 8;
  }

  while (v22 != 8);
  [v4 setDepthAttachmentPixelFormat:*(a1 + 400)];
  [v4 setStencilAttachmentPixelFormat:*(a1 + 408)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 511) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setExplicitVisibilityGroupID:*(a1 + 392)];
  }

  v26 = [v4 objectLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v26, a1 + 256, v3);

  v27 = [v4 meshLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v27, a1 + 192, v3);

  v28 = [v4 fragmentLinkedFunctions];
  MakeNestedMTLLinkedFunctions(v28, a1 + 128, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 402)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorAttachmentMappingState:*(a1 + 505)];
  }

  return v4;
}

id MakeMTLMeshRenderPipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 511))
  {
    [v3 setResourceIndex:*(a1 + 384)];
  }

  return v4;
}

id MakeNestedMTLStencilDescriptor(void *a1, unsigned int *a2)
{
  v3 = a1;
  [v3 setStencilCompareFunction:*(a2 + 10)];
  [v3 setStencilFailureOperation:*(a2 + 11)];
  [v3 setDepthFailureOperation:*(a2 + 8)];
  [v3 setDepthStencilPassOperation:*(a2 + 9)];
  [v3 setReadMask:*a2];
  [v3 setWriteMask:a2[1]];

  return v3;
}

id MakeMTLDepthStencilDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D58]);
  [v2 setDepthCompareFunction:*(a1 + 40)];
  [v2 setDepthWriteEnabled:*(a1 + 41) != 0];
  if (*(a1 + 32))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  v4 = [v2 frontFaceStencil];

  v5 = [v2 backFaceStencil];

  return v2;
}

id MakeMTLSamplerDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6FC8]);
  [v2 setMinFilter:*(a1 + 60)];
  [v2 setMagFilter:*(a1 + 59)];
  [v2 setMipFilter:*(a1 + 61)];
  [v2 setMaxAnisotropy:*(a1 + 8)];
  [v2 setSAddressMode:*(a1 + 65)];
  [v2 setTAddressMode:*(a1 + 67)];
  [v2 setRAddressMode:*(a1 + 63)];
  [v2 setNormalizedCoordinates:*(a1 + 62) != 0];
  LODWORD(v3) = *(a1 + 48);
  [v2 setLodMinClamp:v3];
  LODWORD(v4) = *(a1 + 44);
  [v2 setLodMaxClamp:v4];
  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  [v2 setLodAverage:*(a1 + 58) != 0];
  [v2 setCompareFunction:*(a1 + 55)];
  [v2 setBorderColor:*(a1 + 54)];
  [v2 setSupportArgumentBuffers:*(a1 + 66) != 0];
  if (objc_opt_respondsToSelector())
  {
    [v2 setReductionMode:*(a1 + 64)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_0:*(a1 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_1:*(a1 + 28)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_2:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCustomBorderColorValue_3:*(a1 + 36)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setForceSeamsOnCubemapFiltering:*(a1 + 57) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setPixelFormat:*(a1 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v6) = *(a1 + 40);
    [v2 setLodBias:v6];
  }

  return v2;
}

id MakeMTLSamplerDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLSamplerDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 16) != 0];
  [v2 setResourceIndex:*(a1 + 16)];

  return v2;
}

id MakeMTLHeapDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E40]);
  [v2 setSize:*(a1 + 8)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setType:*(a1 + 20)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setResourceOptions:*(a1 + 16)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSparsePageSize:*(a1 + 19)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxCompatiblePlacementSparsePageSize:*(a1 + 18)];
  }

  return v2;
}

id MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E68]);
  [v2 setCommandTypes:*(a1 + 16)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritPipelineState:*(a1 + 26) != 0];
  }

  [v2 setInheritBuffers:*(a1 + 19) != 0];
  [v2 setMaxVertexBufferBindCount:*(a1 + 38)];
  [v2 setMaxFragmentBufferBindCount:*(a1 + 31)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxKernelBufferBindCount:*(a1 + 32)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxKernelThreadgroupMemoryBindCount:*(a1 + 33)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSupportRayTracing:*(a1 + 41) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxObjectBufferBindCount:*(a1 + 35)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxMeshBufferBindCount:*(a1 + 34)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxObjectThreadgroupMemoryBindCount:*(a1 + 36)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSupportDynamicAttributeStride:*(a1 + 40) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxScissorRectCount:*(a1 + 37)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxViewportCount:*(a1 + 39)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthStencilState:*(a1 + 23) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthBias:*(a1 + 21) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritStencilReferenceValues:*(a1 + 28) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthClipMode:*(a1 + 22) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritCullMode:*(a1 + 20) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritFrontFacingWinding:*(a1 + 25) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritTriangleFillMode:*(a1 + 29) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritDepthTestBounds:*(a1 + 24) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritScissorRects:*(a1 + 27) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritViewports:*(a1 + 30) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInheritBlendColor:*(a1 + 18) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setMaxToolsDispatchBindings:*a1];
  }

  return v2;
}

id MakeMTLIndirectCommandBufferDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(a1);
  [v2 setResourceIndex:*(a1 + 8)];

  return v2;
}

id MakeMTLComputePipelineDescriptorWithoutResourceIndex(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D28]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 848)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setComputeFunction:v6];

  [v4 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 958) != 0];
  if (*(a1 + 872))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v7];
  }

  v8 = [v4 stageInputDescriptor];
  v9 = 0;
  v10 = (a1 + 10);
  do
  {
    v11 = [v8 layouts];
    v12 = [v11 objectAtIndexedSubscript:v9];
    [v12 setStride:*(v10 - 10)];
    [v12 setStepRate:*(v10 - 1)];
    v13 = *v10;
    v10 += 16;
    [v12 setStepFunction:v13];

    ++v9;
  }

  while (v9 != 31);
  v14 = 0;
  v15 = (a1 + 501);
  do
  {
    v16 = [v8 attributes];
    v17 = [v16 objectAtIndexedSubscript:v14];
    [v17 setFormat:*v15];
    [v17 setOffset:*(v15 - 5)];
    [v17 setBufferIndex:*(v15 - 1)];

    ++v14;
    v15 += 8;
  }

  while (v14 != 31);
  [v8 setIndexType:*(a1 + 745)];
  [v8 setIndexBufferIndex:*(a1 + 744)];

  for (i = 0; i != 31; ++i)
  {
    v19 = [v4 buffers];
    v20 = [v19 objectAtIndexedSubscript:i];
    [v20 setMutability:*(a1 + 920 + i)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportIndirectCommandBuffers:*(a1 + 956) != 0];
  }

  [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 918)];
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 880)];
  v22 = [v3 objectForKeyedSubscript:v21];
  [v4 setPipelineLibrary:v22];

  v23 = *(a1 + 864);
  if (v23)
  {
    v24 = CreateObjectArrayWithMap(*(a1 + 856), v23, v3);
    [v4 setFunctionPointers:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTextureWriteRoundingMode:*(a1 + 957)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 954) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenCLModeEnabled:*(a1 + 953) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setNeedsCustomBorderColorSamplers:*(a1 + 952) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = GTData_MakeDictionary(*(a1 + 832), *(a1 + 840));
    [v4 setPluginData:v25];
  }

  v26 = GTData_MakeDictionary(*(a1 + 816), *(a1 + 824));
  [v4 setDriverCompilerOptions:v26];

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxCallStackDepth:*(a1 + 916)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingBinaryFunctions:*(a1 + 955) != 0];
  }

  v27 = [v4 linkedFunctions];
  MakeNestedMTLLinkedFunctions(v27, a1 + 752, v3);

  v28 = *(a1 + 896);
  if (v28)
  {
    v29 = CreateObjectArrayWithMap(*(a1 + 888), v28, v3);
    [v4 setPreloadedLibraries:v29];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 914)];
  }

  return v4;
}

id MakeMTLComputePipelineDescriptorWithResourceIndex(uint64_t a1, void *a2)
{
  v3 = MakeMTLComputePipelineDescriptorWithoutResourceIndex(a1, a2);
  v4 = v3;
  if (*(a1 + 956))
  {
    [v3 setResourceIndex:*(a1 + 904)];
  }

  return v4;
}

id MakeMTLTileRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD7070]);
  if (*(a1 + 112))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v5];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 136)];
  v7 = [v3 objectForKeyedSubscript:v6];
  [v4 setTileFunction:v7];

  [v4 setRasterSampleCount:*(a1 + 150)];
  for (i = 0; i != 8; ++i)
  {
    v9 = [v4 colorAttachments];
    v10 = [v9 objectAtIndexedSubscript:i];
    [v10 setPixelFormat:*(a1 + 2 * i + 64)];
  }

  [v4 setThreadgroupSizeMatchesTileSize:*(a1 + 185) != 0];
  for (j = 0; j != 31; ++j)
  {
    v12 = [v4 tileBuffers];
    v13 = [v12 objectAtIndexedSubscript:j];
    [v13 setMutability:*(a1 + j + 152)];
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = GTData_MakeDictionary(*(a1 + 96), *(a1 + 104));
    [v4 setPluginData:v14];
  }

  v15 = *(a1 + 128);
  if (v15)
  {
    v16 = CreateObjectArrayWithMap(*(a1 + 120), v15, v3);
    [v4 setPreloadedLibraries:v16];
  }

  v17 = [v4 linkedFunctions];
  MakeNestedMTLLinkedFunctions(v17, a1, v3);

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportAddingBinaryFunctions:*(a1 + 184) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxCallStackDepth:*(a1 + 146)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxAccelerationStructureTraversalDepth:*(a1 + 144)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 148)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 183)];
  }

  return v4;
}

id MakeMTLCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D00]);
  [v2 setMaxCommandBufferCount:*a1];
  if (objc_opt_respondsToSelector())
  {
    [v2 setQosLevel:*(a1 + 8)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCommitSynchronously:*(a1 + 4) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setIsOpenGLQueue:*(a1 + 7) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setDisableCrossQueueHazardTracking:*(a1 + 6) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setCommitsWithQoS:*(a1 + 5) != 0];
  }

  return v2;
}

id MakeMTLIOCommandQueueDescriptor(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E58]);
  [v2 setMaxCommandBufferCount:*a1];
  [v2 setPriority:*(a1 + 4)];
  [v2 setType:*(a1 + 5)];

  return v2;
}

id MakeMTLVisibleFunctionTableDescriptorWithoutResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD70A8]);
  [v2 setFunctionCount:*a1];

  return v2;
}

id MakeMTLVisibleFunctionTableDescriptorWithResourceIndex(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD70A8]);
  [v2 setFunctionCount:*a1];
  [v2 setForceResourceIndex:a1[1] != 0];
  [v2 setResourceIndex:a1[1]];

  return v2;
}

id MakeMTLFunctionDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D80]);
  [v4 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setName:v5];
  }

  if (*(a1 + 32))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setSpecializedName:v6];
  }

  v7 = MakeMTLFunctionConstantValues(*a1);
  [v4 setConstantValues:v7];

  v8 = *(a1 + 24);
  if (v8)
  {
    v9 = CreateObjectArrayWithMap(*(a1 + 16), v8, v3);
    [v4 setPrivateFunctions:v9];
  }

  return v4;
}

id MakeMTLFunctionConstantValues(void *a1)
{
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CD6D68]);
    if (a1[1])
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(*a1 + v3);
        if (v5)
        {
          v6 = *a1 + v3;
          v7 = *(v6 + 27);
          if (*(v6 + 24) == 0xFFFFLL)
          {
            v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v6 + 16)];
            [v2 setConstantValue:v5 type:v7 withName:v8];
          }

          else
          {
            [v2 setConstantValue:*(*a1 + v3) type:*(v6 + 27) atIndex:?];
          }
        }

        ++v4;
        v3 += 32;
      }

      while (a1[1] > v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id MakeMTLCompileOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D10]);
  v5 = GTData_MakeDictionary(*a1, *(a1 + 8));
  [v4 setPreprocessorMacros:v5];

  [v4 setDebuggingEnabled:*(a1 + 56) != 0];
  [v4 setLanguageVersion:*(a1 + 48)];
  if (*(a1 + 16))
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setAdditionalCompilerArguments:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPreserveInvariance:*(a1 + 62) != 0];
  }

  if (*(a1 + 24))
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setInstallName:v7];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setLibraryType:*(a1 + 58)];
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = CreateObjectArrayWithMap(*(a1 + 32), v8, v3);
    [v4 setLibraries:v9];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSourceLanguage:*(a1 + 63)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOptimizationLevel:*(a1 + 61)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setCompileSymbolVisibility:*(a1 + 55)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setAllowReferencingUndefinedSymbols:*(a1 + 54) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxTotalThreadsPerThreadgroup:*(a1 + 52)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMathFloatingPointFunctions:*(a1 + 59)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setMathMode:*(a1 + 60)];
  }

  return v4;
}

id MakeNestedMTLMotionKeyframeData(void *a1, uint64_t *a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCABB0];
  v7 = *a2;
  v8 = a3;
  v9 = [v6 numberWithUnsignedLongLong:v7];
  v10 = [v8 objectForKeyedSubscript:v9];

  [v5 setBuffer:v10];
  [v5 setOffset:a2[1]];

  return v5;
}

id MakeMTLAccelerationStructureDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 96);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        goto LABEL_86;
      }

      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6E90]);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1]];
      v9 = [v7 objectForKeyedSubscript:v8];
      [v5 setInstanceDescriptorBuffer:v9];

      [v5 setInstanceDescriptorBufferOffset:a1[2]];
      [v5 setInstanceDescriptorStride:a1[3]];
      [v5 setInstanceCount:*a1];
      v10 = a1[5];
      if (v10)
      {
        v11 = CreateObjectArrayWithMap(a1[4], v10, v7);
        [v5 setInstancedAccelerationStructures:v11];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setInstanceDescriptorType:*(a1 + 80)];
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
      v13 = [v7 objectForKeyedSubscript:v12];
      [v5 setMotionTransformBuffer:v13];

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformBufferOffset:a1[7]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformCount:a1[8]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformStride:a1[9]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setMotionTransformType:*(a1 + 82)];
      }

      if (objc_opt_respondsToSelector())
      {
        [v5 setInstanceTransformationMatrixLayout:*(a1 + 81)];
      }

      goto LABEL_85;
    }

    v83 = v3;
    v14 = v3;
    v82 = objc_alloc_init(MEMORY[0x277CD6F08]);
    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = v15;
    if (!a1[1])
    {
LABEL_74:
      v5 = v82;
      [v82 setGeometryDescriptors:v16];
      if (objc_opt_respondsToSelector())
      {
        LODWORD(v69) = *(a1 + 6);
        [v82 setMotionStartTime:v69];
      }

      if (objc_opt_respondsToSelector())
      {
        LODWORD(v70) = *(a1 + 4);
        [v82 setMotionEndTime:v70];
      }

      v7 = v14;
      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionStartBorderMode:*(a1 + 29)];
      }

      v4 = v83;
      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionEndBorderMode:*(a1 + 28)];
      }

      if (objc_opt_respondsToSelector())
      {
        [v82 setMotionKeyframeCount:*(a1 + 5)];
      }

LABEL_85:
      goto LABEL_86;
    }

    v17 = 0;
    v86 = v14;
    v84 = a1;
    v85 = v15;
    while (1)
    {
      v18 = (*a1 + 152 * v17);
      v19 = v14;
      v20 = v19;
      v21 = 0;
      v22 = *(v18 + 146);
      if (v22 > 3)
      {
        switch(v22)
        {
          case 4u:
            v88 = v19;
            v49 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C28]);
            v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[1])
            {
              v51 = 0;
              v52 = 0;
              do
              {
                v53 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v53, (*v18 + v51), v49);
                objc_claimAutoreleasedReturnValue();
                [v50 addObject:v53];

                ++v52;
                v51 += 16;
              }

              while (v18[1] > v52);
            }

            [v21 setBoundingBoxBuffers:v50];
            [v21 setBoundingBoxStride:v18[3]];
            [v21 setBoundingBoxCount:v18[2]];

            goto LABEL_60;
          case 5u:
            v58 = MEMORY[0x277CD6C10];
            v59 = v19;
            v21 = objc_alloc_init(v58);
            v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v61 = [v59 objectForKeyedSubscript:v60];
            [v21 setControlPointBuffer:v61];

            [v21 setControlPointBufferOffset:v18[1]];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[6]];
            v63 = [v59 objectForKeyedSubscript:v62];
            [v21 setRadiusBuffer:v63];

            [v21 setRadiusBufferOffset:v18[7]];
            [v21 setControlPointCount:v18[2]];
            [v21 setControlPointStride:v18[3]];
            [v21 setRadiusStride:v18[8]];
            v64 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[4]];
            v65 = [v59 objectForKeyedSubscript:v64];

            [v21 setIndexBuffer:v65];
            [v21 setIndexBufferOffset:v18[5]];
            [v21 setSegmentCount:v18[10]];
            [v21 setSegmentControlPointCount:v18[9]];
            [v21 setControlPointFormat:*(v18 + 88)];
            [v21 setRadiusFormat:*(v18 + 93)];
            [v21 setIndexType:*(v18 + 92)];
            [v21 setCurveType:*(v18 + 90)];
            [v21 setCurveBasis:*(v18 + 89)];
            if (objc_opt_respondsToSelector())
            {
              [v21 setEndCaps:*(v18 + 91)];
            }

            v16 = v85;
            v14 = v86;
            break;
          case 6u:
            v88 = v19;
            v32 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C38]);
            v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[1])
            {
              v34 = 0;
              v35 = 0;
              do
              {
                v36 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v36, (*v18 + v34), v32);
                objc_claimAutoreleasedReturnValue();
                [v33 addObject:v36];

                ++v35;
                v34 += 16;
              }

              while (v18[1] > v35);
            }

            [v21 setControlPointBuffers:v33];
            v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[7])
            {
              v38 = 0;
              v39 = 0;
              do
              {
                v40 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v40, (v18[6] + v38), v32);
                objc_claimAutoreleasedReturnValue();
                [v37 addObject:v40];

                ++v39;
                v38 += 16;
              }

              while (v18[7] > v39);
            }

            [v21 setRadiusBuffers:v37];
            [v21 setControlPointCount:v18[2]];
            [v21 setControlPointStride:v18[3]];
            [v21 setRadiusStride:v18[8]];
            v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[4]];
            v42 = [v32 objectForKeyedSubscript:v41];
            [v21 setIndexBuffer:v42];

            [v21 setIndexBufferOffset:v18[5]];
            [v21 setSegmentCount:v18[10]];
            [v21 setControlPointFormat:*(v18 + 88)];
            [v21 setRadiusFormat:*(v18 + 93)];
            [v21 setIndexType:*(v18 + 92)];
            [v21 setSegmentControlPointCount:v18[9]];
            [v21 setCurveType:*(v18 + 90)];
            [v21 setCurveBasis:*(v18 + 89)];
            if (objc_opt_respondsToSelector())
            {
              [v21 setEndCaps:*(v18 + 91)];
            }

            a1 = v84;
LABEL_60:
            v16 = v85;
            v14 = v86;
            v20 = v88;
            break;
        }
      }

      else
      {
        switch(v22)
        {
          case 1u:
            v89 = v19;
            v23 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C68]);
            v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[5]];
            v44 = [v23 objectForKeyedSubscript:v43];
            [v21 setVertexBuffer:v44];

            [v21 setVertexBufferOffset:v18[6]];
            [v21 setVertexStride:v18[7]];
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v46 = [v23 objectForKeyedSubscript:v45];
            [v21 setIndexBuffer:v46];

            [v21 setIndexBufferOffset:v18[1]];
            [v21 setIndexType:*(v18 + 64)];
            [v21 setTriangleCount:v18[4]];
            if (objc_opt_respondsToSelector())
            {
              [v21 setVertexFormat:*(v18 + 66)];
            }

            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[2]];
            v48 = [v23 objectForKeyedSubscript:v47];
            [v21 setTransformationMatrixBuffer:v48];

            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixBufferOffset:v18[3]];
            }

            v20 = v89;
            v14 = v86;
            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixLayout:*(v18 + 65)];
            }

            goto LABEL_55;
          case 2u:
            v54 = MEMORY[0x277CD6C00];
            v55 = v19;
            v21 = objc_alloc_init(v54);
            v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v57 = [v55 objectForKeyedSubscript:v56];

            [v21 setBoundingBoxBuffer:v57];
            v16 = v85;

            [v21 setBoundingBoxBufferOffset:v18[1]];
            [v21 setBoundingBoxStride:v18[3]];
            [v21 setBoundingBoxCount:v18[2]];
            break;
          case 3u:
            v87 = v19;
            v23 = v19;
            v21 = objc_alloc_init(MEMORY[0x277CD6C40]);
            v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
            if (v18[6])
            {
              v25 = 0;
              v26 = 0;
              do
              {
                v27 = objc_alloc_init(MEMORY[0x277CD6EF0]);
                MakeNestedMTLMotionKeyframeData(v27, (v18[5] + v25), v23);
                objc_claimAutoreleasedReturnValue();
                [v24 addObject:v27];

                ++v26;
                v25 += 16;
              }

              while (v18[6] > v26);
            }

            [v21 setVertexBuffers:v24];
            [v21 setVertexStride:v18[7]];
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v18];
            v29 = [v23 objectForKeyedSubscript:v28];
            [v21 setIndexBuffer:v29];

            [v21 setIndexBufferOffset:v18[1]];
            [v21 setIndexType:*(v18 + 64)];
            [v21 setTriangleCount:v18[4]];
            if (objc_opt_respondsToSelector())
            {
              [v21 setVertexFormat:*(v18 + 66)];
            }

            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[2]];
            v31 = [v23 objectForKeyedSubscript:v30];
            [v21 setTransformationMatrixBuffer:v31];

            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixBufferOffset:v18[3]];
            }

            a1 = v84;
            v14 = v86;
            v20 = v87;
            if (objc_opt_respondsToSelector())
            {
              [v21 setTransformationMatrixLayout:*(v18 + 65)];
            }

LABEL_55:
            break;
        }
      }

      [v21 setIntersectionFunctionTableOffset:v18[12]];
      [v21 setOpaque:*(v18 + 145) != 0];
      [v21 setAllowDuplicateIntersectionFunctionInvocation:*(v18 + 144) != 0];
      if (v18[13])
      {
        v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v21 setLabel:v66];
      }

      v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v18[14]];
      v68 = [v20 objectForKeyedSubscript:v67];
      [v21 setPrimitiveDataBuffer:v68];

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataBufferOffset:v18[15]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataStride:v18[17]];
      }

      if (objc_opt_respondsToSelector())
      {
        [v21 setPrimitiveDataElementSize:v18[16]];
      }

      [v16 addObject:v21];
      if (a1[1] <= ++v17)
      {
        goto LABEL_74;
      }
    }
  }

  if (v6 == 3)
  {
    v72 = MEMORY[0x277CD6E78];
    v73 = v3;
    v5 = objc_alloc_init(v72);
    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[2]];
    v75 = [v73 objectForKeyedSubscript:v74];
    [v5 setInstanceDescriptorBuffer:v75];

    [v5 setInstanceDescriptorBufferOffset:a1[3]];
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    v77 = [v73 objectForKeyedSubscript:v76];
    [v5 setInstanceCountBuffer:v77];

    [v5 setInstanceCountBufferOffset:a1[1]];
    v78 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[4]];
    v79 = [v73 objectForKeyedSubscript:v78];
    [v5 setMotionTransformBuffer:v79];

    [v5 setMotionTransformBufferOffset:a1[5]];
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    v81 = [v73 objectForKeyedSubscript:v80];

    [v5 setMotionTransformCountBuffer:v81];
    [v5 setMotionTransformCountBufferOffset:a1[7]];
    [v5 setMaxInstanceCount:*(a1 + 19)];
    [v5 setInstanceDescriptorStride:*(a1 + 18)];
    [v5 setMaxMotionTransformCount:*(a1 + 20)];
    [v5 setInstanceDescriptorType:*(a1 + 84)];
    if (objc_opt_respondsToSelector())
    {
      [v5 setMotionTransformStride:a1[8]];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 setMotionTransformType:*(a1 + 86)];
    }

    if (objc_opt_respondsToSelector())
    {
      [v5 setInstanceTransformationMatrixLayout:*(a1 + 85)];
    }
  }

  else if (v6 == 4)
  {
    v5 = MakeMTL4AccelerationStructureDescriptor(a1);
  }

LABEL_86:
  [v5 setUsage:*(a1 + 97)];

  return v5;
}

id MakeMTL4AccelerationStructureDescriptor(uint64_t *a1)
{
  v2 = *(a1 + 88);
  switch(v2)
  {
    case 5:
      v3 = objc_alloc_init(MEMORY[0x277CD6B98]);
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!a1[1])
      {
LABEL_42:
        [v3 setGeometryDescriptors:v5];
        [v3 setMotionEndBorderMode:*(a1 + 32)];
        LODWORD(v16) = *(a1 + 6);
        [v3 setMotionEndTime:v16];
        [v3 setMotionKeyframeCount:a1[2]];
        [v3 setMotionStartBorderMode:*(a1 + 33)];
        LODWORD(v17) = *(a1 + 7);
        [v3 setMotionStartTime:v17];

        break;
      }

      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = 0;
        v9 = *a1;
        v10 = *(*a1 + v6 + 146);
        if (v10 > 9)
        {
          switch(v10)
          {
            case 0xAu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A70]);
              v13 = v9 + v6;
              [v8 setBoundingBoxBuffers:{*(v9 + v6), *(v9 + v6 + 8)}];
LABEL_36:
              [v8 setBoundingBoxCount:*(v13 + 16)];
              [v8 setBoundingBoxStride:*(v13 + 24)];
              break;
            case 0xBu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A58]);
              v12 = v9 + v6;
              [v8 setControlPointBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setControlPointCount:*(v9 + v6 + 48)];
              [v8 setControlPointFormat:*(v9 + v6 + 88)];
              [v8 setControlPointStride:*(v9 + v6 + 56)];
              [v8 setCurveBasis:*(v9 + v6 + 89)];
              [v8 setCurveEndCaps:*(v9 + v6 + 90)];
              [v8 setCurveType:*(v9 + v6 + 91)];
              [v8 setIndexBuffer:{*(v12 + 16), *(v12 + 24)}];
              [v8 setIndexType:*(v9 + v6 + 92)];
              [v8 setRadiusBuffer:{*(v12 + 32), *(v12 + 40)}];
              goto LABEL_38;
            case 0xCu:
              v8 = objc_alloc_init(MEMORY[0x277CD6A80]);
              v12 = v9 + v6;
              [v8 setControlPointBuffers:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setControlPointCount:*(v9 + v6 + 48)];
              [v8 setControlPointFormat:*(v9 + v6 + 88)];
              [v8 setControlPointStride:*(v9 + v6 + 56)];
              [v8 setCurveBasis:*(v9 + v6 + 89)];
              [v8 setCurveEndCaps:*(v9 + v6 + 90)];
              [v8 setCurveType:*(v9 + v6 + 91)];
              [v8 setIndexBuffer:{*(v12 + 16), *(v12 + 24)}];
              [v8 setIndexType:*(v9 + v6 + 92)];
              [v8 setRadiusBuffers:{*(v12 + 32), *(v12 + 40)}];
LABEL_38:
              [v8 setRadiusFormat:*(v12 + 93)];
              [v8 setRadiusStride:*(v12 + 64)];
              [v8 setSegmentControlPointCount:*(v12 + 72)];
              [v8 setSegmentCount:*(v12 + 80)];
              break;
          }
        }

        else
        {
          switch(v10)
          {
            case 7u:
              v8 = objc_alloc_init(MEMORY[0x277CD6AA0]);
              v11 = v9 + v6;
              [v8 setIndexBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setIndexType:*(v9 + v6 + 64)];
              [v8 setTransformationMatrixBuffer:{*(v11 + 16), *(v11 + 24)}];
              if (objc_opt_respondsToSelector())
              {
                [v8 setTransformationMatrixLayout:*(v11 + 65)];
              }

              [v8 setTriangleCount:*(v11 + 48)];
              [v8 setVertexBuffer:{*(v11 + 32), *(v11 + 40)}];
              goto LABEL_33;
            case 8u:
              v8 = objc_alloc_init(MEMORY[0x277CD6A50]);
              v13 = v9 + v6;
              [v8 setBoundingBoxBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              goto LABEL_36;
            case 9u:
              v8 = objc_alloc_init(MEMORY[0x277CD6A98]);
              v11 = v9 + v6;
              [v8 setIndexBuffer:{*(v9 + v6), *(v9 + v6 + 8)}];
              [v8 setIndexType:*(v9 + v6 + 64)];
              [v8 setTransformationMatrixBuffer:{*(v11 + 16), *(v11 + 24)}];
              if (objc_opt_respondsToSelector())
              {
                [v8 setTransformationMatrixLayout:*(v11 + 65)];
              }

              [v8 setTriangleCount:*(v11 + 48)];
              [v8 setVertexBuffers:{*(v11 + 32), *(v11 + 40)}];
LABEL_33:
              [v8 setVertexFormat:*(v11 + 66)];
              [v8 setVertexStride:*(v11 + 56)];
              break;
          }
        }

        v14 = v9 + v6;
        [v8 setAllowDuplicateIntersectionFunctionInvocation:*(v9 + v6 + 144) != 0];
        [v8 setIntersectionFunctionTableOffset:*(v9 + v6 + 112)];
        if (*(v9 + v6 + 120))
        {
          v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
          [v8 setLabel:v15];
        }

        [v8 setOpaque:*(v14 + 145) != 0];
        [v8 setPrimitiveDataBuffer:{*(v14 + 96), *(v14 + 104)}];
        [v8 setPrimitiveDataElementSize:*(v14 + 128)];
        [v8 setPrimitiveDataStride:*(v14 + 136)];
        [v5 addObject:v8];

        ++v7;
        v6 += 152;
        if (a1[1] <= v7)
        {
          goto LABEL_42;
        }
      }

    case 6:
      v3 = objc_alloc_init(MEMORY[0x277CD6B38]);
      [v3 setInstanceCount:a1[4]];
      [v3 setInstanceDescriptorBuffer:{*a1, a1[1]}];
      [v3 setInstanceDescriptorStride:a1[5]];
      [v3 setInstanceDescriptorType:*(a1 + 64)];
      if (objc_opt_respondsToSelector())
      {
        [v3 setInstanceTransformationMatrixLayout:*(a1 + 65)];
      }

      [v3 setMotionTransformBuffer:{a1[2], a1[3]}];
      [v3 setMotionTransformCount:a1[6]];
      if (objc_opt_respondsToSelector())
      {
        [v3 setMotionTransformStride:a1[7]];
      }

      if (objc_opt_respondsToSelector())
      {
        v4 = *(a1 + 66);
        goto LABEL_16;
      }

      break;
    case 7:
      v3 = objc_alloc_init(MEMORY[0x277CD6B20]);
      [v3 setInstanceCountBuffer:{*a1, a1[1]}];
      [v3 setInstanceDescriptorBuffer:{a1[2], a1[3]}];
      [v3 setInstanceDescriptorStride:*(a1 + 18)];
      [v3 setInstanceDescriptorType:*(a1 + 84)];
      if (objc_opt_respondsToSelector())
      {
        [v3 setInstanceTransformationMatrixLayout:*(a1 + 85)];
      }

      [v3 setMaxInstanceCount:*(a1 + 19)];
      [v3 setMaxMotionTransformCount:*(a1 + 20)];
      [v3 setMotionTransformBuffer:{a1[4], a1[5]}];
      [v3 setMotionTransformCountBuffer:{a1[6], a1[7]}];
      if (objc_opt_respondsToSelector())
      {
        [v3 setMotionTransformStride:a1[8]];
      }

      if (objc_opt_respondsToSelector())
      {
        v4 = *(a1 + 86);
LABEL_16:
        [v3 setMotionTransformType:v4];
      }

      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

id MakeMTLBlitPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6CA0]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLComputePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D18]);
  [v4 setDispatchType:*(a1 + 96)];
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLResourceStatePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6FA8]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLAccelerationStructurePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6C58]);
  v5 = 0;
  v6 = (a1 + 8);
  do
  {
    if (*v6)
    {
      v7 = [v4 sampleBufferAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
      v9 = MEMORY[0x277CCABB0];
      v10 = *v6;
      v11 = v3;
      v12 = [v9 numberWithUnsignedLongLong:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      [v8 setSampleBuffer:v13];
      [v8 setStartOfEncoderSampleIndex:v6[1]];
      [v8 setEndOfEncoderSampleIndex:*(v6 - 1)];
    }

    ++v5;
    v6 += 3;
  }

  while (v5 != 4);

  return v4;
}

id MakeMTLIntersectionFunctionTableDescriptorWithoutResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6EB0]);
  [v2 setFunctionCount:*(a1 + 8)];

  return v2;
}

id MakeMTLIntersectionFunctionTableDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6EB0]);
  [v2 setFunctionCount:*(a1 + 8)];
  [v2 setForceResourceIndex:*a1 != 0];
  [v2 setResourceIndex:*a1];

  return v2;
}

id MakeMTLRenderPipelineFunctionsDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F88]);
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*(a1 + 64), v5, v3);
    [v4 setVertexAdditionalBinaryFunctions:v6];
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*a1, v7, v3);
    [v4 setFragmentAdditionalBinaryFunctions:v8];
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = CreateObjectArrayWithMap(*(a1 + 48), v9, v3);
    [v4 setTileAdditionalBinaryFunctions:v10];
  }

  v11 = *(a1 + 24);
  if (v11)
  {
    v12 = CreateObjectArrayWithMap(*(a1 + 16), v11, v3);
    [v4 setMeshAdditionalBinaryFunctions:v12];
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = CreateObjectArrayWithMap(*(a1 + 32), v13, v3);
    [v4 setObjectAdditionalBinaryFunctions:v14];
  }

  return v4;
}

id MakeMTLIntersectionFunctionDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6E98]);
  [v2 setOptions:*(a1 + 40)];
  if (*(a1 + 8))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setName:v3];
  }

  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setSpecializedName:v4];
  }

  v5 = MakeMTLFunctionConstantValues(*a1);
  [v2 setConstantValues:v5];

  return v2;
}

id MakeMTLResidencySetDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F98]);
  if (objc_opt_respondsToSelector())
  {
    [v2 setEvictsImmediately:*(a1 + 16) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setInitialCapacity:*a1];
  }

  if (*(a1 + 8))
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

id MakeMTL4ArgumentTableDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AB0]);
  [v2 setInitializeBindings:*(a1 + 32) != 0];
  if (*a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  [v2 setMaxBufferBindCount:*(a1 + 8)];
  [v2 setMaxSamplerStateBindCount:*(a1 + 16)];
  [v2 setMaxTextureBindCount:*(a1 + 24)];
  [v2 setSupportAttributeStrides:*(a1 + 33) != 0];

  return v2;
}

id MakeMTL4RenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BA8]);
  v5 = 0;
  v6 = a1;
  do
  {
    if (*(v6 + 8))
    {
      v7 = [v4 colorAttachments];
      v8 = [v7 objectAtIndexedSubscript:v5];
    }

    ++v5;
    v6 += 64;
  }

  while (v5 != 8);
  [v4 setDefaultRasterSampleCount:*(a1 + 632)];
  v9 = [v4 depthAttachment];

  [v4 setImageblockSampleLength:*(a1 + 620)];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 600)];
  v11 = [v3 objectForKeyedSubscript:v10];
  [v4 setRasterizationRateMap:v11];

  [v4 setRenderTargetArrayLength:*(a1 + 622)];
  [v4 setRenderTargetHeight:*(a1 + 624)];
  [v4 setRenderTargetWidth:*(a1 + 626)];
  v12 = [v4 stencilAttachment];

  [v4 setThreadgroupMemoryLength:*(a1 + 616)];
  [v4 setTileHeight:*(a1 + 628)];
  [v4 setTileWidth:*(a1 + 630)];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 608)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setVisibilityResultBuffer:v14];

  [v4 setVisibilityResultType:*(a1 + 634)];
  [v4 setSupportColorAttachmentMapping:*(a1 + 633) != 0];

  return v4;
}

id MakeMTL4LibraryDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B48]);
  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setName:v5];
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = MakeMTLCompileOptions(v6, v3);
    [v4 setOptions:v7];
  }

  if (a1[2])
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setSource:v8];
  }

  return v4;
}

id MakeMTL4FunctionDescriptor(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 24);
  if (v5 == 1)
  {
    v12 = MEMORY[0x277CD6BD0];
    v13 = v3;
    v8 = objc_alloc_init(v12);
    v14 = MakeMTLFunctionConstantValues(*a1);
    [v8 setConstantValues:v14];

    v15 = MakeMTL4FunctionDescriptor(a1[1], v13);

    [v8 setFunctionDescriptor:v15];
    if (!a1[2])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v8 setSpecializedName:v11];
    goto LABEL_7;
  }

  if (v5 == 2)
  {
    v6 = MEMORY[0x277CD6B58];
    v7 = v3;
    v8 = objc_alloc_init(v6);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    v10 = [v7 objectForKeyedSubscript:v9];

    [v8 setLibrary:v10];
    if (!a1[1])
    {
      goto LABEL_9;
    }

    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v8 setName:v11];
LABEL_7:

    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

id MakeMTL4CompilerTaskOptions(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B00]);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*a1, v5, v3);
    [v4 setLookupArchives:v6];
  }

  return v4;
}

id MakeMTL4CompilerDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AF0]);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[1]];
  v4 = [0 objectForKeyedSubscript:v3];
  [v2 setPipelineDataSetSerializer:v4];

  if (*a1)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v5];
  }

  return v2;
}

id MakeNestedMTL4RenderPipelineColorAttachmentDescriptor(void *a1, unsigned __int16 *a2)
{
  v3 = a1;
  [v3 setAlphaBlendOperation:*(a2 + 2)];
  [v3 setBlendingState:*(a2 + 3)];
  [v3 setDestinationAlphaBlendFactor:*(a2 + 4)];
  [v3 setDestinationRGBBlendFactor:*(a2 + 5)];
  [v3 setPixelFormat:*a2];
  [v3 setRgbBlendOperation:*(a2 + 6)];
  [v3 setSourceAlphaBlendFactor:*(a2 + 7)];
  [v3 setSourceRGBBlendFactor:*(a2 + 8)];
  [v3 setWriteMask:*(a2 + 9)];

  return v3;
}

id MakeMTL4RenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BC0]);
  [v4 setAlphaToCoverageState:*(a1 + 960)];
  [v4 setAlphaToOneState:*(a1 + 961)];
  v5 = 0;
  v6 = (a1 + 744);
  do
  {
    v7 = [v4 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:v5];

    ++v5;
    v6 += 8;
  }

  while (v5 != 8);
  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 936)];
  }

  v9 = MakeMTL4FunctionDescriptor((a1 + 872), v3);
  [v4 setFragmentFunctionDescriptor:v9];

  [v4 setInputPrimitiveTopology:*(a1 + 963)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 944)];
  }

  [v4 setRasterSampleCount:*(a1 + 952)];
  [v4 setRasterizationEnabled:*(a1 + 964) != 0];
  [v4 setSupportFragmentBinaryLinking:*(a1 + 965) != 0];
  [v4 setSupportVertexBinaryLinking:*(a1 + 967) != 0];
  v10 = objc_opt_new();
  [v4 setVertexDescriptor:v10];

  v11 = [v4 vertexDescriptor];

  v12 = MakeMTL4FunctionDescriptor((a1 + 904), v3);
  [v4 setVertexFunctionDescriptor:v12];

  [v4 setSupportIndirectCommandBuffers:*(a1 + 966)];
  [v4 setColorAttachmentMappingState:*(a1 + 962)];

  return v4;
}

id MakeMTL4MeshRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B78]);
  [v4 setAlphaToCoverageState:*(a1 + 328)];
  [v4 setAlphaToOneState:*(a1 + 329)];
  v5 = 0;
  v6 = a1;
  do
  {
    v7 = [v4 colorAttachments];
    v8 = [v7 objectAtIndexedSubscript:v5];

    ++v5;
    v6 += 8;
  }

  while (v5 != 8);
  if (objc_opt_respondsToSelector())
  {
    [v4 setColorSampleCount:*(a1 + 272)];
  }

  v9 = MakeMTL4FunctionDescriptor((a1 + 128), v3);
  [v4 setFragmentFunctionDescriptor:v9];

  [v4 setMaxTotalThreadgroupsPerMeshGrid:*(a1 + 280)];
  [v4 setMaxTotalThreadsPerMeshThreadgroup:*(a1 + 288)];
  [v4 setMaxTotalThreadsPerObjectThreadgroup:*(a1 + 296)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setMaxVertexAmplificationCount:*(a1 + 304)];
  }

  v10 = MakeMTL4FunctionDescriptor((a1 + 160), v3);
  [v4 setMeshFunctionDescriptor:v10];

  [v4 setMeshThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 331) != 0];
  v11 = MakeMTL4FunctionDescriptor((a1 + 192), v3);
  [v4 setObjectFunctionDescriptor:v11];

  [v4 setObjectThreadgroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 332) != 0];
  [v4 setPayloadMemoryLength:*(a1 + 312)];
  [v4 setRasterSampleCount:*(a1 + 320)];
  [v4 setRasterizationEnabled:*(a1 + 333) != 0];
  if (objc_opt_respondsToSelector())
  {
    v12 = *(a1 + 240);
    v15 = *(a1 + 224);
    v16 = v12;
    [v4 setRequiredThreadsPerMeshThreadgroup:&v15];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = *(a1 + 264);
    v15 = *(a1 + 248);
    v16 = v13;
    [v4 setRequiredThreadsPerObjectThreadgroup:&v15];
  }

  [v4 setSupportFragmentBinaryLinking:*(a1 + 334) != 0];
  [v4 setSupportMeshBinaryLinking:*(a1 + 336) != 0];
  [v4 setSupportObjectBinaryLinking:*(a1 + 337) != 0];
  [v4 setSupportIndirectCommandBuffers:*(a1 + 335)];
  [v4 setColorAttachmentMappingState:*(a1 + 330)];

  return v4;
}

id MakeMTL4PipelineDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  v6 = *(a1 + 1016);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6B68]);
      if (*(a1 + 32))
      {
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
        [v5 setLabel:v14];
      }

      v12 = MakeMTL4FunctionDescriptor(a1, v7);
      [v5 setMachineLearningFunctionDescriptor:v12];
LABEL_16:

      goto LABEL_22;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_22;
      }

      v7 = v3;
      v5 = objc_alloc_init(MEMORY[0x277CD6BE8]);
      for (i = 0; i != 8; ++i)
      {
        v9 = [v5 colorAttachments];
        v10 = [v9 objectAtIndexedSubscript:i];
        [v10 setPixelFormat:*(a1 + 2 * i + 56)];
      }

      [v5 setMaxTotalThreadsPerThreadgroup:*(a1 + 72)];
      [v5 setRasterSampleCount:*(a1 + 80)];
      if (objc_opt_respondsToSelector())
      {
        v11 = *(a1 + 48);
        v23 = *(a1 + 32);
        v24 = v11;
        [v5 setRequiredThreadsPerThreadgroup:&v23];
      }

      [v5 setSupportBinaryLinking:*(a1 + 88) != 0];
      [v5 setThreadgroupSizeMatchesTileSize:*(a1 + 89) != 0];
      v12 = MakeMTL4FunctionDescriptor(a1, v7);
      [v5 setTileFunctionDescriptor:v12];
      goto LABEL_16;
    }

    v13 = MakeMTL4MeshRenderPipelineDescriptor(a1, v3);
    goto LABEL_18;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      goto LABEL_22;
    }

    v13 = MakeMTL4RenderPipelineDescriptor(a1, v3);
LABEL_18:
    v5 = v13;
    goto LABEL_22;
  }

  v15 = MEMORY[0x277CD6B08];
  v16 = v3;
  v5 = objc_alloc_init(v15);
  v17 = MakeMTL4FunctionDescriptor(a1, v16);

  [v5 setComputeFunctionDescriptor:v17];
  [v5 setMaxTotalThreadsPerThreadgroup:*(a1 + 56)];
  if (objc_opt_respondsToSelector())
  {
    v18 = *(a1 + 48);
    v23 = *(a1 + 32);
    v24 = v18;
    [v5 setRequiredThreadsPerThreadgroup:&v23];
  }

  [v5 setSupportBinaryLinking:*(a1 + 64) != 0];
  [v5 setThreadGroupSizeIsMultipleOfThreadExecutionWidth:*(a1 + 66) != 0];
  [v5 setSupportIndirectCommandBuffers:*(a1 + 65)];
LABEL_22:
  if (*(a1 + 1008))
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v5 setLabel:v19];
  }

  v20 = [v5 options];
  [v20 setEnableAccelerationStructureViewerInstrumentation:*(a1 + 1000) != 0];
  [v20 setEnablePerformanceStatistics:*(a1 + 1001) != 0];
  [v20 setEnablePostMeshDump:*(a1 + 1002) != 0];
  [v20 setEnablePostVertexDump:*(a1 + 1003) != 0];
  [v20 setEnableResourcePatchingInstrumentation:*(a1 + 1004) != 0];
  [v20 setEnableResourceUsageInstrumentation:*(a1 + 1005) != 0];
  [v20 setMaxNumRegisters:*(a1 + 984)];
  v21 = GTData_MakeDictionary(*(a1 + 968), *(a1 + 976));
  [v20 setPluginData:v21];

  [v20 setShaderReflection:*(a1 + 1006)];
  [v20 setShaderValidation:*(a1 + 1007)];
  [v20 setPostVertexDumpBufferIndex:*(a1 + 992)];

  return v5;
}

id MakeMTLTensorDescriptorWithoutResourceIndex(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD7038]);
  [v2 setDataType:*(a1 + 283)];
  v3 = *(a1 + 112);
  *&v16[96] = *(a1 + 96);
  *&v16[112] = v3;
  *&v16[128] = *(a1 + 128);
  v4 = *(a1 + 48);
  *&v16[32] = *(a1 + 32);
  *&v16[48] = v4;
  v5 = *(a1 + 80);
  *&v16[64] = *(a1 + 64);
  *&v16[80] = v5;
  v6 = *(a1 + 16);
  *v16 = *a1;
  *&v16[16] = v6;
  v7 = MakeMTLTensorExtents(v16);
  [v2 setDimensions:v7];

  [v2 setUsage:*(a1 + 287)];
  if (objc_opt_respondsToSelector())
  {
    [v2 setCpuCacheMode:*(a1 + 282)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setHazardTrackingMode:*(a1 + 285)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setResourceOptions:*(a1 + 280)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setStorageMode:*(a1 + 286)];
  }

  v8 = *(a1 + 136);
  v9 = *(a1 + 224);
  v21 = *(a1 + 208);
  v22 = v9;
  v10 = *(a1 + 256);
  v23 = *(a1 + 240);
  v24 = v10;
  v11 = *(a1 + 160);
  v17 = *(a1 + 144);
  v18 = v11;
  v12 = *(a1 + 192);
  v19 = *(a1 + 176);
  v20 = v12;
  v13 = v2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && v8)
  {
    *&v16[72] = v21;
    *&v16[88] = v22;
    *&v16[104] = v23;
    *&v16[120] = v24;
    *&v16[8] = v17;
    *&v16[24] = v18;
    *&v16[40] = v19;
    *v16 = v8;
    *&v16[56] = v20;
    v14 = MakeMTLTensorExtents(v16);
    [v13 setStrides:v14];
  }

  return v13;
}

id MakeMTLTensorDescriptorWithResourceIndex(uint64_t a1)
{
  v2 = MakeMTLTensorDescriptorWithoutResourceIndex(a1);
  [v2 setForceResourceIndex:*(a1 + 272) != 0];
  [v2 setResourceIndex:*(a1 + 272)];

  return v2;
}

id MakeMTLTextureViewDescriptor(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7060]);
  [v2 setLevelRange:{*a1, *(a1 + 8)}];
  [v2 setPixelFormat:*(a1 + 36)];
  [v2 setSliceRange:{*(a1 + 16), *(a1 + 24)}];
  [v2 setTextureType:*(a1 + 38)];
  [v2 setSwizzle:MTLTextureSwizzleKeyToChannels()];

  return v2;
}

id MakeNestedMTL4PipelineStageDynamicLinkingDescriptor(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*a2, v7, v6);
    [v5 setBinaryLinkedFunctions:v8];
  }

  [v5 setMaxCallStackDepth:*(a2 + 16)];
  v9 = *(a2 + 32);
  if (v9)
  {
    v10 = CreateObjectArrayWithMap(*(a2 + 24), v9, v6);
    [v5 setPreloadedLibraries:v10];
  }

  return v5;
}

id MakeMTL4PipelineStageDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6B90]);
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = CreateObjectArrayWithMap(*a1, v5, v3);
    [v4 setBinaryLinkedFunctions:v6];
  }

  [v4 setMaxCallStackDepth:*(a1 + 16)];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = CreateObjectArrayWithMap(*(a1 + 24), v7, v3);
    [v4 setPreloadedLibraries:v8];
  }

  return v4;
}

id MakeMTL4RenderPipelineDynamicLinkingDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6BC8]);
  v5 = [v4 fragmentLinkingDescriptor];

  v6 = [v4 meshLinkingDescriptor];

  v7 = [v4 objectLinkingDescriptor];

  v8 = [v4 tileLinkingDescriptor];

  v9 = [v4 vertexLinkingDescriptor];

  return v4;
}

id MakeMTL4CommandAllocatorDescriptor(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6AC8]);
  if (*a1)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v2 setLabel:v3];
  }

  return v2;
}

id MakeMTL4CommandBufferOptions(void *a1, void *a2)
{
  v3 = MEMORY[0x277CD6AD0];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
  v7 = [v4 objectForKeyedSubscript:v6];

  [v5 setLogState:v7];

  return v5;
}

id MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v2 setTextureType:{objc_msgSend(v1, "textureType")}];
  [v2 setPixelFormat:objc_msgSend(v1, "pixelFormat")];
  [v2 setUsage:{objc_msgSend(v1, "usage")}];
  [v2 setWidth:{objc_msgSend(v1, "width")}];
  [v2 setHeight:{objc_msgSend(v1, "height")}];
  [v2 setDepth:{objc_msgSend(v1, "depth")}];
  [v2 setArrayLength:{objc_msgSend(v1, "arrayLength")}];
  [v2 setStorageMode:{objc_msgSend(v1, "storageMode")}];
  [v2 setSampleCount:{objc_msgSend(v1, "sampleCount")}];
  [v2 setCpuCacheMode:{objc_msgSend(v1, "cpuCacheMode")}];
  [v2 setMipmapLevelCount:{objc_msgSend(v1, "mipmapLevelCount")}];
  if (objc_opt_respondsToSelector())
  {
    [v2 setHazardTrackingMode:{objc_msgSend(v1, "hazardTrackingMode")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setAllowGPUOptimizedContents:{objc_msgSend(v1, "allowGPUOptimizedContents")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 setSwizzle:{objc_msgSend(v1, "swizzle")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setSwizzleKey:{objc_msgSend(v1, "swizzleKey")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setRotation:{objc_msgSend(v1, "rotation")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setSparseSurfaceDefaultValue:{objc_msgSend(v1, "sparseSurfaceDefaultValue")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setCompressionType:{objc_msgSend(v1, "compressionType")}];
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v2 setCompressionFootprint:{objc_msgSend(v1, "compressionFootprint")}];
  }

  return v2;
}

void MakeGTMTLSamplerDescriptor(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 label];
  v5 = [v4 UTF8String];

  if (v5)
  {
    strlen(v5);
  }

  MEMORY[0x28223BE20]();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v7, v6);
  v8 = v3;
  *(a1 + 32) = xmmword_24DA92D08;
  *(a1 + 48) = unk_24DA92D18;
  *(a1 + 64) = 0;
  *a1 = GTMTLSamplerDescriptorDefaults;
  *(a1 + 16) = unk_24DA92CF8;
  v9 = v8;
  v10 = [v9 label];
  v11 = [v10 UTF8String];
  v12 = v11;
  if (!v11 || (v13 = strlen(v11), v14 = v13 + 1, v13 == -1))
  {
    v14 = 0;
    v7 = 0;
  }

  memcpy(v7, v12, v14);

  *(a1 + 60) = [v9 minFilter];
  *(a1 + 59) = [v9 magFilter];
  *(a1 + 61) = [v9 mipFilter];
  *(a1 + 8) = [v9 maxAnisotropy];
  *(a1 + 65) = [v9 sAddressMode];
  *(a1 + 67) = [v9 tAddressMode];
  *(a1 + 63) = [v9 rAddressMode];
  *(a1 + 62) = [v9 normalizedCoordinates];
  [v9 lodMinClamp];
  *(a1 + 48) = v15;
  [v9 lodMaxClamp];
  *(a1 + 44) = v16;
  *a1 = v7;
  *(a1 + 58) = [v9 lodAverage];
  *(a1 + 55) = [v9 compareFunction];
  *(a1 + 54) = [v9 borderColor];
  *(a1 + 66) = [v9 supportArgumentBuffers];
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 16) = [v9 resourceIndex];
  }

  *(a1 + 56) = [v9 forceResourceIndex];
  if (objc_opt_respondsToSelector())
  {
    *(a1 + 64) = [v9 reductionMode];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 24) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 28) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 32) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 36) = [v9 customBorderColorValue];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 57) = [v9 forceSeamsOnCubemapFiltering];
  }

  if (objc_opt_respondsToSelector())
  {
    *(a1 + 52) = [v9 pixelFormat];
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 lodBias];
    *(a1 + 40) = v17;
  }

  v18 = [v9 label];

  *a1 = [v18 UTF8String];
}

id MakeMTLRenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6F48]);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 792)];
  v6 = [v3 objectForKeyedSubscript:v5];
  [v4 setVisibilityResultBuffer:v6];

  v7 = 0;
  v8 = a1;
  do
  {
    if (*(v8 + 8))
    {
      v9 = [v4 colorAttachments];
      v10 = [v9 objectAtIndexedSubscript:v7];
    }

    ++v7;
    v8 += 64;
  }

  while (v7 != 8);
  v11 = [v4 depthAttachment];

  v12 = [v4 stencilAttachment];

  [v4 setRenderTargetArrayLength:*(a1 + 806)];
  if (objc_opt_respondsToSelector())
  {
    [v4 setImageblockSampleLength:*(a1 + 804)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setThreadgroupMemoryLength:*(a1 + 800)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileWidth:*(a1 + 814)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setTileHeight:*(a1 + 812)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetWidth:*(a1 + 810)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setRenderTargetHeight:*(a1 + 808)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultRasterSampleCount:*(a1 + 816)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setOpenGLModeEnabled:*(a1 + 818) != 0];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 784)];
  v14 = [v3 objectForKeyedSubscript:v13];
  [v4 setRasterizationRateMap:v14];

  if (objc_opt_respondsToSelector())
  {
    [v4 setDitherEnabled:*(a1 + 817) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setDefaultColorSampleCount:*(a1 + 776)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setPointCoordYFlipEnabled:*(a1 + 819) != 0];
  }

  v15 = 0;
  v16 = (a1 + 544);
  do
  {
    if (*(v16 - 2))
    {
      v17 = [v4 sampleBufferAttachments];
      v18 = [v17 objectAtIndexedSubscript:v15];
      v19 = MEMORY[0x277CCABB0];
      v20 = *(v16 - 2);
      v21 = v3;
      v22 = [v19 numberWithUnsignedLongLong:v20];
      v23 = [v21 objectForKeyedSubscript:v22];

      [v18 setSampleBuffer:v23];
      [v18 setStartOfVertexSampleIndex:*v16];
      [v18 setEndOfVertexSampleIndex:*(v16 - 3)];
      [v18 setStartOfFragmentSampleIndex:*(v16 - 1)];
      [v18 setEndOfFragmentSampleIndex:*(v16 - 4)];
    }

    ++v15;
    v16 += 5;
  }

  while (v15 != 4);
  if (objc_opt_respondsToSelector())
  {
    [v4 setSkipEmptyTilesOnClearEnabled:*(a1 + 820) != 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setVisibilityResultType:*(a1 + 822)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 setSupportColorAttachmentMapping:*(a1 + 821) != 0];
  }

  [v4 setSamplePositions:*(a1 + 760) count:*(a1 + 768)];

  return v4;
}

id MakeMTLRasterizationRateMapDescriptor(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = 8 * v2;
  MEMORY[0x28223BE20]();
  v4 = v21 - ((8 * v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v4, 8 * v2);
  if (*(a1 + 16))
  {
    v21[1] = v21;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (*(a1 + 8) + v5);
      v8 = v7[8];
      v9 = v7[10];
      v10 = v7[9];
      v11 = objc_alloc(MEMORY[0x277CD6F18]);
      v22 = v8;
      v23 = v9;
      v24 = v10;
      v12 = [v11 initWithSampleCount:&v22];
      v13 = *&v4[8 * v6];
      *&v4[8 * v6] = v12;

      memcpy([v12 horizontalSampleStorage], *(*(a1 + 8) + v5), 4 * v8);
      memcpy([v12 verticalSampleStorage], *(*(a1 + 8) + v5 + 8), 4 * v9);
      ++v6;
      v14 = *(a1 + 16);
      v5 += 24;
    }

    while (v6 < v14);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 30);
  v16 = *(a1 + 28);
  v22 = *(a1 + 32);
  v23 = v15;
  v24 = v16;
  v17 = [MEMORY[0x277CD6F20] rasterizationRateMapDescriptorWithScreenSize:&v22 layerCount:v14 layers:v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v17 setLabel:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setMutability:*(a1 + 34)];
  }

  if (objc_opt_respondsToSelector())
  {
    LODWORD(v19) = *(a1 + 24);
    [v17 setMinFactor:v19];
  }

  if (objc_opt_respondsToSelector())
  {
    [v17 setSkipSampleValidationAndApplySampleAtTileGranularity:*(a1 + 35) != 0];
  }

  if (v2)
  {
    do
    {

      v3 -= 8;
    }

    while (v3);
  }

  return v17;
}

id MakeMTLCounterSampleBufferDescriptor(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CD6D48]);
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(a1 + 8)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v3;
  v6 = [v3 counterSets];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          [v4 setCounterSet:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*a1)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    [v4 setLabel:v14];
  }

  [v4 setStorageMode:*(a1 + 44)];
  [v4 setSampleCount:*(a1 + 40)];

  return v4;
}

id MakeMTLStitchedLibraryDescriptor(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CD7008];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setOptions:*(a1 + 48)];
  v7 = MakeMTLFunctionStitchingGraphArray(a1, v6);
  [v5 setFunctionGraphs:v7];

  v8 = CreateObjectArrayWithMap(*(a1 + 16), *(a1 + 40), v4);

  [v5 setFunctions:v8];

  return v5;
}

id MakeMTLFunctionStitchingGraphArray(void *a1, uint64_t a2)
{
  v27 = objc_opt_new();
  v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1[4]];
  if (a1[4])
  {
    v3 = 0;
    while (1)
    {
      v4 = *a1 + 56 * v3;
      v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{*v4, v26}];
      v5 = MakeMTLFunctionStitchingFunctionNodeArray(*(v4 + 8), *(v4 + 16), a1, v27);
      v6 = v5;
      v7 = MEMORY[0x277CBEBF8];
      if (v5)
      {
        v7 = v5;
      }

      v28 = v7;

      v8 = MakeMTLFunctionStitchingFunctionNode(a1, *(v4 + 24), v27);
      v9 = *(v4 + 40);
      if (v9)
      {
        v10 = *(v4 + 32);
        v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9];
        while (1)
        {
          v13 = *v10;
          v10 += 8;
          v12 = v13;
          if (v13 == 1)
          {
            break;
          }

          if (v12 == 2)
          {
            v14 = 0x277CD6D98;
LABEL_11:
            v15 = objc_alloc_init(*v14);
            [v11 addObject:v15];
          }

          if (!--v9)
          {
            v16 = [v11 copy];

            goto LABEL_15;
          }
        }

        v14 = 0x277CD6D90;
        goto LABEL_11;
      }

      v16 = 0;
LABEL_15:
      v17 = MEMORY[0x277CBEBF8];
      if (v16)
      {
        v17 = v16;
      }

      v18 = v17;

      v19 = *(v4 + 48);
      if (v19 == 2)
      {
        break;
      }

      v20 = v29;
      if (v19 == 1)
      {
        v21 = 0x277CD6DD0;
LABEL_21:
        v22 = [objc_alloc(*v21) initWithFunctionName:v20 nodes:v28 outputNode:v8 attributes:v18];
        [v26 addObject:v22];
      }

      if (++v3 >= a1[4])
      {
        goto LABEL_23;
      }
    }

    v21 = 0x277CD6DE0;
    v20 = v29;
    goto LABEL_21;
  }

LABEL_23:
  v23 = v26;
  v24 = [v26 copy];

  return v24;
}

id MakeMTLFunctionStitchingFunctionNodeArray(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a2];
    do
    {
      v10 = *a1++;
      v9 = v10;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
      v12 = [v7 objectForKeyedSubscript:v11];

      if (!v12)
      {
        v12 = MakeMTLFunctionStitchingFunctionNode(a3, v9, v7);
      }

      [v8 addObject:v12];

      --a2;
    }

    while (a2);
    v13 = [v8 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id MakeMTLFunctionStitchingFunctionNode(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (!a2 || *(a1 + 24) < a2)
  {
    v6 = 0;
    goto LABEL_62;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  v8 = [v5 objectForKeyedSubscript:v7];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v6 = v9;
    goto LABEL_61;
  }

  v10 = *(a1 + 8) + 56 * a2;
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:*(v10 - 48)];
  v11 = *(v10 - 40);
  v12 = *(v10 - 24);
  v13 = v5;
  if (v12)
  {
    v39 = v10;
    v40 = v8;
    v41 = v5;
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    while (1)
    {
      v16 = *v11++;
      v15 = v16;
      v17 = v13;
      if (v16 && *(a1 + 24) >= v15)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
        v18 = [v17 objectForKeyedSubscript:v19];

        if (!v18)
        {
          v20 = *(a1 + 8) + 56 * v15;
          v21 = *(v20 - 56);
          if (v21 > 6)
          {
            if (*(v20 - 56) > 9u)
            {
              switch(v21)
              {
                case 0xAu:
                  v24 = MEMORY[0x277CD6DA0];
                  goto LABEL_40;
                case 0xBu:
                  v24 = MEMORY[0x277CD6DA8];
LABEL_40:
                  v22 = objc_alloc_init(v24);
LABEL_41:
                  v18 = v22;
                  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v15];
                  [v17 setObject:v18 forKeyedSubscript:v25];

                  break;
                case 0xCu:
LABEL_32:
                  v18 = MakeMTLFunctionStitchingFunctionNode(a1, v15, v17);
                  break;
              }
            }

            else
            {
              switch(v21)
              {
                case 7u:
                  v23 = MEMORY[0x277CD6E10];
LABEL_37:
                  v22 = [[v23 alloc] initWithBindIndex:*(v20 - 40)];
                  goto LABEL_41;
                case 8u:
                  v23 = MEMORY[0x277CD6E20];
                  goto LABEL_37;
                case 9u:
                  v23 = MEMORY[0x277CD6DF8];
                  goto LABEL_37;
              }
            }
          }

          else if (*(v20 - 56) > 3u)
          {
            switch(v21)
            {
              case 4u:
                v23 = MEMORY[0x277CD6DE8];
                goto LABEL_37;
              case 5u:
                v22 = [objc_alloc(MEMORY[0x277CD6DF0]) initWithBindIndex:*(v20 - 40) byteOffset:*(v20 - 48) dereference:*(v20 - 38) != 0];
                goto LABEL_41;
              case 6u:
                v23 = MEMORY[0x277CD6E18];
                goto LABEL_37;
            }
          }

          else
          {
            if (v21 - 1 < 2)
            {
              goto LABEL_32;
            }

            if (v21 == 3)
            {
              v22 = [objc_alloc(MEMORY[0x277CD6E08]) initWithArgumentIndex:*(v20 - 40)];
              goto LABEL_41;
            }
          }
        }
      }

      else
      {
        v18 = 0;
      }

      [v14 addObject:v18];
      if (!--v12)
      {
        v26 = [v14 copy];

        v8 = v40;
        v5 = v41;
        v10 = v39;
        goto LABEL_45;
      }
    }
  }

  v26 = 0;
LABEL_45:

  v27 = MEMORY[0x277CBEBF8];
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = MEMORY[0x277CBEBF8];
  }

  v29 = v28;

  v30 = MakeMTLFunctionStitchingFunctionNodeArray(*(v10 - 32), *(v10 - 16), a1, v13);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v27;
  }

  v33 = v32;

  v34 = *(v10 - 56);
  if (v34 == 1)
  {
    v36 = MEMORY[0x277CD6DB8];
    goto LABEL_57;
  }

  if (v34 == 12)
  {
    v36 = MEMORY[0x277CD6DB0];
LABEL_57:
    v35 = [[v36 alloc] initWithName:v8 arguments:v29 controlDependencies:v33];
    goto LABEL_58;
  }

  if (v34 != 2)
  {
    v6 = 0;
    goto LABEL_60;
  }

  v35 = [objc_alloc(MEMORY[0x277CD6DC8]) initWithName:v8 arguments:v29 controlDependencies:v33 isEarlyReturn:*(v10 - 8) != 0];
LABEL_58:
  v6 = v35;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v13 setObject:v6 forKeyedSubscript:v37];

LABEL_60:
LABEL_61:

LABEL_62:

  return v6;
}