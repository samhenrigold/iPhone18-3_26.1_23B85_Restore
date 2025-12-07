uint64_t UnwrapMTLFXFrameInterpolatorDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v14, 0x258uLL);
  v15 = 56;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v14, 0x90u, 1u);
  if (*v8 >= 0x71u)
  {
    v10 = v15;
    *(v15 + 40) = *(v8 + 1);
    *(v10 + 42) = *(v8 + 2);
    *(v10 + 44) = *(v8 + 3);
    *(v10 + 46) = *(v8 + 4);
    *v10 = *(v8 + 5);
    *(v10 + 8) = *(v8 + 6);
    AliasStream2 = GetAliasStream2(a1, *(v8 + 7));
    if (AliasStream2)
    {
      v12 = *AliasStream2;
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 32) = v12;
    *(v10 + 16) = *(v8 + 8);
    *(v10 + 24) = *(v8 + 9);
    *(v10 + 48) = *(v8 + 10);
  }

  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXSpatialScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v10, 0x258uLL);
  v11 = 40;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v10, 0x8Bu, 1u);
  v8 = v11;
  *v11 = *(Data + 1);
  *(v8 + 8) = *(Data + 2);
  *(v8 + 16) = *(Data + 3);
  *(v8 + 24) = *(Data + 4);
  *(v8 + 32) = *(Data + 5);
  *(v8 + 34) = *(Data + 6);
  *(v8 + 36) = *(Data + 7);
  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXTemporalDenoisedScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 72;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x91u, 1u);
  v8 = *Data;
  v9 = v12;
  *v12 = *(Data + 1);
  *(v9 + 2) = *(Data + 2);
  *(v9 + 4) = *(Data + 3);
  *(v9 + 6) = *(Data + 4);
  *(v9 + 8) = *(Data + 5);
  *(v9 + 10) = *(Data + 6);
  *(v9 + 12) = *(Data + 7);
  *(v9 + 14) = *(Data + 8);
  *(v9 + 20) = *(Data + 9);
  *(v9 + 24) = *(Data + 10);
  *(v9 + 32) = *(Data + 11);
  *(v9 + 40) = *(Data + 12);
  *(v9 + 48) = *(Data + 13);
  *(v9 + 56) = *(Data + 28);
  *(v9 + 60) = *(Data + 30);
  *(v9 + 64) = *(Data + 16);
  *(v9 + 65) = *(Data + 17);
  if (v8 >= 0x4D)
  {
    *(v9 + 66) = *(Data + 18);
    *(v9 + 22) = *(Data + 19);
    if (v8 >= 0x50)
    {
      *(v9 + 67) = *(Data + 20);
      if (v8 >= 0x6D)
      {
        *(v9 + 16) = *(Data + 21);
        *(v9 + 18) = *(Data + 22);
        *(v9 + 68) = *(Data + 23);
        *(v9 + 69) = *(Data + 24);
        *(v9 + 70) = *(Data + 25);
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StoreMTLFXTemporalScalerDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 64;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x8Cu, 1u);
  v8 = *Data;
  v9 = v12;
  *v12 = *(Data + 1);
  *(v9 + 2) = *(Data + 2);
  *(v9 + 4) = *(Data + 3);
  *(v9 + 6) = *(Data + 4);
  *(v9 + 16) = *(Data + 5);
  *(v9 + 24) = *(Data + 6);
  *(v9 + 32) = *(Data + 7);
  *(v9 + 40) = *(Data + 8);
  *(v9 + 48) = *(Data + 18);
  *(v9 + 52) = *(Data + 20);
  *(v9 + 56) = *(Data + 11);
  *(v9 + 57) = *(Data + 12);
  if (v8 >= 0x4D)
  {
    *(v9 + 58) = *(Data + 13);
    *(v9 + 8) = *(Data + 14);
    if (v8 >= 0x50)
    {
      *(v9 + 59) = *(Data + 15);
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t GetStreamAtIndex(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = a2;
  v4 = *find_entry(a1, &v6, 8uLL, 0);
  if (v4)
  {
    while (1)
    {
      v4 = *(v4 + 32);
      if (!v4)
      {
        break;
      }

      if (*(v4 + 40) <= a3)
      {
        return *(v4 + 8);
      }
    }
  }

  return 0;
}

uint64_t StoreSnapshot(uint64_t a1, uint64_t a2, char *__s, void *a4)
{
  v8 = *(a1 + 48);
  v9 = strlen(__s);
  v10 = *find_entry(*(a1 + 32), __s, v9, 0);
  if (v10)
  {
    v11 = *(v10 + 32);
    if (v11)
    {
      v12 = v11[8];
      if (!a4)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), __s, v8, (a1 + 64));
  v15 = v14;
  if (gt_error_assert_add_error((a1 + 64), v14 > 7, "data.length >= sizeof(uint64_t)"))
  {
    return 0;
  }

  v12 = GTTraceEncoder_storeBlob(a2, Data, v15);
  v11 = apr_palloc(v8, 0x10uLL);
  *v11 = **(a2 + 16);
  v11[8] = v12;
  if (__s)
  {
    v16 = apr_palloc(v8, v9 + 1);
    memcpy(v16, __s, v9 + 1);
  }

  else
  {
    v16 = 0;
  }

  apr_hash_set(*(a1 + 32), v16, v9, v11);
  if (a4)
  {
LABEL_11:
    *a4 = *v11;
  }

  return v12;
}

uint64_t StoreMTLHeapDescriptorUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v11, 0x258uLL);
  v12 = 24;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v11, 0x36u, 1u);
  v8 = v12;
  *(v12 + 16) = 32;
  *v8 = GTMTLHeapDescriptorDefaults;
  v9 = *Data;
  *(v8 + 8) = *(Data + 1);
  *(v8 + 20) = *(Data + 4);
  *(v8 + 16) = *(Data + 7);
  if (v9 >= 0x2A)
  {
    *(v8 + 19) = *(Data + 8);
    if (v9 >= 0x34)
    {
      *v8 = *(Data + 9);
      if (v9 >= 0x66)
      {
        *(v8 + 18) = *(Data + 10);
      }
    }
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t SaveMTLLibraryInfo_(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  memset(v7, 0, sizeof(v7));
  DecodeDYMTLLibraryInfo(a3, v7, 0, (a1 + 64));
  *(*(a2 + 16) + 14) = AllocatePipelineReflectionWithType(a2, v7, 0x85u);
  return DecodeDYMTLLibraryInfo(a3, v7, 1, (a1 + 64));
}

uint64_t UnwrapMTLCompileOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v9 = Data;
  v10 = v8;
  bzero(v13, 0x258uLL);
  DecodeDYMTLCompileOptions(v9, v10, v13, 0, a1);
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v13, 0x49u, 1u);
  DecodeDYMTLCompileOptions(v9, v10, v13, 1, a1);
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t StoreMTLTextureMipmapInfoUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  Data = GTCaptureArchive_readData(*a1, v4, a3, *v4, (a1 + 64));
  bzero(v17, 0x258uLL);
  v7 = 16 * Data[8];
  v18 = 16;
  v19 = v7;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v17, 0x5Fu, 1u);
  v9 = *(Data + 1);
  v10 = v18;
  v11 = v19;
  *(v18 + 8) = *(Data + 1);
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  *v10 = v12;
  if (v9)
  {
    v13 = (v11 + 8);
    v14 = (Data + 40);
    do
    {
      *(v13 - 2) = *(v14 - 2);
      *(v13 - 1) = *(v14 - 1);
      v15 = *v14;
      v14 += 4;
      *v13 = v15;
      v13 += 4;
      --v9;
    }

    while (v9);
  }

  apr_pool_clear(v5);
  return DescriptorWithCount;
}

uint64_t StreamArrayFromFile(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  Data = GTCaptureArchive_readData(*a1, *(a1 + 8), a3, **(a1 + 8), (a1 + 64));
  if (gt_error_assert_add_error((a1 + 64), v8 >= 8 * a4, "data.length >= count * sizeof(uint64_t)"))
  {
    return 0;
  }

  v10 = a4;
  v11 = 8 * a4;
  v12 = apr_palloc(*(a1 + 56), v11);
  v13 = v12;
  if (v12)
  {
    bzero(v12, v11);
  }

  return StreamArray(a1, a2, v13, Data, v10);
}

uint64_t UnwrapMTL4CommandBufferOptionsUsingDecode(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *(a1 + 8);
  v6 = *v5;
  Data = GTCaptureArchive_readData(*a1, v5, a3, *v5, (a1 + 64));
  if (!Data)
  {
    return 0;
  }

  v8 = Data;
  bzero(v15, 0x258uLL);
  v16 = 8;
  DescriptorWithCount = AllocateDescriptorWithCount(a2, v15, 0xA9u, 1u);
  v10 = v16;
  v11 = *(v8 + 1);
  *v16 = v11;
  AliasStream2 = GetAliasStream2(a1, v11);
  if (AliasStream2)
  {
    v13 = *AliasStream2;
  }

  else
  {
    v13 = 0;
  }

  *v10 = v13;
  apr_pool_clear(v6);
  return DescriptorWithCount;
}

uint64_t AllocateDescriptorWithCount(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v5 = 0;
  v6 = 0;
  do
  {
    v6 += (*(a2 + v5) + 7) & 0xFFFFFFFFFFFFFFF8;
    v5 += 8;
  }

  while (v5 != 600);
  v7 = *(*(a1 + 8) + 24);
  v8 = *(a1 + 24);
  v9 = *(a1 + 42);
  *(a1 + 42) = v9 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v7, v8, (v6 << 32) | (a3 << 16) | (a4 << 8) | v9);
  v11 = 0;
  v12 = Bytes + 16;
  do
  {
    if (((*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v12 += (*(a2 + v11) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v11) = v13;
    v11 += 8;
  }

  while (v11 != 600);
  return Bytes[8];
}

uint64_t AllocatePipelineReflectionWithType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = vdupq_n_s64(7uLL);
  v7 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  do
  {
    v5 = vaddq_s64(vandq_s8(vaddq_s64(*(a2 + v4), v6), v7), v5);
    v4 += 16;
  }

  while (v4 != 240);
  v8 = vaddvq_s64(v5);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(a1 + 8) + 24);
  v10 = *(a1 + 24);
  v11 = *(a1 + 42);
  *(a1 + 42) = v11 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v9, v10, (v8 << 32) | (a3 << 16) | v11 | 0x100);
  v13 = 0;
  v14 = Bytes + 16;
  do
  {
    if (((*(a2 + v13) + 7) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v14 += (*(a2 + v13) + 7) & 0xFFFFFFFFFFFFFFF8;
    *(a2 + v13) = v15;
    v13 += 8;
  }

  while (v13 != 240);
  return Bytes[8];
}

uint64_t AllocateMPSDescriptorWithType(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = 0;
  v5 = 0uLL;
  v6 = vdupq_n_s64(0xFuLL);
  v7 = vdupq_n_s64(0xFFFFFFFFFFFFFFF0);
  do
  {
    v5 = vaddq_s64(vandq_s8(vaddq_s64(*(a2 + v4), v6), v7), v5);
    v4 += 16;
  }

  while (v4 != 80);
  v8 = *(*(a1 + 8) + 24);
  v9 = *(a1 + 24);
  v10 = *(a1 + 42);
  *(a1 + 42) = v10 + 1;
  Bytes = GTTraceMemPool_allocateBytes(v8, v9, (vaddvq_s64(v5) << 32) | (a3 << 16) | v10 | 0x100);
  v12 = 0;
  v13 = Bytes + 16;
  do
  {
    if (((*(a2 + v12) + 15) & 0xFFFFFFFFFFFFFFF0) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v13 += (*(a2 + v12) + 15) & 0xFFFFFFFFFFFFFFF0;
    *(a2 + v12) = v14;
    v12 += 8;
  }

  while (v12 != 80);
  return Bytes[8];
}

void GTTraceFbufToFunc_createStream(uint64_t result, _DWORD *a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(result + 16);
  v6 = a2[1];
  if (v6 <= -15610)
  {
    if (v6 <= -16076)
    {
      if (v6 > -16234)
      {
        if (v6 <= -16164)
        {
          if (v6 <= -16199)
          {
            switch(v6)
            {
              case -16233:
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat(&v19, a2, (*a2 - 36), (result + 64));
                break;
              case -16200:
                v19 = 0u;
                v20 = 0u;
                DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
                break;
              case -16199:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
                break;
              default:
                return;
            }
          }

          else if (v6 > -16197)
          {
            if (v6 == -16196)
            {
              v21 = 0u;
              v22 = 0u;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              if (v6 != -16165)
              {
                return;
              }

              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newCommandQueueWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            }
          }

          else if (v6 == -16198)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else
        {
          switch(v6)
          {
            case -16120:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newHeapWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16119:
            case -16118:
            case -16115:
            case -16114:
            case -16113:
            case -16112:
            case -16111:
            case -16110:
            case -16109:
            case -16108:
            case -16105:
            case -16103:
            case -16102:
            case -16100:
            case -16097:
            case -16094:
            case -16093:
            case -16092:
            case -16087:
            case -16086:
            case -16085:
            case -16084:
            case -16083:
              return;
            case -16117:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLHeap_newBufferWithLength_options(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16116:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLHeap_newTextureWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16107:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16106:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16104:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLBuffer_newTiledTextureWithDescriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16101:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16099:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newTextureLayoutWithDescriptor_isHeapOrBufferBacked(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16098:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLBuffer_newLinearTextureWithDescriptor_offset_bytesPerRow_bytesPerImage(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16096:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newTextureWithBytesNoCopy_length_descriptor_deallocator(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16095:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newDefaultLibraryWithBundle_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16091:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16090:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16089:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16088:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16082:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_error(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            case -16081:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_pipelineLibrary_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            default:
              if (v6 == -16163)
              {
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLDevice_newBufferWithIOSurface(&v19, a2, (*a2 - 36), (result + 64));
              }

              else
              {
                if (v6 != -16128)
                {
                  return;
                }

                v19 = 0uLL;
                DYTraceDecode_MTLDevice_newFence(&v19, a2, (*a2 - 36), (result + 64));
              }

              break;
          }
        }
      }

      else if (v6 <= -18425)
      {
        if (v6 <= -18429)
        {
          switch(v6)
          {
            case -18432:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newSpatialScalerWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -18431:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newTemporalScalerWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -18429:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newFrameInterpolatorWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -18427)
        {
          v19 = 0u;
          v20 = 0u;
          if (v6 == -18426)
          {
            DYTraceDecode_MTLDevice_newMTL4TemporalScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            DYTraceDecode_MTLDevice_newMTL4FrameInterpolatorWithDescriptor_compiler(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -18428)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newTemporalDenoisedScalerWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newMTL4SpatialScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else
      {
        switch(v6)
        {
          case -16354:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_blitCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          case -16353:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_renderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          case -16352:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_computeCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          case -16351:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_parallelRenderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          case -16350:
          case -16349:
          case -16348:
          case -16347:
          case -16346:
          case -16345:
          case -16344:
          case -16341:
          case -16340:
          case -16339:
          case -16338:
          case -16337:
          case -16336:
          case -16335:
          case -16334:
          case -16333:
          case -16332:
          case -16331:
          case -16330:
          case -16329:
          case -16328:
          case -16327:
          case -16326:
          case -16325:
          case -16324:
          case -16323:
          case -16322:
          case -16321:
          case -16320:
          case -16319:
          case -16318:
          case -16317:
          case -16295:
          case -16293:
          case -16292:
          case -16291:
          case -16289:
          case -16288:
          case -16287:
            return;
          case -16343:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandQueue_commandBuffer(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16342:
            v19 = 0uLL;
            DYTraceDecode_MTLCommandQueue_commandBufferWithUnretainedReferences(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16316:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newCommandQueue(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16315:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newCommandQueueWithMaxCommandBufferCount(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16314:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithLength_options(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16313:
            goto LABEL_374;
          case -16312:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithBytesNoCopy_length_options_deallocator(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16311:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newDepthStencilStateWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16310:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newTextureWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16309:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newSamplerStateWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16308:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newDefaultLibrary(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16307:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithFile_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16306:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithData_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16305:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithSource_options_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16304:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithSource_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16303:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16302:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16301:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16300:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16299:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16298:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16297:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16296:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16294:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newTextureWithDescriptor_iosurface_plane(&v19, a2, (*a2 - 36), (result + 64));
            if (*(result + 68))
            {
              return;
            }

            v10 = *(&v19 + 1);
            if (!GetStreamAtIndex(*(result + 24), *(&v19 + 1), v3))
            {
              goto LABEL_508;
            }

            v12 = (v5 + 80);
            goto LABEL_514;
          case -16290:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLLibrary_newFunctionWithName(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -16286:
            v19 = 0uLL;
            DYTraceDecode_MTLParallelRenderCommandEncoder_renderCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          default:
            if (v6 == -18424)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newMTL4TemporalDenoisedScalerWithDescriptor_compiler(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              if (v6 != -16368)
              {
                return;
              }

              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLBuffer_newTextureWithDescriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (result + 64));
            }

            break;
        }
      }

      goto LABEL_503;
    }

    if (v6 > -15849)
    {
      if (v6 <= -15716)
      {
        if (v6 > -15741)
        {
          if (v6 <= -15734)
          {
            switch(v6)
            {
              case -15740:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
                break;
              case -15738:
                v20 = 0u;
                v21 = 0u;
                v19 = 0u;
                DYTraceDecode_MTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
                break;
              case -15734:
                v19 = 0uLL;
                *&v20 = 0;
                DYTraceDecode_MTLCaptureManager_newCaptureScopeWithDevice(&v19, a2, (*a2 - 36), (result + 64));
                break;
              default:
                return;
            }
          }

          else if (v6 > -15731)
          {
            if (v6 == -15730)
            {
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newFunctionWithGLIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              if (v6 != -15717)
              {
                return;
              }

              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newBinaryArchiveWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            }
          }

          else if (v6 == -15733)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCaptureManager_newCaptureScopeWithCommandQueue(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15731)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLIR_functionType(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 <= -15794)
        {
          switch(v6)
          {
            case -15848:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newCounterSampleBufferWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15847:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15830:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newFunctionWithPluginData_bitcodeType(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15778)
        {
          if (v6 == -15777)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newTextureWithDescriptor_offset(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15775)
            {
              return;
            }

            *&v23 = 0;
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15793)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newRasterizationRateMapWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15778)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLHeap_newBufferWithLength_options_offset(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 <= -15691)
      {
        if (v6 <= -15706)
        {
          switch(v6)
          {
            case -15715:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_pipelineLibrary(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15714:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection_pipelineLibrary(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15707:
              v20 = 0u;
              v21 = 0u;
              v19 = 0u;
              DYTraceDecode_MTLDevice_newBufferWithBytes_length_options_gpuAddress(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15696)
        {
          if (v6 == -15695)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibrary_error(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15693)
            {
              return;
            }

            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDAG_functions_error(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15705)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newBufferWithLength_options_gpuAddress(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15701)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandQueue_commandBufferWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else
      {
        if (v6 <= -15621)
        {
          if (v6 <= -15689)
          {
            if (v6 == -15690)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              *&v23 = 0;
              v21 = 0u;
              v22 = 0u;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
            }

            goto LABEL_503;
          }

          if (v6 == -15688)
          {
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLTexture_newTextureViewWithPixelFormat_textureType_levels_slices_swizzle_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          }

          if (v6 != -15673)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
          goto LABEL_443;
        }

        if (v6 > -15615)
        {
          if (v6 == -15614)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithSize(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15613)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_error(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15620)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLComputePipelineState_functionHandleWithFunction(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15615)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newAccelerationStructureWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      goto LABEL_503;
    }

    if (v6 > -15998)
    {
      if (v6 > -15922)
      {
        if (v6 > -15910)
        {
          if (v6 > -15892)
          {
            if (v6 == -15891)
            {
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newMotionEstimationPipelineWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              goto LABEL_503;
            }

            if (v6 != -15870)
            {
              return;
            }

            v19 = 0uLL;
            DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          }

          if (v6 == -15909)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedEventWithHandle(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15900)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newResourceGroupFromResources_count(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 > -15914)
        {
          if (v6 == -15913)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLTexture_newRemoteTextureViewForDevice(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15912)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedEventWithMachPort(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15921)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLIndirectCommandBuffer_indirectComputeCommandAtIndex(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15914)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLBuffer_newRemoteBufferViewForDevice(&v19, a2, (*a2 - 36), (result + 64));
        }

        goto LABEL_503;
      }

      if (v6 <= -15980)
      {
        switch(v6)
        {
          case -15997:
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newEvent(&v19, a2, (*a2 - 36), (result + 64));
            break;
          case -15996:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLDevice_newSharedEvent(&v19, a2, (*a2 - 36), (result + 64));
            break;
          case -15980:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newSharedTextureWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            break;
          default:
            return;
        }

        goto LABEL_503;
      }

      if (v6 > -15970)
      {
        if (v6 == -15969)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15922)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLIndirectCommandBuffer_indirectRenderCommandAtIndex(&v19, a2, (*a2 - 36), (result + 64));
        }

        goto LABEL_503;
      }

      if (v6 != -15979)
      {
        if (v6 != -15972)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCount_options(&v19, a2, (*a2 - 36), (result + 64));
        goto LABEL_503;
      }

      gt_error_assert_add_error((result + 64), 0, "0");
      if (!*(result + 68))
      {

        CreateStream(result, 0, v3);
      }

      return;
    }

    if (v6 <= -16035)
    {
      if (v6 <= -16052)
      {
        switch(v6)
        {
          case -16075:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newPipelineLibraryWithFilePath_error(&v19, a2, (*a2 - 36), (result + 64));
            break;
          case -16053:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLArgumentEncoder_newArgumentEncoderForBufferAtIndex(&v19, a2, (*a2 - 36), (result + 64));
            break;
          case -16052:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex(&v19, a2, (*a2 - 36), (result + 64));
            break;
          default:
            return;
        }
      }

      else if (v6 > -16039)
      {
        if (v6 == -16038)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLLibrary_newExternFunctionWithName(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -16037)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLDevice_newArgumentEncoderWithArguments(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 == -16051)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -16039)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithURL_error(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -16030)
    {
      if (v6 > -16015)
      {
        if (v6 == -16014)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDispatchType(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -16013)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCommandBuffer_videoCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
        }

        goto LABEL_443;
      }

      if (v6 == -16029)
      {
        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithCIFilters_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -16018)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newLibraryWithCIFiltersForComputePipeline_imageFilterFunctionInfo_error(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 != -16034)
    {
      if (v6 == -16031)
      {
        *&v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_descriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -16030)
        {
          return;
        }

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTiledTextureWithBytesNoCopy_length_deallocator_descriptor_offset_bytesPerRow(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLCaptureManager_notifySubmissionForEyeSPI_iosurface_bounds_submitFlags(&v19, a2, (*a2 - 36), (result + 64));
LABEL_384:
    if (!*(result + 68))
    {
      v10 = v19;
      if (!GetStreamAtIndex(*(result + 24), v19, v3))
      {
LABEL_508:
        v13 = result;
        v7 = v10;
        goto LABEL_506;
      }
    }

    return;
  }

  if (v6 <= -15260)
  {
    if (v6 > -15365)
    {
      if (v6 > -15351)
      {
        if (v6 <= -15307)
        {
          if (v6 > -15334)
          {
            if (v6 == -15333)
            {
              v19 = 0uLL;
              DYTraceDecode_MTLIOCommandQueue_commandBuffer(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              if (v6 != -15317)
              {
                return;
              }

              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newProfileWithExecutionSize(&v19, a2, (*a2 - 36), (result + 64));
            }
          }

          else if (v6 == -15350)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newIOCommandQueueWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15348)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newIOHandleWithURL_error(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 <= -15297)
        {
          if (v6 == -15306)
          {
            v19 = 0uLL;
            DYTraceDecode_MTLIOCommandQueue_commandBufferWithUnretainedReferences(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15299)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLIOScratchBufferAllocator_newScratchBufferWithMinimumSize(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else
        {
          switch(v6)
          {
            case -15296:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOHandleWithURL_compressionMethod_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15261:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newArgumentEncoderWithBufferBinding(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15260:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOFileHandleWithURL_compressionMethod_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }
      }

      else
      {
        if (v6 > -15356)
        {
          if (v6 <= -15354)
          {
            if (v6 == -15355)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor_offset(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLHeap_newAccelerationStructureWithSize(&v19, a2, (*a2 - 36), (result + 64));
            }
          }

          else if (v6 == -15353)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset(&v19, a2, (*a2 - 36), (result + 64));
          }

          else if (v6 == -15352)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_offset_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithSize_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
          }

          goto LABEL_503;
        }

        if (v6 > -15359)
        {
          if (v6 == -15358)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_withDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15356)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLHeap_newAccelerationStructureWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else
        {
          if (v6 == -15364)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLCommandBuffer_accelerationStructureCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_443;
          }

          if (v6 != -15359)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
        }
      }
    }

    else
    {
      if (v6 > -15507)
      {
        switch(v6)
        {
          case -15464:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newAccelerationStructureWithBuffer_offset(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15463:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_functionHandleWithFunction_stage(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15462:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newIntersectionFunctionTableWithDescriptor_stage(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15461:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newRenderPipelineStateWithAdditionalBinaryFunctions_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15460:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableWithDescriptor_stage(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15459:
          case -15458:
          case -15457:
          case -15456:
          case -15455:
          case -15454:
          case -15453:
          case -15452:
          case -15451:
          case -15450:
          case -15449:
          case -15448:
          case -15447:
          case -15446:
          case -15445:
          case -15433:
          case -15432:
          case -15431:
          case -15426:
          case -15424:
          case -15423:
          case -15422:
          case -15418:
          case -15417:
          case -15416:
          case -15415:
          case -15414:
          case -15413:
          case -15412:
          case -15411:
          case -15410:
          case -15409:
          case -15408:
          case -15407:
            return;
          case -15444:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_fragmentFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15443:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newFragmentIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15442:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newTileIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15441:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVertexIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15440:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromFragmentStageWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15439:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromTileStageWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15438:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_newVisibleFunctionTableFromVertexStageWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15437:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_tileFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15436:
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTLRenderPipelineState_vertexFunctionHandleWithFunction(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15435:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15434:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptorSPI_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15430:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_functionType(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15429:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLCoreIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15428:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLESIR_functionType(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15427:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newFunctionWithGLESIR_inputsDescription_functionType(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15425:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15421:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15420:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15419:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newLibraryWithStitchedDescriptorSPI_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15406:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15405:
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15404:
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          case -15403:
            v20 = 0u;
            v21 = 0u;
            v19 = 0u;
            DYTraceDecode_MTLDevice_newRenderPipelineStateWithMeshDescriptor_options_reflection_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          default:
            if (v6 == -15506)
            {
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newAccelerationStructureWithSize_resourceIndex(&v19, a2, (*a2 - 36), (result + 64));
            }

            else
            {
              if (v6 != -15496)
              {
                return;
              }

              v19 = 0uLL;
              DYTraceDecode_MTLDevice_newLateEvalEvent(&v19, a2, (*a2 - 36), (result + 64));
            }

            break;
        }

        goto LABEL_503;
      }

      if (v6 > -15578)
      {
        if (v6 <= -15542)
        {
          switch(v6)
          {
            case -15577:
              v19 = 0uLL;
              *&v20 = 0;
              DYTraceDecode_MTLDevice_newIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15551:
              *&v21 = 0;
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15550:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15532)
        {
          if (v6 == -15531)
          {
            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newDynamicLibraryWithURL_options_error(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15509)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newBufferWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15541)
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLComputePipelineState_newComputePipelineStateWithAdditionalBinaryFunctions_error(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -15540)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLComputePipelineState_newIntersectionFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else
      {
        if (v6 <= -15587)
        {
          if (v6 == -15609)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          }

          if (v6 == -15608)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLLibrary_newFunctionWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
            goto LABEL_503;
          }

          if (v6 != -15587)
          {
            return;
          }

          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTLCommandBuffer_blitCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          goto LABEL_443;
        }

        if (v6 <= -15585)
        {
          v19 = 0uLL;
          *&v20 = 0;
          if (v6 == -15586)
          {
            DYTraceDecode_MTLCommandBuffer_computeCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            DYTraceDecode_MTLCommandBuffer_resourceStateCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }

LABEL_443:
          if (!*(result + 68))
          {
            CreateEncoderStream(result, *(&v19 + 1), v19, v3);
          }

          return;
        }

        if (v6 == -15584)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLCommandBuffer_sampledComputeCommandEncoderWithDescriptor_programInfoBuffer_capacity(&v19, a2, (*a2 - 36), (result + 64));
          goto LABEL_443;
        }

        if (v6 != -15578)
        {
          return;
        }

        v19 = 0uLL;
        *&v20 = 0;
        DYTraceDecode_MTLComputePipelineState_newVisibleFunctionTableWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
      }
    }

    goto LABEL_503;
  }

  if (v6 <= -14868)
  {
    if (v6 <= -15141)
    {
      if (v6 <= -15191)
      {
        if (v6 <= -15199)
        {
          switch(v6)
          {
            case -15259:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newIOFileHandleWithURL_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15245:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newResidencySetWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            case -15200:
              v19 = 0u;
              v20 = 0u;
              DYTraceDecode_MTLDevice_newArgumentTableWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
              break;
            default:
              return;
          }
        }

        else if (v6 > -15197)
        {
          if (v6 == -15196)
          {
            v19 = 0uLL;
            DYTraceDecode_MTLDevice_newCommandBuffer(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15194)
            {
              return;
            }

            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTLDevice_newCompilerWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -15198)
        {
          v19 = 0uLL;
          DYTraceDecode_MTLDevice_newCommandAllocator(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTLDevice_newCommandAllocatorWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 > -15172)
      {
        if (v6 <= -15166)
        {
          if (v6 == -15171)
          {
            v19 = 0uLL;
            DYTraceDecode_MTL4CommandBuffer_computeCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15166)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }

          goto LABEL_443;
        }

        if (v6 == -15165)
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(&v19, a2, (*a2 - 36), (result + 64));
          goto LABEL_443;
        }

        if (v6 != -15141)
        {
          return;
        }

        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
      }

      else if (v6 > -15174)
      {
        if (v6 == -15173)
        {
          v19 = 0uLL;
          *&v20 = 0;
          DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator_options(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 == -15190)
      {
        v19 = 0uLL;
        DYTraceDecode_MTLDevice_newMTL4CommandQueue(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -15189)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTextureViewPoolWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
      }

LABEL_503:
      if (*(result + 68))
      {
        return;
      }

      goto LABEL_504;
    }

    if (v6 <= -15131)
    {
      if (v6 > -15137)
      {
        if (v6 > -15135)
        {
          if (v6 == -15134)
          {
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -15131)
            {
              return;
            }

            *&v21 = 0;
            v19 = 0u;
            v20 = 0u;
            DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
          if (v6 == -15136)
          {
            DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_error(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            DYTraceDecode_MTL4Compiler_newLibraryWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
          }
        }
      }

      else if (v6 > -15139)
      {
        v19 = 0u;
        v20 = 0u;
        if (v6 == -15138)
        {
          DYTraceDecode_MTL4Compiler_newDynamicLibrary_error(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 == -15140)
      {
        *&v21 = 0;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTL4Compiler_newDynamicLibrary_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -14872)
    {
      if (v6 > -14870)
      {
        v19 = 0u;
        v20 = 0u;
        if (v6 == -14869)
        {
          DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newMachineLearningPipelineStateWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        if (v6 == -14871)
        {
          DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      goto LABEL_503;
    }

    if (v6 > -14960)
    {
      if (v6 == -14959)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLDevice_newTensorWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
        goto LABEL_503;
      }

      if (v6 != -14884)
      {
        return;
      }

      v19 = 0uLL;
      DYTraceDecode_MTL4CommandBuffer_machineLearningCommandEncoder(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_443;
    }

    if (v6 == -15130)
    {
      *&v21 = 0;
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_503;
    }

    if (v6 == -14969)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTLTextureViewPool_setTextureView_descriptor_atIndex(&v19, a2, (*a2 - 36), (result + 64));
      if (!*(result + 68))
      {
        v7 = *(&v21 + 1);
LABEL_505:
        v13 = result;
LABEL_506:
        CreateStream(v13, v7, v3);
        return;
      }
    }

    return;
  }

  if (v6 > -7164)
  {
    if (v6 > -6123)
    {
      if (v6 > -6111)
      {
        if (v6 > -6097)
        {
          if (v6 == -6096)
          {
            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MPSPlugin_newNDArrayConvolution2DGradientWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }

          else
          {
            if (v6 != -6095)
            {
              return;
            }

            v19 = 0uLL;
            *&v20 = 0;
            DYTraceDecode_MPSPlugin_newNDArrayConvolution2DWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
          }
        }

        else if (v6 == -6110)
        {
          v19 = 0uLL;
          DYTraceDecode_MPSPlugin_newMatrixFullyConnected(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -6109)
          {
            return;
          }

          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          DYTraceDecode_MPSPlugin_newCNNPoolingAverageWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 > -6117)
      {
        if (v6 == -6116)
        {
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNDilatedPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY_dilationRateX_dilationRateY(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -6111)
          {
            return;
          }

          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNConvolutionGradientWithDescriptor_convolutionData(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 == -6122)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newMatrixMultiplicationWithTransposeLeft_transposeRight_resultRows_resultColumns_interiorColumns_alpha_beta(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -6119)
        {
          return;
        }

        v19 = 0uLL;
        DYTraceDecode_MPSPlugin_newCNNSoftMax(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -6135)
    {
      if (v6 > -6132)
      {
        if (v6 == -6131)
        {
          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_dataSource_fullyConnected(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -6129)
          {
            return;
          }

          *&v21 = 0;
          v19 = 0u;
          v20 = 0u;
          DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterAArray_count(&v19, a2, (*a2 - 36), (result + 64));
        }
      }

      else if (v6 == -6134)
      {
        *&v22 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MPSPlugin_newMatrixVectorMultiplicationWithTranspose_rows_columns_alpha_beta(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -6133)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newCNNNeuronWithNeuronType_neuronParameterA_neuronParameterB_neuronParameterC(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 > -6144)
    {
      if (v6 == -6143)
      {
        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MPSPlugin_newCNNConvolutionWithDescriptor_convolutionData(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -6141)
        {
          return;
        }

        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        DYTraceDecode_MPSPlugin_newCNNPoolingMaxWithKernelWidth_kernelHeight_strideInPixelsX_strideInPixelsY(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 != -7163)
    {
      if (v6 != -6655)
      {
        return;
      }

      v19 = 0uLL;
      DYTraceDecode_NSHMDMetalSession_nextDrawable(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_503;
    }

    v19 = 0uLL;
    *&v20 = 0;
    DYTraceDecode_CAMetalLayer_setDevice(&v19, a2, (*a2 - 36), (result + 64));
    if (*(result + 68))
    {
      return;
    }

    v11 = *(&v19 + 1);
    if (!GetStreamAtIndex(*(result + 24), *(&v19 + 1), v3))
    {
      CreateStream(result, v11, v3);
    }

    goto LABEL_408;
  }

  if (v6 > -14802)
  {
    if (v6 > -10238)
    {
      if (v6 <= -7168)
      {
        if (v6 == -10237)
        {
LABEL_374:
          v20 = 0u;
          v21 = 0u;
          v19 = 0u;
          DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(&v19, a2, (*a2 - 36), (result + 64));
        }

        else
        {
          if (v6 != -10151)
          {
            return;
          }

          v19 = 0uLL;
          DYTraceDecode_MTLCaptureManager_sharedCaptureManager(&v19, a2, (*a2 - 36), (result + 64));
        }

        goto LABEL_503;
      }

      if (v6 != -7167)
      {
        if (v6 != -7166)
        {
          return;
        }

        v19 = 0uLL;
        DYTraceDecode_CAMetalLayer_nextDrawable(&v19, a2, (*a2 - 36), (result + 64));
        goto LABEL_503;
      }

      v19 = 0uLL;
      DYTraceDecode_CAMetalDrawable_texture(&v19, a2, (*a2 - 36), (result + 64));
      if (*(result + 68))
      {
        return;
      }

      StreamAtIndex = GetStreamAtIndex(*(result + 24), v19, v3);
      gt_error_assert_add_error((result + 64), StreamAtIndex != 0, "drawableStream != ((void*)0)");
      if (StreamAtIndex)
      {
        v9 = *StreamAtIndex;
      }

      else
      {
        v9 = 0;
      }

      v14 = *find_entry(*(result + 40), &v19 + 8, 8uLL, 0);
      if (!v14 || (v15 = *(v14 + 32)) == 0 || *v15 != v9)
      {
        v16 = *(result + 40);
        v17 = apr_palloc(*v16, 8uLL);
        *v17 = *(&v19 + 1);
        v18 = apr_palloc(**(result + 40), 8uLL);
        *v18 = v9;
        apr_hash_set(v16, v17, 8, v18);
LABEL_504:
        v7 = *(&v19 + 1);
        goto LABEL_505;
      }

      v12 = (v5 + 88);
LABEL_514:
      atomic_fetch_add(v12, 1uLL);
      return;
    }

    if (v6 <= -12544)
    {
      if (v6 == -14801)
      {
        v19 = 0uLL;
        *&v20 = 0;
        DYTraceDecode_MTLTexture_newTextureViewWithDescriptor(&v19, a2, (*a2 - 36), (result + 64));
      }

      else
      {
        if (v6 != -12544)
        {
          return;
        }

        v19 = 0u;
        v20 = 0u;
        DYTraceDecode_MTLCommandQueue_continueCommandBuffer_retainReferences(&v19, a2, (*a2 - 36), (result + 64));
      }

      goto LABEL_503;
    }

    if (v6 == -12543)
    {
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTLIOCommandQueue_continueCommandBuffer_retainReferences(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_503;
    }

    if (v6 != -10239)
    {
      return;
    }

    v19 = 0uLL;
    DYTraceDecode_MTLDevice_deviceReference(&v19, a2, (*a2 - 36), (result + 64));
    goto LABEL_384;
  }

  if (v6 <= -14837)
  {
    if (v6 == -14867)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_503;
    }

    if (v6 != -14855)
    {
      if (v6 != -14840)
      {
        return;
      }

      *&v21 = 0;
      v19 = 0u;
      v20 = 0u;
      DYTraceDecode_MTLBuffer_newTensorWithDescriptor_offset_error(&v19, a2, (*a2 - 36), (result + 64));
      goto LABEL_503;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex(&v19, a2, (*a2 - 36), (result + 64));
    if (*(result + 68))
    {
      return;
    }

LABEL_408:
    v7 = v19;
    goto LABEL_505;
  }

  if (v6 <= -14835)
  {
    if (v6 == -14836)
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      DYTraceDecode_MTL4Compiler_newRenderPipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(&v19, a2, (*a2 - 36), (result + 64));
    }

    else
    {
      v19 = 0uLL;
      *&v20 = 0;
      DYTraceDecode_MTLDevice_functionHandleWithFunction(&v19, a2, (*a2 - 36), (result + 64));
    }

    goto LABEL_503;
  }

  if (v6 == -14834)
  {
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLDevice_newMTL4CommandQueueWithDescriptor_error(&v19, a2, (*a2 - 36), (result + 64));
    goto LABEL_503;
  }

  if (v6 == -14802)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    DYTraceDecode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(&v19, a2, (*a2 - 36), (result + 64));
    if (!*(result + 68))
    {
      v7 = *(&v22 + 1);
      goto LABEL_505;
    }
  }
}

void CreateStream(uint64_t a1, unint64_t a2, int a3)
{
  v9 = a2;
  if (a2)
  {
    v6 = GTTraceContext_openStream(*(a1 + 16), a2);
    v7 = apr_palloc(**(a1 + 24), 0x30uLL);
    *v7 = a2;
    v7[1] = v6;
    v7[2] = -1;
    v7[3] = -1;
    *(v7 + 10) = a3;
    v8 = *find_entry(*(a1 + 24), &v9, 8uLL, 0);
    if (v8)
    {
      v8 = *(v8 + 32);
    }

    v7[4] = v8;
    apr_hash_set(*(a1 + 24), v7, 8, v7);
  }
}

void CreateEncoderStream(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v14 = a2;
  OpenStream = GetOpenStream(a1, a3);
  if ((gt_error_assert_add_error((a1 + 112), OpenStream != 0, "commandBufferStream != ((void*)0)") & 1) == 0)
  {
    v8 = *(OpenStream + 24);
    v9 = *(a1 + 16);
    pthread_mutex_lock((v9 + 8));
    RetainFreeNode(v9);
    v11 = v10;
    *v10 = atomic_fetch_add((v9 + 88), 1uLL);
    v10[1] = a2;
    v10[3] = v8;
    atomic_fetch_add((v8 + 40), 1u);
    atomic_store(0, v10 + 7);
    if (*v9 == 1)
    {
      atomic_store(0x20uLL, v10 + 7);
    }

    apr_hash_set(*(v9 + 96), v10, 8, v10);
    pthread_mutex_unlock((v9 + 8));
    v12 = apr_palloc(**(a1 + 24), 0x30uLL);
    *v12 = a2;
    v12[1] = v11;
    v12[2] = -1;
    v12[3] = -1;
    *(v12 + 10) = a4;
    v13 = *find_entry(*(a1 + 24), &v14, 8uLL, 0);
    if (v13)
    {
      v13 = *(v13 + 32);
    }

    v12[4] = v13;
    apr_hash_set(*(a1 + 24), v12, 8, v12);
  }
}

unint64_t *GTTraceContext_openStream(uint64_t a1, unint64_t a2)
{
  pthread_mutex_lock((a1 + 8));
  RetainFreeNode(a1);
  v5 = v4;
  RetainFreeNode(a1);
  v5[3] = v6;
  add = atomic_fetch_add((a1 + 88), 1uLL);
  *v5 = add;
  v5[1] = a2;
  v5[2] = 0;
  v8 = v5[3];
  *v8 = *(a1 + 72);
  *(v8 + 32) = add;
  atomic_fetch_add((v8 + 40), 1u);
  atomic_store(0, v5 + 7);
  if (*a1 == 1)
  {
    atomic_store(0x20uLL, v5 + 7);
  }

  apr_hash_set(*(a1 + 96), v5, 8, v5);
  pthread_mutex_unlock((a1 + 8));
  return v5;
}

double RetainFreeNode(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (!v2)
  {
    v2 = apr_palloc(**(a1 + 96), 0x1000uLL);
    v3 = 0;
    v4 = v2 + 8;
    v5 = vdupq_n_s64(0x3FuLL);
    do
    {
      v6 = vorrq_s8(vdupq_n_s64(v3), xmmword_24DA8B910);
      if (vmovn_s64(vcgtq_u64(v5, v6)).u8[0])
      {
        *(v4 - 8) = v4;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x3FuLL), v6)).i32[1])
      {
        *v4 = v4 + 8;
      }

      v3 += 2;
      v4 += 16;
    }

    while (v3 != 64);
    v2[504] = 0;
    *(a1 + 104) = v2;
  }

  *(a1 + 104) = *v2;
  result = 0.0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  return result;
}

uint64_t GTTraceFunc_argumentBlobWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = *a1;
  v7[1] = a2;
  entry = find_entry(a3, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_argumentBytesWithPool(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  v3 = *(a3 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *a1;
  while (1)
  {
    v5 = atomic_load((v3 + 4));
    v6 = v5 - 64;
    if (v6 >= 1)
    {
      break;
    }

LABEL_11:
    result = 0;
    v3 = *(v3 + 40);
    if (!v3)
    {
      return result;
    }
  }

  v7 = v3 + 64;
  while (v4 != *v7 || *(v7 + 8) != a2)
  {
    v8 = (*(v7 + 12) + 23) & 0xFFFFFFF8;
    v7 += v8;
    v9 = __OFSUB__(v6, v8);
    v6 -= v8;
    if ((v6 < 0) ^ v9 | (v6 == 0))
    {
      goto LABEL_11;
    }
  }

  return (v7 + 16);
}

char *GTTraceFunc_argumentBytesWithMap(void *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x40)
  {
    return a1 + a2;
  }

  v8[2] = v3;
  v8[3] = v4;
  v8[0] = *a1;
  v8[1] = a2;
  entry = find_entry(a3, v8, 9uLL, 0);
  if (!*entry)
  {
    return 0;
  }

  v6 = *(*entry + 32);
  if (v6)
  {
    return (v6 + 16);
  }

  else
  {
    return 0;
  }
}

char *GTTraceFunc_targetContext(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2);
  if (v2 == -15913 || v2 == -15914)
  {
    result += 16;
  }

  else if (!result)
  {
    return result;
  }

  return *result;
}

char *GTTraceFunc_getFuncStreamRef(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (GTFenum_getConstructorType(v4) || GTFenum_isBeginCommandBuffer(v4))
  {
    return *(GTTraceFunc_argumentBytesWithMap(a1, *(a1 + 13), a2) + 1);
  }

  return GTTraceFunc_targetContext(a1, a2);
}

uint64_t GTTraceMemoryMap_argumentBlobAtIndex(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0x40)
  {
    return 0;
  }

  v7[2] = v3;
  v7[3] = v4;
  v7[0] = a3;
  v7[1] = a1;
  entry = find_entry(a2, v7, 9uLL, 0);
  if (*entry)
  {
    return *(*entry + 32);
  }

  else
  {
    return 0;
  }
}

void GTTraceContext_pushEncoderWithStream(uint64_t *a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v4 = a1 + 4;
  add = atomic_fetch_add((a2 + 80), 1uLL);
  *a1 = a2;
  a1[3] = add;
  v6 = s();
  v8 = *v6;
  *v6 = add;
  *v4 = v8;
  v9 = *(v6 + 8);
  *(a1 + 40) = v9;
  *(a1 + 41) = 16400;
  *(a1 + 43) = 0;
  *(a1 + 47) = 0;
  if (!v7)
  {
    v7 = *(a2 + 120);
  }

  a1[1] = v7;
  PushFunc(v7);
  a1[2] = v10;
  *v10 = add;
  *(v10 + 11) = 0;
  *(v10 + 8) = 0;
  *(v10 + 15) = v9;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 16) = 0u;
  if (v8)
  {
    v11 = GTTraceEncoder_storeBytes(a1, v4, 8uLL);
    v10 = a1[2];
  }

  else
  {
    v11 = 0;
  }

  *(v10 + 12) = v11;
  v12 = atomic_load((a2 + 128));
  if (v12)
  {
    v13 = *a1;
    v14 = a1[3];
    v15 = GTTraceContext_backtrace_callstack();
    v16 = backtrace(v15, 512);
    if (v16 >= 1)
    {
      v17 = v16 - 2;
      v18 = 8 * v17;
      v35 = 0;
      pthread_threadid_np(0, &v35);
      v19 = v13 + 24 * (v35 & 0xF);
      v20 = (v19 + 136);
      v21 = atomic_fetch_add((v19 + 152), 1u);
      do
      {
        v22 = atomic_load(v20 + 5);
      }

      while (v22 != v21);
      v23 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
      v24 = *v20;
      if (!*v20)
      {
        goto LABEL_16;
      }

      v25 = atomic_load(v24 + 1);
      while (1)
      {
        v26 = v25;
        v27 = v23 + v25;
        v28 = *v24;
        if (v27 > v28)
        {
          break;
        }

        v25 = v26;
        atomic_compare_exchange_strong(v24 + 1, &v25, v27);
        if (v25 == v26)
        {
          v28 = *v24;
          break;
        }
      }

      v29 = (v24 + v26);
      if (v27 > v28)
      {
LABEL_16:
        v30 = GTTraceStoreAllocNode(*(v13 + 72), 0x3FC0uLL, 3, 0);
        *(v30 + 5) = *v20;
        *v20 = v30;
        if (!*(v20 + 1))
        {
          *(v20 + 1) = v30;
        }

        v31 = atomic_load(v30 + 1);
        while (1)
        {
          v32 = v31;
          v33 = v23 + v31;
          v34 = *v30;
          if (v33 > v34)
          {
            break;
          }

          v31 = v32;
          atomic_compare_exchange_strong(v30 + 1, &v31, v33);
          if (v31 == v32)
          {
            v34 = *v30;
            break;
          }
        }

        v29 = (v30 + v32);
        if (v33 > v34)
        {
          v29 = 0;
        }
      }

      atomic_store(v21 + 1, v20 + 5);
      *v29 = v14;
      v29[1] = v17 | 0x800000000;
      memcpy(v29 + 2, v15 + 2, v18);
    }
  }
}

double PushFunc(uint64_t a1)
{
  add = atomic_fetch_add((a1 + 48), 1u);
  do
  {
    v3 = atomic_load((a1 + 52));
  }

  while (v3 != add);
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = atomic_load(v4 + 1);
  while (1)
  {
    v6 = v5;
    v7 = v5 + 64;
    v8 = *v4;
    if (v7 > v8)
    {
      break;
    }

    v5 = v6;
    atomic_compare_exchange_strong(v4 + 1, &v5, v7);
    if (v5 == v6)
    {
      v8 = *v4;
      break;
    }
  }

  if (v7 <= v8)
  {
    v19 = (v4 + v6);
    v9 = add + 1;
  }

  else
  {
LABEL_9:
    v9 = add + 1;
    if (((add + 1) << 7) >= 0x3FC0)
    {
      v10 = 16320;
    }

    else
    {
      v10 = v9 << 7;
    }

    v11 = GTTraceStoreAllocNode(**(a1 + 24), v10, 1, *a1);
    v12 = *(a1 + 40);
    if (v12)
    {
      v13 = (v12 + 40);
    }

    else
    {
      v13 = (a1 + 32);
    }

    *v13 = v11;
    *(a1 + 40) = v11;
    *(v11 + 5) = 0;
    v14 = atomic_load(v11 + 1);
    while (1)
    {
      v15 = v14;
      v16 = v14 + 64;
      v17 = *v11;
      if (v16 > v17)
      {
        break;
      }

      v14 = v15;
      atomic_compare_exchange_strong(v11 + 1, &v14, v16);
      if (v14 == v15)
      {
        v17 = *v11;
        break;
      }
    }

    v18 = (v11 + v15);
    if (v16 <= v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  result = 0.0;
  v19[2] = 0u;
  v19[3] = 0u;
  *v19 = 0u;
  v19[1] = 0u;
  atomic_store(v9, (a1 + 52));
  return result;
}

uint64_t GTTraceEncoder_storeBytes(uint64_t a1, void *__src, size_t __n)
{
  v3 = 0;
  if (__src)
  {
    v4 = __n;
    if (__n)
    {
      v3 = *(a1 + 41);
      if (v3 + __n > 0x40)
      {
        v7 = *(*(a1 + 8) + 24);
        v3 = *(a1 + 42);
        *(a1 + 42) = v3 + 1;
        if (__n << 32)
        {
          v8 = __n;
          Bytes = GTTraceMemPool_allocateBytes(v7, *(a1 + 24), (__n << 32) | v3);
          memcpy(Bytes + 16, __src, v8);
        }
      }

      else
      {
        memcpy((*(a1 + 16) + v3), __src, __n);
        *(a1 + 41) += (v4 + 7) & 0xF8;
      }
    }
  }

  return v3;
}

char *GTTraceEncoder_allocateArguments(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(v3 + 8) = a2;
  v4 = *(a1 + 41);
  if ((v4 + a3) > 0x40)
  {
    v6 = *(*(a1 + 8) + 24);
    v7 = *(a1 + 42);
    *(a1 + 42) = v7 + 1;
    v5 = GTTraceMemPool_allocateBytes(v6, *(a1 + 24), v7 | (a3 << 32)) + 16;
    LOBYTE(v4) = v7;
  }

  else
  {
    v5 = (v3 + v4);
    *(a1 + 41) = v4 + a3;
  }

  *(v3 + 13) = v4;
  return v5;
}

uint64_t GTTraceEncoder_storeBlob(uint64_t a1, const void *a2, uint64_t a3)
{
  v3 = 0;
  if (a2)
  {
    if (a3)
    {
      v4 = *(*(a1 + 8) + 24);
      v3 = *(a1 + 42);
      *(a1 + 42) = v3 + 1;
      if (a3 << 32)
      {
        v6 = a3;
        Bytes = GTTraceMemPool_allocateBytes(v4, *(a1 + 24), (a3 << 32) | v3);
        memcpy(Bytes + 16, a2, v6);
      }
    }
  }

  return v3;
}

uint64_t GTTraceStream_lastFunc(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = atomic_load((v1 + 4));
    if (v2 < 0x80)
    {
LABEL_7:
      v1 = *(a1 + 32);
      if (v1)
      {
        v6 = 0;
        while (1)
        {
          v7 = atomic_load((v1 + 4));
          v8 = v6 + (v7 >> 6) - 1;
          if (v8 > 0)
          {
            break;
          }

          v1 = *(v1 + 40);
          v6 = v8;
          if (!v1)
          {
            return v1;
          }
        }

        v9 = v6;
        v10 = (0xFFFFFFFF00000001 * v6) >> 32;
        if ((*(v1 + (v10 << 6) + 79) & 8) != 0)
        {
          do
          {
            v11 = v1;
            v12 = v10;
            v13 = atomic_load((v1 + 4));
            v14 = (HIDWORD(v9) + 1);
            if (v14 == v9 + (v13 >> 6) - 1)
            {
              v1 = *(v11 + 40);
              if (!v1)
              {
                return v11 + (v12 << 6) + 64;
              }

              v9 = (HIDWORD(v9) + 1);
            }

            else
            {
              v9 = v9;
              v1 = v11;
            }

            v9 |= v14 << 32;
            v10 = (0xFFFFFFFF00000001 * v9) >> 32;
          }

          while ((*(v1 + (v10 << 6) + 79) & 8) != 0);
          return v11 + (v12 << 6) + 64;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
      v3 = (v2 >> 6) - 2;
      v4 = v1 + 64;
      while (1)
      {
        v1 = v4 + (v3 << 6);
        if ((*(v1 + 15) & 8) != 0)
        {
          break;
        }

        v5 = __OFSUB__(v3--, 1);
        if (v3 < 0 != v5)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return v1;
}

uint64_t GTMTLGPUAddressResource_compare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

void *GTMTLGPUAddressResource_resourceForGPUAddress(void *a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a1;
  do
  {
    v4 = &v3[4 * (a2 >> 1)];
    v6 = *v4;
    v5 = v4 + 4;
    v7 = v6 > a3;
    if (v6 <= a3)
    {
      a2 += ~(a2 >> 1);
    }

    else
    {
      a2 >>= 1;
    }

    if (!v7)
    {
      v3 = v5;
    }
  }

  while (a2);
  if (v3 == a1)
  {
    return 0;
  }

  result = v3 - 4;
  v9 = *(v3 - 4);
  if (!v9 || *(v3 - 3) + v9 <= a3)
  {
    return 0;
  }

  return result;
}

uint64_t GTMTLIndirectResources_renderPipelineIdForUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  entry = find_entry(a1, &v5, 8uLL, 0);
  if (*entry && (v3 = *(*entry + 32)) != 0)
  {
    return *(v3 + 8);
  }

  else
  {
    return 0;
  }
}

void GTMTLIndirectResources_optimizeByKey(uint64_t *a1, uint64_t *a2, int a3, apr_pool_t *pool)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = apr_hash_make(pool);
  a1[1] = v7;
  v8 = apr_hash_make(pool);
  a1[2] = v8;
  v9 = apr_hash_make(pool);
  a1[3] = v9;
  v10 = apr_hash_make(pool);
  a1[4] = v10;
  v11 = apr_hash_make(pool);
  a1[5] = v11;
  v12 = apr_hash_make(pool);
  a1[6] = v12;
  v13 = apr_hash_make(pool);
  a1[7] = v13;
  v62 = apr_hash_make(pool);
  a1[8] = v62;
  v63 = apr_hash_make(pool);
  a1[9] = v63;
  ht = apr_hash_make(pool);
  a1[10] = ht;
  v65 = apr_hash_make(pool);
  a1[11] = v65;
  a1[12] = 0;
  qsort(*(v6 + 24), *(v6 + 12), *(v6 + 8), GTMTLGPUAddressResource_compare);
  v14 = a2[2];
  v15 = *(v14 + 12);
  if (v15 >= 1)
  {
    v16 = *(v14 + 24);
    v17 = &v16[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v7, v17, 8, v16);
      v17 += 32;
      v16 += 32;
      --v15;
    }

    while (v15);
  }

  v18 = a2[1];
  v19 = *(v18 + 12);
  if (v19 >= 1)
  {
    v20 = *(v18 + 24);
    v21 = &v20[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v8, v21, 8, v20);
      v21 += 32;
      v20 += 32;
      --v19;
    }

    while (v19);
  }

  v22 = a2[10];
  v23 = *(v22 + 12);
  if (v23 >= 1)
  {
    v24 = *(v22 + 24);
    v25 = &v24[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v9, v25, 8, v24);
      v25 += 32;
      v24 += 32;
      --v23;
    }

    while (v23);
  }

  v26 = a2[3];
  v27 = *(v26 + 12);
  if (v27 >= 1)
  {
    v28 = *(v26 + 24);
    v29 = &v28[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v10, v29, 8, v28);
      v29 += 32;
      v28 += 32;
      --v27;
    }

    while (v27);
  }

  v30 = a2[4];
  v31 = *(v30 + 12);
  if (v31 >= 1)
  {
    v32 = *(v30 + 24);
    v33 = &v32[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v11, v33, 8, v32);
      v33 += 32;
      v32 += 32;
      --v31;
    }

    while (v31);
  }

  v34 = a2[5];
  v35 = *(v34 + 12);
  if (v35 >= 1)
  {
    v36 = *(v34 + 24);
    v37 = &v36[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v12, v37, 8, v36);
      v37 += 32;
      v36 += 32;
      --v35;
    }

    while (v35);
  }

  v38 = a2[6];
  v39 = *(v38 + 12);
  if (v39 >= 1)
  {
    v40 = *(v38 + 24);
    v41 = &v40[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v13, v41, 8, v40);
      v41 += 32;
      v40 += 32;
      --v39;
    }

    while (v39);
  }

  v42 = a2[7];
  v43 = *(v42 + 12);
  if (v43 >= 1)
  {
    v44 = *(v42 + 24);
    v45 = &v44[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v62, v45, 8, v44);
      v45 += 32;
      v44 += 32;
      --v43;
    }

    while (v43);
  }

  v46 = a2[8];
  v47 = *(v46 + 12);
  if (v47 >= 1)
  {
    v48 = *(v46 + 24);
    v49 = &v48[16 * (a3 == 1)];
    do
    {
      apr_hash_set(v63, v49, 8, v48);
      v49 += 32;
      v48 += 32;
      --v47;
    }

    while (v47);
  }

  v50 = a2[9];
  v51 = *(v50 + 12);
  if (v51 >= 1)
  {
    v52 = *(v50 + 24);
    v53 = &v52[16 * (a3 == 1)];
    do
    {
      apr_hash_set(ht, v53, 8, v52);
      v53 += 32;
      v52 += 32;
      --v51;
    }

    while (v51);
  }

  v54 = a2[11];
  v55 = *(v54 + 24);
  v56 = *(v54 + 12);
  if (a3 == 1)
  {
    if (v56 >= 1)
    {
      v57 = v55 + 16;
      do
      {
        v58 = *find_entry(v65, v57, 8uLL, 0);
        if (!v58 || (v59 = *(v58 + 32)) == 0)
        {
          v59 = apr_array_make(*v65, 4, 24);
          apr_hash_set(v65, v57, 8, v59);
        }

        v60 = apr_array_push(v59);
        v61 = *v57;
        *v60 = *(v57 - 1);
        v60[2] = v61;
        v57 += 24;
        --v56;
      }

      while (v56);
    }
  }

  else if (v56 >= 1)
  {
    do
    {
      apr_hash_set(v65, v55 + 8, 8, v55);
      v55 += 24;
      --v56;
    }

    while (v56);
  }
}

void GTMTLIndirectResources_allResourcesByKey(uint64_t *a1, _DWORD **a2, unint64_t a3, int a4, apr_pool_t *p)
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = apr_array_make(p, 32, 8);
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[1], a3, v8);
  v9 = apr_array_make(p, v8->nelts, 32);
  v114[0] = v9;
  if (v8->nelts >= 1)
  {
    v10 = 0;
    do
    {
      v11 = *&v8->elts[8 * v10];
      v12 = apr_array_push(v9);
      v13 = v11->i64[1];
      *v12 = vextq_s8(v11[7], v11[7], 8uLL);
      ++v10;
      v12[1].i64[0] = v13;
      v12[1].i64[1] = 0;
    }

    while (v10 < v8->nelts);
  }

  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[3], a3, v8);
  v14 = apr_array_make(p, v8->nelts, 32);
  v114[2] = v14;
  if (v8->nelts >= 1)
  {
    v15 = v14;
    v16 = 0;
    do
    {
      v17 = *&v8->elts[8 * v16];
      v18 = apr_array_push(v15);
      v19 = v17[1];
      *v18 = v17[22];
      v18[1] = v19;
      v18[2] = v17[26];
      v20 = apr_array_push(v9);
      v21 = v17[8];
      v22 = v17[1];
      *v20 = v17[27];
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      v20[24] = 2;
      *(v20 + 25) = 0;
      *(v20 + 7) = 0;
      ++v16;
    }

    while (v16 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[2], a3, v8);
  v23 = apr_array_make(p, v8->nelts, 32);
  v114[1] = v23;
  if (v8->nelts >= 1)
  {
    v24 = v23;
    v25 = 0;
    do
    {
      v26 = *&v8->elts[8 * v25];
      v27 = apr_array_push(v24);
      v28 = v26[1];
      *v27 = v26[39];
      v27[1] = v28;
      v27[2] = v26[37];
      ++v25;
    }

    while (v25 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[4], a3, v8);
  v29 = apr_array_make(p, v8->nelts, 32);
  v114[3] = v29;
  if (v8->nelts >= 1)
  {
    v30 = v29;
    v31 = 0;
    do
    {
      v32 = *&v8->elts[8 * v31];
      v33 = apr_array_push(v30);
      v34 = v32[1];
      v35 = v32[9];
      *v33 = v32[8];
      v33[1] = v34;
      v33[2] = v35;
      ++v31;
    }

    while (v31 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[11], a3, v8);
  v36 = apr_array_make(p, v8->nelts, 32);
  *&v118 = v36;
  nelts = v8->nelts;
  if (nelts >= 1)
  {
    v38 = v36;
    for (i = 0; i < nelts; ++i)
    {
      v40 = *&v8->elts[8 * i];
      if (v40[6])
      {
        v41 = apr_array_push(v38);
        v42 = v40[1];
        v43 = v40[9];
        *v41 = v40[8];
        v41[1] = v42;
        v41[2] = v43;
        nelts = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[5], a3, v8);
  v44 = apr_array_make(p, v8->nelts, 32);
  *&v115 = v44;
  v45 = v8->nelts;
  if (v45 >= 1)
  {
    v46 = v44;
    for (j = 0; j < v45; ++j)
    {
      v48 = *&v8->elts[8 * j];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v48))
      {
        v49 = apr_array_push(v46);
        v50 = v48[1];
        *v49 = v48[15];
        v49[1] = v50;
        v49[2] = v48[17];
        v45 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[6], a3, v8);
  v51 = apr_array_make(p, v8->nelts, 32);
  *(&v115 + 1) = v51;
  v52 = v8->nelts;
  if (v52 >= 1)
  {
    v53 = v51;
    for (k = 0; k < v52; ++k)
    {
      v55 = *&v8->elts[8 * k];
      if (GTMTLSMPipelineState_supportsIndirectCommandBuffers(v55))
      {
        v56 = apr_array_push(v53);
        v57 = v55[1];
        *v56 = v55[15];
        v56[1] = v57;
        v56[2] = v55[17];
        v52 = v8->nelts;
      }
    }
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[7], a3, v8);
  v58 = apr_array_make(p, v8->nelts, 32);
  *&v116 = v58;
  if (v8->nelts >= 1)
  {
    v59 = v58;
    v60 = 0;
    do
    {
      v61 = *&v8->elts[8 * v60];
      v62 = apr_array_push(v59);
      v63 = v61[1];
      v64 = v61[17];
      *v62 = v61[16];
      v62[1] = v63;
      v62[2] = v64;
      ++v60;
    }

    while (v60 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[8], a3, v8);
  v65 = apr_array_make(p, v8->nelts, 32);
  *(&v116 + 1) = v65;
  if (v8->nelts >= 1)
  {
    v66 = v65;
    v67 = 0;
    do
    {
      v68 = *&v8->elts[8 * v67];
      v69 = apr_array_push(v66);
      v70 = *(v68 + 8);
      *v69 = *(v68 + 144);
      v69[1] = v70;
      *(v69 + 1) = *(v68 + 160);
      v71 = apr_array_push(v9);
      v72 = *(v68 + 8);
      *v71 = *(v68 + 168);
      *(v71 + 1) = 8;
      *(v71 + 2) = v72;
      v71[24] = 7;
      *(v71 + 25) = 0;
      *(v71 + 7) = 0;
      ++v67;
    }

    while (v67 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[9], a3, v8);
  v73 = apr_array_make(p, v8->nelts, 32);
  *&v117 = v73;
  if (v8->nelts >= 1)
  {
    v74 = v73;
    v75 = 0;
    do
    {
      v76 = *&v8->elts[8 * v75];
      v77 = apr_array_push(v74);
      v78 = v76[1];
      v79 = v76[20];
      *v77 = v76[19];
      v77[1] = v78;
      v77[2] = v79;
      ++v75;
    }

    while (v75 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[10], a3, v8);
  v80 = apr_array_make(p, v8->nelts, 32);
  *(&v117 + 1) = v80;
  if (v8->nelts >= 1)
  {
    v81 = v80;
    v82 = 0;
    do
    {
      v83 = *&v8->elts[8 * v82];
      v84 = apr_array_push(v81);
      v85 = v83[1];
      v86 = v83[18];
      *v84 = v83[17];
      v84[1] = v85;
      v84[2] = v86;
      v87 = apr_array_push(v9);
      v88 = v83[8];
      v89 = v83[1];
      *v87 = v83[21];
      *(v87 + 1) = v88;
      *(v87 + 2) = v89;
      v87[24] = 9;
      *(v87 + 25) = 0;
      *(v87 + 7) = 0;
      ++v82;
    }

    while (v82 < v8->nelts);
  }

  v8->nelts = 0;
  GTMTLSMContext_getObjects(a2[12], a3, v8);
  v90 = v8->nelts;
  if (v90 < 1)
  {
    LODWORD(v92) = 0;
    v93 = a4;
    v94 = a1;
  }

  else
  {
    v91 = 0;
    v92 = 0;
    v93 = a4;
    v94 = a1;
    do
    {
      v95 = *&v8->elts[8 * v91];
      v96 = *(v95 + 64);
      if (v96 >= 1)
      {
        do
        {
          v92 += *(v95 + 80);
          v95 = *(v95 + 32);
          --v96;
        }

        while (v96);
      }

      ++v91;
    }

    while (v91 != v90);
  }

  v97 = apr_array_make(p, v92, 24);
  *(&v118 + 1) = v97;
  if (v8->nelts >= 1)
  {
    v98 = 0;
    elts = v8->elts;
    do
    {
      v100 = *&elts[8 * v98];
      v101 = *(v100 + 64);
      if (v101 >= 1)
      {
        v102 = 0;
        v103 = *(v100 + 64);
        v104 = *&elts[8 * v98];
        do
        {
          v102 += *(v104 + 80);
          v104 = *(v104 + 32);
          --v103;
        }

        while (v103);
        v97->nelts += v102;
        do
        {
          v105 = *(v100 + 80);
          if (v105)
          {
            v106 = 0;
            v107 = *(v100 + 72);
            v108 = *(v100 + 32);
            v109 = &v97->elts[24 * v102 - 24 * v105 + 8];
            do
            {
              v110 = *(v108 + 24);
              v111 = v106 + *(v100 + 96);
              *(v109 - 1) = *(v107 + 8 * v106);
              *v109 = v110;
              *(v109 + 1) = v111;
              ++v106;
              v109 += 24;
            }

            while (*(v100 + 80) > v106);
          }

          else
          {
            v108 = *(v100 + 32);
          }

          v102 -= v105;
          ++v103;
          v100 = v108;
        }

        while (v103 != v101);
      }

      ++v98;
    }

    while (v98 < v8->nelts);
  }

  GTMTLIndirectResources_optimizeByKey(v94, v114, v93, p);
}

apr_hash_index_t *GTMTLIndirectResources_rehash(apr_hash_index_t *result, uint64_t a2, uint64_t a3, apr_pool_t *p)
{
  v5 = result;
  if (*(a2 + 96) == a3)
  {
    v6 = *(a2 + 80);
    *(result + 4) = *(a2 + 64);
    *(result + 5) = v6;
    *(result + 12) = *(a2 + 96);
    v7 = *(a2 + 16);
    *result = *a2;
    *(result + 1) = v7;
    v8 = *(a2 + 48);
    *(result + 2) = *(a2 + 32);
    *(result + 3) = v8;
  }

  else
  {
    v10 = a3;
    *result = apr_array_copy(p, *a2);
    v11 = apr_hash_make(p);
    *(v5 + 1) = v11;
    v12 = apr_hash_make(p);
    *(v5 + 2) = v12;
    v13 = apr_hash_make(p);
    *(v5 + 3) = v13;
    v14 = apr_hash_make(p);
    *(v5 + 4) = v14;
    v15 = apr_hash_make(p);
    *(v5 + 5) = v15;
    v16 = apr_hash_make(p);
    *(v5 + 6) = v16;
    v38 = apr_hash_make(p);
    *(v5 + 7) = v38;
    v39 = apr_hash_make(p);
    *(v5 + 8) = v39;
    v40 = apr_hash_make(p);
    *(v5 + 9) = v40;
    v41 = apr_hash_make(p);
    *(v5 + 10) = v41;
    v17 = apr_hash_make(p);
    *(v5 + 11) = v17;
    *(v5 + 96) = v10;
    *(v5 + 97) = 0;
    *(v5 + 25) = 0;
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 8), v10, v11);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 16), v10, v12);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 24), v10, v13);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 32), v10, v14);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 40), v10, v15);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 48), v10, v16);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 56), v10, v38);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 64), v10, v39);
    GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 72), v10, v40);
    result = GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(*(a2 + 80), v10, v41);
    v18 = *(a2 + 96);
    if (v10 == 1)
    {
      if (v18 != 1)
      {
        v19 = *(a2 + 88);
        v20 = *v17;
        *(v19 + 24) = 0;
        *(v19 + 32) = 0;
        *(v19 + 16) = v19;
        *(v19 + 40) = 0;
        result = apr_hash_next((v19 + 16));
        if (result)
        {
          v21 = result;
          do
          {
            v22 = *(*(v21 + 1) + 32);
            v23 = *find_entry(v17, (v22 + 16), 8uLL, 0);
            if (!v23 || (v24 = *(v23 + 32)) == 0)
            {
              v24 = apr_array_make(v20, 4, 24);
              v25 = apr_palloc(v20, 8uLL);
              *v25 = *(v22 + 16);
              apr_hash_set(v17, v25, 8, v24);
            }

            v26 = apr_array_push(v24);
            v27 = *(v22 + 16);
            *v26 = *v22;
            v26[2] = v27;
            result = apr_hash_next(v21);
            v21 = result;
          }

          while (result);
        }
      }
    }

    else
    {
      v28 = *(a2 + 88);
      if (v18 == 1)
      {
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v29 = result;
          do
          {
            v30 = *(*(v29 + 1) + 32);
            v31 = *(v30 + 12);
            if (v31 >= 1)
            {
              v32 = *(v30 + 24);
              do
              {
                apr_hash_set(v17, (v32 + 8), 8, v32);
                v32 += 24;
                --v31;
              }

              while (v31);
            }

            result = apr_hash_next(v29);
            v29 = result;
          }

          while (result);
        }
      }

      else
      {
        v33 = *v17;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
        *(v28 + 16) = v28;
        *(v28 + 40) = 0;
        result = apr_hash_next((v28 + 16));
        if (result)
        {
          v34 = result;
          do
          {
            v35 = *(*(v34 + 1) + 32);
            v36 = apr_palloc(v33, 0x20uLL);
            v37 = *(v35 + 16);
            *v36 = *v35;
            v36[2] = v37;
            apr_hash_set(v17, v36 + 1, 8, v36);
            result = apr_hash_next(v34);
            v34 = result;
          }

          while (result);
        }
      }
    }
  }

  return result;
}

apr_hash_index_t *GTMTLUniqueIdentifierResource_fillHashMapByKey_apr_ht(uint64_t a1, int a2, apr_pool_t **a3)
{
  v5 = *a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = a1;
  *(a1 + 40) = 0;
  result = apr_hash_next((a1 + 16));
  if (result)
  {
    v7 = result;
    v8 = a2 == 1;
    do
    {
      v9 = *(*(v7 + 1) + 32);
      v10 = apr_palloc(v5, 0x20uLL);
      v11 = v9[1];
      *v10 = *v9;
      v10[1] = v11;
      apr_hash_set(a3, &v10[v8], 8, v10);
      result = apr_hash_next(v7);
      v7 = result;
    }

    while (result);
  }

  return result;
}

void GetUUIDFromMetadata(CFUUIDBytes *a1, const char *a2, apr_pool_t *parent, apr_allocator_t *a4)
{
  newpool = 0;
  if (!apr_pool_create_ex(&newpool, parent, 0, a4))
  {
    v6 = newpool;
    v7 = gt_filepath_merge(a2, "metadata", newpool);
    v8 = open(v7, 0);
    if (v8 < 0)
    {
      *&a1->byte0 = 0;
      *&a1->byte8 = 0;

      apr_pool_destroy(v6);
    }

    else
    {
      v9 = v8;
      memset(&v23, 0, sizeof(v23));
      fstat(v8, &v23);
      v10 = apr_palloc(v6, v23.st_size);
      v11 = 0;
      st_size = v23.st_size;
      do
      {
        if ((st_size - v11) >= 0x100000)
        {
          v13 = 0x100000;
        }

        else
        {
          v13 = st_size - v11;
        }

        v14 = read(v9, &v10[v11], v13);
        if (v14 == -1)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        v11 += v15;
      }

      while (v14 != -1 && v11 != st_size);
      close(v9);
      v17 = *MEMORY[0x277CBECE8];
      v18 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v10, v23.st_size, *MEMORY[0x277CBED00]);
      error = 0;
      v19 = CFPropertyListCreateWithData(v17, v18, 0, 0, &error);
      CFRelease(v18);
      if (error || (Value = CFDictionaryGetValue(v19, @"(uuid)")) == 0)
      {
        *&a1->byte0 = 0;
        *&a1->byte8 = 0;
      }

      else
      {
        v21 = CFUUIDCreateFromString(v17, Value);
        *a1 = CFUUIDGetUUIDBytes(v21);
        CFRelease(v21);
      }

      CFRelease(v19);
      apr_pool_destroy(v6);
    }
  }
}

uint64_t GTCaptureArchive_cleanup(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    munmap(*(a1 + 96), v2);
  }

  if (*(a1 + 128) != 1 || *(a1 + 112) <= *(a1 + 104))
  {
    goto LABEL_7;
  }

  v3 = gt_filepath_merge(*a1, "store0", *(a1 + 8));
  v4 = open(v3, 513, 438);
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    ftruncate(v4, *(a1 + 104));
    close(v5);
LABEL_7:
    pthread_mutex_destroy((a1 + 16));
    return 0;
  }

  return 20014;
}

uint64_t GTCaptureArchive_getFileWithFilename(uint64_t a1, char *a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 136);
  if (!v4 || (v5 = *find_entry(v4, a2, 0xFFFFFFFFFFFFFFFFLL, 0)) == 0 || (v6 = *(v5 + 32)) == 0)
  {
    v7 = strlen(a2);
    v8 = *find_entry(*(a1 + 88), a2, v7, 0);
    if (v8 && (v9 = *(v8 + 32)) != 0)
    {
      v6 = *(*(a1 + 80) + 24) + 32 * *v9;
    }

    else
    {
      v6 = 0;
    }
  }

  pthread_mutex_unlock((a1 + 16));
  return v6;
}

unint64_t GTCaptureArchive_fileBackingStore(uint64_t a1, uint64_t a2, int *a3)
{
  if ((*(a2 + 24) & 2) != 0)
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "!(entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE)";
      goto LABEL_7;
    }

    return 0;
  }

  v3 = *(a2 + 16);
  if (v3 > *(a1 + 104))
  {
    if (a3)
    {
      v6 = *a3;
      v7 = 502;
      v4 = "entry->storage_offset <= archive->backingStore.length";
LABEL_7:
      v8 = 0;
      v9 = v4;
      v10 = 0;
      GTError_addError(a3, &v6);
      return 0;
    }

    return 0;
  }

  return *(a1 + 96) + v3;
}

void *GTCaptureArchive_mapDataSeparateFile(uint64_t a1, uint64_t a2, apr_pool_t *a3, int *a4)
{
  if (*(a2 + 16) > *(a1 + 104))
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->storage_offset <= self->backingStore.length";
LABEL_14:
      v18 = v6;
      v19 = v7;
      v20 = 0;
      GTError_addError(a4, &v16);
      return 0;
    }

    return 0;
  }

  if ((*(a2 + 24) & 2) == 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "entry->flags & DY_CAPTURE_FILE_FLAG_SEPARATE_FILE";
      goto LABEL_14;
    }

    return 0;
  }

  v9 = gt_filepath_merge(*a1, *a2, a3);
  v10 = open(v9, 0);
  if (v10 <= 0)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "fd > 0";
      goto LABEL_14;
    }

    return 0;
  }

  v11 = v10;
  v12 = mmap(0, *(a2 + 8), 1, 2, v10, 0);
  close(v11);
  if (v12 == -1)
  {
    if (a4)
    {
      v6 = *a2;
      v16 = *a4;
      v17 = 502;
      v7 = "bytes != MAP_FAILED";
      goto LABEL_14;
    }

    return 0;
  }

  v13 = *(a2 + 8);
  v14 = apr_palloc(a3, 0x10uLL);
  *v14 = v12;
  v14[1] = v13;
  apr_pool_cleanup_register(a3, v14, GTData_munmap, apr_pool_cleanup_null);
  return v12;
}

void GTCaptureArchive_fillBufferCompressedDeflate(uint64_t a1, uint64_t a2, uint64_t a3, uint8_t *a4, size_t a5, int *a6)
{
  if (a4)
  {
    if (a2)
    {
      if (*(a3 + 12) > 5u)
      {
        v11 = GTCaptureArchive_fileBackingStore(a1, a3, a6);
        if (!v11)
        {
          goto LABEL_16;
        }

        if (compression_decode_buffer(a4, a5, (v11 + 2), (*(a3 + 12) - 6), *(a2 + 8), COMPRESSION_ZLIB) == a5)
        {
          return;
        }

        if (!a6)
        {
          goto LABEL_16;
        }

        v13 = *a6;
        v14 = 502;
        v12 = "total_out == destSize";
        goto LABEL_15;
      }

      if (a6)
      {
        v13 = *a6;
        v14 = 502;
        v12 = "ZLIB_HEADER_SIZE + ZLIB_ADLER_SIZE <= entry->storage_size";
        goto LABEL_15;
      }
    }

    else if (a6)
    {
      v13 = *a6;
      v14 = 502;
      v12 = "decompressor != NULL";
LABEL_15:
      v15 = 0;
      v16 = v12;
      v17 = 0;
      GTError_addError(a6, &v13);
    }

LABEL_16:

    bzero(a4, a5);
    return;
  }

  if (a6)
  {
    v13 = *a6;
    v14 = 502;
    v15 = 0;
    v16 = "dest != NULL";
    v17 = 0;
    GTError_addError(a6, &v13);
  }
}

void *GTCaptureArchiveDecompressor_create(apr_pool_t *a1)
{
  v2 = apr_palloc(a1, 0x10uLL);
  v4 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
  }

  apr_pool_create_ex(v2, a1, 0, v3);
  v5 = compression_decode_scratch_buffer_size(COMPRESSION_ZLIB);
  v4[1] = apr_palloc(a1, v5);
  return v4;
}

void GTCaptureArchive_fillBuffer(const char **a1, apr_pool_t **a2, char *a3, uint8_t *a4, size_t a5, int *a6)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (*(FileWithFilename + 8) >= a5)
  {
    if ((*(FileWithFilename + 24) & 2) != 0)
    {
      v12 = *FileWithFilename;
      v13 = *a2;
      v14 = *a1;

      GTCaptureArchive_fillBufferSeparateFile(v14, v12, a4, a5, v13, a6);
    }

    else
    {

      GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, FileWithFilename, a4, a5, a6);
    }
  }

  else
  {
    if (a6)
    {
      v15[0] = *a6;
      v15[1] = 502;
      v16 = 0;
      v17 = "destSize <= entry->size";
      v18 = 0;
      GTError_addError(a6, v15);
    }

    bzero(a4, a5);
  }
}

void GTCaptureArchive_fillBufferSeparateFile(const char *a1, const char *a2, char *a3, size_t a4, apr_pool_t *a5, int *a6)
{
  v10 = gt_filepath_merge(a1, a2, a5);
  v11 = open(v10, 0, 0);
  if (v11 < 0)
  {
LABEL_12:
    if (a6)
    {
      v16[0] = *a6;
      v16[1] = 502;
      v17 = a2;
      v18 = "mapped";
      v19 = 0;
      GTError_addError(a6, v16);
    }

    bzero(a3, a4);
  }

  else
  {
    v12 = v11;
    v13 = 0;
    do
    {
      if (a4 - v13 >= 0x100000)
      {
        v14 = 0x100000;
      }

      else
      {
        v14 = a4 - v13;
      }

      v15 = read(v12, &a3[v13], v14);
      if ((v15 + 1) < 2)
      {
        close(v12);
        goto LABEL_12;
      }

      v13 += v15;
    }

    while (v13 != a4);

    close(v12);
  }
}

char *GTCaptureArchive_readData(const char **a1, apr_pool_t **a2, char *a3, apr_pool_t *a4, int *a5)
{
  if (!a3)
  {
    return 0;
  }

  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (a5)
  {
    v12 = *a5 & 0xFFFFFFFD;
  }

  else
  {
    v12 = 0;
  }

  LODWORD(v18) = v12;
  v13 = *(FileWithFilename + 24);
  v14 = *(FileWithFilename + 8);
  v15 = apr_palloc(a4, v14);
  if ((v13 & 2) != 0)
  {
    GTCaptureArchive_fillBufferSeparateFile(*a1, a3, v15, v14, *a2, &v18);
  }

  else
  {
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v15, v14, &v18);
  }

  if (DWORD1(v18) == 502)
  {
    if (!*(&v18 + 1))
    {
      *(&v18 + 1) = a3;
    }

    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    GTError_addError(a5, v17);
    return 0;
  }

  return v15;
}

uint8_t *GTCaptureArchive_mapData(uint64_t a1, uint64_t a2, char *a3, apr_pool_t *a4, int *a5)
{
  FileWithFilename = GTCaptureArchive_getFileWithFilename(a1, a3);
  if (!FileWithFilename)
  {
    return 0;
  }

  v11 = FileWithFilename;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  if ((*(FileWithFilename + 24) & 2) != 0)
  {
    v13 = GTCaptureArchive_mapDataSeparateFile(a1, FileWithFilename, a4, &v16);
  }

  else
  {
    v12 = *(FileWithFilename + 8);
    v13 = apr_palloc(a4, v12);
    GTCaptureArchive_fillBufferCompressedDeflate(a1, a2, v11, v13, v12, &v16);
  }

  if (DWORD1(v16) == 502)
  {
    if (!*(&v16 + 1))
    {
      *(&v16 + 1) = a3;
    }

    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    GTError_addError(a5, v15);
    return 0;
  }

  return v13;
}

uint64_t GTCaptureArchive_filenamesWithPrefix(int a1, const char **a2, char *__s, apr_array_header_t *a4)
{
  result = strlen(__s);
  v9 = result;
  v10 = &a2[a1];
  if (a1 >= 1)
  {
    v11 = a1;
    do
    {
      v12 = &a2[v11 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      result = strncmp(v14, __s, v9);
      if (result >= 0)
      {
        v11 >>= 1;
      }

      else
      {
        v11 += ~(v11 >> 1);
      }

      if (result < 0)
      {
        a2 = v13;
      }
    }

    while (v11 > 0);
  }

  while (a2 != v10)
  {
    v15 = *a2;
    result = strncmp(*a2, __s, v9);
    if (result)
    {
      break;
    }

    result = apr_array_push(a4);
    *result = v15;
    ++a2;
  }

  return result;
}

__n128 DYTraceDecode_CALayer_setAnchorPoint(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if ((*(a2 + 36) | 4) != 0x74)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "*(const char*)bytes == 'p' || *(const char*)bytes == 't'";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    if (*(a2 + 37) != 6566464)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "(memcmp((const char*)bytes + offset + 1, (p@2d) + 1, sizeof(p@2d) - 1) == 0)";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BC90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_CALayer_setTransform(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if ((*(a2 + 36) | 4) != 0x74)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "*(const char*)bytes == 'p' || *(const char*)bytes == 't'";
      v19 = 0;
      GTError_addError(a4, &v15);
    }

    if (*(a2 + 37) != 1681273152 || *(a2 + 40) != 6579300)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "(memcmp((const char*)bytes + offset + 1, (p@16ddd) + 1, sizeof(p@16ddd) - 1) == 0)";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }

  *a1 = *(a2 + 44);
  v9 = *(a2 + 52);
  v10 = *(a2 + 68);
  v11 = *(a2 + 84);
  *(a1 + 56) = *(a2 + 100);
  *(a1 + 40) = v11;
  *(a1 + 24) = v10;
  *(a1 + 8) = v9;
  v12 = *(a2 + 116);
  v13 = *(a2 + 132);
  v14 = *(a2 + 148);
  *(a1 + 120) = *(a2 + 164);
  *(a1 + 104) = v14;
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 136) = *(a2 + 180);
  *(a1 + 144) = *(a2 + 188);
  if (a4)
  {
    if (a3 <= 0x9F)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BCA0;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setBounds_contentsScale_windowBounds_windowProperties(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strcmp((a2 + 36), "C@4dd@4dulil");
  if (v8)
  {
    if (a4)
    {
      if (*v7 != 0x6434406464344043 || *(v7 + 8) != 7105653)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BCB0;
        v19 = "memcmp((const char*)bytes + offset, (C@4dd@4dull), sizeof(C@4dd@4dull)) == 0";
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }

    v10 = 12;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 0x6434406464344043 || *(v7 + 5) != 0x6C696C75643440)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BCB0;
        v19 = "memcmp((const char*)bytes + offset, (C@4dd@4dulil), sizeof(C@4dd@4dulil)) == 0";
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }

    v10 = 16;
  }

  v12 = v7 + v10;
  *a1 = *(v7 + v10);
  v13 = *(v7 + v10 + 8);
  *(a1 + 24) = *(v7 + v10 + 24);
  *(a1 + 8) = v13;
  *(a1 + 40) = *(v7 + v10 + 40);
  v14 = *(v7 + v10 + 64);
  *(a1 + 48) = *(v7 + v10 + 48);
  *(a1 + 64) = v14;
  *(a1 + 80) = *(v7 + v10 + 80);
  if (v8)
  {
    v15 = v10 | 0x60;
    *(a1 + 96) = *(v12 + 88);
    if (!a4)
    {
      return;
    }
  }

  else
  {
    *(a1 + 96) = *(v12 + 88);
    *(a1 + 88) = *(v12 + 92);
    v15 = v10 + 100;
    if (!a4)
    {
      return;
    }
  }

  if (v15 > a3)
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA8BCB0;
    v19 = "offset <= length";
    v20 = 0;
    GTError_addError(a4, &v16);
  }
}

const char *AppendString_13794(const char **a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  if (*(a2 + *a3) == g_null_string_token_13795)
  {
    v5 = 0;
  }

  else
  {
    v5 = (a2 + *a3);
  }

  *a1 = v5;
  if (v5)
  {
    v6 = strlen(v5) + 1;
  }

  else
  {
    v6 = 8;
  }

  *a3 = v6 + v4;
  return v5;
}

void DYTraceDecode_InternalData(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = a2 + 36 + (strlen((a2 + 36)) & 0xFFFFFFFFFFFFFFFCLL);
  *a1 = *(v9 + 4);
  v10 = *(v9 + 12);
  *(a1 + 8) = v10;
  v31 = 0;
  switch(v10)
  {
    case 101:
      v21 = strcmp(v8, "CiulSlS");
      *(a1 + 40) = 0;
      if (v21)
      {
        if (!a4)
        {
          goto LABEL_94;
        }

        if (*v8 == 1819633987 && *(v8 + 3) == 7099244)
        {
          goto LABEL_94;
        }

        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v23 = "memcmp((const char*)bytes + offset, (CiulSl), sizeof(CiulSl)) == 0";
      }

      else
      {
        if (!a4 || *v8 == 0x536C536C756943)
        {
          goto LABEL_94;
        }

        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v23 = "memcmp((const char*)bytes + offset, (CiulSlS), sizeof(CiulSlS)) == 0";
      }

      v29 = v23;
      v30 = 0;
      GTError_addError(a4, &v26);
LABEL_94:
      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v31 = 28;
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      v25 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *(a1 + 24) = *(v8 + v25);
      v24 = v25 + 8;
      v31 = v24;
      if (v21)
      {
        goto LABEL_79;
      }

      *(a1 + 40) = AppendString_13794((a1 + 40), v8, &v31);
      goto LABEL_78;
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 112:
    case 113:
    case 114:
    case 115:
    case 121:
    case 122:
    case 123:
    case 124:
    case 130:
    case 131:
    case 133:
    case 134:
    case 136:
      goto LABEL_25;
    case 107:
    case 137:
      if (a4)
      {
        if (*v8 != 1819633987 || *(v8 + 3) != 7107948)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ciulul), sizeof(Ciulul)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      *(a1 + 24) = *(a2 + 64);
      v13 = 36;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 108:
      if (a4 && *v8 ^ 0x53746943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CitS), sizeof(CitS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v17 = 28;
      goto LABEL_76;
    case 109:
    case 120:
      if (a4 && *v8 ^ 0x626C756C75536943 | *(v8 + 8))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSululb), sizeof(CiSululb)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 48);
      *(a1 + 8) = *(a2 + 56);
      v31 = 24;
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      v14 = v31;
      v15 = v8 + ((v31 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      *(a1 + 16) = *v15;
      *(a1 + 24) = *(v15 + 1);
      *(a1 + 40) = v15[16];
      v16 = v14 + 23;
      goto LABEL_80;
    case 110:
      if (a4)
      {
        if (*v8 != 1819633987 || v8[2] != 105)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ciuli), sizeof(Ciuli)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      *(a1 + 24) = *(a2 + 64);
      v13 = 32;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 111:
      if (!a4 || *v8 == 5597507)
      {
        goto LABEL_6;
      }

      v26 = *a4;
      v27 = 501;
      v28 = xmmword_24DA8BCC0;
      v11 = "memcmp((const char*)bytes + offset, (CiU), sizeof(CiU)) == 0";
      goto LABEL_5;
    case 116:
      if (a4)
      {
        if (*v8 != 1968531779 || v8[2] != 108)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (CiUul), sizeof(CiUul)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      v19 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      *(a1 + 24) = *(v8 + v19);
      v13 = v19 + 8;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 117:
    case 127:
    case 128:
    case 129:
    case 132:
      if (!a4 || *v8 == 5466435)
      {
        goto LABEL_6;
      }

      v26 = *a4;
      v27 = 501;
      v28 = xmmword_24DA8BCC0;
      v11 = "memcmp((const char*)bytes + offset, (CiS), sizeof(CiS)) == 0";
LABEL_5:
      v29 = v11;
      v30 = 0;
      GTError_addError(a4, &v26);
LABEL_6:
      *a1 = *(a2 + 40);
      *(a1 + 8) = *(a2 + 48);
      v31 = 16;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      goto LABEL_78;
    case 118:
      if (a4 && *v8 ^ 0x6C756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciul), sizeof(Ciul)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      goto LABEL_88;
    case 119:
      if (a4 && *v8 != 0x53535369756943)
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiuiSSS), sizeof(CiuiSSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 40) = *(a2 + 56);
      v31 = 24;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v31);
      *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v31);
      goto LABEL_78;
    case 125:
      if (a4 && *v8 ^ 0x6C756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciul), sizeof(Ciul)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 24) = *(a2 + 56);
LABEL_88:
      v13 = 28;
      if (!a4)
      {
        return;
      }

      goto LABEL_81;
    case 126:
      if (a4 && *v8 ^ 0x53536943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSS), sizeof(CiSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      goto LABEL_77;
    case 135:
      if (a4 && *v8 ^ 0x53536943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (CiSS), sizeof(CiSS)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      v31 = 20;
      *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v31);
      v17 = (v31 + 3) & 0xFFFFFFFFFFFFFFFCLL;
LABEL_76:
      v31 = v17;
LABEL_77:
      *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v31);
LABEL_78:
      v24 = v31;
LABEL_79:
      v16 = v24 + 3;
LABEL_80:
      v13 = v16 & 0xFFFFFFFFFFFFFFFCLL;
      if (a4)
      {
        goto LABEL_81;
      }

      return;
    default:
      if (v10 != 7)
      {
LABEL_25:
        if (a4 && *v8 ^ 0x6943 | *(v8 + 2))
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "memcmp((const char*)bytes + offset, (Ci), sizeof(Ci)) == 0";
          v30 = 0;
          GTError_addError(a4, &v26);
        }

        *a1 = *(a2 + 40);
        *(a1 + 8) = *(a2 + 48);
        v13 = 16;
        if (!a4)
        {
          return;
        }

LABEL_81:
        if (v13 > a3)
        {
          v26 = *a4;
          v27 = 501;
          v28 = xmmword_24DA8BCC0;
          v29 = "offset <= length";
          v30 = 0;
          GTError_addError(a4, &v26);
        }

        return;
      }

      if (a4 && *v8 ^ 0x69756943 | *(v8 + 4))
      {
        v26 = *a4;
        v27 = 501;
        v28 = xmmword_24DA8BCC0;
        v29 = "memcmp((const char*)bytes + offset, (Ciui), sizeof(Ciui)) == 0";
        v30 = 0;
        GTError_addError(a4, &v26);
      }

      *a1 = *(a2 + 44);
      *(a1 + 8) = *(a2 + 52);
      *(a1 + 16) = *(a2 + 56);
      v13 = 24;
      if (a4)
      {
        goto LABEL_81;
      }

      return;
  }
}

void DYTraceDecode_MTLAccelerationStructure_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (strcmp((a2 + 36), "Cui"))
  {
    if (a4 && *(a2 + 36) != 7107907)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCD0;
      v12 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    v8 = 20;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v8 > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCD0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    return;
  }

  if (a4 && *(a2 + 36) != 6911299)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8BCD0;
    v12 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  v8 = 16;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLBuffer_allocatedSize(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (strcmp((a2 + 36), "Cui"))
  {
    if (a4 && *(a2 + 36) != 7107907)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCE0;
      v12 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    v8 = 20;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v8 > a3)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BCE0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    return;
  }

  if (a4 && *(a2 + 36) != 6911299)
  {
    v9 = *a4;
    v10 = 501;
    v11 = xmmword_24DA8BCE0;
    v12 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
    v13 = 0;
    GTError_addError(a4, &v9);
  }

  *a1 = *(a2 + 40);
  a1[1] = *(a2 + 48);
  v8 = 16;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLBuffer_newTextureWithDescriptor_offset_bytesPerRow(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  if (!strcmp((a2 + 36), "CUululul"))
  {
    if (a4 && *v7 ^ 0x6C756C756C755543 | *(v7 + 8))
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8BCF0;
      v17 = "memcmp((const char*)bytes + offset, (CUululul), sizeof(CUululul)) == 0";
      v18 = 0;
      GTError_addError(a4, &v14);
    }

    v9 = 12;
    v10 = 24;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 1819628867 || *(v7 + 3) != 7107948)
      {
        v14 = *a4;
        v15 = 501;
        v16 = xmmword_24DA8BCF0;
        v17 = "memcmp((const char*)bytes + offset, (CUulul), sizeof(CUulul)) == 0";
        v18 = 0;
        GTError_addError(a4, &v14);
      }
    }

    v9 = 8;
    v10 = 16;
  }

  *a1 = *(v7 + v9);
  v19 = v9 + 8;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v19);
  v11 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v7 + v11);
  *(a1 + 32) = *(v7 + v11 + 8);
  v12 = v11 + v10;
  if (a4 && *(v7 + v12) != 116)
  {
    v14 = *a4;
    v15 = 501;
    v16 = xmmword_24DA8BCF0;
    v17 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v18 = 0;
    GTError_addError(a4, &v14);
  }

  v13 = (v12 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v7 + v13);
  if (a4)
  {
    if (v13 + 8 > a3)
    {
      v14 = *a4;
      v15 = 501;
      v16 = xmmword_24DA8BCF0;
      v17 = "offset <= length";
      v18 = 0;
      GTError_addError(a4, &v14);
    }
  }
}

void DYTraceDecode_MTLBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD00;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911043)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "memcmp((const char*)bytes + offset, (Cti), sizeof(Cti)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    if (*(a2 + 60) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 64);
    if (a3 <= 0x23)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD10;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 64);
  }
}

void DYTraceDecode_MTLIOCommandQueue_continueCommandBuffer_retainReferences(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911043)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "memcmp((const char*)bytes + offset, (Cti), sizeof(Cti)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    if (*(a2 + 60) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *(a1 + 8) = *(a2 + 64);
    if (a3 <= 0x23)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD20;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 16) = *(a2 + 48);
    *(a1 + 24) = *(a2 + 56);
    *(a1 + 8) = *(a2 + 64);
  }
}

void DYTraceDecode_MTLComputePipelineState_resourceIndex(void *a1, uint64_t a2, size_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BD30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLComputePipelineState_uniqueIdentifier(void *a1, uint64_t a2, size_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BD40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLDevice_newArgumentEncoderWithArguments(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BD50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTLDevice_newBufferWithLength_options(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "Culult");
  a1[4] = 0;
  v10 = a1 + 4;
  if (v9)
  {
    if (a4)
    {
      if (*v8 != 1970042179 || *(v8 + 4) != 108)
      {
        v15 = *a4;
        v16 = 501;
        v17 = xmmword_24DA8BD60;
        v18 = "memcmp((const char*)bytes + offset, (Culul), sizeof(Culul)) == 0";
        v19 = 0;
        GTError_addError(a4, &v15);
      }
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    v10 = a1 + 3;
    v12 = 32;
    v13 = 60;
  }

  else
  {
    if (a4)
    {
      if (*v8 != 1970042179 || *(v8 + 3) != 7629941)
      {
        v15 = *a4;
        v16 = 501;
        v17 = xmmword_24DA8BD60;
        v18 = "memcmp((const char*)bytes + offset, (Culult), sizeof(Culult)) == 0";
        v19 = 0;
        GTError_addError(a4, &v15);
      }
    }

    *a1 = *(a2 + 44);
    a1[2] = *(a2 + 52);
    a1[3] = *(a2 + 60);
    v12 = 40;
    v13 = 68;
  }

  *v10 = *(a2 + v13);
  if (a4)
  {
    if (*(v8 + v12) != 116)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BD60;
      v18 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v19 = 0;
      GTError_addError(a4, &v15);
    }

    a1[1] = *(v8 + v12 + 4);
    if (v12 + 12 > a3)
    {
      v15 = *a4;
      v16 = 501;
      v17 = xmmword_24DA8BD60;
      v18 = "offset <= length";
      v19 = 0;
      GTError_addError(a4, &v15);
    }
  }

  else
  {
    a1[1] = *(v8 + v12 + 4);
  }
}

void DYTraceDecode_MTLDevice_newBufferWithBytes_length_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "CU<b>ulult");
  *(a1 + 40) = 0;
  if (v9)
  {
    if (a4)
    {
      if (*v8 != 0x756C753E623C5543 || *(v8 + 8) != 108)
      {
        v16 = *a4;
        v17 = 501;
        v18 = xmmword_24DA8BD70;
        v11 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
LABEL_14:
        v19 = v11;
        v20 = 0;
        GTError_addError(a4, &v16);
      }
    }
  }

  else if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(v8 + 3) != 0x746C756C753E62)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA8BD70;
      v11 = "memcmp((const char*)bytes + offset, (CU<b>ulult), sizeof(CU<b>ulult)) == 0";
      goto LABEL_14;
    }
  }

  *a1 = *(a2 + 48);
  v21 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v21);
  v13 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v13);
  *(a1 + 32) = *(v8 + v13 + 8);
  v14 = v13 + 16;
  if (!v9)
  {
    *(a1 + 40) = *(v8 + v14);
    v14 = v13 + 24;
  }

  if (a4 && *(v8 + v14) != 116)
  {
    v16 = *a4;
    v17 = 501;
    v18 = xmmword_24DA8BD70;
    v19 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v20 = 0;
    GTError_addError(a4, &v16);
  }

  v15 = (v14 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v15);
  if (a4)
  {
    if (v15 + 8 > a3)
    {
      v16 = *a4;
      v17 = 501;
      v18 = xmmword_24DA8BD70;
      v19 = "offset <= length";
      v20 = 0;
      GTError_addError(a4, &v16);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BD80;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BD80;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BD80;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithFunction_options_reflection_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  a1[4] = 0;
  if (a4)
  {
    if (*(a2 + 36) != 1819636803 || *(a2 + 39) != 7631980)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "memcmp((const char*)bytes + offset, (Ctultt), sizeof(Ctultt)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[2] = *(a2 + 52);
  a1[3] = *(a2 + 60);
  a1[5] = *(a2 + 76);
  if (a4)
  {
    if (*(a2 + 84) != 116)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    a1[1] = *(a2 + 88);
    if (a3 <= 0x3B)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BD90;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    a1[1] = *(a2 + 88);
  }
}

void DYTraceDecode_MTLDevice_newComputePipelineStateWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = a2 + 36;
  if (!strcmp((a2 + 36), "CUUt"))
  {
    if (a4 && *v7 ^ 0x74555543 | *(v7 + 4))
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDA0;
      v15 = "memcmp((const char*)bytes + offset, (CUUt), sizeof(CUUt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }

    v9 = 8;
  }

  else
  {
    if (a4)
    {
      if (*v7 != 0x623C553E623C5543 || *(v7 + 3) != 0x743E623C553E62)
      {
        v12 = *a4;
        v13 = 501;
        v14 = xmmword_24DA8BDA0;
        v15 = "memcmp((const char*)bytes + offset, (CU<b>U<b>t), sizeof(CU<b>U<b>t)) == 0";
        v16 = 0;
        GTError_addError(a4, &v12);
      }
    }

    v9 = 12;
  }

  *a1 = *(v7 + v9);
  v17 = v9 + 8;
  *(a1 + 16) = AppendString_13794((a1 + 16), v7, &v17);
  *(a1 + 24) = AppendString_13794((a1 + 24), v7, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v7 + v10);
  if (a4 && *(v7 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDA0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v7 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDA0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newIndirectCommandBufferWithDescriptor_maxCommandCount_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C753E623C5543 || *(a2 + 44) != 108)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDB0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>ulul), sizeof(CU<b>ulul)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 48);
  v17 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 32) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDB0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 21) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDB0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithImageFilterFunctionsSPI_imageFilterFunctionInfo_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "C@%llutU<b>t", a1 + 24);
  v8 = strlen(v7);
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *(a1 + 16) = &v7[v9];
  v17 = v9 + 8 * *(a1 + 24);
  *(a1 + 32) = AppendString_13794((a1 + 32), v7, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *&v7[v10];
  if (a4 && *&v7[v10 + 8] != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BDC0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v11];
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BDC0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithFile_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BDD0;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BDD0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BDD0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithSource_options_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CU<b>tt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (!a4 || *v8 == 0x74553E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>Ut), sizeof(CU<b>Ut)) == 0";
  }

  else
  {
    if (!a4 || *v8 == 0x74743E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>tt), sizeof(CU<b>tt)) == 0";
  }

  v16 = v10;
  v17 = 0;
  GTError_addError(a4, &v13);
LABEL_9:
  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  if (v9)
  {
    *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v18);
    v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  *(a1 + 32) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDE0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BDE0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newLibraryWithSource_options_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CU<b>tt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (!a4 || *v8 == 0x74553E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>Ut), sizeof(CU<b>Ut)) == 0";
  }

  else
  {
    if (!a4 || *v8 == 0x74743E623C5543)
    {
      goto LABEL_9;
    }

    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v10 = "memcmp((const char*)bytes + offset, (CU<b>tt), sizeof(CU<b>tt)) == 0";
  }

  v16 = v10;
  v17 = 0;
  GTError_addError(a4, &v13);
LABEL_9:
  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  if (v9)
  {
    *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v18);
    v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v11 = ((v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  *(a1 + 32) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BDF0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BDF0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLDevice_newPipelineLibraryWithFilePath_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 7624003)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE00;
    v14 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE00;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BE00;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE10;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BE10;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE10;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newRenderPipelineStateWithTileDescriptor_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628867 || *(a2 + 39) != 7631980)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE20;
      v15 = "memcmp((const char*)bytes + offset, (CUultt), sizeof(CUultt)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 16);
  if (a4 && *(v8 + v10 + 24) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BE20;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 29) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BE20;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLDevice_newTextureWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  v9 = strcmp((a2 + 36), "CUt");
  *(a1 + 24) = 0;
  if (v9)
  {
    if (a4 && *v8 ^ 0x5543 | *(v8 + 2))
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BE30;
      v10 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
LABEL_8:
      v16 = v10;
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  else if (a4 && *v8 != 7624003)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BE30;
    v10 = "memcmp((const char*)bytes + offset, (CUt), sizeof(CUt)) == 0";
    goto LABEL_8;
  }

  *a1 = *(a2 + 40);
  v18 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v11 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (!v9)
  {
    *(a1 + 24) = *(v8 + v11);
    v11 += 8;
  }

  if (a4 && *(v8 + v11) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BE30;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BE30;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLFunction_newArgumentEncoderWithBufferIndex_reflection(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  a1[3] = 0;
  if (a4)
  {
    if (*(a2 + 36) ^ 0x746C7543 | *(a2 + 40))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "memcmp((const char*)bytes + offset, (Cult), sizeof(Cult)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 41);
    a1[2] = *(a2 + 49);
    if (*(a2 + 65) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 41);
    a1[2] = *(a2 + 49);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTLHeap_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE50;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE50;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_allocatedSize(void *a1, uint64_t a2, size_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BE60;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLIndirectCommandBuffer_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE70;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BE70;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setVertexAmplificationCount_viewMappings(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = strcmp((a2 + 36), "Cult");
  *(a1 + 16) = 0;
  if (v8)
  {
    if (a4 && *(a2 + 36) != 0x3E623C556C7543)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BE80;
      v13 = "memcmp((const char*)bytes + offset, (CulU<b>), sizeof(CulU<b>)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    *a1 = *(a2 + 44);
    *(a1 + 8) = *(a2 + 52);
    v15 = 24;
    *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v15);
    v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (!a4)
    {
      return;
    }

LABEL_11:
    if (v9 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BE80;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }

    return;
  }

  if (a4 && *(a2 + 36) ^ 0x746C7543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BE80;
    v13 = "memcmp((const char*)bytes + offset, (Cult), sizeof(Cult)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  *(a1 + 8) = *(a2 + 52);
  gt_error_assert_add_error(a4, *(a2 + 60) == 0, "viewMappings == 0");
  v9 = 32;
  if (a4)
  {
    goto LABEL_11;
  }
}

void DYTraceDecode_MTLLibrary_newFunctionWithName_constantValues_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x74555343 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE90;
    v14 = "memcmp((const char*)bytes + offset, (CSUt), sizeof(CSUt)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BE90;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BE90;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLLibrary_newIntersectionFunctionWithDescriptor_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1953781059 || *(a2 + 40) != 116)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BEA0;
      v14 = "memcmp((const char*)bytes + offset, (CUttt), sizeof(CUttt)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 42);
  v16 = 14;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  *(a1 + 24) = *(v8 + v10 + 8);
  *(a1 + 32) = *(v8 + v10 + 16);
  if (a4)
  {
    if (v10 + 24 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BEA0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLPipelineLibrary_newComputePipelineStateWithName_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628355 || *(a2 + 39) != 7631980)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEB0;
      v16 = "memcmp((const char*)bytes + offset, (CSultt), sizeof(CSultt)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v11 = (v10 + 19) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BEB0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEB0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_MTLPipelineLibrary_newRenderPipelineStateWithName_options_reflection_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  *(a1 + 32) = 0;
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1819628355 || *(a2 + 39) != 7631980)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEC0;
      v16 = "memcmp((const char*)bytes + offset, (CSultt), sizeof(CSultt)) == 0";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }

  *a1 = *(a2 + 44);
  v18 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v18);
  v10 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  v11 = (v10 + 19) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v11);
  if (a4 && *(v8 + v11 + 8) != 116)
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BEC0;
    v16 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v12);
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BEC0;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

__n128 DYTraceDecode_MTLRenderCommandEncoder_setScissorRect(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6C344043 | *(a2 + 40))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BED0;
      v12 = "memcmp((const char*)bytes + offset, (C@4l), sizeof(C@4l)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
    if (a3 <= 0x2F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8BED0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 24) = *(a2 + 68);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_MTLRenderCommandEncoder_setScissorRects_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BEE0;
    v13 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BEE0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRenderCommandEncoder_setViewports_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v10 = *a4;
    v11 = 501;
    v12 = xmmword_24DA8BEF0;
    v13 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v14 = 0;
    GTError_addError(a4, &v10);
  }

  *a1 = *(a2 + 44);
  v15 = 16;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v15);
  v9 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v9);
  if (a4)
  {
    if (v9 + 8 > a3)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8BEF0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_MTLRenderPipelineState_uniqueIdentifier(void *a1, uint64_t a2, size_t a3, int *a4)
{
  v7 = a2 + 36;
  v8 = strlen((a2 + 36));
  *a1 = *(v7 + v8 + 1);
  a1[1] = *(v7 + v8 + 9);
  if (a4)
  {
    if (v8 + 17 > a3)
    {
      v9[0] = *a4;
      v9[1] = 501;
      v10 = xmmword_24DA8BF00;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, v9);
    }
  }
}

void DYTraceDecode_MTLTexture_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  if (!strcmp((a2 + 36), "CU<b>ulul@6ulululul"))
  {
    if (a4)
    {
      v12 = *v8 == 0x756C753E623C5543 && *(v8 + 8) == 0x756C756C7536406CLL;
      if (!v12 || *(v8 + 16) != 7107948)
      {
        v17 = *a4;
        v18 = 501;
        v19 = xmmword_24DA8BF10;
        v20 = "memcmp((const char*)bytes + offset, (CU<b>ulul@6ulululul), sizeof(CU<b>ulul@6ulululul)) == 0";
        v21 = 0;
        GTError_addError(a4, &v17);
      }
    }

    v11 = 88;
  }

  else
  {
    if (a4)
    {
      v9 = *v8 == 0x756C753E623C5543 && *(v8 + 8) == 0x756C756C7536406CLL;
      if (!v9 || *(v8 + 16) != 108)
      {
        v17 = *a4;
        v18 = 501;
        v19 = xmmword_24DA8BF10;
        v20 = "memcmp((const char*)bytes + offset, (CU<b>ulul@6ululul), sizeof(CU<b>ulul@6ululul)) == 0";
        v21 = 0;
        GTError_addError(a4, &v17);
      }
    }

    v11 = 80;
  }

  *a1 = *(a2 + 56);
  v22 = 28;
  *(a1 + 8) = AppendString_13794((a1 + 8), v8, &v22);
  v14 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 16) = *(v8 + v14);
  *(a1 + 24) = *(v8 + v14 + 8);
  v15 = *(v8 + v14 + 16);
  v16 = *(v8 + v14 + 48);
  *(a1 + 48) = *(v8 + v14 + 32);
  *(a1 + 64) = v16;
  *(a1 + 32) = v15;
  *(a1 + 80) = *(v8 + v14 + 64);
  *(a1 + 88) = *(v8 + v14 + 72);
  if (a4)
  {
    if (v14 + v11 > a3)
    {
      v17 = *a4;
      v18 = 501;
      v19 = xmmword_24DA8BF10;
      v20 = "offset <= length";
      v21 = 0;
      GTError_addError(a4, &v17);
    }
  }
}

void DYTraceDecode_MTLTexture_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = a2 + 36;
  v9 = strcmp((a2 + 36), "C@6ulululU<b>ulul");
  if (v9)
  {
    if (a4)
    {
      v10 = *v8 == 0x756C756C75364043 && *(v8 + 8) == 0x756C753E623C556CLL;
      if (!v10 || *(v8 + 16) != 7107948)
      {
        v19 = *a4;
        v20 = 501;
        v21 = xmmword_24DA8BF20;
        v12 = "memcmp((const char*)bytes + offset, (C@6ulululU<b>ululul), sizeof(C@6ulululU<b>ululul)) == 0";
LABEL_20:
        v22 = v12;
        v23 = 0;
        GTError_addError(a4, &v19);
      }
    }
  }

  else if (a4)
  {
    v13 = *v8 == 0x756C756C75364043 && *(v8 + 8) == 0x756C753E623C556CLL;
    if (!v13 || *(v8 + 16) != 108)
    {
      v19 = *a4;
      v20 = 501;
      v21 = xmmword_24DA8BF20;
      v12 = "memcmp((const char*)bytes + offset, (C@6ulululU<b>ulul), sizeof(C@6ulululU<b>ulul)) == 0";
      goto LABEL_20;
    }
  }

  *a1 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a2 + 80);
  *(a1 + 40) = *(a2 + 96);
  *(a1 + 24) = v16;
  *(a1 + 8) = v15;
  *(a1 + 56) = *(a2 + 112);
  *(a1 + 64) = *(a2 + 120);
  v24 = 92;
  *(a1 + 72) = AppendString_13794((a1 + 72), v8, &v24);
  v17 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 80) = *(v8 + v17);
  *(a1 + 88) = *(v8 + v17 + 8);
  v18 = v17 + 16;
  if (v9)
  {
    *(a1 + 96) = *(v8 + v18);
    v18 = v17 + 24;
    if (!a4)
    {
      return;
    }
  }

  else
  {
    *(a1 + 96) = 0;
    if (!a4)
    {
      return;
    }
  }

  if (v18 > a3)
  {
    v19 = *a4;
    v20 = 501;
    v21 = xmmword_24DA8BF20;
    v22 = "offset <= length";
    v23 = 0;
    GTError_addError(a4, &v19);
  }
}

void DYTraceDecode_MTLTexture_setPurgeableState(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF30;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF30;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    if (*(a2 + 56) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 60);
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF40;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[1] = *(a2 + 60);
  }
}

void DYTraceDecode_MTL4CommandBuffer_beginCommandBufferWithAllocator_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 5600323)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BF50;
    v14 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  *(a1 + 16) = *(a2 + 48);
  v16 = 20;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8BF50;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8BF50;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_setTextureView_descriptor_atIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1968534595 || *(a2 + 39) != 7629941)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF60;
      v15 = "memcmp((const char*)bytes + offset, (CtUult), sizeof(CtUult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  *(a1 + 16) = *(a2 + 52);
  v17 = 24;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 8);
  if (a4 && *(v8 + v10 + 16) ^ 0x7775 | *(v8 + v10 + 18))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BF60;
    v15 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF60;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_setTextureViewFromBuffer_descriptor_offset_bytesPerRow_atIndex(uint64_t a1, void *a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x756C756C75557443 || *(a2 + 39) != 0x746C756C756C75)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF70;
      v15 = "memcmp((const char*)bytes + offset, (CtUululult), sizeof(CtUululult)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = a2[6];
  *(a1 + 16) = a2[7];
  v17 = 28;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  *(a1 + 40) = *(v8 + v10 + 8);
  *(a1 + 48) = *(v8 + v10 + 16);
  *(a1 + 56) = *(v8 + v10 + 24);
  if (a4 && *(v8 + v10 + 32) ^ 0x7775 | *(v8 + v10 + 34))
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8BF70;
    v15 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 38) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8BF70;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}

void DYTraceDecode_MTLTextureViewPool_copyResourceViewsFromPool_sourceRange_destinationIndex(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  sscanf((a2 + 36), "Ct@2ulul@%llut", a1 + 56);
  v8 = strlen(v7);
  v9 = &v7[v8 & 0xFFFFFFFFFFFFFFFCLL];
  *a1 = *(v9 + 4);
  *(a1 + 16) = *(v9 + 12);
  *(a1 + 24) = *(v9 + 20);
  v10 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 44;
  *(a1 + 40) = *(v9 + 36);
  *(a1 + 48) = &v7[v10];
  v11 = v10 + 8 * *(a1 + 56);
  if (a4 && *&v7[v11] ^ 0x7775 | v7[v11 + 2])
  {
    v13 = *a4;
    v14 = 501;
    v15 = xmmword_24DA8BF80;
    v16 = "memcmp((const char*)bytes + offset, (uw), sizeof(uw)) == 0";
    v17 = 0;
    GTError_addError(a4, &v13);
  }

  v12 = (v11 + 6) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *&v7[v12];
  if (a4)
  {
    if (v12 + 8 > a3)
    {
      v13 = *a4;
      v14 = 501;
      v15 = xmmword_24DA8BF80;
      v16 = "offset <= length";
      v17 = 0;
      GTError_addError(a4, &v13);
    }
  }
}

void DYTraceDecode_Boundary_Frame(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x74747474747443)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8BF90;
    v11 = "memcmp((const char*)bytes + offset, (Ctttttt), sizeof(Ctttttt)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  a1[4] = *(a2 + 76);
  a1[5] = *(a2 + 84);
  a1[6] = *(a2 + 92);
  if (a4)
  {
    if (a3 <= 0x3F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BF90;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_CAMetalDrawable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFA0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFA0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_CAMetalDrawable_present(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFB0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFB0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_CAMetalDrawable_presentAfterMinimumDuration(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFC0;
      v11 = "memcmp((const char*)bytes + offset, (Cd), sizeof(Cd)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFC0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalDrawable_presentAtTime(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x6443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFD0;
      v11 = "memcmp((const char*)bytes + offset, (Cd), sizeof(Cd)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFD0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalDrawable_texture(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFE0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_CAMetalLayer_nextDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8BFF0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_CAMetalLayer_setBounds_contentsScale(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1681145923 || *(a2 + 40) != 100)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C000;
      v13 = "memcmp((const char*)bytes + offset, (C@4dd), sizeof(C@4dd)) == 0";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }

  *a1 = *(a2 + 44);
  v9 = *(a2 + 52);
  *(a1 + 24) = *(a2 + 68);
  *(a1 + 8) = v9;
  *(a1 + 40) = *(a2 + 84);
  if (a4)
  {
    if (a3 <= 0x37)
    {
      v10 = *a4;
      v11 = 501;
      v12 = xmmword_24DA8C000;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, &v10);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setColorspace(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5543 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C010;
    v11 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C010;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_CAMetalLayer_setDevice(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 5600323)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C020;
    v11 = "memcmp((const char*)bytes + offset, (CtU), sizeof(CtU)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  *(a1 + 8) = *(a2 + 48);
  v13 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C020;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

__n128 DYTraceDecode_CAMetalLayer_setDrawableSize(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x64324043 | *(a2 + 40))
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C030;
      v12 = "memcmp((const char*)bytes + offset, (C@2d), sizeof(C@2d)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }

    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C030;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  else
  {
    *a1 = *(a2 + 44);
    result = *(a2 + 52);
    *(a1 + 8) = result;
  }

  return result;
}

void DYTraceDecode_CAMetalLayer_setFramebufferOnly(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C040;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C040;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalLayer_setPixelFormat(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7107907)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C050;
      v11 = "memcmp((const char*)bytes + offset, (Cul), sizeof(Cul)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C050;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_CAMetalLayer_setWantsExtendedDynamicRangeContent(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 6911299)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C060;
      v11 = "memcmp((const char*)bytes + offset, (Cui), sizeof(Cui)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
    if (a3 <= 0xF)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C060;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    *(a1 + 8) = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4ArgumentTable_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C070;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C070;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4ArgumentTable_setAddress_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C080;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C080;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setAddress_attributeStride_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) != 0x6C756C75777543)
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C090;
    v11 = "memcmp((const char*)bytes + offset, (Cuwulul), sizeof(Cuwulul)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  a1[3] = *(a2 + 68);
  if (a4)
  {
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C090;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setResource_atBufferIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0A0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0A0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setSamplerState_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0B0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0B0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4ArgumentTable_setTexture_atIndex(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 1970763075 || *(a2 + 40) != 108)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0C0;
      v12 = "memcmp((const char*)bytes + offset, (Cuwul), sizeof(Cuwul)) == 0";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v9 = *a4;
      v10 = 501;
      v11 = xmmword_24DA8C0C0;
      v12 = "offset <= length";
      v13 = 0;
      GTError_addError(a4, &v9);
    }
  }
}

void DYTraceDecode_MTL4CommandAllocator_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0D0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0D0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandAllocator_reset(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0E0;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0E0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_setLabel(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C0F0;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C0F0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_computeCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C100;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTL4CommandBuffer_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C110;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C110;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_endCommandBuffer(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C120;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C120;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_machineLearningCommandEncoder(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (*(a2 + 48) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 52);
    if (a3 <= 0x17)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C130;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 52);
  }
}

void DYTraceDecode_MTL4CommandBuffer_popDebugGroup(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C140;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C140;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandBuffer_pushDebugGroup(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x5343 | *(a2 + 38))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C150;
    v11 = "memcmp((const char*)bytes + offset, (CS), sizeof(CS)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 40);
  v13 = 12;
  *(a1 + 8) = AppendString_13794((a1 + 8), a2 + 36, &v13);
  if (a4)
  {
    if (((v13 + 3) & 0xFFFFFFFFFFFFFFFCLL) > a3)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C150;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x5543 | *(a2 + 38))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C160;
    v14 = "memcmp((const char*)bytes + offset, (CU), sizeof(CU)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 40);
  v16 = 12;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (a4 && *(v8 + v9) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C160;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 5) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C160;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_renderCommandEncoderWithDescriptor_options(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x6C755543 | *(a2 + 40))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C170;
    v14 = "memcmp((const char*)bytes + offset, (CUul), sizeof(CUul)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C170;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C170;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandBuffer_useResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C180;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C180;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandBuffer_useResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C190;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_addResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C1A0;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C1A0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_addResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1B0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_commit_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1C0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_commit_count_options(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutult", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  a1[3] = *&v7[v10 + 8];
  if (a4)
  {
    if (v10 + 16 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C1D0;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_copyBufferMappingsFromBuffer_toBuffer_operations_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x753E623C55747443 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1E0;
      v14 = "memcmp((const char*)bytes + offset, (CttU<b>ul), sizeof(CttU<b>ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v16 = 36;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1E0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_copyTextureMappingsFromTexture_toTexture_operations_count(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 0x753E623C55747443 || *(a2 + 44) != 108)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1F0;
      v14 = "memcmp((const char*)bytes + offset, (CttU<b>ul), sizeof(CttU<b>ul)) == 0";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }

  *a1 = *(a2 + 48);
  *(a1 + 8) = *(a2 + 56);
  *(a1 + 16) = *(a2 + 64);
  v16 = 36;
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v10 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C1F0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_dealloc(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 67)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C200;
      v11 = "memcmp((const char*)bytes + offset, (C), sizeof(C)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    if (a3 <= 0xB)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C200;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
  }
}

void DYTraceDecode_MTL4CommandQueue_removeResidencySet(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C210;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C210;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_removeResidencySets_count(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  v7 = (a2 + 36);
  v15 = 0;
  sscanf((a2 + 36), "C@%zutul", &v15);
  v8 = strlen(v7);
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 12;
  *a1 = *&v7[(v8 & 0xFFFFFFFFFFFFFFFCLL) + 4];
  a1[1] = &v7[v9];
  v10 = v9 + 8 * v15;
  a1[2] = *&v7[v10];
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11[0] = *a4;
      v11[1] = 501;
      v12 = xmmword_24DA8C220;
      v13 = "offset <= length";
      v14 = 0;
      GTError_addError(a4, v11);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_signalDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C230;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C230;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_signalEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C240;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C240;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4CommandQueue_waitForDrawable(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) ^ 0x7443 | *(a2 + 38))
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C250;
      v11 = "memcmp((const char*)bytes + offset, (Ct), sizeof(Ct)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
    if (a3 <= 0x13)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C250;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[1] = *(a2 + 48);
  }
}

void DYTraceDecode_MTL4CommandQueue_waitForEvent_value(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4 && *(a2 + 36) ^ 0x77757443 | *(a2 + 40))
  {
    v8 = *a4;
    v9 = 501;
    v10 = xmmword_24DA8C260;
    v11 = "memcmp((const char*)bytes + offset, (Ctuw), sizeof(Ctuw)) == 0";
    v12 = 0;
    GTError_addError(a4, &v8);
  }

  *a1 = *(a2 + 44);
  a1[1] = *(a2 + 52);
  a1[2] = *(a2 + 60);
  if (a4)
  {
    if (a3 <= 0x1F)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C260;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C270;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C270;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C270;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 != 0x743E623C555543)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C280;
    v14 = "memcmp((const char*)bytes + offset, (CUU<b>t), sizeof(CUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 44);
  v16 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 32) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C280;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C280;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C290;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C290;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C290;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newComputePipelineStateWithDescriptor_dynamicLinkingDescriptor_compilerTaskOptions_error(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4 && *v8 ^ 0x743E623C55555543 | *(a2 + 44))
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2A0;
    v14 = "memcmp((const char*)bytes + offset, (CUUU<b>t), sizeof(CUUU<b>t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  *a1 = *(a2 + 48);
  v16 = 20;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v16);
  *(a1 + 24) = AppendString_13794((a1 + 24), v8, &v16);
  *(a1 + 32) = AppendString_13794((a1 + 32), v8, &v16);
  v9 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 40) = *(v8 + v9);
  if (a4 && *(v8 + v9 + 8) != 116)
  {
    v11 = *a4;
    v12 = 501;
    v13 = xmmword_24DA8C2A0;
    v14 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v15 = 0;
    GTError_addError(a4, &v11);
  }

  v10 = (v9 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v10);
  if (a4)
  {
    if (v10 + 8 > a3)
    {
      v11 = *a4;
      v12 = 501;
      v13 = xmmword_24DA8C2A0;
      v14 = "offset <= length";
      v15 = 0;
      GTError_addError(a4, &v11);
    }
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibrary_completionHandler(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2B0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibrary_error(void *a1, uint64_t a2, unint64_t a3, int *a4)
{
  if (a4)
  {
    if (*(a2 + 36) != 7631939)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "memcmp((const char*)bytes + offset, (Ctt), sizeof(Ctt)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    if (*(a2 + 64) != 116)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
      v12 = 0;
      GTError_addError(a4, &v8);
    }

    a1[1] = *(a2 + 68);
    if (a3 <= 0x27)
    {
      v8 = *a4;
      v9 = 501;
      v10 = xmmword_24DA8C2C0;
      v11 = "offset <= length";
      v12 = 0;
      GTError_addError(a4, &v8);
    }
  }

  else
  {
    *a1 = *(a2 + 40);
    a1[2] = *(a2 + 48);
    a1[3] = *(a2 + 56);
    a1[1] = *(a2 + 68);
  }
}

void DYTraceDecode_MTL4Compiler_newDynamicLibraryWithURL_completionHandler(uint64_t a1, uint64_t a2, unint64_t a3, int *a4)
{
  v8 = (a2 + 36);
  if (a4)
  {
    if (*v8 != 1648121155 || *(a2 + 39) != 7618146)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2D0;
      v15 = "memcmp((const char*)bytes + offset, (CU<b>t), sizeof(CU<b>t)) == 0";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }

  *a1 = *(a2 + 44);
  v17 = 16;
  *(a1 + 16) = AppendString_13794((a1 + 16), v8, &v17);
  v10 = (v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 24) = *(v8 + v10);
  if (a4 && *(v8 + v10 + 8) != 116)
  {
    v12 = *a4;
    v13 = 501;
    v14 = xmmword_24DA8C2D0;
    v15 = "memcmp((const char*)bytes + offset, (t), sizeof(t)) == 0";
    v16 = 0;
    GTError_addError(a4, &v12);
  }

  v11 = (v10 + 13) & 0xFFFFFFFFFFFFFFFCLL;
  *(a1 + 8) = *(v8 + v11);
  if (a4)
  {
    if (v11 + 8 > a3)
    {
      v12 = *a4;
      v13 = 501;
      v14 = xmmword_24DA8C2D0;
      v15 = "offset <= length";
      v16 = 0;
      GTError_addError(a4, &v12);
    }
  }
}