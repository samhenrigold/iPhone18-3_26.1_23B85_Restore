void PrepareExecuteIndirect(MTLGPUDebugComputeCommandEncoder *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = [(MTLToolsObject *)a1 baseObject];
  v6 = [(MTLToolsObject *)v4 device];
  v31 = [a2 inheritsBuffers];
  v7 = [a2 inheritsPipelineState];
  v8 = *(v6 + 424);
  [v5 useResource:v8 usage:1];
  if (([a2 initializedTables] & 1) == 0)
  {
    v9 = [objc_msgSend(a2 "SVBindingTableVertexKernelBuffer")];
    v10 = [objc_msgSend(a2 "SVBindingTableVertexKernelBuffer")];
    if ([a2 maxCommands])
    {
      v11 = 0;
      v12 = (v9 + 168);
      do
      {
        [objc_msgSend(a2 indirectComputeCommandAtIndex:{v11), "setToolsDispatchBufferSPI:atIndex:", v10, 0}];
        v10 += 320;
        *v12 = [v8 gpuAddress];
        v13 = [(MTLGPUDebugComputeCommandEncoder *)v4 temporaryBufferWithLength:4];
        *[v13 contents] = 0;
        v12[3] = [v13 gpuAddress];
        ++v11;
        v12 += 40;
      }

      while ([a2 maxCommands] > v11);
    }

    [a2 setInitializedTables:1];
  }

  v14 = *(v6 + 284);
  if ((v14 & 0x200000000) != 0)
  {
    [v5 setBuffer:v4->_bufferUsageTable offset:0 atIndex:6];
    [v5 useResource:v4->_bufferUsageTable usage:1];
    v14 = *(v6 + 284);
  }

  if ((~v14 & 0x200200000) == 0)
  {
    [v5 setBuffer:v4->_textureUsageTable offset:0 atIndex:7];
    [v5 setBuffer:v4->_textureTypeTable offset:0 atIndex:8];
    [v5 useResource:v4->_textureUsageTable usage:1];
    [v5 useResource:v4->_textureTypeTable usage:1];
  }

  [v5 setBuffer:objc_msgSend(a2 offset:"SVBindingTableVertexKernelBuffer") atIndex:{0, 11}];
  [v5 useResource:objc_msgSend(a2 usage:{"SVBindingTableVertexKernelBuffer"), 3}];
  [v5 useResource:objc_msgSend(a2 usage:{"baseObject"), 2}];
  [v5 setBuffer:objc_msgSend(a2 offset:"internalICBBuffer") atIndex:{0, 0}];
  currentPipeline = v4->_currentPipeline;
  if (((currentPipeline != 0) & v7) == 1)
  {
    [v5 useResource:-[MTLToolsObject baseObject](-[MTLGPUDebugComputePipelineState indirectStateBuffer](currentPipeline usage:{"indirectStateBuffer"), "baseObject"), 1}];
    [v5 setBuffer:-[MTLToolsObject baseObject](-[MTLGPUDebugComputePipelineState indirectStateBuffer](v4->_currentPipeline offset:"indirectStateBuffer") atIndex:{"baseObject"), 0, 3}];
  }

  if (v7)
  {
    v16 = [objc_msgSend(v6 "baseObject")];
    [v5 setBuffer:v16 offset:0 atIndex:5];
    [v5 useResource:v16 usage:1];

    v17 = a3;
  }

  else
  {
    GlobalResidentBufferList::useBuffers((v6 + 568), v4);
    if ([a2 maxCommands])
    {
      v18 = 0;
      v19 = 16;
      do
      {
        encoderID = v4->_dispatchID.encoderID;
        *([objc_msgSend(a2 "internalDispatchIDBuffer")] + v19) = encoderID;
        ++v18;
        v19 += 24;
      }

      while ([a2 maxCommands] > v18);
    }

    [v5 setBuffer:objc_msgSend(a2 offset:"internalDispatchIDBuffer") atIndex:{0, 5}];
    v17 = a3;
  }

  v21 = *(v17 + 16);
  if (v21 == -1)
  {
    v22 = -1;
  }

  else
  {
    v22 = *(v17 + 16);
  }

  if (v22 == 1)
  {
    if (v21 != 1)
    {
      goto LABEL_56;
    }

    [v5 setBytes:v17 length:8 atIndex:1];
  }

  else
  {
    if (v22)
    {
      return;
    }

    if (v21)
    {
      goto LABEL_56;
    }

    v23 = *v17;
    [v5 setBuffer:objc_msgSend(*v17 offset:"baseObject") atIndex:{*(v17 + 8), 1}];
    [(MTLToolsCommandEncoder *)v4 addRetainedObject:v23];
  }

  if (((v7 ^ 1 | v31) & 1) == 0)
  {
    v24 = [v6 ICB_Inherit_PSO_ComputePipelineState];
    goto LABEL_35;
  }

  if (!(v7 & 1 | ((v31 & 1) == 0)))
  {
    v24 = [v6 ICB_Inherit_Buffers_ComputePipelineState];
    goto LABEL_35;
  }

  if (((v31 | v7) & 1) == 0)
  {
    v24 = [v6 ICB_Inherit_None_ComputePipelineState];
    goto LABEL_35;
  }

  if ((v31 & v7) != 0)
  {
    v24 = [v6 ICB_Inherit_Both_ComputePipelineState];
LABEL_35:
    v25 = v24;
    goto LABEL_36;
  }

  v25 = 0;
LABEL_36:
  [v5 setComputePipelineState:v25];
  [v5 memoryBarrierWithScope:1];
  v26 = *(v17 + 16);
  if (v26 == -1)
  {
    v27 = -1;
  }

  else
  {
    v27 = *(v17 + 16);
  }

  if (v27 == 1)
  {
    if (v26 == 1)
    {
      v35 = *(v17 + 4);
      goto LABEL_44;
    }

LABEL_56:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (!v27)
  {
    v35 = [a2 maxCommands];
LABEL_44:
    v36 = vdupq_n_s64(1uLL);
    v33 = [v25 threadExecutionWidth];
    v34 = v36;
    [v5 dispatchThreads:&v35 threadsPerThreadgroup:&v33];
  }

  [v5 memoryBarrierWithScope:1];
  if (v7)
  {
    [v5 setComputePipelineState:{-[MTLToolsObject baseObject](v4->_currentPipeline, "baseObject")}];
    [(MTLGPUDebugComputeCommandEncoder *)v4 setComputePipelineStateBuffers:v4->_currentPipeline];
  }

  for (i = 0; i != 31; ++i)
  {
    type = v4->_computeEncoderBoundBuffers[0].type;
    resource = v4->_computeEncoderBoundBuffers[0].resource;
    if (type == 115)
    {
      [v5 setVisibleFunctionTable:resource atBufferIndex:i];
    }

    else if (type == 116)
    {
      [v5 setIntersectionFunctionTable:resource atBufferIndex:i];
    }

    else
    {
      [v5 setBuffer:resource offset:v4->_computeEncoderBoundBuffers[0].offset attributeStride:v4->_computeEncoderBoundBuffers[0].stride atIndex:i];
    }

    v4 = (v4 + 32);
  }
}

MTLDevice *RestoreInternalState(MTLGPUDebugComputeCommandEncoder *a1)
{
  result = [(MTLToolsObject *)a1 device];
  if ((*(result + 288) & 2) != 0)
  {
    result = [(MTLGPUDebugComputeCommandEncoder *)a1 setBufferUsageTable:a1->_bufferUsageTable textureUsageTable:a1->_textureUsageTable textureTypeTable:a1->_textureTypeTable];
  }

  if (a1->_currentPipeline)
  {
    a1->_currentPipeline = 0;
    result = [(MTLGPUDebugComputeCommandEncoder *)a1 setComputePipelineState:?];
    a1->_handles.needsFlush = 1;
    a1->_threadgroup.needsFlush = 1;
  }

  return result;
}

id MTLFunctionHandleToToolsFunctionHandle(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *([a2 device] + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __MTLFunctionHandleToToolsFunctionHandle_block_invoke;
  v8[3] = &unk_2787B4A20;
  v8[4] = a1;
  v8[5] = a3;
  v8[6] = a2;
  return [v6 getCachedObjectForKey:a1 onMiss:v8];
}

MTLToolsFunctionHandle *__MTLFunctionHandleToToolsFunctionHandle_block_invoke(void *a1)
{
  v2 = [MTLToolsFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 function:v5];
}

id MTLFunctionHandleToToolsFunctionHandleWithDevice(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __MTLFunctionHandleToToolsFunctionHandleWithDevice_block_invoke;
  v6[3] = &unk_2787B49F8;
  v6[4] = a1;
  v6[5] = a3;
  return [v4 getCachedObjectForKey:a1 onMiss:v6];
}

MTLToolsFunctionHandle *__MTLFunctionHandleToToolsFunctionHandleWithDevice_block_invoke(uint64_t a1)
{
  v2 = [MTLToolsFunctionHandle alloc];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [(MTLToolsObject *)v2 initWithBaseObject:v3 parent:v4];
}

id MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *([a2 device] + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction_block_invoke;
  v8[3] = &unk_2787B4A20;
  v8[4] = a1;
  v8[5] = a3;
  v8[6] = a2;
  return [v6 getCachedObjectForKey:a1 onMiss:v8];
}

MTLToolsFunctionHandle *__MTLFunctionHandleToToolsFunctionHandleWithBinaryFunction_block_invoke(void *a1)
{
  v2 = [MTLToolsFunctionHandle alloc];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];

  return [(MTLToolsFunctionHandle *)v2 initWithBaseObject:v3 parent:v4 binaryFunction:v5];
}

id getIndirectConstant(MTLDataType a1)
{
  v1 = objc_alloc(MEMORY[0x277CD6E70]);
  Size = MTLDataTypeGetSize();
  v3 = [v1 initWithName:&stru_2841C04D0 type:4 access:1 isActive:1 locationIndex:0 dataType:30 pixelFormat:0 aluType:0 dataSize:Size alignment:MTLDataTypeGetAlignment()];

  return v3;
}

id getStructMember(NSString *a1, uint64_t a2, MTLDataType a3, uint64_t a4, objc_object *a5)
{
  v5 = [objc_alloc(MEMORY[0x277CD7020]) initWithName:a1 offset:a2 dataType:a3 pixelFormat:0 aluType:0 indirectArgumentIndex:a4 render_target:0 raster_order_group:0 details:a5];

  return v5;
}

void sub_22E202DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<GPUDebugArgumentEncoderLayout>::reset[abi:ne200100](va, 0);
  std::mutex::unlock((v5 + v6));
  _Unwind_Resume(a1);
}

void GPUDebugArgumentEncoderLayout::GPUDebugArgumentEncoderLayout(GPUDebugArgumentEncoderLayout *this, MTLStructType *a2, MTLGPUDebugDevice *a3)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  v5 = [(MTLToolsObject *)a3 baseObject];
  v6 = objc_autoreleasePoolPush();
  v7 = [MTLGPUDebugFunction internalStructTypeFromUserStructType:a2];
  v8 = [v5 newIndirectArgumentBufferLayoutWithStructType:v7];
  *this = v8;
  [v8 setStructType:v7 withDevice:v5];
  objc_autoreleasePoolPop(v6);
  MTLEnumerateIndirectResources();
}

uint64_t *GPUDebugArgumentEncoderLayout::sublayout(GPUDebugArgumentEncoderLayout *this, unsigned int a2)
{
  v3 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::find<unsigned int>(this + 1, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

id *std::unique_ptr<GPUDebugArgumentEncoderLayout>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    GPUDebugArgumentEncoderLayout::~GPUDebugArgumentEncoderLayout(result);

    JUMPOUT(0x2318E4940);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>>>::__emplace_unique_key_args<unsigned int,unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>(void *a1, unsigned int *a2, _DWORD *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22E203444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<GPUDebugArgumentEncoderLayout>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<GPUDebugArgumentEncoderLayout>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        GPUDebugArgumentEncoderLayout::~GPUDebugArgumentEncoderLayout(v4);
        MEMORY[0x2318E4940]();
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void emitRenderTargetDistribution(void *a1, uint64_t a2)
{
  v188 = *MEMORY[0x277D85DE8];
  v3 = a1[17];
  v4 = *(v3 + 16);
  if (v4)
  {
    if (*MEMORY[0x277CD7168])
    {
      if (*MEMORY[0x277CD7168] != 1)
      {
        goto LABEL_10;
      }

      printf("\n\nRenderAttachmentCounts, minAttachments=%u, maxAttachments=%u, avgAttachments=%f, totalAttachments=%llu, countAttachments=%u", *v3, *(v3 + 4), (*(v3 + 8) / v4), *(v3 + 8), v4);
    }

    v5 = [a1 telemetryLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[17];
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[4];
      v10 = *(v6 + 1);
      if (v9)
      {
        v11 = (v10 / v9);
      }

      else
      {
        v11 = 0.0;
      }

      *buf = 67110144;
      *v110 = v8;
      *&v110[4] = 1024;
      *&v110[6] = v7;
      *v111 = 2048;
      *&v111[2] = v11;
      *v112 = 2048;
      *&v112[2] = v10;
      LOWORD(v113) = 1024;
      *(&v113 + 2) = v9;
      _os_log_impl(&dword_22E0FF000, v5, OS_LOG_TYPE_DEFAULT, "RenderAttachmentCounts, minAttachments=%u, maxAttachments=%u, avgAttachments=%f, totalAttachments=%llu, countAttachments=%u", buf, 0x28u);
    }
  }

LABEL_10:
  v12 = *(a2 + 16);
  if (!v12)
  {
    return;
  }

  do
  {
    Name = MTLPixelFormatGetName();
    v13 = 0;
    v79 = v12;
    v80 = v12 + 3;
    v82 = v12 + 28515;
    v81 = v12 + 25347;
    do
    {
      v14 = MTLTextureType1D;
      v15 = "stencil";
      if (v13 == 8)
      {
        v15 = "depth";
      }

      v104 = v15;
      do
      {
        v16 = 0;
        v85 = &v81[396 * v14];
        v84 = &v80[3168 * v13 + 396 * v14];
        v83 = &v82[792 * v14];
        v105 = v14;
        do
        {
          v17 = 0;
          v87 = v84 + 1056 * v16;
          v88 = &v85[132 * v16];
          v86 = &v83[264 * v16];
          v106 = v16;
          do
          {
            v18 = 0;
            v19 = &v88[22 * v17];
            v90 = v87 + 176 * v17;
            v20 = 1;
            v89 = &v86[44 * v17];
            v108 = v17;
            v107 = v19;
            do
            {
              v21 = v20;
              if (v13 != 9 && (v20 & 1) == 0)
              {
                break;
              }

              v22 = v19;
              if (v13 != 8)
              {
                if (v13 == 9)
                {
                  v22 = &v89[22 * v18];
                }

                else
                {
                  v22 = v90;
                }
              }

              if (!*v22)
              {
                goto LABEL_76;
              }

              if (!*MEMORY[0x277CD7168])
              {
                goto LABEL_51;
              }

              if (*MEMORY[0x277CD7168] == 1)
              {
                v100 = _MTLTelemetryStringifyTextureType(v14);
                v23 = v104;
                if (v13 <= 7)
                {
                  v23 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"color%lu", v13), "UTF8String"];
                }

                v98 = off_2787B5088[v16];
                v24 = "invalid";
                if (v17 <= 4)
                {
                  v24 = off_2787B50A0[v17];
                }

                v25 = "DepthResolvedSample";
                if (v21)
                {
                  v25 = "Sample0";
                }

                if (v13 != 9)
                {
                  v25 = "None";
                }

                v26 = *(v22 + 24);
                v27 = *(v22 + 16);
                v28 = 0.0;
                v29 = 0.0;
                if (v26)
                {
                  v29 = (v27 / v26);
                }

                v30 = *(v22 + 48);
                v31 = *(v22 + 40);
                if (v30)
                {
                  v28 = (v31 / v30);
                }

                v32 = *(v22 + 72);
                v33 = 0.0;
                v34 = 0.0;
                v35 = *(v22 + 64);
                if (v32)
                {
                  v34 = (v35 / v32);
                }

                v36 = *(v22 + 96);
                v37 = *(v22 + 88);
                if (v36)
                {
                  v33 = (v37 / v36);
                }

                v38 = *(v22 + 120);
                v39 = 0.0;
                v40 = 0.0;
                v41 = *(v22 + 112);
                if (v38)
                {
                  v40 = (v41 / v38);
                }

                v42 = *(v22 + 144);
                v43 = *(v22 + 136);
                if (v42)
                {
                  v39 = (v43 / v42);
                }

                v44 = *(v22 + 168);
                if (v44)
                {
                  v45 = (*(v22 + 160) / v44);
                }

                else
                {
                  v45 = 0.0;
                }

                printf("\n\nRenderTarget, format=%s, type=%s, index=%s, loadAction=%s, storeAction=%s, multisampleStencilResolveFilter=%s, minWidth=%u, maxWidth=%u, avgWidth=%f, totalWidth=%llu, countWidth=%u, minHeight=%u, maxHeight=%u, avgHeight=%f, totalHeight=%llu, countHeight=%u, minDepth=%u, maxDepth=%u, avgDepth=%f, totalDepth=%llu, countDepth=%u, minArrayLength=%u, maxArrayLength=%u, avgArrayLength=%f, totalArrayLength=%llu, countArrayLength=%u, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u, minSlice=%u, maxSlice=%u, avgSlice=%f, totalSlice=%llu, countSlice=%u, minLevel=%u, maxLevel=%u, avgLevel=%f, totalLevel=%llu, countLevel=%u", Name, v100, v23, v98, v24, v25, *(v22 + 8), *(v22 + 12), v29, v27, v26, *(v22 + 32), *(v22 + 36), v28, v31, v30, *(v22 + 56), *(v22 + 60), v34, v35, v32, *(v22 + 80), *(v22 + 84), v33, v37, v36, *(v22 + 104), *(v22 + 108), v40, v41, v38, *(v22 + 128), *(v22 + 132), v39, v43, v42, *(v22 + 152), *(v22 + 156), v45, *(v22 + 160), v44);
                v14 = v105;
                v16 = v106;
                v17 = v108;
                v19 = v107;
LABEL_51:
                v46 = [a1 telemetryLog];
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  v101 = _MTLTelemetryStringifyTextureType(v14);
                  v47 = v104;
                  if (v13 <= 7)
                  {
                    v47 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"color%lu", v13), "UTF8String"];
                  }

                  v99 = off_2787B5088[v16];
                  v48 = "invalid";
                  if (v17 <= 4)
                  {
                    v48 = off_2787B50A0[v17];
                  }

                  v49 = "DepthResolvedSample";
                  if (v21)
                  {
                    v49 = "Sample0";
                  }

                  if (v13 != 9)
                  {
                    v49 = "None";
                  }

                  v95 = v49;
                  v96 = *(v22 + 8);
                  v97 = *(v22 + 12);
                  v50 = *(v22 + 24);
                  v51 = *(v22 + 16);
                  v52 = 0.0;
                  v53 = 0.0;
                  if (v50)
                  {
                    v53 = (v51 / v50);
                  }

                  v93 = *(v22 + 32);
                  v94 = *(v22 + 36);
                  v54 = *(v22 + 48);
                  v55 = *(v22 + 40);
                  if (v54)
                  {
                    v52 = (v55 / v54);
                  }

                  v91 = *(v22 + 56);
                  v92 = *(v22 + 60);
                  v56 = *(v22 + 72);
                  v57 = 0.0;
                  v58 = 0.0;
                  v59 = *(v22 + 64);
                  if (v56)
                  {
                    v58 = (v59 / v56);
                  }

                  v61 = *(v22 + 80);
                  v60 = *(v22 + 84);
                  v62 = *(v22 + 96);
                  v63 = *(v22 + 88);
                  if (v62)
                  {
                    v57 = (v63 / v62);
                  }

                  v65 = *(v22 + 104);
                  v64 = *(v22 + 108);
                  v66 = *(v22 + 120);
                  v67 = 0.0;
                  v68 = 0.0;
                  v69 = *(v22 + 112);
                  if (v66)
                  {
                    v68 = (v69 / v66);
                  }

                  v71 = *(v22 + 128);
                  v70 = *(v22 + 132);
                  v72 = *(v22 + 144);
                  v73 = *(v22 + 136);
                  if (v72)
                  {
                    v67 = (v73 / v72);
                  }

                  v75 = *(v22 + 152);
                  v74 = *(v22 + 156);
                  v76 = *(v22 + 168);
                  v77 = *(v22 + 160);
                  if (v76)
                  {
                    v78 = (v77 / v76);
                  }

                  else
                  {
                    v78 = 0.0;
                  }

                  v189 = v48;
                  *v111 = v101;
                  *v112 = v47;
                  *buf = 136325378;
                  *v110 = Name;
                  *&v110[8] = 2080;
                  *&v111[8] = 2080;
                  *&v112[8] = 2080;
                  v113 = v99;
                  v114 = 2080;
                  v115 = v48;
                  v116 = 2080;
                  v117 = v95;
                  v118 = 1024;
                  v119 = v96;
                  v120 = 1024;
                  v121 = v97;
                  v122 = 2048;
                  v123 = v53;
                  v124 = 2048;
                  v125 = v51;
                  v126 = 1024;
                  v127 = v50;
                  v128 = 1024;
                  v129 = v93;
                  v130 = 1024;
                  v131 = v94;
                  v132 = 2048;
                  v133 = v52;
                  v134 = 2048;
                  v135 = v55;
                  v136 = 1024;
                  v137 = v54;
                  v138 = 1024;
                  v139 = v91;
                  v140 = 1024;
                  v141 = v92;
                  v142 = 2048;
                  v143 = v58;
                  v144 = 2048;
                  v145 = v59;
                  v146 = 1024;
                  v147 = v56;
                  v148 = 1024;
                  v149 = v61;
                  v150 = 1024;
                  v151 = v60;
                  v152 = 2048;
                  v153 = v57;
                  v154 = 2048;
                  v155 = v63;
                  v156 = 1024;
                  v157 = v62;
                  v158 = 1024;
                  v159 = v65;
                  v160 = 1024;
                  v161 = v64;
                  v162 = 2048;
                  v163 = v68;
                  v164 = 2048;
                  v165 = v69;
                  v166 = 1024;
                  v167 = v66;
                  v168 = 1024;
                  v169 = v71;
                  v170 = 1024;
                  v171 = v70;
                  v172 = 2048;
                  v173 = v67;
                  v174 = 2048;
                  v175 = v73;
                  v176 = 1024;
                  v177 = v72;
                  v178 = 1024;
                  v179 = v75;
                  v180 = 1024;
                  v181 = v74;
                  v182 = 2048;
                  v183 = v78;
                  v184 = 2048;
                  v185 = v77;
                  v186 = 1024;
                  v187 = v76;
                  _os_log_impl(&dword_22E0FF000, v46, OS_LOG_TYPE_DEFAULT, "RenderTarget, format=%s, type=%s, index=%s, loadAction=%s, storeAction=%s, multisampleStencilResolveFilter=%s, minWidth=%u, maxWidth=%u, avgWidth=%f, totalWidth=%llu, countWidth=%u, minHeight=%u, maxHeight=%u, avgHeight=%f, totalHeight=%llu, countHeight=%u, minDepth=%u, maxDepth=%u, avgDepth=%f, totalDepth=%llu, countDepth=%u, minArrayLength=%u, maxArrayLength=%u, avgArrayLength=%f, totalArrayLength=%llu, countArrayLength=%u, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u, minSlice=%u, maxSlice=%u, avgSlice=%f, totalSlice=%llu, countSlice=%u, minLevel=%u, maxLevel=%u, avgLevel=%f, totalLevel=%llu, countLevel=%u", buf, 0x148u);
                  v14 = v105;
                  v16 = v106;
                  v17 = v108;
                  v19 = v107;
                }
              }

LABEL_76:
              v20 = 0;
              v18 = 1;
            }

            while ((v21 & 1) != 0);
            ++v17;
          }

          while (v17 != 6);
          ++v16;
        }

        while (v16 != 3);
        ++v14;
      }

      while (v14 != MTLTextureType2DMultisampleArray);
      ++v13;
    }

    while (v13 != 10);
    v12 = *v79;
  }

  while (*v79);
}

void emitRenderPassAttributes(MTLTelemetryDevice *a1, MTLTelemetryStatisticUIRec *a2)
{
  v215 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      return;
    }

    count = a2->count;
    total = a2->total;
    v6 = 0.0;
    v7 = 0.0;
    if (count)
    {
      v7 = (total / count);
    }

    renderTargetArrayLengthDistribution = a1->renderTargetArrayLengthDistribution;
    v9 = renderTargetArrayLengthDistribution->count;
    v10 = renderTargetArrayLengthDistribution->total;
    if (v9)
    {
      v6 = (v10 / v9);
    }

    viewportDistribution = a1->viewportDistribution;
    v12 = viewportDistribution->var0.count;
    v13 = viewportDistribution->var0.total;
    v14 = 0.0;
    v15 = 0.0;
    if (v12)
    {
      v15 = (v13 / v12);
    }

    var3 = viewportDistribution->var1.var3;
    var2 = viewportDistribution->var1.var2;
    if (var3)
    {
      v14 = (var2 / var3);
    }

    v18 = viewportDistribution->var2.var3;
    v19 = viewportDistribution->var2.var2;
    v20 = 0.0;
    v21 = 0.0;
    if (v18)
    {
      v21 = (v19 / v18);
    }

    v22 = viewportDistribution->var3.var3;
    v23 = viewportDistribution->var3.var2;
    if (v22)
    {
      v20 = (v23 / v22);
    }

    v24 = viewportDistribution->var4.var3;
    v25 = viewportDistribution->var4.var2;
    v26 = 0.0;
    v27 = 0.0;
    if (v24)
    {
      v27 = (v25 / v24);
    }

    scissorRectDistribution = a1->scissorRectDistribution;
    v29 = scissorRectDistribution->var0.count;
    v30 = scissorRectDistribution->var0.total;
    if (v29)
    {
      v26 = (v30 / v29);
    }

    var0 = viewportDistribution->var3.var0;
    var1 = viewportDistribution->var3.var1;
    v33 = viewportDistribution->var4.var0;
    v34 = viewportDistribution->var4.var1;
    v35 = scissorRectDistribution->var1.var3;
    v36 = 0.0;
    v37 = 0.0;
    v38 = scissorRectDistribution->var1.var2;
    if (v35)
    {
      v37 = (v38 / v35);
    }

    v39 = viewportDistribution->var1.var0;
    min = renderTargetArrayLengthDistribution->min;
    max = renderTargetArrayLengthDistribution->max;
    v42 = viewportDistribution->var1.var1;
    v43 = var2;
    v44 = viewportDistribution->var2.var0;
    v45 = viewportDistribution->var2.var1;
    v47 = viewportDistribution->var0.min;
    v46 = viewportDistribution->var0.max;
    v48 = v19;
    v49 = var0;
    v50 = var1;
    v51 = v23;
    v52 = v33;
    v53 = v34;
    v54 = v25;
    v55 = v38;
    v56 = scissorRectDistribution->var2.var3;
    v57 = scissorRectDistribution->var2.var2;
    if (v56)
    {
      v36 = (v57 / v56);
    }

    printf("\n\nRenderStateAttributes, minDepthClipModeClamp=%u, maxDepthClipModeClamp=%u, avgDepthClipModeClamp=%f, totalDepthClipModeClamp=%llu, countDepthClipModeClamp=%u, minRenderTargetArrayLength=%u, maxRenderTargetArrayLength=%u, avgRenderTargetArrayLength=%f, totalRenderTargetArrayLength=%llu, countRenderTargetArrayLength=%u, minViewportCount=%u, maxViewportCount=%u, avgViewportCount=%f, totalViewportCount=%llu, countViewportCount=%u, minViewportWidth=%.2f, maxViewportWidth=%.2f, avgViewportWidth=%f, totalViewportWidth=%.2f, countViewportWidth=%u, minViewportHeight=%.2f, maxViewportHeight=%.2f, avgViewportHeight=%f, totalViewportHeight=%.2f, countViewportHeight=%u, minViewportZNear=%.2f, maxViewportZNear=%.2f, avgViewportZNear=%f, totalViewportZNear=%.2f, countViewportZNear=%u, minViewportZFar=%.2f, maxViewportZFar=%.2f, avgViewportZFar=%f, totalViewportZFar=%.2f, countViewportZFar=%u, minScissorRectCount=%u, maxScissorRectCount=%u, avgScissorRectCount=%f, totalScissorRectCount=%llu, countScissorRectCount=%u, minScissorRectWidth=%.2f, maxScissorRectWidth=%.2f, avgScissorRectWidth=%f, totalScissorRectWidth=%.2f, countScissorRectWidth=%u, minScissorRectHeight=%.2f, maxScissorRectHeight=%.2f, avgScissorRectHeight=%f, totalScissorRectHeight=%.2f, countScissorRectHeight=%u", a2->min, a2->max, v7, total, count, min, max, v6, v10, v9, v47, v46, v15, v13, v12, v39, v42, v14, v43, var3, v44, v45, v21, v48, v18, v49, v50, v20, v51, v22, v52, v53, v27, v54, v24, scissorRectDistribution->var0.min, scissorRectDistribution->var0.max, v26, v30, v29, scissorRectDistribution->var1.var0, scissorRectDistribution->var1.var1, v37, v55, v35, scissorRectDistribution->var2.var0, scissorRectDistribution->var2.var1, v36, v57, scissorRectDistribution->var2.var3);
  }

  v58 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = a2->count;
    v60 = a2->total;
    v61 = 0.0;
    v62 = 0.0;
    if (v59)
    {
      v62 = (v60 / v59);
    }

    v63 = a1->renderTargetArrayLengthDistribution;
    v64 = v63->count;
    v65 = v63->total;
    if (v64)
    {
      v61 = (v65 / v64);
    }

    v66 = a1->viewportDistribution;
    v67 = v66->var0.count;
    v68 = v66->var0.total;
    v69 = 0.0;
    v70 = 0.0;
    if (v67)
    {
      v70 = (v68 / v67);
    }

    v71 = v66->var1.var3;
    v72 = v66->var1.var2;
    if (v71)
    {
      v69 = (v72 / v71);
    }

    v73 = v66->var2.var3;
    v74 = v66->var2.var2;
    v75 = 0.0;
    v76 = 0.0;
    if (v73)
    {
      v76 = (v74 / v73);
    }

    v77 = v66->var3.var3;
    v78 = v66->var3.var2;
    if (v77)
    {
      v75 = (v78 / v77);
    }

    v79 = v66->var4.var3;
    v80 = v66->var4.var2;
    v81 = 0.0;
    v82 = 0.0;
    if (v79)
    {
      v82 = (v80 / v79);
    }

    v83 = a1->scissorRectDistribution;
    v84 = v83->var0.count;
    v85 = v83->var0.total;
    if (v84)
    {
      v81 = (v85 / v84);
    }

    v86 = v83->var1.var3;
    v87 = 0.0;
    v88 = 0.0;
    v89 = v83->var1.var2;
    if (v86)
    {
      v88 = (v89 / v86);
    }

    v91 = a2->min;
    v90 = a2->max;
    v92 = v66->var1.var0;
    v94 = v63->min;
    v93 = v63->max;
    v95 = v66->var1.var1;
    v96 = v66->var2.var0;
    v97 = v66->var2.var1;
    v99 = v66->var0.min;
    v98 = v66->var0.max;
    v100 = v74;
    v101 = v66->var3.var0;
    v102 = v66->var3.var1;
    v103 = v78;
    v104 = v66->var4.var0;
    v105 = v66->var4.var1;
    v106 = v80;
    v108 = v83->var0.min;
    v107 = v83->var0.max;
    v109 = v83->var1.var0;
    v110 = v83->var1.var1;
    v111 = v83->var2.var0;
    v112 = v83->var2.var3;
    v113 = v83->var2.var1;
    v114 = v83->var2.var2;
    if (v112)
    {
      v87 = (v114 / v112);
    }

    *buf = 67121664;
    v116 = v91;
    v117 = 1024;
    v118 = v90;
    v119 = 2048;
    v120 = v62;
    v121 = 2048;
    v122 = v60;
    v123 = 1024;
    v124 = v59;
    v125 = 1024;
    v126 = v94;
    v127 = 1024;
    v128 = v93;
    v129 = 2048;
    v130 = v61;
    v131 = 2048;
    v132 = v65;
    v133 = 1024;
    v134 = v64;
    v135 = 1024;
    v136 = v99;
    v137 = 1024;
    v138 = v98;
    v139 = 2048;
    v140 = v70;
    v141 = 2048;
    v142 = v68;
    v143 = 1024;
    v144 = v67;
    v145 = 2048;
    v146 = v92;
    v147 = 2048;
    v148 = v95;
    v149 = 2048;
    v150 = v69;
    v151 = 2048;
    v152 = v72;
    v153 = 1024;
    v154 = v71;
    v155 = 2048;
    v156 = v96;
    v157 = 2048;
    v158 = v97;
    v159 = 2048;
    v160 = v76;
    v161 = 2048;
    v162 = v100;
    v163 = 1024;
    v164 = v73;
    v165 = 2048;
    v166 = v101;
    v167 = 2048;
    v168 = v102;
    v169 = 2048;
    v170 = v75;
    v171 = 2048;
    v172 = v103;
    v173 = 1024;
    v174 = v77;
    v175 = 2048;
    v176 = v104;
    v177 = 2048;
    v178 = v105;
    v179 = 2048;
    v180 = v82;
    v181 = 2048;
    v182 = v106;
    v183 = 1024;
    v184 = v79;
    v185 = 1024;
    v186 = v108;
    v187 = 1024;
    v188 = v107;
    v189 = 2048;
    v190 = v81;
    v191 = 2048;
    v192 = v85;
    v193 = 1024;
    v194 = v84;
    v195 = 2048;
    v196 = v109;
    v197 = 2048;
    v198 = v110;
    v199 = 2048;
    v200 = v88;
    v201 = 2048;
    v202 = v89;
    v203 = 1024;
    v204 = v86;
    v205 = 2048;
    v206 = v111;
    v207 = 2048;
    v208 = v113;
    v209 = 2048;
    v210 = v87;
    v211 = 2048;
    v212 = v114;
    v213 = 1024;
    v214 = v112;
    _os_log_impl(&dword_22E0FF000, v58, OS_LOG_TYPE_DEFAULT, "RenderStateAttributes, minDepthClipModeClamp=%u, maxDepthClipModeClamp=%u, avgDepthClipModeClamp=%f, totalDepthClipModeClamp=%llu, countDepthClipModeClamp=%u, minRenderTargetArrayLength=%u, maxRenderTargetArrayLength=%u, avgRenderTargetArrayLength=%f, totalRenderTargetArrayLength=%llu, countRenderTargetArrayLength=%u, minViewportCount=%u, maxViewportCount=%u, avgViewportCount=%f, totalViewportCount=%llu, countViewportCount=%u, minViewportWidth=%.2f, maxViewportWidth=%.2f, avgViewportWidth=%f, totalViewportWidth=%.2f, countViewportWidth=%u, minViewportHeight=%.2f, maxViewportHeight=%.2f, avgViewportHeight=%f, totalViewportHeight=%.2f, countViewportHeight=%u, minViewportZNear=%.2f, maxViewportZNear=%.2f, avgViewportZNear=%f, totalViewportZNear=%.2f, countViewportZNear=%u, minViewportZFar=%.2f, maxViewportZFar=%.2f, avgViewportZFar=%f, totalViewportZFar=%.2f, countViewportZFar=%u, minScissorRectCount=%u, maxScissorRectCount=%u, avgScissorRectCount=%f, totalScissorRectCount=%llu, countScissorRectCount=%u, minScissorRectWidth=%.2f, maxScissorRectWidth=%.2f, avgScissorRectWidth=%f, totalScissorRectWidth=%.2f, countScissorRectWidth=%u, minScissorRectHeight=%.2f, maxScissorRectHeight=%.2f, avgScissorRectHeight=%f, totalScissorRectHeight=%.2f, countScissorRectHeight=%u", buf, 0x1AEu);
  }
}

void emitDrawDistribution(MTLTelemetryDevice *a1, MTLTelemetryDrawDistributionRec *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (v4 != 1)
    {
      goto LABEL_13;
    }

    renderEncoderDrawCallDistribution = a1->renderEncoderDrawCallDistribution;
    min = renderEncoderDrawCallDistribution->min;
    max = renderEncoderDrawCallDistribution->max;
    count = renderEncoderDrawCallDistribution->count;
    total = renderEncoderDrawCallDistribution->total;
    if (count)
    {
      v10 = (total / count);
    }

    else
    {
      v10 = 0.0;
    }

    printf("\n\nDrawsPerRenderEncoder, minDraws=%u, maxDraws=%u, avgDraws=%f, totalDraws=%llu, countDraws=%u", min, max, v10, total, count);
  }

  v11 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a1->renderEncoderDrawCallDistribution;
    v14 = v12->min;
    v13 = v12->max;
    v15 = v12->count;
    v16 = v12->total;
    if (v15)
    {
      v17 = (v16 / v15);
    }

    else
    {
      v17 = 0.0;
    }

    *buf = 67110144;
    *v74 = v14;
    *&v74[4] = 1024;
    *&v74[6] = v13;
    *v75 = 2048;
    *&v75[2] = v17;
    *v76 = 2048;
    *&v76[2] = v16;
    *v77 = 1024;
    *&v77[2] = v15;
    _os_log_impl(&dword_22E0FF000, v11, OS_LOG_TYPE_DEFAULT, "DrawsPerRenderEncoder, minDraws=%u, maxDraws=%u, avgDraws=%f, totalDraws=%llu, countDraws=%u", buf, 0x28u);
  }

  v4 = *MEMORY[0x277CD7168];
LABEL_13:
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_24;
    }

    commandBufferDrawCallDistribution = a1->commandBufferDrawCallDistribution;
    v19 = commandBufferDrawCallDistribution->min;
    v20 = commandBufferDrawCallDistribution->max;
    v21 = commandBufferDrawCallDistribution->count;
    v22 = commandBufferDrawCallDistribution->total;
    if (v21)
    {
      v23 = (v22 / v21);
    }

    else
    {
      v23 = 0.0;
    }

    printf("\n\nDrawsPerCommandBuffer, minDraws=%u, maxDraws=%u, avgDraws=%f, totalDraws=%llu, countDraws=%u", v19, v20, v23, v22, v21);
  }

  v24 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1->commandBufferDrawCallDistribution;
    v27 = v25->min;
    v26 = v25->max;
    v28 = v25->count;
    v29 = v25->total;
    if (v28)
    {
      v30 = (v29 / v28);
    }

    else
    {
      v30 = 0.0;
    }

    *buf = 67110144;
    *v74 = v27;
    *&v74[4] = 1024;
    *&v74[6] = v26;
    *v75 = 2048;
    *&v75[2] = v30;
    *v76 = 2048;
    *&v76[2] = v29;
    *v77 = 1024;
    *&v77[2] = v28;
    _os_log_impl(&dword_22E0FF000, v24, OS_LOG_TYPE_DEFAULT, "DrawsPerCommandBuffer, minDraws=%u, maxDraws=%u, avgDraws=%f, totalDraws=%llu, countDraws=%u", buf, 0x28u);
  }

LABEL_24:
  commandBufferMemoryBarrierDistribution = a1->commandBufferMemoryBarrierDistribution;
  v32 = commandBufferMemoryBarrierDistribution->count;
  if (v32)
  {
    if (!*MEMORY[0x277CD7168])
    {
      goto LABEL_28;
    }

    if (*MEMORY[0x277CD7168] == 1)
    {
      printf("\n\nMemoryBarriersPerCommandBuffer, minMemoryBarriers=%u, maxMemoryBarriers=%u, avgMemoryBarriers=%f, totalMemoryBarriers=%llu, countMemoryBarriers=%u", commandBufferMemoryBarrierDistribution->min, commandBufferMemoryBarrierDistribution->max, (commandBufferMemoryBarrierDistribution->total / v32), commandBufferMemoryBarrierDistribution->total, v32);
LABEL_28:
      v33 = [(MTLTelemetryDevice *)a1 telemetryLog];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = a1->commandBufferMemoryBarrierDistribution;
        v36 = v34->min;
        v35 = v34->max;
        v37 = v34->count;
        v38 = v34->total;
        if (v37)
        {
          v39 = (v38 / v37);
        }

        else
        {
          v39 = 0.0;
        }

        *buf = 67110144;
        *v74 = v36;
        *&v74[4] = 1024;
        *&v74[6] = v35;
        *v75 = 2048;
        *&v75[2] = v39;
        *v76 = 2048;
        *&v76[2] = v38;
        *v77 = 1024;
        *&v77[2] = v37;
        _os_log_impl(&dword_22E0FF000, v33, OS_LOG_TYPE_DEFAULT, "MemoryBarriersPerCommandBuffer, minMemoryBarriers=%u, maxMemoryBarriers=%u, avgMemoryBarriers=%f, totalMemoryBarriers=%llu, countMemoryBarriers=%u", buf, 0x28u);
      }
    }
  }

  for (i = 0; i != 5; ++i)
  {
    v41 = 0;
    v72 = a2;
    do
    {
      v42 = 0;
      v43 = off_2787B5108;
      while (1)
      {
        var0 = a2->var0[0][0][v42].var0;
        if (!var0)
        {
          goto LABEL_51;
        }

        v45 = *MEMORY[0x277CD7168];
        if (v42 == 2)
        {
          break;
        }

        if (!v45)
        {
          goto LABEL_45;
        }

        if (v45 == 1)
        {
          v46 = a2 + v42 * 56;
          v47 = a2->var0[0][0][v42].var1.count;
          v48 = a2->var0[0][0][v42].var1.total;
          v49 = 0.0;
          v50 = 0.0;
          if (v47)
          {
            v50 = (v48 / v47);
          }

          v51 = *(v46 + 12);
          v52 = *(v46 + 5);
          if (v51)
          {
            v49 = (v52 / v51);
          }

          printf("\n\n%s, primitive=%s, indexType=%s, minVertices=%u, maxVertices=%u, avgVertices=%f, totalVertices=%llu, countVertices=%u, minInstances=%u, maxInstances=%u, avgInstances=%f, totalInstances=%llu, countInstances=%u", *v43, off_2787B5120[i], off_2787B5148[v41], *(v46 + 2), *(v46 + 3), v50, v48, v47, *(v46 + 8), *(v46 + 9), v49, v52, v51);
LABEL_45:
          v53 = [(MTLTelemetryDevice *)a1 telemetryLog];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = a2 + v42 * 56;
            v55 = a2->var0[0][0][v42].var1.count;
            v56 = a2->var0[0][0][v42].var1.total;
            v57 = 0.0;
            v58 = 0.0;
            if (v55)
            {
              v58 = (v56 / v55);
            }

            v59 = *(v54 + 12);
            v60 = *(v54 + 5);
            if (v59)
            {
              v57 = (v60 / v59);
            }

            v61 = *v43;
            v62 = off_2787B5120[i];
            v63 = off_2787B5148[v41];
            v64 = *(v54 + 2);
            v65 = *(v54 + 3);
            v66 = *(v54 + 8);
            v67 = *(v54 + 9);
            *buf = 136318210;
            *v74 = v61;
            *&v74[8] = 2080;
            *v75 = v62;
            *&v75[8] = 2080;
            *v76 = v63;
            *&v76[8] = 1024;
            *v77 = v64;
            *&v77[4] = 1024;
            v78 = v65;
            v79 = 2048;
            v80 = v58;
            v81 = 2048;
            v82 = v56;
            v83 = 1024;
            v84 = v55;
            v85 = 1024;
            v86 = v66;
            v87 = 1024;
            v88 = v67;
            v89 = 2048;
            v90 = v57;
            v91 = 2048;
            v92 = v60;
            v93 = 1024;
            v94 = v59;
            _os_log_impl(&dword_22E0FF000, v53, OS_LOG_TYPE_DEFAULT, "%s, primitive=%s, indexType=%s, minVertices=%u, maxVertices=%u, avgVertices=%f, totalVertices=%llu, countVertices=%u, minInstances=%u, maxInstances=%u, avgInstances=%f, totalInstances=%llu, countInstances=%u", buf, 0x6Cu);
          }
        }

LABEL_51:
        ++v43;
        if (++v42 == 3)
        {
          goto LABEL_52;
        }
      }

      if (v45)
      {
        if (v45 == 1)
        {
          printf("\n\n%s, primitive=%s, indexType=%s, count=%u", "DrawIndirect", off_2787B5120[i], off_2787B5148[v41], var0);
          goto LABEL_57;
        }
      }

      else
      {
LABEL_57:
        v68 = [(MTLTelemetryDevice *)a1 telemetryLog];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          v69 = off_2787B5120[i];
          v70 = off_2787B5148[v41];
          v71 = a2->var0[0][0][2].var0;
          *buf = 136315906;
          *v74 = "DrawIndirect";
          *&v74[8] = 2080;
          *v75 = v69;
          *&v75[8] = 2080;
          *v76 = v70;
          *&v76[8] = 1024;
          *v77 = v71;
          _os_log_impl(&dword_22E0FF000, v68, OS_LOG_TYPE_DEFAULT, "%s, primitive=%s, indexType=%s, count=%u", buf, 0x26u);
        }
      }

LABEL_52:
      ++v41;
      a2 = (a2 + 168);
    }

    while (v41 != 3);
    a2 = v72->var0[1];
  }
}

void emitAnisoClippedCounts(MTLTelemetryDevice *a1, MTLTelemetryAnisoClippedCountsRec *a2)
{
  v3 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CD7168];
  v5 = &a2->var0[1];
  do
  {
    if (*v4)
    {
      if (*v4 != 1)
      {
        goto LABEL_7;
      }

      printf("\n\nAnisoClippedUsage, type=%s, count=%u", off_2787B5160[v3], v5[v3]);
    }

    v6 = [(MTLTelemetryDevice *)a1 telemetryLog];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = off_2787B5178[v3 + 1];
      v8 = v5[v3];
      *buf = 136315394;
      v10 = v7;
      v11 = 1024;
      v12 = v8;
      _os_log_impl(&dword_22E0FF000, v6, OS_LOG_TYPE_DEFAULT, "AnisoClippedUsage, type=%s, count=%u", buf, 0x12u);
    }

LABEL_7:
    ++v3;
  }

  while (v3 != 3);
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat&&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void emitEncoderDistribution(MTLTelemetryDevice *a1, MTLTelemetryEncoderDistributionRec *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      return;
    }

    count = a2->var0.count;
    total = a2->var0.total;
    v6 = 0.0;
    v7 = 0.0;
    if (count)
    {
      v7 = (total / count);
    }

    v8 = a2->var2.count;
    v9 = a2->var2.total;
    if (v8)
    {
      v6 = (v9 / v8);
    }

    v10 = a2->var1.count;
    v11 = a2->var1.total;
    v12 = 0.0;
    v13 = 0.0;
    if (v10)
    {
      v13 = (v11 / v10);
    }

    v14 = a2->var3.count;
    v15 = a2->var3.total;
    if (v14)
    {
      v12 = (v15 / v14);
    }

    v16 = a2->var4.count;
    v17 = a2->var4.total;
    if (v16)
    {
      v18 = (v17 / v16);
    }

    else
    {
      v18 = 0.0;
    }

    printf("\n\nCommandBuffer, minRenderEncoders=%u, maxRenderEncoders=%u, avgRenderEncoders=%f, totalRenderEncoders=%llu, countRenderEncoders=%u, minComputeEncoders=%u, maxComputeEncoders=%u, avgComputeEncoders=%f, totalComputeEncoders=%llu, countComputeEncoders=%u, minBlitEncoders=%u, maxBlitEncoders=%u, avgBlitEncoders=%f, totalBlitEncoders=%llu, countBlitEncoders=%u, minParallelEncoders=%u, maxParallelEncoders=%u, avgParallelEncoders=%f, totalParallelEncoders=%llu, countParallelEncoders=%u, minTotalEncoders=%u, maxTotalEncoders=%u, avgTotalEncoders=%f, totalTotalEncoders=%llu, countTotalEncoders=%u, maxTextureBindCount=%u", a2->var0.min, a2->var0.max, v7, total, count, a2->var2.min, a2->var2.max, v6, v9, v8, a2->var1.min, a2->var1.max, v13, v11, v10, a2->var3.min, a2->var3.max, v12, v15, v14, a2->var4.min, a2->var4.max, v18, v17, a2->var4.count, a1->textureBindCount->max);
  }

  v19 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = a2->var0.count;
    v21 = a2->var0.total;
    v22 = 0.0;
    v23 = 0.0;
    if (v20)
    {
      v23 = (v21 / v20);
    }

    v24 = a2->var2.count;
    v25 = a2->var2.total;
    if (v24)
    {
      v22 = (v25 / v24);
    }

    v26 = a2->var1.count;
    v27 = a2->var1.total;
    v28 = 0.0;
    v29 = 0.0;
    if (v26)
    {
      v29 = (v27 / v26);
    }

    v30 = a2->var3.count;
    v31 = a2->var3.total;
    if (v30)
    {
      v28 = (v31 / v30);
    }

    min = a2->var0.min;
    max = a2->var0.max;
    v35 = a2->var2.min;
    v34 = a2->var2.max;
    v37 = a2->var1.min;
    v36 = a2->var1.max;
    v39 = a2->var3.min;
    v38 = a2->var3.max;
    v41 = a2->var4.min;
    v40 = a2->var4.max;
    v42 = a2->var4.count;
    v43 = a2->var4.total;
    if (v42)
    {
      v44 = (v43 / v42);
    }

    else
    {
      v44 = 0.0;
    }

    v45 = a1->textureBindCount->max;
    *buf = 67115520;
    v47 = min;
    v48 = 1024;
    v49 = max;
    v50 = 2048;
    v51 = v23;
    v52 = 2048;
    v53 = v21;
    v54 = 1024;
    v55 = v20;
    v56 = 1024;
    v57 = v35;
    v58 = 1024;
    v59 = v34;
    v60 = 2048;
    v61 = v22;
    v62 = 2048;
    v63 = v25;
    v64 = 1024;
    v65 = v24;
    v66 = 1024;
    v67 = v37;
    v68 = 1024;
    v69 = v36;
    v70 = 2048;
    v71 = v29;
    v72 = 2048;
    v73 = v27;
    v74 = 1024;
    v75 = v26;
    v76 = 1024;
    v77 = v39;
    v78 = 1024;
    v79 = v38;
    v80 = 2048;
    v81 = v28;
    v82 = 2048;
    v83 = v31;
    v84 = 1024;
    v85 = v30;
    v86 = 1024;
    v87 = v41;
    v88 = 1024;
    v89 = v40;
    v90 = 2048;
    v91 = v44;
    v92 = 2048;
    v93 = v43;
    v94 = 1024;
    v95 = v42;
    v96 = 1024;
    v97 = v45;
    _os_log_impl(&dword_22E0FF000, v19, OS_LOG_TYPE_DEFAULT, "CommandBuffer, minRenderEncoders=%u, maxRenderEncoders=%u, avgRenderEncoders=%f, totalRenderEncoders=%llu, countRenderEncoders=%u, minComputeEncoders=%u, maxComputeEncoders=%u, avgComputeEncoders=%f, totalComputeEncoders=%llu, countComputeEncoders=%u, minBlitEncoders=%u, maxBlitEncoders=%u, avgBlitEncoders=%f, totalBlitEncoders=%llu, countBlitEncoders=%u, minParallelEncoders=%u, maxParallelEncoders=%u, avgParallelEncoders=%f, totalParallelEncoders=%llu, countParallelEncoders=%u, minTotalEncoders=%u, maxTotalEncoders=%u, avgTotalEncoders=%f, totalTotalEncoders=%llu, countTotalEncoders=%u, maxTextureBindCount=%u", buf, 0xC6u);
  }
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryRenderTargetDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

double validateMTLSamplerDescriptor(void *a1, void *a2)
{
  if ([a2 compareFunction])
  {
    MTLValidateFeatureSupport();
  }

  v21 = 0;
  memset(v20, 0, sizeof(v20));
  _MTLMessageContextBegin_();
  if (([a2 normalizedCoordinates] & 1) == 0)
  {
    if ([a2 mipFilter])
    {
      _MTLMessageContextPush_();
    }

    if ([a2 sAddressMode] && objc_msgSend(a2, "sAddressMode") != 4 && objc_msgSend(a2, "sAddressMode") != 5 && objc_msgSend(a2, "sAddressMode") != 6 || objc_msgSend(a2, "tAddressMode") && objc_msgSend(a2, "tAddressMode") != 4 && objc_msgSend(a2, "tAddressMode") != 5 && objc_msgSend(a2, "sAddressMode") != 6 || objc_msgSend(a2, "rAddressMode") && objc_msgSend(a2, "rAddressMode") != 4 && objc_msgSend(a2, "rAddressMode") != 5 && objc_msgSend(a2, "sAddressMode") != 6)
    {
      _MTLMessageContextPush_();
    }

    if ([a2 maxAnisotropy] != 1)
    {
      _MTLMessageContextPush_();
    }

    if ([a2 minFilter] && objc_msgSend(a2, "minFilter") != 1 || (v4 = objc_msgSend(a2, "minFilter"), v4 != objc_msgSend(a2, "magFilter")))
    {
      _MTLMessageContextPush_();
    }
  }

  if ([a2 minFilter] >= 3)
  {
    v11 = [a2 minFilter];
    _MTLMessageContextPush_();
  }

  if ([a2 magFilter] >= 3)
  {
    v12 = [a2 magFilter];
    _MTLMessageContextPush_();
  }

  if ([a2 mipFilter] >= 3)
  {
    v13 = [a2 mipFilter];
    _MTLMessageContextPush_();
  }

  if (![a2 maxAnisotropy] || objc_msgSend(a2, "maxAnisotropy") >= 0x11)
  {
    v19 = 16;
    v14 = [a2 maxAnisotropy];
    v18 = 1;
    _MTLMessageContextPush_();
  }

  v5 = [a2 sAddressMode];
  if (v5 >= 7)
  {
    v15 = [a2 sAddressMode];
    _MTLMessageContextPush_();
    LOBYTE(v6) = 0;
    LOBYTE(v7) = 0;
  }

  else
  {
    v6 = 0x60u >> v5;
    v7 = 0x10u >> v5;
  }

  v8 = [a2 tAddressMode];
  if (v8 >= 4)
  {
    if (v8 - 5 >= 2)
    {
      if (v8 == 4)
      {
        LOBYTE(v7) = 1;
      }

      else
      {
        v16 = [a2 tAddressMode];
        _MTLMessageContextPush_();
      }
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  v9 = [a2 rAddressMode];
  if (v9 < 4)
  {
    goto LABEL_46;
  }

  if (v9 - 5 >= 2)
  {
    if (v9 != 4)
    {
      v17 = [a2 rAddressMode];
      _MTLMessageContextPush_();
      if ((v6 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    LOBYTE(v7) = 1;
LABEL_46:
    if ((v6 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  LOBYTE(v6) = 1;
LABEL_47:
  if ((v7 & 1) != 0 && [a2 borderColor])
  {
    _MTLMessageContextPush_();
  }

LABEL_50:
  if ([a2 minFilter] == 2 || objc_msgSend(a2, "magFilter") == 2)
  {
    if ([a2 sAddressMode] == 3)
    {
      _MTLMessageContextPush_();
    }

    if ([a2 tAddressMode] == 3)
    {
      _MTLMessageContextPush_();
    }

    if ([a2 rAddressMode] == 3)
    {
      _MTLMessageContextPush_();
    }

    if ([a2 compareFunction])
    {
      validateMTLSamplerDescriptor_cold_1(a2, v20);
    }
  }

  if ([a2 reductionMode] && !objc_msgSend(a1, "samplerReductionModeSupport"))
  {
    _MTLMessageContextPush_();
  }

  if ([a2 supportArgumentBuffers] && objc_msgSend(a2, "pixelFormat"))
  {
    validateMTLSamplerDescriptor_cold_2(a2, v20);
  }

  if (([a2 sAddressMode] == 1 || objc_msgSend(a2, "rAddressMode") == 1 || objc_msgSend(a2, "tAddressMode") == 1) && (objc_msgSend(a1, "supportsMirrorClampToEdgeSamplerMode") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([a2 sAddressMode] == 6 || objc_msgSend(a2, "rAddressMode") == 6 || objc_msgSend(a2, "tAddressMode") == 6) && (objc_msgSend(a1, "supportsSamplerAddressModeClampToHalfBorder") & 1) == 0)
  {
    _MTLMessageContextPush_();
    if ((v6 & 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_84;
  }

  if ([a2 borderColorSPI] == 3 && (objc_msgSend(a1, "supportsCustomBorderColor") & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([a2 borderColor] == 2 || objc_msgSend(a2, "borderColor") == 1 || !objc_msgSend(a2, "borderColor")) && (objc_msgSend(a1, "supportsBlackOrWhiteSamplerBorderColors") & 1) == 0)
  {
    validateMTLSamplerDescriptor_cold_3(a2, v20);
  }

LABEL_84:
  _MTLMessageContextEnd();
  return result;
}

__n128 MTLSamplerDescriptorHashMap::extractBits@<Q0>(MTLSamplerDescriptorHashMap *this@<X0>, __n128 *a2@<X8>)
{
  v3 = [(MTLSamplerDescriptorHashMap *)this descriptorPrivate];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v3[1].n128_u64[0];
  return result;
}

void MTLSamplerDescriptorHashMap::MTLSamplerDescriptorHashMap(MTLSamplerDescriptorHashMap *this)
{
  this->_map.__table_.__bucket_list_ = 0u;
  *&this->_map.__table_.__first_node_.__next_ = 0u;
  this->_map.__table_.__max_load_factor_ = 1.0;
  this->_limit = 0;
}

unint64_t MTLSamplerDescriptorHashMap::setLimitForDevice(MTLSamplerDescriptorHashMap *this, MTLDebugDevice *a2)
{
  result = [(MTLToolsDevice *)a2 maxIndirectSamplersPerDevice];
  this->_limit = result;
  return result;
}

unint64_t MTLSamplerDescriptorHashMap::add(MTLSamplerDescriptorHashMap *this, MTLSamplerDescriptor *a2)
{
  v3 = [(MTLSamplerDescriptor *)a2 descriptorPrivate];
  v4 = *(v3 + 16);
  v8 = *v3;
  v9 = v4;
  v10 = 0;
  v5 = std::__hash_table<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,std::__unordered_map_hasher<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::hash_t,MTLSamplerDescriptorHashMap::equal_t,true>,std::__unordered_map_equal<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::equal_t,MTLSamplerDescriptorHashMap::hash_t,true>,std::allocator<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>>>::__emplace_unique_key_args<std::array<unsigned long long,3ul>,std::pair<std::array<unsigned long long,3ul> const,unsigned int> const&>(this, &v8, &v8);
  if ((v6 & 1) == 0)
  {
    ++*(v5 + 10);
  }

  result = this->_limit;
  if (this->_map.__table_.__size_ > result)
  {
    return MTLSamplerDescriptorHashMap::add();
  }

  return result;
}

void *MTLSamplerDescriptorHashMap::remove(MTLSamplerDescriptorHashMap *this, MTLSamplerDescriptor *a2)
{
  v3 = [(MTLSamplerDescriptor *)a2 descriptorPrivate];
  v6 = *v3;
  v7 = *(v3 + 16);
  result = std::__hash_table<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,std::__unordered_map_hasher<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::hash_t,MTLSamplerDescriptorHashMap::equal_t,true>,std::__unordered_map_equal<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::equal_t,MTLSamplerDescriptorHashMap::hash_t,true>,std::allocator<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>>>::find<std::array<unsigned long long,3ul>>(this, &v6);
  v5 = *(result + 10);
  if (!v5)
  {
    return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(this, result);
  }

  *(result + 10) = v5 - 1;
  return result;
}

uint64_t MTLSamplerDescriptorHashMap::equal_t::operator()(uint64_t a1, void *a2, void *a3)
{
  if (*a2 == *a3 && a2[1] == a3[1])
  {
    if (a2[2] == a3[2])
    {
      v3 = -1;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *std::__hash_table<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,std::__unordered_map_hasher<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::hash_t,MTLSamplerDescriptorHashMap::equal_t,true>,std::__unordered_map_equal<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::equal_t,MTLSamplerDescriptorHashMap::hash_t,true>,std::allocator<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>>>::__emplace_unique_key_args<std::array<unsigned long long,3ul>,std::pair<std::array<unsigned long long,3ul> const,unsigned int> const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ *a2 ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ *a2 ^ v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_20:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_20;
    }

LABEL_19:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  if (v10[2] != *a2 || v10[3] != v3 || v10[4] != v4)
  {
    goto LABEL_19;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,std::__unordered_map_hasher<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::hash_t,MTLSamplerDescriptorHashMap::equal_t,true>,std::__unordered_map_equal<std::array<unsigned long long,3ul>,std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>,MTLSamplerDescriptorHashMap::equal_t,MTLSamplerDescriptorHashMap::hash_t,true>,std::allocator<std::__hash_value_type<std::array<unsigned long long,3ul>,unsigned int>>>::find<std::array<unsigned long long,3ul>>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ *a2 ^ v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2 ^ v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2 && result[3] == v3 && result[4] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t MTLLegacySVReadReportBuffer(void *a1, int *a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v33 = [MEMORY[0x277CBEB18] arrayWithArray:{objc_msgSend(objc_msgSend(a1, "baseObject"), "logs")}];
  v34 = a1;
  v5 = [a1 device];
  v6 = 0;
  v7 = v5 + 264;
  v45[0] = 0x100000000;
  v35 = a2;
  v30 = v5 + 88;
  v31 = a2 + 2;
  do
  {
    v8 = *(v45 + v6);
    if ((*v35 >> v8))
    {
      v9 = objc_alloc_init(MTLLegacySVBufferErrorLog);
      v10 = &v31[22 * v8];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::resolvedSharedPacketDataLegacy(v40, v10, a3, v34, v9);
      v11 = *(v10 + 20);
      v12 = *(v10 + 2);
      [(MTLLegacySVBufferErrorLog *)v9 setOperation:*(v10 + 21)];
      v13 = *(v7 + 20);
      if ((v13 & 0x800000) != 0)
      {
        if (v8)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          v14 = (v13 >> 27) & 1;
        }
      }

      else
      {
        LODWORD(v14) = 1;
      }

      if (v8)
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }

      [(MTLLegacySVBufferErrorLog *)v9 setAddressSpace:v15, v30];
      if (!v8 && (*(v7 + 22) & 0x80) != 0)
      {
        v16 = *(*(v30 + 296) + ((v12 >> 37) & 0x7FFFFF8));
        v12 &= 0xFFFFFFFFFFuLL;
      }

      else
      {
        v16 = 0;
      }

      [(MTLLegacySVBufferErrorLog *)v9 setBuffer:v16];
      [(MTLLegacySVBufferErrorLog *)v9 setOffset:v12];
      if ([(MTLLegacySVBufferErrorLog *)v9 buffer]&& v43 && (*(v7 + 20) & 0x200000001) != 0)
      {
        v17 = [(MTLLegacySVBufferErrorLog *)v9 buffer];
        -[MTLLegacySVBufferErrorLog setSpecifiedUsage:](v9, "setSpecifiedUsage:", [v34 resourceUsageForBuffer:v17 stage:v43]);
      }

      if (v14 && (v18 = v8 != 0, v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, v19 = v42, (v20 = [v42 countByEnumeratingWithState:&v36 objects:v44 count:16]) != 0))
      {
        v21 = *v37;
LABEL_21:
        v22 = 0;
        while (1)
        {
          if (*v37 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v36 + 1) + 8 * v22);
          if ([v23 type] == v18 && objc_msgSend(v23, "index") == v11)
          {
            break;
          }

          if (v20 == ++v22)
          {
            v20 = [v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
            v23 = 0;
            if (v20)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }

      else
      {
        v23 = 0;
      }

      [(MTLLegacySVBufferErrorLog *)v9 setArgument:v23];
      [v33 addObject:v9];

      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::~resolvedSharedPacketDataLegacy(v40);
    }

    v6 += 4;
  }

  while (v6 != 8);
  v24 = *v35;
  if ((*v35 & 4) != 0)
  {
    v25 = objc_alloc_init(MTLLegacySVTextureErrorLog);
    resolvedSharedPacketDataLegacy<GPUDebugBadTexturePacket>::resolvedSharedPacketDataLegacy(v40, v35 + 23, a3, v34, v25);
    [(MTLLegacySVTextureErrorLog *)v25 setErrorReason:*(v35 + 220)];
    [v33 addObject:v25];

    resolvedSharedPacketDataLegacy<GPUDebugBadTexturePacket>::~resolvedSharedPacketDataLegacy(v40);
    v24 = *v35;
  }

  if ((v24 & 0x10) != 0)
  {
    v26 = objc_alloc_init(MTLLegacySVStackOverflowErrorLog);
    resolvedSharedPacketDataLegacy<GPUDebugStackPacket>::resolvedSharedPacketDataLegacy(v40, v35 + 42, a3, v34, v26);
    -[MTLLegacySVStackOverflowErrorLog setFunctionName:](v26, "setFunctionName:", [v41 stringForID:v35[91]]);
    [v33 addObject:v26];

    resolvedSharedPacketDataLegacy<GPUDebugStackPacket>::~resolvedSharedPacketDataLegacy(v40);
    v24 = *v35;
  }

  if ((v24 & 8) != 0)
  {
    v27 = objc_alloc_init(MTLLegacySVTrapErrorLog);
    resolvedSharedPacketDataLegacy<GPUDebugFunctionTrapPacket>::resolvedSharedPacketDataLegacy(v40, v35 + 33, a3, v34, v27);
    -[MTLLegacySVTrapErrorLog setFunctionName:](v27, "setFunctionName:", [v41 stringForID:v35[73]]);
    [v33 addObject:v27];

    resolvedSharedPacketDataLegacy<GPUDebugFunctionTrapPacket>::~resolvedSharedPacketDataLegacy(v40);
    v24 = *v35;
  }

  if ((v24 & 0x20) != 0)
  {
    v28 = objc_alloc_init(MTLLegacySVAccelerationStructureErrorLog);
    resolvedSharedPacketDataLegacy<GPUDebugAccelerationStructurePacket>::resolvedSharedPacketDataLegacy(v40, v35 + 51, a3, v34, v28);
    -[MTLLegacySVAccelerationStructureErrorLog setFunctionName:](v28, "setFunctionName:", [v41 stringForID:v35[109]]);
    [(MTLLegacySVAccelerationStructureErrorLog *)v28 setExpectedAccelerationStructureType:*(v35 + 55)];
    [(MTLLegacySVAccelerationStructureErrorLog *)v28 setActualAccelerationStructureType:*(v35 + 56)];
    [v33 addObject:v28];

    resolvedSharedPacketDataLegacy<GPUDebugAccelerationStructurePacket>::~resolvedSharedPacketDataLegacy(v40);
  }

  return [objc_msgSend(v34 baseObject];
}

void sub_22E20FEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  resolvedSharedPacketDataLegacy<GPUDebugBadTexturePacket>::~resolvedSharedPacketDataLegacy(va);
  _Unwind_Resume(a1);
}

uint64_t *GPUDebugFunctionInfo::GPUDebugFunctionInfo(uint64_t *a1, void *a2)
{
  *a1 = @"<unnamed>";
  a1[1] = @"<unknown>";
  a1[2] = @"<unknown>";
  if ([a2 label])
  {
    v4 = [a2 label];
  }

  else
  {
    if (![a2 name])
    {
      goto LABEL_6;
    }

    v4 = [a2 name];
  }

  *a1 = v4;
LABEL_6:
  v5 = [a2 functionType];
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 1:
        v7 = @"vertex";
        break;
      case 2:
        v7 = @"fragment";
        break;
      case 3:
        v7 = @"kernel";
        v8 = @"dispatch";
LABEL_23:
        a1[1] = v7;
        a1[2] = v8;
        return a1;
      default:
        return a1;
    }

    v8 = @"draw";
    goto LABEL_23;
  }

  if (v5 <= 6)
  {
    if (v5 == 5)
    {
      v6 = @"visible";
    }

    else
    {
      v6 = @"intersection";
    }

    goto LABEL_20;
  }

  if (v5 == 7)
  {
    v6 = @"mesh";
    goto LABEL_20;
  }

  if (v5 == 8)
  {
    v6 = @"object";
LABEL_20:
    a1[1] = v6;
  }

  return a1;
}

void *resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::resolvedSharedPacketDataLegacy(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *(a1 + 7) = 0u;
  v10 = a1 + 7;
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  a1[11] = 0;
  *(a1 + 10) = *(a2 + 6);
  *(a1 + 44) = vrev64_s32(*(a2 + 28));
  v11 = a2[1];
  *a1 = v11;
  a1[2] = [v11 debugInstrumentationData];
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v16 "meshFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v16 label]);
      v14 = 16;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_18;
      }

      v13 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v13 "objectFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v13 label]);
      v14 = 8;
    }

    goto LABEL_17;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v15 = *a2;
    a1[4] = [objc_msgSend(*a2 "userReflection")];
    a1[1] = [objc_msgSend(v15 "vertexFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v15 label]);
    goto LABEL_10;
  }

  v12 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1[4] = [objc_msgSend(v12 "userReflection")];
    a1[1] = [objc_msgSend(v12 "kernelFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v12 label]);
LABEL_10:
    v14 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = *a2;
  if ([*a2 tileFunctionData])
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 tileFunctionData];
  }

  else
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 fragmentFunctionData];
  }

  a1[1] = [v18 function];
  resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v17 label]);
  v14 = 2;
LABEL_17:
  a1[11] = v14;
LABEL_18:
  v19 = a1[1];
  if (v19)
  {
    v20 = a1[3];
    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline(function): %@(%@)", v20, objc_msgSend(v19, "name")];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"function: %@", objc_msgSend(v19, "name")];
    }

    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, v21);
  }

  if (!a1[3])
  {
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [MEMORY[0x277CCACA8] stringWithFormat:@"packet pipelineID: %llX", *a2]);
  }

  v22 = [a1[2] debugLocationForID:*(a1 + 11)];
  *v10 = v22;
  if (v22)
  {
    std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), v10);
  }

  if ([*a1 imageType] != 1)
  {
    v23 = 0;
    v24 = a2 + 44;
    do
    {
      v25 = *&v24[v23];
      if (v25 != -1)
      {
        if (v25 == 0x7FFFFFFF)
        {
          break;
        }

        v35 = [a1[2] debugLocationForID:?];
        std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), &v35);
      }

      v23 += 4;
    }

    while (v23 != 40);
  }

  [a5 setImage:*a1];
  [a5 setCallIndex:*(a1 + 12)];
  [a5 setEncoderLabel:{objc_msgSend(a4, "encoderIdentifierForEncoderIndex:", *(a1 + 10))}];
  v27 = newNonToolchainInlinedStackTraceFromDebugLocation(*v10, v26);
  v29 = newRuntimeStackTrace(a1 + 8, v28);
  v30 = [objc_msgSend(a4 "device")];
  v31 = v27;
  if (v30 == 1)
  {
    v32 = [a4 device];
    v31 = v29;
    if ((*(v32 + 285) & 2) == 0)
    {
      v31 = v27;
    }
  }

  [a5 setErrorStackTrace:v31];
  if (v27)
  {
    v33 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v33 = 0;
  }

  [a5 setDebugLocation:v33];

  [a5 setFunction:a1[1]];
  [a5 setType:0];
  [a5 setPipelineIdentifier:a1[3]];
  return a1;
}

void sub_22E210E8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

id resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
  }

  result = a2;
  *(a1 + 24) = result;
  return result;
}

uint64_t resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::~resolvedSharedPacketDataLegacy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

void *resolvedSharedPacketDataLegacy<GPUDebugBadTexturePacket>::resolvedSharedPacketDataLegacy(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *(a1 + 7) = 0u;
  v10 = a1 + 7;
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  a1[11] = 0;
  *(a1 + 10) = *(a2 + 4);
  *(a1 + 44) = vrev64_s32(*(a2 + 20));
  v11 = a2[1];
  *a1 = v11;
  a1[2] = [v11 debugInstrumentationData];
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v16 "meshFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v16 label]);
      v14 = 16;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_18;
      }

      v13 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v13 "objectFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v13 label]);
      v14 = 8;
    }

    goto LABEL_17;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v15 = *a2;
    a1[4] = [objc_msgSend(*a2 "userReflection")];
    a1[1] = [objc_msgSend(v15 "vertexFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v15 label]);
    goto LABEL_10;
  }

  v12 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1[4] = [objc_msgSend(v12 "userReflection")];
    a1[1] = [objc_msgSend(v12 "kernelFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v12 label]);
LABEL_10:
    v14 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = *a2;
  if ([*a2 tileFunctionData])
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 tileFunctionData];
  }

  else
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 fragmentFunctionData];
  }

  a1[1] = [v18 function];
  resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v17 label]);
  v14 = 2;
LABEL_17:
  a1[11] = v14;
LABEL_18:
  v19 = a1[1];
  if (v19)
  {
    v20 = a1[3];
    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline(function): %@(%@)", v20, objc_msgSend(v19, "name")];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"function: %@", objc_msgSend(v19, "name")];
    }

    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, v21);
  }

  if (!a1[3])
  {
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [MEMORY[0x277CCACA8] stringWithFormat:@"packet pipelineID: %llX", *a2]);
  }

  v22 = [a1[2] debugLocationForID:*(a1 + 11)];
  *v10 = v22;
  if (v22)
  {
    std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), v10);
  }

  if ([*a1 imageType] != 1)
  {
    v23 = 0;
    v24 = a2 + 5;
    do
    {
      v25 = *(v24 + v23);
      if (v25 != -1)
      {
        if (v25 == 0x7FFFFFFF)
        {
          break;
        }

        v35 = [a1[2] debugLocationForID:?];
        std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), &v35);
      }

      v23 += 4;
    }

    while (v23 != 40);
  }

  [a5 setImage:*a1];
  [a5 setCallIndex:*(a1 + 12)];
  [a5 setEncoderLabel:{objc_msgSend(a4, "encoderIdentifierForEncoderIndex:", *(a1 + 10))}];
  v27 = newNonToolchainInlinedStackTraceFromDebugLocation(*v10, v26);
  v29 = newRuntimeStackTrace(a1 + 8, v28);
  v30 = [objc_msgSend(a4 "device")];
  v31 = v27;
  if (v30 == 1)
  {
    v32 = [a4 device];
    v31 = v29;
    if ((*(v32 + 285) & 2) == 0)
    {
      v31 = v27;
    }
  }

  [a5 setErrorStackTrace:v31];
  if (v27)
  {
    v33 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v33 = 0;
  }

  [a5 setDebugLocation:v33];

  [a5 setFunction:a1[1]];
  [a5 setType:0];
  [a5 setPipelineIdentifier:a1[3]];
  return a1;
}

void sub_22E211388(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t resolvedSharedPacketDataLegacy<GPUDebugBadTexturePacket>::~resolvedSharedPacketDataLegacy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

void *resolvedSharedPacketDataLegacy<GPUDebugStackPacket>::resolvedSharedPacketDataLegacy(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *(a1 + 7) = 0u;
  v10 = a1 + 7;
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  a1[11] = 0;
  *(a1 + 10) = *(a2 + 4);
  *(a1 + 44) = vrev64_s32(*(a2 + 20));
  v11 = a2[1];
  *a1 = v11;
  a1[2] = [v11 debugInstrumentationData];
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v16 "meshFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v16 label]);
      v14 = 16;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_18;
      }

      v13 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v13 "objectFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v13 label]);
      v14 = 8;
    }

    goto LABEL_17;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v15 = *a2;
    a1[4] = [objc_msgSend(*a2 "userReflection")];
    a1[1] = [objc_msgSend(v15 "vertexFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v15 label]);
    goto LABEL_10;
  }

  v12 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1[4] = [objc_msgSend(v12 "userReflection")];
    a1[1] = [objc_msgSend(v12 "kernelFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v12 label]);
LABEL_10:
    v14 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = *a2;
  if ([*a2 tileFunctionData])
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 tileFunctionData];
  }

  else
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 fragmentFunctionData];
  }

  a1[1] = [v18 function];
  resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v17 label]);
  v14 = 2;
LABEL_17:
  a1[11] = v14;
LABEL_18:
  v19 = a1[1];
  if (v19)
  {
    v20 = a1[3];
    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline(function): %@(%@)", v20, objc_msgSend(v19, "name")];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"function: %@", objc_msgSend(v19, "name")];
    }

    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, v21);
  }

  if (!a1[3])
  {
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [MEMORY[0x277CCACA8] stringWithFormat:@"packet pipelineID: %llX", *a2]);
  }

  v22 = [a1[2] debugLocationForID:*(a1 + 11)];
  *v10 = v22;
  if (v22)
  {
    std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), v10);
  }

  if ([*a1 imageType] != 1)
  {
    v23 = 0;
    v24 = a2 + 4;
    do
    {
      v25 = *(v24 + v23);
      if (v25 != -1)
      {
        if (v25 == 0x7FFFFFFF)
        {
          break;
        }

        v35 = [a1[2] debugLocationForID:?];
        std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), &v35);
      }

      v23 += 4;
    }

    while (v23 != 40);
  }

  [a5 setImage:*a1];
  [a5 setCallIndex:*(a1 + 12)];
  [a5 setEncoderLabel:{objc_msgSend(a4, "encoderIdentifierForEncoderIndex:", *(a1 + 10))}];
  v27 = newNonToolchainInlinedStackTraceFromDebugLocation(*v10, v26);
  v29 = newRuntimeStackTrace(a1 + 8, v28);
  v30 = [objc_msgSend(a4 "device")];
  v31 = v27;
  if (v30 == 1)
  {
    v32 = [a4 device];
    v31 = v29;
    if ((*(v32 + 285) & 2) == 0)
    {
      v31 = v27;
    }
  }

  [a5 setErrorStackTrace:v31];
  if (v27)
  {
    v33 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v33 = 0;
  }

  [a5 setDebugLocation:v33];

  [a5 setFunction:a1[1]];
  [a5 setType:0];
  [a5 setPipelineIdentifier:a1[3]];
  return a1;
}

void sub_22E21184C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t resolvedSharedPacketDataLegacy<GPUDebugStackPacket>::~resolvedSharedPacketDataLegacy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

void *resolvedSharedPacketDataLegacy<GPUDebugFunctionTrapPacket>::resolvedSharedPacketDataLegacy(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *(a1 + 7) = 0u;
  v10 = a1 + 7;
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  a1[11] = 0;
  *(a1 + 10) = *(a2 + 4);
  *(a1 + 44) = vrev64_s32(*(a2 + 20));
  v11 = a2[1];
  *a1 = v11;
  a1[2] = [v11 debugInstrumentationData];
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v16 "meshFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v16 label]);
      v14 = 16;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_18;
      }

      v13 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v13 "objectFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v13 label]);
      v14 = 8;
    }

    goto LABEL_17;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v15 = *a2;
    a1[4] = [objc_msgSend(*a2 "userReflection")];
    a1[1] = [objc_msgSend(v15 "vertexFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v15 label]);
    goto LABEL_10;
  }

  v12 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1[4] = [objc_msgSend(v12 "userReflection")];
    a1[1] = [objc_msgSend(v12 "kernelFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v12 label]);
LABEL_10:
    v14 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = *a2;
  if ([*a2 tileFunctionData])
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 tileFunctionData];
  }

  else
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 fragmentFunctionData];
  }

  a1[1] = [v18 function];
  resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v17 label]);
  v14 = 2;
LABEL_17:
  a1[11] = v14;
LABEL_18:
  v19 = a1[1];
  if (v19)
  {
    v20 = a1[3];
    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline(function): %@(%@)", v20, objc_msgSend(v19, "name")];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"function: %@", objc_msgSend(v19, "name")];
    }

    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, v21);
  }

  if (!a1[3])
  {
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [MEMORY[0x277CCACA8] stringWithFormat:@"packet pipelineID: %llX", *a2]);
  }

  v22 = [a1[2] debugLocationForID:*(a1 + 11)];
  *v10 = v22;
  if (v22)
  {
    std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), v10);
  }

  if ([*a1 imageType] != 1)
  {
    v23 = 0;
    v24 = a2 + 4;
    do
    {
      v25 = *(v24 + v23);
      if (v25 != -1)
      {
        if (v25 == 0x7FFFFFFF)
        {
          break;
        }

        v35 = [a1[2] debugLocationForID:?];
        std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), &v35);
      }

      v23 += 4;
    }

    while (v23 != 40);
  }

  [a5 setImage:*a1];
  [a5 setCallIndex:*(a1 + 12)];
  [a5 setEncoderLabel:{objc_msgSend(a4, "encoderIdentifierForEncoderIndex:", *(a1 + 10))}];
  v27 = newNonToolchainInlinedStackTraceFromDebugLocation(*v10, v26);
  v29 = newRuntimeStackTrace(a1 + 8, v28);
  v30 = [objc_msgSend(a4 "device")];
  v31 = v27;
  if (v30 == 1)
  {
    v32 = [a4 device];
    v31 = v29;
    if ((*(v32 + 285) & 2) == 0)
    {
      v31 = v27;
    }
  }

  [a5 setErrorStackTrace:v31];
  if (v27)
  {
    v33 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v33 = 0;
  }

  [a5 setDebugLocation:v33];

  [a5 setFunction:a1[1]];
  [a5 setType:0];
  [a5 setPipelineIdentifier:a1[3]];
  return a1;
}

void sub_22E211D10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t resolvedSharedPacketDataLegacy<GPUDebugFunctionTrapPacket>::~resolvedSharedPacketDataLegacy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

void *resolvedSharedPacketDataLegacy<GPUDebugAccelerationStructurePacket>::resolvedSharedPacketDataLegacy(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  *(a1 + 7) = 0u;
  v10 = a1 + 7;
  *(a1 + 12) = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  *(a1 + 9) = 0u;
  a1[11] = 0;
  *(a1 + 10) = *(a2 + 4);
  *(a1 + 44) = vrev64_s32(*(a2 + 20));
  v11 = a2[1];
  *a1 = v11;
  a1[2] = [v11 debugInstrumentationData];
  if (a3 > 6)
  {
    if (a3 == 7)
    {
      v16 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v16 "meshFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v16 label]);
      v14 = 16;
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_18;
      }

      v13 = *a2;
      a1[4] = [objc_msgSend(*a2 "userReflection")];
      a1[1] = [objc_msgSend(v13 "objectFunctionData")];
      resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v13 label]);
      v14 = 8;
    }

    goto LABEL_17;
  }

  if ((a3 - 2) >= 2)
  {
    if (a3 != 1)
    {
      goto LABEL_18;
    }

    v15 = *a2;
    a1[4] = [objc_msgSend(*a2 "userReflection")];
    a1[1] = [objc_msgSend(v15 "vertexFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v15 label]);
    goto LABEL_10;
  }

  v12 = *a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a1[4] = [objc_msgSend(v12 "userReflection")];
    a1[1] = [objc_msgSend(v12 "kernelFunctionData")];
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v12 label]);
LABEL_10:
    v14 = 1;
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = *a2;
  if ([*a2 tileFunctionData])
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 tileFunctionData];
  }

  else
  {
    a1[4] = [objc_msgSend(v17 "userReflection")];
    v18 = [v17 fragmentFunctionData];
  }

  a1[1] = [v18 function];
  resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [v17 label]);
  v14 = 2;
LABEL_17:
  a1[11] = v14;
LABEL_18:
  v19 = a1[1];
  if (v19)
  {
    v20 = a1[3];
    if (v20)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"pipeline(function): %@(%@)", v20, objc_msgSend(v19, "name")];
    }

    else
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"function: %@", objc_msgSend(v19, "name")];
    }

    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, v21);
  }

  if (!a1[3])
  {
    resolvedSharedPacketDataLegacy<GPUDebugBadAccessPacket>::setPipelineIdentifier(a1, [MEMORY[0x277CCACA8] stringWithFormat:@"packet pipelineID: %llX", *a2]);
  }

  v22 = [a1[2] debugLocationForID:*(a1 + 11)];
  *v10 = v22;
  if (v22)
  {
    std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), v10);
  }

  if ([*a1 imageType] != 1)
  {
    v23 = 0;
    v24 = a2 + 6;
    do
    {
      v25 = *(v24 + v23);
      if (v25 != -1)
      {
        if (v25 == 0x7FFFFFFF)
        {
          break;
        }

        v35 = [a1[2] debugLocationForID:?];
        std::vector<void({block_pointer})(objc_object  {objcproto16MTLCommandBuffer}*),std::allocator<void ()(objc_object  {objcproto16MTLCommandBuffer}*)>>::push_back[abi:ne200100]((a1 + 8), &v35);
      }

      v23 += 4;
    }

    while (v23 != 40);
  }

  [a5 setImage:*a1];
  [a5 setCallIndex:*(a1 + 12)];
  [a5 setEncoderLabel:{objc_msgSend(a4, "encoderIdentifierForEncoderIndex:", *(a1 + 10))}];
  v27 = newNonToolchainInlinedStackTraceFromDebugLocation(*v10, v26);
  v29 = newRuntimeStackTrace(a1 + 8, v28);
  v30 = [objc_msgSend(a4 "device")];
  v31 = v27;
  if (v30 == 1)
  {
    v32 = [a4 device];
    v31 = v29;
    if ((*(v32 + 285) & 2) == 0)
    {
      v31 = v27;
    }
  }

  [a5 setErrorStackTrace:v31];
  if (v27)
  {
    v33 = [v27 objectAtIndexedSubscript:0];
  }

  else
  {
    v33 = 0;
  }

  [a5 setDebugLocation:v33];

  [a5 setFunction:a1[1]];
  [a5 setType:0];
  [a5 setPipelineIdentifier:a1[3]];
  return a1;
}

void sub_22E2121D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    *(v1 + 72) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t resolvedSharedPacketDataLegacy<GPUDebugAccelerationStructurePacket>::~resolvedSharedPacketDataLegacy(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_22E214518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *PrepareExecuteIndirect(MTLLegacySVComputeCommandEncoder *a1, void *a2, uint64_t a3)
{
  v6 = [(MTLToolsObject *)a1 baseObject];
  v7 = [(MTLToolsObject *)a1 device];
  v8 = [a2 inheritsBuffers];
  v9 = [a2 inheritsPipelineState];
  v10 = *(v7 + 53);
  [v6 useResource:v10 usage:1];
  [v6 setBuffer:v10 offset:0 atIndex:2];
  [v6 useResource:objc_msgSend(a2 usage:{"baseObject"), 2}];
  [v6 setBuffer:objc_msgSend(a2 offset:"internalICBBuffer") atIndex:{0, 0}];
  currentPipeline = a1->_currentPipeline;
  if (currentPipeline)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v13 = [(MTLDebugInstrumentationData *)[(MTLToolsComputePipelineState *)currentPipeline debugInstrumentationData] bufferAccessMask];
    [v6 useResource:-[MTLToolsObject baseObject](-[MTLLegacySVComputePipelineState indirectStateBuffer](a1->_currentPipeline usage:{"indirectStateBuffer"), "baseObject"), 1}];
    [v6 setBuffer:-[MTLToolsObject baseObject](-[MTLLegacySVComputePipelineState indirectStateBuffer](a1->_currentPipeline offset:"indirectStateBuffer") atIndex:{"baseObject"), 0, 3}];
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_7:
    LegacySVGlobalResidentBufferList::useBuffers((v7 + 552), a1);
    [v6 setBuffer:objc_msgSend(a2 offset:"internalDispatchIDBuffer") atIndex:{0, 5}];
    goto LABEL_10;
  }

  v13 = 0x3FFFFFFFFFFFFFFFLL;
  if ((v9 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = [-[MTLDevice baseObject](v7 "baseObject")];
  [v6 setBuffer:v14 offset:0 atIndex:5];
  [v6 useResource:v14 usage:1];

LABEL_10:
  result = [v6 setBuffer:-[MTLBuffer baseObject](a1->_reportBuffer.buffer offset:"baseObject") atIndex:{a1->_reportBuffer.offset, 4}];
  v16 = *(a3 + 16);
  if (v16 == -1)
  {
    v17 = -1;
  }

  else
  {
    v17 = *(a3 + 16);
  }

  if (v17 == 1)
  {
    if (v16 != 1)
    {
      goto LABEL_45;
    }

    [v6 setBytes:a3 length:8 atIndex:1];
  }

  else
  {
    if (v17)
    {
      return result;
    }

    if (v16)
    {
      goto LABEL_45;
    }

    v18 = *a3;
    [v6 setBuffer:objc_msgSend(*a3 offset:"baseObject") atIndex:{*(a3 + 8), 1}];
    [(MTLToolsCommandEncoder *)a1 addRetainedObject:v18];
  }

  if ((*&a1->_options->var0 & 0x200000001) != 0)
  {
    [v6 setBuffer:a1->_bufferUsageTable offset:0 atIndex:6];
    p_textureUsageTable = &a1->_textureUsageTable;
  }

  else
  {
    [v6 setBuffer:*(v7 + 53) offset:0 atIndex:6];
    p_textureUsageTable = (v7 + 424);
  }

  [v6 setBuffer:*p_textureUsageTable offset:0 atIndex:7];
  if (v8)
  {
    a1->_handles.needsFlush = 1;
    v28 = v13;
    MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::KernelEncoderClass>>(&a1->_handles, &v28, &a1->super.super.super.super.isa, 9, 10);
    if ((v9 & 1) == 0)
    {
      v20 = [(MTLDevice *)v7 ICB_Inherit_Buffers_ComputePipelineState];
LABEL_31:
      v21 = v20;
      goto LABEL_32;
    }
  }

  else if (v9)
  {
    v20 = [(MTLDevice *)v7 ICB_Inherit_PSO_ComputePipelineState];
    goto LABEL_31;
  }

  if (((v8 | v9) & 1) == 0)
  {
    v20 = [(MTLDevice *)v7 ICB_Inherit_None_ComputePipelineState];
    goto LABEL_31;
  }

  if ((v8 & v9) != 0)
  {
    v20 = [(MTLDevice *)v7 ICB_Inherit_Both_ComputePipelineState];
    goto LABEL_31;
  }

  v21 = 0;
LABEL_32:
  [v6 setComputePipelineState:v21];
  [v6 memoryBarrierWithScope:1];
  v22 = *(a3 + 16);
  if (v22 == -1)
  {
    v23 = -1;
  }

  else
  {
    v23 = *(a3 + 16);
  }

  if (v23 == 1)
  {
    if (v22 == 1)
    {
      v24 = *(a3 + 4);
      goto LABEL_40;
    }

LABEL_45:
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (v23)
  {
    goto LABEL_41;
  }

  v24 = 0x4000;
LABEL_40:
  v28 = v24;
  v29 = vdupq_n_s64(1uLL);
  v26 = [v21 threadExecutionWidth];
  v27 = v25;
  [v6 dispatchThreads:&v28 threadsPerThreadgroup:&v26];
LABEL_41:
  result = [v6 memoryBarrierWithScope:1];
  if (v9)
  {
    return [v6 setComputePipelineState:{-[MTLToolsObject baseObject](a1->_currentPipeline, "baseObject")}];
  }

  return result;
}

void *RestoreInternalState(MTLLegacySVComputeCommandEncoder *a1)
{
  [(MTLLegacySVComputeCommandEncoder *)a1 setKernelReportBuffer:a1->_reportBuffer.buffer offset:a1->_reportBuffer.offset];
  result = [(MTLLegacySVComputeCommandEncoder *)a1 setBufferUsageTable:a1->_bufferUsageTable textureUsageTable:a1->_textureUsageTable];
  if (a1->_currentPipeline)
  {
    a1->_currentPipeline = 0;
    result = [(MTLLegacySVComputeCommandEncoder *)a1 setComputePipelineState:?];
    a1->_handles.needsFlush = 1;
    a1->_threadgroup.needsFlush = 1;
  }

  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantIndirection<MTLLegacySV::KernelEncoderClass>>(uint64_t a1, unint64_t *a2, id *a3, uint64_t a4, uint64_t a5)
{
  [a3[2] setBytes:a1 length:248 atIndex:a4];
  result = [a3[2] setBytes:a1 + 744 length:248 atIndex:a5];
  v10 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v11 = __clz(__rbit64(v10));
        v12 = v10 & ~(3 << (v11 & 0x3E));
        *a2 = v12;
        v13 = *(a1 + 248 + ((4 * v11) & 0x1F8));
        if (!v13)
        {
          break;
        }

        result = [a3 useResource:v13 usage:(v10 >> (v11 & 0x3E)) & 3];
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v10 &= ~(3 << (v11 & 0x3E));
    }

    while (v12);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT2<MTLLegacySV::KernelEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = a3;
  result = MTLLegacySV::EncoderVariantT2<MTLLegacySV::KernelEncoderClass>::setResources(&v13, a1, &v12, a4, a5);
  v8 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v9 = __clz(__rbit64(v8));
        v10 = v8 & ~(3 << (v9 & 0x3E));
        *a2 = v10;
        v11 = *(a1 + 248 + ((4 * v9) & 0x1F8));
        if (!v11)
        {
          break;
        }

        result = [v13 useResource:v11 usage:(v8 >> (v9 & 0x3E)) & 3];
        v8 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v8 &= ~(3 << (v9 & 0x3E));
    }

    while (v10);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT2<MTLLegacySV::KernelEncoderClass>::setResources(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = [objc_msgSend(*a1 commandBuffer];
  [*(*a1 + 2) setBuffer:v9 offset:v11 atIndex:0];
  [*(*a1 + 2) setBytes:a2 + 992 length:124 atIndex:a4];
  return [*(*a1 + 2) setBytes:a2 + 744 length:248 atIndex:a5];
}

void *MTLLegacySVStageBufferHandles::flush<MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::KernelEncoderClass>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = *a2;
  v11 = a3;
  result = MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::KernelEncoderClass>::setResources(&v11, a1, &v10);
  v6 = *a2;
  if (*a2)
  {
    do
    {
      while (1)
      {
        v7 = __clz(__rbit64(v6));
        v8 = v6 & ~(3 << (v7 & 0x3E));
        *a2 = v8;
        v9 = *(a1 + 248 + ((4 * v7) & 0x1F8));
        if (!v9)
        {
          break;
        }

        result = [v11 useResource:v9 usage:(v6 >> (v7 & 0x3E)) & 3];
        v6 = *a2;
        if (!*a2)
        {
          goto LABEL_6;
        }
      }

      v6 &= ~(3 << (v7 & 0x3E));
    }

    while (v8);
  }

LABEL_6:
  *(a1 + 1616) = 0;
  return result;
}

uint64_t MTLLegacySV::EncoderVariantT1AGX<MTLLegacySV::KernelEncoderClass>::setResources(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  for (i = *a3; *a3; i = *a3)
  {
    v6 = __clz(__rbit64(i));
    *a3 = i & ~(3 << (v6 & 0x3E));
    [*(*a1 + 16) setBuffer:objc_msgSend(*(a2 + 248 + 8 * (v6 >> 1)) offset:"baseObject") attributeStride:*(a2 + 496 + 8 * (v6 >> 1)) + objc_msgSend(*(a2 + 248 + 8 * (v6 >> 1)) atIndex:{"offset"), *(a2 + 744 + 8 * (v6 >> 1)), v6 >> 1}];
  }

  v7 = *(*a1 + 16);

  return [v7 setBytes:a2 + 1120 length:496 atIndex:31];
}

void std::vector<MTL4DebugBindingInfo>::resize(void *result, unint64_t a2, void *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<MTL4DebugBindingInfo>::__append(result, a2 - v3, a3);
  }
}

void std::vector<MTL4DebugBindingInfo>::__append(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4DebugBindingInfo>>(a1, v11);
    }

    v14 = 8 * v9;
    v15 = 8 * v9 + 8 * a2;
    v16 = 8 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 8;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4DebugBindingInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_22E217068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<LegacySVArgumentEncoderLayout>::reset[abi:ne200100](va, 0);
  std::mutex::unlock((v5 + v6));
  _Unwind_Resume(a1);
}

void LegacySVArgumentEncoderLayout::LegacySVArgumentEncoderLayout(LegacySVArgumentEncoderLayout *this, MTLStructType *a2, MTLLegacySVDevice *a3)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  v5 = [(MTLToolsObject *)a3 baseObject];
  v6 = objc_autoreleasePoolPush();
  v7 = [MTLLegacySVFunction internalStructTypeFromUserStructType:a2];
  v8 = [v5 newIndirectArgumentBufferLayoutWithStructType:v7];
  *this = v8;
  [v8 setStructType:v7 withDevice:v5];
  objc_autoreleasePoolPop(v6);
  MTLEnumerateIndirectResources();
}

uint64_t *LegacySVArgumentEncoderLayout::sublayout(LegacySVArgumentEncoderLayout *this, unsigned int a2)
{
  v3 = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::find<unsigned int>(this + 1, &v3);
  if (result)
  {
    return result[3];
  }

  return result;
}

id *std::unique_ptr<LegacySVArgumentEncoderLayout>::reset[abi:ne200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    LegacySVArgumentEncoderLayout::~LegacySVArgumentEncoderLayout(result);

    JUMPOUT(0x2318E4940);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>>>::__emplace_unique_key_args<unsigned int,unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>(void *a1, unsigned int *a2, _DWORD *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_22E217708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<LegacySVArgumentEncoderLayout>::reset[abi:ne200100](v2 + 3, 0);
    }

    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<LegacySVArgumentEncoderLayout>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        LegacySVArgumentEncoderLayout::~LegacySVArgumentEncoderLayout(v4);
        MEMORY[0x2318E4940]();
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

double _validateReplaceRegion(MTLDebugTexture *a1, MTLOrigin *a2, MTLSize *a3, unint64_t a4, unint64_t a5, const void *a6, NSUInteger a7, char a8, NSUInteger a9, unint64_t a10)
{
  v16 = a1;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  [(MTLToolsObject *)a1 device];
  _MTLMessageContextBegin_();
  if (a3->height * a3->width * a3->depth)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    depth = a3->depth;
    v35 = 0;
    width = a3->width;
    height = a3->height;
    _MTLMessageContextPush_();
    if (a6)
    {
      goto LABEL_3;
    }
  }

  _MTLMessageContextPush_();
LABEL_3:
  if ([(MTLToolsResource *)v16 storageMode:width]== 2)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsResource *)v16 storageMode]== 3)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsTexture *)v16 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsTexture *)v16 mipmapLevelCount]<= a5)
  {
    v28 = a5;
    v31 = [(MTLToolsTexture *)v16 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v17 = [(MTLToolsTexture *)v16 numFaces:v28];
  if ([(MTLToolsTexture *)v16 arrayLength]* v17 <= a4)
  {
    _validateReplaceRegion(v16, &v38);
  }

  _MTLMessageContextEnd();
  [(MTLToolsObject *)v16 device];
  [(MTLToolsTexture *)v16 pixelFormat];
  [(MTLToolsTexture *)v16 width];
  [(MTLToolsTexture *)v16 height];
  [(MTLToolsTexture *)v16 depth];
  [(MTLToolsTexture *)v16 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  [(MTLToolsObject *)v16 device];
  [(MTLToolsTexture *)v16 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  _MTLAdjustMTLSize();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  [(MTLToolsObject *)v16 device];
  _MTLMessageContextBegin_();
  if (a3->width + a2->x)
  {
    v29 = a3->width + a2->x;
    v32 = 0;
    _MTLMessageContextPush_();
  }

  if (a3->height + a2->y)
  {
    v29 = a3->height + a2->y;
    v32 = 0;
    _MTLMessageContextPush_();
  }

  if (a3->depth + a2->z)
  {
    v29 = a3->depth + a2->z;
    v32 = 0;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  [(MTLToolsObject *)v16 device];
  _MTLMessageContextBegin_();
  [(MTLToolsObject *)v16 device];
  [(MTLToolsTexture *)v16 pixelFormat];
  [(MTLToolsTexture *)v16 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (!a7 && 0 == __PAIR128__(1, 1))
  {
    a7 = 0;
  }

  if ((a8 & 1) == 0)
  {
    _validateReplaceRegion(v16, &v38);
  }

  if (a7 % 0)
  {
    v34 = "pixel";
    v36 = 0;
    v29 = a7;
    v32 = 0;
    _MTLMessageContextPush_();
  }

  if (a9 % 0)
  {
    v34 = "pixel";
    v36 = 0;
    v29 = a9;
    v32 = 0;
    _MTLMessageContextPush_();
  }

  if (([(MTLToolsTexture *)v16 usage:v29]& 4) != 0)
  {
    v18 = [(MTLToolsTexture *)v16 parentTexture];
    v19 = a4;
    v20 = a5;
    if (v18)
    {
      do
      {
        v21 = v18;
        v20 += [(MTLToolsTexture *)v16 parentRelativeLevel];
        v19 += [(MTLToolsTexture *)v16 parentRelativeSlice];
        v18 = [v21 parentTexture];
        v16 = v21;
      }

      while (v18);
    }

    else
    {
      v21 = v16;
    }

    std::mutex::lock((v21 + 152));
    for (i = *(v21 + 232); i; i = *i)
    {
      if (v20 == i[2])
      {
        v23 = i[3];
        v25 = v19 >= v23;
        v24 = v19 - v23;
        v25 = !v25 || v24 >= i[4];
        if (!v25)
        {
          _MTLMessageContextPush_();
        }
      }
    }

    std::mutex::unlock((v21 + 152));
  }

  _MTLMessageContextEnd();
  return result;
}

double _validateGetBytes(MTLDebugTexture *a1, MTLOrigin *a2, MTLSize *a3, unint64_t a4, unint64_t a5, void *a6, unint64_t a7, char a8, unint64_t a9, unint64_t a10)
{
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  [(MTLToolsObject *)a1 device];
  _MTLMessageContextBegin_();
  if (a3->height * a3->width * a3->depth)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    depth = a3->depth;
    v24 = 0;
    width = a3->width;
    height = a3->height;
    _MTLMessageContextPush_();
    if (a6)
    {
      goto LABEL_3;
    }
  }

  _MTLMessageContextPush_();
LABEL_3:
  if ([(MTLToolsResource *)a1 storageMode:width]== 2)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsResource *)a1 storageMode]== 3)
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsTexture *)a1 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([(MTLToolsTexture *)a1 mipmapLevelCount]<= a5)
  {
    v20 = a5;
    v22 = [(MTLToolsTexture *)a1 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v17 = [(MTLToolsTexture *)a1 numFaces:v20];
  if ([(MTLToolsTexture *)a1 arrayLength]* v17 <= a4)
  {
    _validateReplaceRegion(a1, &v26);
  }

  _MTLMessageContextEnd();
  [(MTLToolsObject *)a1 device];
  [(MTLToolsTexture *)a1 pixelFormat];
  [(MTLToolsTexture *)a1 width];
  [(MTLToolsTexture *)a1 height];
  [(MTLToolsTexture *)a1 depth];
  [(MTLToolsTexture *)a1 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  [(MTLToolsObject *)a1 device];
  [(MTLToolsTexture *)a1 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  _MTLAdjustMTLSize();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  [(MTLToolsObject *)a1 device];
  _MTLMessageContextBegin_();
  if (a3->width + a2->x)
  {
    _MTLMessageContextPush_();
  }

  if (a3->height + a2->y)
  {
    _MTLMessageContextPush_();
  }

  if (a3->depth + a2->z)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  [(MTLToolsObject *)a1 device];
  _MTLMessageContextBegin_();
  [(MTLToolsObject *)a1 device];
  [(MTLToolsTexture *)a1 pixelFormat];
  [(MTLToolsTexture *)a1 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (!a7 && 0 == __PAIR128__(1, 1))
  {
    a7 = 0;
  }

  if ((a8 & 1) == 0)
  {
    _validateReplaceRegion(a1, &v26);
  }

  if (a7 % 0)
  {
    _MTLMessageContextPush_();
  }

  if (a9 % 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return result;
}

double _validateTextureView(void *a1, void *a2, unint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  [a1 device];
  _MTLMessageContextBegin_();
  if ([a1 storageMode] == 3)
  {
    _MTLMessageContextPush_();
  }

  [a1 device];
  MTLPixelFormatGetInfoForDevice();
  v6 = [a1 pixelFormat];
  v7 = [a1 device];
  if (v6 != a2)
  {
    if ([v7 supportsRelaxedTextureViewRequirements])
    {
      if (v6 == a2)
      {
        v8 = v6;
      }

      else
      {
        v8 = a2;
      }

      if (v6 > 300)
      {
        if (v6 <= 529)
        {
          if (v6 <= 523)
          {
            if (v6 <= 520)
            {
              if (v6 == 301)
              {
                if (v8 == 300)
                {
                  goto LABEL_156;
                }
              }

              else if (v6 == 520 && v8 == 500)
              {
                goto LABEL_156;
              }
            }

            else if (v6 == 521)
            {
              if (v8 == 501)
              {
                goto LABEL_156;
              }
            }

            else if (v6 == 522)
            {
              if (v8 == 502)
              {
                goto LABEL_156;
              }
            }

            else if (v8 == 503)
            {
              goto LABEL_156;
            }
          }

          else if (v6 > 526)
          {
            if (v6 == 527)
            {
              if (v8 == 507)
              {
                goto LABEL_156;
              }
            }

            else if (v6 == 528)
            {
              if (v8 == 508)
              {
                goto LABEL_156;
              }
            }

            else if (v8 == 509)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 524)
          {
            if (v8 == 504)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 525)
          {
            if (v8 == 505)
            {
              goto LABEL_156;
            }
          }

          else if (v8 == 506)
          {
            goto LABEL_156;
          }
        }

        else if (v6 > 585)
        {
          if (v6 > 631)
          {
            if (v6 == 632)
            {
              if (v8 == 631)
              {
                goto LABEL_156;
              }
            }

            else if (v6 == 634)
            {
              if (v8 == 633)
              {
                goto LABEL_156;
              }
            }

            else if (v6 == 639 && v8 == 638)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 586)
          {
            if (v8 == 90)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 625)
          {
            if (v8 == 624)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 628 && v8 == 94)
          {
            goto LABEL_156;
          }
        }

        else if (v6 > 554)
        {
          if (v6 == 555)
          {
            if (v8 == 554)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 577)
          {
            if (v8 == 576)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 579 && v8 == 578)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 530)
        {
          if (v8 == 510)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 551)
        {
          if (v8 == 550)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 553 && v8 == 552)
        {
          goto LABEL_156;
        }
      }

      else
      {
        if (v6 > 132)
        {
          switch(v6)
          {
            case 153:
              if (v8 != 152)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 154:
            case 155:
            case 156:
            case 157:
            case 158:
            case 159:
            case 160:
            case 162:
            case 164:
            case 166:
            case 168:
            case 169:
            case 170:
            case 171:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 177:
            case 178:
            case 180:
            case 182:
            case 183:
            case 184:
              goto LABEL_154;
            case 161:
              if (v8 != 160)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 163:
              if (v8 != 162)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 165:
              if (v8 != 164)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 167:
              if (v8 != 166)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 179:
              if (v8 != 178)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 181:
              if (v8 != 180)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 185:
              if (v8 != 203)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 186:
              if (v8 != 204)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 187:
              if (v8 != 205)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 188:
              if (v8 != 206)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 189:
              if (v8 != 207)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 190:
              if (v8 != 208)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 191:
              if (v8 != 209)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 192:
              if (v8 != 210)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 193:
              if (v8 != 211)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 194:
              if (v8 != 212)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 195:
              if (v8 != 213)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 196:
              if (v8 != 214)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 197:
              if (v8 != 215)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 198:
              if (v8 != 216)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 199:
              if (v8 != 217)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            case 200:
              if (v8 != 218)
              {
                goto LABEL_154;
              }

              goto LABEL_156;
            default:
              if (v6 == 133)
              {
                if (v8 == 132)
                {
                  goto LABEL_156;
                }

                goto LABEL_154;
              }

              if (v6 != 135 || v8 != 134)
              {
                goto LABEL_154;
              }

              break;
          }

          goto LABEL_156;
        }

        if (v6 > 80)
        {
          if (v6 == 81)
          {
            if (v8 == 80)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 85)
          {
            if (v8 == 84)
            {
              goto LABEL_156;
            }
          }

          else if (v6 == 131 && v8 == 130)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 11)
        {
          if (v8 == 10)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 31)
        {
          if (v8 == 30)
          {
            goto LABEL_156;
          }
        }

        else if (v6 == 71 && v8 == 70)
        {
          goto LABEL_156;
        }
      }
    }

LABEL_154:
    if (([a1 requireUsage:16] & 1) == 0)
    {
      _validateTextureView_cold_1(a1, v10);
    }
  }

LABEL_156:
  _MTLMessageContextPush_();
  if ([a1 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([a1 buffer] && (a3 > 9 || ((1 << a3) & 0x20C) == 0))
  {
    MTLTextureTypeString();
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  return result;
}

void std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__assign_unique<std::pair<SubView const,unsigned long> const*>(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *v4;
        v8[4] = *(v4 + 2);
        *(v8 + 1) = v11;
        v8[5] = *(v4 + 3);
        v10 = *v8;
        std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__node_insert_unique(a1, v8);
        v4 += 2;
        if (v10)
        {
          v12 = v4 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    if (v10)
    {
      do
      {
        v13 = *v10;
        operator delete(v10);
        v10 = v13;
      }

      while (v13);
    }
  }

  while (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__emplace_unique_key_args<SubView,std::pair<SubView const,unsigned long> const&>(a1, v4, v4);
    v4 += 2;
  }
}

void sub_22E21ABE0(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v4 = a2 + 2;
  v5 = a2[3] ^ a2[2] ^ a2[4];
  *(v4 - 1) = v5;
  v6 = std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__node_insert_unique_prepare[abi:ne200100](a1, v5, v4);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,MTLLegacySVResidencySet *>>>::__node_insert_unique_perform[abi:ne200100](a1, v2);
  return v2;
}

void *std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__node_insert_unique_prepare[abi:ne200100](uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = v3 <= a2 ? a2 % v3 : a2;
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*a1 + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (i[2] == *a3 && i[3] == a3[1] && i[4] == a3[2])
          {
            return i;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  v10 = (*(a1 + 24) + 1);
  v11 = *(a1 + 32);
  if (!v3 || (v11 * v3) < v10)
  {
    v12 = 2 * v3;
    v13 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v14 = v13 | v12;
    v15 = vcvtps_u32_f32(v10 / v11);
    if (v14 <= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::__rehash<true>(a1, v16);
  }

  return 0;
}

void *std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__emplace_unique_key_args<SubView,std::pair<SubView const,unsigned long> const&>(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ *a2 ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ *a2 ^ v4;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_22:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_22;
  }

  if (v10[3] != v3 || v10[4] != v4)
  {
    goto LABEL_22;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::find<SubView>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ *a2 ^ v4;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v3 ^ *a2 ^ v4;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = (*&v2 - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2 && result[3] == v3 && result[4] == v4)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<SubView,unsigned long>,std::__unordered_map_hasher<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::hash_t,SubView::equal_t,true>,std::__unordered_map_equal<SubView,std::__hash_value_type<SubView,unsigned long>,SubView::equal_t,SubView::hash_t,true>,std::allocator<std::__hash_value_type<SubView,unsigned long>>>::__emplace_unique_key_args<SubView,SubView const&,int>(void *a1, void *a2, uint64_t a3, int *a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 ^ *a2 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ *a2 ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_22;
  }

  if (v11[3] != v4 || v11[4] != v5)
  {
    goto LABEL_22;
  }

  return v11;
}

void emitCommandBufferDistribution(MTLTelemetryDevice *a1, MTLTelemetryCommandBufferCounttRec *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CD7168])
  {
    if (*MEMORY[0x277CD7168] != 1)
    {
      return;
    }

    printf("\n\nCommandQueue, totalCommandBuffers=%u, unretainedCommandBuffers=%u, ", a2->var0, a2->var1);
  }

  v4 = [(MTLTelemetryDevice *)a1 telemetryLog];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a2->var0;
    var1 = a2->var1;
    *buf = 67109376;
    v8 = var0;
    v9 = 1024;
    v10 = var1;
    _os_log_impl(&dword_22E0FF000, v4, OS_LOG_TYPE_DEFAULT, "CommandQueue, totalCommandBuffers=%u, unretainedCommandBuffers=%u, ", buf, 0xEu);
  }
}

void emitBlitDistribution(void *a1, uint64_t a2)
{
  v132 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CD7168];
  if (*MEMORY[0x277CD7168])
  {
    if (v3 != 1)
    {
      goto LABEL_13;
    }

    v4 = a1[87];
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[4];
    v8 = *(v4 + 1);
    if (v7)
    {
      v9 = (v8 / v7);
    }

    else
    {
      v9 = 0.0;
    }

    printf("\n\nBlitsPerBlitEncoder, minBlits=%u, maxBlits=%u, avgBlits=%f, totalBlits=%llu, countBlits=%u", v5, v6, v9, v8, v7);
  }

  v10 = [a1 telemetryLog];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[87];
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[4];
    v15 = *(v11 + 1);
    if (v14)
    {
      v16 = (v15 / v14);
    }

    else
    {
      v16 = 0.0;
    }

    *buf = 67110144;
    *v88 = v13;
    *&v88[4] = 1024;
    *&v88[6] = v12;
    *v89 = 2048;
    *&v89[2] = v16;
    *v90 = 2048;
    *&v90[2] = v15;
    LOWORD(v91) = 1024;
    *(&v91 + 2) = v14;
    _os_log_impl(&dword_22E0FF000, v10, OS_LOG_TYPE_DEFAULT, "BlitsPerBlitEncoder, minBlits=%u, maxBlits=%u, avgBlits=%f, totalBlits=%llu, countBlits=%u", buf, 0x28u);
  }

  v3 = *MEMORY[0x277CD7168];
LABEL_13:
  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_24;
    }

    v17 = a1[86];
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[4];
    v21 = *(v17 + 1);
    if (v20)
    {
      v22 = (v21 / v20);
    }

    else
    {
      v22 = 0.0;
    }

    printf("\n\nBlitsPerCommandBuffer, minBlits=%u, maxBlits=%u, avgBlits=%f, totalBlits=%llu, countBlits=%u", v18, v19, v22, v21, v20);
  }

  v23 = [a1 telemetryLog];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = a1[86];
    v26 = *v24;
    v25 = v24[1];
    v27 = v24[4];
    v28 = *(v24 + 1);
    if (v27)
    {
      v29 = (v28 / v27);
    }

    else
    {
      v29 = 0.0;
    }

    *buf = 67110144;
    *v88 = v26;
    *&v88[4] = 1024;
    *&v88[6] = v25;
    *v89 = 2048;
    *&v89[2] = v29;
    *v90 = 2048;
    *&v90[2] = v28;
    LOWORD(v91) = 1024;
    *(&v91 + 2) = v27;
    _os_log_impl(&dword_22E0FF000, v23, OS_LOG_TYPE_DEFAULT, "BlitsPerCommandBuffer, minBlits=%u, maxBlits=%u, avgBlits=%f, totalBlits=%llu, countBlits=%u", buf, 0x28u);
  }

LABEL_24:
  v30 = *(a2 + 16);
  if (!v30)
  {
    return;
  }

  do
  {
    Name = MTLPixelFormatGetName();
    v32 = 0;
    v83 = v30;
    do
    {
      v33 = 0;
      v84 = v30;
      do
      {
        v85 = v33;
        if (v33)
        {
          v34 = "depthStencil";
        }

        else
        {
          v34 = "none";
        }

        v35 = 0x1FFFFFFFFFFFFFD9;
        do
        {
          if (!LODWORD(v30[v35 + 42]))
          {
            goto LABEL_58;
          }

          if (*MEMORY[0x277CD7168])
          {
            if (*MEMORY[0x277CD7168] != 1)
            {
              goto LABEL_58;
            }

            v36 = stringifyMTLTelemetryBlitType(v32);
            v37 = "false";
            if (v35 == -39)
            {
              v37 = "true";
            }

            v38 = &v30[v35];
            v39 = v30[v35 + 45];
            v40 = v30[v35 + 44];
            v41 = 0.0;
            v42 = 0.0;
            if (v39)
            {
              v42 = (v40 / v39);
            }

            v43 = *(v38 + 86);
            v44 = *(v38 + 87);
            v45 = *(v38 + 92);
            v46 = *(v38 + 93);
            v47 = *(v38 + 96);
            v48 = v38[47];
            if (v47)
            {
              v41 = (v48 / v47);
            }

            v49 = &v30[v35];
            v50 = v30[v35 + 51];
            v51 = v30[v35 + 50];
            v52 = 0.0;
            v53 = 0.0;
            if (v50)
            {
              v53 = (v51 / v50);
            }

            v54 = *(v49 + 104);
            v55 = *(v49 + 105);
            v56 = *(v49 + 108);
            v57 = v49[53];
            if (v56)
            {
              v52 = (v57 / v56);
            }

            printf("\n\n%s, format=%s, options=%s, fullBlit=%s, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u, minBytesPerRow=%u, maxBytesPerRow=%u, avgBytesPerRow=%f, totalBytesPerRow=%llu, countBytesPerRow=%u, minImageBytes=%u, maxImageBytes=%u, avgImageBytes=%f, totalImageBytes=%llu, countImageBytes=%u, minBufferBytes=%u, maxBufferBytes=%u, avgBufferBytes=%f, totalBufferBytes=%llu, countBufferBytes=%u", v36, Name, v34, v37, v43, v44, v42, v40, v39, v45, v46, v41, v48, v47, LODWORD(v30[v35 + 49]), HIDWORD(v30[v35 + 49]), v53, v51, v50, v54, v55, v52, v57, v56);
          }

          v58 = [a1 telemetryLog];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = stringifyMTLTelemetryBlitType(v32);
            if (v35 == -39)
            {
              v60 = "true";
            }

            else
            {
              v60 = "false";
            }

            v61 = &v30[v35];
            v62 = v30[v35 + 45];
            v63 = v30[v35 + 44];
            v64 = 0.0;
            v65 = 0.0;
            if (v62)
            {
              v65 = (v63 / v62);
            }

            v66 = *(v61 + 86);
            v67 = *(v61 + 87);
            v68 = *(v61 + 92);
            v69 = *(v61 + 93);
            v70 = *(v61 + 96);
            v71 = v61[47];
            if (v70)
            {
              v64 = (v71 / v70);
            }

            v72 = &v30[v35];
            v73 = v30[v35 + 49];
            v74 = HIDWORD(v30[v35 + 49]);
            v75 = v30[v35 + 51];
            v76 = v30[v35 + 50];
            v77 = 0.0;
            v78 = 0.0;
            if (v75)
            {
              v78 = (v76 / v75);
            }

            v79 = *(v72 + 104);
            v80 = *(v72 + 105);
            v81 = *(v72 + 108);
            v82 = v72[53];
            if (v81)
            {
              v77 = (v82 / v81);
            }

            *buf = 136321026;
            *v88 = v59;
            *&v88[8] = 2080;
            *v89 = Name;
            *&v89[8] = 2080;
            *v90 = v34;
            *&v90[8] = 2080;
            v91 = v60;
            v92 = 1024;
            v93 = v66;
            v94 = 1024;
            v95 = v67;
            v96 = 2048;
            v97 = v65;
            v98 = 2048;
            v99 = v63;
            v100 = 1024;
            v101 = v62;
            v102 = 1024;
            v103 = v68;
            v104 = 1024;
            v105 = v69;
            v106 = 2048;
            v107 = v64;
            v108 = 2048;
            v109 = v71;
            v110 = 1024;
            v111 = v70;
            v112 = 1024;
            v113 = v73;
            v114 = 1024;
            v115 = v74;
            v116 = 2048;
            v117 = v78;
            v118 = 2048;
            v119 = v76;
            v120 = 1024;
            v121 = v75;
            v122 = 1024;
            v123 = v79;
            v124 = 1024;
            v125 = v80;
            v126 = 2048;
            v127 = v77;
            v128 = 2048;
            v129 = v82;
            v130 = 1024;
            v131 = v81;
            _os_log_impl(&dword_22E0FF000, v58, OS_LOG_TYPE_DEFAULT, "%s, format=%s, options=%s, fullBlit=%s, minSamples=%u, maxSamples=%u, avgSamples=%f, totalSamples=%llu, countSamples=%u, minBytesPerRow=%u, maxBytesPerRow=%u, avgBytesPerRow=%f, totalBytesPerRow=%llu, countBytesPerRow=%u, minImageBytes=%u, maxImageBytes=%u, avgImageBytes=%f, totalImageBytes=%llu, countImageBytes=%u, minBufferBytes=%u, maxBufferBytes=%u, avgBufferBytes=%f, totalBufferBytes=%llu, countBufferBytes=%u", buf, 0xC2u);
          }

LABEL_58:
          v35 += 13;
        }

        while (v35 * 8);
        v33 = v85 + 1;
        v30 += 39;
      }

      while (v85 != 2);
      ++v32;
      v30 = v84 + 117;
    }

    while (v32 != 6);
    v30 = *v83;
  }

  while (*v83);
}

__CFString *MTLTextureStringFromType(MTLTextureType a1)
{
  if (a1 > (MTLTextureTypeTextureBuffer|MTLTextureTypeCubeArray))
  {
    return @"Unknown";
  }

  else
  {
    return off_2787B51C8[a1];
  }
}

uint64_t MTLLegacySVAccelerationStructureTypeFromDescriptor(MTLAccelerationStructureDescriptor *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

__CFString *MTLLegacySVAccelerationStructureStringFromType(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 2)
  {
    v1 = @"MTLInstanceAccelerationStructure";
  }

  if (a1 == 1)
  {
    return @"MTLPrimitiveAccelerationStructure";
  }

  else
  {
    return v1;
  }
}

void MTLGPUDebugSetValidationChecksOptions(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = [a1 UTF8String];
  _os_log_debug_impl(&dword_22E0FF000, a2, OS_LOG_TYPE_DEBUG, "%s", &v3, 0xCu);
}

void GPUDebugBufferDescriptorHeap::init(id *a1)
{
  [*a1 length];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void GPUDebugBufferDescriptorHeap::createHandle()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void MTLGPUDebugSetValidationChecksOptions(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLGPUDebugParsePerPSOList()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

uint64_t checkMotionParameter(void *a1)
{
  [a1 motionStartTime];
  v2 = [a1 motionEndTime];
  return OUTLINED_FUNCTION_7(v2, v3, @"Primitive motion start time (%f) must be before or at the same time with motion end time (%f)");
}

{
  [a1 motionStartTime];
  [a1 motionEndTime];
  return MTLReportFailure();
}

uint64_t checkPrimitiveData(void *a1)
{
  [a1 primitiveDataElementSize];
  v3 = [OUTLINED_FUNCTION_6() primitiveDataStride];
  return OUTLINED_FUNCTION_7(v3, v1, @"primitiveDataElementSize (%lu) cannot be larger than primitiveDataStride (%lu)");
}

{
  v3 = [a1 primitiveDataStride];
  return OUTLINED_FUNCTION_7(v3, v1, @"primitiveDataStride requires 4 byte alignment, found offset %lu.");
}

{
  [a1 primitiveDataElementSize];
  [OUTLINED_FUNCTION_1_2() primitiveDataStride];
  return MTLReportFailure();
}

{
  [a1 primitiveDataBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "primitiveDataBuffer")];
  return MTLReportFailure();
}

{
  [a1 primitiveDataBufferOffset];
  return MTLReportFailure();
}

{
  [a1 primitiveDataStride];
  return MTLReportFailure();
}

uint64_t checkPrimitiveData()
{
  OUTLINED_FUNCTION_0_1();
  [v1 primitiveDataBuffer];
  [OUTLINED_FUNCTION_9() primitiveDataStride];
  [v0 primitiveDataElementSize];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  return MTLReportFailure();
}

{
  OUTLINED_FUNCTION_3_0();
  [objc_msgSend(v1 "primitiveDataBuffer")];
  [OUTLINED_FUNCTION_6() primitiveDataBufferOffset];
  [OUTLINED_FUNCTION_4_1() primitiveDataStride];
  [v0 primitiveDataElementSize];
  return MTLReportFailure();
}

uint64_t checkMTL4AccelerationStructureDescriptorWithRefitOptions()
{
  OUTLINED_FUNCTION_1_0();
  [v0 maxInstanceCount];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v0 instanceDescriptorBuffer];
  [OUTLINED_FUNCTION_9() maxInstanceCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v0 motionTransformBuffer];
  [OUTLINED_FUNCTION_9() maxMotionTransformCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_1_0();
  [v0 instanceCount];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v0 instanceDescriptorBuffer];
  [OUTLINED_FUNCTION_9() instanceCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v0 motionTransformBuffer];
  [OUTLINED_FUNCTION_9() motionTransformCount];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "geometryDescriptors")];
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v0 segmentCount];
  [OUTLINED_FUNCTION_4() indexBuffer];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v1 triangleCount];
  [v0 indexBuffer];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v1 triangleCount];
  [v0 indexBuffer];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

{
  OUTLINED_FUNCTION_0_1();
  [v1 triangleCount];
  [v0 vertexBuffer];
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_0();
  return _MTLMessageContextPush_();
}

uint64_t checkMTL4AccelerationStructureDescriptorWithRefitOptions(void *a1)
{
  v3 = [a1 instanceDescriptorType];
  return OUTLINED_FUNCTION_7(v3, v1, @"Instance descriptor type (%lu) must be MTLAccelerationStructureInstanceDescriptorTypeIndirect or MTLAccelerationStructureInstanceDescriptorTypeIndirectMotion");
}

{
  [a1 instanceDescriptorStride];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Instance descriptor stride (%lu) must be a multiple of %lu bytes");
}

{
  v1 = [a1 instanceCountBuffer];
  return OUTLINED_FUNCTION_7(v1, v2, @"Instance count buffer size (%lu) must be at least the size of a 32-bit unsigned integer");
}

{
  [a1 motionTransformStride];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Motion transform stride (%lu) must be a multiple of %lu bytes");
}

{
  v1 = [a1 motionTransformCountBuffer];
  return OUTLINED_FUNCTION_7(v1, v2, @"Motion transform count buffer size (%lu) must be at least the size of a 32-bit unsigned integer");
}

{
  v3 = [a1 instanceDescriptorType];
  return OUTLINED_FUNCTION_7(v3, v1, @"Instance descriptor type (%lu) is not a valid MTLAccelerationStructureInstanceDescriptorType");
}

{
  v3 = [objc_msgSend(a1 "geometryDescriptors")];
  return OUTLINED_FUNCTION_7(v3, v1, @"Number of geometry descriptors (%lu) must be greater than 0");
}

{
  v3 = [a1 intersectionFunctionTableOffset];
  return OUTLINED_FUNCTION_7(v3, v1, @"Geometry descriptor intersection function table offset (%lu) must be less than 2^24");
}

{
  [a1 controlPointBuffer];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Control point buffer address (%lu) must be a multiple of %lu bytes");
}

{
  [a1 radiusBuffer];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Radius buffer address (%lu) must be a multiple of %lu bytes");
}

{
  v3 = [a1 boundingBoxStride];
  return OUTLINED_FUNCTION_7(v3, v1, @"Bounding box stride (%lu) must be at least %lu bytes");
}

{
  [a1 boundingBoxStride];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Bounding box stride (%lu) must be a multiple of %lu bytes");
}

{
  [a1 boundingBoxBuffer];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Bounding box buffer address (%lu) must be a multiple of %lu bytes");
}

{
  [a1 boundingBoxBuffer];
  [a1 boundingBoxStride];
  v4 = [a1 boundingBoxCount];
  return OUTLINED_FUNCTION_7(v4, v2, @"Bounding box buffer size (%lu) must be at least the bounding box stride (%lu) times the number of bounding boxes (%lu)");
}

{
  [a1 vertexBuffer];
  OUTLINED_FUNCTION_3();
  return OUTLINED_FUNCTION_7(v1, v2, @"Vertex buffer address (%lu) must be a multiple of %lu bytes");
}

double LegacySVMetalBufferHeap::grow(uint8_t *buf, unint64_t *a2, double *a3, os_log_t log)
{
  v4 = vcvts_n_f32_u64(*a2, 0x14uLL);
  *buf = 134217984;
  *a3 = v4;
  _os_log_debug_impl(&dword_22E0FF000, log, OS_LOG_TYPE_DEBUG, "BufferHeap::MemoryAllocated (MB) - %.2f", buf, 0xCu);
  return result;
}

double LegacySVMetalBufferHeap::allocBuffer(unint64_t *a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = vcvts_n_f32_u64(*a1, 0x14uLL);
  v4 = vcvts_n_f32_u64(*(a2 + 120), 0x14uLL);
  v6 = 134218240;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_debug_impl(&dword_22E0FF000, log, OS_LOG_TYPE_DEBUG, "BufferHeap::MemoryUsed (MB) - %.2f/%.2f", &v6, 0x16u);
  return result;
}

void MTLLegacySVSetValidationChecksOptions(void *a1)
{
  [a1 UTF8String];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

uint64_t validateNewTexture()
{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

uint64_t validateNewTexture(void *a1)
{
  [a1 textureType];
  MTLTextureTypeString();
  return MTLReportFailure();
}

uint64_t validateNewTexture(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  [a1 height];
  [a1 arrayLength];
  [a4 length];
  return MTLReportFailure();
}

uint64_t validateBeginCommandBufferWithAllocatorCommon(void *a1, void *a2, void *a3, uint64_t a4)
{
  [objc_msgSend(a1 "label")];
  [objc_msgSend(a2 "label")];
  [objc_msgSend(a3 "label")];
  return _MTLMessageContextPush_();
}

uint64_t validateStoreLoadTransition(id *a1)
{
  if (![*a1 label])
  {
    [MEMORY[0x277CBEB68] null];
  }

  return MTLReportFailure();
}

{
  if (![*a1 label])
  {
    [MEMORY[0x277CBEB68] null];
  }

  return MTLReportFailure();
}

uint64_t validateAttachmentOnDevice(void *a1, uint64_t a2)
{
  if (*a1 > 4uLL)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = off_2787B49B0[*a1];
  }

  [(__CFString *)v2 UTF8String];
  return _MTLMessageContextPush_();
}

{
  if (*a1 > 2uLL)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = off_2787B49D8[*a1];
  }

  [(__CFString *)v2 UTF8String];
  return _MTLMessageContextPush_();
}

uint64_t verifyCopyFromTensorToTensor_cold_1(void *a1, void *a2, uint64_t a3)
{
  [a1 dataType];
  MTLTensorDataTypeString();
  [a2 dataType];
  MTLTensorDataTypeString();
  return _MTLMessageContextPush_();
}

uint64_t checkBuffer()
{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_5(void *a1)
{
  [a1 instanceDescriptorStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_8(void *a1)
{
  [objc_msgSend(a1 "instanceDescriptorBuffer")];
  [OUTLINED_FUNCTION_1_2() instanceDescriptorBufferOffset];
  [a1 instanceDescriptorStride];
  [OUTLINED_FUNCTION_7_0() maxInstanceCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_9(void *a1)
{
  [a1 instanceCountBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_10(void *a1)
{
  [objc_msgSend(a1 "instanceCountBuffer")];
  [OUTLINED_FUNCTION_1_2() instanceCountBufferOffset];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_12(void *a1)
{
  [a1 motionTransformStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_14(void *a1)
{
  [a1 motionTransformBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_15()
{
  OUTLINED_FUNCTION_3_0();
  [objc_msgSend(v0 "motionTransformBuffer")];
  [OUTLINED_FUNCTION_6() motionTransformBufferOffset];
  [OUTLINED_FUNCTION_4_1() maxMotionTransformCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_16(void *a1)
{
  [a1 motionTransformCountBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_17(void *a1)
{
  [objc_msgSend(a1 "motionTransformCountBuffer")];
  [OUTLINED_FUNCTION_1_2() motionTransformCountBufferOffset];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_22(void *a1)
{
  [a1 instanceDescriptorStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_24(void *a1)
{
  [a1 instanceDescriptorBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_25(void *a1)
{
  [objc_msgSend(a1 "instanceDescriptorBuffer")];
  [OUTLINED_FUNCTION_1_2() instanceDescriptorBufferOffset];
  [a1 instanceDescriptorStride];
  [OUTLINED_FUNCTION_7_0() instanceCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_29(void *a1)
{
  [a1 motionTransformStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_31(void *a1)
{
  [a1 motionTransformBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_32()
{
  OUTLINED_FUNCTION_3_0();
  [objc_msgSend(v0 "motionTransformBuffer")];
  [OUTLINED_FUNCTION_6() motionTransformBufferOffset];
  [OUTLINED_FUNCTION_4_1() motionTransformCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_40(void *a1)
{
  [a1 motionKeyframeCount];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "controlPointBuffers")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_43(void *a1)
{
  [objc_msgSend(a1 "controlPointBuffers")];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "radiusBuffers")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_44(void *a1)
{
  [a1 offset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_45(void *a1)
{
  [a1 offset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_47()
{
  OUTLINED_FUNCTION_3_0();
  [v0 segmentCount];
  [OUTLINED_FUNCTION_6() indexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_4_1() "indexBuffer")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_53(void *a1)
{
  [a1 controlPointBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_54(void *a1)
{
  [a1 radiusBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_56()
{
  OUTLINED_FUNCTION_3_0();
  [v0 segmentCount];
  [OUTLINED_FUNCTION_6() indexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_4_1() "indexBuffer")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_57(void *a1)
{
  [a1 motionKeyframeCount];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "boundingBoxBuffers")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_59(void *a1)
{
  [a1 boundingBoxStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_60(void *a1)
{
  [a1 boundingBoxStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_61()
{
  OUTLINED_FUNCTION_3_0();
  [objc_msgSend(v0 "buffer")];
  [OUTLINED_FUNCTION_6() offset];
  [OUTLINED_FUNCTION_1_2() boundingBoxStride];
  [OUTLINED_FUNCTION_7_0() boundingBoxCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_63(void *a1)
{
  [a1 boundingBoxStride];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_64(void *a1)
{
  [a1 boundingBoxBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_65(void *a1)
{
  [objc_msgSend(a1 "boundingBoxBuffer")];
  [OUTLINED_FUNCTION_1_2() boundingBoxBufferOffset];
  [a1 boundingBoxStride];
  [OUTLINED_FUNCTION_7_0() boundingBoxCount];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_67(void *a1)
{
  [a1 motionKeyframeCount];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "vertexBuffers")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_72(void *a1)
{
  [a1 offset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_74()
{
  OUTLINED_FUNCTION_3_0();
  [v0 triangleCount];
  [OUTLINED_FUNCTION_6_0() indexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_6() "indexBuffer")];
  OUTLINED_FUNCTION_5_1();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_75(void *a1)
{
  [a1 offset];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "buffer")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_76(void *a1)
{
  [a1 triangleCount];
  [OUTLINED_FUNCTION_6_0() offset];
  [objc_msgSend(OUTLINED_FUNCTION_6() "buffer")];
  OUTLINED_FUNCTION_5_1();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_82(void *a1)
{
  [a1 vertexBufferOffset];
  OUTLINED_FUNCTION_3();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_84()
{
  OUTLINED_FUNCTION_3_0();
  [v0 triangleCount];
  [OUTLINED_FUNCTION_6_0() indexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_6() "indexBuffer")];
  OUTLINED_FUNCTION_5_1();
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_85(void *a1)
{
  [a1 vertexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_1_2() "vertexBuffer")];
  return MTLReportFailure();
}

uint64_t checkAccelerationStructureDescriptorWithRefitOptions_cold_86()
{
  OUTLINED_FUNCTION_3_0();
  [v0 triangleCount];
  [OUTLINED_FUNCTION_6_0() vertexBufferOffset];
  [objc_msgSend(OUTLINED_FUNCTION_6() "vertexBuffer")];
  OUTLINED_FUNCTION_5_1();
  return MTLReportFailure();
}

uint64_t checkCurveBasis()
{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

uint64_t _validateTextureBufferDescriptor_cold_1(void *a1, void *a2)
{
  [a1 width];
  v5 = [a2 maxTextureBufferWidth];
  return OUTLINED_FUNCTION_7(v5, v3, @"texture buffer width (%llu) must be less than %llu");
}

uint64_t validateSharedTextureHandleWithDevice()
{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

void MetalBufferHeap::grow(uint8_t *buf, unint64_t a2, double *a3, os_log_t log)
{
  *buf = 134217984;
  *a3 = vcvts_n_f32_u64(a2, 0x14uLL);
  _os_log_debug_impl(&dword_22E0FF000, log, OS_LOG_TYPE_DEBUG, "BufferHeap::MemoryAllocated (MB) - %.2f", buf, 0xCu);
}

void MetalBufferHeap::allocBuffer(unint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = vcvts_n_f32_u64(*(a2 + 120), 0x14uLL);
  v4 = 134218240;
  v5 = vcvts_n_f32_u64(a1, 0x14uLL);
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_22E0FF000, log, OS_LOG_TYPE_DEBUG, "BufferHeap::MemoryUsed (MB) - %.2f/%.2f", &v4, 0x16u);
}

uint64_t newArgumentEncoder(void *a1, void *a2)
{
  [a1 name];
  [a2 name];
  [a1 name];
  return MTLReportFailure();
}

uint64_t validateNewFunctionWithConstantArguments()
{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

{
  return MTLReportFailure();
}

uint64_t validateFunctionArguments(uint64_t a1, uint64_t a2)
{
  LOBYTE(v2) = 1;
  switch(a1)
  {
    case 0:
      if (a2 == 1)
      {
        goto LABEL_15;
      }

      break;
    case 1:
      if (!a2)
      {
        goto LABEL_15;
      }

      break;
    case 2:
      if (a2 == 3)
      {
        goto LABEL_15;
      }

      break;
    case 3:
      if (a2 == 2)
      {
        goto LABEL_15;
      }

      break;
    case 4:
      v5 = a2 != 8 && a2 != 2;
      v2 = v5 << 31 >> 31;
      break;
    case 5:
      if (a2 == 6)
      {
        goto LABEL_15;
      }

      break;
    case 6:
      if (a2 == 5)
      {
        goto LABEL_15;
      }

      break;
    case 8:
      if ((a2 - 3) < 2)
      {
LABEL_15:
        LOBYTE(v2) = 0;
      }

      else
      {
        LOBYTE(v2) = 1;
      }

      break;
    default:
      return v2 & 1;
  }

  return v2 & 1;
}

uint64_t _MTLDebugValidateDeferredStoreActionOnDevice_cold_1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 4)
  {
    v2 = @"Unknown";
  }

  else
  {
    v2 = off_2787B5010[v1];
  }

  [(__CFString *)v2 UTF8String];
  OUTLINED_FUNCTION_1_3();
  return _MTLMessageContextPush_();
}

uint64_t validateMTLSamplerDescriptor_cold_2(void *a1, uint64_t a2)
{
  [a1 pixelFormat];
  MTLPixelFormatGetName();
  return _MTLMessageContextPush_();
}

uint64_t validateMTLSamplerDescriptor_cold_3(void *a1, uint64_t a2)
{
  [a1 borderColor];
  MTLSamplerBorderColorString();
  return _MTLMessageContextPush_();
}

uint64_t _validateReplaceRegion(void *a1, uint64_t a2)
{
  [a1 numFaces];
  [a1 arrayLength];
  return _MTLMessageContextPush_();
}

{
  [a1 textureType];
  MTLTextureTypeString();
  return _MTLMessageContextPush_();
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
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