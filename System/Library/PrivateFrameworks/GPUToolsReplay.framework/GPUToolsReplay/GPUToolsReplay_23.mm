id _MakeMTLTextureDescriptor()
{
  v0 = MakeMTLTextureDescriptor();
  v1 = [v0 resourceOptions];
  v2 = v1 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  if ((qword_27F09CF90 & 0x100000) == 0)
  {
    v2 = v1;
  }

  if ((qword_27F09CF90 & 0x80000) != 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFFCFFLL;
  }

  else
  {
    v3 = v2;
  }

  [v0 setResourceOptions:v3];

  return v0;
}

void MTLComputeCommandEncoder_useHeap(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  [v9 useHeap:a5];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *(v10 + 40);
    v13 = *a2;
    v14 = *(a3 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __MTLComputeCommandEncoder_useHeap_block_invoke;
    v15[3] = &unk_279658188;
    v16 = v9;
    UseHeapTextures(v12, v11, v13, v14, v15);
  }
}

void MTLComputeCommandEncoder_useHeaps_count(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  [v20 useHeaps:a5 count:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v11 = 0;
    v19 = *(*a1 + 16);
    do
    {
      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v19);
      v13 = a6;
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = *&v12[8 * v11];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __MTLComputeCommandEncoder_useHeaps_count_block_invoke;
      v21[3] = &unk_279658188;
      v22 = v20;
      v18 = v14;
      a6 = v13;
      UseHeapTextures(v15, v18, v16, v17, v21);

      ++v11;
    }

    while (v13 != v11);
  }
}

id MTLDevice_newAccelerationStructureWithDescriptor(id *a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = *(*a1 + 2);
  v12 = a1[1];
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v16 = [a1[1] deviceForKey:*a3];
    goto LABEL_14;
  }

  v13 = [v9 heapAccelerationStructureSizeAndAlignWithDescriptor:v10];
  if (!v13 || (v14 = v13, v15 = objc_alloc_init(MEMORY[0x277CD6E40]), [v15 setType:0], objc_msgSend(v15, "setSize:", v14), objc_msgSend(v15, "setResourceOptions:", 32), v16 = objc_msgSend(v9, "newHeapWithDescriptor:", v15), v15, !v16))
  {
    if (s_logUsingOsLog == 1)
    {
      v18 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a3 + 8);
        *buf = 134217984;
        *&buf[4] = v31;
        _os_log_error_impl(&dword_24D764000, v18, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v19 = *MEMORY[0x277D85DF8];
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", *(a3 + 8)];
      fprintf(v19, "%s\n", [v20 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v17 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v32 = *(a3 + 8);
      *buf = 134218240;
      *&buf[4] = v32;
      *&buf[12] = 2048;
      *&buf[14] = [v16 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v17, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v33 = *MEMORY[0x277D85E08];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", *(a3 + 8), objc_msgSend(v16, "gpuAddress")];
    fprintf(v33, "%s\n", [v30 UTF8String]);
  }

LABEL_14:
  if ((GT_SUPPORT_0 & 0x100000) != 0)
  {
    memset(buf, 0, sizeof(buf));
    v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v11);
    v26 = [v12 resources];
    v27 = MakeMTLAccelerationStructureDescriptor(v25, v26);
    if (v16)
    {
      objc_msgSend_accelerationStructureSizesWithDescriptor_(v16);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    Object = GTMTLSMContext_getObject(**(*a1 + 5), *(a3 + 8), *a2);
    v24 = [v16 newAccelerationStructureWithSize:*buf resourceIndex:Object[20]];
  }

  else
  {
    v21 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v11);
    v22 = [v12 resources];
    v23 = MakeMTLAccelerationStructureDescriptor(v21, v22);
    v24 = [v16 newAccelerationStructureWithDescriptor:v23];
  }

  return v24;
}

id MTLDevice_newAccelerationStructureWithSize(id *a1, unint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = v9;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v14 = [a1[1] deviceForKey:*a3];
    goto LABEL_14;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a5];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setResourceOptions:", 32), v14 = objc_msgSend(v10, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = a3[1];
        *buf = 134217984;
        v27 = v24;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a3[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v25 = a3[1];
      *buf = 134218240;
      v27 = v25;
      v28 = 2048;
      v29 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v22 = *MEMORY[0x277D85E08];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a3[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v22, "%s\n", [v23 UTF8String]);
  }

LABEL_14:
  if ((GT_SUPPORT_0 & 0x100000) != 0)
  {
    v19 = [v14 newAccelerationStructureWithSize:a3[2] resourceIndex:{GTMTLSMContext_getObject(**(*a1 + 5), a3[1], *a2)[20]}];
  }

  else
  {
    v19 = [v14 newAccelerationStructureWithSize:a3[2]];
  }

  v20 = v19;

  return v20;
}

id MTLDevice_newAccelerationStructureWithSize_resourceIndex(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
LABEL_13:
    v14 = [*(a1 + 8) deviceForKey:*a2];
    goto LABEL_14;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a4];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setResourceOptions:", 32), v14 = objc_msgSend(v10, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = a2[1];
        *buf = 134217984;
        v26 = v23;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_13;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v24 = a2[1];
      *buf = 134218240;
      v26 = v24;
      v27 = 2048;
      v28 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

LABEL_14:
  v19 = [v14 newAccelerationStructureWithSize:a4 resourceIndex:a5];

  return v19;
}

id MTLDevice_newAccelerationStructureWithSize_withDescriptor(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if ((qword_27F09CF90 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  v11 = [v9 heapAccelerationStructureSizeAndAlignWithSize:a4];
  if (!v11 || (v12 = v11, v13 = objc_alloc_init(MEMORY[0x277CD6E40]), [v13 setType:0], objc_msgSend(v13, "setSize:", v12), objc_msgSend(v13, "setStorageMode:", objc_msgSend(v10, "storageMode")), v14 = objc_msgSend(v9, "newHeapWithDescriptor:", v13), v13, !v14))
  {
    if (s_logUsingOsLog == 1)
    {
      v16 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v25 = a2[1];
        *buf = 134217984;
        v28 = v25;
        _os_log_error_impl(&dword_24D764000, v16, OS_LOG_TYPE_ERROR, "MTLAccelerationStructure %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v17 = *MEMORY[0x277D85DF8];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v17, "%s\n", [v18 UTF8String]);
    }

    goto LABEL_18;
  }

  if (s_logUsingOsLog == 1)
  {
    v15 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v26 = a2[1];
      *buf = 134218240;
      v28 = v26;
      v29 = 2048;
      v30 = [v14 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v15, OS_LOG_TYPE_DEBUG, "MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v19 = *MEMORY[0x277D85E08];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v14, "gpuAddress")];
    fprintf(v19, "%s\n", [v20 UTF8String]);
  }

  v21 = [v10 forceResourceIndex] ? objc_msgSend(v14, "newAccelerationStructureWithSize:resourceIndex:", a4, objc_msgSend(v10, "resourceIndex")) : objc_msgSend(v14, "newAccelerationStructureWithSize:", a4);
  v22 = v21;

  if (!v22)
  {
LABEL_18:
    v23 = [*(a1 + 8) deviceForKey:*a2];
    v22 = [v23 newAccelerationStructureWithSize:a4 withDescriptor:v10];
  }

  return v22;
}

id _MakeMTLComputePipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLComputePipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLComputePipelineDescriptor_initializePoolToken, &__block_literal_global_90);
  }

  v6 = MakeMTLComputePipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && a1[95] + a1[97] + a1[101])
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLComputePipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v13[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v13[1] = v9;
    memset(v12, 0, sizeof(v12));
    MakeMTLLinkedFunctionsWithResourceIndices(v12, (a1 + 94), v13, _MakeMTLComputePipelineDescriptor_pool);
    v10 = [v6 linkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v12);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_98_3064);
  }

  v6 = MakeMTLRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && (a1[134] + a1[136] + a1[140] || a1[110] + a1[112] + a1[116]))
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v15[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v15[1] = v9;
    memset(v14, 0, sizeof(v14));
    MakeMTLLinkedFunctionsWithResourceIndices(v14, (a1 + 133), v15, _MakeMTLRenderPipelineDescriptor_pool);
    memset(v13, 0, sizeof(v13));
    MakeMTLLinkedFunctionsWithResourceIndices(v13, (a1 + 109), v15, _MakeMTLRenderPipelineDescriptor_pool);
    v10 = [v6 vertexLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v14);

    v11 = [v6 fragmentLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v11, v13);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLMeshRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLMeshRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLMeshRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_100);
  }

  v6 = MakeMTLMeshRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && (a1[33] + a1[35] + a1[39] || a1[25] + a1[27] + a1[31] || a1[17] + a1[19] + a1[23]))
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLMeshRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v17[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v17[1] = v9;
    memset(v16, 0, sizeof(v16));
    MakeMTLLinkedFunctionsWithResourceIndices(v16, (a1 + 32), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    memset(v15, 0, sizeof(v15));
    MakeMTLLinkedFunctionsWithResourceIndices(v15, (a1 + 24), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    memset(v14, 0, sizeof(v14));
    MakeMTLLinkedFunctionsWithResourceIndices(v14, (a1 + 16), v17, _MakeMTLMeshRenderPipelineDescriptor_pool);
    v10 = [v6 objectLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v16);

    v11 = [v6 meshLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v11, v15);

    v12 = [v6 fragmentLinkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v12, v14);

    apr_pool_destroy(v8);
  }

  return v6;
}

id _MakeMTLTileRenderPipelineDescriptor(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (_MakeMTLTileRenderPipelineDescriptor_initializePoolToken != -1)
  {
    dispatch_once(&_MakeMTLTileRenderPipelineDescriptor_initializePoolToken, &__block_literal_global_102);
  }

  v6 = MakeMTLTileRenderPipelineDescriptor(a1, v5);
  [v6 setBinaryArchives:insertBinaryArchives];
  if ((g_enableIndexedResourceType & 0x400) != 0 && a1[1] + a1[3] + a1[7])
  {
    newpool = 0;
    apr_pool_create_ex(&newpool, _MakeMTLTileRenderPipelineDescriptor_pool, 0, v7);
    v8 = newpool;
    v13[0] = MakeFunctionHandleMaps(*(a3 + 272), newpool);
    v13[1] = v9;
    memset(v12, 0, sizeof(v12));
    MakeMTLLinkedFunctionsWithResourceIndices(v12, a1, v13, _MakeMTLTileRenderPipelineDescriptor_pool);
    v10 = [v6 linkedFunctions];
    PopulateLinkedFunctionsResourceIndices(v10, v12);

    apr_pool_destroy(v8);
  }

  return v6;
}

id MTLDevice_newTextureWithDescriptor(uint64_t a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ((qword_27F09CF90 & 0x80000000) == 0 || (v9 = [v7 heapTextureSizeAndAlignWithDescriptor:v8]) == 0)
  {
LABEL_16:
    v13 = [*(a1 + 8) deviceForKey:*a2];
    goto LABEL_17;
  }

  v10 = v9;
  v11 = objc_alloc_init(MEMORY[0x277CD6E40]);
  [v11 setType:0];
  [v11 setSize:v10];
  [v11 setResourceOptions:{objc_msgSend(v8, "resourceOptions")}];
  [v11 setStorageMode:{2 * ((objc_msgSend(v11, "storageMode") & 0xFFFFFFFFFFFFFFFELL) == 2)}];
  v12 = [v7 newHeapWithDescriptor:v11];
  if (!v12)
  {
    if (s_logUsingOsLog)
    {
      v15 = gt_tagged_log(0xAu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = a2[1];
        *buf = 134217984;
        v25 = v23;
        _os_log_error_impl(&dword_24D764000, v15, OS_LOG_TYPE_ERROR, "MTLTexture %lld could not be backed by a MTLHeap", buf, 0xCu);
      }
    }

    else
    {
      v18 = *MEMORY[0x277D85DF8];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture %lld could not be backed by a MTLHeap", a2[1]];
      fprintf(v18, "%s\n", [v19 UTF8String]);
    }

    goto LABEL_16;
  }

  v13 = v12;
  if (s_logUsingOsLog)
  {
    v14 = gt_tagged_log(0xAu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v22 = a2[1];
      *buf = 134218240;
      v25 = v22;
      v26 = 2048;
      v27 = [v13 gpuAddress];
      _os_log_debug_impl(&dword_24D764000, v14, OS_LOG_TYPE_DEBUG, "MTLTexture %lld backed by address 0x%llx (MTLHeap)", buf, 0x16u);
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture %lld backed by address 0x%llx (MTLHeap)", a2[1], objc_msgSend(v12, "gpuAddress")];
    fprintf(v16, "%s\n", [v17 UTF8String]);
  }

LABEL_17:
  v20 = [v13 newTextureWithDescriptor:v8];

  return v20;
}

id MTLHeap_newTextureWithDescriptor(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = *a1;
  if ((qword_27F09CF90 & 0x200000000) == 0 || ([*(v11 + 48) heapExtractedTextures], v12 = objc_claimAutoreleasedReturnValue(), v12, !v12))
  {
    v21 = [v10 resourceOptions];
    v22 = v21 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v22 = v21;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v23 = v22;
    }

    [v10 setResourceOptions:v23];
    goto LABEL_16;
  }

  v13 = [*(v11 + 48) heapExtractedTextures];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a3 + 8)];
  v15 = [v13 indexOfObject:v14];

  v16 = [v10 resourceOptions];
  v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
  if ((qword_27F09CF90 & 0x100000) == 0)
  {
    v17 = v16;
  }

  if ((qword_27F09CF90 & 0x80000) != 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFCFFLL;
  }

  else
  {
    v18 = v17;
  }

  [v10 setResourceOptions:v18];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_16:
    if ([v9 type] == 1)
    {
      v24 = [v9 newTextureWithDescriptor:v10 offset:{*(GTMTLSMContext_lastFunction(**(v11 + 40), *(a3 + 8), *a2) + 56)}];
    }

    else
    {
      v24 = [v9 newTextureWithDescriptor:v10];
    }

    v20 = v24;
    goto LABEL_20;
  }

  v19 = [v9 device];
  v20 = [v19 newTextureWithDescriptor:v10];

LABEL_20:

  return v20;
}

id MTLHeap_newTextureWithDescriptor_offset(uint64_t *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a3;
  v10 = a4;
  if ((qword_27F09CF90 & 0x200000000) != 0 && (v11 = *a1, [*(*a1 + 48) heapExtractedTextures], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v13 = [*(v11 + 48) heapExtractedTextures];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a2 + 8)];
    v15 = [v13 indexOfObject:v14];

    v16 = [v10 resourceOptions];
    v17 = v16 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v17 = v16;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v18 = v17;
    }

    [v10 setResourceOptions:v18];
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [v9 device];
      v20 = [v19 newTextureWithDescriptor:v10];

      goto LABEL_19;
    }
  }

  else
  {
    v21 = [v10 resourceOptions];
    v22 = v21 & 0xFFFFFFFFFFFFFCFFLL | 0x200;
    if ((qword_27F09CF90 & 0x100000) == 0)
    {
      v22 = v21;
    }

    if ((qword_27F09CF90 & 0x80000) != 0)
    {
      v23 = v21 & 0xFFFFFFFFFFFFFCFFLL;
    }

    else
    {
      v23 = v22;
    }

    [v10 setResourceOptions:v23];
  }

  if ((qword_27F09CF90 & 0x4000) != 0)
  {
    [v10 setCompressionMode:2];
  }

  v20 = [v9 newTextureWithDescriptor:v10 offset:a5];
LABEL_19:

  return v20;
}

void MTLRenderCommandEncoder_useHeap(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  [v9 useHeap:a5];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v10 = *a1;
    v11 = a1[1];
    v12 = *(v10 + 40);
    v13 = *a2;
    v14 = *(a3 + 8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __MTLRenderCommandEncoder_useHeap_block_invoke;
    v15[3] = &unk_279658188;
    v16 = v9;
    UseHeapTextures(v12, v11, v13, v14, v15);
  }
}

void MTLRenderCommandEncoder_useHeap_stages(uint64_t *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a4;
  [v11 useHeap:a5 stages:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0)
  {
    v12 = *a1;
    v13 = a1[1];
    v14 = *(v12 + 40);
    v15 = *a2;
    v16 = *(a3 + 8);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __MTLRenderCommandEncoder_useHeap_stages_block_invoke;
    v17[3] = &unk_2796581B0;
    v18 = v11;
    v19 = a6;
    UseHeapTextures(v14, v13, v15, v16, v17);
  }
}

void MTLRenderCommandEncoder_useHeaps_count(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  [v20 useHeaps:a5 count:a6];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v11 = 0;
    v19 = *(*a1 + 16);
    do
    {
      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 16), v19);
      v13 = a6;
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = *&v12[8 * v11];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __MTLRenderCommandEncoder_useHeaps_count_block_invoke;
      v21[3] = &unk_279658188;
      v22 = v20;
      v18 = v14;
      a6 = v13;
      UseHeapTextures(v15, v18, v16, v17, v21);

      ++v11;
    }

    while (v13 != v11);
  }
}

void MTLRenderCommandEncoder_useHeaps_count_stages(void *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a4;
  [v22 useHeaps:a5 count:a6 stages:a7];
  if ((qword_27F09CF90 & 0x200000000) != 0 && a6)
  {
    v12 = 0;
    v20 = *(*a1 + 16);
    do
    {
      v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 24), v20);
      v14 = a1[1];
      v15 = *(*a1 + 40);
      v16 = *a2;
      v17 = a6;
      v18 = *&v13[8 * v12];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __MTLRenderCommandEncoder_useHeaps_count_stages_block_invoke;
      v23[3] = &unk_2796581B0;
      v24 = v22;
      v25 = a7;
      v19 = v18;
      a6 = v17;
      UseHeapTextures(v15, v14, v16, v19, v23);

      ++v12;
    }

    while (v17 != v12);
  }
}

id NewCommandBuffer(void *a1)
{
  if (g_commandBufferDescriptor)
  {
    [a1 commandBufferWithDescriptor:?];
  }

  else
  {
    [a1 commandBuffer];
  }
  v1 = ;

  return v1;
}

id MTLDevice_newBufferWithBytes_length_options(const char ****a1, void *a2, uint64_t a3)
{
  v6 = **a1;
  v7 = a1[23];
  v8 = (*a1)[2];
  v25 = a1[1];
  v9 = [v25 deviceForKey:*a3];
  p = *v7;
  v10 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 40), v8);
  FileWithFilename = GTCaptureArchive_getFileWithFilename(v6, v10);
  v12 = *(a3 + 24);
  if ((v12 & 0xF0) == 0x20 || (v13 = FileWithFilename, v14 = *(FileWithFilename + 24), (v14 & 2) == 0) && (v12 & 0xF) == 1)
  {
    v15 = [v9 newBufferWithLength:*(a3 + 16) options:{v12 & 0xFFFFFFFFFFEFFFFFLL, p}];
    v16 = *(a3 + 16);
    v17 = a1[3];
    v18 = [v17 bufferWithLength:v16 alignment:1];
    v19 = GTTraceFunc_argumentBytesWithMap(a2, *(a3 + 40), v8);
    GTCaptureArchive_fillBuffer(v6, v7, v19, [v18 contents], *(a3 + 16), 0);
    v20 = [v17 blitCommandEncoder];

    v21 = [v18 heapBuffer];
    [v20 copyFromBuffer:v21 sourceOffset:objc_msgSend(v18 toBuffer:"heapLocation") destinationOffset:v15 size:{0, *(a3 + 16)}];

LABEL_5:
    v22 = p;
    goto LABEL_6;
  }

  if ((v14 & 2) == 0)
  {
    v15 = [v9 newBufferWithLength:*(a3 + 16) options:v12 & 0xFFFFFFFFFFEFFFFFLL];
    GTCaptureArchive_fillBufferCompressedDeflate(v6, a1[23], v13, [v15 contents], *(a3 + 16), 0);
    goto LABEL_5;
  }

  v22 = p;
  v15 = [v9 newBufferWithBytes:GTCaptureArchive_mapDataSeparateFile(v6 length:FileWithFilename options:{p, 0), *(a3 + 16), v12 & 0xFFFFFFFFFFEFFFFFLL}];
LABEL_6:
  apr_pool_clear(v22);

  return v15;
}

id _MakeIOSurface(uint64_t a1, void *a2)
{
  v93[10] = *MEMORY[0x277D85DE8];
  v74 = a2;
  v77 = a1;
  if (*(a1 + 104))
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:*(a1 + 104) length:*(a1 + 112) freeWhenDone:0];
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v73 = v6;
    a1 = v77;
    v9 = [v4 setWithObjects:{v5, v73, v7, v8, objc_opt_class(), 0}];
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v3 error:0];
    v75 = [v10 objectForKeyedSubscript:*MEMORY[0x277CD29D0]];
  }

  else
  {
    v75 = 0;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
  [v11 setObject:v12 forKeyedSubscript:@"address"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 92)];
  v14 = MEMORY[0x277CD2928];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CD2928]];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 94)];
  v16 = MEMORY[0x277CD28D0];
  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CD28D0]];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 84)];
  v18 = MEMORY[0x277CD28D8];
  [v11 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD28D8]];

  v19 = MEMORY[0x277CD28B0];
  v20 = MEMORY[0x277CD28B8];
  v21 = MEMORY[0x277CD28C8];
  if (!*(a1 + 102))
  {
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 96)];
    [v11 setObject:v22 forKeyedSubscript:*v19];

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 80)];
    [v11 setObject:v23 forKeyedSubscript:*v20];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 98)];
    [v11 setObject:v24 forKeyedSubscript:*v21];

    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 100)];
    [v11 setObject:v25 forKeyedSubscript:*MEMORY[0x277CD28C0]];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 8)];
  v27 = MEMORY[0x277CD28A8];
  v76 = v11;
  [v11 setObject:v26 forKeyedSubscript:*MEMORY[0x277CD28A8]];

  v28 = v75;
  if (v75)
  {
    v29 = *v14;
    v93[0] = *v27;
    v93[1] = v29;
    v30 = *v19;
    v93[2] = *v16;
    v93[3] = v30;
    v31 = *v21;
    v93[4] = *v20;
    v93[5] = v31;
    v32 = *v18;
    v93[6] = *MEMORY[0x277CD28C0];
    v93[7] = v32;
    v93[8] = @"IOSurfaceAddress";
    v93[9] = @"IOSurfaceProtectionOptions";
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:10];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v34 = v75;
    v35 = [v34 countByEnumeratingWithState:&v86 objects:v92 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v87;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v87 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v86 + 1) + 8 * i);
          if (([v33 containsObject:v39] & 1) == 0)
          {
            v40 = [v34 objectForKeyedSubscript:v39];
            [v76 setObject:v40 forKeyedSubscript:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v86 objects:v92 count:16];
      }

      while (v36);
    }
  }

  v41 = v77;
  if (*(v77 + 102))
  {
    v42 = *MEMORY[0x277CD2900];
    v91[0] = *MEMORY[0x277CD2920];
    v91[1] = v42;
    v43 = *MEMORY[0x277CD28E8];
    v91[2] = *MEMORY[0x277CD28E0];
    v91[3] = v43;
    v44 = *MEMORY[0x277CD28F0];
    v91[4] = *MEMORY[0x277CD28F8];
    v91[5] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:6];
    v78 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v77 + 102)];
    v81 = [v75 objectForKeyedSubscript:*MEMORY[0x277CD2908]];
    v46 = 0x277CCA000uLL;
    if (*(v77 + 102))
    {
      v47 = 0;
      v80 = 0;
      do
      {
        v48 = (v77 + 16 + 16 * v47);
        v49 = *(v48 + 3);
        v50 = *v48;
        v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v52 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 2)];
        [v51 setObject:v52 forKeyedSubscript:*MEMORY[0x277CD2920]];

        v53 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 3)];
        [v51 setObject:v53 forKeyedSubscript:*MEMORY[0x277CD2900]];

        v54 = [*(v46 + 2992) numberWithUnsignedShort:*(v48 + 4)];
        [v51 setObject:v54 forKeyedSubscript:*MEMORY[0x277CD28E0]];

        v55 = [*(v46 + 2992) numberWithUnsignedInt:*v48];
        [v51 setObject:v55 forKeyedSubscript:*MEMORY[0x277CD28E8]];

        if (*(v48 + 5))
        {
          v56 = [*(v46 + 2992) numberWithUnsignedShort:?];
          [v51 setObject:v56 forKeyedSubscript:*MEMORY[0x277CD28F8]];
        }

        if (*(v48 + 6))
        {
          v57 = [*(v46 + 2992) numberWithUnsignedShort:?];
          [v51 setObject:v57 forKeyedSubscript:*MEMORY[0x277CD28F0]];
        }

        v58 = v50 * v49;
        v59 = [*(v46 + 2992) numberWithUnsignedInteger:v80];
        [v51 setObject:v59 forKeyedSubscript:*MEMORY[0x277CD2910]];

        v60 = [*(v46 + 2992) numberWithUnsignedInteger:v58];
        [v51 setObject:v60 forKeyedSubscript:*MEMORY[0x277CD2918]];

        if (v81)
        {
          v79 = v58;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v61 = [v81 objectAtIndexedSubscript:v47];
          v62 = [v61 countByEnumeratingWithState:&v82 objects:v90 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v83;
            do
            {
              for (j = 0; j != v63; ++j)
              {
                if (*v83 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v82 + 1) + 8 * j);
                if (([v45 containsObject:v66] & 1) == 0)
                {
                  v67 = [v81 objectAtIndexedSubscript:v47];
                  v68 = [v67 objectForKeyedSubscript:v66];
                  [v51 setObject:v68 forKeyedSubscript:v66];
                }
              }

              v63 = [v61 countByEnumeratingWithState:&v82 objects:v90 count:16];
            }

            while (v63);
          }

          v41 = v77;
          v46 = 0x277CCA000;
          v58 = v79;
        }

        v69 = [v51 copy];
        [v78 addObject:v69];

        v80 += v58;
        ++v47;
      }

      while (v47 < *(v41 + 102));
    }

    v70 = [v78 copy];
    [v76 setObject:v70 forKeyedSubscript:*MEMORY[0x277CD2908]];

    v28 = v75;
  }

  v71 = [v74 iosurfaceForProperties:v76];

  return v71;
}

id MakeNSArray(uint64_t *a1, unsigned int a2, void *a3)
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
      [v6 addObject:v10];

      --v7;
    }

    while (v7);
  }

  return v6;
}

id NewLibraryWithFile(void *a1, uint64_t a2, char *a3, const char *a4, int a5, uint64_t a6, void *a7)
{
  v13 = a1;
  v14 = *(a2 + 176);
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    if (!a3)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v17 = *(a2 + 160);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a6];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19)
    {
      v20 = MTLDevice_newLibraryWithFile(v13, v19, a7);
    }

    else
    {
      v21 = **a2;
      v22 = *(a2 + 184);
      FileWithFilename = GTCaptureArchive_getFileWithFilename(v21, a3);
      if (a5)
      {
        if (a4)
        {
          v24 = a4;
        }

        else
        {
          v24 = a3;
        }

        v25 = GTMTLReplayController_dumpLibrary(a2, a3, v24);
        v26 = MTLDevice_newLibraryWithFile(v13, v25, a7);
      }

      else
      {
        v27 = FileWithFilename;
        if ((*(FileWithFilename + 24) & 2) != 0)
        {
          v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v21];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
          v31 = [v29 stringByAppendingPathComponent:v30];

          v32 = [MEMORY[0x277CBEBC0] fileURLWithPath:v31];
          v20 = MTLDevice_newLibraryWithFile(v13, v32, a7);

          goto LABEL_15;
        }

        v28 = malloc_type_malloc(*(FileWithFilename + 8), 0x972F8E9AuLL);
        GTCaptureArchive_fillBufferCompressedDeflate(v21, v22, v27, v28, *(v27 + 8), 0);
        v25 = dispatch_data_create(v28, *(v27 + 8), 0, *MEMORY[0x277D85CB0]);
        v26 = MTLDevice_newLibraryWithData(v13, v25, a7);
      }

      v20 = v26;
    }

LABEL_15:
    v16 = v20;
  }

LABEL_16:

  return v16;
}

id _MakeMTLCompileOptions(uint64_t a1, void *a2)
{
  if (a1)
  {
    v2 = MakeMTLCompileOptions(a1, a2);
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x277CD6D10]);
  }

  v3 = v2;
  [v2 setDebuggingEnabled:1];

  return v3;
}

void UseHeapTextures(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v17 = a2;
  v9 = a5;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, v10);
  v11 = newpool;
  v12 = apr_array_make(newpool, 4, 8);
  GTMTLSMContext_getHeapResourcesWithType(a1, a4, a3, 0x50, v12, v11);
  if (v12->nelts >= 1)
  {
    v13 = 0;
    do
    {
      v14 = *&v12->elts[8 * v13];
      if (v14)
      {
        v15 = *(v14 + 8);
      }

      else
      {
        v15 = 0;
      }

      v16 = [v17 textureForKey:{v15, v17}];
      v9[2](v9, v16);

      ++v13;
    }

    while (v13 < v12->nelts);
  }

  apr_pool_destroy(v11);
}

apr_array_header_t *MakeMTLLinkedFunctionsWithResourceIndices(apr_array_header_t **a1, uint64_t a2, uint64_t *a3, apr_pool_t *p)
{
  v8 = apr_array_make(p, *(a2 + 24), 8);
  v9 = apr_array_make(p, *(a2 + 56), 8);
  result = apr_array_make(p, *(a2 + 8), 8);
  v11 = result;
  v12 = *a3;
  v13 = a3[1];
  if (*(a2 + 24))
  {
    v14 = 0;
    do
    {
      v23 = *(*(a2 + 16) + 8 * v14);
      result = find_entry(v13, &v23, 8uLL, 0);
      pool = result->pool;
      if (result->pool)
      {
        v16 = *(pool + 4);
        if (v16)
        {
          result = find_entry(v12, v16, 8uLL, 0);
          pool = result->pool;
          if (result->pool)
          {
            pool = *(pool + 4);
            if (pool)
            {
              pool = *pool;
            }
          }
        }

        else
        {
          pool = 0;
        }
      }

      *&v8->elts[8 * v14++] = pool;
    }

    while (*(a2 + 24) > v14);
  }

  if (*(a2 + 56))
  {
    v17 = 0;
    do
    {
      v23 = *(*(a2 + 48) + 8 * v17);
      result = find_entry(v13, &v23, 8uLL, 0);
      v18 = result->pool;
      if (result->pool)
      {
        v19 = *(v18 + 4);
        if (v19)
        {
          result = find_entry(v12, v19, 8uLL, 0);
          v18 = result->pool;
          if (result->pool)
          {
            v18 = *(v18 + 4);
            if (v18)
            {
              v18 = *v18;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      *&v9->elts[8 * v17++] = v18;
    }

    while (*(a2 + 56) > v17);
  }

  if (*(a2 + 8))
  {
    v20 = 0;
    do
    {
      v23 = *(*a2 + 8 * v20);
      result = find_entry(v13, &v23, 8uLL, 0);
      v21 = result->pool;
      if (result->pool)
      {
        v22 = *(v21 + 4);
        if (v22)
        {
          result = find_entry(v12, v22, 8uLL, 0);
          v21 = result->pool;
          if (result->pool)
          {
            v21 = *(v21 + 4);
            if (v21)
            {
              v21 = *v21;
            }
          }
        }

        else
        {
          v21 = 0;
        }
      }

      *&v11->elts[8 * v20++] = v21;
    }

    while (*(a2 + 8) > v20);
  }

  *a1 = v8;
  a1[1] = v9;
  a1[2] = v11;
  return result;
}

void PopulateLinkedFunctionsResourceIndices(void *a1, void *a2)
{
  v3 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v3 setFunctionResourceIndices:*(*a2 + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setPrivateFunctionResourceIndices:*(a2[1] + 24)];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 setBinaryFunctionResourceIndices:*(a2[2] + 24)];
  }
}

void GTMTLReplay_dispatchFailedToSet(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:a1 length:64];
  v3 = funcMap;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a2];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

void GTMTLReplay_dispatchFailedToGet(uint64_t a1, int a2)
{
  if (a1)
  {
    v4 = funcMap;
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
    v27 = [v4 objectForKeyedSubscript:v5];

    if (v27)
    {
      v6 = [v27 bytes];
    }

    else
    {
      v6 = 0;
    }

    v7 = failureMap;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "integerValue") + 1}];
      v11 = failureMap;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v11 setObject:v10 forKeyedSubscript:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v14 = failureMap;
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v14 setObject:v13 forKeyedSubscript:v15];

      if (v6)
      {
        v16 = GTFenum_getConstructorType(*(v6 + 8)) - 1;
        if (v16 > 0x6D)
        {
          v17 = "Unknown";
        }

        else
        {
          v17 = off_2796593E8[v16];
        }

        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v17];
        FuncEnumAsString = GetFuncEnumAsString(*(v6 + 8));
      }

      else
      {
        v10 = 0;
        FuncEnumAsString = 0;
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1];
      [v12 setObject:v19 forKeyedSubscript:@"GTErrorKeyTraceStreamID"];

      if (a2)
      {
        [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"GTErrorKeyResourceUnused"];
      }

      if (v6)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v6];
        [v12 setObject:v20 forKeyedSubscript:@"GTErrorKeyFunctionIndex"];
      }

      if (FuncEnumAsString)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:FuncEnumAsString];
        [v12 setObject:v21 forKeyedSubscript:@"GTErrorKeyFenum"];
      }

      if (!v10 || ([v12 setObject:v10 forKeyedSubscript:@"GTErrorKeyReceiverType"], -[__CFString isEqualToString:](v10, "isEqualToString:", @"Unknown")))
      {

        v10 = @"Metal object";
      }

      v22 = MEMORY[0x277CCACA8];
      if (FuncEnumAsString)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:FuncEnumAsString];
        v24 = PrettifyFenumString(v23);
        v25 = [v22 stringWithFormat:@"%@ creation failed when calling %@.", v10, v24];
      }

      else
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ creation failed.", v10];
      }

      [v12 setObject:v25 forKeyedSubscript:*MEMORY[0x277CCA450]];
      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.gputools.MTLReplayer" code:150 userInfo:v12];
      GTMTLReplay_handleNSError(v26);
    }
  }
}

uint64_t GetEnvDefault(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

id GTApplePMPPerfStateControl::EnableConsistentPerfState(GTApplePMPPerfStateControl *this, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 <= 2)
  {
    v3 = a2;
    v5 = objc_opt_new();
    *(this + 3) = v3;
    memset(v18, 0, sizeof(v18));
    v19 = *this;
    std::vector<unsigned long long>::vector[abi:nn200100](&__p, v18, 5uLL);
    if (*(this + 452))
    {
      v6 = 0;
      v7 = 0;
      v8 = this;
      do
      {
        v9 = *(v8 + 5);
        if (v9)
        {
          v10 = (this + 56 * v7 + 8 * *(this + 3) + 24);
          v11 = v10;
        }

        else
        {
          v10 = (v8 + 56);
          v11 = (v8 + 64);
        }

        v12 = *v11;
        v13 = __p + 8 * (v7 >> 4);
        *v13 |= *v10 << (v6 & 0x3C);
        v13[2] |= v12 << (v6 & 0x3C);
        if (v9 && *(v8 + 2))
        {
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(v8 + *(this + 3) + 3)];
          [v5 setObject:v14 forKeyedSubscript:*(v8 + 2)];
        }

        ++v7;
        v6 += 4;
        v8 = (v8 + 56);
      }

      while (v7 < *(this + 452));
    }

    GTApplePMPPerfStateControl::SetDVFSContraints(this, 0);
    if (GTApplePMPPerfStateControl::SetDVFSStates(this, __p, (v17 - __p) >> 3))
    {
      v2 = 0;
    }

    else
    {
      v2 = [v5 copy];
    }

    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_24D908034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void GTApplePMPPerfStateControl::SetDVFSContraints(GTApplePMPPerfStateControl *this, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (!*(this + 454))
  {
    v3 = *(this + 2);
    if (v3)
    {
      v4 = 0;
      input = 2;
      v11 = 0;
      if (a2)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      v12 = 0;
      v13 = v5;
      if ((a2 & 1) == 0)
      {
        v4 = *this;
      }

      v14 = v4;
      v6 = IOConnectCallMethod(v3, 6u, &input, 5u, 0, 0, 0, 0, 0, 0);
      v7 = v6;
      if (v6)
      {
        if (g_runningInCI)
        {
          v8 = "#CI_ERROR# ";
        }

        else
        {
          v8 = "";
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v6)];
        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "SetDVFSContraints", 331, 2, "%s%s %u: Failed to send PM command (0x%x - %@)\n", v8, "IOReturn GTApplePMPPerfStateControl::SetDVFSContraints(BOOL)", 331, v7, v9, input, v11, v12, v13);
      }
    }
  }
}

uint64_t GTApplePMPPerfStateControl::SetDVFSStates(GTApplePMPPerfStateControl *this, uint64_t *input, uint32_t inputCnt)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  v5 = IOConnectCallMethod(v4, *(this + 459), input, inputCnt, 0, 0, 0, 0, 0, 0);
  v6 = v5;
  if (v5)
  {
    if (g_runningInCI)
    {
      v7 = "#CI_ERROR# ";
    }

    else
    {
      v7 = "";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:mach_error_string(v5)];
    GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTApplePMPPerfStateControl.mm", "SetDVFSStates", 306, 2, "%s%s %u: _setDVFSStates (0x%x - %@)\n", v7, "IOReturn GTApplePMPPerfStateControl::SetDVFSStates(uint64_t *, uint32_t)", 306, v6, v8);
  }

  return v6;
}

void GTApplePMPPerfStateControl::DisableConsistentPerfState(GTApplePMPPerfStateControl *this)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(this + 3) != 3)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    std::vector<unsigned long long>::vector[abi:nn200100](&__p, v10, 5uLL);
    v2 = __p;
    if (*(this + 452))
    {
      v3 = 0;
      v4 = 0;
      v5 = (this + 64);
      do
      {
        v6 = (v4 >> 1) & 0x7FFFFFFFFFFFFFF8;
        *(v2 + v6) |= *(v5 - 1) << (v3 & 0x3C);
        v7 = *v5;
        v5 += 7;
        *(v2 + v6 + 16) |= v7 << (v3 & 0x3C);
        ++v4;
        v3 += 4;
      }

      while (v4 < *(this + 452));
    }

    *(this + 3) = 3;
    GTApplePMPPerfStateControl::SetDVFSStates(this, v2, (v9 - v2) >> 3);
    GTApplePMPPerfStateControl::SetDVFSContraints(this, 1);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }
}

void GTApplePMPPerfStateControl::Close(GTApplePMPPerfStateControl *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    IOServiceClose(v2);
    *(this + 2) = 0;
    if (g_runningInCI == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u Connection Closed", *MEMORY[0x277D85F48]];
      v3 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n#CI-INFO# "];

      fprintf(*MEMORY[0x277D85E08], "#CI-INFO# %s\n", [v3 UTF8String]);
    }
  }
}

id GTMTLReplayController_getResizeRenderPipelineState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 176);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v9 = *(a1 + 104);
    v10 = v9;
    v11 = *(a2 + 8);
    v12 = 10;
    v13 = 90;
    if ((v11 & 0x800010) == 0x10)
    {
      v13 = a3;
    }

    if ((v11 & 0x40) == 0)
    {
      v12 = v13;
    }

    if ((v11 & 0x20) != 0)
    {
      v14 = 55;
    }

    else
    {
      v14 = v12;
    }

    v15 = [v9 colorAttachments];
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 setPixelFormat:v14];

    v17 = *(a2 + 8);
    v18 = 144;
    v19 = 120;
    v20 = 128;
    if ((v17 & 0x40000) == 0)
    {
      v20 = 112;
    }

    if ((v17 & 0x80000) == 0)
    {
      v19 = v20;
    }

    if ((v17 & 0x40) == 0)
    {
      v18 = v19;
    }

    if ((v17 & 0x20) != 0)
    {
      v21 = 136;
    }

    else
    {
      v21 = v18;
    }

    [v10 setFragmentFunction:*(a1 + v21)];
    v22 = [v10 fragmentFunction];
    v23 = [v22 device];

    v28 = 0;
    v8 = [v23 newRenderPipelineStateWithDescriptor:v10 error:&v28];
    v24 = v28;
    v25 = *(a1 + 176);
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v25 setObject:v8 forKeyedSubscript:v26];
  }

  return v8;
}

id GTMTLReplayController_resizeTexture(void *a1, uint64_t a2, void *a3, void *a4, unint64_t a5, unint64_t a6, void **a7)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a1;
  v16 = [v14 device];
  v17 = [v14 pixelFormat];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  GTMTLPixelFormatGetInfoForDevice(&v46, v16, v17);
  v18 = 10;
  v19 = 90;
  if ((DWORD2(v46) & 0x800010) == 0x10)
  {
    v19 = v17;
  }

  if ((BYTE8(v46) & 0x40) == 0)
  {
    v18 = v19;
  }

  if ((BYTE8(v46) & 0x20) != 0)
  {
    v20 = 55;
  }

  else
  {
    v20 = v18;
  }

  v42 = a6;
  v21 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:v20 width:a5 height:a6 mipmapped:0];
  [v21 setUsage:5];
  [v21 setResourceOptions:32];
  [v21 setAllowGPUOptimizedContents:0];
  v45 = 0;
  v22 = [v15 newTextureWithDescriptor:v21 error:&v45];

  v23 = v45;
  v24 = v23;
  if (v22)
  {
    v37 = v23;
    v39 = v16;
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    v56 = 0u;
    v51 = 0u;
    v50 = 1065353216;
    LODWORD(v52) = 1065353216;
    DWORD1(v53) = 1065353216;
    v55 = 1065353216;
    v25 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v26 = [v25 colorAttachments];
    [v26 objectAtIndexedSubscript:0];
    v28 = v27 = v13;
    [v28 setTexture:v22];

    v41 = v27;
    v29 = [v27 renderCommandEncoderWithDescriptor:v25];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"ResizeTexture"];
    [v29 setLabel:v30];

    v43[0] = v46;
    v43[1] = v47;
    v43[2] = v48;
    v44 = v49;
    v31 = GTMTLReplayController_getResizeRenderPipelineState(a2, v43, v17);
    [v29 setRenderPipelineState:v31];

    [v29 setVertexBuffer:*(a2 + 168) offset:0 atIndex:0];
    [v29 setVertexBuffer:*(a2 + 168) offset:96 atIndex:1];
    if ([v14 width] >= a5 || objc_msgSend(v14, "height") >= v42)
    {
      v32 = 160;
    }

    else
    {
      v32 = 152;
    }

    [v29 setFragmentSamplerState:*(a2 + v32) atIndex:{0, v37, v39}];
    [v29 setFragmentTexture:v14 atIndex:0];
    [v29 setFragmentBytes:&v50 length:80 atIndex:0];
    [v29 drawPrimitives:3 vertexStart:0 vertexCount:6];
    [v29 endEncoding];
    v33 = v22;

    v16 = v40;
    v13 = v41;
    v24 = v38;
  }

  else
  {
    if (v23)
    {
      v57 = *MEMORY[0x277CCA7E8];
      v58[0] = v23;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:&v57 count:1];
    }

    else
    {
      v34 = 0;
    }

    GTMTLReplay_fillError(a7, 101, v34);
    if (a7)
    {
      v35 = *a7;
    }

    else
    {
      v35 = 0;
    }

    GTMTLReplay_handleNSError(v35);
  }

  return v22;
}

id GTMTLReplayClient_retrieveTexturesForResize(id *a1, void *a2, void *a3, int a4, uint64_t *a5)
{
  v117[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a1[1];
  v11 = a1[3];
  v84 = a1[2];
  v87 = [v10 defaultDevice];
  v82 = [v87 maxTextureWidth2D];
  v111 = 0uLL;
  v83 = objc_alloc_init(MEMORY[0x277CD7050]);
  [v83 setResourceOptions:32];
  v12 = [v9 count];
  v89 = v8;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v14 = v13;
  v15 = 0x277CCA000;
  v88 = v12;
  if (v12)
  {
    v75 = a5;
    v76 = v10;
    v78 = v11;
    v85 = 0;
    v16 = 0;
    v80 = v13;
    v81 = v9;
    while (1)
    {
      v17 = [v9 objectAtIndexedSubscript:v16];
      v18 = [v89 objectAtIndexedSubscript:v16];
      v19 = [v17 pixelFormat];
      v20 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
      v21 = [v20 unsignedIntegerValue];

      if (v19 == 260)
      {
        break;
      }

      PlanePixelFormat = GetPlanePixelFormat(v19, 0);
      v22 = v19;
      if (!PlanePixelFormat)
      {
        goto LABEL_9;
      }

      [v14 addObject:v17];
LABEL_76:

      if (v88 == ++v16)
      {
        if (v85)
        {
          GTMTLReplay_commitCommandBuffer(v85);
        }

        else
        {
          v85 = 0;
        }

        v10 = v76;
        v11 = v78;
        v15 = 0x277CCA000uLL;
        goto LABEL_84;
      }
    }

    v22 = 260;
    if (v21 == 9)
    {
      v22 = 261;
    }

LABEL_9:
    v94 = v22;
    v24 = [v17 usage];
    v25 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureLevel"];
    v26 = [v18 objectForKeyedSubscript:@"DependencyGraphRequestedTextureSlice"];
    v96 = v25;
    v93 = [v25 unsignedIntegerValue];
    v91 = v26;
    v27 = v26;
    v28 = v94;
    v90 = [v27 unsignedIntegerValue];
    v29 = [v17 textureType];
    v30 = (v24 & 1) == 0;
    v95 = v18;
    if (v29 <= 9)
    {
      if (((1 << v29) & 0x68) != 0)
      {
        v31 = 0;
        goto LABEL_31;
      }

      if (((1 << v29) & 0x110) != 0)
      {
        if (v24)
        {
          v30 = 0;
        }

        else
        {
          v30 = a4;
        }

        if (a4 && v19 != v94)
        {
          v31 = 1;
          goto LABEL_31;
        }

        v31 = a4;
        goto LABEL_36;
      }

      if (((1 << v29) & 0x280) != 0)
      {
LABEL_14:
        v31 = 0;
        if (v19 == v94)
        {
          v92 = 0;
          goto LABEL_39;
        }

        v30 = 1;
        goto LABEL_31;
      }
    }

    if (v29 < 2)
    {
      goto LABEL_14;
    }

    v31 = 0;
    if (v29 == 2 && (!v96 ? (v30 = v24 ^ 1) : (v30 = (v24 & 1) == 0), v96) || v19 != v94)
    {
LABEL_31:
      v32 = [v17 usage];
      v92 = 1;
      if ((v31 & 1) == 0 && (v32 & 0x10) != 0 && (v30 & 1) == 0)
      {
        v33 = v17;
        v18 = v95;
        v34 = v90;
        v35 = v93;
        goto LABEL_69;
      }

      goto LABEL_39;
    }

LABEL_36:
    v92 = 0;
    if ((v31 & 1) == 0 && (v30 & 1) == 0)
    {
      v33 = v17;
      v18 = v95;
      v34 = v90;
      v35 = v93;
      goto LABEL_71;
    }

LABEL_39:
    v36 = [v17 width];
    v37 = [v17 height];
    if (v96)
    {
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      v107 = 0u;
      GTMTLPixelFormatGetInfoForDevice(&v107, v87, v19);
      v38 = (DWORD2(v107) >> 11) & 4;
      if ((~DWORD2(v107) & 0x60) == 0)
      {
        if (v21 == 9)
        {
          v38 |= 2uLL;
        }

        else if (v21 == 8)
        {
          v38 |= 1uLL;
        }
      }

      v106 = 0;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      GTMTLGetTextureLevelInfoForDeviceWithOptions(&v100, v87, v19, v36, v37, 1, [v17 sampleCount], v93, v38);
      v37 = *(&v100 + 1);
      v36 = v100;
      v39 = v101;
    }

    else
    {
      v39 = 1;
    }

    if (v82 >= v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v82;
    }

    v41 = 5;
    if (!v31)
    {
      v41 = 1;
    }

    if (v92)
    {
      v42 = v41 | 0x10;
    }

    else
    {
      v42 = v41;
    }

    [v83 setPixelFormat:v19];
    [v83 setWidth:v40];
    [v83 setHeight:v37];
    [v83 setUsage:v42];
    v99 = 0;
    v33 = [v84 newTextureWithDescriptor:v83 error:&v99];
    v43 = v99;
    v44 = v43;
    if (!v33)
    {
      if (v43)
      {
        v116 = *MEMORY[0x277CCA7E8];
        v117[0] = v43;
        v66 = v43;
        v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:&v116 count:1];
      }

      else
      {
        v66 = 0;
        v67 = 0;
      }

      v14 = v80;
      v9 = v81;
      v10 = v76;
      v11 = v78;
      v18 = v95;
      GTMTLReplay_fillError(v75, 101, v67);
      if (v75)
      {
        v73 = *v75;
      }

      else
      {
        v73 = 0;
      }

      GTMTLReplay_handleNSError(v73);

      v72 = v91;
      goto LABEL_95;
    }

    v86 = v17;
    v45 = v39;
    v46 = [v95 objectForKeyedSubscript:@"DependencyGraphRequestedTextureDepthPlane"];
    v47 = [v46 unsignedIntegerValue];

    if (!v31)
    {
      v54 = [v78 blitCommandEncoder];
      v100 = 0uLL;
      *&v101 = v47;
      *&v107 = v40;
      *(&v107 + 1) = v37;
      *&v108 = v45;
      v97 = v111;
      v98 = 0;
      v51 = v86;
      [v54 copyFromTexture:v86 sourceSlice:v90 sourceLevel:v93 sourceOrigin:&v100 sourceSize:&v107 toTexture:v33 destinationSlice:0 destinationLevel:0 destinationOrigin:&v97];

      v9 = v81;
      v28 = v94;
      v18 = v95;
      goto LABEL_68;
    }

    v79 = v44;
    *&v103 = 0;
    v101 = 0u;
    v102 = 0u;
    v100 = 0u;
    GTMTLPixelFormatGetInfoForDevice(&v100, v87, v19);
    v48 = BYTE8(v100);
    v49 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v50 = v49;
    v28 = v94;
    if ((v48 & 0x20) != 0)
    {
      v53 = [v49 depthAttachment];
      v51 = v86;
      [v53 setTexture:v86];
      [v53 setLevel:v93];
      [v53 setSlice:v90];
      [v53 setDepthPlane:v47];
      [v53 setResolveTexture:v33];
      [v53 setLoadAction:1];
      [v53 setStoreAction:2];
      v18 = v95;
      if ((v48 & 0x40) == 0)
      {
LABEL_65:
        v56 = v85;
        if (!v85)
        {
          v57 = [v76 defaultCommandQueue];
          v58 = [v57 commandBuffer];

          v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"ThumbnailsResolve"];
          [v58 setLabel:v59];

          v56 = v58;
          v44 = v79;
        }

        v85 = v56;
        v60 = [v56 renderCommandEncoderWithDescriptor:v50];
        [v60 endEncoding];

        v9 = v81;
LABEL_68:

        v35 = 0;
        v34 = 0;
        v14 = v80;
        if (v92)
        {
LABEL_69:
          v61 = [v33 newTextureViewWithPixelFormat:v28 textureType:2 levels:v35 slices:1, v34, 1];

          if (!v61)
          {
            v114 = @"GTErrorKeyMTLPixelFormat";
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
            v115 = v62;
            v63 = MEMORY[0x277CBEAC0];
            v64 = &v115;
            v65 = &v114;
LABEL_86:
            v17 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:1];

            GTMTLReplay_fillError(v75, 101, v17);
            if (v75)
            {
              v71 = *v75;
            }

            else
            {
              v71 = 0;
            }

            v10 = v76;
            v11 = v78;
            v72 = v91;
            GTMTLReplay_handleNSError(v71);
LABEL_95:

            v70 = 0;
            goto LABEL_96;
          }

          goto LABEL_74;
        }

LABEL_71:
        if ([v33 textureType] != 4 && objc_msgSend(v33, "textureType") != 8)
        {
          goto LABEL_75;
        }

        v61 = [v33 newTextureViewWithPixelFormat:v28 textureType:objc_msgSend(v33 levels:"textureType") slices:v35, 1, v34, 1];

        if (!v61)
        {
          v112 = @"GTErrorKeyMTLPixelFormat";
          v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
          v113 = v62;
          v63 = MEMORY[0x277CBEAC0];
          v64 = &v113;
          v65 = &v112;
          goto LABEL_86;
        }

LABEL_74:
        v33 = v61;
LABEL_75:
        [v14 addObject:v33];

        v17 = v33;
        goto LABEL_76;
      }

      v55 = [v50 stencilAttachment];

      v53 = v55;
    }

    else
    {
      v18 = v95;
      v51 = v86;
      if ((v48 & 0x40) != 0)
      {
        v53 = [v49 stencilAttachment];
      }

      else
      {
        v52 = [v49 colorAttachments];
        v53 = [v52 objectAtIndexedSubscript:0];
      }
    }

    [v53 setTexture:v51];
    [v53 setLevel:v93];
    [v53 setSlice:v90];
    [v53 setDepthPlane:v47];
    [v53 setResolveTexture:v33];
    [v53 setLoadAction:1];
    [v53 setStoreAction:2];
    goto LABEL_65;
  }

  v85 = 0;
LABEL_84:
  v68 = [*(v15 + 3240) stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"TextureBlit"];
  v69 = [v11 commandBuffer];
  [v69 setLabel:v68];

  [v11 commitCommandBuffer];
  v70 = v14;
LABEL_96:

  return v70;
}

void GTMTLReplayClient_resizeResolution(unint64_t *a1, void *a2, unint64_t *a3)
{
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"width"];
  v7 = [v6 unsignedIntegerValue];
  v8 = [v5 objectForKeyedSubscript:@"height"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v5 objectForKeyedSubscript:@"format"];

  v11 = [v10 unsignedIntegerValue];
  v12 = *a3;
  v13 = a3[1];
  v14 = *a3;
  v15 = v13;
  if (*a3 < v7 && v13 < v9 && v11)
  {
    v16 = v7 / v12;
    v14 = (v16 * v12);
    v15 = (v16 * v13);
  }

  if (v14 <= v7)
  {
    if (v15 <= v9 || !v11)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  if (v15 > v9)
  {
LABEL_11:
    v20 = v9 / v13;
    v18 = v20 * v12;
    v19 = v20 * v13;
    if (v18 > v7)
    {
      v21 = v7 / v18;
      v18 = v18 * v21;
      v19 = v19 * v21;
    }

    goto LABEL_13;
  }

  v17 = v7 / v14;
  v18 = v17 * v14;
  v19 = v17 * v15;
LABEL_13:
  v15 = v19;
  v14 = v18;
  if (v18 <= 8)
  {
    v14 = 8;
  }

  if (v15 <= 0x10)
  {
    v15 = 16;
  }

LABEL_17:
  if (v7)
  {
    v12 = v14;
  }

  if (v9)
  {
    v13 = v15;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = 1;
}

void AccelerationStructureViewerServer::ReplayerTransport::teardown(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained sessionID] && objc_msgSend(v8, "requestID"))
    {
      v12 = MEMORY[0x277CCA8C8];
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = ___ZN33AccelerationStructureViewerServer17ReplayerTransport8teardownEPNS_8EndpointEP7NSError_block_invoke;
      v17 = &unk_279658B00;
      v20 = a1;
      v18 = v8;
      v19 = v6;
      v13 = [v12 blockOperationWithBlock:&v14];
      [*(*(a1 + 24) + 288) addOperation:{v13, v14, v15, v16, v17}];

      v9 = v18;
      goto LABEL_10;
    }

    v9 = v6;
    v26 = &unk_2860BB7A8;
    v27 = 0u;
    objc_storeStrong(&v27, a3);
    *(&v27 + 1) = 0;
    *&v21[0] = &unk_2860BB6A8;
    *(v21 + 8) = 0u;
    AccelerationStructureViewer::DataSourceError::encode(&v26, v21);
    v10 = *&v21[1];
    v25 = 0;
    v24 = 0u;
    std::vector<unsigned char>::__append(&v24, *&v21[1] + 1);
    v11 = v24;
    memset(v21 + 8, 0, 24);
    *&v21[0] = &unk_2860BB6F0;
    v22 = v24 + 1;
    v23 = v10;
    AccelerationStructureViewer::DataSourceError::encode(&v26, v21);
    if (v21[1] == v23)
    {
      *v11 = 6;
      (*(*a1 + 32))(a1, a2, 0, 0, v11, v10 + 1);
    }

    else if (!v11)
    {
LABEL_7:

LABEL_10:
      goto LABEL_11;
    }

    operator delete(v11);
    goto LABEL_7;
  }

LABEL_11:
}

void *___ZN33AccelerationStructureViewerServer17ReplayerTransport8teardownEPNS_8EndpointEP7NSError_block_invoke(void *a1)
{
  result = a1[4];
  if (result)
  {
    v3 = a1[6];
    if (!*(v3 + 32))
    {
      v4 = *(v3 + 48);
      v5 = [result requestID];
      v6 = a1[5];
      v7 = *(v4 + 16);

      return v7(v4, v5, 0, v6);
    }
  }

  return result;
}

void AccelerationStructureViewerServer::ReplayerTransport::send(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = a3 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || (v14 = atomic_load((v12 + 48)), *(a1 + 40) >= v14))
    {
      v15 = [MEMORY[0x277CBEA90] dataWithBytes:a5 length:a6];
      v16 = MEMORY[0x277CCA8C8];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = ___ZN33AccelerationStructureViewerServer17ReplayerTransport4sendEPNS_8EndpointEbmPvm_block_invoke;
      v19[3] = &unk_2796581D8;
      v22 = a1;
      v24 = a3;
      v20 = WeakRetained;
      v23 = a4;
      v17 = v15;
      v21 = v17;
      v18 = [v16 blockOperationWithBlock:v19];
      [*(*(a1 + 24) + 288) addOperation:v18];
    }

    else
    {
      (*(**(a1 + 16) + 24))(*(a1 + 16), a4);
    }
  }
}

void ___ZN33AccelerationStructureViewerServer17ReplayerTransport4sendEPNS_8EndpointEbmPvm_block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 48);
  v4 = *(v3 + 32);
  if (v4)
  {
    if (*(a1 + 64) != 1)
    {
      goto LABEL_9;
    }

    v5 = atomic_load((v4 + 48));
    if (*(v3 + 40) < v5)
    {
      v6 = *(**(v3 + 16) + 24);

      v6();
      return;
    }

    v2 = *(a1 + 32);
    if (*(v3 + 32))
    {
LABEL_9:
      v14 = @"sessionId";
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "sessionID")}];
      v15[0] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = [GTTransportMessage_replayer messageWithKind:4609 attributes:v8 payload:*(a1 + 40)];

      [*(v3 + 32) send:v9 inReplyTo:0 error:0];
      return;
    }
  }

  v10 = *(v3 + 48);
  v11 = [v2 sessionID];
  v12 = *(a1 + 40);
  v13 = *(v10 + 16);

  v13(v10, v11, v12, 0);
}

void AccelerationStructureViewerServer::ReplayerTransport::~ReplayerTransport(id *this)
{
  AccelerationStructureViewerServer::ReplayerTransport::~ReplayerTransport(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC1E8;
  objc_storeWeak(this + 1, 0);

  objc_destroyWeak(this + 1);
}

void sub_24D909F64(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 40));
  _Unwind_Resume(a1);
}

void sub_24D90A82C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = GTAccelerationStructureServerSession;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void GTMTLReplayWireframeRenderer_initWithDevice(uint64_t a1, void *a2)
{
  *(a1 + 72) = 1;
  v3 = a2;
  v4 = GTMTLReplayController_defaultLibrary(v3);
  v5 = [v4 newFunctionWithName:@"wireframeCreationFragment"];
  [v5 setLabel:@"wireframeCreationFragment"];
  v6 = objc_opt_new();
  [v6 setLibrary:v4];
  [v6 setName:@"wireframeCreationFragment"];
  v7 = *(a1 + 40);
  *(a1 + 40) = v6;
  v8 = v6;

  v9 = *(a1 + 48);
  *(a1 + 48) = v5;
  v10 = v5;

  *(a1 + 32) = 10;
  v11 = [v4 newFunctionWithName:@"createOutlineTexture"];
  v57 = 0;
  v12 = [v3 newComputePipelineStateWithFunction:v11 error:&v57];
  v13 = v57;
  v14 = *(a1 + 80);
  *(a1 + 80) = v12;

  v15 = [v4 newFunctionWithName:@"createOutlineTextureMS"];
  v56 = v13;
  v16 = [v3 newComputePipelineStateWithFunction:v15 error:&v56];
  v17 = v56;

  v18 = *(a1 + 88);
  *(a1 + 88) = v16;

  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = *(a1 + 176);
  *(a1 + 176) = v19;

  v21 = objc_alloc_init(MEMORY[0x277CD6F70]);
  v22 = *(a1 + 104);
  *(a1 + 104) = v21;

  v23 = [v4 newFunctionWithName:@"passthoughVertex"];
  [*(a1 + 104) setVertexFunction:v23];

  v24 = [v4 newFunctionWithName:@"fragmentShader"];
  v25 = *(a1 + 112);
  *(a1 + 112) = v24;

  v26 = [v4 newFunctionWithName:@"fragmentShaderUint"];
  v27 = *(a1 + 120);
  *(a1 + 120) = v26;

  v28 = [v4 newFunctionWithName:@"fragmentShaderSint"];
  v29 = *(a1 + 128);
  *(a1 + 128) = v28;

  v30 = [v4 newFunctionWithName:@"depthShader"];
  v31 = *(a1 + 136);
  *(a1 + 136) = v30;

  v32 = [v4 newFunctionWithName:@"stencilShader"];
  v33 = *(a1 + 144);
  *(a1 + 144) = v32;

  v34 = objc_alloc_init(MEMORY[0x277CD6FC8]);
  [v34 setMinFilter:0];
  [v34 setMagFilter:0];
  [v34 setMipFilter:0];
  v35 = [v3 newSamplerStateWithDescriptor:v34];
  v36 = *(a1 + 152);
  *(a1 + 152) = v35;

  [v34 setMinFilter:1];
  [v34 setMagFilter:1];
  [v34 setMipFilter:2];
  v37 = [v3 newSamplerStateWithDescriptor:v34];
  v38 = *(a1 + 160);
  *(a1 + 160) = v37;

  v39 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:10 width:128 height:128 mipmapped:0];
  v40 = *a1;
  *a1 = v39;

  [*a1 setUsage:21];
  [*a1 setResourceOptions:32];
  v41 = [v3 newBufferWithBytes:&GTMTLReplayWireframeRenderer_initWithDevice_posData length:144 options:0];
  v42 = *(a1 + 168);
  *(a1 + 168) = v41;

  v43 = [*(a1 + 104) vertexDescriptor];
  v44 = [v43 attributes];
  v45 = [v44 objectAtIndexedSubscript:0];
  [v45 setFormat:31];

  v46 = [v43 attributes];
  v47 = [v46 objectAtIndexedSubscript:1];
  [v47 setFormat:29];

  v48 = [v43 attributes];
  v49 = [v48 objectAtIndexedSubscript:1];
  [v49 setBufferIndex:1];

  v50 = [v43 layouts];
  v51 = [v50 objectAtIndexedSubscript:0];
  [v51 setStride:16];

  v52 = [v43 layouts];
  v53 = [v52 objectAtIndexedSubscript:1];
  [v53 setStride:8];

  v54 = [v3 newBufferWithLength:0x2000000 options:0];
  v55 = *(a1 + 96);
  *(a1 + 96) = v54;
}

void GTMTLReplayWireframeRenderer_submit()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  __dst[1389] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v11;
  if (*(v9 + 11360) != 98)
  {
    v62 = v6;
    v33 = v11;
    v34 = *v9;
    v35 = *(v9 + 8);
    v36 = *(*v9 + 128);
    v37 = *(v36 + 24);
    v68 = (*(v9 + 22560) - 1);
    CommandBuffer = GroupBuilder_getCommandBuffer(*(*(v34 + 120) + 12), *(*(v34 + 120) + 24), v68);
    if (CommandBuffer)
    {
      v70 = v12;
      v39 = v37 + (*CommandBuffer << 6);
      GTMTLReplayController_defaultDispatchFunction(v9, v39);
      v64 = [v35 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v39, *(v39 + 13), *(v34 + 16)) + 1)}];
      if (v64)
      {
        v60 = v35;
        CommandEncoder = GroupBuilder_getCommandEncoder(*(*(v34 + 120) + 12), *(*(v34 + 120) + 24), v68);
        if (!CommandEncoder)
        {
          GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
          if (v2)
          {
            v55 = *v2;
          }

          else
          {
            v55 = 0;
          }

          v12 = v70;
          GTMTLReplay_handleNSError(v55);
          goto LABEL_54;
        }

        v41 = CommandEncoder;
        v66 = v4;
        v58 = v33;
        v42 = objc_alloc_init(MEMORY[0x277CD6F48]);
        v43 = [v42 colorAttachments];
        v44 = [v43 objectAtIndexedSubscript:0];
        GTMTLReplayWireframeRenderer_makeColorAttachment(v8 + 8, v44);

        [v42 setRasterizationRateMap:*(v8 + 16)];
        if (*(v8 + 24))
        {
          [v42 setRenderTargetArrayLength:?];
        }

        v45 = [v64 renderCommandEncoderWithDescriptor:{v42, v58}];
        v33 = v59;
        if (!v45)
        {
          GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
          if (v2)
          {
            v57 = *v2;
          }

          else
          {
            v57 = 0;
          }

          v12 = v70;
          v35 = v60;
          GTMTLReplay_handleNSError(v57);

          goto LABEL_54;
        }

        v46 = v45;
        v47 = v37 + (v68 << 6);
        v48 = *(v36 + 24) + (*v41 << 6);
        v35 = v60;
        [v60 setRenderCommandEncoder:v46 forKey:{*(GTTraceFunc_argumentBytesWithMap(v48, *(v48 + 13), *(v34 + 16)) + 1)}];

        memcpy(__dst, (v9 + 248), 0x2B68uLL);
        __dst[1068] = 0;
        __dst[1231] = 0;
        *(&__dst[1252] + 4) = 0x3F80000000000000;
        BYTE3(__dst[1387]) = v66;
        LODWORD(__dst[1337]) = 1065353216;
        BYTE5(__dst[1387]) = 0;
        HIDWORD(__dst[1386]) = 0;
        GTMTLReplayController_restoreDefaultRenderCommandEncoder();
        [v46 setRenderPipelineState:v59];
        if (*(v47 + 8) >> 2 == 1073737833)
        {
          v49 = *(v62 + 360);
          v50 = [v60 executeIndirectCommandBufferMap];
          LOBYTE(v49) = DYMTLDrawRenderCommandEncoder(v46, v62 + 40, v49, v62 + 256, v50);

          apr_pool_clear(*(v62 + 368));
          if ((v49 & 1) == 0)
          {
            GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
            if (v2)
            {
              v51 = *v2;
            }

            else
            {
              v51 = 0;
            }

            v12 = v70;
            GTMTLReplay_handleNSError(v51);

LABEL_54:
            goto LABEL_55;
          }
        }

        else
        {
          GTMTLReplayController_defaultDispatchFunction(v9, v47);
        }

        __dst[0] = MEMORY[0x277D85DD0];
        __dst[1] = 3221225472;
        __dst[2] = __GTMTLReplayWireframeRenderer_submit3_block_invoke;
        __dst[3] = &unk_279658380;
        __dst[4] = v59;
        [v64 addCompletedHandler:__dst];
        GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v9, v68);
        [v60 commitCommandBuffers];

        v12 = v70;
LABEL_55:

        goto LABEL_56;
      }

      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v53 = *v2;
      }

      else
      {
        v53 = 0;
      }

      v12 = v70;
    }

    else
    {
      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v53 = *v2;
      }

      else
      {
        v53 = 0;
      }
    }

    GTMTLReplay_handleNSError(v53);
    goto LABEL_55;
  }

  v65 = v4;
  v13 = *v9;
  v14 = *(v9 + 8);
  v15 = (*(v9 + 22560) - 1);
  v16 = *(*v9 + 128);
  v17 = *(v16 + 24);
  v18 = GroupBuilder_getCommandBuffer(*(v13[15] + 3), v13[15][3], v15);
  if (v18 && (v19 = v17 + (*v18 << 6), GTMTLReplayController_defaultDispatchFunction(v9, v19), [v14 mtl4CommandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v19, *(v19 + 13), v13[2]) + 1)}], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v21 = v20;
    v22 = GroupBuilder_getCommandEncoder(*(v13[15] + 3), v13[15][3], v15);
    if (v22)
    {
      v61 = v22;
      v63 = v14;
      v67 = v21;
      v69 = v12;
      v23 = objc_alloc_init(MEMORY[0x277CD6BA8]);
      v24 = [v23 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript:0];
      GTMTLReplayWireframeRenderer_makeColorAttachment(v8 + 8, v25);

      [v23 setRasterizationRateMap:*(v8 + 16)];
      if (*(v8 + 24))
      {
        [v23 setRenderTargetArrayLength:?];
      }

      v26 = [v67 renderCommandEncoderWithDescriptor:v23];
      v12 = v69;
      if (v26)
      {
        v27 = v26;
        v28 = *(v16 + 24) + (*v61 << 6);
        [v63 setMTL4RenderCommandEncoder:v27 forKey:{*(GTTraceFunc_argumentBytesWithMap(v28, *(v28 + 13), v13[2]) + 1)}];

        memcpy(__dst, (v9 + 248), 0x758uLL);
        __dst[7] = 0;
        __dst[170] = 0;
        HIBYTE(__dst[233]) = v65;
        HIDWORD(__dst[185]) = 1065353216;
        LOBYTE(__dst[234]) = 0;
        LODWORD(__dst[233]) = 0;
        GTMTLReplayController_restoreDefaultRenderCommandEncoder4(v27, *(v9 + 22544), *(v9 + 22552), __dst, v63);
        [v27 setRenderPipelineState:v69];
        if (*(v17 + (v15 << 6) + 8) >> 2 != 1073737833)
        {
          GTMTLReplayController_defaultDispatchFunction(v9, (v17 + (v15 << 6)));
        }

        GTMTLReplayController_restoreIndirectResourceUsageForCommandBuffer(v9, v15);
        v29 = v63;
        [v63 commitCommandBuffers:v9 + 40];
        v30 = [*(v9 + 24) commandBuffer];
        v31 = *(v9 + 40);
        v32 = atomic_load((v9 + 48));
        [v30 encodeWaitForEvent:v31 value:v32 - 1];

        v14 = v29;
        v12 = v69;
      }

      else
      {
        GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
        if (v2)
        {
          v56 = *v2;
        }

        else
        {
          v56 = 0;
        }

        v14 = v63;
        GTMTLReplay_handleNSError(v56);
      }
    }

    else
    {
      GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
      if (v2)
      {
        v54 = *v2;
      }

      else
      {
        v54 = 0;
      }

      GTMTLReplay_handleNSError(v54);
    }
  }

  else
  {
    GTMTLReplay_fillError(v2, 101, MEMORY[0x277CBEC10]);
    if (v2)
    {
      v52 = *v2;
    }

    else
    {
      v52 = 0;
    }

    GTMTLReplay_handleNSError(v52);
  }

LABEL_56:
}

int *GroupBuilder_getCommandEncoder(uint64_t a1, int *a2, unint64_t a3)
{
  InclusiveRange = GroupBuilder_findInclusiveRange(a1, a2, a3);
  if (InclusiveRange)
  {
    while (1)
    {
      ConstructorType = GTFenum_getConstructorType(InclusiveRange[5]);
      if (GTFenum_isMTLCommandEncoder(ConstructorType) || (ConstructorType - 95) <= 0xA && ((0x409u >> (ConstructorType - 95)) & 1) != 0)
      {
        break;
      }

      v5 = InclusiveRange[2];
      if (v5)
      {
        InclusiveRange -= 6 * v5;
      }

      else
      {
        InclusiveRange = 0;
      }

      if (!v5)
      {
        return 0;
      }
    }
  }

  return InclusiveRange;
}

void GTMTLReplayWireframeRenderer_makeColorAttachment(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setLoadAction:2];
  [v3 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  if (*(a1 + 18) == 1)
  {
    [v3 setStoreAction:1];
  }

  [v3 setTexture:*a1];
}

id GTMTLReplayController_generateWireframeTexture(uint64_t *a1, void *a2, uint64_t a3, apr_allocator_t *a4, void **a5)
{
  v6 = a4;
  v200[2] = *MEMORY[0x277D85DE8];
  v8 = a1 + 2560;
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, a4);
  v9 = *a1;
  v160 = a1[1];
  v10 = *(*a1 + 128);
  v11 = (*(v8 + 520) - 1);
  if (v11 >= *(v10 + 12))
  {
    GTMTLReplay_fillError(a5, 101, MEMORY[0x277CBEC10]);
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_12;
  }

  v158 = a5;
  v188 = 0;
  v189[0] = 0;
  v189[1] = 0;
  if (*(a1 + 2840) == 98)
  {
    v12 = GTMTLReplayController_renderPassDescriptor4(a1);
    if (v12)
    {
      v13 = (v12 + 622);
      v14 = (v12 + 600);
      goto LABEL_9;
    }

    goto LABEL_40;
  }

  v16 = GTMTLReplayController_renderPassDescriptor(a1);
  if (!v16)
  {
LABEL_40:
    GTMTLReplay_fillError(a5, 101, MEMORY[0x277CBEC10]);
    if (a5)
    {
      v15 = *a5;
    }

    else
    {
      v15 = 0;
    }

LABEL_12:
    GTMTLReplay_handleNSError(v15);
LABEL_54:
    v50 = 0;
    goto LABEL_55;
  }

  v13 = (v16 + 806);
  v14 = (v16 + 784);
LABEL_9:
  v17 = *v14;
  if ((GT_SUPPORT_0 & 0x80) != 0)
  {
    v18 = *v13;
    *(a2 + 12) = v18;
    if (v18 <= 1)
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  v156 = v18;
  v19 = [v160 rasterizationRateMapForKey:v17];
  v20 = a2[2];
  a2[2] = v19;

  v21 = a1[1];
  if (*(a1 + 2840) == 98)
  {
    v22 = GTMTLReplayController_renderPassDescriptor4(a1);
    if (v22)
    {
      v23 = v22;
      v24 = [v21 renderPassDescriptorMap];
      v25 = MakeMTL4RenderPassDescriptor(v23, v24);

      if (v25)
      {
        [v25 setRasterizationRateMap:0];
        v26 = [v21 defaultDevice];
        v27 = [v25 validate:v26 width:&v188 height:v189];

        if ((v27 & 1) == 0)
        {
          GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
          if (v158)
          {
            v28 = *v158;
          }

          else
          {
            v28 = 0;
          }

LABEL_52:
          GTMTLReplay_handleNSError(v28);

LABEL_53:
          goto LABEL_54;
        }

        goto LABEL_24;
      }
    }

LABEL_43:
    GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
    if (v158)
    {
      v46 = *v158;
    }

    else
    {
      v46 = 0;
    }

    GTMTLReplay_handleNSError(v46);
    goto LABEL_53;
  }

  v29 = GTMTLReplayController_renderPassDescriptor(a1);
  if (!v29)
  {
    goto LABEL_43;
  }

  v30 = v29;
  v31 = [v21 renderPassDescriptorMap];
  v25 = MakeMTLRenderPassDescriptor(v30, v31);

  if (!v25)
  {
    goto LABEL_43;
  }

  [v25 setRasterizationRateMap:0];
  v32 = [v21 defaultDevice];
  v33 = [v25 validate:v32 width:&v188 height:v189];

  if ((v33 & 1) == 0)
  {
    GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
    if (v158)
    {
      v28 = *v158;
    }

    else
    {
      v28 = 0;
    }

    goto LABEL_52;
  }

LABEL_24:

  v34 = (*(v10 + 24) + (v11 << 6));
  v35 = *(v34 + 2);
  v36 = GTFenum_isDrawCall(v35);
  v37 = 0;
  v187 = 0;
  v185 = 0u;
  v186 = 0u;
  if ((v35 & 0xFFFFFFFC) == 0xFFFFC1A4)
  {
    v38 = 1;
  }

  else
  {
    v38 = v36;
  }

  v183 = 0uLL;
  v184 = 0uLL;
  v182 = 0uLL;
  v180 = 0uLL;
  memset(v181, 0, sizeof(v181));
  v178 = 0uLL;
  v179 = 0uLL;
  v176 = 0uLL;
  v177 = 0uLL;
  v174 = 0uLL;
  v175 = 0uLL;
  v172 = 0uLL;
  v173 = 0uLL;
  v170 = 0uLL;
  v171 = 0uLL;
  v168 = 0uLL;
  v169 = 0uLL;
  v166 = 0uLL;
  v167 = 0uLL;
  v165 = 0uLL;
  if (*(a1 + 2840) != 98 && (v35 & 0xFFFFFFFC) == 0xFFFFC1A4)
  {
    v187 = *a1[23];
    GTMTLSMContext_indirectCommandBufferResources(v181, *(v9 + 40), *v34, v187);
    GetExecuteCommandsInBufferArgs(&v165, v34, *(v9 + 16));
    Object = GTMTLSMContext_getObject(**(v9 + 40), v165, *v34);
    if (!Object)
    {
      GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
      if (v158)
      {
        v52 = *v158;
      }

      else
      {
        v52 = 0;
      }

      GTMTLReplay_handleNSError(v52);
      goto LABEL_54;
    }

    GTMTLCreateIndirectCommandEncoder(&v167 + 8, Object[14]);
    v37 = *(&v166 + 1) + *(&v180 + 1) * *(v8 + 521);
    *(&v186 + 1) = v37;
    GTMTLSMRenderCommandEncoder_loadIndirectCommand((a1 + 31), &v167 + 1, v37, v181);
    v35 = *(v34 + 2);
  }

  if (v35 >> 2 == 1073737833 && !*(*(&v167 + 1) + 26))
  {
    v41 = GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(*(&v182 + 1), *(v37 + *(&v168 + 1)));
  }

  else
  {
    v40 = 1099;
    if (*(a1 + 2840) == 98)
    {
      v40 = 38;
    }

    v41 = a1[v40];
  }

  v42 = GTMTLSMContext_getObject(**(*a1 + 40), v41, *v34);
  if (!v42)
  {
    v47 = *MEMORY[0x277CCA450];
    *&__dst[0] = @"Failed to generate wireframe";
    v200[0] = v47;
    v200[1] = @"GTErrorKeyFunctionIndex";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v34];
    *(&__dst[0] + 1) = v48;
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:v200 count:2];
    GTMTLReplay_fillError(v158, 102, v49);

    goto LABEL_54;
  }

  v43 = v42;
  if ((v38 & v6) != 1)
  {
    goto LABEL_72;
  }

  v44 = v42[6];
  if (v44)
  {
    v45 = *(v44 + 1272);
    goto LABEL_73;
  }

  v53 = v42[8];
  if (v53)
  {
    v45 = *(v53 + 150);
    goto LABEL_73;
  }

  v54 = v42[9];
  if (v54)
  {
    v45 = *(v54 + 509);
    goto LABEL_73;
  }

  v55 = v42[11];
  if (!v55)
  {
LABEL_72:
    v45 = 1;
    goto LABEL_73;
  }

  v56 = *(v55 + 1016);
  switch(v56)
  {
    case 5:
      v45 = *(v55 + 80);
      break;
    case 4:
      v45 = *(v55 + 320);
      break;
    case 2:
      v45 = *(v55 + 952);
      break;
    default:
      goto LABEL_72;
  }

LABEL_73:
  v57 = [v160 defaultDevice];
  v59 = v188;
  v58 = v189[0];
  v60 = v57;
  if (a3 == 1)
  {
    v61 = 7;
  }

  else
  {
    v61 = 8;
  }

  v62 = a2[v61];
  v63 = v62;
  if (v62 && [v62 width] == v59 && objc_msgSend(v63, "height") == v58 && objc_msgSend(v63, "arrayLength") == v156 && objc_msgSend(v63, "sampleCount") == v45)
  {
    v64 = a2;
LABEL_91:
    v69 = v63;
    v70 = v64[1];
    v64[1] = v69;
    goto LABEL_96;
  }

  v65 = a2[1];
  a2[1] = 0;

  [*a2 setWidth:v59];
  [*a2 setHeight:v58];
  v66 = 2;
  if (v156 > 1)
  {
    v66 = 3;
  }

  v67 = 4;
  if (v156 > 1)
  {
    v67 = 8;
  }

  if (v45 <= 1)
  {
    v68 = v66;
  }

  else
  {
    v68 = v67;
  }

  [*a2 setTextureType:v68];
  a2[9] = v45;
  [*a2 setArrayLength:v156];
  [*a2 setSampleCount:v45];
  v63 = [v60 newTextureWithDescriptor:*a2];
  if (v63)
  {
    objc_storeStrong(&a2[v61], v63);
    v64 = a2;
    *(a2 + 26) = 1;
    goto LABEL_91;
  }

  v200[0] = @"GTErrorKeyMTLTextureDescriptor";
  v71 = SerializeMTLTextureDescriptorToDictionary(*a2);
  *&__dst[0] = v71;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:v200 count:1];

  GTMTLReplay_fillError(v158, 101, v70);
  if (v158)
  {
    v72 = *v158;
  }

  else
  {
    v72 = 0;
  }

  GTMTLReplay_handleNSError(v72);
  v69 = 0;
LABEL_96:

  if (!v69)
  {
LABEL_161:
    v50 = 0;
    goto LABEL_162;
  }

  if ((v38 & 1) == 0)
  {
    goto LABEL_136;
  }

  v73 = GTMTLSMRenderPipelineState_renderPipelineDescriptorType(*(v9 + 40), v43);
  if (v73 <= 2)
  {
    if (v73)
    {
      if (v73 != 1)
      {
        GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
        if (v158)
        {
          v92 = *v158;
        }

        else
        {
          v92 = 0;
        }

        goto LABEL_160;
      }

      memset(__dst, 0, 512);
      GTMTLSMRenderPipelineState_renderPipelineDescriptor(*(v9 + 40), v43, __dst, newpool);
      v90 = [v160 renderPipelineDescriptorMap];
      v91 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(__dst, v90);
    }

    else
    {
      if (!v43[14])
      {
        GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
        if (v158)
        {
          v92 = *v158;
        }

        else
        {
          v92 = 0;
        }

        goto LABEL_160;
      }

      v93 = [v160 pipelineLibraryForKey:v43[5]];
      v94 = DEVICEOBJECT(v93);
      v95 = [MEMORY[0x277CCACA8] stringWithUTF8String:v43[14]];
      v91 = [v94 newRenderPipelineDescriptorWithName:v95 error:v158];

      if (!v91)
      {
        GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
        if (v158)
        {
          v141 = *v158;
        }

        else
        {
          v141 = 0;
        }

        GTMTLReplay_handleNSError(v141);
        v50 = 0;
        goto LABEL_172;
      }
    }

    if ([v91 isRasterizationEnabled])
    {
      [v91 setRasterSampleCount:v45];
      [v91 setFragmentFunction:a2[6]];
      [v91 setFragmentLinkedFunctions:0];
      [v91 setFragmentPreloadedLibraries:MEMORY[0x277CBEBF8]];
      v96 = a2[4];
      v97 = [v91 colorAttachments];
      v98 = [v97 objectAtIndexedSubscript:0];
      [v98 setPixelFormat:v96];

      v99 = [v91 colorAttachments];
      v100 = [v99 objectAtIndexedSubscript:0];
      [v100 setWriteMask:15];

      v101 = [v91 colorAttachments];
      v102 = [v101 objectAtIndexedSubscript:0];
      [v102 setBlendingEnabled:0];

      [v91 setDepthAttachmentPixelFormat:0];
      [v91 setStencilAttachmentPixelFormat:0];
      for (i = 1; i != 8; ++i)
      {
        v104 = [v91 colorAttachments];
        v105 = [v104 objectAtIndexedSubscript:i];
        [v105 setPixelFormat:0];
      }

      v106 = [v160 defaultDevice];
      v164 = 0;
      v88 = [v106 newRenderPipelineStateWithDescriptor:v91 error:&v164];
      v107 = v164;

      if (!v88)
      {
        if (v107)
        {
          v197 = *MEMORY[0x277CCA7E8];
          v198 = v107;
          v140 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v198 forKeys:&v197 count:1];
        }

        else
        {
          v140 = 0;
        }

        GTMTLReplay_fillError(v158, 101, v140);
        if (v158)
        {
          v151 = *v158;
        }

        else
        {
          v151 = 0;
        }

        GTMTLReplay_handleNSError(v151);
        v50 = v69;

        goto LABEL_162;
      }

      goto LABEL_191;
    }

    v50 = v69;
    v93 = v91;
LABEL_172:

    goto LABEL_162;
  }

  if (v73 <= 4)
  {
    if (v73 == 3)
    {
      memset(__dst, 0, 512);
      v74 = v43[9];
      if (v74)
      {
        memcpy(__dst, v74, 0x200uLL);
        if (BYTE14(__dst[31]))
        {
          v75 = [v160 renderPipelineDescriptorMap];
          v76 = MakeMTLMeshRenderPipelineDescriptorWithoutResourceIndex(__dst, v75);

          [v76 setRasterSampleCount:v45];
          [v76 setFragmentFunction:a2[6]];
          [v76 setFragmentLinkedFunctions:0];
          [v76 setFragmentPreloadedLibraries:MEMORY[0x277CBEBF8]];
          v77 = a2[4];
          v78 = [v76 colorAttachments];
          v79 = [v78 objectAtIndexedSubscript:0];
          [v79 setPixelFormat:v77];

          v80 = [v76 colorAttachments];
          v81 = [v80 objectAtIndexedSubscript:0];
          [v81 setWriteMask:15];

          v82 = [v76 colorAttachments];
          v83 = [v82 objectAtIndexedSubscript:0];
          [v83 setBlendingEnabled:0];

          [v76 setDepthAttachmentPixelFormat:0];
          [v76 setStencilAttachmentPixelFormat:0];
          for (j = 1; j != 8; ++j)
          {
            v85 = [v76 colorAttachments];
            v86 = [v85 objectAtIndexedSubscript:j];
            [v86 setPixelFormat:0];
          }

          v87 = [v160 defaultDevice];
          v163 = 0;
          v88 = [v87 newRenderPipelineStateWithMeshDescriptor:v76 options:0 reflection:0 error:&v163];
          v89 = v163;

          if (!v88)
          {
            if (v89)
            {
              v195 = *MEMORY[0x277CCA7E8];
              v196 = v89;
              v149 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
            }

            else
            {
              v149 = 0;
            }

            GTMTLReplay_fillError(v158, 101, v149);
            if (v158)
            {
              v154 = *v158;
            }

            else
            {
              v154 = 0;
            }

            GTMTLReplay_handleNSError(v154);
            v50 = v69;

            goto LABEL_162;
          }

          goto LABEL_191;
        }
      }

      goto LABEL_136;
    }

    bzero(__dst, 0x3C8uLL);
    v108 = v43[11];
    if (v108)
    {
      memcpy(__dst, v108, 0x3C8uLL);
    }

    v109 = [v160 libraries];
    v110 = MakeMTL4RenderPipelineDescriptor(__dst, v109);

    if (([v110 isRasterizationEnabled] & 1) == 0)
    {
      v50 = v69;

      goto LABEL_162;
    }

    [v110 setRasterSampleCount:v45];
    [v110 setFragmentFunctionDescriptor:a2[5]];
    [v110 setFragmentStaticLinkingDescriptor:0];
    [v110 setSupportFragmentBinaryLinking:0];
    v111 = a2[4];
    v112 = [v110 colorAttachments];
    v113 = [v112 objectAtIndexedSubscript:0];
    [v113 setPixelFormat:v111];

    v114 = [v110 colorAttachments];
    v115 = [v114 objectAtIndexedSubscript:0];
    [v115 setWriteMask:15];

    v116 = [v110 colorAttachments];
    v117 = [v116 objectAtIndexedSubscript:0];
    [v117 setBlendingState:0];

    for (k = 1; k != 8; ++k)
    {
      v119 = [v110 colorAttachments];
      v120 = [v119 objectAtIndexedSubscript:k];
      [v120 setPixelFormat:0];
    }

    v121 = v43[12];
    if (v121)
    {
      v122 = [v160 dynamicLibraries];
      v123 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v121, v122);
    }

    else
    {
      v123 = 0;
    }

    v142 = objc_alloc_init(MEMORY[0x277CD6B00]);
    v143 = [v160 defaultCompiler];
    v162 = 0;
    v88 = [v143 newRenderPipelineStateWithDescriptor:v110 dynamicLinkingDescriptor:v123 compilerTaskOptions:v142 error:&v162];
    v144 = v162;

    if (v88)
    {
      v50 = 0;
    }

    else
    {
      if (v144)
      {
        v193 = *MEMORY[0x277CCA7E8];
        v194 = v144;
        v145 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
      }

      else
      {
        v145 = 0;
      }

      GTMTLReplay_fillError(v158, 101, v145);
      if (v158)
      {
        v152 = *v158;
      }

      else
      {
        v152 = 0;
      }

      GTMTLReplay_handleNSError(v152);
      v50 = v69;
    }

    v153 = v88 == 0;

    goto LABEL_190;
  }

  if (v73 == 5)
  {
    GTMTLReplay_fillError(v158, 101, MEMORY[0x277CBEC10]);
    if (v158)
    {
      v92 = *v158;
    }

    else
    {
      v92 = 0;
    }

LABEL_160:
    GTMTLReplay_handleNSError(v92);
    goto LABEL_161;
  }

  memset(__dst, 0, 344);
  v124 = v43[11];
  if (v124)
  {
    memcpy(__dst, v124, 0x158uLL);
    if (BYTE13(__dst[20]))
    {
      v125 = [v160 libraries];
      v126 = MakeMTL4MeshRenderPipelineDescriptor(__dst, v125);

      [v126 setRasterSampleCount:v45];
      [v126 setFragmentFunctionDescriptor:a2[5]];
      [v126 setFragmentStaticLinkingDescriptor:0];
      [v126 setSupportFragmentBinaryLinking:0];
      v127 = a2[4];
      v128 = [v126 colorAttachments];
      v129 = [v128 objectAtIndexedSubscript:0];
      [v129 setPixelFormat:v127];

      v130 = [v126 colorAttachments];
      v131 = [v130 objectAtIndexedSubscript:0];
      [v131 setWriteMask:15];

      v132 = [v126 colorAttachments];
      v133 = [v132 objectAtIndexedSubscript:0];
      [v133 setBlendingState:0];

      for (m = 1; m != 8; ++m)
      {
        v135 = [v126 colorAttachments];
        v136 = [v135 objectAtIndexedSubscript:m];
        [v136 setPixelFormat:0];
      }

      v137 = v43[12];
      if (v137)
      {
        v138 = [v160 dynamicLibraries];
        v139 = MakeMTL4RenderPipelineDynamicLinkingDescriptor(v137, v138);
      }

      else
      {
        v139 = 0;
      }

      v146 = objc_alloc_init(MEMORY[0x277CD6B00]);
      v147 = [v160 defaultCompiler];
      v161 = 0;
      v88 = [v147 newRenderPipelineStateWithDescriptor:v126 dynamicLinkingDescriptor:v139 compilerTaskOptions:v146 error:&v161];
      v148 = v161;

      if (v88)
      {
        v50 = 0;
      }

      else
      {
        if (v148)
        {
          v191 = *MEMORY[0x277CCA7E8];
          v192 = v148;
          v150 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v192 forKeys:&v191 count:1];
        }

        else
        {
          v150 = 0;
        }

        GTMTLReplay_fillError(v158, 101, v150);
        if (v158)
        {
          v155 = *v158;
        }

        else
        {
          v155 = 0;
        }

        GTMTLReplay_handleNSError(v155);
        v50 = v69;
      }

      v153 = v88 == 0;

LABEL_190:
      if (v153)
      {
        goto LABEL_162;
      }

LABEL_191:
      GTMTLReplayWireframeRenderer_submit();
      v50 = v69;

      goto LABEL_162;
    }
  }

LABEL_136:
  v50 = v69;
LABEL_162:

LABEL_55:
  apr_pool_destroy(newpool);

  return v50;
}

GTReplayQueryRasterMapReply *GTMTLReplayClient_queryRasterMap(uint64_t a1, uint64_t a2, void **a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = [*(a1 + 8) rasterizationRateMapForKey:a2];
    v4 = v3;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    if (v3)
    {
      objc_msgSend_screenSize(v3);
      v28 = 0uLL;
      v29 = 0;
      objc_msgSend_physicalGranularity(v4);
    }

    else
    {
      v28 = 0uLL;
      v29 = 0;
    }

    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "layerCount")}];
    if ([v4 layerCount])
    {
      v8 = 0;
      do
      {
        v26 = 0uLL;
        v27 = 0;
        if (v4)
        {
          objc_msgSend_physicalSizeForLayer_(v4);
        }

        v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (v26)
        {
          v11 = 0;
          do
          {
            *&v10 = v11;
            [v4 mapPhysicalToScreenCoordinates:v8 forLayer:{v10, 0.0}];
            v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
            [v9 addObject:v12];

            v11 += v28;
          }

          while (v11 < v26);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
        [v9 addObject:v13];

        v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (*(&v26 + 1))
        {
          v16 = 0;
          do
          {
            *&v15 = v16;
            [v4 mapPhysicalToScreenCoordinates:v8 forLayer:{0.0, v15}];
            LODWORD(v18) = v17;
            v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
            [v14 addObject:v19];

            v16 += *(&v28 + 1);
          }

          while (v16 < *(&v26 + 1));
        }

        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
        [v14 addObject:v20];

        v21 = objc_alloc_init(GTRasterMapLayer);
        v24 = v26;
        v25 = 1;
        [(GTRasterMapLayer *)v21 setSize:&v24];
        [(GTRasterMapLayer *)v21 setHorizontalLogicalCoordinatesAtPhysicalTileBoundaries:v9];
        [(GTRasterMapLayer *)v21 setVerticalLogicalCoordinatesAtPhysicalTileBoundaries:v14];
        [v7 setObject:v21 atIndexedSubscript:v8];

        ++v8;
      }

      while (v8 < [v4 layerCount]);
    }

    v22 = objc_alloc_init(GTReplayQueryRasterMapReply);
    v26 = v28;
    v27 = v29;
    [(GTReplayQueryRasterMapReply *)v22 setPhysicalGranularity:&v26];
    [(GTReplayQueryRasterMapReply *)v22 setLayers:v7];
  }

  else
  {
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Raster map query failed: controller not initialized";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    GTMTLReplay_fillError(a3, 101, v4);
    if (a3)
    {
      v6 = *a3;
    }

    else
    {
      v6 = 0;
    }

    GTMTLReplay_handleNSError(v6);
    v22 = 0;
  }

  return v22;
}

uint64_t HarvestResourceObject()
{
  v1 = MEMORY[0x28223BE20]();
  v658 = v2;
  v671 = v1;
  v674 = v3;
  obj = v4;
  p[47] = *MEMORY[0x277D85DE8];
  v6 = v5;
  [g_activityLog enterHarvestResourceObjectWithAttributes:v6];
  v691 = v6;
  v7 = [v6 objectForKeyedSubscript:@"requestID"];
  v657 = [v7 unsignedLongLongValue];

  v8 = [v691 objectForKeyedSubscript:@"streamref"];
  v665 = [v8 unsignedLongLongValue];

  v9 = [v691 objectForKeyedSubscript:@"type"];
  v10 = [v9 unsignedIntValue];

  v11 = [v691 objectForKeyedSubscript:@"object"];
  v661 = [v11 unsignedLongLongValue];

  v12 = [v691 objectForKeyedSubscript:@"functionIndex"];
  v704 = [v12 unsignedIntValue];

  v13 = [v691 objectForKeyedSubscript:@"functionIndex"];
  v14 = [v13 unsignedLongLongValue];

  v670 = [v691 objectForKeyedSubscript:@"resolution"];
  v669 = [v691 objectForKeyedSubscript:@"objectThreadgroupRange"];
  [(*v674)[2] appendBytes:"MTSP" length:8];
  v769 = 0u;
  v770 = 0u;
  v771 = 0u;
  DWORD2(v769) = 7;
  LODWORD(v770) = 2;
  DYTraceEncode_InternalData(&v769, **v674);
  v15 = **v674;
  v16 = *v15;
  if ((*(v15 + 33) & 0x10) != 0)
  {
    v18 = **v674;
    v17 = *v15;
    do
    {
      v18 = (v18 + v16);
      v16 = *v18;
      v17 += v16;
    }

    while ((*(v18 + 33) & 0x20) == 0);
  }

  else
  {
    v17 = *v15;
  }

  [(*v674)[2] appendBytes:v15 length:v17];
  v19 = HIDWORD(v14);
  v20 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LODWORD(v869[0]) = 67109120;
    DWORD1(v869[0]) = v704;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v20, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", "debugFuncStop %u", v869, 8u);
  }

  GTMTLReplayController_debugSubCommandStop(v671, v704, HIDWORD(v14));
  v21 = v869;
  v22 = g_signpostLog;
  if (os_signpost_enabled(g_signpostLog))
  {
    LOWORD(v869[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_24D764000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Replayer-1-serial", &unk_24DA93952, v869, 2u);
  }

  if (v10 <= 38)
  {
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 != 22)
        {
          if (v10 == 24)
          {
            v42 = v665;
            if (!v665)
            {
              AliasStream = GetAliasStream(*(*v671 + 3), v661, *(*v671 + 11) + v704 - 1);
              if (AliasStream)
              {
                v42 = *AliasStream;
              }

              else
              {
                v42 = 0;
              }
            }

            ht = [v671[1] indirectCommandBufferForKey:v42];
            if (s_logUsingOsLog == 1)
            {
              v290 = gt_tagged_log(0xCu);
              if (os_log_type_enabled(v290, OS_LOG_TYPE_INFO))
              {
                v291 = [(apr_hash_t *)ht label];
                if (v291)
                {
                  v19 = [(apr_hash_t *)ht label];
                  v292 = v19;
                  v293 = [v19 UTF8String];
                }

                else
                {
                  v293 = "no label";
                }

                LODWORD(v869[0]) = 134218242;
                *(v869 + 4) = v42;
                WORD6(v869[0]) = 2080;
                *(v869 + 14) = v293;
                _os_log_impl(&dword_24D764000, v290, OS_LOG_TYPE_INFO, "Harvesting Indirect Command Buffer %llu (%s)", v869, 0x16u);
                if (v291)
                {
                }
              }
            }

            else
            {
              v294 = *MEMORY[0x277D85E08];
              v295 = MEMORY[0x277CCACA8];
              v290 = [(apr_hash_t *)ht label];
              if (v290)
              {
                v19 = [(apr_hash_t *)ht label];
                v296 = v19;
                v297 = [v19 UTF8String];
              }

              else
              {
                v297 = "no label";
              }

              v298 = [v295 stringWithFormat:@"Harvesting Indirect Command Buffer %llu (%s)", v42, v297];
              v299 = v298;
              fprintf(v294, "%s\n", [v298 UTF8String]);

              if (v290)
              {
              }

              else
              {
                v290 = 0;
              }
            }

            v350 = GTMTLSMContext_getObject(**(*v671 + 5), v42, *(*v671 + 11) + v704 - 1)[14];
            v351 = [(apr_hash_t *)ht device];
            v352 = objc_msgSend_size(ht);
            v353 = MakeMTLIndirectCommandBufferDescriptorWithoutResourceIndex(v350);
            v24 = v351;
            v354 = [v351 newIndirectCommandBufferWithDescriptor:v353 maxCommandCount:v352 options:0];

            v355 = [v671[3] blitCommandEncoder];
            [v355 copyIndirectCommandBuffer:ht sourceRange:0 destination:v352 destinationIndex:{v354, 0}];

            if (v665)
            {
              v356 = v665;
            }

            else
            {
              v356 = v661;
            }

            v357 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLIndirectCommandBuffer-0x%llx-Fetch", v356];
            v802[0] = v354;
            v358 = [MEMORY[0x277CBEA90] dataWithBytes:v350 length:48];
            v802[1] = v358;
            v359 = [MEMORY[0x277CBEA60] arrayWithObjects:v802 count:2];

            [v674[1] setObject:v359 forKeyedSubscript:v357];
            memset(v869, 0, 216);
            GTMTLCreateIndirectCommandEncoder(v869, v350);
            if (v674[2] && v657)
            {
              v360 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
              [v674[2] setObject:v360 forKeyedSubscript:v357];
            }

            v738[0] = 0;
            v738[1] = v356;
            v361 = v357;
            v738[2] = [v357 UTF8String];
            v738[3] = 0;
            v738[4] = *&v869[13] * v352;
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v738, **v674);
            v362 = **v674;
            v363 = *v362;
            if ((*(v362 + 33) & 0x10) != 0)
            {
              v365 = **v674;
              v364 = *v362;
              do
              {
                v365 = (v365 + v363);
                v363 = *v365;
                v364 += v363;
              }

              while ((*(v365 + 33) & 0x20) == 0);
            }

            else
            {
              v364 = *v362;
            }

            [(*v674)[2] appendBytes:v362 length:v364];

            goto LABEL_594;
          }

          goto LABEL_84;
        }

        if (s_logUsingOsLog == 1)
        {
          v55 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            LOWORD(v869[0]) = 0;
            _os_log_impl(&dword_24D764000, v55, OS_LOG_TYPE_INFO, "Harvesting threadgroup buffer", v869, 2u);
          }
        }

        else
        {
          v99 = *MEMORY[0x277D85E08];
          v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting threadgroup buffer"];
          v100 = v55;
          fprintf(v99, "%s\n", [v55 UTF8String]);
        }

        GTMTLReplayController_rewind(v671);
        GTMTLReplayController_debugSubCommand(v671, v704, v19);
        if (*(v671 + 2840) != 70 || (v101 = v661 + 1025, v102 = v671 + 4 * v661 + 4100, v103 = *(v102 + 2740), !v103) || v101 >= 0x1F || (v104 = *v671, v105 = *(*v671 + 11), v106 = *(v671 + 5640), v107 = *(v102 + 2771), v108 = GTMTLReplayController_renderPassDescriptor(v671), v109 = *(v108 + 814), !*(v108 + 814)) || (v110 = v108, ht = v106, v111 = *(v108 + 812), !*(v108 + 812)))
        {
          v114 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v114);
          ht = [MEMORY[0x277CBEA90] data];
          goto LABEL_586;
        }

        v666 = v105;
        v675 = v107;
        v680 = v101;
        v112 = v671[2818];
        v113 = v671[2819];
        v114 = v671[1];
        obja = [v114 defaultDevice];
        v115 = (v112 + (v109 - 1)) / v109 * v103 * ((v113 + (v111 - 1)) / v111);
        v116 = v671[3];
        v705 = [v116 bufferWithLength:v115 alignment:1];
        if (!v705)
        {
          v123 = MakeNSError(101, MEMORY[0x277CBEC10]);
          GTMTLReplay_handleNSError(v123);
          ht = [MEMORY[0x277CBEA90] data];
          goto LABEL_581;
        }

        if ((GT_SUPPORT_0 & 1) == 0)
        {
LABEL_584:
          ht = [v705 data];
          goto LABEL_585;
        }

        v685 = objc_alloc_init(MEMORY[0x277CD6D10]);
        p[0] = @"THREADGROUP_MEMORY_LENGTH";
        v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v103];
        *&__dst[0] = v117;
        p[1] = @"THREADGROUP_MEMORY_INDEX";
        v118 = [MEMORY[0x277CCABB0] numberWithInt:v101];
        *(&__dst[0] + 1) = v118;
        v119 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:__dst forKeys:p count:2];
        [v685 setPreprocessorMacros:v119];

        *&v809 = 0;
        v659 = [obja newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\n\nkernel void dumpThreadgroupData(uint2 threadgroupInGrid [[ threadgroup_position_in_grid ]] options:\n                                uint2 threadgroupsPerGrid [[ threadgroups_per_grid ]] error:{\n                                device uint8_t* threadgroupBufferDump [[ buffer(0) ]], \n                                threadgroup uint8_t* threadgroupData [[ threadgroup(THREADGROUP_MEMORY_INDEX) ]])\n{\n   uint tileIndex = (threadgroupInGrid.y * threadgroupsPerGrid.x) + threadgroupInGrid.x;\n   uint offset = THREADGROUP_MEMORY_LENGTH * tileIndex;\n\n   for (int i = 0; i < THREADGROUP_MEMORY_LENGTH; i++)\n   {\n       threadgroupBufferDump[offset + i] = threadgroupData[i];\n   }\n}\n", v685, &v809}];
        v120 = v809;
        if (!v659)
        {
          *&v772 = 0;
          GTMTLReplay_fillError(&v772, 101, MEMORY[0x277CBEC10]);
          v121 = v772;
          GTMTLReplay_handleNSError(v121);
          ht = [MEMORY[0x277CBEA90] data];
          v124 = v120;
          v123 = 0;
          v125 = 0;
          goto LABEL_578;
        }

        v121 = [v659 newFunctionWithName:@"dumpThreadgroupData"];
        if (v121)
        {
          v122 = objc_alloc_init(MEMORY[0x277CD7070]);
          [v122 setLabel:@"Tile Pipeline for dumping Threadgroup data"];
          [v122 setTileFunction:v121];
          FillAttachmentPixelFormats(v110, v104[5], ht + v666, v122);
          *&v772 = v120;
          v123 = [obja newRenderPipelineStateWithTileDescriptor:v122 error:&v772];
          v124 = v772;

          if (v123)
          {
            v125 = 1;
LABEL_577:

LABEL_578:
            if (v125)
            {
              if (*(v671 + 2840))
              {
                v602 = v671[25];
              }

              else
              {
                v602 = 0;
              }

              v603 = [v114 renderCommandEncoderForKey:v602];
              [v603 pushDebugGroup:@"Dump Tile Threadgroup Data"];
              [v603 setRenderPipelineState:v123];
              v604 = [v705 heapBuffer];
              [v603 setTileBuffer:v604 offset:objc_msgSend(v705 atIndex:{"heapLocation"), 0}];

              [v603 setThreadgroupMemoryLength:v103 offset:v675 atIndex:v680];
              v869[0] = vdupq_n_s64(1uLL);
              *&v869[1] = 1;
              [v603 dispatchThreadsPerTile:v869];
              [v603 popDebugGroup];

              goto LABEL_584;
            }

LABEL_581:

LABEL_585:
LABEL_586:

            [v671[1] commitCommandBuffers];
            v605 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLBuffer-0x%llx-Fetch", v661];
            [v674[1] setObject:ht forKeyedSubscript:v605];
            if (v674[2] && v657)
            {
              v606 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
              [v674[2] setObject:v606 forKeyedSubscript:v605];
            }

            v737[0] = 0;
            v737[1] = v661;
            v24 = v605;
            v607 = v605;
            v737[2] = [v605 UTF8String];
            v737[3] = 0;
            v737[4] = [(apr_hash_t *)ht length];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v737, **v674);
            v608 = **v674;
            v609 = *v608;
            if ((*(v608 + 33) & 0x10) != 0)
            {
              v611 = **v674;
              v610 = *v608;
              do
              {
                v611 = (v611 + v609);
                v609 = *v611;
                v610 += v609;
              }

              while ((*(v611 + 33) & 0x20) == 0);
            }

            else
            {
              v610 = *v608;
            }

            [(*v674)[2] appendBytes:v608 length:v610];
            goto LABEL_594;
          }

          v781 = 0;
          GTMTLReplay_fillError(&v781, 101, MEMORY[0x277CBEC10]);
          v601 = v781;
          GTMTLReplay_handleNSError(v601);
          ht = [MEMORY[0x277CBEA90] data];
        }

        else
        {
          *&v772 = 0;
          GTMTLReplay_fillError(&v772, 101, MEMORY[0x277CBEC10]);
          v122 = v772;
          GTMTLReplay_handleNSError(v122);
          ht = [MEMORY[0x277CBEA90] data];
          v124 = v120;
        }

        v123 = 0;
        v125 = 0;
        goto LABEL_577;
      }

      ht = v671[1];
      v72 = v671[3];
      v73 = *v671;
      v74 = *(*v671 + 11) + v704;
      v75 = GetAliasStream(*(*v671 + 3), v661, v74 - 1);
      if (v75)
      {
        v76 = *v75;
      }

      else
      {
        v76 = 0;
      }

      v129 = [(apr_hash_t *)ht accelerationStructureForKey:v76];
      Object = GTMTLSMContext_getObject(*v73[5], v76, v74);
      if (!Object)
      {

        goto LABEL_553;
      }

      v131 = Object;
      v132 = [v72 bufferWithLength:24 alignment:1];
      v133 = [v72 accelerationStructureCommandEncoder];
      v134 = [v132 heapBuffer];
      [v133 writeAccelerationStructureSerializationData:v129 toBuffer:v134 offset:{objc_msgSend(v132, "heapLocation")}];

      v135 = [v72 commitCommandBufferAndWait];
      if ([v135 status] == 5)
      {
        *v658 = [v135 error];

        goto LABEL_553;
      }

      v174 = [v132 data];
      v175 = v174;
      v176 = [v174 bytes];

      v686 = [(apr_hash_t *)ht defaultDevice];
      if ([v686 isCompatibleWithAccelerationStructure:*v176])
      {
        v177 = *(v131 + 113) != 0;
      }

      else
      {
        v177 = 0;
      }

      v708 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLAccelerationStructure-0x%llx-Generic", v76];
      v681 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-Offsets", v708];
      if (v177)
      {
        v275 = v686;
        if (!*(v131 + 112))
        {
          v276 = [v686 newBufferWithLength:v176[1] options:0];
          v277 = [v72 accelerationStructureCommandEncoder];
          [v277 serializePrimitiveAccelerationStructure:v129 toBuffer:v276 serializedBufferOffset:0];
          objd = [v72 commitCommandBufferAndWait];
          if ([objd status] == 5)
          {
LABEL_450:
            *v658 = [objd error];
LABEL_455:

            goto LABEL_456;
          }

          v275 = v686;
        }

        v678 = [v275 latestSupportedGenericBVHVersion];
        v276 = [objc_alloc(MEMORY[0x277CD6E28]) initWithVersion:v678];
        v277 = [v72 accelerationStructureCommandEncoder];
        if (([v277 writeGenericBVHStructureSizesOfAccelerationStructure:v129 into:v276] & 1) == 0)
        {
LABEL_456:

          goto LABEL_553;
        }

        objd = [v72 commitCommandBufferAndWait];
        if ([objd status] == 5)
        {
          goto LABEL_450;
        }

        objd = [objc_alloc(MEMORY[0x277CD6E38]) initWithVersion:v678];
        v672 = [v276 headerBufferSize];
        v667 = &v672[[v276 innerNodeBufferSize]];
        v662 = &v667[[v276 leafNodeBufferSize]];
        v655 = &v662[[v276 primitiveBufferSize]];
        v649 = &v655[[v276 geometryBufferSize]];
        v646 = ([v276 instanceTransformBufferSize] + v649);
        v643 = &v646[[v276 perPrimitiveDataBufferSize]];
        v279 = &v643[[v276 controlPointBufferSize]];
        v278 = [v72 bufferWithLength:? alignment:?];
        v484 = [v278 heapBuffer];
        [objd setHeaderBuffer:v484];

        [objd setHeaderBufferOffset:{objc_msgSend(v278, "heapLocation")}];
        v485 = [v278 heapBuffer];
        [objd setInnerNodeBuffer:v485];

        [objd setInnerNodeBufferOffset:{&v672[objc_msgSend(v278, "heapLocation")]}];
        v486 = [v278 heapBuffer];
        [objd setLeafNodeBuffer:v486];

        [objd setLeafNodeBufferOffset:{&v667[objc_msgSend(v278, "heapLocation")]}];
        v487 = [v278 heapBuffer];
        [objd setPrimitiveBuffer:v487];

        [objd setPrimitiveBufferOffset:{&v662[objc_msgSend(v278, "heapLocation")]}];
        v488 = [v278 heapBuffer];
        [objd setGeometryBuffer:v488];

        [objd setGeometryBufferOffset:{&v655[objc_msgSend(v278, "heapLocation")]}];
        v489 = [v278 heapBuffer];
        [objd setInstanceTransformBuffer:v489];

        [objd setInstanceTransformBufferOffset:{objc_msgSend(v278, "heapLocation") + v649}];
        v490 = [v278 heapBuffer];
        [objd setPerPrimitiveDataBuffer:v490];

        [objd setPerPrimitiveDataBufferOffset:{&v646[objc_msgSend(v278, "heapLocation")]}];
        v491 = [v278 heapBuffer];
        [objd setControlPointBuffer:v491];

        [objd setControlPointBufferOffset:{&v643[objc_msgSend(v278, "heapLocation")]}];
        v492 = [v72 accelerationStructureCommandEncoder];
        if (([v492 writeGenericBVHStructureOfAccelerationStructure:v129 into:objd] & 1) == 0)
        {
LABEL_454:

          v277 = v276;
          v276 = v278;
          goto LABEL_455;
        }

        v493 = [v72 commitCommandBufferAndWait];
        if ([v493 status] == 5)
        {
          *v658 = [v493 error];

          goto LABEL_454;
        }

        v641 = MEMORY[0x277CCAAB0];
        v782[0] = @"version";
        v679 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v678];
        v783[0] = v679;
        v782[1] = @"headerBufferOffset";
        v642 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
        v783[1] = v642;
        v782[2] = @"innerNodeBufferOffset";
        v673 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v672];
        v783[2] = v673;
        v782[3] = @"leafNodeBufferOffset";
        v668 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v667];
        v783[3] = v668;
        v782[4] = @"primitiveBufferOffset";
        v664 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v662];
        v783[4] = v664;
        v782[5] = @"geometryBufferOffset";
        v656 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v655];
        v783[5] = v656;
        v782[6] = @"instanceTransformBufferOffset";
        v651 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v649];
        v783[6] = v651;
        v782[7] = @"perPrimitiveDataBufferOffset";
        v647 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v646];
        v783[7] = v647;
        v782[8] = @"controlPointBufferOffset";
        v591 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v643];
        v783[8] = v591;
        v592 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v783 forKeys:v782 count:9];
        v593 = [v641 archivedDataWithRootObject:v592 requiringSecureCoding:1 error:v658];
        [v674[1] setObject:v593 forKeyedSubscript:v681];
      }

      else
      {
        v276 = objc_alloc_init(MEMORY[0x277CBEA90]);
        [v674[1] setObject:v276 forKeyedSubscript:v681];
        v278 = 0;
        v279 = 0;
      }

      v280 = [v278 data];
      [v674[1] setObject:v280 forKeyedSubscript:v708];

      if (v674[2] && v657)
      {
        v281 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
        [v674[2] setObject:v281 forKeyedSubscript:v708];
      }

      v712[0] = 0;
      v712[1] = v76;
      v282 = v708;
      v712[2] = [v708 UTF8String];
      v712[3] = 0;
      v712[4] = v279;
      DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v712, **v674);
      v283 = **v674;
      v284 = *v283;
      if ((*(v283 + 33) & 0x10) != 0)
      {
        v373 = **v674;
        v285 = *v283;
        do
        {
          v373 = (v373 + v284);
          v284 = *v373;
          v285 += v284;
        }

        while ((*(v373 + 33) & 0x20) == 0);
      }

      else
      {
        v285 = *v283;
      }

      [(*v674)[2] appendBytes:v283 length:v285];

      v24 = v72;
      goto LABEL_594;
    }

    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_84;
      }

      if (v661 == -1347)
      {
        if (s_logUsingOsLog == 1)
        {
          v172 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
          {
            LOWORD(v869[0]) = 0;
            _os_log_impl(&dword_24D764000, v172, OS_LOG_TYPE_INFO, "Harvesting translation buffer", v869, 2u);
          }
        }

        else
        {
          v195 = *MEMORY[0x277D85E08];
          v172 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting translation buffer"];
          v196 = v172;
          fprintf(v195, "%s\n", [v172 UTF8String]);
        }

        p[0] = 0;
        apr_pool_create_ex(p, 0, 0, v197);
        v198 = *v671;
        memset(v869, 0, 104);
        v199 = p[0];
        GTMTLSMContext_indirectCommandBufferResources(v869, *(v198 + 5), *(v198 + 11) + v704, p[0]);
        v687 = *(v198 + 1);
        v707 = v671[1];
        v200 = *&v869[0];
        v201 = apr_array_make(v199, *(*&v869[0] + 12), 32);
        objc = apr_hash_make(v199);
        hta = apr_hash_make(v199);
        if (*(v200 + 12) >= 1)
        {
          v202 = 0;
          v203 = 0;
          do
          {
            v204 = *(v200 + 24);
            v205 = apr_array_push(v201);
            v206 = [v707 bufferForKey:*(v204 + v202 + 16)];
            v207 = DEVICEOBJECT(v206);

            *v205 = [v207 gpuAddress];
            v205[1] = [v207 length];
            v205[2] = *(v204 + v202 + 16);
            *(v205 + 24) = *(v204 + v202 + 24);

            ++v203;
            v202 += 32;
          }

          while (v203 < *(v200 + 12));
        }

        qsort(v201->elts, v201->nelts, v201->elt_size, GTMTLGPUAddressResource_compare);
        v208 = *(&v869[2] + 1);
        *(*(&v869[2] + 1) + 24) = 0;
        *(v208 + 32) = 0;
        *(v208 + 16) = v208;
        *(v208 + 40) = 0;
        v209 = apr_hash_next((v208 + 16));
        if (v209)
        {
          v210 = v209;
          do
          {
            v211 = *(*(v210 + 1) + 32);
            v212 = apr_palloc(v199, 0x20uLL);
            v213 = [v707 renderPipelineStateForKey:*(v211 + 8)];
            v214 = DEVICEOBJECT(v213);

            *v212 = [v214 uniqueIdentifier];
            v212[1] = *(v211 + 8);
            v212[2] = [v214 gpuResourceID];
            apr_hash_set(objc, v212, 8, v212);

            v210 = apr_hash_next(v210);
          }

          while (v210);
        }

        v215 = *&v869[3];
        *(*&v869[3] + 24) = 0;
        *(v215 + 32) = 0;
        *(v215 + 16) = v215;
        *(v215 + 40) = 0;
        v216 = apr_hash_next((v215 + 16));
        if (v216)
        {
          v217 = v216;
          do
          {
            v218 = *(*(v217 + 1) + 32);
            v219 = apr_palloc(v199, 0x20uLL);
            v220 = [v707 computePipelineStateForKey:*(v218 + 8)];
            v221 = DEVICEOBJECT(v220);

            *v219 = [v221 uniqueIdentifier];
            v219[1] = *(v218 + 8);
            v219[2] = [v221 gpuResourceID];
            apr_hash_set(hta, v219, 8, v219);

            v217 = apr_hash_next(v217);
          }

          while (v217);
        }

        nelts = v201->nelts;
        v223 = 0;
        if (nelts >= 1)
        {
          v224 = (v201->elts + 24);
          do
          {
            v225 = *v224;
            v224 += 32;
            if (!v225)
            {
              ++v223;
            }

            --nelts;
          }

          while (nelts);
        }

        v226 = apr_array_make(v199, 3 * v223 + 2 * (*(hta + 12) + *(objc + 12)) + 3, 8);
        *apr_array_push(v226) = v223;
        v227 = v201->nelts;
        if (v227 >= 1)
        {
          v228 = 0;
          for (i = 0; i < v227; ++i)
          {
            elts = v201->elts;
            if (!elts[v228 + 24])
            {
              *&__dst[0] = *&elts[v228 + 16];
              entry = find_entry(v687, __dst, 8uLL, 0);
              if (*entry && (v232 = *(*entry + 32)) != 0)
              {
                v233 = atomic_load((v232 + 56));
                v234 = v232 + (~(v233 >> 2) & 8);
              }

              else
              {
                v234 = 8;
              }

              v235 = *v234;
              *apr_array_push(v226) = v235;
              v236 = &elts[v228];
              v237 = *&elts[v228];
              *apr_array_push(v226) = v237;
              v238 = *(v236 + 1);
              *apr_array_push(v226) = v238;
              v227 = v201->nelts;
            }

            v228 += 32;
          }
        }

        v239 = *(objc + 12);
        *apr_array_push(v226) = v239;
        *(objc + 10) = 0;
        *(objc + 2) = objc;
        *(objc + 3) = 0;
        *(objc + 4) = 0;
        v240 = apr_hash_next((objc + 16));
        if (v240)
        {
          v241 = v240;
          do
          {
            v242 = *(*(v241 + 1) + 32);
            *&__dst[0] = v242[1];
            v243 = find_entry(v687, __dst, 8uLL, 0);
            if (*v243 && (v244 = *(*v243 + 32)) != 0)
            {
              v245 = atomic_load((v244 + 56));
              v246 = v244 + (~(v245 >> 2) & 8);
            }

            else
            {
              v246 = 8;
            }

            v247 = *v246;
            *apr_array_push(v226) = v247;
            v248 = *v242;
            *apr_array_push(v226) = v248;
            v241 = apr_hash_next(v241);
          }

          while (v241);
        }

        v249 = *(hta + 12);
        *apr_array_push(v226) = v249;
        *(hta + 10) = 0;
        *(hta + 2) = hta;
        *(hta + 3) = 0;
        *(hta + 4) = 0;
        v250 = apr_hash_next((hta + 16));
        if (v250)
        {
          v251 = v250;
          do
          {
            v252 = *(*(v251 + 1) + 32);
            *&__dst[0] = v252[1];
            v253 = find_entry(v687, __dst, 8uLL, 0);
            if (*v253 && (v254 = *(*v253 + 32)) != 0)
            {
              v255 = atomic_load((v254 + 56));
              v256 = v254 + (~(v255 >> 2) & 8);
            }

            else
            {
              v256 = 8;
            }

            v257 = *v256;
            *apr_array_push(v226) = v257;
            v258 = *v252;
            *apr_array_push(v226) = v258;
            v251 = apr_hash_next(v251);
          }

          while (v251);
        }

        v259 = v226->elts;
        elt_size = v226->elt_size;
        v260 = v226->nelts;

        v262 = objc_alloc(MEMORY[0x277CBEA90]);
        v759[0] = MEMORY[0x277D85DD0];
        v759[1] = 3221225472;
        v759[2] = __HarvestResourceObject_block_invoke_101;
        v759[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
        v759[4] = p[0];
        ht = [v262 initWithBytesNoCopy:v259 length:elt_size * v260 deallocator:v759];
      }

      else if (v661 == -1026)
      {
        if (s_logUsingOsLog == 1)
        {
          v53 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            LOWORD(v869[0]) = 0;
            _os_log_impl(&dword_24D764000, v53, OS_LOG_TYPE_INFO, "Harvesting vertex data", v869, 2u);
          }
        }

        else
        {
          v185 = *MEMORY[0x277D85E08];
          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting vertex data"];
          v186 = v53;
          fprintf(v185, "%s\n", [v53 UTF8String]);
        }

        v187 = v669;
        v188 = v671[1];
        v189 = *v671;
        v190 = *(*v671 + 16);
        v191 = (*(v671 + 5640) - 1);
        v192 = *(v190 + 24) + (v191 << 6);
        memset(p, 0, 376);
        memcpy(v869, v671 + 24, 0x2BA8uLL);
        if (LODWORD(v869[698]) == 70)
        {
          memcpy(__dst, v671 + 31, 0x2B68uLL);
          if (*(v192 + 8) >> 2 == 1073737833)
          {
            p[46] = *v671[23];
            GTMTLSMContext_indirectCommandBufferResources(&p[32], *(v189 + 40), *v192, p[46]);
            GetExecuteCommandsInBufferArgs(p, v192, *(v189 + 16));
            v193 = GTMTLSMContext_getObject(**(v189 + 40), p[0], *v192);
            GTMTLCreateIndirectCommandEncoder(&p[5], v193[14]);
            p[45] = (p[3] + p[31] * *(v671 + 5641));
            GTMTLSMRenderCommandEncoder_loadIndirectCommand(__dst, &p[5], p[45], &p[32]);
            memcpy(&v869[3] + 8, __dst, 0x2B68uLL);
          }

          v194 = *&__dst[534];
        }

        else
        {
          v194 = *&v869[7];
        }

        v268 = GTMTLSMContext_getObject(**(v189 + 40), v194, *v192);
        if (v268)
        {
          v269 = v268;
          if (v268[9] || (v374 = v268[11]) != 0 && *(v374 + 1016) == 4)
          {
            memcpy(__dst, p, 0x178uLL);
            v270 = GTMTLReplayController_generatePostMeshData(v671, v188, v189, v190, v191, v192, v869, v269, __dst, obj, v187, v658);
          }

          else
          {
            memcpy(__dst, p, 0x178uLL);
            v270 = GTMTLReplayController_generatePostVertexData(v671, v188, v189, v190, v191, v192, v869, v269, __dst, obj, v658);
          }

          v342 = v270;
        }

        else
        {
          GTPostVertexDataError(1u, @"Internal error: Pipeline state error", 0, 0);
          *v658 = v342 = 0;
        }

        if (!v342)
        {
          goto LABEL_596;
        }

        v375 = objc_alloc(MEMORY[0x277CBEA90]);
        v376 = v342;
        v377 = [v342 contents];
        v378 = [v342 length];
        v760[0] = MEMORY[0x277D85DD0];
        v760[1] = 3221225472;
        v760[2] = __HarvestResourceObject_block_invoke;
        v760[3] = &unk_279658278;
        v379 = v342;
        v761 = v379;
        ht = [v375 initWithBytesNoCopy:v377 length:v378 deallocator:v760];
      }

      else
      {
        if (v661 > 0xFFFFFFFFFFFFFBFELL)
        {
          v173 = 0;
          ht = 0;
LABEL_338:
          if (v665)
          {
            v380 = v665;
          }

          else
          {
            v380 = v661;
          }

          v381 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLBuffer-0x%llx-Fetch", v380];
          [v674[1] setObject:ht forKeyedSubscript:v381];
          if (v674[2] && v657)
          {
            v382 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
            [v674[2] setObject:v382 forKeyedSubscript:v381];
          }

          v752[0] = 0;
          v752[1] = v380;
          v24 = v381;
          v383 = v381;
          v752[2] = [v381 UTF8String];
          v752[3] = v173;
          v752[4] = [(apr_hash_t *)ht length];
          DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v752, **v674);
          v384 = **v674;
          v385 = *v384;
          if ((*(v384 + 33) & 0x10) != 0)
          {
            v387 = **v674;
            v386 = *v384;
            do
            {
              v387 = (v387 + v385);
              v385 = *v387;
              v386 += v385;
            }

            while ((*(v387 + 33) & 0x20) == 0);
          }

          else
          {
            v386 = *v384;
          }

          [(*v674)[2] appendBytes:v384 length:v386];
          goto LABEL_594;
        }

        if (v661 < 0xFFFFFFFFFFFFFBBELL)
        {
          if (v661 < 0xFFFFFFFFFFFFFB7ELL)
          {
            if (v661 < 0xFFFFFFFFFFFFFB3ELL)
            {
              if (v661 < 0xFFFFFFFFFFFFFAFELL)
              {
                if (v661 < 0xFFFFFFFFFFFFFABELL)
                {
                  v594 = v671;
                  v595 = v671[3];
                  v596 = v665;
                  if (!v665)
                  {
                    v597 = GetAliasStream(*(*v671 + 3), v661, *(*v671 + 11) + v704 - 1);
                    if (v597)
                    {
                      v596 = *v597;
                    }

                    else
                    {
                      v596 = 0;
                    }

                    v594 = v671;
                  }

                  v613 = [v594[1] bufferForKey:v596];
                  v614 = [v691 objectForKeyedSubscript:@"range.location"];
                  LODWORD(v173) = [v614 unsignedIntValue];
                  v615 = [v691 objectForKeyedSubscript:@"range.length"];
                  v616 = [v615 unsignedIntValue];

                  v617 = [v613 length];
                  v618 = v617;
                  if (v616)
                  {
                    v619 = v173;
                    v620 = v616 + v173;
                    if (v620 >= v617)
                    {
                      v620 = v617;
                    }

                    if (v617 >= v173)
                    {
                      v173 = v173;
                    }

                    else
                    {
                      v173 = 0;
                    }

                    v621 = v620 >= v619;
                    v622 = v620 - v619;
                    if (v621)
                    {
                      v618 = v622;
                    }

                    else
                    {
                      v618 = 0;
                    }
                  }

                  else
                  {
                    v173 = 0;
                  }

                  if (s_logUsingOsLog == 1)
                  {
                    v623 = gt_tagged_log(0xCu);
                    if (os_log_type_enabled(v623, OS_LOG_TYPE_INFO))
                    {
                      v624 = [v613 label];
                      if (v624)
                      {
                        v0 = [v613 label];
                        v625 = v0;
                        v626 = [v0 UTF8String];
                      }

                      else
                      {
                        v626 = "no label";
                      }

                      LODWORD(v869[0]) = 134218754;
                      *(v869 + 4) = v596;
                      WORD6(v869[0]) = 2080;
                      *(v869 + 14) = v626;
                      WORD3(v869[1]) = 2048;
                      *(&v869[1] + 1) = v173;
                      LOWORD(v869[2]) = 2048;
                      *(&v869[2] + 2) = v173 + v618;
                      _os_log_impl(&dword_24D764000, v623, OS_LOG_TYPE_INFO, "Harvesting buffer %llu (%s) range: %llu - %llu", v869, 0x2Au);
                      if (v624)
                      {
                      }
                    }
                  }

                  else
                  {
                    v627 = *MEMORY[0x277D85E08];
                    v628 = MEMORY[0x277CCACA8];
                    v623 = [v613 label];
                    if (v623)
                    {
                      v0 = [v613 label];
                      v629 = v0;
                      v630 = [v0 UTF8String];
                    }

                    else
                    {
                      v630 = "no label";
                    }

                    v631 = [v628 stringWithFormat:@"Harvesting buffer %llu (%s) range: %llu - %llu", v596, v630, v173, v173 + v618];
                    v632 = v631;
                    fprintf(v627, "%s\n", [v631 UTF8String]);

                    if (v623)
                    {
                    }

                    else
                    {
                      v623 = 0;
                    }
                  }

                  v633 = [v595 bufferWithLength:v618 alignment:1];
                  v854 = v613;
                  v634 = [MEMORY[0x277CBEA60] arrayWithObjects:&v854 count:1];
                  GTMTLReplayClient_waitForUntrackedWritesToComplete(v671, v634);

                  v635 = [v595 blitCommandEncoder];
                  v636 = [v633 heapBuffer];
                  [v635 copyFromBuffer:v613 sourceOffset:v173 toBuffer:v636 destinationOffset:objc_msgSend(v633 size:{"heapLocation"), v618}];

                  ht = [v633 data];

                  goto LABEL_338;
                }

                *&v869[0] = 0;
                apr_pool_create_ex(v869, 0, 0, v23);
                v584 = *&v869[0];
                v585 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
                v587 = v586;
                v588 = objc_alloc(MEMORY[0x277CBEA90]);
                v753[0] = MEMORY[0x277D85DD0];
                v753[1] = 3221225472;
                v753[2] = __HarvestResourceObject_block_invoke_6;
                v753[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
                v753[4] = v584;
                ht = [v588 initWithBytesNoCopy:v585 length:v587 deallocator:v753];
              }

              else
              {
                *&v869[0] = 0;
                apr_pool_create_ex(v869, 0, 0, v23);
                v501 = *&v869[0];
                v502 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
                v504 = v503;
                v505 = objc_alloc(MEMORY[0x277CBEA90]);
                v754[0] = MEMORY[0x277D85DD0];
                v754[1] = 3221225472;
                v754[2] = __HarvestResourceObject_block_invoke_5;
                v754[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
                v754[4] = v501;
                ht = [v505 initWithBytesNoCopy:v502 length:v504 deallocator:v754];
              }
            }

            else
            {
              *&v869[0] = 0;
              apr_pool_create_ex(v869, 0, 0, v23);
              v392 = *&v869[0];
              v393 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
              v395 = v394;
              v396 = objc_alloc(MEMORY[0x277CBEA90]);
              v755[0] = MEMORY[0x277D85DD0];
              v755[1] = 3221225472;
              v756[0] = __HarvestResourceObject_block_invoke_4;
              v756[1] = &__block_descriptor_40_e12_v24__0_v8Q16l;
              v756[2] = v392;
              ht = [v396 initWithBytesNoCopy:v393 length:v395 deallocator:v755];
            }
          }

          else
          {
            *&v869[0] = 0;
            apr_pool_create_ex(v869, 0, 0, v23);
            v368 = *&v869[0];
            v369 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
            v371 = v370;
            v372 = objc_alloc(MEMORY[0x277CBEA90]);
            v757[0] = MEMORY[0x277D85DD0];
            v757[1] = 3221225472;
            v757[2] = __HarvestResourceObject_block_invoke_3;
            v757[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
            v757[4] = v368;
            ht = [v372 initWithBytesNoCopy:v369 length:v371 deallocator:v757];
          }
        }

        else
        {
          *&v869[0] = 0;
          apr_pool_create_ex(v869, 0, 0, v23);
          v263 = *&v869[0];
          v264 = DYMTLIndirectArgumentBufferManager_decodeArgumentBuffer();
          v266 = v265;
          v267 = objc_alloc(MEMORY[0x277CBEA90]);
          v758[0] = MEMORY[0x277D85DD0];
          v758[1] = 3221225472;
          v758[2] = __HarvestResourceObject_block_invoke_2;
          v758[3] = &__block_descriptor_40_e12_v24__0_v8Q16l;
          v758[4] = v263;
          ht = [v267 initWithBytesNoCopy:v264 length:v266 deallocator:v758];
        }
      }

      v173 = 0;
      goto LABEL_338;
    }

    if (v661 == -3)
    {
      if (s_logUsingOsLog == 1)
      {
        v179 = gt_tagged_log(0xCu);
        if (os_log_type_enabled(v179, OS_LOG_TYPE_INFO))
        {
          LOWORD(v869[0]) = 0;
          _os_log_impl(&dword_24D764000, v179, OS_LOG_TYPE_INFO, "Harvesting solid wireframe texture", v869, 2u);
        }
      }

      else
      {
        v334 = *MEMORY[0x277D85E08];
        v179 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting solid wireframe texture"];
        v335 = v179;
        fprintf(v334, "%s\n", [v179 UTF8String]);
      }

      v767 = 0;
      v336 = &v767;
      v337 = GTMTLReplayController_generateWireframeTexture(v671, obj, 0, 1, &v767);
LABEL_291:
      v180 = v337;
LABEL_392:
      v24 = *v336;
      goto LABEL_393;
    }

    if (v661 != -2)
    {
      if (v661 != -1)
      {
        if (v661 < 0xFFFFFFFFFFFFFDFFLL)
        {
          v340 = v665;
          if (!v665)
          {
            v341 = GetAliasStream(*(*v671 + 3), v661, *(*v671 + 11) + v704 - 1);
            if (v341)
            {
              v340 = *v341;
            }

            else
            {
              v340 = 0;
            }
          }

          v506 = v671[7];
          v507 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v340];
          v508 = [v506 objectForKeyedSubscript:v507];
          v509 = v508;
          if (v508)
          {
            v180 = v508;
          }

          else
          {
            v510 = [v671[1] tryGetTextureForKey:v340];
            v21 = v510;
            if (v510)
            {
              v180 = v510;
            }

            else
            {
              v511 = [v671[1] textureViewPoolEntryForKey:v340];
              v180 = [v511 materializeTextureView];
            }
          }

          if (s_logUsingOsLog == 1)
          {
            v512 = gt_tagged_log(0xCu);
            if (os_log_type_enabled(v512, OS_LOG_TYPE_INFO))
            {
              v513 = [v180 label];
              if (v513)
              {
                v21 = [v180 label];
                v514 = v21;
                v515 = [v21 UTF8String];
              }

              else
              {
                v515 = "no label";
              }

              LODWORD(v869[0]) = 134218242;
              *(v869 + 4) = v340;
              WORD6(v869[0]) = 2080;
              *(v869 + 14) = v515;
              _os_log_impl(&dword_24D764000, v512, OS_LOG_TYPE_INFO, "Harvesting texture %llu (%s)", v869, 0x16u);
              if (v513)
              {
              }
            }
          }

          else
          {
            v516 = *MEMORY[0x277D85E08];
            v517 = MEMORY[0x277CCACA8];
            v512 = [v180 label];
            if (v512)
            {
              v21 = [v180 label];
              v518 = v21;
              v519 = [v21 UTF8String];
            }

            else
            {
              v519 = "no label";
            }

            v520 = [v517 stringWithFormat:@"Harvesting texture %llu (%s)", v340, v519];
            v521 = v520;
            fprintf(v516, "%s\n", [v520 UTF8String]);

            if (v512)
            {
            }

            else
            {
              v512 = 0;
            }
          }

          v582 = [v691 objectForKeyedSubscript:@"DependencyGraphRequestedThumbnailTextureID"];
          v583 = v582;
          if (v582)
          {
            v661 = [v582 unsignedLongLongValue];
          }

          v24 = 0;
          if (v180)
          {
LABEL_394:
            v865 = v180;
            v415 = [MEMORY[0x277CBEA60] arrayWithObjects:&v865 count:1];
            GTMTLReplayClient_waitForUntrackedWritesToComplete(v671, v415);

            memset(v869, 0, 24);
            v416 = [v180 width];
            v417 = [v180 height];
            *&v869[0] = v416;
            *(&v869[0] + 1) = v417;
            *&v869[1] = 1;
            memset(__dst, 0, 24);
            *p = v869[0];
            p[2] = 1;
            GTMTLReplayClient_resizeResolution(__dst, v670, p);
            if ([v180 storageMode] == 3)
            {
              v869[0] = __dst[0];
              *&v869[1] = *&__dst[1];
              v418 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v180);
              [v418 setWidth:*&v869[0]];
              [v418 setHeight:*(&v869[0] + 1)];
              [v418 setDepth:*&v869[1]];
              [v418 setStorageMode:2];
              v419 = [v180 device];
              v420 = [v419 newTextureWithDescriptor:v418];

              if (!v420)
              {
                v863 = @"GTErrorKeyMTLTextureDescriptor";
                v432 = SerializeMTLTextureDescriptorToDictionary(v418);
                v864 = v432;
                v433 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v864 forKeys:&v863 count:1];
                GTMTLReplay_fillError(v658, 102, v433);
                ht = 0;
LABEL_423:

                goto LABEL_553;
              }

              v421 = v420;
            }

            else
            {
              v421 = v180;
            }

            ht = v421;
            v424 = *&v869[0] ^ *&__dst[0] | *(&v869[0] + 1) ^ *(&__dst[0] + 1) | *&v869[1] ^ *&__dst[1];
            if ([(apr_hash_t *)v421 textureType]== 4 || [(apr_hash_t *)ht textureType]== 8)
            {
              v425 = [v691 objectForKeyedSubscript:@"resolveMultisampleTexture"];
              v426 = v425;
              if (v425)
              {
                v427 = v425;
              }

              else
              {
                v427 = [MEMORY[0x277CCABB0] numberWithBool:v424 != 0];
              }

              v428 = v427;

              v429 = [v428 BOOLValue];
            }

            else
            {
              v429 = 0;
            }

            if (v424 | v665)
            {
              v862 = v691;
              v430 = [MEMORY[0x277CBEA60] arrayWithObjects:&v862 count:1];
              v861 = ht;
              v431 = [MEMORY[0x277CBEA60] arrayWithObjects:&v861 count:1];
              v764 = 0;
              v432 = GTMTLReplayClient_retrieveTexturesForResize(v671, v430, v431, v429, &v764);
              v418 = v764;

              if (v418)
              {
                v859 = *MEMORY[0x277CCA7E8];
                v860 = v418;
                v433 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v860 forKeys:&v859 count:1];
                GTMTLReplay_fillError(v658, 101, v433);
                if (v658)
                {
                  v434 = *v658;
                }

                else
                {
                  v434 = 0;
                }

                GTMTLReplay_handleNSError(v434);
                goto LABEL_423;
              }

              if (v424)
              {
                v441 = [v671[1] defaultCommandQueue];
                v433 = InternalCommandBuffer(v441, @"ResizeTexture", (v671 + 5));

                v442 = v671[2];
                v443 = [v432 objectAtIndexedSubscript:0];
                v763 = 0;
                v444 = GTMTLReplayController_resizeTexture(v442, obj, v433, v443, *&__dst[0], *(&__dst[0] + 1), &v763);
                v418 = v763;

                if (v418)
                {
                  v857 = *MEMORY[0x277CCA7E8];
                  v858 = v418;
                  v445 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v858 forKeys:&v857 count:1];
                  GTMTLReplay_fillError(v658, 101, v445);
                  if (v658)
                  {
                    v446 = *v658;
                  }

                  else
                  {
                    v446 = 0;
                  }

                  GTMTLReplay_handleNSError(v446);

                  ht = v444;
                  goto LABEL_423;
                }

                GTMTLReplay_commitCommandBuffer(v433);
              }

              else
              {
                v444 = [v432 firstObject];
                v433 = ht;
              }

              if (v665)
              {
                v494 = [v691 objectForKeyedSubscript:@"DependencyGraphRequestedTextureLevel"];
                v495 = [v494 unsignedIntegerValue];

                v496 = [v691 objectForKeyedSubscript:@"DependencyGraphRequestedTextureSlice"];
                v497 = [v496 unsignedIntegerValue];

                v498 = [v691 objectForKeyedSubscript:@"DependencyGraphRequestedTextureDepthPlane"];
                v499 = [v498 unsignedIntegerValue];

                v500 = [v691 objectForKeyedSubscript:@"DependencyGraphRequestedTextureAttachmentIndex"];
                v436 = [v500 unsignedIntegerValue];

                if (v436 == 8)
                {
                  v436 = 0;
                }

                else if (v436 == 9)
                {
                  v436 = 1;
                }

                v435 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture-0x%llx-%llx-%llu-%llu-%llu-%llu-Fetch", v665, v657, v495, v497, v499, v436];
                ht = v444;
                v661 = v665;
              }

              else
              {
                v435 = 0;
                v436 = -1;
                ht = v444;
              }
            }

            else
            {
              v435 = 0;
              v436 = -1;
            }

            v437 = v671[3];
            v762 = 0;
            GTMTLReplayClient_harvestTexture(obj, v437, ht, v661, v674, v436, v435, v657, &v762);
            v438 = v762;
            if (!v438)
            {

              goto LABEL_594;
            }

            v439 = v438;
            v855 = *MEMORY[0x277CCA7E8];
            v856 = v438;
            v440 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v856 forKeys:&v855 count:1];
            GTMTLReplay_fillError(v658, 102, v440);

            goto LABEL_553;
          }

          v423 = 1;
          v422 = 0;
LABEL_550:
          GTMTLReplay_fillError(v658, 102, v422);
          if ((v423 & 1) == 0)
          {
          }

          goto LABEL_553;
        }

        GTMTLReplayController_rewind(v671);
        GTMTLReplayController_debugSubCommand(v671, v704, HIDWORD(v14));
        v765 = 0;
        v180 = HarvestTileImageBlockMemory(v671, v661 + 513, &v765);
        v24 = v765;
        [v671[1] commitCommandBuffers];
LABEL_393:
        if (v180)
        {
          goto LABEL_394;
        }

        if (v24)
        {
          v866 = *MEMORY[0x277CCA7E8];
          v867 = v24;
          v422 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v867 forKeys:&v866 count:1];
          v423 = 0;
        }

        else
        {
          v422 = 0;
          v423 = 1;
        }

        goto LABEL_550;
      }

      if (s_logUsingOsLog == 1)
      {
        v54 = gt_tagged_log(0xCu);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          LOWORD(v869[0]) = 0;
          _os_log_impl(&dword_24D764000, v54, OS_LOG_TYPE_INFO, "Harvesting wireframe texture", v869, 2u);
        }
      }

      else
      {
        v338 = *MEMORY[0x277D85E08];
        v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting wireframe texture"];
        v339 = v54;
        fprintf(v338, "%s\n", [v54 UTF8String]);
      }

      v768 = 0;
      v336 = &v768;
      v337 = GTMTLReplayController_generateWireframeTexture(v671, obj, 1, 0, &v768);
      goto LABEL_291;
    }

    if (s_logUsingOsLog == 1)
    {
      v178 = gt_tagged_log(0xCu);
      if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
      {
        LOWORD(v869[0]) = 0;
        _os_log_impl(&dword_24D764000, v178, OS_LOG_TYPE_INFO, "Harvesting outline texture", v869, 2u);
      }
    }

    else
    {
      v329 = *MEMORY[0x277D85E08];
      v178 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting outline texture"];
      v330 = v178;
      fprintf(v329, "%s\n", [v178 UTF8String]);
    }

    v766 = 0;
    p[0] = 0;
    v331 = GTMTLReplayController_generateWireframeTexture(v671, obj, 0, 1, p);
    v332 = p[0];
    v683 = v332;
    if (!v331)
    {
      if (v332)
      {
        *&__dst[0] = *MEMORY[0x277CCA7E8];
        *&v869[0] = v332;
        v366 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v869 forKeys:__dst count:1];
      }

      else
      {
        v366 = 0;
      }

      v689 = v366;
      GTMTLReplay_fillError(&v766, 101, v366);
      GTMTLReplay_handleNSError(v766);
      v180 = 0;
LABEL_391:

      v336 = &v766;
      goto LABEL_392;
    }

    v689 = [*obj copy];
    [v689 setUsage:18];
    if ([v331 sampleCount] >= 2)
    {
      [v689 setSampleCount:1];
      if ([v331 textureType] == 4)
      {
        v333 = 2;
LABEL_373:
        [v689 setTextureType:v333];
        goto LABEL_374;
      }

      if ([v331 textureType] == 8)
      {
        v333 = 3;
        goto LABEL_373;
      }
    }

LABEL_374:
    v397 = [v331 device];
    v180 = [v397 newTextureWithDescriptor:v689];

    if (v180)
    {
      v654 = [v671[1] defaultCommandQueue];
      v677 = [v654 commandBuffer];
      v398 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.gputools.replay", @"GenerateOutlineTexture"];
      [v677 setLabel:v398];

      v399 = [v677 computeCommandEncoder];
      v400 = [v331 sampleCount];
      v401 = 10;
      if (v400 > 1)
      {
        v401 = 11;
      }

      [v399 setComputePipelineState:obj[v401]];
      v710 = [obj[10] threadExecutionWidth];
      v402 = [obj[10] maxTotalThreadsPerThreadgroup];
      v403 = [v331 width];
      v404 = [v331 height];
      if ([v331 arrayLength])
      {
        v405 = 0;
        v406 = v402 / v710;
        htc = (v710 + v403 - 1) / v710;
        v407 = (v402 / v710 + v404 - 1) / (v402 / v710);
        do
        {
          v408 = [v331 pixelFormat];
          v409 = [v331 sampleCount];
          v410 = [v331 mipmapLevelCount];
          if (v409 >= 2)
          {
            v411 = 4;
          }

          else
          {
            v411 = 2;
          }

          v412 = [v331 newTextureViewWithPixelFormat:v408 textureType:v411 levels:0 slices:v410, v405, 1];
          v413 = [v180 newTextureViewWithPixelFormat:objc_msgSend(v180 textureType:"pixelFormat") levels:2 slices:0, objc_msgSend(v180, "mipmapLevelCount"), v405, 1];
          [v399 setTexture:v412 atIndex:0];
          [v399 setTexture:v413 atIndex:1];
          *&v869[0] = htc;
          *(&v869[0] + 1) = v407;
          *&v869[1] = 1;
          *&__dst[0] = v710;
          *(&__dst[0] + 1) = v406;
          *&__dst[1] = 1;
          [v399 dispatchThreadgroups:v869 threadsPerThreadgroup:__dst];

          ++v405;
        }

        while (v405 < [v331 arrayLength]);
      }

      [v399 endEncoding];
      GTMTLReplay_commitCommandBuffer(v677);
      v414 = v180;
    }

    else
    {
      *&__dst[0] = @"GTErrorKeyMTLTextureDescriptor";
      *&v869[0] = v689;
      v654 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v869 forKeys:__dst count:1];
      GTMTLReplay_fillError(&v766, 101, v654);
      GTMTLReplay_handleNSError(v766);
    }

    goto LABEL_391;
  }

  if (v10 <= 49)
  {
    if (v10 != 39)
    {
      if (v10 == 48)
      {
        if (s_logUsingOsLog == 1)
        {
          v56 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            LOWORD(v869[0]) = 0;
            _os_log_impl(&dword_24D764000, v56, OS_LOG_TYPE_INFO, "Harvesting pipeline binaries", v869, 2u);
          }
        }

        else
        {
          v126 = *MEMORY[0x277D85E08];
          v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting pipeline binaries"];
          v127 = v56;
          fprintf(v126, "%s\n", [v56 UTF8String]);
        }

        if (!v665)
        {
          v128 = GetAliasStream(*(*v671 + 3), v661, *(*v671 + 11) + v704 - 1);
          if (v128)
          {
            v665 = *v128;
          }

          else
          {
            v665 = 0;
          }
        }

        v300 = [v691 objectForKeyedSubscript:@"context"];
        v301 = [v300 unsignedIntValue];

        v302 = v671[1];
        if (v301 == 71)
        {
          [v302 renderPipelineStateForKey:v665];
        }

        else
        {
          [v302 computePipelineStateForKey:v665];
        }
        v303 = ;
        v648 = DEVICEOBJECT(v303);

        if (v648)
        {
          v304 = v648;
          v305 = [v304 pipelineBinaries];
          v682 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v305, "count")}];
          v653 = v304;
          v735 = 0u;
          v736 = 0u;
          v733 = 0u;
          v734 = 0u;
          htb = v305;
          v688 = [(apr_hash_t *)htb countByEnumeratingWithState:&v733 objects:v801 count:16];
          if (v688)
          {
            v676 = *v734;
            do
            {
              for (j = 0; j != v688; j = j + 1)
              {
                if (*v734 != v676)
                {
                  objc_enumerationMutation(htb);
                }

                v306 = *(*(&v733 + 1) + 8 * j);
                v307 = objc_opt_new();
                v731 = 0u;
                v732 = 0u;
                v729 = 0u;
                v730 = 0u;
                obje = v306;
                v308 = [(apr_hash_t *)htb objectForKeyedSubscript:v306];
                v309 = [v308 countByEnumeratingWithState:&v729 objects:v800 count:16];
                if (v309)
                {
                  v310 = *v730;
                  do
                  {
                    for (k = 0; k != v309; ++k)
                    {
                      if (*v730 != v310)
                      {
                        objc_enumerationMutation(v308);
                      }

                      v312 = *(*(&v729 + 1) + 8 * k);
                      v313 = [v312 binary];

                      if (v313)
                      {
                        v798[0] = @"uniqueId";
                        v314 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v312, "uniqueIdentifier")}];
                        v799[0] = v314;
                        v798[1] = @"data";
                        v315 = [v312 binary];
                        v799[1] = v315;
                        v316 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v799 forKeys:v798 count:2];
                        [v307 addObject:v316];
                      }
                    }

                    v309 = [v308 countByEnumeratingWithState:&v729 objects:v800 count:16];
                  }

                  while (v309);
                }

                v317 = [v307 copy];
                [v682 setObject:v317 forKeyedSubscript:obje];
              }

              v688 = [(apr_hash_t *)htb countByEnumeratingWithState:&v733 objects:v801 count:16];
            }

            while (v688);
          }

          v318 = v671[8];
          v319 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v665];
          v320 = [v318 objectForKeyedSubscript:v319];

          if (v320)
          {
            v797 = v320;
            v321 = [MEMORY[0x277CBEA60] arrayWithObjects:&v797 count:1];
            [v682 setObject:v321 forKeyedSubscript:@"PerformanceStatistics"];
          }

          v728 = 0;
          v322 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v682 requiringSecureCoding:1 error:&v728];
          v323 = v728;
          if (!v323)
          {
            v344 = [MEMORY[0x277CCACA8] stringWithFormat:@"PipelineBinaries-0x%llx-Fetch", v661];
            [v674[1] setObject:v322 forKeyedSubscript:v344];
            if (v674[2] && v657)
            {
              v345 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
              [v674[2] setObject:v345 forKeyedSubscript:v344];
            }

            v727[0] = 0;
            v727[1] = v661;
            v346 = v344;
            v727[2] = [v344 UTF8String];
            v727[3] = 0;
            v727[4] = [v322 length];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v727, **v674);
            v347 = **v674;
            v348 = *v347;
            if ((*(v347 + 33) & 0x10) != 0)
            {
              v391 = **v674;
              v349 = *v347;
              do
              {
                v391 = (v391 + v348);
                v348 = *v391;
                v349 += v348;
              }

              while ((*(v391 + 33) & 0x20) == 0);
            }

            else
            {
              v349 = *v347;
            }

            [(*v674)[2] appendBytes:v347 length:v349];

            v24 = v653;
            ht = v653;
            goto LABEL_594;
          }

          v324 = v323;
          v325 = *MEMORY[0x277CCA7E8];
          v795[0] = *MEMORY[0x277CCA450];
          v795[1] = v325;
          v796[0] = @"Serializing PipelineBinaries data failed.";
          v796[1] = v323;
          v326 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v796 forKeys:v795 count:2];
          GTMTLReplay_fillError(v658, 101, v326);
          if (v658)
          {
            v327 = *v658;
          }

          else
          {
            v327 = 0;
          }

          GTMTLReplay_handleNSError(v327);

          v328 = v653;
        }

        else
        {
          v793 = *MEMORY[0x277CCA7E8];
          v794 = @"Failed to get binaries for pipeline";
          v328 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v794 forKeys:&v793 count:1];
          GTMTLReplay_fillError(v658, 102, v328);
        }

        goto LABEL_553;
      }

      if (v10 == 49)
      {
        ht = v671[3];
        v24 = [v671[1] tensorForKey:v665];
        v25 = [v691 objectForKeyedSubscript:@"tensorSlice"];
        v26 = v25;
        if (v25 && [v25 length] == 272)
        {
          v27 = v26;
          v28 = [v26 bytes];
          memcpy(__dst, v28, 0x110uLL);
          v29 = *(v28 + 216);
          v30 = *(v28 + 248);
          v869[6] = *(v28 + 232);
          v869[7] = v30;
          *&v869[8] = *(v28 + 264);
          v31 = *(v28 + 152);
          v32 = *(v28 + 184);
          v869[2] = *(v28 + 168);
          v869[3] = v32;
          v869[4] = *(v28 + 200);
          v869[5] = v29;
          v869[0] = *(v28 + 136);
          v869[1] = v31;
          *&v817 = 0;
          v816 = 0u;
          v815 = 0u;
          v814 = 0u;
          v813 = 0u;
          v812 = 0u;
          v811 = 0u;
          v810 = 0u;
          *&v809 = *&v869[0];
          *(&v809 + 1) = 1;
          if (*&v869[0] >= 2uLL)
          {
            v33 = v869 + 1;
            v34 = *&v869[0] - 1;
            v35 = &v810;
            v36 = 1;
            do
            {
              v37 = *v33++;
              v36 *= v37;
              *v35++ = v36;
              --v34;
            }

            while (v34);
          }

          if (s_logUsingOsLog == 1)
          {
            v38 = gt_tagged_log(0xCu);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = [v24 label];
              if (v39)
              {
                v10 = [v24 label];
                v40 = v10;
                v41 = [v10 UTF8String];
              }

              else
              {
                v41 = "no label";
              }

              LODWORD(v869[0]) = 134218242;
              *(v869 + 4) = v665;
              WORD6(v869[0]) = 2080;
              *(v869 + 14) = v41;
              _os_log_impl(&dword_24D764000, v38, OS_LOG_TYPE_INFO, "Harvesting tensor %llu (%s)", v869, 0x16u);
              if (v39)
              {
              }
            }
          }

          else
          {
            v271 = *MEMORY[0x277D85E08];
            v272 = MEMORY[0x277CCACA8];
            v38 = [v24 label];
            if (v38)
            {
              v10 = [v24 label];
              v273 = v10;
              v274 = [v10 UTF8String];
            }

            else
            {
              v274 = "no label";
            }

            v389 = [v272 stringWithFormat:@"Harvesting tensor %llu (%s)", v665, v274];
            v390 = v389;
            fprintf(v271, "%s\n", [v389 UTF8String]);

            if (v38)
            {
            }

            else
            {
              v38 = 0;
            }
          }

          v447 = [v24 dataType];
          v869[6] = *(&__dst[14] + 8);
          v869[7] = *(&__dst[15] + 8);
          *&v869[8] = *(&__dst[16] + 1);
          v869[2] = *(&__dst[10] + 8);
          v869[3] = *(&__dst[11] + 8);
          v869[4] = *(&__dst[12] + 8);
          v869[5] = *(&__dst[13] + 8);
          v869[0] = *(&__dst[8] + 8);
          v869[1] = *(&__dst[9] + 8);
          *&p[10] = v814;
          *&p[12] = v815;
          *&p[14] = v816;
          p[16] = v817;
          *&p[2] = v810;
          *&p[4] = v811;
          *&p[6] = v812;
          *&p[8] = v813;
          *p = v809;
          v711 = [(apr_hash_t *)ht bufferWithLength:GTMTLTensorExtents_bytesLength(v869 alignment:p, v447), 1];
          v448 = objc_alloc_init(MEMORY[0x277CD7038]);
          v869[6] = *(&__dst[14] + 8);
          v869[7] = *(&__dst[15] + 8);
          *&v869[8] = *(&__dst[16] + 1);
          v869[2] = *(&__dst[10] + 8);
          v869[3] = *(&__dst[11] + 8);
          v869[4] = *(&__dst[12] + 8);
          v869[5] = *(&__dst[13] + 8);
          v869[0] = *(&__dst[8] + 8);
          v869[1] = *(&__dst[9] + 8);
          v449 = MakeMTLTensorExtents(v869);
          [v448 setDimensions:v449];

          [v448 setDataType:{objc_msgSend(v24, "dataType")}];
          [v448 setUsage:1];
          v869[6] = v815;
          v869[7] = v816;
          *&v869[8] = v817;
          v869[2] = v811;
          v869[3] = v812;
          v869[4] = v813;
          v869[5] = v814;
          v869[0] = v809;
          v869[1] = v810;
          v450 = MakeMTLTensorExtents(v869);
          [v448 setStrides:v450];

          objf = [v711 tensorAlias:v448];
          v851 = v24;
          v451 = [MEMORY[0x277CBEA60] arrayWithObjects:&v851 count:1];
          GTMTLReplayClient_waitForUntrackedWritesToComplete(v671, v451);

          memset(p, 0, 272);
          GTMTLTensor_wholeSlice(p, objf);
          v452 = [(apr_hash_t *)ht blitCommandEncoder];
          memcpy(v869, __dst, 0x110uLL);
          v453 = GTMTLTensorSlice_origin(v869);
          memcpy(v869, __dst, 0x110uLL);
          v454 = GTMTLTensorSlice_dimensions(v869);
          memcpy(v869, p, 0x110uLL);
          v455 = GTMTLTensorSlice_origin(v869);
          memcpy(v869, p, 0x110uLL);
          v456 = GTMTLTensorSlice_dimensions(v869);
          [v452 copyFromTensor:v24 sourceOrigin:v453 sourceDimensions:v454 toTensor:objf destinationOrigin:v455 destinationDimensions:v456];

          v457 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTensor-0x%llx-Fetch", v665];
          v458 = [v711 data];
          [v674[1] setObject:v458 forKeyedSubscript:v457];
          if (v674[2] && v657)
          {
            v459 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
            [v674[2] setObject:v459 forKeyedSubscript:v457];
          }

          v460 = 0;
          memset(&v869[1], 0, 408);
          v772 = __dst[0];
          v777 = __dst[5];
          v778 = __dst[6];
          v779 = __dst[7];
          v780 = *&__dst[8];
          v773 = __dst[1];
          v774 = __dst[2];
          v775 = __dst[3];
          *&v869[0] = v665;
          *(&v869[0] + 1) = *&__dst[0];
          v776 = __dst[4];
          do
          {
            v869[v460 + 1] = *(&v772 + v460 * 16 + 8);
            ++v460;
          }

          while (v460 != 8);
          v461 = 0;
          v780 = *(&__dst[16] + 1);
          v772 = *(&__dst[8] + 8);
          v777 = *(&__dst[13] + 8);
          v778 = *(&__dst[14] + 8);
          v779 = *(&__dst[15] + 8);
          v773 = *(&__dst[9] + 8);
          v774 = *(&__dst[10] + 8);
          v775 = *(&__dst[11] + 8);
          v776 = *(&__dst[12] + 8);
          *&v869[9] = *(&__dst[8] + 1);
          do
          {
            *(&v869[v461 + 9] + 8) = *(&v772 + v461 * 16 + 8);
            ++v461;
          }

          while (v461 != 8);
          v462 = v457;
          v463 = [v457 UTF8String];
          v772 = v809;
          v777 = v814;
          v778 = v815;
          v779 = v816;
          v780 = v817;
          v773 = v810;
          v774 = v811;
          v775 = v812;
          v776 = v813;
          *&v869[18] = v809;
          for (m = 37; m != 53; m += 2)
          {
            *(v869 + m * 8) = *&v756[m];
          }

          v465 = *v674;
          v466 = **v674;
          *(v466 + 1) = 0;
          *(v466 + 2) = 0;
          *(v466 + 3) = 0;
          *v466 = 0xFFFFC62D00000024;
          v466[8] = 0;
          strcpy(v466 + 36, "C@17ul@17ulU<b>@17ul");
          *(v466 + 57) = 0;
          *(v466 + 59) = 0;
          *(v466 + 15) = *&v869[0];
          *(v466 + 17) = *(v869 + 8);
          v467 = *(&v869[1] + 8);
          v468 = *(&v869[2] + 8);
          v469 = *(&v869[3] + 8);
          *(v466 + 33) = *(&v869[4] + 8);
          *(v466 + 29) = v469;
          *(v466 + 25) = v468;
          *(v466 + 21) = v467;
          v470 = *(&v869[5] + 8);
          v471 = *(&v869[6] + 8);
          v472 = *(&v869[7] + 8);
          *(v466 + 49) = *(&v869[8] + 1);
          *(v466 + 45) = v472;
          *(v466 + 41) = v471;
          *(v466 + 37) = v470;
          v473 = v869[14];
          v474 = v869[16];
          *(v466 + 75) = v869[15];
          *(v466 + 79) = v474;
          *(v466 + 83) = *&v869[17];
          v475 = v869[9];
          *(v466 + 55) = v869[10];
          v476 = v869[12];
          *(v466 + 59) = v869[11];
          *(v466 + 63) = v476;
          *(v466 + 67) = v869[13];
          *(v466 + 71) = v473;
          *(v466 + 51) = v475;
          *v466 = 340;
          AppendString(v463, v466);
          v477 = *v466;
          v478 = (v477 + 3) & 0xFFFFFFFC;
          bzero(v466 + v477, v478 - v477);
          *v466 = v478;
          v479 = v466 + v478;
          *(v479 + 5) = v869[23];
          *(v479 + 6) = v869[24];
          *(v479 + 7) = v869[25];
          *(v479 + 16) = *&v869[26];
          *(v479 + 1) = v869[19];
          *(v479 + 2) = v869[20];
          *(v479 + 3) = v869[21];
          *(v479 + 4) = v869[22];
          *v479 = v869[18];
          *v466 += 136;
          v480 = *v465;
          v480[1] = -10142;
          v481 = *v480;
          if ((*(v480 + 33) & 0x10) != 0)
          {
            v483 = v480;
            v482 = *v480;
            do
            {
              v483 = (v483 + v481);
              v481 = *v483;
              v482 += v481;
            }

            while ((*(v483 + 33) & 0x20) == 0);
          }

          else
          {
            v482 = *v480;
          }

          [v465[2] appendBytes:v480 length:v482];

          goto LABEL_594;
        }

        v852 = *MEMORY[0x277CCA450];
        v853 = @"Tensor slice not found";
        v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v853 forKeys:&v852 count:1];
        GTMTLReplay_fillError(v658, 101, v95);
        if (v658)
        {
          v96 = *v658;
        }

        else
        {
          v96 = 0;
        }

        GTMTLReplay_handleNSError(v96);

        goto LABEL_553;
      }

LABEL_84:
      GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/GTMTLReplay_harvestResource.m", "HarvestResourceObject", 987, 32, "kDYMessageFetchResourceObject: %u invalidType", v10);
      goto LABEL_595;
    }

    ht = v671[1];
    v77 = GetAliasStream(*(*v671 + 3), v661, *(*v671 + 11) + v704 - 1);
    if (v77)
    {
      v78 = *v77;
    }

    else
    {
      v78 = 0;
    }

    if (s_logUsingOsLog == 1)
    {
      v136 = gt_tagged_log(0xCu);
      if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
      {
        LODWORD(v869[0]) = 134217984;
        *(v869 + 4) = v78;
        _os_log_impl(&dword_24D764000, v136, OS_LOG_TYPE_INFO, "Harvesting rasterization rate map %llu", v869, 0xCu);
      }
    }

    else
    {
      v137 = *MEMORY[0x277D85E08];
      v136 = [MEMORY[0x277CCACA8] stringWithFormat:@"Harvesting rasterization rate map %llu", v78];
      v138 = v136;
      fprintf(v137, "%s\n", [v136 UTF8String]);
    }

    v139 = GTMTLReplayClient_queryRasterMap(v671, v78, v658);
    if (v139)
    {
      v706 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v725 = 0u;
      v726 = 0u;
      v723 = 0u;
      v724 = 0u;
      v652 = v139;
      v140 = [v139 layers];
      v141 = [v140 countByEnumeratingWithState:&v723 objects:v792 count:16];
      if (v141)
      {
        v142 = *v724;
        objb = v140;
        do
        {
          for (n = 0; n != v141; ++n)
          {
            if (*v724 != v142)
            {
              objc_enumerationMutation(objb);
            }

            v144 = *(*(&v723 + 1) + 8 * n);
            v790[0] = @"RasterizationRateLayerPhysicalSize";
            v145 = MEMORY[0x277CCABB0];
            if (v144)
            {
              objc_msgSend_size(v144);
              v146 = v720;
            }

            else
            {
              v146 = 0;
              v720 = 0;
              v721 = 0;
              v722 = 0;
            }

            v147 = [v145 numberWithUnsignedLongLong:v146];
            v789[0] = v147;
            v148 = MEMORY[0x277CCABB0];
            if (v144)
            {
              objc_msgSend_size(v144);
              v149 = v718;
            }

            else
            {
              v149 = 0;
              v717 = 0;
              v718 = 0;
              v719 = 0;
            }

            v150 = [v148 numberWithUnsignedLongLong:v149];
            v789[1] = v150;
            v151 = [MEMORY[0x277CBEA60] arrayWithObjects:v789 count:2];
            v791[0] = v151;
            v790[1] = @"RasterizationRateLayerHorizontalLogicalCoordinatesAtPhysicalTileBoundaries";
            v152 = [v144 horizontalLogicalCoordinatesAtPhysicalTileBoundaries];
            v791[1] = v152;
            v790[2] = @"RasterizationRateLayerVerticalLogicalCoordinatesAtPhysicalTileBoundaries";
            v153 = [v144 verticalLogicalCoordinatesAtPhysicalTileBoundaries];
            v791[2] = v153;
            v154 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v791 forKeys:v790 count:3];
            [v706 addObject:v154];
          }

          v140 = objb;
          v141 = [objb countByEnumeratingWithState:&v723 objects:v792 count:16];
        }

        while (v141);
      }

      v155 = MEMORY[0x277CCAAB0];
      v787[0] = @"RasterizationRateMapPhysicalGranularity";
      v156 = MEMORY[0x277CCABB0];
      objc_msgSend_physicalGranularity(v652);
      v157 = [v156 numberWithUnsignedLongLong:v716[0]];
      v786[0] = v157;
      v158 = MEMORY[0x277CCABB0];
      objc_msgSend_physicalGranularity(v652);
      v159 = [v158 numberWithUnsignedLongLong:v715];
      v786[1] = v159;
      v160 = MEMORY[0x277CCABB0];
      objc_msgSend_physicalGranularity(v652);
      v161 = [v160 numberWithUnsignedLongLong:v714];
      v786[2] = v161;
      v162 = [MEMORY[0x277CBEA60] arrayWithObjects:v786 count:3];
      v787[1] = @"RasterizationRateLayers";
      v788[0] = v162;
      v788[1] = v706;
      v163 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v788 forKeys:v787 count:2];
      v713 = 0;
      v164 = [v155 archivedDataWithRootObject:v163 requiringSecureCoding:0 error:&v713];
      v165 = v713;
      [v674[1] setObject:v164 forKeyedSubscript:@"MTLRasterizationRateMap-DerivedMetadata"];

      if (!v165)
      {

        goto LABEL_161;
      }

      v166 = *MEMORY[0x277CCA7E8];
      v784[0] = *MEMORY[0x277CCA450];
      v784[1] = v166;
      v785[0] = @"Serializing MTLRasterizationRateMap-DerivedMetadata failed.";
      v785[1] = v165;
      v167 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v785 forKeys:v784 count:2];
      GTMTLReplay_fillError(v658, 101, v167);
      if (v658)
      {
        v168 = *v658;
      }

      else
      {
        v168 = 0;
      }

      GTMTLReplay_handleNSError(v168);
    }

    else
    {
      GTMTLReplay_fillError(v658, 101, MEMORY[0x277CBEC10]);
      if (v658)
      {
        v171 = *v658;
      }

      else
      {
        v171 = 0;
      }

      GTMTLReplay_handleNSError(v171);
    }

LABEL_553:
    v342 = 0;
    goto LABEL_596;
  }

  if (v10 == 50)
  {
    v79 = [v671[1] mtl4MachineLearningPipelineStateForKey:v665];
    ht = DEVICEOBJECT(v79);

    if (ht)
    {
      v80 = [(apr_hash_t *)ht optimizedBytecode];
      v24 = v80;
      if (v80)
      {
        v81 = MEMORY[0x277D25080];
        v82 = [v80 allValues];
        v83 = [v82 objectAtIndexedSubscript:0];
        v84 = [v24 allKeys];
        v85 = [v84 objectAtIndexedSubscript:0];
        v86 = [v81 newGraphWithMLIRByteCode:v83 signature:v85];

        if (v86)
        {
          v751 = 0;
          v87 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v86 requiringSecureCoding:0 error:&v751];
          v88 = v751;
          v89 = [MEMORY[0x277CCACA8] stringWithFormat:@"MLGraph-0x%llx-Fetch", v665];
          [v674[1] setObject:v87 forKeyedSubscript:v89];
          if (v674[2] && v657)
          {
            v90 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
            [v674[2] setObject:v90 forKeyedSubscript:v89];
          }

          v750[0] = 0;
          v750[1] = v665;
          v91 = v89;
          v750[2] = [v89 UTF8String];
          v750[3] = 0;
          v750[4] = [v87 length];
          DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v750, **v674);
          v92 = **v674;
          v93 = *v92;
          if ((*(v92 + 33) & 0x10) != 0)
          {
            v343 = **v674;
            v94 = *v92;
            do
            {
              v343 = (v343 + v93);
              v93 = *v343;
              v94 += v93;
            }

            while ((*(v343 + 33) & 0x20) == 0);
          }

          else
          {
            v94 = *v92;
          }

          [(*v674)[2] appendBytes:v92 length:v94];

          goto LABEL_594;
        }

        v845 = *MEMORY[0x277CCA450];
        v846 = @"Failed to serialize Machine Learning Graph Viewer object";
        v288 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v846 forKeys:&v845 count:1];
        GTMTLReplay_fillError(v658, 101, v288);
        if (v658)
        {
          v289 = *v658;
        }

        else
        {
          v289 = 0;
        }

        GTMTLReplay_handleNSError(v289);

        goto LABEL_553;
      }

      v847 = *MEMORY[0x277CCA450];
      v848 = @"machine learning pipeline bytecode not found";
      v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v848 forKeys:&v847 count:1];
      GTMTLReplay_fillError(v658, 101, v97);
      if (v658)
      {
        v98 = *v658;
      }

      else
      {
        v98 = 0;
      }

      goto LABEL_163;
    }

    v849 = *MEMORY[0x277CCA450];
    v850 = @"machine learning pipeline not found";
    v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v850 forKeys:&v849 count:1];
    GTMTLReplay_fillError(v658, 101, v169);
    if (v658)
    {
      v170 = *v658;
    }

    else
    {
      v170 = 0;
    }

LABEL_278:
    GTMTLReplay_handleNSError(v170);

    goto LABEL_553;
  }

  if (v10 == 51)
  {
    v57 = [v691 objectForKeyedSubscript:@"mlModule"];
    if (v57)
    {
      v58 = [v691 objectForKeyedSubscript:@"mlResource"];
      if (v58)
      {
        v59 = [v671[1] mtl4MachineLearningPipelineStateForKey:v665];
        v60 = DEVICEOBJECT(v59);

        if (v60)
        {
          v749 = 0;
          v61 = [v60 resourceBlobForByteCodeSignature:v57 resourceName:v58 error:&v749];
          v62 = v749;
          v63 = v62;
          if (v61)
          {
            v64 = MEMORY[0x277CCACA8];
            v65 = SanitizedShortString(v58, 0xAuLL);
            v66 = [v64 stringWithFormat:@"MLGraphData-0x%llx-%@-Fetch", v665, v65];

            [v674[1] setObject:v61 forKeyedSubscript:v66];
            if (v674[2] && v657)
            {
              v67 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
              [v674[2] setObject:v67 forKeyedSubscript:v66];
            }

            v748[0] = 0;
            v748[1] = v665;
            v68 = v66;
            v748[2] = [v66 UTF8String];
            v748[3] = 0;
            v748[4] = [v61 length];
            DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v748, **v674);
            v69 = **v674;
            v70 = *v69;
            if ((*(v69 + 33) & 0x10) != 0)
            {
              v388 = **v674;
              v71 = *v69;
              do
              {
                v388 = (v388 + v70);
                v70 = *v388;
                v71 += v70;
              }

              while ((*(v388 + 33) & 0x20) == 0);
            }

            else
            {
              v71 = *v69;
            }

            [(*v674)[2] appendBytes:v69 length:v71];
          }

          else
          {
            v837 = *MEMORY[0x277CCA7E8];
            v838 = v62;
            v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v838 forKeys:&v837 count:1];
            GTMTLReplay_fillError(v658, 101, v66);
            if (v658)
            {
              v367 = *v658;
            }

            else
            {
              v367 = 0;
            }

            GTMTLReplay_handleNSError(v367);
          }

          if (v61)
          {
            goto LABEL_595;
          }
        }

        else
        {
          v839 = *MEMORY[0x277CCA450];
          v840 = @"machine learning pipeline not found";
          v286 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v840 forKeys:&v839 count:1];
          GTMTLReplay_fillError(v658, 101, v286);
          if (v658)
          {
            v287 = *v658;
          }

          else
          {
            v287 = 0;
          }

          GTMTLReplay_handleNSError(v287);
        }
      }

      else
      {
        v841 = *MEMORY[0x277CCA450];
        v842 = @"machine learning resource key not specified";
        v181 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v842 forKeys:&v841 count:1];
        GTMTLReplay_fillError(v658, 101, v181);
        if (v658)
        {
          v182 = *v658;
        }

        else
        {
          v182 = 0;
        }

        GTMTLReplay_handleNSError(v182);
      }

      goto LABEL_553;
    }

    v843 = *MEMORY[0x277CCA450];
    v844 = @"machine learning module key not specified";
    v169 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v844 forKeys:&v843 count:1];
    GTMTLReplay_fillError(v658, 101, v169);
    if (v658)
    {
      v170 = *v658;
    }

    else
    {
      v170 = 0;
    }

    goto LABEL_278;
  }

  if (v10 != 52)
  {
    goto LABEL_84;
  }

  ht = [v691 objectForKeyedSubscript:@"mlIntermediateOps"];
  if (!ht || ![(apr_hash_t *)ht count])
  {
    v835 = *MEMORY[0x277CCA450];
    v836 = @"machine learning intermediate ops not specified";
    v97 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v836 forKeys:&v835 count:1];
    GTMTLReplay_fillError(v658, 101, v97);
    if (v658)
    {
      v98 = *v658;
    }

    else
    {
      v98 = 0;
    }

LABEL_163:
    GTMTLReplay_handleNSError(v98);

    goto LABEL_553;
  }

  v44 = [v671[1] mtl4MachineLearningPipelineStateForKey:v665];
  v652 = DEVICEOBJECT(v44);

  if (!v652)
  {
    v833 = *MEMORY[0x277CCA450];
    v834 = @"machine learning pipeline not found";
    v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v834 forKeys:&v833 count:1];
    GTMTLReplay_fillError(v658, 101, v183);
    if (v658)
    {
      v184 = *v658;
    }

    else
    {
      v184 = 0;
    }

    goto LABEL_485;
  }

  if ((v704 & 0x80000000) != 0 || (v45 = *v671, v46 = *(*v671 + 16), v704 >= *(v46 + 12)))
  {
    v831 = *MEMORY[0x277CCA450];
    v832 = @"dispatch index out of range";
    v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v832 forKeys:&v831 count:1];
    GTMTLReplay_fillError(v658, 101, v183);
    if (v658)
    {
      v184 = *v658;
    }

    else
    {
      v184 = 0;
    }

    goto LABEL_485;
  }

  v47 = *(v46 + 24) + (v704 << 6);
  if (*(v47 + 8) != -14893)
  {
    v829 = *MEMORY[0x277CCA450];
    v830 = @"expected machine learning dispatch call";
    v183 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v830 forKeys:&v829 count:1];
    GTMTLReplay_fillError(v658, 101, v183);
    if (v658)
    {
      v184 = *v658;
    }

    else
    {
      v184 = 0;
    }

LABEL_485:
    GTMTLReplay_handleNSError(v184);

    goto LABEL_553;
  }

  v781 = *GTTraceFunc_argumentBytesWithMap(v47, *(v47 + 13), v45[2]);
  v48 = *(*find_entry(v45[1], &v781, 8uLL, 0) + 32);
  memset(v869, 0, 512);
  v49 = *(v48 + 32);
  if (v49)
  {
    v50 = 0;
    while (1)
    {
      v51 = atomic_load((v49 + 4));
      v52 = v50 + (v51 >> 6) - 1;
      if (v52 > 0)
      {
        break;
      }

      v49 = *(v49 + 40);
      v50 = v52;
      if (!v49)
      {
        v50 = v52;
        goto LABEL_489;
      }
    }

    v52 = 0;
LABEL_489:
    v522 = v50 | (v52 << 32);
  }

  else
  {
    v522 = 0;
  }

  while (v49)
  {
    v523 = v49 + 64 + ((HIDWORD(v522) - v522) << 6);
    if ((*(v523 + 15) & 8) == 0 || *v523 > v45[11] + v704)
    {
      break;
    }

    GTMTL4SMCommandEncoder_processTraceFunc(v869, v523, v45[2]);
    v524 = atomic_load((v49 + 4));
    v525 = v522 + (v524 >> 6);
    v526 = (HIDWORD(v522) + 1);
    v522 = (v526 << 32) | v522;
    if (v526 == v525 - 1)
    {
      v522 = (v526 << 32) | v526;
      v49 = *(v49 + 40);
    }
  }

  v527 = [v671[1] mtl4ArgumentTableForKey:*&v869[4]];
  if (!v527)
  {
    v827 = *MEMORY[0x277CCA450];
    v828 = @"argument table not found";
    v580 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v828 forKeys:&v827 count:1];
    GTMTLReplay_fillError(v658, 101, v580);
    if (v658)
    {
      v581 = *v658;
    }

    else
    {
      v581 = 0;
    }

    GTMTLReplay_handleNSError(v581);

    goto LABEL_553;
  }

  v640 = objc_opt_new();
  v528 = [v652 reflection];
  v639 = v527;
  if (!v528)
  {
    v825 = *MEMORY[0x277CCA450];
    v826 = @"machine learning pipeline reflection data not available";
    v589 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v826 forKeys:&v825 count:1];
    GTMTLReplay_fillError(v658, 101, v589);
    if (v658)
    {
      v590 = *v658;
    }

    else
    {
      v590 = 0;
    }

    GTMTLReplay_handleNSError(v590);

    goto LABEL_553;
  }

  v638 = [v527 device];
  v824 = 0;
  v823 = 0u;
  v822 = 0u;
  v821 = 0u;
  v820 = 0u;
  v819 = 0u;
  v818 = 0u;
  v817 = 0u;
  v816 = 0u;
  v815 = 0u;
  v814 = 0u;
  v813 = 0u;
  v812 = 0u;
  v811 = 0u;
  v810 = 0u;
  v809 = 0u;
  [v527 getBufferBindings:&v809 bindingCount:{objc_msgSend(v527, "bufferBindingCount")}];
  v746 = 0u;
  v747 = 0u;
  v744 = 0u;
  v745 = 0u;
  v529 = [v528 bindings];
  v530 = [v529 countByEnumeratingWithState:&v744 objects:v808 count:16];
  v637 = v528;
  if (!v530)
  {
    goto LABEL_509;
  }

  v531 = *v745;
  while (2)
  {
    for (ii = 0; ii != v530; ++ii)
    {
      if (*v745 != v531)
      {
        objc_enumerationMutation(v529);
      }

      v533 = *(*(&v744 + 1) + 8 * ii);
      if ([v533 type] == 37 && !objc_msgSend(v533, "access"))
      {
        v534 = [v533 index];
        if (v534 >= [v527 bufferBindingCount])
        {
          v806 = *MEMORY[0x277CCA450];
          v807 = @"invalid tensor binding index";
          v598 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v807 forKeys:&v806 count:1];
          GTMTLReplay_fillError(v658, 101, v598);
          if (v658)
          {
            v599 = *v658;
          }

          else
          {
            v599 = 0;
          }
        }

        else
        {
          v535 = [v638 mtlTensorFromGpuResourceID:{*(&v809 + objc_msgSend(v533, "index"))}];
          v536 = DEVICEOBJECT(v535);

          if (v536)
          {
            [v640 addObject:v536];

            v527 = v639;
            continue;
          }

          v804 = *MEMORY[0x277CCA450];
          v805 = @"tensor not found";
          v598 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v805 forKeys:&v804 count:1];
          GTMTLReplay_fillError(v658, 101, v598);
          if (v658)
          {
            v599 = *v658;
          }

          else
          {
            v599 = 0;
          }
        }

        GTMTLReplay_handleNSError(v599);

        goto LABEL_553;
      }
    }

    v530 = [v529 countByEnumeratingWithState:&v744 objects:v808 count:16];
    if (v530)
    {
      continue;
    }

    break;
  }

LABEL_509:

  v537 = [v652 runWithInputsArray:v640 resultsArray:0 intermediateOperations:ht];
  v660 = objc_opt_new();
  v684 = v671[3];
  v740 = 0u;
  v741 = 0u;
  v742 = 0u;
  v743 = 0u;
  v644 = v537;
  v663 = [v644 countByEnumeratingWithState:&v740 objects:v803 count:16];
  if (v663)
  {
    v690 = 0;
    v650 = *v741;
    do
    {
      for (objg = 0; objg != v663; objg = objg + 1)
      {
        if (*v741 != v650)
        {
          objc_enumerationMutation(v644);
        }

        v538 = *(*(&v740 + 1) + 8 * objg);
        if (s_logUsingOsLog == 1)
        {
          v539 = gt_tagged_log(0xCu);
          if (os_log_type_enabled(v539, OS_LOG_TYPE_INFO))
          {
            v540 = [v538 label];
            if (v540)
            {
              v645 = [v538 label];
              v541 = v645;
              v542 = [v645 UTF8String];
            }

            else
            {
              v542 = "no label";
            }

            LODWORD(__dst[0]) = 67109634;
            DWORD1(__dst[0]) = v690;
            WORD4(__dst[0]) = 1024;
            *(__dst + 10) = v704;
            HIWORD(__dst[0]) = 2080;
            *&__dst[1] = v542;
            _os_log_impl(&dword_24D764000, v539, OS_LOG_TYPE_INFO, "Harvesting intermediate tensor #%d at dispatch index %d (%s)", __dst, 0x18u);
            if (v540)
            {
            }
          }
        }

        else
        {
          v543 = *MEMORY[0x277D85E08];
          v544 = MEMORY[0x277CCACA8];
          v539 = [*(*(&v740 + 1) + 8 * objg) label];
          if (v539)
          {
            v671 = [v538 label];
            v545 = v671;
            v546 = [v671 UTF8String];
          }

          else
          {
            v546 = "no label";
          }

          v547 = [v544 stringWithFormat:@"Harvesting intermediate tensor #%d at dispatch index %d (%s)", v690, v704, v546];
          v548 = v547;
          fprintf(v543, "%s\n", [v547 UTF8String]);

          if (v539)
          {
          }

          else
          {
            v539 = 0;
          }
        }

        memset(__dst, 0, 136);
        v549 = v538;
        v550 = [v549 dimensions];
        MakeGTMTLTensorExtents(__dst, v550);

        v777 = __dst[5];
        v778 = __dst[6];
        v779 = __dst[7];
        v773 = __dst[1];
        v774 = __dst[2];
        v775 = __dst[3];
        v776 = __dst[4];
        v780 = *&__dst[8];
        v772 = __dst[0];
        memset(&p[2], 0, 120);
        p[0] = *&__dst[0];
        p[1] = 1;
        if (*&__dst[0] >= 2uLL)
        {
          v551 = v772 - 1;
          v552 = &v772 + 1;
          v553 = &p[2];
          v554 = 1;
          do
          {
            v555 = *v552++;
            v554 *= v555;
            *v553++ = v554;
            --v551;
          }

          while (v551);
        }

        v556 = [v549 dataType];

        v777 = __dst[5];
        v778 = __dst[6];
        v779 = __dst[7];
        v773 = __dst[1];
        v774 = __dst[2];
        v775 = __dst[3];
        v776 = __dst[4];
        v780 = *&__dst[8];
        v772 = __dst[0];
        v557 = [v684 bufferWithLength:GTMTLTensorExtents_bytesLength(&v772 alignment:{p, v556), 1}];
        v558 = objc_opt_new();
        v559 = [v549 dimensions];
        [v558 setDimensions:v559];

        v560 = [v549 dimensions];
        v561 = MTLTensorExtents_computeStrides(v560);
        [v558 setStrides:v561];

        [v558 setDataType:{objc_msgSend(v549, "dataType")}];
        [v558 setUsage:1];
        memset(__dst, 0, 272);
        GTMTLTensor_wholeSlice(__dst, v549);
        memcpy(p, __dst, 0x110uLL);
        v562 = GTMTLTensorSlice_origin(p);
        memcpy(p, __dst, 0x110uLL);
        v563 = GTMTLTensorSlice_dimensions(p);
        v564 = [v549 dimensions];
        v565 = MTLTensorExtents_computeStrides(v564);

        v566 = [v557 tensorAlias:v558];
        v567 = DEVICEOBJECT(v566);

        v568 = [v684 blitCommandEncoder];
        v569 = DEVICEOBJECT(v568);
        [v569 copyFromTensor:v549 sourceOrigin:v562 sourceDimensions:v563 toTensor:v567 destinationOrigin:v562 destinationDimensions:v563];

        v570 = [v557 data];
        [v660 addObject:v570];

        v690 = (v690 + 1);
      }

      v663 = [v644 countByEnumeratingWithState:&v740 objects:v803 count:16];
    }

    while (v663);
  }

  v571 = MEMORY[0x277CCACA8];
  v572 = [(apr_hash_t *)ht objectAtIndexedSubscript:0];
  v573 = SanitizedShortString(v572, 0x18uLL);
  v574 = [v571 stringWithFormat:@"MLIntermediateData-0x%llx-%d-%@-Fetch", v665, v704, v573];

  [v674[1] setObject:v660 forKeyedSubscript:v574];
  if (v674[2] && v657)
  {
    v575 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v657];
    [v674[2] setObject:v575 forKeyedSubscript:v574];
  }

  v739[0] = 0;
  v739[1] = v665;
  v576 = v574;
  v739[2] = [v574 UTF8String];
  v739[3] = 0;
  v739[4] = [v660 count];
  DYTraceEncode_MTLCommandBuffer_restoreMTLBufferContents(v739, **v674);
  v577 = **v674;
  v578 = *v577;
  if ((*(v577 + 33) & 0x10) != 0)
  {
    v600 = **v674;
    v579 = *v577;
    do
    {
      v600 = (v600 + v578);
      v578 = *v600;
      v579 += v578;
    }

    while ((*(v600 + 33) & 0x20) == 0);
  }

  else
  {
    v579 = *v577;
  }

  [(*v674)[2] appendBytes:v577 length:v579];

LABEL_161:
  v24 = v652;
LABEL_594:

LABEL_595:
  v342 = 1;
LABEL_596:

  [g_activityLog leaveActivity];
  return v342;
}

void GTMTLReplayClient_waitForUntrackedWritesToComplete(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v11 + 1) + 8 * v7) hazardTrackingMode] == 1)
        {
          v10 = [*(a1 + 8) defaultCommandQueue];
          [v10 finish];

          v8 = v3;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = *(a1 + 40);
  v9 = atomic_load((a1 + 48));
  [v8 waitUntilSignaledValue:v9 - 1 timeoutMS:8000];
LABEL_11:
}

void GTMTLReplayClient_harvestTexture(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int ***a5, unint64_t a6, void *a7, uint64_t a8, void **a9)
{
  v192 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a7;
  v138 = [v14 device];
  v16 = v14;
  v17 = v13;
  if (v16)
  {
    v18 = [v16 device];
    v19 = v16;
    if ([v16 storageMode] == 3)
    {
      v19 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v16);
      [v19 setStorageMode:2];
      v20 = [v18 newTextureWithDescriptor:v19];

      if (!v20)
      {
        v190[0] = @"GTErrorKeyMTLTextureDescriptor";
        v30 = SerializeMTLTextureDescriptorToDictionary(v19);
        *&v172 = v30;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v172 forKeys:v190 count:1];

        GTMTLReplay_fillError(a9, 101, v24);
        if (a9)
        {
          v31 = *a9;
        }

        else
        {
          v31 = 0;
        }

        GTMTLReplay_handleNSError(v31);
        goto LABEL_23;
      }

      v19 = v20;
    }

    if ([v19 isFramebufferOnly])
    {
      v21 = [v17 blitCommandEncoder];

      if (v21)
      {
        [v17 commitCommandBuffer];
      }

      v22 = [v17 resourcePool];
      v23 = [v17 commandBuffer];
      *&v172 = 0;
      v24 = GTMTLReplayController_resizeTexture(v22, a1, v23, v19, [v19 width], objc_msgSend(v19, "height"), &v172);
      v25 = v172;

      if (v25)
      {
        v185 = *MEMORY[0x277CCA7E8];
        v190[0] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:&v185 count:1];
        GTMTLReplay_fillError(a9, 101, v26);
        if (a9)
        {
          v27 = *a9;
        }

        else
        {
          v27 = 0;
        }

        GTMTLReplay_handleNSError(v27);

LABEL_23:
        v29 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v24 = v19;
    }

    v24 = v24;
    v29 = v24;
LABEL_24:

    goto LABEL_25;
  }

  GTMTLReplay_fillError(a9, 101, MEMORY[0x277CBEC10]);
  if (a9)
  {
    v28 = *a9;
  }

  else
  {
    v28 = 0;
  }

  GTMTLReplay_handleNSError(v28);
  v29 = 0;
LABEL_25:

  v32 = [v29 pixelFormat];
  v137 = [v29 sampleCount];
  v170 = 0uLL;
  v171 = 0;
  v33 = [v29 width];
  v34 = [v29 height];
  v151 = [v29 depth];
  memset(v190, 0, 56);
  GTMTLPixelFormatGetInfoForDevice(v190, v138, v32);
  v191 = 0uLL;
  v122 = a8;
  v123 = v15;
  v134 = v17;
  v118 = v16;
  if ((~LODWORD(v190[1]) & 0x60) != 0)
  {
    if ((v190[1] & 0x2000) != 0)
    {
      *&v191 = 4;
    }

    v35 = 1;
  }

  else
  {
    v191 = xmmword_24DA8BC50;
    v35 = 2;
  }

  v188 = v32;
  v189 = v32;
  v185 = v33;
  v186[0] = v34;
  v186[1] = v151;
  v187[0] = v33;
  v187[1] = v34;
  v187[2] = v151;
  v183 = v29;
  v36 = v183;
  v184 = v36;
  PlanePixelFormat = GetPlanePixelFormat(v32, 0);
  v119 = v36;
  if (PlanePixelFormat)
  {
    v38 = PlanePixelFormat;
    v39 = MakeMTLTextureDescriptorFromTextureWithoutResourceIndex(v36);
    v147 = objc_alloc_init(MEMORY[0x277CD6F48]);
    v149 = objc_alloc_init(MEMORY[0x277CD6F70]);
    v40 = v34;
    v41 = 0;
    v42.i64[0] = v33;
    v42.i64[1] = v40;
    v43 = 1;
    v153 = v42;
    v143 = vshrq_n_u64(vaddq_s64(v42, vdupq_n_s64(1uLL)), 1uLL);
    v44 = &v188;
    v45 = &v185;
    v46 = &v183;
    while (1)
    {
      *v44 = v38;
      if (v32 == 543 || (v47 = v153, v32 == 540))
      {
        if (v43)
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v47 = vbslq_s8(vdupq_n_s64(v48), v153, v143);
      }

      *v45 = v47;
      v45[1].i64[0] = v151;
      [v39 setWidth:v47.i64[0]];
      [v39 setHeight:v45->i64[1]];
      [v39 setPixelFormat:v38];
      v49 = [v138 newTextureWithDescriptor:v39];
      v50 = *v46;
      *v46 = v49;

      if (!v49)
      {
        v181 = @"GTErrorKeyMTLTextureDescriptor";
        v60 = SerializeMTLTextureDescriptorToDictionary(v39);
        v182 = v60;
        v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v182 forKeys:&v181 count:1];

        GTMTLReplay_fillError(a9, 101, v61);
        if (a9)
        {
          v62 = *a9;
        }

        else
        {
          v62 = 0;
        }

        v72 = v123;
        v74 = v17;
        GTMTLReplay_handleNSError(v62);

        goto LABEL_96;
      }

      v51 = v32;
      v52 = [v147 colorAttachments];
      v53 = [v52 objectAtIndexedSubscript:v41];
      [v53 setTexture:v49];

      v54 = [v147 colorAttachments];
      v55 = [v54 objectAtIndexedSubscript:v41];
      [v55 setLoadAction:0];

      v56 = [v147 colorAttachments];
      v57 = [v56 objectAtIndexedSubscript:v41];
      [v57 setStoreAction:1];

      v58 = [v149 colorAttachments];
      v59 = [v58 objectAtIndexedSubscript:v41];
      [v59 setPixelFormat:v38];

      if ((v43 & 1) == 0)
      {
        break;
      }

      v32 = v51;
      v38 = GetPlanePixelFormat(v51, 1);
      v43 = 0;
      v45 = v187;
      v46 = &v184;
      v44 = &v189;
      v41 = 1;
    }

    v63 = GTMTLReplayController_defaultLibrary(v138);
    v64 = [v63 newFunctionWithName:@"Harvest2PVertex"];
    [v149 setVertexFunction:v64];

    v65 = @"Harvest2PFragmentDownloadYCbCr";
    if (((1 << (v51 + 12)) & 0x90000900009) == 0)
    {
      v65 = @"Harvest2PFragmentDownload";
    }

    if ((v51 - 500) <= 0x2B)
    {
      v66 = v65;
    }

    else
    {
      v66 = @"Harvest2PFragmentDownload";
    }

    v67 = [v63 newFunctionWithName:v66];
    [v149 setFragmentFunction:v67];

    v169 = 0;
    v68 = [v138 newRenderPipelineStateWithDescriptor:v149 error:&v169];
    v69 = v169;
    v70 = v69;
    if (v69)
    {
      v179 = *MEMORY[0x277CCA7E8];
      v180 = v69;
      v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
      GTMTLReplay_fillError(a9, 101, v71);
      v72 = v123;
      if (a9)
      {
        v73 = *a9;
      }

      else
      {
        v73 = 0;
      }

      GTMTLReplay_handleNSError(v73);

      v75 = v147;
    }

    else
    {
      v75 = v147;
      v71 = [v17 renderCommandEncoderWithDescriptor:v147];
      [v71 setRenderPipelineState:v68];
      [v71 setFragmentTexture:v119 atIndex:0];
      [v71 drawPrimitives:3 vertexStart:0 vertexCount:3];
      v72 = v123;
    }

    v74 = v17;
    if (!v70)
    {
      v35 = 2;
      v32 = v51;
      v36 = v119;
      goto LABEL_58;
    }
  }

  else
  {
LABEL_58:
    v120 = [v36 mipmapLevelCount];
    v135 = v32;
    if ([v36 textureType] == 5 || objc_msgSend(v36, "textureType") == 6)
    {
      v126 = 6 * [v36 arrayLength];
    }

    else
    {
      v126 = [v36 arrayLength];
    }

    v72 = v123;
    v74 = v17;
    v77 = a6;
    if (v120)
    {
      v145 = 0;
      v125 = (48 * v35 + 279) & 0x300;
      v142 = v35;
      do
      {
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v131 = 0;
        v132 = 0;
        v130 = 1;
        v82 = v186;
        v133 = v125;
        do
        {
          if (v35 <= v77 || v77 == v78)
          {
            v178 = 0;
            v176 = 0u;
            v177 = 0u;
            v174 = 0u;
            v175 = 0u;
            v83 = *(&v188 + v78);
            v172 = 0u;
            v173 = 0u;
            *&v76 = GTMTLGetTextureLevelInfoForDeviceWithOptions(&v172, v138, v83, *(v82 - 1), *v82, v82[1], v137, v145, *(&v191 + v78)).n128_u64[0];
            if (v78)
            {
              v84 = v77 == v78;
            }

            else
            {
              v84 = 1;
            }

            if (v84)
            {
              v81 = v173;
              v80 = *(&v172 + 1);
              v79 = v172;
            }

            v131 += *(&v177 + 1);
            v132 += v177;
            v133 += v178;
            v85 = v130;
            if (v130 <= *(&v176 + 1))
            {
              v85 = *(&v176 + 1);
            }

            v130 = v85;
          }

          ++v78;
          v82 += 3;
        }

        while (v35 != v78);
        v124 = v81;
        if (v126)
        {
          for (i = 0; i != v126; ++i)
          {
            v128 = v80;
            v129 = v79;
            v86 = [v74 bufferWithLength:v133 alignment:{v130, v76}];
            v87 = [v86 contents];
            bzero(v87, v125);
            *v87 = 0x63617074757265;
            v87[2] = 65538;
            v87[3] = v125;
            v148 = v86;
            v140 = [v86 heapLocation];
            v144 = [v74 blitCommandEncoder];
            v141 = v87;
            v139 = v87 + 6;
            v88 = &v183;
            v89 = &v191;
            v90 = &v188;
            v91 = v186;
            v92 = v77;
            v93 = v35;
            v154 = v125;
            do
            {
              if (v35 <= v77 || !v92)
              {
                v178 = 0;
                v176 = 0u;
                v177 = 0u;
                v174 = 0u;
                v175 = 0u;
                v172 = 0u;
                v173 = 0u;
                v94 = *v89;
                GTMTLGetTextureLevelInfoForDeviceWithOptions(&v172, v138, *v90, *(v91 - 1), *v91, v91[1], v137, v145, *v89);
                v95 = v173;
                v96 = v172;
                v150 = v177;
                v97 = v177;
                v98 = &v139[12 * *(v141 + 2)];
                *v98 = v135;
                *(v98 + 2) = v96;
                *(v98 + 3) = v95;
                *(v98 + 2) = v97;
                ++*(v141 + 2);
                v152 = *v88;
                v167 = v96;
                v168 = v95;
                v99 = [v148 heapBuffer];
                v165 = v170;
                v166 = v171;
                [v144 copyFromTexture:v152 sourceSlice:i sourceLevel:v145 sourceOrigin:&v165 sourceSize:&v167 toBuffer:v99 destinationOffset:v154 + v140 destinationBytesPerRow:v150 destinationBytesPerImage:v94 options:?];

                if ((v190[1] & 0x2000) != 0)
                {
                  v100 = [v134 commandBuffer];
                  v155[0] = MEMORY[0x277D85DD0];
                  v155[1] = 3221225472;
                  v155[2] = __GTMTLReplayClient_harvestTexture_block_invoke;
                  v155[3] = &unk_2796582C0;
                  v156 = v148;
                  v157 = v154;
                  v162 = v176;
                  v163 = v177;
                  v164 = v178;
                  v158 = v172;
                  v159 = v173;
                  v160 = v174;
                  v161 = v175;
                  [v100 addCompletedHandler:v155];
                }

                v154 += v178;
                v77 = a6;
                v35 = v142;
              }

              ++v88;
              ++v89;
              --v92;
              ++v90;
              v91 += 3;
              --v93;
            }

            while (v93);
            v72 = v123;
            if (v123)
            {
              v101 = v123;
              v74 = v134;
              v102 = v122;
            }

            else
            {
              v102 = v122;
              v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLTexture-0x%llx-%llx-%llu-%llu-Fetch", a4, v122, v145, i];
              v74 = v134;
            }

            v80 = v128;
            v79 = v129;
            v103 = [v148 data];
            [a5[1] setObject:v103 forKeyedSubscript:v101];

            if (v102 && a5[2])
            {
              v104 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v102];
              [a5[2] setObject:v104 forKeyedSubscript:v101];
            }

            v105 = [v101 UTF8String];
            v106 = **a5;
            *(v106 + 1) = 0;
            *(v106 + 2) = 0;
            *(v106 + 3) = 0;
            *v106 = 0xFFFFC09400000024;
            v106[8] = 0;
            strcpy(v106 + 36, "C@6ulululU<b>ululul");
            *(v106 + 7) = a4;
            *(v106 + 8) = 0;
            *(v106 + 9) = 0;
            *(v106 + 10) = 0;
            *(v106 + 11) = v129;
            *(v106 + 12) = v128;
            *(v106 + 13) = v124;
            *(v106 + 14) = v145;
            *(v106 + 15) = i;
            *v106 = 128;
            AppendString(v105, v106);
            v107 = *v106;
            v108 = (v107 + 3) & 0xFFFFFFFC;
            bzero(v106 + v107, v108 - v107);
            *v106 = v108;
            *(v106 + v108) = v132;
            v109 = *v106 + 8;
            *v106 = v109;
            *(v106 + v109) = v131;
            v110 = *v106 + 8;
            *v106 = v110;
            *(v106 + v110) = v133;
            *v106 += 8;
            v111 = *a5;
            v112 = **a5;
            v112[1] = -10236;
            v113 = v111[2];
            v114 = *v112;
            if ((*(v112 + 33) & 0x10) != 0)
            {
              v115 = *v112;
              v116 = v112;
              do
              {
                v116 = (v116 + v115);
                v115 = *v116;
                v114 += v115;
              }

              while ((*(v116 + 33) & 0x20) == 0);
            }

            [v113 appendBytes:? length:?];

            v35 = v142;
          }
        }

        ++v145;
      }

      while (v145 != v120);
    }
  }

LABEL_96:
  for (j = 8; j != -8; j -= 8)
  {
  }
}

void AddAttachmentToArray(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36[5] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = *find_entry(a4, a2, 8uLL, 0);
  if (v10)
  {
    v11 = *(v10 + 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *find_entry(a4, a2 + 8, 8uLL, 0);
  if (v12)
  {
    v12 = *(v12 + 32);
  }

  if (v11 && (*(v11 + 32) & 0x8000000000000000) == 0)
  {
    v32 = *a2;
    entry = find_entry(a5, &v32, 8uLL, 0);
    if (*entry && (v14 = *(*entry + 32)) != 0)
    {
      v15 = atomic_load((v14 + 56));
      v16 = v14 + (~(v15 >> 2) & 8);
    }

    else
    {
      v16 = 8;
    }

    v21 = *v16;
    v35[0] = @"DependencyGraphRequestedTextureID";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
    v36[0] = v22;
    v35[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v36[1] = v23;
    v35[2] = @"DependencyGraphRequestedTextureSlice";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 10)];
    v36[2] = v24;
    v35[3] = @"DependencyGraphRequestedTextureLevel";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 26)];
    v36[3] = v25;
    v35[4] = @"DependencyGraphRequestedTextureDepthPlane";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 9)];
    v36[4] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v36;
    v29 = v35;
LABEL_20:
    v31 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:5];
    [v9 addObject:v31];

    goto LABEL_21;
  }

  if (v12 && (*(v12 + 32) & 0x8000000000000000) == 0)
  {
    v32 = a2[1];
    v17 = find_entry(a5, &v32, 8uLL, 0);
    if (*v17 && (v18 = *(*v17 + 32)) != 0)
    {
      v19 = atomic_load((v18 + 56));
      v20 = v18 + (~(v19 >> 2) & 8);
    }

    else
    {
      v20 = 8;
    }

    v30 = *v20;
    v33[0] = @"DependencyGraphRequestedTextureID";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v30];
    v34[0] = v22;
    v33[1] = @"DependencyGraphRequestedTextureAttachmentIndex";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:a3];
    v34[1] = v23;
    v33[2] = @"DependencyGraphRequestedTextureSlice";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 11)];
    v34[2] = v24;
    v33[3] = @"DependencyGraphRequestedTextureLevel";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a2 + 24)];
    v34[3] = v25;
    v33[4] = @"DependencyGraphRequestedTextureDepthPlane";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a2 + 8)];
    v34[4] = v26;
    v27 = MEMORY[0x277CBEAC0];
    v28 = v34;
    v29 = v33;
    goto LABEL_20;
  }

LABEL_21:
}

uint64_t GTMTLReplayHost_IsFuncEnumSampledEncoder(uint64_t a1, int a2, _BYTE *a3)
{
  v5 = a1;
  ConstructorType = GTFenum_getConstructorType(a1);
  if (GTFenum_isMTLCommandEncoder(ConstructorType))
  {
    if (a2)
    {
      v7 = -16286;
    }

    else
    {
      v7 = -16351;
    }

    v8 = 0x21000000000811uLL >> (ConstructorType - 17);
    if ((ConstructorType - 17) >= 0x36)
    {
      LOBYTE(v8) = 0;
    }

    if (v7 == v5)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v9 & 1;
}

id GTMTLReplayHost_generateDerivedDataPayload(uint64_t a1, int a2)
{
  v80[12] = *MEMORY[0x277D85DE8];
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *(a1 + 120);
  v10 = 0x277CCA000uLL;
  v71 = v3;
  if (*(v9 + 12) < 1)
  {
    v54 = 0;
    goto LABEL_57;
  }

  v61 = v8;
  v62 = v4;
  v58 = v6;
  v59 = v7;
  v63 = 0;
  v64 = v5;
  v11 = 0;
  v12 = 0;
  v60 = a1;
  v72 = *(a1 + 128);
  do
  {
    v13 = v12;
    v14 = 24 * v12;
    while (1)
    {
      v15 = v10;
      v16 = *(v9 + 24);
      v17 = (v16 + v14);
      v18 = *(v16 + v14);
      v19 = *(v72 + 24) + (v18 << 6);
      v20 = *(v19 + 8);
      if (v20 != -10224)
      {
        break;
      }

      v10 = v15;
      v21 = [*(v15 + 2992) numberWithUnsignedInteger:v11];
      [v73 addObject:v21];

      v11 = 0;
      ++v13;
      v14 += 24;
      if (v13 >= *(v9 + 12))
      {
        goto LABEL_55;
      }
    }

    if (GTFenum_isBeginCommandBuffer(*(v19 + 8)))
    {
      if ((*(v19 + 15) & 0x40) == 0 || v17[5] == -12544)
      {
        v22 = v17[3];
        if (v22 < 1)
        {
          goto LABEL_35;
        }

        v23 = 0;
        v24 = v16 + 44;
        do
        {
          v23 += GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v24 + v14), a2, 0);
          v24 += 24;
          --v22;
        }

        while (v22);
        goto LABEL_36;
      }

LABEL_37:
      LODWORD(v13) = v17[3] + v13;
LABEL_38:
      v10 = v15;
      goto LABEL_52;
    }

    if (GTFenum_getConstructorType(v20) == 51)
    {
      if ((*(v19 + 15) & 0x40) == 0 || v17[5] == -12543)
      {
        v25 = v17[3];
        if (v25 >= 1)
        {
          v23 = 0;
          v26 = v16 + 44;
          do
          {
            v23 += GTMTLReplayHost_IsFuncEnumSampledEncoder(*(v26 + v14), a2, 0);
            v26 += 24;
            --v25;
          }

          while (v25);
          goto LABEL_36;
        }

LABEL_35:
        v23 = 0;
LABEL_36:
        ++v11;
        v10 = v15;
        v34 = [*(v15 + 2992) numberWithUnsignedInteger:v23];
        [v71 addObject:v34];

        goto LABEL_52;
      }

      goto LABEL_37;
    }

    if (!GTMTLReplayHost_IsFuncEnumSampledEncoder(v20, a2, v74))
    {
      goto LABEL_38;
    }

    v27 = v18 + 1;
    v65 = v17[1];
    if (v18 + 1 >= v65)
    {
      v28 = 0;
    }

    else
    {
      v28 = 0;
      do
      {
        v29 = *(v72 + 24) + (v27 << 6);
        v30 = *(v29 + 8);
        if (GTFenumIsSampledCall(v30, a2))
        {
          ++v28;
        }

        else if (v30 >> 2 == 1073737833)
        {
          GetExecuteCommandsInBufferArgs(v74, v29, *(v60 + 16));
          v78 = 0;
          memset(v77, 0, sizeof(v77));
          Object = GTMTLSMContext_getObject(**(v60 + 40), v74[0], *v29);
          GTMTLCreateIndirectCommandEncoder(v77, Object[14]);
          v32 = v75;
          if (v75)
          {
            v33 = v74[1] << 32;
            do
            {
              if (*(v76 + v77[1] + v78 * (v33 >> 32)))
              {
                ++v28;
              }

              v33 += 0x100000000;
              --v32;
            }

            while (v32);
          }

          v65 = v17[1];
        }

        ++v27;
      }

      while (v27 < v65);
    }

    v35 = [v64 count];
    v36 = *v19 - *(v60 + 88);
    v37 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    [v61 addObject:v37];

    v38 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    v39 = [*(v15 + 2992) numberWithUnsignedInteger:v36];
    [v62 setObject:v38 forKeyedSubscript:v39];

    v40 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
    v66 = v35;
    v41 = [*(v15 + 2992) numberWithUnsignedInteger:v35];
    [v64 setObject:v40 forKeyedSubscript:v41];

    v63 += v28;
    ConstructorType = GTFenum_getConstructorType(*(v19 + 8));
    if (ConstructorType == 17)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    if (ConstructorType == 28)
    {
      v43 = 1;
    }

    if (ConstructorType == 21)
    {
      v44 = 1;
    }

    else
    {
      v44 = v43;
    }

    v45 = ConstructorType;
    v46 = [*(v15 + 2992) numberWithInt:v44];
    [v69 addObject:v46];

    v10 = v15;
    if ((v45 | 4) == 0x15)
    {
      v47 = [*(v15 + 2992) numberWithUnsignedInteger:v66];
      v48 = v59;
    }

    else
    {
      v49 = [v58 count];
      v50 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
      v51 = [*(v15 + 2992) numberWithUnsignedInteger:v49];
      [v58 setObject:v50 forKeyedSubscript:v51];

      v52 = [*(v15 + 2992) numberWithUnsignedInteger:v28];
      [v68 addObject:v52];

      v47 = [*(v15 + 2992) numberWithInt:v44];
      v48 = v67;
    }

    [v48 addObject:v47];

    LODWORD(v13) = v17[3] + v13;
LABEL_52:
    v12 = v13 + 1;
  }

  while (v13 + 1 < *(v9 + 12));
  if (v11)
  {
    v53 = [*(v10 + 2992) numberWithUnsignedInteger:v11];
    [v73 addObject:v53];
  }

LABEL_55:
  v3 = v71;
  v8 = v61;
  v4 = v62;
  v54 = v63;
  v5 = v64;
  v6 = v58;
  v7 = v59;
LABEL_57:
  v79[0] = @"blitEncoderIndices";
  v79[1] = @"perCommandBufferEncoderCount";
  v80[0] = v7;
  v80[1] = v3;
  v79[2] = @"perEncoderDrawCallCount";
  v79[3] = @"perEncoderIndexDrawCallCount";
  v80[2] = v4;
  v80[3] = v5;
  v80[4] = v73;
  v79[4] = @"perFrameCommandBufferCount";
  v79[5] = @"totalDrawCallCount";
  v55 = [*(v10 + 2992) numberWithUnsignedInteger:v54];
  v80[5] = v55;
  v80[6] = &unk_2860D6740;
  v79[6] = @"uscSamplingPeriod";
  v79[7] = @"withoutBlitPerEncoderIndexDrawCallCount";
  v80[7] = v6;
  v80[8] = v8;
  v79[8] = @"activePerEncoderDrawCallCount";
  v79[9] = @"perEncoderKickCount";
  v80[9] = v69;
  v80[10] = v68;
  v79[10] = @"splitEncoderCommandCount";
  v79[11] = @"splitPerEncoderKickCount";
  v80[11] = v67;
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:12];

  return v56;
}

BOOL GTFenumIsSampledCall(uint64_t a1, int a2)
{
  v3 = a1;
  if (GTFenum_isDrawCall(a1) & 1) != 0 || (GTFenum_isComputeCall(v3))
  {
    return 1;
  }

  result = 1;
  if (v3 > -15298)
  {
    if (v3 == -15297)
    {
      return result;
    }

    v5 = -15059;
  }

  else
  {
    if (v3 == -16137)
    {
      return result;
    }

    v5 = -15486;
  }

  if (v3 != v5)
  {
    result = GTFenum_isSampledBlitCall(v3);
    if ((result & 1) == 0)
    {
      if (a2)
      {

        return GTFenum_isSampledBlitCallAGX(v3);
      }
    }
  }

  return result;
}

uint64_t GetRenderPassDescriptor()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v3 = v0;
  v7 = *MEMORY[0x277D85DE8];
  bzero(v5, 0x2BA0uLL);
  GTMTLSMCommandEncoder_processTraceFunc(v5, v3, v2);
  if (v5[0] == 70 || v5[0] == 65)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t RenderPassDescriptorContainsClear(uint64_t result)
{
  if (result)
  {
    if (*(result + 680) && *(result + 697) == 2 || *(result + 728) && *(result + 745) == 2)
    {
      return 1;
    }

    else
    {
      v1 = (result + 25);
      v2 = 8;
      result = 1;
      while (!*(v1 - 17) || *v1 != 2)
      {
        v1 += 64;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t SoftwareCounterForFunc(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = *(a1 + 8);
  if (v4 <= -16219)
  {
    if (v4 == -16251)
    {
      goto LABEL_15;
    }

    if (v4 == -16249 || v4 == -16248)
    {
      return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2) + 2);
    }
  }

  else
  {
    if (v4 <= -16148)
    {
      if (v4 != -16218)
      {
        if (v4 != -16217)
        {
          return result;
        }

        return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2) + 2);
      }

LABEL_15:
      GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
      return 0;
    }

    if (v4 == -16147 || v4 == -16145)
    {
      goto LABEL_15;
    }
  }

  return result;
}

id GTMTLReplayHost_collectSoftwareEncoderCounters(void *a1, int a2)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = a1;
  v3 = a1[15];
  v4 = *(v3 + 12);
  if (v4 >= 1)
  {
    v5 = 0;
    v35 = a1[2];
    v6 = a1[16];
    v31 = a1[15];
    do
    {
      v7 = (*(v3 + 24) + 24 * v5);
      if (GTMTLReplayHost_IsFuncEnumSampledEncoder(*(*(v6 + 24) + (*v7 << 6) + 8), a2, 0))
      {
        RenderPassDescriptor = GetRenderPassDescriptor();
        v33 = RenderPassDescriptorContainsClear(RenderPassDescriptor);
        v9 = *v7;
        if (v9 + 1 < v7[1])
        {
          v10 = 0;
          v11 = 0;
          v12 = v9 + 1;
          while (1)
          {
            v13 = *(v6 + 24) + (v12 << 6);
            v14 = *(v13 + 8);
            if (!GTFenumIsSampledCall(v14, a2))
            {
              break;
            }

            v10 += SoftwareCounterForFunc(v13, v35);
            v11 += v15;
LABEL_24:
            if (++v12 >= v7[1])
            {
              goto LABEL_27;
            }
          }

          if (v14 >> 2 != 1073737833)
          {
            goto LABEL_24;
          }

          GetExecuteCommandsInBufferArgs(v37, v13, v34[2]);
          v42 = 0;
          v41 = 0u;
          memset(v40, 0, sizeof(v40));
          Object = GTMTLSMContext_getObject(*v34[5], v37[0], *v13);
          GTMTLCreateIndirectCommandEncoder(v40, Object[14]);
          v17 = v38;
          if (!v38)
          {
            goto LABEL_24;
          }

          v18 = v37[1] << 32;
          while (2)
          {
            v19 = 0;
            v20 = v39 + v42 * (v18 >> 32);
            v21 = *(v20 + v40[1]);
            if (v21 <= 1)
            {
              if (!v21)
              {
                goto LABEL_23;
              }

              v22 = 0;
              if (v21 != 1)
              {
                goto LABEL_22;
              }

              v19 = 0;
              v23 = (v20 + *(&v41 + 1) + 24);
            }

            else if (v21 == 2)
            {
              v24 = v20 + *(&v41 + 1);
              v19 = *(v24 + 8);
              v23 = (v24 + 32);
            }

            else
            {
              if (v21 != 4)
              {
                v22 = 0;
                if (v21 == 8)
                {
                  v19 = 0;
                  v23 = (v20 + *(&v41 + 1) + 64);
                  break;
                }

LABEL_22:
                v10 += v19;
                v11 += v22;
LABEL_23:
                v18 += 0x100000000;
                if (!--v17)
                {
                  goto LABEL_24;
                }

                continue;
              }

              v19 = 0;
              v23 = (v20 + *(&v41 + 1) + 56);
            }

            break;
          }

          v22 = *v23;
          goto LABEL_22;
        }

        v11 = 0;
        v10 = 0;
LABEL_27:
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v33];
        v43[0] = v25;
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
        v43[1] = v26;
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v11];
        v43[2] = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
        [v32 addObject:v28];

        v5 += v7[3];
        v3 = v31;
        v4 = *(v31 + 12);
      }

      ++v5;
    }

    while (v5 < v4);
  }

  v29 = [v32 copy];

  return v29;
}

id GTMTLReplayHost_rawCounters(void *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = v1;
  v16 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v3);
        }

        v5 = [v3 objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * i), v15}];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v6 = [v5 objectForKeyedSubscript:@"counters"];
        v7 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v18;
          do
          {
            for (j = 0; j != v8; ++j)
            {
              if (*v18 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = *(*(&v17 + 1) + 8 * j);
              v12 = [v3 objectForKeyedSubscript:v11];

              if (!v12)
              {
                [v2 addObject:v11];
              }
            }

            v8 = [v6 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v8);
        }
      }

      v16 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }

  v13 = [v2 allObjects];

  return v13;
}

id GTMTLReplayHost_rawCountersToNormalizeSet(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v18 = *v26;
    do
    {
      v7 = 0;
      v19 = v5;
      do
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v3 objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v7)];
        v9 = [v8 objectForKeyedSubscript:@"subtype"];
        if ([v9 isEqualToString:@"Normalize"])
        {
          v20 = v9;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v10 = [v8 objectForKeyedSubscript:@"counters"];
          v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v22;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v22 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v21 + 1) + 8 * i);
                v16 = [v3 objectForKeyedSubscript:v15];

                if (!v16)
                {
                  [v2 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v12);
          }

          v6 = v18;
          v5 = v19;
          v9 = v20;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  return v2;
}

id GTMTLReplayHost_createPerCounterCommandData(void *a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = v4;
  v6 = [v4 count];
  if ([v3 count])
  {
    v7 = 0;
    do
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v19;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [*(*(&v20 + 1) + 8 * i) objectAtIndexedSubscript:v7];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v15 = [v3 objectAtIndexedSubscript:v7];
      v16 = [v8 copy];
      [v5 setObject:v16 forKeyedSubscript:v15];

      ++v7;
    }

    while (v7 < [v3 count]);
  }

  v17 = [v5 copy];

  return v17;
}