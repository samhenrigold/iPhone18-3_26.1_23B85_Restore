const __CFDictionary *_C3DFXGLSLProgramGetMaxUniformIndex(const __CFDictionary **cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v13 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v14 = scn_default_log(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  context = 0;
  result = cf[13];
  if (result)
  {
    CFDictionaryApplyFunction(result, _findMax, &context);
    return context;
  }

  return result;
}

void _findMax(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 < a2)
  {
    *a3 = a2;
  }
}

uint64_t C3DVertexAttribFromParameterSemantic(uint64_t a1, uint64_t a2)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }

    return 14;
  }

  if (a1 == 3)
  {
    return 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return 2;
    }

    return 14;
  }

  v3 = a2;
  if (a2 >= 8)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DVertexAttribFromParameterSemantic_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (v3 + 6);
}

id _C3DFXGLSLProgramCFFinalize(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
  }

  return C3DFXProgramCFFinalize(a1);
}

__CFArray *_C3DFXGLSLProgramCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = 2;
  valuePtr = 5;
  Attributes = a1 + 80;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  v7 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v4, @"name", @"vertexShader");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = MEMORY[0x277CBF150];
  v9 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v28 = 2;
  valuePtr = 5;
  Attributes = a1 + 88;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  v12 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v9, @"name", @"fragmentShader");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v8);
  v28 = 1;
  valuePtr = 5;
  Attributes = C3DEntityGetAttributes(a1, v14);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  v17 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v13, @"name", @"attributes");
  CFDictionarySetValue(v13, @"type", v15);
  CFDictionarySetValue(v13, @"address", v17);
  CFDictionarySetValue(v13, @"semantic", v16);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v16);
  CFRelease(v13);
  CFRelease(v17);
  CFRelease(v15);
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = 2;
  valuePtr = 5;
  Attributes = a1 + 96;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  v21 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v18, @"name", @"attributeNamesToIndexes");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = 2;
  valuePtr = 5;
  Attributes = a1 + 104;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v28);
  v25 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v22, @"name", @"uniformNamesToIndexes");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  return Mutable;
}

uint64_t __C3DRendererDelegateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererDelegateGetTypeID_typeID = result;
  return result;
}

uint64_t C3DRendererDelegateCreate(uint64_t a1, char a2, uint64_t a3)
{
  if (C3DRendererDelegateGetTypeID_onceToken != -1)
  {
    C3DRendererDelegateCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererDelegateGetTypeID_typeID, 24);
  v8 = Instance;
  if (!a1)
  {
    v9 = scn_default_log(Instance, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      C3DRendererDelegateCreate_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  *(v8 + 16) = a1;
  *(v8 + 32) = a3;
  *(v8 + 24) = a2;
  return v8;
}

uint64_t C3DRendererDelegateFireWithNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererDelegateFireWithNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return (*(a1 + 16))(a2, a3, *(a1 + 32), a4);
}

void *SCNMTLTextureDescFromMTLTexture@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [a1 width];
  *(a2 + 2) = [a1 height];
  *(a2 + 4) = [a1 depth];
  *(a2 + 6) = [a1 arrayLength];
  *(a2 + 8) = [a1 textureType];
  *(a2 + 9) = [a1 storageMode];
  *(a2 + 10) = [a1 usage];
  *(a2 + 11) = [a1 cpuCacheMode];
  *(a2 + 12) = [a1 pixelFormat];
  v4 = [a1 mipmapLevelCount];
  result = [a1 sampleCount];
  *(a2 + 16) = 0;
  if (result == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *(a2 + 15) = v6;
  if (v4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  *(a2 + 14) = v7;
  return result;
}

void *SCNMTLTextureDescToMTLTextureDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  v3 = v2;
  if (*a1 <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1;
  }

  [v2 setWidth:v4];
  if (a1[1] <= 1u)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1[1];
  }

  [v3 setHeight:v5];
  if (a1[2] <= 1u)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1[2];
  }

  [v3 setDepth:v6];
  if (a1[3] <= 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[3];
  }

  [v3 setArrayLength:v7];
  if (*(a1 + 15) <= 1u)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 15);
  }

  [v3 setSampleCount:v8];
  [v3 setTextureType:*(a1 + 8)];
  [v3 setStorageMode:*(a1 + 9)];
  [v3 setUsage:*(a1 + 10)];
  [v3 setCpuCacheMode:*(a1 + 11)];
  [v3 setPixelFormat:a1[6]];
  if (*(a1 + 14) <= 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 14);
  }

  [v3 setMipmapLevelCount:v9];
  return v3;
}

void SCNMTLTexturePool::~SCNMTLTexturePool(SCNMTLTexturePool *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void sub_21C136C88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SCNMTLTexturePool::allocate(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  v4 = a3;
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (32 * v9)
  {
    v10 = &v7[2 * v9];
    while (1)
    {
      v11 = *a2 == *(v7 + 1) && *(a2 + 1) == *(v7 + 2);
      v12 = v11 && *(a2 + 4) == *(v7 + 6);
      if (v12 && (!a4 || *(v7 + 7) >= 3u))
      {
        break;
      }

      v7 += 2;
      if (v7 == v10)
      {
        goto LABEL_14;
      }
    }

    v15 = *v7;
    *(v7 + 7) = 0;
    v24 = v10 - 2;
    if (v7 != v24)
    {
      v26 = *v7;
      v25 = v7[1];
      v27 = v24[1];
      *v7 = *v24;
      v7[1] = v27;
      *v24 = v26;
      v24[1] = v25;
      LODWORD(v9) = *(a1 + 40);
    }

    *(a1 + 40) = v9 - 1;
  }

  else
  {
LABEL_14:
    if (!a3)
    {
      v34 = *a2;
      v35 = *(a2 + 4);
      v4 = SCNMTLTextureDescToMTLTextureDescriptor(&v34);
    }

    v13 = [*(a1 + 8) newTextureWithDescriptor:{v4, a4}];
    v15 = v13;
    v34 = *a2;
    v35 = *(a2 + 4);
    if (v13)
    {
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      if (v16 >= v17)
      {
        v20 = (v16 - *v8) >> 5;
        v21 = v20 + 1;
        if ((v20 + 1) >> 59)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v22 = v17 - *v8;
        if (v22 >> 4 > v21)
        {
          v21 = v22 >> 4;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFE0)
        {
          v23 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLTexturePool::CachedTexture>>(v8, v23);
        }

        v28 = 32 * v20;
        *v28 = v13;
        *(v28 + 8) = v34;
        *(v28 + 24) = v35;
        *(v28 + 28) = 0;
        v18 = 32 * v20 + 32;
        v29 = *(a1 + 16);
        v30 = *(a1 + 24) - v29;
        v31 = v28 - v30;
        memcpy((v28 - v30), v29, v30);
        v32 = *(a1 + 16);
        *(a1 + 16) = v31;
        *(a1 + 24) = v18;
        *(a1 + 32) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v16 = v13;
        *(v16 + 8) = v34;
        *(v16 + 24) = v35;
        v18 = v16 + 32;
      }

      *(a1 + 24) = v18;
    }

    else
    {
      v19 = scn_default_log(0, v14);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        SCNMTLTexturePool::allocate(v4, v19);
      }
    }
  }

  return v15;
}

MTLTexture *SCNMTLTexturePool::allocateWithStagingBuffer(uint64_t a1, unsigned __int16 *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
    *(a2 + 10) |= 2u;
  }

  *(a2 + 9) = v8;
  v27 = *a2;
  LODWORD(v28) = *(a2 + 4);
  v9 = SCNMTLTexturePool::allocate(a1, &v27, 0, a4);
  v10 = SCNMTLPixelFormatGetBitSize() >> 3;
  v11 = v10 * *a2;
  v12 = v11 * a2[1];
  v13 = [(MTLTexture *)v9 width];
  v14 = [(MTLTexture *)v9 height];
  v15 = [(MTLTexture *)v9 depth];
  if (v4)
  {
    v27 = 0uLL;
    v28 = 0;
    v29 = v13;
    v30 = v14;
    v31 = v15;
    [(MTLTexture *)v9 replaceRegion:&v27 mipmapLevel:0 slice:0 withBytes:*a3 bytesPerRow:v11 bytesPerImage:v12];
    return v9;
  }

  LOWORD(v27) = v10;
  WORD1(v27) = v11;
  DWORD1(v27) = v12;
  if ([(MTLTexture *)v9 pixelFormat]!= 23 && [(MTLTexture *)v9 pixelFormat]!= 63)
  {
    v16 = [(MTLTexture *)v9 pixelFormat];
    if (v16 != 113)
    {
      v18 = scn_default_log(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        SCNMTLTexturePool::allocateWithStagingBuffer(v18, v19, v20);
      }
    }
  }

  v21 = [*(a1 + 8) computePipelineStateForKernel:@"copy_texture_3D_from_buffer_ushort"];
  v22 = [(SCNMTLRenderContext *)*a1 resourceComputeEncoder];
  v23 = [(SCNMTLOpenSubdivComputeEvaluator *)v21 computeEvaluator];
  if (v22->_computePipelineState != v23)
  {
    v22->_computePipelineState = v23;
    [(MTLComputeCommandEncoder *)v22->_encoder setComputePipelineState:v23];
  }

  v25 = a3[1];
  v24 = a3[2];
  if (v22->_buffers[0] != v25)
  {
    v22->_buffers[0] = v25;
LABEL_16:
    v22->_offsets[0] = v24;
    v22->_buffersToBind[0] |= 1uLL;
    goto LABEL_17;
  }

  if (v22->_offsets[0] != v24)
  {
    goto LABEL_16;
  }

LABEL_17:
  SCNMTLComputeCommandEncoder::setBytes(v22, &v27, 8uLL, 1uLL);
  if (v22->_textures[0] != v9)
  {
    v22->_textures[0] = v9;
    v22->_texturesToBind[0] |= 1uLL;
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid3D(v22, [(MTLTexture *)v9 width], [(MTLTexture *)v9 height], [(MTLTexture *)v9 depth]);
  return v9;
}

void SCNMTLTexturePool::free(uint64_t result, uint64_t a2)
{
  v3 = *(result + 24);
  v4 = *(result + 40);
  v5 = (*(result + 16) + 32 * v4);
  if (v3 == v5)
  {
LABEL_5:
    v7 = scn_default_log(result, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SCNMTLTexturePool::free(a2, v7);
    }
  }

  else
  {
    v6 = 0;
    while (*&v5[v6] != a2)
    {
      v6 += 2;
      if (&v5[v6] == v3)
      {
        goto LABEL_5;
      }
    }

    if (v6 * 16)
    {
      v4 = &v5[v6];
      v9 = v5[v6];
      v8 = v5[v6 + 1];
      v10 = v5[1];
      *v4 = *v5;
      *(v4 + 16) = v10;
      *v5 = v9;
      v5[1] = v8;
      LODWORD(v4) = *(result + 40);
    }

    *(result + 40) = v4 + 1;
  }
}

void SCNMTLTexturePool::reset(SCNMTLTexturePool *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 == v2)
  {
    v3 = *(this + 3);
  }

  else
  {
    do
    {
      v4 = *(v3 + 28);
      *(v3 + 28) = v4 + 1;
      if (v4 < 0x65)
      {
        v3 += 32;
      }

      else
      {

        v5 = *(this + 3);
        v6 = v5 - (v3 + 32);
        if (v5 != v3 + 32)
        {
          memmove(v3, (v3 + 32), v5 - (v3 + 32));
        }

        v2 = v3 + v6;
        *(this + 3) = v3 + v6;
      }
    }

    while (v3 != v2);
    v2 = *(this + 2);
  }

  *(this + 10) = (v3 - v2) >> 5;
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOnGrid3D(SCNMTLComputeCommandEncoder *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!this->_computePipelineState)
  {
    v8 = scn_default_log(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::dispatchOnGrid3D(v8, a2, v9);
    }
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this, a2);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this, v10);
  v11 = [(MTLComputePipelineState *)this->_computePipelineState threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup];
  if ((this->_features & 0x40) != 0)
  {
    encoder = this->_encoder;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v19 = v11;
    v20 = v12 / v11;
    v21 = 1;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreads:&v22 threadsPerThreadgroup:&v19];
  }

  else
  {
    if (v11 >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v11;
    }

    if (v11 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v11;
    }

    if (v11 >= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = v11;
    }

    while (v14 * v15 * v13 > v12)
    {
      if (v13 <= v14 || v13 <= v15)
      {
        if (v14 > v15)
        {
          v14 >>= 1;
        }

        else
        {
          v15 >>= 1;
        }
      }

      else
      {
        v13 >>= 1;
      }
    }

    v16 = this->_encoder;
    v22 = (a2 + v13 - 1) / v13;
    v23 = (a3 + v14 - 1) / v14;
    v24 = (a4 + v15 - 1) / v15;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    return [(MTLComputeCommandEncoder *)v16 dispatchThreadgroups:&v22 threadsPerThreadgroup:&v19];
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLTexturePool::CachedTexture>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void __AddTextureProperty(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  DefineForPropertyAndSuffix = __GetDefineForPropertyAndSuffix(a3, 0);
  v9 = __GetDefineForPropertyAndSuffix(a3, 1);
  v10 = __GetDefineForPropertyAndSuffix(a3, 5);
  *(a1 + 56) = 0;
  if (a4 && C3DProgramHashCodeGetEffectPropertyIsEnabled(*(a1 + 48), v6))
  {
    if (!CFDictionaryContainsKey(*a1, v9))
    {
      CFDictionaryAddValue(*a1, v9, @"1");
    }

    if (!C3DProgramHashCodeGetEffectPropertyHasTexture(*(a1 + 48), v6))
    {
      v13 = 2;
      goto LABEL_12;
    }

    if (C3DProgramHashCodeGetEffectPropertyTextureType(*(a1 + 48), v6) == 4)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }

    v12 = __GetDefineForPropertyAndSuffix(a3, v11);
    *(a1 + 56) = 1;
    CFDictionaryAddValue(*a1, v12, &stru_282DCC058);
    CFDictionaryAddValue(*a1, v10, &stru_282DCC058);
    if ((C3DProgramHashCodeGetEffectPropertyHashCode(*(a1 + 48), v6) & 0x2000) != 0)
    {
      v13 = 3;
LABEL_12:
      v14 = *a1;
      v15 = __GetDefineForPropertyAndSuffix(a3, v13);
      CFDictionaryAddValue(v14, v15, &stru_282DCC058);
    }
  }

  if (a3 != 7 && CFDictionaryGetCountOfKey(*a1, v9))
  {
    CFStringAppendFormat(*(a1 + 8), 0, @"  vec4 %@;\n", DefineForPropertyAndSuffix);
  }

  if (CFDictionaryGetCountOfKey(*a1, v10))
  {
    CFStringAppendFormat(*(a1 + 8), 0, @"    vec2 %@Texcoord;\n", DefineForPropertyAndSuffix);
    v16 = (C3DProgramHashCodeGetEffectPropertyHashCode(*(a1 + 48), v6) >> 18) & 0xF;
    if (v16 != 15)
    {
      CFStringAppendFormat(*(a1 + 40), 0, @"    _surface.%@Texcoord = v_texcoord%d;\n", DefineForPropertyAndSuffix, v16);
    }
  }
}

void __ReplaceCodeWithModifiers(uint64_t *a1, uint64_t a2, __CFString *a3, __CFString *a4, void *a5, void *a6, const __CFString *a7)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a2 >= 1)
  {
    do
    {
      v16 = *a1;
      Declaration = C3DShaderModifierGetDeclaration(*a1, v14);
      if (Declaration)
      {
        CFStringAppend(a4, Declaration);
      }

      Code = C3DShaderModifierGetCode(v16, v18);
      if (Code)
      {
        CFStringAppend(Mutable, Code);
      }

      else
      {
        v22 = scn_default_log(0, v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __ReplaceCodeWithModifiers_cold_1(&v26, v27, v22);
        }
      }

      Defines = C3DShaderModifierGetDefines(v16, v21);
      if (Defines)
      {
        CFDictionaryApplyFunction(Defines, __appendDictionary_0, a5);
      }

      StandardUniformsUsed = C3DShaderModifierGetStandardUniformsUsed(v16, v24);
      if (StandardUniformsUsed)
      {
        CFDictionaryApplyFunction(StandardUniformsUsed, __appendDictionary_0, a6);
      }

      ++a1;
      --a2;
    }

    while (a2);
  }

  v28 = CFStringFind(a3, a7, 0);
  CFStringReplace(a3, v28, Mutable);
  CFRelease(Mutable);
}

uint64_t C3DFXTechniqueCreateDepthOfField()
{
  v0 = C3DDictionaryNamed(@"C3DFXDOFPass_deprecated.plist");
  v1 = C3DFXTechniqueCreateWithDescription(v0, 0);
  PassNamed = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_downSample4x");
  C3DFXPassSetWillExecuteCallback(PassNamed, _willExecuteDof);
  v3 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_DOF_blurCoc_H");
  C3DFXPassSetup2PassesBlurCallbacks(v3, 1);
  v4 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_DOF_blurCoc_V");
  C3DFXPassSetup2PassesBlurCallbacks(v4, 0);
  v5 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_blurColor4x_H");
  C3DFXPassSetup2PassesBlurCallbacks(v5, 1);
  v6 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_blurColor4x_V");
  C3DFXPassSetup2PassesBlurCallbacks(v6, 0);
  return v1;
}

void _willExecuteDof(uint64_t a1)
{
  v41 = 0.0;
  v40 = 0;
  Viewport = C3DEngineContextGetViewport(*(a1 + 24));
  __asm { FMOV            V1.2S, #1.0 }

  v39 = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
  v8 = *(a1 + 24);
  PointOfView = C3DEngineContextGetPointOfView(v8, v9);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v11);
    if (Camera)
    {
      v14 = Camera;
      FXContext = C3DEngineContextGetFXContext(v8, v13);
      MainPassInstance = C3DFXContextGetMainPassInstance(FXContext);
      v17 = *(MainPassInstance + 4824);
      v18 = *(MainPassInstance + 4832);
      FocusDistance = C3DCameraGetFocusDistance(v14, v19);
      v22 = 1.0;
      if (FocusDistance >= 1.0)
      {
        v22 = FocusDistance;
      }

      v23 = 10.0 / v22;
      v25 = (FocusDistance + 0.1) * (C3DCameraGetAperture(v14, v20) * v23);
      v26 = v17 * (FocusDistance - (FocusDistance + 0.1));
      *&v27 = (v18 - v17) * (FocusDistance * v25) / (v18 * v26);
      v28 = (v17 - FocusDistance) * v25 / v26;
      *(&v27 + 1) = v28;
      v41 = 1.0 - v28;
      v40 = v27;
    }

    else
    {
      v30 = scn_default_log(0, v13);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        _willExecuteDof_cold_1(v30);
      }
    }
  }

  else
  {
    v29 = scn_default_log(0, v11);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      _willExecuteDof_cold_2(v29);
    }
  }

  v37 = xmmword_21C2A28D0;
  v38 = xmmword_21C2A28C0;
  v31 = C3DEngineContextGetPointOfView(*(a1 + 24), v24);
  v33 = 0.0;
  if (v31)
  {
    v34 = C3DNodeGetCamera(v31, v32);
    if (v34)
    {
      v33 = C3DCameraGetDepthOfFieldIntensity(v34, v35) * 0.25;
    }
  }

  v36 = v33;
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-blur-radiusV", &v36);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-blur-radiusH", &v36);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-lerpBias", &v37);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-lerpScale", &v38);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-cocScaleBias", &v40);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-invertPixelSize", &v39);
}

void *_C3DCreateProgressWithUnits(int a1)
{
  if (![MEMORY[0x277CCAC48] currentProgress])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:a1];
  if (v2)
  {
    [v2 addObserver:objc_opt_class() forKeyPath:@"fractionCompleted" options:1 context:0];
  }

  return v2;
}

uint64_t C3DExecuteProgressBlocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31[256] = *MEMORY[0x277D85DE8];
  v26 = &a9;
  if (a1)
  {
    v9 = 0;
    do
    {
      v31[v9++] = a1;
      v10 = v26++;
      a1 = *v10;
    }

    while (*v10);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v11 = _C3DCreateProgressWithUnits(v9);
  if (!v9)
  {
    return 1;
  }

  v12 = v11;
  v13 = v31;
  v14 = 1;
  v15 = v9;
  do
  {
    [v12 becomeCurrentWithPendingUnitCount:1];
    v16 = (*(*v13 + 16))();
    if (v12)
    {
      v17 = [MEMORY[0x277CCAC48] currentProgress];
      if (v12 != v17)
      {
        v19 = scn_default_log(v17, v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          C3DExecuteProgressBlocks_cold_1(buf, &v30, v19);
        }
      }
    }

    [v12 resignCurrent];
    v20 = [v12 fractionCompleted];
    if (v22 > 1.0)
    {
      v23 = scn_default_log(v20, v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteProgressBlocks_cold_2(v27, &v28, v23);
      }
    }

    if (v14 < v15)
    {
      v24 = v16;
    }

    else
    {
      v24 = 0;
    }

    ++v13;
    ++v14;
  }

  while ((v24 & 1) != 0);
  return v16;
}

uint64_t C3DExecuteIncrementalProgressBlock(int a1, uint64_t a2)
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v4 = _C3DCreateProgressWithUnits(a1);
  [v4 becomeCurrentWithPendingUnitCount:1];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __C3DExecuteIncrementalProgressBlock_block_invoke;
  v28[3] = &unk_278300340;
  v28[4] = v4;
  v28[5] = &v30;
  v29 = a1;
  v5 = (*(a2 + 16))(a2, v28);
  if (*(v31 + 6) < a1)
  {
    if (v4)
    {
      v6 = [MEMORY[0x277CCAC48] currentProgress];
      if (v4 != v6)
      {
        v8 = scn_default_log(v6, v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          C3DExecuteIncrementalProgressBlock_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
        }
      }
    }

    [v4 resignCurrent];
    v16 = [v4 fractionCompleted];
    if (v18 > 1.0)
    {
      v19 = scn_default_log(v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteIncrementalProgressBlock_cold_2(v19, v20, v21, v22, v23, v24, v25, v26);
        if (!v4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  if (v4)
  {
LABEL_9:
    [v4 removeObserver:objc_opt_class() forKeyPath:@"fractionCompleted" context:0];
  }

LABEL_10:
  _Block_object_dispose(&v30, 8);
  return v5;
}

void sub_21C139B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __C3DExecuteIncrementalProgressBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC48] currentProgress];
    if (v2 != v3)
    {
      v5 = scn_default_log(v3, v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteIncrementalProgressBlock_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }

  [*(a1 + 32) resignCurrent];
  v13 = [*(a1 + 32) fractionCompleted];
  if (v15 > 1.0)
  {
    v16 = scn_default_log(v13, v14);
    v13 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
    if (v13)
    {
      C3DExecuteIncrementalProgressBlock_cold_2(v16, v14, v17, v18, v19, v20, v21, v22);
    }
  }

  if (++*(*(*(a1 + 40) + 8) + 24) > *(a1 + 48))
  {
    v23 = scn_default_log(v13, v14);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __C3DExecuteIncrementalProgressBlock_block_invoke_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) < *(a1 + 48))
  {
    [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  }
}

uint64_t __structMemberSize(MTLStructMember *a1)
{
  for (i = 0; ; i += [(MTLStructMember *)a1 offset])
  {
    v3 = [(MTLStructMember *)a1 dataType];
    if (v3 != MTLDataTypeStruct)
    {
      break;
    }

    a1 = [(NSArray *)[(MTLStructType *)[(MTLStructMember *)a1 structType] members] lastObject];
  }

  if (v3 == MTLDataTypeArray)
  {
    v4 = [(MTLStructMember *)a1 arrayType];
    v5 = [(MTLArrayType *)v4 arrayLength];
    Size = SCNMTLDataTypeGetSize([(MTLArrayType *)v4 elementType]) * v5;
  }

  else
  {
    Size = SCNMTLDataTypeGetSize(v3);
  }

  return (Size + i);
}

void sub_21C13A9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C13B4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *std::vector<SCNSemanticBinding>::emplace_back<SCNSemanticBinding const&>(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SCNSemanticBinding>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return (v6 - 16);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNSemanticBinding>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNPassInputBinding>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void OUTLINED_FUNCTION_1_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void OUTLINED_FUNCTION_2_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x18u);
}

uint64_t _C3DNotificationCenterCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  return pthread_mutex_destroy((a1 + 24));
}

void C3DNotificationCenterRemoveObserver(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
}

void *_createSCNGeometryArrayFromC3DGeometryArray(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        ObjCWrapper = C3DEntityGetObjCWrapper(v7);
        if (ObjCWrapper)
        {
          [v2 addObject:ObjCWrapper];
        }

        else
        {
          v9 = [[SCNGeometry alloc] initWithGeometryRef:v7];
          [v2 addObject:v9];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v2;
}

void *_createSCNGeometrySubArrayFromC3DGeometryArray(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 + a3;
  v7 = [a1 count];
  if (v6 > v7)
  {
    v9 = scn_default_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _createSCNGeometrySubArrayFromC3DGeometryArray_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  if (v4 < v6)
  {
    do
    {
      v18 = [a1 objectAtIndexedSubscript:v4];
      ObjCWrapper = C3DEntityGetObjCWrapper(v18);
      if (ObjCWrapper)
      {
        [v17 addObject:ObjCWrapper];
      }

      else
      {
        v20 = [[SCNGeometry alloc] initWithGeometryRef:v18];
        [v17 addObject:v20];
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return v17;
}

void *_createC3DGeometryArrayFromSCNGeometryArray(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "geometryRef")}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

id *_block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  result = C3DEntityGetObjCWrapper(a3);
  if (result)
  {
    v6 = result;
    v7 = [SCNGeometrySource geometrySourceWithMeshSourceRef:a4];
    v8 = [v6 _encodeDataAsHalf];

    return [(SCNGeometrySource *)v7 set_encodeDataAsHalf:v8];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [a17 countByEnumeratingWithState:&a33 objects:&a65 count:{16, a6, a7, a8}];
}

void _C3DProgramHashCodeCFFinalize(uint64_t a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationProgramHashCodeWillDie", a1, 0, 0);
  v4 = CFDictionaryContainsKey(s_ProgramHashCodeDictionary, *(a1 + 280));
  if (!v4)
  {
    v6 = scn_default_log(v4, v5);
    v4 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (v4)
    {
      _C3DProgramHashCodeCFFinalize_cold_1(v6, v5, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(a1 + 280))
  {
    v13 = scn_default_log(v4, v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      _C3DProgramHashCodeCFFinalize_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  CFDictionaryRemoveValue(s_ProgramHashCodeDictionary, *(a1 + 280));
  v21 = *(a1 + 280);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 280) = 0;
  }

  v22 = 0;
  v23 = a1 + 16;
  v24 = 1;
  do
  {
    v25 = v24;
    v26 = *(v23 + 8 * v22);
    if (v26)
    {
      CFRelease(v26);
      *(v23 + 8 * v22) = 0;
    }

    v24 = 0;
    v22 = 1;
  }

  while ((v25 & 1) != 0);
  v27 = *(a1 + 162);
  if (*(a1 + 162))
  {
    v28 = 0;
    v29 = a1 + 216;
    do
    {
      v30 = *(v29 + 8 * v28);
      if (v30)
      {
        CFRelease(v30);
        *(v29 + 8 * v28) = 0;
        v27 = *(a1 + 162);
      }

      ++v28;
    }

    while (v28 < v27);
  }
}

__CFString *_C3DProgramHashCodeCFCopyDebugDescription(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DProgramHashCode %p : ", a1);
  v4 = (a1 + 16);
  if (*(a1 + 16))
  {
    CFStringAppend(Mutable, @"SM_Mat,");
  }

  if (*(a1 + 24))
  {
    CFStringAppend(Mutable, @"SM_Geo,");
  }

  if (*v4 || *(a1 + 24))
  {
    alloc = v2;
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v5 = 0;
    v6 = MEMORY[0x277D85DD0];
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = v4[v5];
      do
      {
        v45[0] = v6;
        v45[1] = 3221225472;
        v45[2] = ____createShaderModifierHashCode_block_invoke;
        v45[3] = &__block_descriptor_44_e13_v24__0q8r_v16l;
        v46 = v8;
        v45[4] = &c;
        C3DCFArrayApplyBlock(v10, v45);
        ++v8;
      }

      while (v8 != 4);
      v7 = 0;
      v5 = 1;
    }

    while ((v9 & 1) != 0);
    for (i = 0; i != 64; i += 8)
    {
      v12 = *(a1 + 216 + i);
      if (v12)
      {
        CFStringUpdateHash(v12);
      }
    }

    data = 2;
    CC_SHA256_Update(&c, &data, 4u);
    CC_SHA256_Final(md, &c);
    v13 = 0;
    v14 = cStr;
    v15.i64[0] = 0xA0A0A0A0A0A0A0A0;
    v15.i64[1] = 0xA0A0A0A0A0A0A0A0;
    v16.i64[0] = 0x3737373737373737;
    v16.i64[1] = 0x3737373737373737;
    v17.i64[0] = 0x3030303030303030;
    v17.i64[1] = 0x3030303030303030;
    v18.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v18.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v19.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v19.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    do
    {
      v20 = *&md[v13];
      v21.i64[0] = 0x3737373737373737;
      v21.i64[1] = 0x3737373737373737;
      v22.i64[0] = 0x3030303030303030;
      v22.i64[1] = 0x3030303030303030;
      v51.val[0] = vbslq_s8(vcgtq_u8(v15, v20), vsraq_n_u8(v22, v20, 4uLL), vsraq_n_u8(v21, v20, 4uLL));
      v23 = vandq_s8(v20, v18);
      v51.val[1] = vbslq_s8(vcgtq_u8(v19, v23), vorrq_s8(v23, v17), vaddq_s8(v23, v16));
      vst2q_s8(v14, v51);
      v14 += 32;
      v13 += 16;
    }

    while (v13 != 32);
    cStr[64] = 0;
    v24 = CFStringCreateWithCString(alloc, cStr, 0x600u);
    CFStringAppendFormat(Mutable, 0, @"SM(%@),", v24);
    CFRelease(v24);
  }

  v25 = *(a1 + 200);
  if (v25)
  {
    CFStringAppend(Mutable, @"Aone,");
    v25 = *(a1 + 200);
    if ((v25 & 2) == 0)
    {
LABEL_20:
      if ((v25 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }
  }

  else if ((v25 & 2) == 0)
  {
    goto LABEL_20;
  }

  CFStringAppend(Mutable, @"Acst,");
  v25 = *(a1 + 200);
  if ((v25 & 4) == 0)
  {
LABEL_21:
    if ((v25 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  CFStringAppend(Mutable, @"opq,");
  v25 = *(a1 + 200);
  if ((v25 & 0x10) == 0)
  {
LABEL_22:
    if ((v25 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  CFStringAppend(Mutable, @"tgt,");
  v25 = *(a1 + 200);
  if ((v25 & 0x20) == 0)
  {
LABEL_23:
    if ((v25 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  CFStringAppend(Mutable, @"lgh,");
  v25 = *(a1 + 200);
  if ((v25 & 0x40) == 0)
  {
LABEL_24:
    if ((v25 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  CFStringAppend(Mutable, @"amb,");
  v25 = *(a1 + 200);
  if ((v25 & 0x400) == 0)
  {
LABEL_25:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  CFStringAppend(Mutable, @"prob,");
  v25 = *(a1 + 200);
  if ((v25 & 0x80) == 0)
  {
LABEL_26:
    if ((v25 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  CFStringAppend(Mutable, @"fog,");
  v25 = *(a1 + 200);
  if ((v25 & 0x100) == 0)
  {
LABEL_27:
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_52:
  CFStringAppend(Mutable, @"dynB,");
  if ((*(a1 + 200) & 0x200) != 0)
  {
LABEL_28:
    CFStringAppend(Mutable, @"pntR,");
  }

LABEL_29:
  CFStringAppendFormat(Mutable, 0, @"[%@:", _C3DProgramHashCodeCFCopyDebugDescription_modelNames[*(a1 + 120) & 0xF]);
  v26 = *(a1 + 120);
  if ((v26 & 0x10) != 0)
  {
    CFStringAppend(Mutable, @"PerPix|");
    v26 = *(a1 + 120);
    if ((v26 & 0x20) == 0)
    {
LABEL_31:
      if ((v26 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    }
  }

  else if ((v26 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  CFStringAppend(Mutable, @"Double|");
  v26 = *(a1 + 120);
  if ((v26 & 0x40) == 0)
  {
LABEL_32:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_57;
  }

LABEL_56:
  CFStringAppend(Mutable, @"OverLght|");
  v26 = *(a1 + 120);
  if ((v26 & 0x80) == 0)
  {
LABEL_33:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_57:
  CFStringAppend(Mutable, @"WrNrm|");
  v26 = *(a1 + 120);
  if ((v26 & 0x100) == 0)
  {
LABEL_34:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  CFStringAppend(Mutable, @"Nrmliz|");
  v26 = *(a1 + 120);
  if ((v26 & 0x200) == 0)
  {
LABEL_35:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    CFStringAppend(Mutable, @"LinDepth|");
    v26 = *(a1 + 120);
    if ((v26 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_59:
  CFStringAppend(Mutable, @"WriteDepth|");
  v26 = *(a1 + 120);
  if ((v26 & 0x400) != 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  if ((v26 & 0x8000) == 0)
  {
    goto LABEL_37;
  }

LABEL_61:
  CFStringAppend(Mutable, @"LockAmb|");
  v26 = *(a1 + 120);
LABEL_37:
  v27 = (v26 >> 11) & 0xF;
  if (v27 <= 3)
  {
    CFStringAppend(Mutable, off_278300558[v27]);
  }

  CFStringAppend(Mutable, @"]");
  CFStringAppend(Mutable, @"[Node:");
  v28 = *(a1 + 124);
  if (v28 >> 28)
  {
    CFStringAppendFormat(Mutable, 0, @"skn(%d)|", v28 >> 28);
    v28 = *(a1 + 124);
    if ((v28 & 1) == 0)
    {
LABEL_41:
      if ((v28 & 2) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }
  }

  else if ((v28 & 1) == 0)
  {
    goto LABEL_41;
  }

  CFStringAppend(Mutable, @"LightMap|");
  v28 = *(a1 + 124);
  if ((v28 & 2) == 0)
  {
LABEL_42:
    if ((v28 & 4) == 0)
    {
      goto LABEL_76;
    }

LABEL_65:
    CFStringAppend(Mutable, @"Tess|");
    v29 = *(a1 + 124);
    if ((v29 & 8) != 0)
    {
      v30 = @"PNTriangles|";
    }

    else
    {
      if ((v29 & 0x10) == 0)
      {
        goto LABEL_70;
      }

      v30 = @"Phong|";
    }

    CFStringAppend(Mutable, v30);
LABEL_70:
    v28 = *(a1 + 124);
    if ((v28 & 0x20) != 0)
    {
      CFStringAppend(Mutable, @"OSD|");
      v31 = *(a1 + 124);
      if ((v31 & 0x40) != 0)
      {
        CFStringAppend(Mutable, @"SingleCrease|");
        v31 = *(a1 + 124);
      }

      if ((v31 & 0x80) != 0)
      {
        CFStringAppend(Mutable, @"ScreenSpace|");
        v31 = *(a1 + 124);
      }

      CFStringAppendFormat(Mutable, 0, @"PrimvarData=%d|", (v31 >> 8) & 0x7FFFF);
      v28 = *(a1 + 124);
    }

    goto LABEL_76;
  }

LABEL_64:
  CFStringAppend(Mutable, @"VrtCol|");
  v28 = *(a1 + 124);
  if ((v28 & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_76:
  if ((v28 & 0x8000000) != 0)
  {
    CFStringAppend(Mutable, @"Bézier|");
  }

  CFStringAppend(Mutable, @"]");
  for (j = 0; j != 21; ++j)
  {
    v33 = *(a1 + 36 + 4 * j);
    if ((v33 & 0x800) == 0)
    {
      continue;
    }

    CFStringAppendFormat(Mutable, 0, @"[%@:", _C3DProgramHashCodeCFCopyDebugDescription_propertyNames[j]);
    if (v33)
    {
      CFStringAppend(Mutable, @"Tex|");
      if ((v33 & 2) == 0)
      {
LABEL_82:
        if ((v33 & 4) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_99;
      }
    }

    else if ((v33 & 2) == 0)
    {
      goto LABEL_82;
    }

    CFStringAppend(Mutable, @"rgb0|");
    if ((v33 & 4) == 0)
    {
LABEL_83:
      if ((v33 & 8) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }

LABEL_99:
    CFStringAppend(Mutable, @"rgb1|");
    if ((v33 & 8) == 0)
    {
LABEL_84:
      if ((v33 & 0x10) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_101;
    }

LABEL_100:
    CFStringAppend(Mutable, @"a1|");
    if ((v33 & 0x10) == 0)
    {
LABEL_85:
      if ((v33 & 0x20) != 0)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

LABEL_101:
    CFStringAppend(Mutable, @"flt0|");
    if ((v33 & 0x20) != 0)
    {
LABEL_102:
      CFStringAppend(Mutable, @"texA|");
      if ((v33 & 0x2000) == 0)
      {
        goto LABEL_88;
      }

LABEL_87:
      CFStringAppend(Mutable, @"int|");
      goto LABEL_88;
    }

LABEL_86:
    if ((v33 & 0x2000) != 0)
    {
      goto LABEL_87;
    }

LABEL_88:
    if ((v33 & 0x1C000) != 0)
    {
      CFStringAppend(Mutable, @"comp|");
    }

    if ((v33 & 0x1000) != 0)
    {
      CFStringAppend(Mutable, @"mat|");
    }

    v34 = ((v33 >> 6) & 0xF) - 1;
    if (v34 <= 3)
    {
      CFStringAppend(Mutable, off_278300578[v34]);
    }

    CFStringAppend(Mutable, @"]");
  }

  if (*(a1 + 160))
  {
    CFStringAppend(Mutable, @"[Lighting:");
    if (*(a1 + 160))
    {
      for (k = 0; k < *(a1 + 160); ++k)
      {
        if (k)
        {
          CFStringAppend(Mutable, @",");
        }

        v36 = *(a1 + 128 + 4 * k);
        v37 = v36 & 7;
        if (v37 > 3)
        {
          if ((v36 & 7) > 5)
          {
            if (v37 != 6)
            {
              if ((v36 & 0x200) == 0)
              {
                goto LABEL_120;
              }

              goto LABEL_148;
            }

            v38 = @"R";
          }

          else if (v37 == 4)
          {
            v38 = @"P";
          }

          else
          {
            v38 = @"I";
          }
        }

        else if ((v36 & 7) > 1)
        {
          if (v37 == 2)
          {
            v38 = @"O";
          }

          else
          {
            v38 = @"S";
          }
        }

        else
        {
          v38 = @"A";
          if ((v36 & 7) != 0)
          {
            v38 = @"D";
          }
        }

        CFStringAppend(Mutable, v38);
        if ((v36 & 0x200) == 0)
        {
LABEL_120:
          if ((v36 & 0x400) == 0)
          {
            goto LABEL_122;
          }

LABEL_121:
          CFStringAppend(Mutable, @"s");
          goto LABEL_122;
        }

LABEL_148:
        CFStringAppend(Mutable, @"g");
        if ((v36 & 0x400) != 0)
        {
          goto LABEL_121;
        }

LABEL_122:
        if ((HIWORD(v36) & 0x1F) >= 2u)
        {
          CFStringAppendFormat(Mutable, 0, @"Soft(%d)", HIWORD(v36) & 0x1F);
          if ((v36 & 0x800) == 0)
          {
LABEL_124:
            if ((v36 & 0x1000) == 0)
            {
              goto LABEL_126;
            }

LABEL_125:
            CFStringAppend(Mutable, @"m");
            goto LABEL_126;
          }
        }

        else if ((v36 & 0x800) == 0)
        {
          goto LABEL_124;
        }

        CFStringAppend(Mutable, @"c");
        if ((v36 & 0x1000) != 0)
        {
          goto LABEL_125;
        }

LABEL_126:
        v39 = (v36 >> 3) & 7;
        if (v39 > 1)
        {
          switch(v39)
          {
            case 4u:
              v40 = @"(e)";
              break;
            case 3u:
              v40 = @"(q)";
              break;
            case 2u:
              v40 = @"(l)";
              break;
            default:
              v40 = @"(?)";
              break;
          }

          goto LABEL_139;
        }

        if (v39)
        {
          v40 = @"(c)";
LABEL_139:
          CFStringAppend(Mutable, v40);
        }

        v41 = ((v36 >> 6) & 7) - 1;
        if (v41 <= 3)
        {
          CFStringAppend(Mutable, off_278300598[v41]);
        }
      }
    }

    CFStringAppend(Mutable, @"]");
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t __C3DProgramHashCodeGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DProgramHashCodeGetTypeID_typeID = result;
  return result;
}

uint64_t __UpdateHashCodeWithTextureType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  v12 = C3DEffectCommonProfileContainsContentForEffectProperty(a3, a4);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(a3, a4, 0);
  HasInterpolationModesPerKey = 0;
  if (a4 != 4 && EffectSlot)
  {
    HasInterpolationModesPerKey = C3DKeyframeControllerHasInterpolationModesPerKey(EffectSlot);
  }

  if (!a3 || a4 == 4)
  {
    v17 = a5 & 0xFFFFFFFE | v12;
    if (!v12)
    {
      return v17;
    }
  }

  else
  {
    UVSet = C3DEffectCommonProfileGetUVSet(a3, a4);
    if (UVSet == -1)
    {
      UVSet = C3DMaterialDefaultUVSetForProperty(a4);
    }

    if (((UVSet != -1) & v12) == 1)
    {
      if (C3DMeshGetSourceWithSemanticAtIndex(a2, 3, UVSet, 0))
      {
        v16 = 1;
        goto LABEL_18;
      }

LABEL_15:
      if (UVSet == -1 || (a6 & 1) == 0)
      {
        return a5 & 0xFFC3FFFE | ((UVSet & 0xF) << 18);
      }

      v16 = 0;
LABEL_18:
      v17 = a5 & 0xFFC3FFFE | v16 & 0xFFC3FFFF | ((__UpdateHashCodeUVSetForEffectProperty(a1, UVSet, HasInterpolationModesPerKey, a4) & 0xF) << 18);
      if ((v16 & 1) == 0)
      {
        return v17;
      }

      goto LABEL_19;
    }

    if (((UVSet == -1) & v12) != 1)
    {
      goto LABEL_15;
    }

    LODWORD(v17) = a5 | 0x3C0001;
  }

LABEL_19:
  v34 = 0;
  v33 = 0;
  v32 = 1;
  TextureInfo = C3DEffectCommonProfileGetEffectSlot(a3, a4, 0);
  if (!TextureInfo || (TextureInfo = C3DEffectSlotGetTextureInfo(TextureInfo, &v34, &v33, &v32), (v20 = v34) == 0))
  {
    v20 = 2;
    v34 = 2;
  }

  v21 = v17 & 0xFFFFE81F | (32 * v33) | (v32 << 10);
  if (HasInterpolationModesPerKey)
  {
    v22 = 4096;
  }

  else
  {
    v22 = 0;
  }

  if (v20 >= 7)
  {
    v23 = scn_default_log(TextureInfo, v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      __UpdateHashCodeWithTextureType_cold_1(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  return v21 | v22 | (v34 << 6);
}

uint64_t __UpdateHashCodeUVSetForEffectProperty(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = *(a1 + 163);
  if (a3)
  {
LABEL_7:
    LODWORD(v5) = *(a1 + 163);
LABEL_8:
    v7 = (a1 + 164 + 2 * *(a1 + 163));
    *v7 = a2;
    if (!a3)
    {
      a4 = -1;
    }

    v7[1] = a4;
    *(a1 + 163) = v4 + 1;
    return v5;
  }

  if (*(a1 + 163))
  {
    v5 = 0;
    v6 = (a1 + 165);
    while (*(v6 - 1) != a2 || *v6 != 255)
    {
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_7;
      }
    }

    v10 = *(a1 + 163);
  }

  else
  {
    v10 = 0;
    LODWORD(v5) = 0;
  }

  if (v5 == v10)
  {
    goto LABEL_8;
  }

  return v5;
}

uint64_t __UpdateShaderModifiersInProgramHashCode(uint64_t a1, uint64_t a2, int a3, _WORD *a4, _WORD *a5)
{
  ShaderModifiers = C3DEntityGetShaderModifiers(a2, a2);
  v11 = a1 + 16;
  v12 = *(a1 + 16 + 8 * a3);
  if (!(ShaderModifiers | v12))
  {
    goto LABEL_25;
  }

  v13 = ShaderModifiers;
  if (ShaderModifiers)
  {
    if (v12 && CFEqual(ShaderModifiers, v12))
    {
      goto LABEL_25;
    }
  }

  Count = CFArrayGetCount(v13);
  if (v13)
  {
    v15 = Count;
    if (Count)
    {
      Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v13);
      v17 = *(v11 + 8 * a3);
      if (v17 != Copy)
      {
        if (v17)
        {
          CFRelease(v17);
          *(v11 + 8 * a3) = 0;
        }

        if (Copy)
        {
          v18 = CFRetain(Copy);
        }

        else
        {
          v18 = 0;
        }

        *(v11 + 8 * a3) = v18;
      }

      CFRelease(Copy);
      ShadableMinimumMTLLanguageVersion = C3DEntityGetShadableMinimumMTLLanguageVersion(a2, v21);
      if (ShadableMinimumMTLLanguageVersion)
      {
        valuePtr = 0;
        CFNumberGetValue(ShadableMinimumMTLLanguageVersion, kCFNumberNSIntegerType, &valuePtr);
        v23 = *(a1 + 32);
        if (valuePtr > v23)
        {
          LODWORD(v23) = valuePtr;
        }

        *(a1 + 32) = v23;
      }

      if (v15 >= 1)
      {
        v24 = 0;
        v20 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v24);
          v20 |= C3DShaderModifierGetFlags(ValueAtIndex, v26);
          *a4 |= C3DShaderModifierGetEffectPropertyMaskForTexcoordsUse(ValueAtIndex, v27);
          *a5 |= C3DShaderModifierGetMappingChannelyMaskForTexcoordsUse(ValueAtIndex, v28);
          ++v24;
        }

        while (v15 != v24);
        return v20;
      }

LABEL_25:
      LOWORD(v20) = 0;
      return v20;
    }
  }

  v19 = *(v11 + 8 * a3);
  if (v19)
  {
    CFRelease(v19);
    *(v11 + 8 * a3) = 0;
  }

  LOWORD(v20) = 0;
  *(a1 + 32) = 0;
  return v20;
}

uint64_t C3DProgramHashCodeGetUVSetInfo(uint64_t a1, uint64_t a2)
{
  if (a2 >= 16)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DProgramHashCodeGetUVSetInfo_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 2 * a2 + 164);
}

__CFString *C3DProgramHashCodeGetCustomSlotSortedName(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 162) > a2)
  {
    return *(a1 + 8 * a2 + 216);
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DProgramHashCodeGetCustomSlotSortedName_cold_1(v3);
  }

  return @"unknown";
}

uint64_t C3DProgramHashCodeGetCustomSlotUVSet(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 162) > a2)
  {
    return *(a1 + a2 + 203);
  }

  v3 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    C3DProgramHashCodeGetCustomSlotSortedName_cold_1(v3);
  }

  return -1;
}

uint64_t __dispatchShaderModifiers(uint64_t a1, uint64_t a2)
{
  result = C3DShaderModifierGetEntryPoint(a1, a2);
  if (result == *(a2 + 24))
  {
    result = C3DShaderModifierGetLanguage(a1, v5);
    if (result == *(a2 + 28))
    {
      if (*a2)
      {
        v6 = *(a2 + 16);
        if (v6 < *(a2 + 8))
        {
          *(*a2 + 8 * v6) = a1;
          *(a2 + 16) = v6 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t C3DProgramHashCodeCopyShaderModifiersForEntryPoint(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v11[0] = a4;
  v11[1] = a5;
  v12 = 0;
  v6 = a1 + 16;
  v7 = 1;
  v13 = a2;
  v14 = a3;
  do
  {
    v8 = v7;
    v9 = *(v6 + 8 * v5);
    if (v9)
    {
      v15.length = CFArrayGetCount(*(v6 + 8 * v5));
      v15.location = 0;
      CFArrayApplyFunction(v9, v15, __dispatchShaderModifiers, v11);
    }

    v7 = 0;
    v5 = 1;
  }

  while ((v8 & 1) != 0);
  return v12;
}

BOOL C3DProgramHashCodeMatchLightHashCodesAndLightingContext(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 120);
  if ((v2 & 0xF) == 5)
  {
    v3 = *(a1 + 200);
    v4 = *a2;
    if ((v3 & 0x400) != 0 && (((v4 >> 4) ^ (v3 >> 11)) & 7) != 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = *a2;
    if ((v2 & 0xB) != 0)
    {
      v5 = *(a1 + 200);
      if ((v4 ^ (v5 >> 5)) & 1) == 0 || (((v5 >> 6) ^ (v4 >> 1)))
      {
        return 0;
      }
    }
  }

  if (*(a1 + 160) != (v4 >> 7) || ((v4 >> 3) & 1) != ((*(a1 + 202) >> 4) & 1))
  {
    return 0;
  }

  v6 = (v4 >> 7);
  if (!(v4 >> 7))
  {
    return 1;
  }

  v7 = (a1 + 128);
  v8 = a2 + 2;
  v9 = v6 - 1;
  do
  {
    v11 = *v7++;
    v10 = v11;
    v12 = *v8;
    v8 += 2;
    result = v10 == v12;
  }

  while (v10 == v12 && v9-- != 0);
  return result;
}

uint64_t C3DProgramHashCodeCreate(void *a1, __C3DGeometry *a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, unint64_t a7)
{
  v187 = *MEMORY[0x277D85DE8];
  if (!a6)
  {
    return 0;
  }

  if (a5)
  {
    v8 = *a5;
    v9 = (v8 >> 1) & 1;
    v146 = (v8 >> 4) & 7;
    v10 = (v8 & 1) == 0;
  }

  else
  {
    LOWORD(v146) = 0;
    LOBYTE(v9) = 0;
    v10 = 0;
  }

  v179 = 0u;
  memset(v180, 0, 88);
  memset(v178, 0, sizeof(v178));
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  v168 = 0u;
  v169 = 0u;
  WORD4(v179) = 7;
  WORD2(v179) = a7;
  BYTE6(v179) = BYTE2(a7);
  BYTE7(v179) = BYTE3(a7);
  v161 = 0;
  updated = __UpdateShaderModifiersInProgramHashCode(&v168, a6, 0, &v161 + 1, &v161);
  v147 = __UpdateShaderModifiersInProgramHashCode(&v168, a2, 1, &v161 + 1, &v161);
  C3DNodeGetWorldAlpha(a1, v12);
  v14 = v13;
  CommonProfile = C3DMaterialGetCommonProfile(a6, v15);
  TransparencyMode = C3DEffectCommonProfileGetTransparencyMode(CommonProfile, v17);
  if (TransparencyMode == 1)
  {
    v151 = v14 >= 1.0;
    Color = C3DEffectCommonProfileGetColor(CommonProfile, 5);
    v20 = a2;
    v19 = a3;
    if ((C3DEffectCommonProfileContainsContentForEffectProperty(CommonProfile, 5) & 1) != 0 || !C3DColor4IsBlack(Color) && C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18) != 0.0)
    {
      v151 = 0;
    }
  }

  else
  {
    v151 = (v14 * C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18)) >= 1.0;
    v20 = a2;
    v19 = a3;
  }

  LightingModel = C3DEffectCommonProfileGetLightingModel(CommonProfile, v18);
  v24 = LightingModel;
  v25 = LightingModel == 5 || LightingModel != 4 && v10;
  if ((LightingModel | 4) == 4)
  {
    v158 = 0;
  }

  else
  {
    v158 = (LightingModel == 5) | v9;
  }

  v157 = v25;
  if (a1)
  {
    v26 = C3DNodeGetLightmapInfo(a1, v23) != 0;
    if (v19)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v26 = 0;
    if (v19)
    {
LABEL_20:
      if (C3DMeshContainsSourcesWithSemantic(v19, 2))
      {
        v27 = 2;
      }

      else
      {
        v27 = 0;
      }

      if (v20)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  v27 = 0;
  if (v20)
  {
LABEL_24:
    if (C3DGeometryGetWantsHardwareTessellation(v20, v23))
    {
      C3DGeometryGetTessellator(v20, v28, &v160);
      v29 = 8 * v160.n128_u8[12];
      v30 = 4;
      v20 = a2;
    }

    else
    {
      v30 = 0;
      v29 = 0;
    }

    v32 = CFGetTypeID(v20);
    v31 = (v32 == C3DBezierCurveGeometryGetTypeID(v32, v33)) << 27;
    goto LABEL_31;
  }

LABEL_28:
  v29 = 0;
  v30 = 0;
  v31 = 0;
LABEL_31:
  if (a1 && (Skinner = C3DNodeGetSkinner(a1, v23), (v35 = Skinner) != 0) && C3DSkinnerGetEffectiveCalculationMode(Skinner, a2) == 1)
  {
    OverrideMaterial = C3DGeometryGetOverrideMaterial(v35);
    if (!OverrideMaterial)
    {
      v38 = scn_default_log(0, v36);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        C3DSkinnerUpdateJointsAndBoundingBox_cold_1(v38, v39, v40, v41, v42, v43, v44, v45);
      }
    }

    MaxInfluencesPerVertex = C3DSkinGetMaxInfluencesPerVertex(OverrideMaterial);
    if (MaxInfluencesPerVertex >= 4)
    {
      LODWORD(v47) = 4;
    }

    else
    {
      LODWORD(v47) = MaxInfluencesPerVertex;
    }

    v47 = v47;
  }

  else
  {
    v47 = 0;
  }

  v144 = v47;
  HIDWORD(v175) = v31 | v29 | ((v26 | (v47 << 28) | v27) + v30);
  WORD4(v175) = C3DEffectCommonProfileGetHashCode(CommonProfile, v23);
  if (C3DGeometryOpenSubdivGPUIsActive(a2, v48))
  {
    memset(&c, 0, 24);
    C3DGeometryGetTessellator(a2, v49, &c);
    v50 = (a7 >> 24) & 7;
    if ((c.hash[2] & 0x100) != 0 && C3DGeometryOpenSubdivGetGPUCanBenefitFromSingleCreasePatches(a2))
    {
      if (C3DSubdivisionGetPathTypeSupportsSingleCrease(v50))
      {
        v51 = 96;
      }

      else
      {
        v51 = 32;
      }
    }

    else
    {
      v51 = 32;
    }

    v53 = BYTE1(c.hash[2]);
    GPUPrimvarDataTypeHash = C3DGeometryOpenSubdivGetGPUPrimvarDataTypeHash(a2);
    HIDWORD(v175) |= v51 | ((GPUPrimvarDataTypeHash & 0x7FFFF) << 8) | (v53 << 6) & 0x80;
    v52 = BYTE10(v179) & 0xF8 | v50;
  }

  else
  {
    v52 = BYTE10(v179) & 0xF8;
  }

  BYTE10(v179) = v52;
  v150 = v147 | updated;
  if (a5)
  {
    v55 = *a5;
    v56 = (*a5 >> 7);
    if ((*a5 >> 7))
    {
      __memcpy_chk();
      bzero(&v176 + 4 * v56, (32 - (4 * v56)) & 0x3FFFFFFFCLL);
    }

    else
    {
      v176 = 0u;
      v177 = 0u;
    }

    v57 = v55 >> 7;
  }

  else
  {
    v57 = 0;
    v176 = 0u;
    v177 = 0u;
  }

  v58 = 0;
  LOBYTE(v178[0]) = v57;
  v59 = HIWORD(v161);
  do
  {
    EffectPropertyHashCode = C3DEffectCommonProfileGetEffectPropertyHashCode(CommonProfile, v58);
    if (EffectPropertyHashCode & 1) != 0 || ((v59 >> v58))
    {
      EffectPropertyHashCode = __UpdateHashCodeWithTextureType(&v168, a3, CommonProfile, v58, EffectPropertyHashCode, v59 != 0);
    }

    v61 = v158;
    if (v58 != 1)
    {
      v61 = v157;
    }

    if (v61)
    {
      v62 = v24;
    }

    else
    {
      v62 = 4;
    }

    IsEffectPropertyEnabledForLightingModel = C3DEffectCommonProfileIsEffectPropertyEnabledForLightingModel(v62, v58);
    if (!IsEffectPropertyEnabledForLightingModel)
    {
      goto LABEL_125;
    }

    if (v58 > 14)
    {
      if (v58 <= 17)
      {
        if (v58 == 15)
        {
          goto LABEL_109;
        }

        if (v58 != 16)
        {
          goto LABEL_125;
        }

        v65 = (BYTE1(v171) >> 3) & 1;
        if ((EffectPropertyHashCode & 0x2000) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_111;
      }

      switch(v58)
      {
        case 18:
          v65 = C3DEffectCommonProfileGetFloatProperty(CommonProfile, 18) < 1.0;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        case 19:
          v66 = (EffectPropertyHashCode & 0x10) == 0;
LABEL_99:
          v65 = v66;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        case 20:
          if ((EffectPropertyHashCode & 0x10) != 0)
          {
            LODWORD(v175) = 0;
LABEL_125:
            *(&v170 + v58 + 1) = 0;
            goto LABEL_126;
          }

LABEL_107:
          v65 = 1;
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
      }
    }

    else
    {
      v65 = 1;
      if (v58 <= 9)
      {
        switch(v58)
        {
          case 2:
            goto LABEL_110;
          case 5:
            if (TransparencyMode == 1)
            {
              if ((EffectPropertyHashCode & 2) != 0)
              {
LABEL_109:
                v65 = EffectPropertyHashCode & 1;
LABEL_110:
                if ((EffectPropertyHashCode & 0x2000) == 0)
                {
                  goto LABEL_117;
                }

                goto LABEL_111;
              }
            }

            else if ((EffectPropertyHashCode & 8) != 0)
            {
              v65 = (EffectPropertyHashCode >> 5) & 1;
              if ((EffectPropertyHashCode & 0x2000) == 0)
              {
                goto LABEL_117;
              }

              goto LABEL_111;
            }

            goto LABEL_107;
          case 6:
            if (EffectPropertyHashCode)
            {
              goto LABEL_110;
            }

            v66 = (EffectPropertyHashCode & 4) == 0;
            goto LABEL_99;
        }
      }

      else
      {
        if ((v58 - 10) < 2)
        {
          goto LABEL_110;
        }

        if (v58 == 13)
        {
          v65 = ((EffectPropertyHashCode & 3) != 2) & (BYTE5(v173) >> 3);
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }

        if (v58 == 14)
        {
          v65 = EffectPropertyHashCode & ((BYTE5(v173) & 8) >> 3);
          if ((EffectPropertyHashCode & 0x2000) == 0)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }
      }
    }

    if (EffectPropertyHashCode)
    {
      goto LABEL_107;
    }

    if ((EffectPropertyHashCode & 2) != 0)
    {
      goto LABEL_125;
    }

    IsEffectPropertyEnabledForLightingModel = C3DEffectCommonProfileGetEnableNormals(CommonProfile, v64);
    v65 = !((v24 == 4) & IsEffectPropertyEnabledForLightingModel);
    if ((EffectPropertyHashCode & 0x2000) == 0)
    {
      goto LABEL_117;
    }

LABEL_111:
    if (v58 != 2 && v65)
    {
      Intensity = C3DEffectCommonProfileGetIntensity(CommonProfile, v58);
      if (Intensity == 0.0)
      {
        goto LABEL_125;
      }

      v68 = EffectPropertyHashCode & 0xFFFFF7FF | ((Intensity != 0.0) << 11);
      goto LABEL_122;
    }

LABEL_117:
    if (v65)
    {
      v69 = 2048;
    }

    else
    {
      v69 = 0;
    }

    if ((v65 & 1) == 0)
    {
      goto LABEL_125;
    }

    v68 = v69 | EffectPropertyHashCode & 0xFFFFF7FF;
LABEL_122:
    *(&v170 + v58 + 1) = v68;
    if (v68 >= 0x400000)
    {
      v70 = scn_default_log(IsEffectPropertyEnabledForLightingModel, v64);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        C3DProgramHashCodeCreate_cold_2(buf, &v167, v70);
      }
    }

LABEL_126:
    ++v58;
  }

  while (v58 != 21);
  *c.count = MEMORY[0x277D85DD0];
  *c.hash = 3221225472;
  *&c.hash[2] = ____ComputeCustomSlotsUsage_block_invoke;
  *&c.hash[4] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
  *&c.hash[6] = &v168;
  C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(a6, &c);
  *c.count = MEMORY[0x277D85DD0];
  *c.hash = 3221225472;
  *&c.hash[2] = ____ComputeCustomSlotsUsage_block_invoke;
  *&c.hash[4] = &__block_descriptor_40_e25_v24__0____CFString__8_v16l;
  *&c.hash[6] = &v168;
  C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(a2, &c);
  v71 = 0;
  v72 = v161;
  v73 = HIBYTE(v178[1]);
  do
  {
    if ((v72 >> v71))
    {
      if (v73)
      {
        v74 = v73;
        v75 = &v178[2];
        v76 = v73;
        while (1)
        {
          v77 = *v75;
          v75 += 2;
          if (v71 == v77)
          {
            break;
          }

          if (!--v76)
          {
            goto LABEL_135;
          }
        }
      }

      else
      {
        v74 = 0;
LABEL_135:
        v78 = &v178[v74 + 2];
        *v78 = v71;
        v78[1] = -1;
        HIBYTE(v178[1]) = ++v73;
      }
    }

    ++v71;
  }

  while (v71 != 16);
  EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 7, 0);
  v80 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 14, 0);
  v82 = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0);
  if (EffectSlot)
  {
    if (C3DEffectSlotHasImageOrTexture(EffectSlot, v81))
    {
      v83 = 16;
    }

    else
    {
      v83 = 0;
    }

    WORD4(v179) = WORD4(v179) & 0xFFEF | v83;
  }

  if (v82)
  {
    HasImageOrTexture = C3DEffectSlotHasImageOrTexture(v82, v81);
    v85 = BYTE8(v179) & 0x10;
    if (HasImageOrTexture)
    {
      v85 = 16;
    }

    WORD4(v179) = v85 | WORD4(v179) & 0xFFEF;
  }

  if (v80)
  {
    v86 = C3DEffectSlotHasImageOrTexture(v80, v81);
    v87 = BYTE8(v179) & 0x10;
    if (v86)
    {
      v87 = 16;
    }

    v88 = v87 | WORD4(v179) & 0xFFEF;
  }

  else
  {
    v88 = WORD4(v179);
  }

  WORD4(v179) = v88 | (4 * v150) & 0x10;
  if (v88 & 0x10 | (4 * v150) & 0x10)
  {
    v89 = C3DMeshGetSourcesCountForSemantic(a3, 3) > 0;
    WORD4(v179) = WORD4(v179) & 0xFFEF | (16 * v89);
  }

  EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a2, v81);
  if (a3)
  {
    EffectiveDataKindForRendering = C3DMeshGetSourceWithSemanticAtIndex(a3, 1, 0, EffectiveDataKindForRendering);
    v92 = 8 * (EffectiveDataKindForRendering != 0);
  }

  else
  {
    v92 = 0;
  }

  WORD4(v179) = WORD4(v179) & 0xFFF7 | v92;
  if (a1)
  {
    EffectiveDataKindForRendering = C3DGetScene(a1, v91);
    if (EffectiveDataKindForRendering)
    {
      if (C3DSceneGetFogEndDistance(EffectiveDataKindForRendering, v91) > 0.0)
      {
        WORD4(v179) |= 0x80u;
      }
    }
  }

  if (v151)
  {
    EffectiveDataKindForRendering = C3DEffectCommonProfileIsOpaque(CommonProfile, v91);
    v93 = EffectiveDataKindForRendering;
  }

  else
  {
    v93 = 0;
  }

  if ((v150 & 2) != 0)
  {
    v94 = 0;
    v95 = 0;
  }

  else
  {
    EffectiveDataKindForRendering = a3;
    if (a3)
    {
      EffectiveDataKindForRendering = C3DMeshHasNonOpaqueColorSources(a3);
    }

    v94 = 0;
    v95 = 0;
    if (v24 != 6 && (EffectiveDataKindForRendering & 1) == 0)
    {
      EffectiveDataKindForRendering = C3DMaterialGetBlendStatesUseConstantAlpha(a6, v93);
      v95 = EffectiveDataKindForRendering;
      if (v93)
      {
        v94 = 4;
      }

      else
      {
        v94 = 0;
      }
    }
  }

  if (v24 == 5)
  {
    v95 = !((TransparencyMode != 1) & C3DPBROpacityIsEnabled(EffectiveDataKindForRendering, v91)) & v95;
  }

  v96 = C3DWasLinkedBeforeMajorOSYear2017();
  v98 = v157;
  if ((v96 & v157) == 1)
  {
    v98 = C3DMeshGetNormalSource(a3, 0) != 0;
  }

  if (v95)
  {
    v99 = 2;
  }

  else
  {
    v99 = 0;
  }

  if (v98)
  {
    v100 = 32;
  }

  else
  {
    v100 = 0;
  }

  if (v158)
  {
    v101 = 64;
  }

  else
  {
    v101 = 0;
  }

  WORD4(v179) = v101 | v151 | v94 | v99 | v100 | WORD4(v179) & 0xFF98;
  LOBYTE(v102) = a5;
  if (!a5)
  {
    BYTE10(v179) &= 0xE7u;
LABEL_198:
    v107 = a2;
    goto LABEL_199;
  }

  BYTE10(v179) = (2 * *a5) & 0x18 | BYTE10(v179) & 0xE7;
  CategoryBitMask = C3DNodeGetCategoryBitMask(a1, v97);
  v104 = *a5;
  v105 = (v104 >> 7);
  if (!(v104 >> 7))
  {
    LOBYTE(v102) = 0;
    goto LABEL_198;
  }

  v106 = 0;
  v102 = 0;
  v107 = a2;
  do
  {
    v108 = *&a5[8 * v106 + 40];
    v109 = v102 | (1 << v106);
    if ((v108 & CategoryBitMask) == 0)
    {
      v109 = v102;
    }

    if (v24 != 5)
    {
      v102 |= 1 << v106;
    }

    if (v108 != 0xDEFA017DEFA017)
    {
      v102 = v109;
    }

    ++v106;
  }

  while (v105 != v106);
LABEL_199:
  HIBYTE(v178[0]) = v102;
  v110 = (v146 << 11) | 0x400;
  if (v24 != 5)
  {
    v110 = 0;
  }

  WORD4(v179) = v110 | WORD4(v179) & 0xC3FF;
  IsDynamicBatchingEnabled = C3DGeometryIsDynamicBatchingEnabled(v107);
  if (v144)
  {
    v113 = 0;
  }

  else
  {
    v113 = IsDynamicBatchingEnabled;
  }

  if ((v113 & v151) != 0)
  {
    v114 = 256;
  }

  else
  {
    v114 = 0;
  }

  WORD4(v179) = v114 | WORD4(v179) & 0xFCFF;
  if (a4)
  {
    v115 = C3DMeshElementGetType(a4, v112) == 3;
    WORD4(v179) = WORD4(v179) & 0xFDFF | (v115 << 9);
  }

  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v116 = 0;
  v117 = MEMORY[0x277D85DD0];
  v118 = 1;
  do
  {
    v119 = 0;
    v120 = v118;
    v121 = *(&v169 + v116);
    do
    {
      v163[0] = v117;
      v163[1] = 3221225472;
      v163[2] = ____createHashCode_block_invoke;
      v163[3] = &__block_descriptor_44_e13_v24__0q8r_v16l;
      v164 = v119;
      v163[4] = &c;
      C3DCFArrayApplyBlock(v121, v163);
      ++v119;
    }

    while (v119 != 4);
    v118 = 0;
    v116 = 1;
  }

  while ((v120 & 1) != 0);
  for (i = 216; i != 280; i += 8)
  {
    v123 = *(&v168 + i);
    if (v123)
    {
      CFStringUpdateHash(v123);
    }
  }

  CC_SHA256_Update(&c, &v170 + 4, 0xB4u);
  data = 2;
  CC_SHA256_Update(&c, &data, 4u);
  CC_SHA256_Final(md, &c);
  v124 = 0;
  v125 = cStr;
  v126.i64[0] = 0xA0A0A0A0A0A0A0A0;
  v126.i64[1] = 0xA0A0A0A0A0A0A0A0;
  v127.i64[0] = 0x3737373737373737;
  v127.i64[1] = 0x3737373737373737;
  v128.i64[0] = 0x3030303030303030;
  v128.i64[1] = 0x3030303030303030;
  v129.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v129.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v130.i64[0] = 0xA0A0A0A0A0A0A0ALL;
  v130.i64[1] = 0xA0A0A0A0A0A0A0ALL;
  do
  {
    v131 = *&md[v124];
    v132.i64[0] = 0x3737373737373737;
    v132.i64[1] = 0x3737373737373737;
    v133.i64[0] = 0x3030303030303030;
    v133.i64[1] = 0x3030303030303030;
    v188.val[0] = vbslq_s8(vcgtq_u8(v126, v131), vsraq_n_u8(v133, v131, 4uLL), vsraq_n_u8(v132, v131, 4uLL));
    v134 = vandq_s8(v131, v129);
    v188.val[1] = vbslq_s8(vcgtq_u8(v130, v134), vorrq_s8(v134, v128), vaddq_s8(v134, v127));
    vst2q_s8(v125, v188);
    v125 += 32;
    v124 += 16;
  }

  while (v124 != 32);
  v185 = 0;
  v135 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x600u);
  if (C3DProgramHashCodeCreate_once != -1)
  {
    C3DProgramHashCodeCreate_cold_3();
  }

  *c.count = 0;
  *c.hash = &c;
  *&c.hash[2] = 0x2020000000;
  *&c.hash[4] = 0;
  *cStr = 0;
  v182 = cStr;
  v183 = 0x2020000000;
  v184 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __C3DProgramHashCodeCreate_block_invoke_2;
  block[3] = &unk_278300438;
  block[4] = cStr;
  block[5] = &c;
  block[6] = v135;
  block[7] = &v168;
  block[8] = a1;
  block[9] = a2;
  block[10] = a3;
  block[11] = a5;
  block[12] = a6;
  dispatch_sync(s_ProgramHashCodeDictionaryQueue, block);
  CFRelease(v135);
  v136 = 0;
  v137 = 1;
  do
  {
    v138 = v137;
    v139 = *(&v169 + v136);
    if (v139)
    {
      CFRelease(v139);
      *(&v169 + v136) = 0;
    }

    v137 = 0;
    v136 = 1;
  }

  while ((v138 & 1) != 0);
  v140 = LOBYTE(v178[1]);
  if (LOBYTE(v178[1]))
  {
    v141 = 0;
    do
    {
      v142 = v180[v141 + 1];
      if (v142)
      {
        CFRelease(v142);
        v180[v141 + 1] = 0;
        v140 = LOBYTE(v178[1]);
      }

      ++v141;
    }

    while (v141 < v140);
  }

  v11 = *(*c.hash + 24);
  _Block_object_dispose(cStr, 8);
  _Block_object_dispose(&c, 8);
  return v11;
}

void sub_21C14295C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose((v42 - 224), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

dispatch_queue_t __C3DProgramHashCodeCreate_block_invoke()
{
  s_ProgramHashCodeDictionary = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
  result = dispatch_queue_create("com.apple.scenekit.programHashCodeQueue", 0);
  s_ProgramHashCodeDictionaryQueue = result;
  return result;
}

void __C3DProgramHashCodeCreate_block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = CFDictionaryGetValue(s_ProgramHashCodeDictionary, *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(v2);
  }

  else
  {
    if (C3DProgramHashCodeGetTypeID_onceToken != -1)
    {
      __C3DProgramHashCodeCreate_block_invoke_2_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = C3DTypeCreateInstance_(C3DProgramHashCodeGetTypeID_typeID, 280);
    memcpy((*(*(*(a1 + 40) + 8) + 24) + 16), (*(a1 + 56) + 16), 0x108uLL);
    v4 = *(a1 + 56);
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 128) = 0u;
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
    *(v4 + 176) = 0u;
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
    *(v4 + 224) = 0u;
    *(v4 + 240) = 0u;
    *(v4 + 256) = 0u;
    *(v4 + 272) = 0;
    v5 = *(a1 + 48);
    v6 = *(*(*(*(a1 + 40) + 8) + 24) + 280);
    if (v6 != v5)
    {
      if (v6)
      {
        CFRelease(*(*(*(*(a1 + 40) + 8) + 24) + 280));
        *(*(*(*(a1 + 40) + 8) + 24) + 280) = 0;
        v5 = *(a1 + 48);
      }

      if (v5)
      {
        v5 = CFRetain(v5);
      }

      *(*(*(*(a1 + 40) + 8) + 24) + 280) = v5;
    }

    if (C3DStandardShadersUseFunctionConstants(v5, v3))
    {
      v7 = SCNCreateFuntionConstants(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88) + 4, (**(a1 + 88) >> 7), *(a1 + 88), *(a1 + 96));
      v8 = *(*(*(*(a1 + 40) + 8) + 24) + 288);
      if (v8 != v7)
      {
        if (v8)
        {
          CFRelease(v8);
          *(*(*(*(a1 + 40) + 8) + 24) + 288) = 0;
        }

        if (v7)
        {
          v9 = CFRetain(v7);
        }

        else
        {
          v9 = 0;
        }

        *(*(*(*(a1 + 40) + 8) + 24) + 288) = v9;
      }

      CFRelease(v7);
    }

    v10 = s_ProgramHashCodeDictionary;
    v11 = *(a1 + 48);
    v12 = *(*(*(a1 + 40) + 8) + 24);

    CFDictionarySetValue(v10, v11, v12);
  }
}

void C3DProgramHashCodeRelease(uint64_t a1)
{
  if (a1)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __C3DProgramHashCodeRelease_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    dispatch_sync(s_ProgramHashCodeDictionaryQueue, block);
  }
}

uint64_t ____createShaderModifierHashCode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DShaderModifierGetEntryPoint(a3, a2);
  if (result == *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return C3DShaderModifierUpdateHashCode(a3, v6);
  }

  return result;
}

uint64_t ____createHashCode_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = C3DShaderModifierGetEntryPoint(a3, a2);
  if (result == *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return C3DShaderModifierUpdateHashCode(a3, v6);
  }

  return result;
}

const void *C3DResourceManagerRegistryGetResourceManagerForContext(const void *a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _C3DResourceManagerRegistryLock();
  v4 = CFDictionaryGetValue(_registry, a1);
  if (!v4)
  {
    context = a1;
    value = 0;
    CFDictionaryApplyFunction(_registry, __findSharedContext, &context);
    v4 = value;
    if (value)
    {
      CFDictionarySetValue(_registry, a1, value);
    }

    else if (a2)
    {
      v4 = C3DResourceManagerCreate();
      CFDictionarySetValue(_registry, a1, v4);
      CFRelease(v4);
    }

    else
    {
      v4 = 0;
    }
  }

  pthread_mutex_unlock(&_registryLock);
  return v4;
}

CFMutableBagRef _C3DResourceManagerRegistryLock()
{
  result = pthread_mutex_lock(&_registryLock);
  if (!_registry)
  {
    _registry = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    result = CFBagCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    _registryRetainCount = result;
  }

  return result;
}

BOOL __findSharedContext(_BOOL8 result, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    result = C3DEAGLContextAreShared(result, *a3);
    if (result)
    {
      *(a3 + 8) = a2;
    }
  }

  return result;
}

uint64_t C3DResourceManagerRegistryRetainContext(const void *a1)
{
  _C3DResourceManagerRegistryLock();
  CFBagAddValue(_registryRetainCount, a1);

  return pthread_mutex_unlock(&_registryLock);
}

uint64_t C3DResourceManagerRegistryReleaseContext(uint64_t a1, const void *a2)
{
  _C3DResourceManagerRegistryLock();
  CFBagRemoveValue(_registryRetainCount, a2);
  v3 = MEMORY[0x21CF06000](_registryRetainCount, a2);
  if (v3 < 0)
  {
    v5 = scn_default_log(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerRegistryReleaseContext_cold_1(v5);
    }
  }

  else if (!v3)
  {
    CFDictionaryRemoveValue(_registry, a2);
  }

  return pthread_mutex_unlock(&_registryLock);
}

void SCNCActionSequence::SCNCActionSequence(SCNCActionSequence *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC7380;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 144) = 0;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 81) = a2->var11;
  *(v3 + 80) = a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0;
  *(v3 + 144) = 0;
  *(v3 + 32) = 1;
}

void SCNCActionSequence::~SCNCActionSequence(SCNCAction *this)
{
  SCNCActionSequence::~SCNCActionSequence(this);

  JUMPOUT(0x21CF07610);
}

{
  this->var0 = &unk_282DC7380;
  var0 = this[1].var0;
  *&this[1].var1 = var0;
  if (var0)
  {
    operator delete(var0);
  }

  SCNCAction::~SCNCAction(this);
}

void SCNCActionSequence::setBaseSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setBaseSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SCNCActionSequence::setSpeed(SCNCAction *this, double a2)
{
  SCNCAction::setSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SCNCActionSequence::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
LABEL_18:
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];
  if (C3DIsRunningInEditor() && *&this[1].var4 > a3 && this[1].var3)
  {
    do
    {
      if (v8->var5 <= a3)
      {
        break;
      }

      (*(v8->var0 + 16))(v8, a2);
      v10 = this[1].var3 - 1;
      this[1].var3 = v10;
      v11 = this[1].var0;
      if (v10 >= (*&this[1].var1 - v11) >> 3)
      {
        goto LABEL_18;
      }

      v8 = v11[v10];
      *&v8->var10 = 0;
    }

    while (v10);
  }

  *&this[1].var4 = a3;
  while (1)
  {
    v12 = SCNCAction::cpp_timeByApplyingTimingfunction(this, a3, v9);
    SCNCAction::updateWithTargetForTime(v8, a2, v12);
    if (v8->var4)
    {
      if (!v8->var10)
      {
        return;
      }
    }

    else if (![v8->var3 finished])
    {
      return;
    }

    v13 = this[1].var3 + 1;
    this[1].var3 = v13;
    v14 = ((*&this[1].var1 - this[1].var0) >> 3) - 1;
    (*(v8->var0 + 2))(v8);
    if (v13 > v14)
    {
      break;
    }

    v16 = this[1].var3;
    v17 = this[1].var0;
    if (v16 >= (*&this[1].var1 - v17) >> 3)
    {
      goto LABEL_18;
    }

    v18 = fmin(v12, v15.n128_f64[0]);
    v8 = v17[v16];
    SCNCAction::wasAddedToTargetAtTime(v8, a2, v18);
    SCNCAction::willStartWithTargetAtTime(v8, a2, v18);
  }

  SCNCAction::didFinishWithTargetAtTime(this, a2, v15);
  this->var9 = (*(v8->var0 + 2))(v8);
  this[1].var3 = (((*&this[1].var1 - this[1].var0) >> 3) - 1);
}

uint64_t SCNCActionSequence::cpp_wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::wasRemovedFromTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this[1].var3 = 0;
  var0 = this[1].var0;
  if (*&this[1].var1 == var0 || (SCNCAction::wasAddedToTargetAtTime(*var0, a2, a3), var3 = this[1].var3, v8 = this[1].var0, var3 >= (*&this[1].var1 - v8) >> 3))
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = v8[var3];

  return SCNCAction::willStartWithTargetAtTime(v9, a2, a3);
}

uint64_t SCNCActionSequence::cpp_wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::wasPausedWithTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::willResumeWithTargetAtTime(v8, a2, a3);
}

uint64_t SCNCActionSequence::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  SCNCAction::cpp_timeJumpWithTarget(this, a2, a3);
  var3 = this[1].var3;
  var0 = this[1].var0;
  if (var3 >= (*&this[1].var1 - var0) >> 3)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v8 = var0[var3];

  return SCNCAction::timeJumpWithTarget(v8, a2, a3);
}

SCNCAction *SCNCActionSequence::cpp_reset(SCNCAction *this)
{
  result = SCNCAction::cpp_reset(this);
  *&this[1].var4 = 0;
  for (i = this[1].var0; i != *&this[1].var1; ++i)
  {
    v4 = *i;
    result = (*(*v4 + 120))(v4);
  }

  return result;
}

C3D::RenderPass *C3D::BoxBlurPass::BoxBlurPass(C3D::BoxBlurPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC7418;
  *(result + 30) = *&a4->var0;
  *(result + 20) = *&a4->var2;
  v6 = *&a4->var6 + *&a4->var4;
  if (v6 <= 1)
  {
    LOWORD(v6) = 1;
  }

  *(result + 21) = v6;
  return result;
}

void C3D::BoxBlurPass::setup(C3D::BoxBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

void C3D::BoxBlurPass::compile(C3D::BoxBlurPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  v4 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v4) frameworkLibrary];
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ (*(this + 241) << 8) ^ *(this + 240) ^ 0x8D494F26B7A3D32ALL);
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 31) = v6;
  if (!v6)
  {
    operator new();
  }
}

uint64_t C3D::BoxBlurPass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v6 = v5;
  if (*(a2 + 18))
  {
    v6 = [v5 newTextureViewWithPixelFormat:objc_msgSend(v5 textureType:"pixelFormat") levels:objc_msgSend(v5 slices:"textureType"), *(a2 + 18), 1, 0, 1];
  }

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v6, 0);
  v8 = *(a1 + 248);
  if (*(a1 + 244) + *(a1 + 242) <= *(a2 + 18))
  {
    v9 = v8 + 16;
  }

  else
  {
    v9 = v8 + 24;
  }

  v10 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v9 :v7) detail:"state" :?NSRetainFct];
  if (*(v4 + 3376) != v10)
  {
    *(v4 + 3376) = v10;
    [*(v4 + 3392) setRenderPipelineState:v10];
  }

  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4, v11);
}

void C3D::BoxBlurPass::Resource::~Resource(C3D::BoxBlurPass::Resource *this)
{
  *this = &unk_282DC7488;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC7488;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

id SCNUIKitSourceNotifyViewWasRemoved(id result)
{
  if (gCurrentSCNViewEvent == result)
  {
    return SCNUIKitSourceSetCurrentViewEvent(0);
  }

  return result;
}

void SCNCActionMove::SCNCActionMove(SCNCActionMove *this, SCNCAction *a2)
{
  SCNCAction::SCNCAction(this);
  *v3 = &unk_282DC74C8;
  *(v3 + 56) = a2->var7;
  *(v3 + 40) = *&a2->var5;
  *(v3 + 80) = *&a2->var10;
  *(v3 + 64) = a2->var8;
  *(v3 + 104) = a2->var14;
  *(v3 + 32) = 1;
}

void SCNCActionMove::~SCNCActionMove(SCNCActionMove *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionMove::cpp_updateWithTargetForTime(SCNCActionMove *this, SCNNode *a2, double a3)
{
  v6 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  *&v6 = v6;
  v17 = v6;
  result = [[(SCNNode *)a2 presentationNode] position];
  v10.n128_u32[1] = v9;
  v10.n128_u32[2] = LODWORD(v8);
  v11 = *&v17;
  if (BYTE1(this[1].var6) == 1)
  {
    v12 = v11 - this->var19;
    v15 = vmulq_n_f32(*&this[1].var2, v12);
    v16 = vaddq_f32(v10, v15);
    result = [(SCNNode *)a2 setPosition:?];
    v10 = vsubq_f32(*&this[1].var0, v15);
    *&this[1].var0 = v10;
  }

  else
  {
    v16 = v10;
    if ((LOBYTE(this[1].var6) & 1) == 0)
    {
      v16 = vmlaq_n_f32(vmulq_n_f32(*&this[1].var2, *&v17), *&this[1].var0, 1.0 - *&v17);
      result = [(SCNNode *)a2 setPosition:?];
    }
  }

  this->var19 = v11;
  HIDWORD(v13) = HIDWORD(v17);
  if ((COERCE_UNSIGNED_INT(*&v17 + -1.0) & 0x60000000) == 0)
  {
    if (BYTE1(this[1].var6) == 1)
    {
      v14 = vaddq_f32(v16, *&this[1].var0);
      LODWORD(v8) = v14.i32[2];
      [(SCNNode *)a2 setPosition:*v14.i64, COERCE_DOUBLE(__PAIR64__(v16.u32[1], v14.u32[1])), v8];
      v10.n128_u64[1] = 0;
      *&this[1].var0 = 0u;
    }

    else if ((LOBYTE(this[1].var6) & 1) == 0)
    {
      LODWORD(v13) = HIDWORD(this[1].var2);
      LODWORD(v8) = this[1].var3;
      [(SCNNode *)a2 setPosition:*&this[1].var2, v13, v8];
    }

    v10.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v10);
  }

  return result;
}

SCNCAction *SCNCActionMove::cpp_willStartWithTargetAtTime(SCNCActionMove *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var19 = 0.0;
  if (BYTE1(this[1].var6) == 1)
  {
    v6 = *&this[1].var2;
  }

  else
  {
    result = [[(SCNNode *)a2 presentationNode] position];
    DWORD1(v6) = v7;
    DWORD2(v6) = v8;
  }

  *&this[1].var0 = v6;
  return result;
}

void __C3DParticleModifierGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DParticleModifierGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);

  C3DModelPathResolverRegisterClassEnd();
}

uint64_t C3DParticleModifierCreate()
{
  if (C3DParticleModifierGetTypeID_onceToken != -1)
  {
    C3DParticleModifierCreate_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DParticleModifierGetTypeID_typeID, 72);
  *(result + 80) = 1;
  return result;
}

CFTypeRef C3DParticleModifierSetProperties(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

void *C3DParticleModifierSetBlock(uint64_t a1, void *aBlock)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(aBlock);
  *(a1 + 64) = result;
  return result;
}

void _C3DParticleModifierCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    _Block_release(v3);
  }
}

CFStringRef _C3DParticleModifierCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleModifierRef>");
}

CFStringRef _C3DParticleModifierCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleModifierRef>");
}

id SCNEnclosingURLForSceneDecoder(void *a1)
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 documentEnclosingURL];
  }

  else
  {
    result = objc_getAssociatedObject(a1, @"SCNSourceURLForCurrentlyUnarchivedScene");
    if (result)
    {

      return [result URLByDeletingLastPathComponent];
    }
  }

  return result;
}

void _C3DTransactionCFFinalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[10];
  if (v6)
  {

    _Block_release(v6);
  }
}

CFStringRef _C3DTransactionCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTransaction>");
}

CFStringRef _C3DTransactionCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTransaction>");
}

void C3DTransactionCheckUncommitted()
{
  Stack = C3DTransactionGetStack();
  Count = CFArrayGetCount(Stack[2]);
  v3 = Count;
  if (Count < 2)
  {
    if (Count == 1)
    {
      return;
    }
  }

  else
  {
    v4 = scn_default_log(Count, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      C3DTransactionCheckUncommitted_cold_1();
    }

    Count = CFArrayGetValueAtIndex(Stack[2], v3 - 1);
    if (*(Count + 40) == 0.0)
    {
      v5 = scn_default_log(Count, v2);
      Count = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (Count)
      {
        C3DTransactionCheckUncommitted_cold_2();
      }
    }
  }

  v6 = scn_default_log(Count, v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    C3DTransactionCheckUncommitted_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

void C3DTransactionUpdateModelValueForKeypathIfNeeded(uint64_t a1, void *a2, const __CFString *a3)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v6 = C3DCFTypeCopyModelInfoAtPath(a2, a3, 0);
      if (v6)
      {
        v7 = v6;
        if (v6->length)
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v6);
        }

        CFRelease(v7);
      }
    }
  }
}

BOOL _canSafelySkipModelValueUpdate(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  result = 0;
  if (v4 == C3DNodeGetTypeID(v4, v5))
  {
    AnimationManager = C3DSceneGetAnimationManager(a1, v6);
    if (!C3DAnimationManagerContainsAnimationForObject(AnimationManager, cf) && !C3DNodeHasConstraints(cf, v8))
    {
      return 1;
    }
  }

  return result;
}

void _C3DTransactionUpdateModelValueForTarget(uint64_t a1, uint64_t a2)
{
  TargetAddress = C3DModelTargetGetTargetAddress(a2, a2);
  ModelValueStorage = C3DSceneGetModelValueStorage(a1, v5);
  if (C3DModelValueStorageGetModelValueIfAny(ModelValueStorage, a2))
  {
    v7 = C3DValueCreate(*(a2 + 32), 1);
    v8 = *(a2 + 16);
    Bytes = C3DValueGetBytes(v7, v9);
    Length = C3DValueGetLength(v7, v11);
    C3DGetValue(v8, TargetAddress, Bytes, Length, *(a2 + 34), *(a2 + 35));
    C3DModelValueStorageUpdateModelValueWithValue(ModelValueStorage, a2, v7);

    CFRelease(v7);
  }
}

void C3DTransactionUpdateModelValueForKeyAndSubscriptIndexIfNeeded(uint64_t a1, const void *a2, const __CFString *a3, uint64_t a4)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v8 = C3DCFTypeCopyModelInfoForKeyAndSubscriptIndex(a2, a3, a4, 0);
      if (v8)
      {
        v9 = v8;
        if (*(v8 + 24))
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v8);
        }

        CFRelease(v9);
      }
    }
  }
}

void C3DTransactionUpdateModelValueForKeyAndSubscriptKeyIfNeeded(uint64_t a1, const void *a2, const __CFString *a3, void *a4)
{
  if (a1)
  {
    if (!_canSafelySkipModelValueUpdate(a1, a2))
    {
      v8 = C3DCFTypeCopyModelInfoForKeyAndSubscriptKey(a2, a3, a4, 0);
      if (v8)
      {
        v9 = v8;
        if (*(v8 + 24))
        {
          _C3DTransactionUpdateModelValueForTarget(a1, v8);
        }

        CFRelease(v9);
      }
    }
  }
}

void C3DTransactionUpdateModelValueForKeyIfNeeded(uint64_t a1, void *a2, const __CFString *a3)
{
  if (!_canSafelySkipModelValueUpdate(a1, a2))
  {
    AddressForKey = C3DCFTypeGetAddressForKey(a2, a3);
    if (AddressForKey)
    {
      v8 = AddressForKey;
      ModelValueStorage = C3DSceneGetModelValueStorage(a1, v7);
      if (C3DModelValueStorageGetModelValueForAddressIfAny(ModelValueStorage, v8))
      {

        C3DTransactionUpdateModelValueForKeypathIfNeeded(a1, a2, a3);
      }
    }
  }
}

void C3DTransactionCommit(char a1)
{
  Stack = C3DTransactionGetStack();
  v3 = *(Stack + 2);
  Count = CFArrayGetCount(v3);
  ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
  if (ValueAtIndex[5] == 0.0)
  {
    v8 = ValueAtIndex;
    v9 = CACurrentMediaTime();
    os_unfair_lock_lock(&gCommandQueueLock);
    *(v8 + 40) = v9;
    if (a1)
    {
      *(v8 + 60) |= 1u;
      C3DTransactionTestForDidComplete(v8, v10);
    }

    else
    {
      v11 = C3DAllocatorNew(gCommandAllocator, v10);
      *v11 = 0u;
      *(v11 + 1) = 0u;
      *(v11 + 2) = 0u;
      v12 = *(Stack + 5);
      if (!v12)
      {
        v12 = (Stack + 32);
      }

      *v12 = v11;
      *(Stack + 5) = v11;
      *(v11 + 4) = CFRetain(v8);
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    os_unfair_lock_lock(&gCommandQueueLock);
    v13 = C3DTransactionGetStack();
    v14 = CFArrayGetCount(v13[2]);
    v15 = v14 - 1;
    if (v14 <= 1)
    {
      v16 = scn_default_log(v14, v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
      if (v17)
      {
        C3DTransactionCommit_cold_1(v16, v18, v19, v20, v21, v22, v23, v24);
      }

      v25 = scn_default_log(v17, v18);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        C3DTransactionCommit_cold_2();
      }
    }

    else
    {
      CFArrayRemoveValueAtIndex(v13[2], v15);
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    if (CFArrayGetCount(*(Stack + 2)) <= 1 && (a1 & 1) == 0)
    {
      C3DTransactionFlush();
    }
  }

  else
  {
    v7 = scn_default_log(ValueAtIndex, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      C3DTransactionCommit_cold_3();
    }
  }
}

void C3DTransactionTestForDidComplete(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 60) & 1) != 0 && !*(a1 + 56))
  {
    v11 = *(a1 + 64);
    if (!v11 || !CFArrayGetCount(v11))
    {
      CFRetain(a1);
      v13 = *(a1 + 72);
      if (v13)
      {
        v14 = CFRetain(*(a1 + 72));
        if (!v13[8])
        {
          v16 = scn_default_log(v14, v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            C3DTransactionTestForDidComplete_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        v40.length = CFArrayGetCount(v13[8]);
        v40.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v13[8], v40, a1);
        if (FirstIndexOfValue == -1)
        {
          v38 = scn_default_log(-1, v25);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            C3DTransactionTestForDidComplete_cold_4();
          }
        }

        else
        {
          v26 = FirstIndexOfValue;
          CFRetain(a1);
          CFArrayRemoveValueAtIndex(v13[8], v26);
          if (*(a1 + 72) != v13)
          {
            v29 = scn_default_log(v27, v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
            {
              C3DTransactionTestForDidComplete_cold_3(v29, v30, v31, v32, v33, v34, v35, v36);
            }
          }

          CFRelease(*(a1 + 72));
          *(a1 + 72) = 0;
          CFRelease(a1);
        }

        C3DTransactionDidComplete(a1, v37);
        if (!CFArrayGetCount(v13[8]))
        {
          C3DTransactionTestForDidComplete(v13, v39);
        }

        CFRelease(v13);
      }

      else
      {
        C3DTransactionDidComplete(a1, v12);
      }

      CFRelease(a1);
    }
  }
}

void *C3DTransactionLock()
{
  result = C3DTransactionGetStack();
  v1 = result;
  v2 = *(result + 12);
  if (!v2)
  {
    result = pthread_rwlock_rdlock(&gCommandQueueFlushLock);
    v2 = v1[12];
  }

  v1[12] = v2 + 1;
  return result;
}

uint64_t C3DTransactionUnlock()
{
  result = C3DTransactionGetStack();
  v1 = *(result + 48) - 1;
  *(result + 48) = v1;
  if (!v1)
  {
    v2 = result;
    result = pthread_rwlock_unlock(&gCommandQueueFlushLock);
    if ((*(v2 + 52) & 2) != 0)
    {
      *(v2 + 52) &= ~2u;

      return C3DTransactionFlush();
    }
  }

  return result;
}

void C3DTransactionSetValue(const void *a1, const void *a2)
{
  Current = C3DTransactionGetCurrent();
  Mutable = *(Current + 2);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(Current + 2) = Mutable;
  }

  if (a2)
  {

    CFDictionarySetValue(Mutable, a1, a2);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, a1);
  }
}

const __CFDictionary *C3DTransactionGetValue(const void *a1)
{
  result = *(C3DTransactionGetCurrent() + 2);
  if (result)
  {

    return CFDictionaryGetValue(result, a1);
  }

  return result;
}

void *C3DTransactionSetCompletionBlock(const void *a1)
{
  Current = C3DTransactionGetCurrent();
  v3 = Current[10];
  if (v3)
  {
    _Block_release(v3);
  }

  result = _Block_copy(a1);
  Current[10] = result;
  return result;
}

_BYTE *C3DTransactionSetDisableActions(int a1)
{
  result = C3DTransactionGetCurrent();
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  result[60] = result[60] & 0xFB | v3;
  return result;
}

CFTypeRef C3DTransactionSetTimingFunction(CFTypeRef a1)
{
  Current = C3DTransactionGetCurrent();
  result = Current[3];
  if (result != a1)
  {
    if (result)
    {
      CFRelease(result);
      Current[3] = 0;
    }

    if (a1)
    {
      result = CFRetain(a1);
    }

    else
    {
      result = 0;
    }

    Current[3] = result;
  }

  return result;
}

double *C3DTransactionSetDuration(double a1)
{
  result = C3DTransactionGetCurrent();
  result[4] = a1;
  return result;
}

void C3DTransactionSetImmediateMode(int a1)
{
  Current = C3DTransactionGetCurrent();
  if (a1)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  Current[60] = Current[60] & 0xF7 | v3;
  if (a1)
  {
    gAtomicTime = CACurrentMediaTime();
  }
}

void *C3DTransactionSetImmediateModeRestrictedContext(uint64_t a1)
{
  result = C3DTransactionGetCurrent();
  result[6] = a1;
  return result;
}

void *C3DTransactionAddAnimationNode(void *result)
{
  v1 = gCurrentlyCommittedTransaction;
  if (gCurrentlyCommittedTransaction)
  {
    v2 = result;
    C3DAnimationNodeSetCompletionItem(result, gCurrentlyCommittedTransaction);
    result = C3DAnimationNodeGetCompletionCallbacks(v2, v3);
    *result = C3DTransactionAnimationDidComplete;
    result[1] = C3DTransactionAnimationDidInterrupt;
    ++*(v1 + 56);
  }

  return result;
}

void C3DTransactionAnimationDidComplete(uint64_t a1, uint64_t a2)
{
  CompletionItem = C3DAnimationNodeGetCompletionItem(a1, a2);
  if (!CompletionItem)
  {
    v5 = scn_default_log(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  os_unfair_lock_lock(&gCommandQueueLock);
  if (!*(CompletionItem + 56))
  {
    v15 = scn_default_log(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DTransactionAnimationDidComplete_cold_2(v15, v14, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(CompletionItem + 56) - 1;
  *(CompletionItem + 56) = v22;
  if (!v22)
  {
    C3DTransactionTestForDidComplete(CompletionItem, v14);
  }

  C3DAnimationNodeSetCompletionItem(a1, 0);
  CompletionCallbacks = C3DAnimationNodeGetCompletionCallbacks(a1, v23);
  *CompletionCallbacks = 0;
  CompletionCallbacks[1] = 0;
  os_unfair_lock_unlock(&gCommandQueueLock);
}

void C3DTransactionAnimationDidInterrupt(uint64_t a1, uint64_t a2)
{
  CompletionItem = C3DAnimationNodeGetCompletionItem(a1, a2);
  if (!CompletionItem)
  {
    v5 = scn_default_log(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  os_unfair_lock_lock(&gCommandQueueLock);
  if (!*(CompletionItem + 56))
  {
    v15 = scn_default_log(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DTransactionAnimationDidInterrupt_cold_2(v15, v14, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(CompletionItem + 56) - 1;
  *(CompletionItem + 56) = v22;
  if (!v22)
  {
    C3DTransactionTestForDidComplete(CompletionItem, v14);
  }

  C3DAnimationNodeSetCompletionItem(a1, 0);
  CompletionCallbacks = C3DAnimationNodeGetCompletionCallbacks(a1, v23);
  *CompletionCallbacks = 0;
  CompletionCallbacks[1] = 0;
  os_unfair_lock_unlock(&gCommandQueueLock);
}

void C3DTransactionGetCurrentlyCommittedTimingFunction()
{
  if (gCurrentlyCommittedTransaction)
  {
    if (!*(gCurrentlyCommittedTransaction + 24))
    {
      C3DTimingFunctionGetDefaultFunction();
    }
  }
}

double C3DTransactionGetCurrentlyCommittedDuration()
{
  result = 0.0;
  if (gCurrentlyCommittedTransaction)
  {
    if ((*(gCurrentlyCommittedTransaction + 60) & 4) == 0)
    {
      return *(gCurrentlyCommittedTransaction + 32);
    }
  }

  return result;
}

void C3DTransactionThreadDied(void *a1)
{
  if (a1)
  {
    if (*(a1 + 4))
    {
      C3DTransactionFlush();
    }

    os_unfair_lock_lock(&gCommandQueueLock);
    v2 = *(a1 + 1);
    if (*a1)
    {
      v3 = (*a1 + 8);
    }

    else
    {
      v3 = &gTransactionStacks;
    }

    *v3 = v2;
    if (v2)
    {
      *v2 = *a1;
    }

    os_unfair_lock_unlock(&gCommandQueueLock);
    v4 = *(a1 + 3);
    if (v4)
    {
      CFRunLoopObserverInvalidate(v4);
      CFRelease(*(a1 + 3));
    }

    CFRelease(*(a1 + 2));
  }

  free(a1);
}

dispatch_queue_t ___commitImplicitTransaction_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INTERACTIVE, 0);
  result = dispatch_queue_create("com.apple.scenekit.main-thread-implicit-transaction-flush", v1);
  _commitImplicitTransaction_queue = result;
  return result;
}

void C3DTransactionDidComplete(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

__CFString *SCNGeometrySemanticForMeshSourceSemantic(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_2783006F8[a1];
  }
}

uint64_t SCNGeometrySourceSemanticToMeshSourceSemantic(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticVertex"))
  {
    return 0;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 2;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 3;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 4;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 7;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 8;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 5;
  }

  if (objc_msgSend_isEqualToString_(a1))
  {
    return 6;
  }

  return 0;
}

uint64_t SCNGeometrySourceSemanticIsValid(void *a1, const char *a2)
{
  if (objc_msgSend_isEqualToString_(a1, a2, @"kGeometrySourceSemanticVertex") & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1) & 1) != 0 || (objc_msgSend_isEqualToString_(a1))
  {
    return 1;
  }

  return objc_msgSend_isEqualToString_(a1);
}

void __C3DMeshElementSetPrimitiveRanges(uint64_t a1, void *a2)
{
  v4 = [a2 count];
  v5 = v4;
  if (v4)
  {
    v6 = malloc_type_malloc(16 * v4, 0x1000040451B5BE8uLL);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ____C3DMeshElementSetPrimitiveRanges_block_invoke;
    v7[3] = &__block_descriptor_40_e24_v32__0__NSValue_8Q16_B24l;
    v7[4] = v6;
    [a2 enumerateObjectsUsingBlock:v7];
  }

  else
  {
    v6 = 0;
  }

  C3DMeshElementSetPrimitiveRangesNoCopy(a1, v6, v5);
}

void CPP3DAudioContext::~CPP3DAudioContext(id *this)
{
  [this[2] reset];
  [objc_msgSend(this[2] "engine")];
  [objc_msgSend(this[2] "engine")];
  [objc_msgSend(this[2] "engine")];

  v2 = this[4];
  if (v2 != this + 5)
  {
    do
    {
      v3 = v2[4];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = v2[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != this + 5);
  }

  std::__tree<char>::destroy((this + 4), this[5]);
}

CPP3DAudioEngine **CPP3DAudioContext::Init(CPP3DAudioEngine **this)
{
  if (!this[2])
  {
    v1 = this;
    [*(*this + 1) lock];
    v2 = *v1;
    if (v1[2])
    {
      v3 = *(v2 + 1);

      return [v3 unlock];
    }

    else
    {
      AVEngine = CPP3DAudioEngine::GetAVEngine(v2);
      if ([AVEngine mainMixerNode])
      {
        v6 = objc_alloc_init(MEMORY[0x277CB8390]);
        v1[2] = v6;
        [AVEngine attachNode:v6];
        v7 = [objc_alloc(MEMORY[0x277CB83A8]) initStandardFormatWithSampleRate:2 channels:44100.0];
        [AVEngine connect:v1[2] to:objc_msgSend(AVEngine format:{"mainMixerNode"), v7}];
      }

      else
      {
        v8 = scn_default_log(0, v5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          CPP3DAudioContext::Init(v8);
        }
      }

      return [*(*v1 + 1) unlock];
    }
  }

  return this;
}

id CPP3DAudioEngine::GetAVEngine(id *this)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN16CPP3DAudioEngine11GetAVEngineEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  if (CPP3DAudioEngine::GetAVEngine(void)::onceToken != -1)
  {
    dispatch_once(&CPP3DAudioEngine::GetAVEngine(void)::onceToken, block);
  }

  [this[1] lock];
  if (([*this isRunning] & 1) == 0)
  {
    v6 = 0;
    v2 = [*this startAndReturnError:&v6];
    if ((v2 & 1) == 0)
    {
      v4 = scn_default_log(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        CPP3DAudioEngine::GetAVEngine(&v6, v4);
      }

      *this = 0;
    }
  }

  [this[1] unlock];
  return *this;
}

uint64_t CPP3DAudioContext::AddVoice(CPP3DAudioEngine **this, void *a2)
{
  CPP3DAudioContext::Init(this);
  v4 = [a2 audioPlayer];
  if (([a2 customAudioNode] & 1) == 0)
  {
    AVEngine = CPP3DAudioEngine::GetAVEngine(*this);
    if ([v4 engine] != AVEngine)
    {
      [objc_msgSend(v4 "engine")];
      [AVEngine attachNode:v4];
    }

    [AVEngine connect:v4 to:this[2] format:{objc_msgSend(a2, "audioBufferFormat")}];
    if (v4)
    {
      [a2 play];
    }
  }

  v6 = [a2 nodeRef];
  v8 = v6;
  [*(*this + 1) lock];
  if (v6)
  {
    CFRetain(v6);
  }

  std::__tree<__C3DNode *>::__emplace_unique_key_args<__C3DNode *,__C3DNode * const&>((this + 4), &v8, &v8);
  return [*(*this + 1) unlock];
}

void *CPP3DAudioContext::RemoveVoice(id **this, void *a2)
{
  cf = [a2 nodeRef];
  result = [CPP3DAudioEngine::GetAVEngine(*this) detachNode:{objc_msgSend(a2, "audioNode")}];
  if (cf)
  {
    [(*this)[1] lock];
    std::__tree<__C3DNode *>::__erase_unique<__C3DNode *>(this + 4, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    return [(*this)[1] unlock];
  }

  return result;
}

uint64_t *CPP3DAudioContext::UpdateVoices(uint64_t *this, uint64_t a2)
{
  if (this[2])
  {
    v2 = this;
    v19.n128_u32[2] = 0;
    v19.n128_u64[0] = 0;
    PointOfViewForCulling = this[3];
    if (PointOfViewForCulling || (PointOfViewForCulling = C3DEngineContextGetPointOfViewForCulling(v2[1], a2)) != 0)
    {
      WorldMatrix = C3DNodeGetWorldMatrix(PointOfViewForCulling, a2);
      C3DMatrix4x4GetTranslation(WorldMatrix, &v19);
      v5 = v2[2];
      LODWORD(v7) = v19.n128_u32[2];
      LODWORD(v6) = v19.n128_u32[1];
      [v5 setListenerPosition:{v19.n128_f64[0], v6, v7}];
      v8 = *(WorldMatrix + 16);
      v9 = -COERCE_FLOAT(*(WorldMatrix + 40));
      v15 = vneg_f32(*(WorldMatrix + 32));
      v16 = v9;
      v17 = v8;
      v18 = DWORD2(v8);
      [v5 setListenerVectorOrientation:&v15];
    }

    [*(*v2 + 8) lock];
    v10 = v2[4];
    if (v10 != v2 + 5)
    {
      do
      {
        v11 = v10[4];
        if (v11)
        {
          C3DNodeUpdateAudioPlayers(v11);
        }

        v12 = v10[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v10[2];
            v14 = *v13 == v10;
            v10 = v13;
          }

          while (!v14);
        }

        v10 = v13;
      }

      while (v13 != v2 + 5);
    }

    return [*(*v2 + 8) unlock];
  }

  return this;
}

void CPP3DAudioEngine::CPP3DAudioEngine(CPP3DAudioEngine *this)
{
  *this = 0;
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 1) = objc_alloc_init(MEMORY[0x277CCAC60]);
}

void sub_21C14BA1C(_Unwind_Exception *a1)
{
  std::__tree<char>::destroy(v2, *v4);
  std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(v1, *v3);
  _Unwind_Resume(a1);
}

void *CPP3DAudioEngine::GetContext(id *this, __C3DEngineContext *a2)
{
  Scene = C3DEngineContextGetScene(a2, a2);
  if (Scene)
  {
    [this[1] lock];
    v5 = this[3];
    if (!v5)
    {
      goto LABEL_18;
    }

    v6 = this + 3;
    do
    {
      v7 = v5[4];
      v8 = v7 >= Scene;
      v9 = v7 < Scene;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 == this + 3)
    {
      goto LABEL_18;
    }

    if (Scene < v6[4])
    {
      goto LABEL_18;
    }

    v12 = v6[6];
    v10 = v6 + 6;
    v11 = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = v10;
    do
    {
      v14 = v11[4];
      v8 = v14 >= a2;
      v15 = v14 < a2;
      if (v8)
      {
        v13 = v11;
      }

      v11 = v11[v15];
    }

    while (v11);
    if (v13 == v10 || v13[4] > a2)
    {
LABEL_18:
      operator new();
    }

    Scene = v13[5];
    [this[1] unlock];
  }

  return Scene;
}

uint64_t CPP3DAudioEngine::RemoveContext(id *this, __C3DEngineContext *a2)
{
  Scene = C3DEngineContextGetScene(a2, a2);
  [this[1] lock];
  if (Scene)
  {
    v5 = this[3];
    if (v5)
    {
      v6 = this + 3;
      do
      {
        v7 = v5[4];
        v8 = v7 >= Scene;
        v9 = v7 < Scene;
        if (v8)
        {
          v6 = v5;
        }

        v5 = v5[v9];
      }

      while (v5);
      if (v6 != this + 3 && Scene >= v6[4])
      {
        v10 = v6[6];
        if (v10)
        {
          v11 = (v6 + 6);
          do
          {
            v12 = v10[4];
            v8 = v12 >= a2;
            v13 = v12 < a2;
            if (v8)
            {
              v11 = v10;
            }

            v10 = v10[v13];
          }

          while (v10);
          if (v11 != (v6 + 6) && v11[4] <= a2)
          {
            v14 = v11[5];
            if (v14)
            {
              CPP3DAudioContext::~CPP3DAudioContext(v14);
              MEMORY[0x21CF07610]();
            }

            std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(v6 + 5, v11);
            operator delete(v11);
          }
        }

        if (!v6[7])
        {
          std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(this + 2, v6);
        }
      }
    }
  }

  else
  {
    v15 = this[2];
    if (v15 != this + 3)
    {
      do
      {
        v16 = v15[6];
        if (v16)
        {
          v17 = (v15 + 6);
          do
          {
            v18 = v16[4];
            v8 = v18 >= a2;
            v19 = v18 < a2;
            if (v8)
            {
              v17 = v16;
            }

            v16 = v16[v19];
          }

          while (v16);
          if (v17 != (v15 + 6) && v17[4] <= a2)
          {
            v20 = v17[5];
            if (v20)
            {
              CPP3DAudioContext::~CPP3DAudioContext(v20);
              MEMORY[0x21CF07610]();
            }

            std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(v15 + 5, v17);
            operator delete(v17);
          }
        }

        if (v15[7])
        {
          v21 = v15[1];
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = v15[2];
              v23 = *v22 == v15;
              v15 = v22;
            }

            while (!v23);
          }
        }

        else
        {
          v22 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(this + 2, v15);
        }

        v15 = v22;
      }

      while (v22 != this + 3);
    }
  }

  v24 = this[1];

  return [v24 unlock];
}

void ___ZN16CPP3DAudioEngine11GetAVEngineEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *v1 = objc_alloc_init(MEMORY[0x277CB8388]);
  v2 = objc_alloc_init(MEMORY[0x277CB83E0]);
  [*v1 attachNode:v2];
  [*v1 connect:v2 to:objc_msgSend(*v1 format:{"mainMixerNode"), 0}];
}

uint64_t CPP3DAudioEngine::AddVoice(id *this, void *a2)
{
  [a2 audioPlayer];
  result = [a2 customAudioNode];
  if ((result & 1) == 0)
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if ((result & 1) == 0)
    {
      [this[1] lock];
      v11 = [a2 scene];
      v12 = &v11;
      v5 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>((this + 2), &v11, &std::piecewise_construct, &v12);
      v6 = v5[5];
      v7 = v5 + 6;
      if (v6 != v5 + 6)
      {
        do
        {
          CPP3DAudioContext::AddVoice(v6[5], a2);
          v8 = v6[1];
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
        }

        while (v9 != v7);
      }

      return [this[1] unlock];
    }
  }

  return result;
}

uint64_t CPP3DAudioEngine::RemoveVoice(id *this, void *a2)
{
  result = [a2 customAudioNode];
  if ((result & 1) == 0)
  {
    [this[1] lock];
    v11 = [a2 scene];
    v12 = &v11;
    v5 = std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>((this + 2), &v11, &std::piecewise_construct, &v12);
    v6 = v5[5];
    v7 = v5 + 6;
    if (v6 != v5 + 6)
    {
      do
      {
        CPP3DAudioContext::RemoveVoice(v6[5], a2);
        v8 = v6[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v6[2];
            v10 = *v9 == v6;
            v6 = v9;
          }

          while (!v10);
        }

        v6 = v9;
      }

      while (v9 != v7);
    }

    return [this[1] unlock];
  }

  return result;
}

void *C3DAudioPlayerSetTransform(void *a1, __n128 *a2)
{
  v6.n128_u32[2] = 0;
  v6.n128_u64[0] = 0;
  v2 = [a1 audioNode];
  result = [v2 conformsToProtocol:&unk_282E58078];
  if (result)
  {
    LODWORD(v5) = v6.n128_u32[2];
    LODWORD(v4) = v6.n128_u32[1];
    return [v2 setPosition:{v6.n128_f64[0], v4, v5}];
  }

  return result;
}

uint64_t C3DAudioPlayerPlay(void *a1)
{
  [a1 audioPlayer];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = [a1 audioPlayer];
    result = [v3 engine];
    if (result)
    {
      return [v3 play];
    }
  }

  return result;
}

uint64_t C3DAudioManagerAddVoice(void *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::AddVoice(v2, a1);
}

uint64_t C3DAudioManagerRemoveVoice(void *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::RemoveVoice(v2, a1);
}

void *C3DAudioManagerSetListener(__C3DEngineContext *a1, uint64_t a2)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {
    result[3] = a2;
  }

  return result;
}

uint64_t C3DAudioManagerGetListener(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  return CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1)[3];
}

uint64_t *C3DAudioManagerUpdateNodes(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {

    return CPP3DAudioContext::UpdateVoices(result, v3);
  }

  return result;
}

CPP3DAudioEngine **C3DAudioManagerGetAudioEnvironmentNode(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  result = CPP3DAudioEngine::GetContext(gCPP3DAudioEngineInstance, a1);
  if (result)
  {
    v3 = result;
    CPP3DAudioContext::Init(result);
    return v3[2];
  }

  return result;
}

void *C3DAudioManagerUpdateEngineContext(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::GetContext(v2, a1);
}

uint64_t C3DAudioManagerRemoveEngineContext(__C3DEngineContext *a1)
{
  if (CPP3DAudioEngine::GetEngine(void)::onceToken != -1)
  {
    C3DAudioManagerAddVoice_cold_1();
  }

  v2 = gCPP3DAudioEngineInstance;

  return CPP3DAudioEngine::RemoveContext(v2, a1);
}

void *std::__tree<__C3DNode *>::__emplace_unique_key_args<__C3DNode *,__C3DNode * const&>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<__C3DNode *>::__erase_unique<__C3DNode *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::destroy(a1, a2[1]);
    std::__tree<char>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::__emplace_unique_key_args<__C3DScene *,std::piecewise_construct_t const&,std::tuple<__C3DScene * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::__map_value_compare<__C3DScene *,std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>,std::less<__C3DScene *>,true>,std::allocator<std::__value_type<__C3DScene *,std::map<__C3DEngineContext *,CPP3DAudioContext *>>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<__C3DMesh *,WireframeMesh *>,std::__map_value_compare<__C3DMesh *,std::__value_type<__C3DMesh *,WireframeMesh *>,std::less<__C3DMesh *>,true>,std::allocator<std::__value_type<__C3DMesh *,WireframeMesh *>>>::__remove_node_pointer(a1, a2);
  std::__tree<char>::destroy(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t C3D::getBlueNoise32(void *a1, uint64_t a2, C3D::RenderGraphResourceManager *this)
{
  v4 = C3D::RenderGraphResourceManager::get(this, 0xD877AC05CAC46D3ELL);
  if (!v4)
  {
    operator new();
  }

  return C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v4 + 16, v3);
}

uint64_t SCNMTLBlitCommandEncoder::copyBufferToTexture(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  [a4 pixelFormat];
  v12 = SCNMTLPixelFormatGetBitSize() >> 3;
  v13 = [a4 width] * v12;
  v14 = [a4 height] * v13;
  v15 = [a4 width];
  v16 = [a4 height];
  v17 = [a4 depth];
  memset(v20, 0, sizeof(v20));
  v21[0] = v15;
  v18 = *a1;
  v21[1] = v16;
  v21[2] = v17;
  return [v18 copyFromBuffer:a2 sourceOffset:a3 sourceBytesPerRow:v13 sourceBytesPerImage:v14 sourceSize:v21 toTexture:a4 destinationSlice:a5 destinationLevel:a6 destinationOrigin:v20];
}

uint64_t C3D::getGrainNoise256(void *a1, uint64_t a2, C3D::RenderGraphResourceManager *this)
{
  v4 = C3D::RenderGraphResourceManager::get(this, 0x2D6F9F4D8FCEC7B4);
  if (!v4)
  {
    operator new();
  }

  return C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v4 + 16, v3);
}

void C3D::SingleTextureResource::~SingleTextureResource(C3D::SingleTextureResource *this)
{
  *this = &unk_282DC7620;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7620;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3DAuthoringEnvironmentAppendWireframeMesh(void *a1, __C3DMesh *a2, C3DColor4 *a3, uint64_t a4)
{
  v8 = a1[1];
  RendererContextGL = C3DEngineContextGetRendererContextGL(v8, a2);
  v10 = a1[8];
  if (RendererContextGL)
  {
    if (v10)
    {
      goto LABEL_7;
    }

    BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-wireframe");
  }

  else
  {
    if (v10)
    {
      goto LABEL_7;
    }

    BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorWireframe_vert", @"ManipulatorWireframe_frag");
  }

  a1[8] = BuiltInProgramWithName;
LABEL_7:
  v23 = 0;
  if (a3)
  {
    v23 = *a3;
  }

  else
  {
    C3DColor4Make(v23.var0.var0, 1.0, 1.0, 1.0, 1.0);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (a4)
  {
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    Matrix4x4 = C3DEngineContextGetMatrix4x4(v8, 1);
    v13 = C3DEngineContextGetMatrix4x4(v8, 0);
    C3DMatrix4x4Mult(Matrix4x4, v13, &v15);
    C3DMatrix4x4Mult(a4, &v15, &v19);
  }

  else
  {
    C3DMatrix4x4MakeIdentity(&v19);
  }

  v14 = a1[8226];
  v15 = v19;
  v16 = v20;
  v17 = v21;
  v18 = v22;
  C3DWireframeAddInstance(v14, a2, v23, &v15);
}

uint64_t C3DAuthoringEnvironmentCreate(uint64_t a1)
{
  v2 = [SCNAuthoringEnvironment alloc];

  return [(SCNAuthoringEnvironment *)v2 _initWithEngineContext:a1];
}

void *C3DAuthoringEnvironmentCopySettings(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 0x10000);
  v3 = a1 + 0x10000;
  *(a2 + 65712) = *(a2 + 65712) & 0xFE | *(a1 + 65712) & 1;
  *(a2 + 65800) = [*(a1 + 65800) mutableCopyWithZone:0];
  v2[21] = *(v3 + 168);
  v2[30] = [*(v3 + 240) copy];
  result = [*(v3 + 232) mutableCopy];
  v2[29] = result;
  return result;
}

uint64_t C3DAuthoringEnvironmentRegisterProcessedJoint(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1632);
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    *(a1 + 1632) = v4;
  }

  return [v4 addObject:a2];
}

uint64_t C3DAuthoringEnvironmentGetDisplayMask(void *a1)
{
  objc_sync_enter(a1);
  v2 = [a1 authoringDisplayMask];
  objc_sync_exit(a1);
  return v2;
}

void __appendVerticesAndIndices(uint64_t RendererContextGL, uint64_t a2, unsigned int a3, __int16 *a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = RendererContextGL;
  if (*(a6 + 12) + a3 <= *(a6 + 20) && *(a6 + 8) + a5 <= *(a6 + 24))
  {
    goto LABEL_6;
  }

  if (a7)
  {
    if (*(a6 + 8))
    {
      __flush(RendererContextGL, a6);
    }

LABEL_6:
    if (*(a6 + 56))
    {
LABEL_76:
      v92 = *(a6 + 72);
      v93 = *(a6 + 96);
      v95 = *(a6 + 12);
      v94 = *(a6 + 16);
      v96 = v92 * v95;
      if (v94 == 12)
      {
        if (a3)
        {
          v108 = a3;
          v109 = (a2 + 8);
          v110 = (v96 + v93 + 8);
          do
          {
            *(v110 - 2) = *(v109 - 2);
            *(v110 - 1) = *(v109 - 1);
            v111 = *v109;
            v109 += 3;
            *v110 = v111;
            v110 = (v110 + v92);
            --v108;
          }

          while (v108);
        }
      }

      else
      {
        v97 = *(a6 + 80);
        v98 = (*(a6 + 104) + v97 * v95);
        if (v94 == 16)
        {
          if (a3)
          {
            v105 = a3;
            v106 = (a2 + 8);
            v107 = (v96 + v93 + 8);
            do
            {
              *(v107 - 2) = *(v106 - 2);
              *(v107 - 1) = *(v106 - 1);
              *v107 = *v106;
              *v98 = v106[1];
              v106 += 4;
              v107 = (v107 + v92);
              v98 = (v98 + v97);
              --v105;
            }

            while (v105);
          }
        }

        else if (v94 == 20 && a3)
        {
          v99 = *(a6 + 88);
          v100 = v99 * v95;
          v101 = a3;
          v102 = (v96 + v93 + 4);
          v103 = (a2 + 8);
          v104 = (v100 + *(a6 + 112) + 4);
          do
          {
            *(v102 - 1) = *(v103 - 2);
            *v102 = *(v103 - 1);
            *v98 = v103[2];
            *(v104 - 1) = *v103;
            v102 = (v102 + v92);
            *v104 = v103[1];
            v98 = (v98 + v97);
            v103 += 5;
            v104 = (v104 + v99);
            --v101;
          }

          while (v101);
        }
      }

      VolatileDataPtr = C3DMeshElementGetVolatileDataPtr(*(a6 + 64), a2);
      v113 = *(a6 + 8);
      if (VolatileDataPtr)
      {
        v114 = *(a6 + 12);
        if (a5)
        {
          v115 = (VolatileDataPtr + 2 * v113);
          v116 = a5;
          do
          {
            v117 = *a4++;
            *v115++ = v117 + v114;
            --v116;
          }

          while (v116);
        }
      }

      else
      {
        v114 = *(a6 + 12);
      }

      *(a6 + 8) = v113 + a5;
      *(a6 + 12) = v114 + a3;
      return;
    }

    if (*(a6 + 53) != 1)
    {
      goto LABEL_73;
    }

    v13 = *(v12 + 8);
    RenderContext = C3DEngineContextGetRenderContext(v13, a2);
    if ([*(a6 + 128) count])
    {
      Volatile = [*(a6 + 128) anyObject];
      [*(a6 + 120) addObject:Volatile];
      [*(a6 + 128) removeObject:Volatile];
    }

    else
    {
      Volatile = C3DMeshCreateVolatile(0, v14);
      [*(a6 + 120) addObject:Volatile];
      CFRelease(Volatile);
      v20 = v12 + 88 == a6 || v12 + 240 == a6 || v12 + 1152 == a6;
      v21 = 1;
      if (v12 + 392 != a6 && v12 + 544 != a6 && v12 + 848 != a6)
      {
        v21 = v12 + 696 == a6 || v12 + 1000 == a6;
      }

      v118 = v20;
      if (v20)
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }

      v24 = C3DMeshSourceCreateVolatile(0, v23, 1);
      C3DMeshAddSource(Volatile, v24, 0, 0);
      if (v24)
      {
        CFRelease(v24);
      }

      v25 = v118;
      if (v21 || v118 || v12 + 1304 == a6)
      {
        v26 = C3DMeshSourceCreateVolatile(2, 4, 21);
        C3DMeshAddSource(Volatile, v26, 0, 0);
        v25 = v118;
        if (v26)
        {
          CFRelease(v26);
          v25 = v118;
        }
      }

      if (v25)
      {
        v27 = C3DMeshSourceCreateVolatile(3, 2, 1);
        C3DMeshAddSource(Volatile, v27, 0, 0);
        if (v27)
        {
          CFRelease(v27);
        }
      }

      *(a6 + 20) = 0x200000002000;
    }

    RendererContextGL = C3DEngineContextGetRendererContextGL(v13, v16);
    v28 = RendererContextGL;
    if (RendererContextGL)
    {
      RendererContextGL = C3DMeshIsVolatile(Volatile, a2);
      if (RendererContextGL)
      {
        ResourceManager = C3DEngineContextGetResourceManager(*(v12 + 8), a2);
        RendererContextGL = C3DRendererContextMapVolatileMesh(v28, ResourceManager, Volatile, 0x2000, 1);
        if (!RendererContextGL)
        {
LABEL_73:
          if (!*(a6 + 56))
          {
            v85 = scn_default_log(RendererContextGL, a2);
            if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
            {
              __appendVerticesAndIndices_cold_5(v85, a2, v86, v87, v88, v89, v90, v91);
            }
          }

          goto LABEL_76;
        }
      }
    }

    if (*(a6 + 48) == 1)
    {
      v30 = 2;
      v31 = 4096;
      if (!v28)
      {
LABEL_56:
        v42 = RenderContext;
        v43 = [(SCNMTLRenderContext *)RenderContext createVolatileMeshElementOfType:v30 primitiveCount:v31 bytesPerIndex:2];
        v33 = v43;
LABEL_59:
        *(a6 + 56) = Volatile;
        *(a6 + 64) = v33;
        if (v42)
        {
          v43 = [(SCNMTLRenderContext *)v42 mapVolatileMesh:0x2000 verticesCount:?];
        }

        if (*(a6 + 12))
        {
          v45 = scn_default_log(v43, v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            __appendVerticesAndIndices_cold_3(v45, v46, v47, v48, v49, v50, v51, v52);
          }
        }

        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 0, 0, 1);
        Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex, v54, v55, v56, v57, v58, v59, v60);
        *(a6 + 72) = C3DSceneSourceGetLibrary(Accessor);
        *(a6 + 96) = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
        VolatileValuePtrAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 3, 0, 1);
        if (VolatileValuePtrAtIndex)
        {
          v70 = C3DMeshSourceGetAccessor(VolatileValuePtrAtIndex, v63, v64, v65, v66, v67, v68, v69);
          *(a6 + 88) = C3DSceneSourceGetLibrary(v70);
          VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(v70, 0);
        }

        else
        {
          *(a6 + 88) = 0;
        }

        *(a6 + 112) = VolatileValuePtrAtIndex;
        RendererContextGL = C3DMeshGetSourceWithSemanticAtIndex(*(a6 + 56), 2, 0, 1);
        if (RendererContextGL)
        {
          v77 = C3DMeshSourceGetAccessor(RendererContextGL, a2, v71, v72, v73, v74, v75, v76);
          *(a6 + 80) = C3DSceneSourceGetLibrary(v77);
          RendererContextGL = C3DSourceAccessorGetVolatileValuePtrAtIndex(v77, 0);
        }

        else
        {
          *(a6 + 80) = 0;
        }

        *(a6 + 104) = RendererContextGL;
        if (*(a6 + 8))
        {
          v78 = scn_default_log(RendererContextGL, a2);
          RendererContextGL = os_log_type_enabled(v78, OS_LOG_TYPE_FAULT);
          if (RendererContextGL)
          {
            __appendVerticesAndIndices_cold_4(v78, a2, v79, v80, v81, v82, v83, v84);
          }
        }

        goto LABEL_73;
      }
    }

    else if (*(a6 + 48))
    {
      v34 = scn_default_log(RendererContextGL, a2);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        __appendVerticesAndIndices_cold_2(v34, v35, v36, v37, v38, v39, v40, v41);
      }

      v30 = 0;
      v31 = 0x2000;
      if (!v28)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v30 = 0;
      v31 = 2730;
      if (!v28)
      {
        goto LABEL_56;
      }
    }

    if ([*(a6 + 144) count])
    {
      v33 = [*(a6 + 144) anyObject];
      [*(a6 + 136) addObject:v33];
      [*(a6 + 144) removeObject:v33];
    }

    else
    {
      v33 = C3DMeshElementCreateVolatile(0, v32);
      [*(a6 + 136) addObject:v33];
      C3DMeshElementSetType(v33, v30);
      C3DMeshElementSetPrimitives(v33, 0, 0, 2);
      C3DMeshAppendElement(Volatile, v33);
      CFRelease(v33);
    }

    v43 = C3DRendererContextMapVolatileMeshElement(v28, v33, v31, 1);
    v42 = RenderContext;
    goto LABEL_59;
  }

  v17 = scn_default_log(RendererContextGL, a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __appendVerticesAndIndices_cold_1();
  }
}

void __flush(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  RenderContext = C3DEngineContextGetRenderContext(v4, a2);
  if (RenderContext)
  {
    v7 = RenderContext;
    v8 = *(a2 + 56);
    if (v8)
    {
      [(SCNMTLRenderContext *)RenderContext unmapVolatileMesh:v8 modifiedVerticesCount:*(a2 + 12)];
    }

    v6 = *(a2 + 64);
    if (v6)
    {
      [(SCNMTLRenderContext *)v7 unmapVolatileMeshElement:v6];
    }
  }

  v9 = (a2 + 56);
  if (*(a2 + 56))
  {
    if (*(a2 + 53) != 1)
    {
      goto LABEL_14;
    }

    if (!*(a2 + 12))
    {
      goto LABEL_51;
    }

    if (*(a2 + 48) == 1)
    {
      v10 = *(a2 + 8) >> 1;
    }

    else
    {
      if (*(a2 + 48))
      {
        goto LABEL_14;
      }

      v10 = *(a2 + 8) / 3u;
    }

    C3DMeshElementSetPrimitiveRange(*(a2 + 64), 0, v10);
LABEL_14:
    v11 = *(a1 + 8);
    v12 = C3DEngineContextGetRenderContext(v11, v6);
    v13 = [(SCNMTLRenderContext *)v12 contentScaleFactor];
    RendererContextGL = C3DEngineContextGetRendererContextGL(v11, v14);
    v16 = RendererContextGL;
    if (RendererContextGL)
    {
      ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
    }

    else
    {
      ContentScaleFactor = v13;
    }

    v63 = 0u;
    v64 = 0u;
    *value = 0u;
    v62 = 0u;
    if (*(a2 + 49))
    {
      v54 = ContentScaleFactor;
      v55[0] = xmmword_21C2A39A0;
      C3DMatrix4x4MakeTranslation(value, v55);
      Viewport = C3DEngineContextGetViewport(v11);
      __asm { FMOV            V1.2S, #1.0 }

      v60 = HIDWORD(_D1);
      v59 = 1065353216;
      v58 = vmul_n_f32(vdiv_f32(0x4000000040000000, *&vextq_s8(Viewport, Viewport, 8uLL)), v54);
      C3DMatrix4x4Scale(value, &v58);
      if (!v16)
      {
        goto LABEL_41;
      }
    }

    else
    {
      Matrix4x4 = C3DEngineContextGetMatrix4x4(v11, 1);
      v26 = C3DEngineContextGetMatrix4x4(v11, 0);
      C3DMatrix4x4Mult(Matrix4x4, v26, value);
      if (!v16)
      {
LABEL_41:
        if (v12)
        {
          v45 = *a2;
          if (*a2)
          {
            v46 = 1616;
            if (*(a2 + 52))
            {
              v46 = 1600;
            }

            v47 = 1624;
            if (*(a2 + 52))
            {
              v47 = 1608;
            }

            if (*(a2 + 51))
            {
              v48 = v46;
            }

            else
            {
              v48 = v47;
            }

            v49 = *(a1 + v48);
            v55[0] = *value;
            v55[1] = v62;
            v55[2] = v63;
            v55[3] = v64;
            v56 = 0;
            v57 = 0;
            v50 = *(a2 + 56);
            v51 = *(a2 + 64);
            v52 = C3DBlendStatesDefaultOver(v24, v6);
            [(SCNMTLRenderContext *)v12 authoring_renderMesh:v50 meshElement:v51 withProgram:v45 uniforms:v55 uniformsLength:80 rasterizerStates:v49 blendStates:v52 texture:*(a2 + 32) depthBias:0];
          }
        }

        goto LABEL_51;
      }
    }

    glPushGroupMarkerEXT(0, "AuthEnvDraw");
    ResourceManager = C3DEngineContextGetResourceManager(v11, v27);
    if (*(a2 + 50) == 1)
    {
      C3DRendererContextClear(v16, 0x100u, 0);
    }

    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, *a2, v16, 0);
    if (ProgramResident)
    {
      v30 = ProgramResident;
      C3DRendererContextBindProgramObject(v16, ProgramResident);
      v33 = C3DBlendStatesDefaultOver(v31, v32);
      C3DRendererContextSetBlendStates(v16, v33);
      C3DRendererContextSetEnableReadsFromDepth(v16, *(a2 + 51));
      UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v30, @"u_modelViewProjectionTransform");
      C3DRendererContextSetMatrix4x4UniformAtLocation(v16, UniformLocationOfSymbolNamed, value, 1);
      C3DRendererContextSetEnable(v16, 2, *(a2 + 52));
      if (*(a2 + 32))
      {
        Default = C3DTextureSamplerGetDefault(v35, v36);
        v38 = *(a2 + 40);
        if (!v38)
        {
          ImageResident = C3DResourceManagerMakeImageResident(ResourceManager, *(a2 + 32), Default, v16);
          v38 = *(a2 + 40);
          if (v38 != ImageResident)
          {
            v40 = ImageResident;
            if (v38)
            {
              CFRelease(*(a2 + 40));
              *(a2 + 40) = 0;
            }

            if (v40)
            {
              v38 = CFRetain(v40);
            }

            else
            {
              v38 = 0;
            }

            *(a2 + 40) = v38;
          }
        }

        if (v38 && Default)
        {
          C3DRendererContextBindTexture(v16, v38, Default, 0, 0);
          v41 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v30, @"u_sampler");
          C3DRendererContextSetIntUniformAtLocation(v16, v41, 0);
          C3DFXGLSLProgramObjectSetUniformValueAtIndex(v30, 0, 0);
        }
      }

      v43 = *(a2 + 56);
      v42 = *(a2 + 64);
      if (*(a2 + 53) == 1)
      {
        C3DRendererContextUnmapVolatileMesh(v16, *(a2 + 56));
        C3DRendererContextUnmapVolatileMeshElement(v16, v42);
      }

      C3DRendererContextBindMesh(v16, ResourceManager, v43);
      C3DRendererContextBindMeshElement(v16, ResourceManager, v42);
      C3DRendererContextRenderResidentMeshElement(v16, v44);
      C3DRendererContextUnbindProgramObject(v16);
      if (*(a2 + 53) == 1)
      {
        *v9 = 0;
        *(a2 + 64) = 0;
      }
    }

    glPopGroupMarkerEXT();
    goto LABEL_41;
  }

LABEL_51:
  *(a2 + 8) = 0;
  if (C3DEngineContextGetRendererContextGL(v4, v6))
  {
    v53 = *(a2 + 64);
    if (v53)
    {
      CFRelease(v53);
      *(a2 + 64) = 0;
    }

    if (*v9)
    {
      CFRelease(*v9);
    }
  }

  *v9 = 0;
  *(a2 + 64) = 0;
}

uint64_t C3DAuthoringEnvironmentSceneDidChange(uint64_t HasSelectedNodes, uint64_t a2)
{
  v3 = HasSelectedNodes;
  v4 = HasSelectedNodes + 0x10000;
  if (*(HasSelectedNodes + 65752) & 1) != 0 || (HasSelectedNodes = C3DAuthoringEnvironmentHasSelectedNodes(HasSelectedNodes), (HasSelectedNodes) || *(v4 + 248) == 1)
  {
    v5 = v3[1];
    SharedInstance = C3DNotificationCenterGetSharedInstance(HasSelectedNodes, a2);
    Scene = C3DEngineContextGetScene(v5, v7);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
  }

  return [v3 sceneDidChange:a2];
}

uint64_t C3DAuthoringEnvironmentBeginFrame(id *a1)
{
  v2 = a1 + 0x2000;
  objc_sync_enter(a1);
  *(v2 + 70) = 0;
  [a1 update];
  v3 = v2[33];
  if (v3)
  {
    [v3 removeAllObjects];
  }

  else
  {
    v2[33] = [MEMORY[0x277CBEB18] array];
  }

  [a1[204] removeAllObjects];

  return objc_sync_exit(a1);
}

void C3DAuthoringEnvironmentEndFrame(uint64_t a1)
{
  __flush(a1, a1 + 88);
  __flush(a1, a1 + 240);
  __flush(a1, a1 + 392);
  __flush(a1, a1 + 544);
  __flush(a1, a1 + 696);
  __flush(a1, a1 + 848);
  __flush(a1, a1 + 1000);
  __flush(a1, a1 + 1152);
  __flush(a1, a1 + 1304);
  __recycleMeshes(a1, a1 + 88);
  __recycleMeshes(a1, a1 + 240);
  __recycleMeshes(a1, a1 + 392);
  __recycleMeshes(a1, a1 + 544);
  __recycleMeshes(a1, a1 + 696);
  __recycleMeshes(a1, a1 + 848);
  __recycleMeshes(a1, a1 + 1000);
  __recycleMeshes(a1, a1 + 1152);

  __recycleMeshes(a1, a1 + 1304);
}

void __recycleMeshes(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  if (*(a2 + 53) == 1)
  {
    v3 = *(a1 + 8);
    RendererContextGL = C3DEngineContextGetRendererContextGL(v3, a2);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = *(a2 + 120);
    v6 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v36 + 1) + 8 * i);
          if (RendererContextGL)
          {
            SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(*(*(&v36 + 1) + 8 * i), 0, 0, 1);
            Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex, v12, v13, v14, v15, v16, v17, v18);
            if (C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0))
            {
              C3DRendererContextUnmapVolatileMesh(RendererContextGL, *(a2 + 56));
            }
          }

          [*(a2 + 128) addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v7);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v20 = *(a2 + 136);
    v21 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v33;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(a2 + 144) addObject:*(*(&v32 + 1) + 8 * j)];
        }

        v22 = [v20 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v22);
    }

    [*(a2 + 120) removeAllObjects];
    [*(a2 + 136) removeAllObjects];
    RenderContext = C3DEngineContextGetRenderContext(v3, v25);
    if (RenderContext)
    {
      v27 = RenderContext;
      v28 = *(a2 + 56);
      if (v28)
      {
        [(SCNMTLRenderContext *)RenderContext unmapVolatileMesh:v28 modifiedVerticesCount:*(a2 + 12)];
      }

      v29 = *(a2 + 64);
      if (v29)
      {
        [(SCNMTLRenderContext *)v27 unmapVolatileMeshElement:v29];
      }
    }

    if (RendererContextGL)
    {
      v30 = *(a2 + 64);
      if (v30)
      {
        CFRelease(v30);
        *(a2 + 64) = 0;
      }

      v31 = *(a2 + 56);
      if (v31)
      {
        CFRelease(v31);
      }
    }

    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
  }
}

void C3DAuthoringEnvironmentDrawOrigin(uint64_t a1)
{
  if ((*(a1 + 65705) & 0x80) == 0)
  {
    return;
  }

  __createGLInfoIfNeeded(a1, a1 + 392);
  for (i = 0; ; ++i)
  {
    v4 = &C3DAuthoringEnvironmentColorRed;
    v5 = xmmword_21C27F910;
    if (!i)
    {
      goto LABEL_6;
    }

    if (i != 1)
    {
      break;
    }

    v4 = &C3DAuthoringEnvironmentColorGreen;
    v5 = xmmword_21C27F8C0;
LABEL_6:
    __appendSegment(a1, 0, v4->var0.var0, v4->var0.var0, a1 + 392, 0, v5);
  }

  __appendSegment(a1, 0, C3DAuthoringEnvironmentColorBlue, C3DAuthoringEnvironmentColorBlue, a1 + 392, 0, xmmword_21C27F600);

  __flush(a1, a1 + 696);
}

void __createGLInfoIfNeeded(uint64_t *result, uint64_t a2)
{
  if (*a2)
  {
    return;
  }

  v4 = result + 11 == a2 || result + 30 == a2;
  v5 = result + 49;
  v7 = v4 || result + 144 == a2;
  v46 = v7;
  v8 = result + 68;
  v9 = result + 106;
  v10 = result + 125;
  v11 = result + 87;
  v16 = v5 == a2 || v8 == a2 || v9 == a2 || v11 == a2 || v10 == a2;
  if (!*(a2 + 120))
  {
    *(a2 + 120) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 128))
  {
    *(a2 + 128) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 136))
  {
    *(a2 + 136) = [MEMORY[0x277CBEB58] set];
  }

  if (!*(a2 + 144))
  {
    *(a2 + 144) = [MEMORY[0x277CBEB58] set];
  }

  v45 = result + 163;
  v17 = result[1];
  RenderContext = C3DEngineContextGetRenderContext(v17, a2);
  RendererContextGL = C3DEngineContextGetRendererContextGL(v17, v19);
  v22 = RendererContextGL;
  if (RendererContextGL)
  {
    if (v46)
    {
      BuiltInProgramWithName = result[6];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorColorAndTexture");
LABEL_42:
        result[6] = BuiltInProgramWithName;
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    if (v16)
    {
      BuiltInProgramWithName = result[5];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorColorOnly");
LABEL_55:
        result[5] = BuiltInProgramWithName;
        goto LABEL_58;
      }

      goto LABEL_58;
    }

    if (v45 == a2)
    {
      BuiltInProgramWithName = result[7];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3DManipulatorLightProbe");
        result[7] = BuiltInProgramWithName;
      }

      goto LABEL_58;
    }

    v25 = scn_default_log(RendererContextGL, v21);
    BuiltInProgramWithName = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (!BuiltInProgramWithName)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (RenderContext)
  {
    if (v46)
    {
      BuiltInProgramWithName = result[6];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorAndTexture_vert", @"ManipulatorColorAndTexture_frag");
        goto LABEL_42;
      }

LABEL_43:
      v24 = 20;
LABEL_59:
      *(a2 + 16) = v24;
      *a2 = BuiltInProgramWithName;
      goto LABEL_60;
    }

    if (v16)
    {
      BuiltInProgramWithName = result[5];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
        goto LABEL_55;
      }

LABEL_58:
      v24 = 16;
      goto LABEL_59;
    }

    if (v45 == a2)
    {
      BuiltInProgramWithName = result[7];
      if (!BuiltInProgramWithName)
      {
        BuiltInProgramWithName = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorLightProbe_vert", @"ManipulatorLightProbe_frag");
        result[7] = BuiltInProgramWithName;
      }

      v24 = 12;
      goto LABEL_59;
    }

    v43 = scn_default_log(0, v21);
    BuiltInProgramWithName = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (BuiltInProgramWithName)
    {
LABEL_49:
      __createGLInfoIfNeeded_cold_1();
    }
  }

  else
  {
    v26 = scn_default_log(0, v21);
    BuiltInProgramWithName = os_log_type_enabled(v26, OS_LOG_TYPE_FAULT);
    if (BuiltInProgramWithName)
    {
      __createGLInfoIfNeeded_cold_3(v26, v21, v27, v28, v29, v30, v31, v32);
    }
  }

LABEL_60:
  if (v5 == a2)
  {
    *(a2 + 48) = 1;
  }

  else
  {
    if (v8 == a2)
    {
      *(a2 + 48) = 1;
      *(a2 + 51) = 0;
      goto LABEL_70;
    }

    if (v9 == a2)
    {
      v33 = 257;
      goto LABEL_72;
    }

    if (v10 == a2)
    {
LABEL_66:
      v33 = 256;
LABEL_72:
      *(a2 + 48) = v33;
      *(a2 + 52) = 256;
      goto LABEL_73;
    }

    if (v11 != a2)
    {
      if (v46)
      {
        goto LABEL_66;
      }

      if (v45 != a2)
      {
        v44 = scn_default_log(BuiltInProgramWithName, v21);
        BuiltInProgramWithName = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
        if (BuiltInProgramWithName)
        {
          __createGLInfoIfNeeded_cold_1();
        }

        goto LABEL_73;
      }
    }

    *(a2 + 48) = 0;
  }

  *(a2 + 51) = 1;
LABEL_70:
  *(a2 + 53) = 1;
LABEL_73:
  if (v22)
  {
    ResourceManager = C3DEngineContextGetResourceManager(result[1], v21);
    BuiltInProgramWithName = C3DResourceManagerMakeProgramResident(ResourceManager, *a2, v22, 0);
  }

  if (!*a2)
  {
    v35 = scn_default_log(BuiltInProgramWithName, v21);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      __createGLInfoIfNeeded_cold_5(v35, v36, v37, v38, v39, v40, v41, v42);
    }
  }
}

void __appendSegment(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, __n128 a7)
{
  v10 = a6;
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v13 = *(a2 + 16);
    v30 = *a2;
    v31 = v13;
    v14 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v14;
    v28 = a7;
    *v15.i64 = C3DVector3MultMatrix4x4(&v30, a6);
    v27 = v15;
    v16 = *(a2 + 16);
    v30 = *a2;
    v31 = v16;
    v17 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v17;
    v18.n128_f64[0] = C3DVector3MultMatrix4x4(&v30, v28);
    v10 = v27;
    a7 = v18;
  }

  v30.i64[0] = v10.i64[0];
  v30.i32[2] = v10.i32[2];
  v19 = (a3[3] * 255.0);
  v20 = (fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0);
  v21 = (fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0);
  v22 = (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  v23 = (a4[3] * 255.0);
  v24 = (fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0);
  v25 = *a4;
  v26 = fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0;
  DWORD2(v31) = a7.n128_u32[2];
  *&v31 = a7.n128_u64[0];
  v30.i32[3] = (v19 << 24) | (v20 << 16) | (v21 << 8) | v22;
  HIDWORD(v31) = (v23 << 24) | (v24 << 16) | (v26 << 8) | (fminf(fmaxf(v25, 0.0), 1.0) * 255.0);
  v29 = 0x10000;
  __appendVerticesAndIndices(a1, &v30, 2u, &v29, 2u, a5, 1);
}

void C3DAuthoringEnvironmentDrawTarget(uint64_t a1)
{
  if (*(a1 + 65784) == 1 && (*(a1 + 65706) & 1) != 0)
  {
    v44 = v10;
    v45 = v9;
    v46 = v8;
    v47 = v7;
    v48 = v6;
    v49 = v5;
    v50 = v4;
    v51 = v3;
    v52 = v1;
    v53 = v2;
    if (*(a1 + 24) == 1)
    {
      v12 = *(a1 + 16);
      if (([objc_msgSend(v12 "defaultCameraController")] - 1) <= 3)
      {
        [objc_msgSend(v12 "defaultCameraController")];
        v37 = v13;
        Matrix4x4 = C3DEngineContextGetMatrix4x4(*(a1 + 8), 1);
        v15 = C3DEngineContextGetMatrix4x4(*(a1 + 8), 0);
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        C3DMatrix4x4Mult(Matrix4x4, v15, &v40);
        v17 = vaddq_f32(v43, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v37.f32[0]), v41, *v37.f32, 1), v42, v37, 2));
        if (v17.f32[3] > 0.001)
        {
          v38 = vdivq_f32(v17, vdupq_laneq_s32(v17, 3)).u64[0];
          RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), v16);
          v19 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
          RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8), v20);
          if (RendererContextGL)
          {
            *v22.i32 = C3DRendererContextGetContentScaleFactor(RendererContextGL);
          }

          else
          {
            *v22.i32 = v19;
          }

          v36 = v22;
          Viewport = C3DEngineContextGetViewport(*(a1 + 8));
          __asm
          {
            FMOV            V2.2D, #1.0
            FMOV            V1.2D, #0.5
          }

          v30 = vmulq_f64(vmulq_f64(vaddq_f64(vcvtq_f64_f32(v38), _Q2), vcvt_hight_f64_f32(Viewport)), _Q1);
          v31 = vdivq_f32(vrndmq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v30), v30)), vdupq_lane_s32(v36, 0));
          v39 = vaddq_f32(v31, xmmword_21C2A39B0);
          v32 = v31.f32[0] + -5.0;
          v33 = v31.f32[1] + -1.0;
          v34 = v31.f32[0] + 5.0;
          v35 = v31.f32[1] + 1.0;
          __createGLInfoIfNeeded(a1, a1 + 1000);
          __appendRect2D(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1000, 1, v39.f32[0], v39.f32[1], v39.f32[2], v39.f32[3]);
          __appendRect2D(a1, 0x3F8000003F800000, 0x3F8000003F800000, 0, a1 + 1000, 1, v32, v33, v34, v35);
          __appendRect2D(a1, 0, 0x3F80000000000000, 0, a1 + 1000, 1, v39.f32[0] + 0.5, v39.f32[1] + 0.5, v39.f32[2] + -0.5, v39.f32[3] + -0.5);
          __appendRect2D(a1, 0, 0x3F80000000000000, 0, a1 + 1000, 1, v32 + 0.5, v33 + 0.5, v34 + -0.5, v35 + -0.5);
          __flush(a1, a1 + 1000);
        }
      }
    }
  }
}

void __appendRect2D(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, int a6, float a7, float a8, float a9, float a10)
{
  v59 = *MEMORY[0x277D85DE8];
  v19 = *(a5 + 32);
  if (a4)
  {
    if (!v19)
    {
      v21 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        __appendRect2D_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
      }
    }

    v39 = a7;
    v40 = a8;
    v29 = a4[1];
    v41 = *a4;
    *&v42 = v29;
    v43 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    v44 = a9;
    v45 = a8;
    v30 = a4[3];
    v46 = a4[2];
    v47 = v29;
    v48 = *&v43;
    v49 = a9;
    v50 = a10;
    v51 = v46;
    v52 = v30;
    v53 = v43;
    v54 = a7;
    v55 = a10;
    v56 = v41;
    v57 = v30;
    v58 = v43;
  }

  else
  {
    if (v19)
    {
      v31 = scn_default_log(a1, a2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        __appendRect2D_cold_2(v31, v32, v33, v34, v35, v36, v37, v38);
      }
    }

    v39 = a7;
    v40 = a8;
    v41 = 0;
    v42 = ((*(&a3 + 1) * 255.0) << 24) | ((fminf(fmaxf(*&a3, 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(*(&a2 + 1), 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*&a2, 0.0), 1.0) * 255.0);
    *&v43 = a9;
    v44 = a8;
    v45 = 0.0;
    v46 = *&v42;
    v47 = a9;
    v48 = a10;
    v49 = 0.0;
    v50 = *&v42;
    v51 = a7;
    v52 = a10;
    v53 = 0;
    v54 = *&v42;
  }

  __appendVerticesAndIndices(a1, &v39, 4u, word_21C2A3C10, 6u, a5, a6);
}

void C3DAuthoringEnvironmentDrawGrid(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  *&v47[1924] = *MEMORY[0x277D85DE8];
  if (!C3DEngineContextGetRenderContext(*(v1 + 8), v3) && (*(v2 + 65705) & 1) != 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(*(v2 + 16) "pointOfView")];
      [objc_msgSend(*(v2 + 16) "pointOfView")];
    }

    Matrix4x4 = C3DEngineContextGetMatrix4x4(*(v2 + 8), 1);
    v5 = *Matrix4x4;
    v6 = Matrix4x4[1];
    v7 = Matrix4x4[3];
    v42.columns[2] = Matrix4x4[2];
    v42.columns[3] = v7;
    v42.columns[0] = v5;
    v42.columns[1] = v6;
    C3DMatrix4x4Invert(&v42, &v42);
    v8 = sqrtf((((0.0 - v42.columns[3].f32[1]) * (0.0 - v42.columns[3].f32[1])) + ((0.0 - v42.columns[3].f32[0]) * (0.0 - v42.columns[3].f32[0]))) + ((0.0 - v42.columns[3].f32[2]) * (0.0 - v42.columns[3].f32[2])));
    *(v2 + 65788) = v8;
    v9 = v8 / 0.001;
    v10 = log10f((v9 + 1.0) + (v9 + 1.0));
    v11 = fmaxf(floorf(v10), 1.0);
    v12 = __exp10(v11);
    v13 = 0;
    *&v12 = v12;
    v14 = *&v12;
    v15 = *&v12;
    *(v2 + 65792) = v15 * 0.001 / 10.0;
    v16 = v15 * 0.003;
    v17 = v14 / 10;
    v18 = vcvtmd_s64_f64(0.0 / ((v14 / 10) * 0.001));
    v19 = (v10 - v11);
    v20 = vcvtd_n_u64_f64(v19 * -0.5 + 1.0, 7uLL) << 24;
    v21 = vcvtd_n_u64_f64(1.0 - v19, 6uLL) << 24;
    v22 = -v16;
    v23 = (v17 * v18);
    v24 = -v16 + v23 * 0.001;
    v25 = v16 + v23 * 0.001;
    v26 = &v46;
    v27 = 1;
    v28 = v16 + v16;
    v29 = v18;
    do
    {
      v30 = v22 + ((v29 / 60.0) * v28);
      *(v26 - 4) = v30;
      *(v26 - 3) = 0.0;
      *(v26 - 2) = v24;
      *v26 = v30;
      v26[1] = 0.0;
      HIDWORD(v31) = 429496728 - 858993459 * v29;
      LODWORD(v31) = HIDWORD(v31);
      if ((v31 >> 1) >= 0x19999999)
      {
        v32 = v21;
      }

      else
      {
        v32 = v20;
      }

      if (v29 == 30)
      {
        v32 = -1442840576;
      }

      *(v26 - 1) = v32;
      *(v26 + 3) = v32;
      v33 = &v43[v27];
      *(v33 - 1) = v13;
      v34 = v13 + 1;
      v13 += 2;
      v26[2] = v25;
      *v33 = v34;
      ++v29;
      v26 += 8;
      v27 += 2;
    }

    while (v13 != 122);
    v35 = v47;
    v36 = &v44;
    v37 = 122;
    do
    {
      v38 = v22 + ((v18 / 60.0) * v28);
      *(v35 - 7) = v24;
      *(v35 - 6) = 0;
      *(v35 - 5) = v38;
      *(v35 - 3) = v25;
      *(v35 - 2) = 0;
      HIDWORD(v39) = 429496728 - 858993459 * v18;
      LODWORD(v39) = HIDWORD(v39);
      if ((v39 >> 1) >= 0x19999999)
      {
        v40 = v21;
      }

      else
      {
        v40 = v20;
      }

      if (v18 == 30)
      {
        v40 = -1442840576;
      }

      *(v35 - 4) = v40;
      *v35 = v40;
      *(v36 - 1) = v37;
      v41 = v37 + 1;
      v37 += 2;
      *(v35 - 1) = v38;
      *v36 = v41;
      v36 += 2;
      ++v18;
      v35 += 8;
    }

    while (v37 != 244);
    __createGLInfoIfNeeded(v2, v2 + 392);
    __appendVerticesAndIndices(v2, v45, 0xF4u, v43, 0xF4u, v2 + 392, 1);
    __flush(v2, v2 + 392);
  }
}

double C3DAuthoringEnvironmentBeginTimedRecord(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 1688) != 0.0)
  {
    v5 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DAuthoringEnvironmentBeginTimedRecord_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = C3DEngineContextGetSystemTime(*(a1 + 8)) + a3;
  *(a1 + 1688) = result;
  return result;
}

void __appendTimedRecord(uint64_t a1, uint64_t a2, void *__src, size_t __n)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a1 + 0x10000;
  v5 = (__n + 31) & 0xFFFFFFF0;
  v6 = *(a1 + 65700);
  v7 = v6 + v5;
  if ((v6 + v5) >> 9 >= 0x7D)
  {
    if (v7 == 64000)
    {
      v8 = 64000 - v6;
      v9 = *(a1 + 1688);
      v10 = a1 + v6;
      *(v10 + 1696) = -1;
      *(v10 + 1700) = v8;
      *(v10 + 1704) = v9;
    }

    LODWORD(v6) = 0;
    *(a1 + 65700) = 0;
    v7 = (__n + 31) & 0xFFFFFFF0;
  }

  v11 = *(a1 + 65696);
  if (v6 < v11 && v7 > v11)
  {
    v15 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v4 + 160);
      v17 = *(v4 + 164);
      v18[0] = 67109376;
      v18[1] = v16;
      v19 = 1024;
      v20 = v17;
      _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: ring buffer is full [%d/%d]", v18, 0xEu);
    }
  }

  else
  {
    v13 = *(a1 + 1688);
    v14 = a1 + 1696 + v6;
    *v14 = a2;
    *(v14 + 4) = v5;
    *(v14 + 8) = v13;
    memcpy((a1 + 1696 + *(a1 + 65700) + 16), __src, __n);
    *(v4 + 164) = v7;
  }
}

void __displayRangeTimeRecord(uint64_t result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5, double a6)
{
  v9 = a2;
  if (a2 == a3)
  {
    v10 = scn_default_log(result, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __displayRangeTimeRecord_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    goto LABEL_5;
  }

  if (a2 >> 4 > 0xF9E)
  {
LABEL_5:
    v18 = a3;
    goto LABEL_6;
  }

  v22 = result + 1696;
  v18 = a3;
  v23 = a2;
  do
  {
    v24 = (v22 + v23);
    v25 = v24[1];
    if (!v25)
    {
      break;
    }

    if (*(v24 + 1) <= a6)
    {
      v23 += v25;
    }

    else
    {
      v26 = *v24;
      if (*v24 == 3)
      {
        C3DAuthoringEnvironmentAppendDebugBoundingSphere(result, *(v24 + 2), *(v24 + 3), v24 + 2, v24 + 6);
      }

      else if (v26 == 1)
      {
        C3DAuthoringEnvironmentAppendDebugSegment(result, 0, v24 + 12, 0, *(v24 + 1), *(v24 + 2));
      }

      else if (!v26)
      {
        C3DAuthoringEnvironmentAppendDebugRay(result, 0, v24 + 12, *(v24 + 1), *(v24 + 2));
      }

      if (v18 >= v23)
      {
        v18 = v23;
      }

      v23 += v24[1];
      if (v9 <= v23)
      {
        v9 = v23;
      }
    }
  }

  while (v23 != a3 && v23 >> 4 < 0xF9F);
LABEL_6:
  *a4 = v18;
  if (v18 <= v9)
  {
    v19 = v9;
  }

  else
  {
    v19 = v18;
  }

  *a5 = v19;
}

double C3DAuthoringEnvironmentAppendDebugRay(uint64_t a1, float32x4_t *a2, float *a3, float32x4_t a4, float32x4_t a5)
{
  if (*(a1 + 1688) > 0.0)
  {
    __src = a4;
    v16 = a5;
    v17 = *a3;
    if (a2)
    {
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      v11 = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *a5.f32, 1), *a2, a5.f32[0]), v9, a5, 2));
      __src = vaddq_f32(v10, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *a4.f32, 1), *a2, a4.f32[0]), v9, a4, 2));
      v16 = v11;
    }

    __appendTimedRecord(a1, 0, &__src, 0x30uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);

  *&result = __appendRay(a1, a2, a3, a3, a1 + 392, a4, a5).n128_u64[0];
  return result;
}

void C3DAuthoringEnvironmentAppendDebugSegment(uint64_t a1, float32x4_t *a2, float *a3, int a4, float32x4_t a5, float32x4_t a6)
{
  if (*(a1 + 1688) > 0.0)
  {
    __src = a5;
    v18 = a6;
    v19 = *a3;
    if (a2)
    {
      v10 = a2[1];
      v11 = a2[2];
      v12 = a2[3];
      v13 = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *a6.f32, 1), *a2, a6.f32[0]), v11, a6, 2));
      __src = vaddq_f32(v12, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *a5.f32, 1), *a2, a5.f32[0]), v11, a5, 2));
      v18 = v13;
    }

    __appendTimedRecord(a1, 1, &__src, 0x30uLL);
  }

  if (a4)
  {
    v14 = 544;
  }

  else
  {
    v14 = 392;
  }

  __createGLInfoIfNeeded(a1, a1 + v14);

  __appendSegment(a1, a2, a3, a3, a1 + v14, a5, a6);
}

void C3DAuthoringEnvironmentAppendDebugBoundingSphere(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, __int128 *a5)
{
  if (*(a1 + 1688) > 0.0)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13[0] = a2;
    v13[1] = a3;
    Identity = a4;
    if (!a4)
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v11 = Identity[1];
    v14 = *Identity;
    v15 = v11;
    v12 = Identity[3];
    v16 = Identity[2];
    v17 = v12;
    v18 = *a5;
    __appendTimedRecord(a1, 3, v13, 0x60uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);

  __appendSphereWithSubdivisionCount(a1, a2, a3, a4, a5, a1 + 392, 3u);
}

void __displayTimeRecord(uint64_t result, double a2)
{
  v2 = result + 0x10000;
  v3 = *(result + 65696);
  v4 = *(result + 65700);
  if (v3 != v4)
  {
    v7 = 0;
    if (v3 < v4)
    {
      __displayRangeTimeRecord(result, v3, v4, &v7 + 1, &v7, a2);
      *(v2 + 160) = HIDWORD(v7);
LABEL_8:
      *(v2 + 164) = v7;
      return;
    }

    if (v3 >> 9 <= 0x7C)
    {
      __displayRangeTimeRecord(result, v3, 0xFA00u, &v7 + 1, &v7, a2);
      *(v2 + 160) = HIDWORD(v7);
      v4 = *(v2 + 164);
    }

    if (v4)
    {
      __displayRangeTimeRecord(result, 0, v4, &v7 + 1, &v7, a2);
      goto LABEL_8;
    }
  }
}

void C3DAuthoringEnvironmentDrawZbufferDependant(uint64_t a1)
{
  v71 = *MEMORY[0x277D85DE8];
  v2 = a1 + 0x10000;
  C3DAuthoringEnvironmentDrawGrid(a1);
  C3DAuthoringEnvironmentDrawOrigin(a1);
  if ((*(v2 + 168) & 0x40) != 0)
  {
    Scene = C3DEngineContextGetScene(*(a1 + 8), v3);
    if (Scene)
    {
      v5 = [[SCNScene sceneWithSceneRef:?]];
      if (v5)
      {
        v6 = v5;
        v7 = v5;
        [(SCNPhysicsWorld *)v6 _drawDebugInAuthoringEnvironment:a1];
      }
    }
  }

  C3DWireframeDrawInstances(*(v2 + 272), *(a1 + 8), *(a1 + 64));
  v8 = [a1 manipulator];
  if ([v8 isDragging])
  {
    v10 = 0uLL;
    v62 = 0u;
    memset(&v61[4], 0, 48);
    if (v8)
    {
      objc_msgSend_transform(v8);
      v10 = 0uLL;
      v9.n128_u64[0] = v62;
      v58 = v9;
      v9.n128_u32[0] = DWORD2(v62);
    }

    else
    {
      v9.n128_u64[0] = 0;
      v58 = v9;
    }

    v56 = v9.n128_u32[0];
    v61[2] = v10;
    v61[3] = v10;
    v61[0] = v10;
    v61[1] = v10;
    v11 = [v8 snapGuideIndexesOnAxis:{1, C3DMatrix4x4MakeIdentity(v61).n128_f64[0]}];
    v12 = [v11 firstIndex];
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = v12; i != 0x7FFFFFFFFFFFFFFFLL; i = [v11 indexGreaterThanIndex:i])
      {
        v14 = [v8 snapInfoAtIndex:i axis:{1, *&v51}];
        v59 = 0u;
        v60 = 0u;
        WorldMatrix = C3DNodeGetWorldMatrix(*(v14 + 8), v15);
        C3DNodeGetLocalBoundingBox(*(v14 + 8), &v59);
        v17.f32[0] = *v14 - *(v14 + 16);
        v18 = v58;
        v18.n128_f32[0] = v17.f32[0];
        v17.i32[1] = WorldMatrix[3].i32[1];
        v17.i32[2] = WorldMatrix[3].i32[2];
        v19 = v18;
        v19.n128_u32[2] = v17.u32[2];
        v18.n128_u32[2] = v56;
        v51 = v19;
        v53 = v18;
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v17, v19);
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v51, v53);
        v20 = vaddq_f32(v60, v60);
        v21 = vdupq_laneq_s32(v20, 3);
        v21.i32[0] = v20.i32[0];
        v63 = vsubq_f32(v59, v60);
        v64 = vaddq_f32(v63, v21);
        v65 = vaddq_f32(v63, vextq_s8(v20, vuzp2q_s32(v20, v20), 0xCuLL));
        v66 = vaddq_f32(v21, v65);
        v22 = vzip2q_s32(v20, v20);
        v23 = vextq_s8(v22, v22, 8uLL);
        v67 = vaddq_f32(v63, v23);
        v68 = vaddq_f32(v23, v64);
        v69 = vaddq_f32(v23, v65);
        v70 = vaddq_f32(v23, v66);
        __appendAsymetricBox(a1, &v63, WorldMatrix, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    v24 = [v8 snapGuideIndexesOnAxis:{2, *&v51}];
    v25 = [v24 firstIndex];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (j = v25; j != 0x7FFFFFFFFFFFFFFFLL; j = [v24 indexGreaterThanIndex:j])
      {
        v27 = [v8 snapInfoAtIndex:j axis:{2, *&v52}];
        v59 = 0u;
        v60 = 0u;
        v29 = C3DNodeGetWorldMatrix(*(v27 + 8), v28);
        C3DNodeGetLocalBoundingBox(*(v27 + 8), &v59);
        v30.i32[0] = v29[3].i32[0];
        v30.f32[1] = *v27 - *(v27 + 16);
        v30.i32[2] = v29[3].i32[2];
        v31 = v58;
        v31.n128_f32[1] = v30.f32[1];
        v32 = v31;
        v32.n128_u32[2] = v30.u32[2];
        v52 = v32;
        v31.n128_u32[2] = v56;
        v54 = v31;
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v30, v32);
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v52, v54);
        v33 = vaddq_f32(v60, v60);
        v34 = vdupq_laneq_s32(v33, 3);
        v34.i32[0] = v33.i32[0];
        v63 = vsubq_f32(v59, v60);
        v64 = vaddq_f32(v63, v34);
        v65 = vaddq_f32(v63, vextq_s8(v33, vuzp2q_s32(v33, v33), 0xCuLL));
        v66 = vaddq_f32(v34, v65);
        v35 = vzip2q_s32(v33, v33);
        v36 = vextq_s8(v35, v35, 8uLL);
        v67 = vaddq_f32(v63, v36);
        v68 = vaddq_f32(v36, v64);
        v69 = vaddq_f32(v36, v65);
        v70 = vaddq_f32(v36, v66);
        __appendAsymetricBox(a1, &v63, v29, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    v37 = [v8 snapGuideIndexesOnAxis:{4, *&v52}];
    v38 = [v37 firstIndex];
    if (v38 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (k = v38; k != 0x7FFFFFFFFFFFFFFFLL; k = [v37 indexGreaterThanIndex:k])
      {
        v40 = [v8 snapInfoAtIndex:k axis:4];
        v59 = 0u;
        v60 = 0u;
        v42 = C3DNodeGetWorldMatrix(*(v40 + 8), v41);
        C3DNodeGetLocalBoundingBox(*(v40 + 8), &v59);
        v43.i64[0] = v42[3].i64[0];
        v44 = v58;
        v45 = v58;
        v45.n128_u32[0] = v43.i32[0];
        v43.f32[2] = *v40 - *(v40 + 16);
        v45.n128_f32[2] = v43.f32[2];
        v44.n128_f32[2] = v43.f32[2];
        v55 = v45;
        v57 = v44;
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v43, v45);
        __appendSegment(a1, v61, C3DAuthoringEnvironmentColorCyan, C3DAuthoringEnvironmentColorCyan, a1 + 392, v55, v57);
        v46 = vaddq_f32(v60, v60);
        v47 = vdupq_laneq_s32(v46, 3);
        v47.i32[0] = v46.i32[0];
        v63 = vsubq_f32(v59, v60);
        v64 = vaddq_f32(v63, v47);
        v65 = vaddq_f32(v63, vextq_s8(v46, vuzp2q_s32(v46, v46), 0xCuLL));
        v66 = vaddq_f32(v47, v65);
        v48 = vzip2q_s32(v46, v46);
        v49 = vextq_s8(v48, v48, 8uLL);
        v67 = vaddq_f32(v63, v49);
        v68 = vaddq_f32(v49, v64);
        v69 = vaddq_f32(v49, v65);
        v70 = vaddq_f32(v49, v66);
        __appendAsymetricBox(a1, &v63, v42, C3DAuthoringEnvironmentColorCyan, a1 + 392);
      }
    }

    __flush(a1, a1 + 392);
  }

  SystemTime = C3DEngineContextGetSystemTime(*(a1 + 8));
  __displayTimeRecord(a1, SystemTime);
}

void C3DAuthoringEnvironmentDrawZbufferIndependant(float32x2_t *a1, __n128 a2)
{
  if (a1[8219].i8[0] == 1)
  {
    a2.n128_u64[0] = vadd_f32(vrndx_f32(a1[8217]), 0x3F0000003F000000);
    v11 = a2;
    a2.n128_u64[0] = vadd_f32(vrndx_f32(a1[8218]), 0x3F0000003F000000);
    v17 = a2;
    __createGLInfoIfNeeded(a1, &a1[125]);
    __appendRect2D(a1, 0x3E00000000000000, 0x3E8000003E800000, 0, &a1[125], 1, v11.n128_f32[0], v11.n128_f32[1], v17.n128_f32[0], v17.n128_f32[1]);
    __createGLInfoIfNeeded(a1, &a1[106]);
    v3 = v11;
    v3.n128_u32[2] = 0;
    v15 = v3;
    v4 = v3;
    v4.i32[1] = v11.n128_i32[1];
    v5 = v4;
    v10 = v4;
    v6 = v17;
    v6.n128_u32[2] = 0;
    v13 = v6;
    v7 = v6;
    v7.n128_u32[1] = v11.n128_u32[1];
    v12 = v7;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite.var0.var0, C3DAuthoringEnvironmentColorWhite.var0.var0, &a1[106], v5, v7);
    v8 = v13;
    v8.n128_u32[1] = v17.n128_u32[1];
    v14 = v8;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite.var0.var0, C3DAuthoringEnvironmentColorWhite.var0.var0, &a1[106], v12, v8);
    v9 = v15;
    v9.n128_u32[1] = v17.n128_u32[1];
    v16 = v9;
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite.var0.var0, C3DAuthoringEnvironmentColorWhite.var0.var0, &a1[106], v14, v9);
    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorWhite.var0.var0, C3DAuthoringEnvironmentColorWhite.var0.var0, &a1[106], v16, v10);
  }

  C3DAuthoringEnvironmentDrawTarget(a1);
}

void C3DAuthoringEnvironmentDrawPending(uint64_t a1)
{
  __flush(a1, a1 + 1304);
  __flush(a1, a1 + 1152);
  __flush(a1, a1 + 392);
  __flush(a1, a1 + 544);
  __flush(a1, a1 + 696);
  __flush(a1, a1 + 1000);

  __flush(a1, a1 + 848);
}

__n128 __appendRay(uint64_t a1, uint64_t a2, float *a3, float *a4, uint64_t a5, float32x4_t a6, float32x4_t a7)
{
  v10 = a6;
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v26 = a7;
    v13 = *(a2 + 16);
    v30 = *a2;
    v31 = v13;
    v14 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v14;
    *v15.i64 = C3DVector3MultMatrix4x4(&v30, a6);
    v24 = v15;
    v16 = *(a2 + 16);
    v30 = *a2;
    v31 = v16;
    v17 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v17;
    *v18.i64 = C3DVector3MultMatrix4x4(&v30, v26);
    v10 = v24;
    a7 = v18;
  }

  v25 = v10;
  v27 = a7;
  v23 = vsubq_f32(a7, v10);
  v29.i32[2] = 0;
  v29.i64[0] = 0;
  v28.i32[2] = 0;
  v28.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v29, &v28, v23);
  v29 = vmulq_f32(v29, vdupq_n_s32(0x3E4CCCCDu));
  v19 = vaddq_f32(v27, vmulq_f32(v23, vdupq_n_s32(0xBE99999A)));
  v20 = vaddq_f32(v19, v29);
  v21 = vsubq_f32(v19, v29);
  v30.i64[0] = v25.i64[0];
  v30.i32[2] = v25.i32[2];
  *&v31 = v27.i64[0];
  DWORD2(v31) = v27.i32[2];
  DWORD2(v32) = v20.i32[2];
  *&v32 = v20.i64[0];
  *&v33 = v21.i64[0];
  DWORD2(v33) = v21.i32[2];
  v30.i32[3] = ((a3[3] * 255.0) << 24) | ((fminf(fmaxf(a3[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a3[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a3, 0.0), 1.0) * 255.0);
  HIDWORD(v31) = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  __appendVerticesAndIndices(a1, &v30, 4u, word_21C2A3C1C, 6u, a5, 1);
  return result;
}

void C3DAuthoringEnvironmentAppendDebugSegment2(uint64_t *a1, uint64_t a2, float *a3, float *a4, int a5, float32x4_t a6, __n128 a7)
{
  if (a5)
  {
    v11 = 68;
  }

  else
  {
    v11 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v11]);

  __appendSegment(a1, a2, a3, a4, &a1[v11], a6, a7);
}

__n128 C3DAuthoringEnvironmentAppendDebugBoundingBox(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1688) > 0.0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = a2[1];
    v19 = *a2;
    v20 = v8;
    Identity = a3;
    if (!a3)
    {
      Identity = C3DMatrix4x4GetIdentity();
    }

    v10 = Identity[1];
    v21 = *Identity;
    v22 = v10;
    v11 = Identity[3];
    v23 = Identity[2];
    v24 = v11;
    v25 = *a4;
    __appendTimedRecord(a1, 4, &v19, 0x70uLL);
  }

  __createGLInfoIfNeeded(a1, a1 + 392);
  v12 = a2[1];
  v13 = vsubq_f32(*a2, v12);
  v14 = vaddq_f32(v12, v12);
  v15 = vdupq_laneq_s32(v14, 3);
  v15.i32[0] = v14.i32[0];
  v19 = v13;
  v20 = vaddq_f32(v13, v15);
  v21 = vaddq_f32(v13, vextq_s8(v14, vuzp2q_s32(v14, v14), 0xCuLL));
  v22 = vaddq_f32(v15, v21);
  v16 = vzip2q_s32(v14, v14);
  v17 = vextq_s8(v16, v16, 8uLL);
  v23 = vaddq_f32(v13, v17);
  v24 = vaddq_f32(v17, v20);
  v25 = vaddq_f32(v17, v21);
  v26 = vaddq_f32(v17, v22);
  __appendAsymetricBox(a1, &v19, a3, a4->f32, a1 + 392);
  return result;
}

__n128 __appendBox(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2[1];
  v6 = vsubq_f32(*a2, v5);
  v7 = vaddq_f32(v5, v5);
  v8 = vdupq_laneq_s32(v7, 3);
  v8.i32[0] = v7.i32[0];
  v12 = v6;
  v13 = vaddq_f32(v6, v8);
  v14 = vaddq_f32(v6, vextq_s8(v7, vuzp2q_s32(v7, v7), 0xCuLL));
  v15 = vaddq_f32(v8, v14);
  v9 = vzip2q_s32(v7, v7);
  v10 = vextq_s8(v9, v9, 8uLL);
  v16 = vaddq_f32(v6, v10);
  v17 = vaddq_f32(v10, v13);
  v18 = vaddq_f32(v10, v14);
  v19 = vaddq_f32(v10, v15);
  __appendAsymetricBox(a1, &v12, a3, a4, a5);
  return result;
}

double C3DAuthoringEnvironmentAppendDebugFrustum(uint64_t *a1, float32x4_t *a2, int32x4_t *a3, float *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  __createGLInfoIfNeeded(a1, (a1 + 49));
  if (a3)
  {
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = a2[3];
    v54 = a2[2];
    v55 = v10;
    v11 = a2[5];
    v56 = a2[4];
    v57 = v11;
    v12 = vzip1q_s32(v6, v8);
    v13 = vzip2q_s32(v6, v8);
    v14 = vzip1q_s32(v7, v9);
    v15 = vzip2q_s32(v7, v9);
    v61.columns[0] = vzip1q_s32(v12, v14);
    v61.columns[1] = vzip2q_s32(v12, v14);
    v61.columns[2] = vzip1q_s32(v13, v15);
    v61.columns[3] = vzip2q_s32(v13, v15);
    v16 = a2[1];
    v52 = *a2;
    v53 = v16;
    v62 = __invert_f4(v61);
    for (i = 0; i != 96; i += 16)
    {
      *(&v52 + i) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62.columns[0], COERCE_FLOAT(*(&v52 + i))), v62.columns[1], *&v52.f32[i / 4], 1), v62.columns[2], *(&v52 + i), 2), v62.columns[3], *(&v52 + i), 3);
    }

    v18 = v53;
    v19 = v54;
    v48 = v52;
    v50 = v55;
    v21 = v56;
    v20 = v57;
  }

  else
  {
    v18 = a2[1];
    v19 = a2[2];
    v48 = *a2;
    v50 = a2[3];
    v21 = a2[4];
    v20 = a2[5];
  }

  v46 = v21;
  v41 = v20;
  v43 = v18;
  v44 = v19;
  v22 = v20;
  v23 = v19;
  v24 = v18;
  scn_plane_intersect_3_planes(v20.i64[0], v20.i64[1], v19.i64[0], v19.i64[1], v18.i64[0], v18.i64[1], &v52);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v48.i64[0], v48.i64[1], v23.i64[0], v23.i64[1], &v53);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v24.i64[0], v24.i64[1], v50.i64[0], v50.i64[1], &v54);
  scn_plane_intersect_3_planes(v22.i64[0], v22.i64[1], v50.i64[0], v50.i64[1], v48.i64[0], v48.i64[1], &v55);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v23.i64[0], v23.i64[1], v24.i64[0], v24.i64[1], &v56);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v48.i64[0], v48.i64[1], v23.i64[0], v23.i64[1], &v57);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v24.i64[0], v24.i64[1], v50.i64[0], v50.i64[1], &v58);
  scn_plane_intersect_3_planes(v46.i64[0], v46.i64[1], v50.i64[0], v50.i64[1], v48.i64[0], v48.i64[1], &v59);
  v25 = a1;
  v26 = a4;
  __appendAsymetricBox(a1, &v52, 0, a4, (a1 + 49));
  v27 = vsubq_f32(v52, v59);
  v28 = vmulq_f32(v27, v27);
  v51 = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32)) * 0.05;
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  v30 = vmulq_f32(vaddq_f32(v52, v55), v29);
  v38 = vmulq_f32(vaddq_f32(v59, v56), v29);
  __appendRay(v25, 0, v26, v26, (v25 + 49), v30, vmlaq_n_f32(v30, v41, v51));
  __appendRay(v25, 0, v26, v26, (v25 + 49), v38, vmlaq_n_f32(v38, v46, v51));
  v31.i64[0] = 0x3F0000003F000000;
  v31.i64[1] = 0x3F0000003F000000;
  v37 = vmulq_f32(vaddq_f32(v55, v59), v31);
  v39 = vmulq_f32(vaddq_f32(v54, v58), v31);
  v47 = vmulq_f32(vaddq_f32(v52, v56), v31);
  v42 = vmulq_f32(vaddq_f32(v53, v57), v31);
  v32 = vmulq_f32(vaddq_f32(v39, v47), v31);
  v36 = vmulq_f32(vaddq_f32(v37, v42), v31);
  __appendRay(v25, 0, v26, v26, (v25 + 49), v32, vmlaq_n_f32(v32, v43, v51));
  __appendRay(v25, 0, v26, v26, (v25 + 49), v36, vmlaq_n_f32(v36, v48, v51));
  v33.i64[0] = 0x3F0000003F000000;
  v33.i64[1] = 0x3F0000003F000000;
  v34 = vmulq_f32(vaddq_f32(v39, v37), v33);
  v49 = vmulq_f32(vaddq_f32(v47, v42), v33);
  __appendRay(v25, 0, v26, v26, (v25 + 49), v34, vmlaq_n_f32(v34, v50, v51));
  *&result = __appendRay(v25, 0, v26, v26, (v25 + 49), v49, vmlaq_n_f32(v49, v44, v51)).n128_u64[0];
  return result;
}

void C3DAuthoringEnvironmentAppendDebugAsymetricBox(uint64_t *a1, uint64_t a2, float32x4_t *a3, float *a4)
{
  __createGLInfoIfNeeded(a1, (a1 + 49));

  __appendAsymetricBox(a1, a2, a3, a4, (a1 + 49));
}

void __appendAsymetricBox(uint64_t a1, uint64_t a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    for (i = 0; i != 128; i += 16)
    {
      *(a2 + i) = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(a3[1], *(a2 + i), 1), *a3, COERCE_FLOAT(*(a2 + i))), a3[2], *(a2 + i), 2));
    }
  }

  for (j = 0; j != 128; j += 16)
  {
    v7 = *(a2 + j);
    *&v10[j] = v7;
    *&v10[j + 8] = DWORD2(v7);
  }

  v8 = ((a4[3] * 255.0) << 24) | ((fminf(fmaxf(a4[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a4[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a4, 0.0), 1.0) * 255.0);
  for (k = 12; k != 140; k += 16)
  {
    *&v10[k] = v8;
  }

  __appendVerticesAndIndices(a1, v10, 8u, word_21C2A3C28, 0x18u, a5, 1);
}

void C3DAuthoringEnvironmentAppendDebugPolyhedron(uint64_t *a1, uint64_t a2, uint64_t a3, float *a4)
{
  __createGLInfoIfNeeded(a1, (a1 + 49));
  if (C3DConvexPolyhedronGetVerticesCount(a2))
  {
    URL = C3DSceneSourceGetURL(a2);
    Library = C3DSceneSourceGetLibrary(a2);
    EdgeCount = C3DConvexPolyhedronGetEdgeCount(a2);
    if (EdgeCount >= 1)
    {
      v11 = EdgeCount;
      v12 = (Library + 4);
      do
      {
        __appendSegment(a1, a3, a4, a4, (a1 + 49), *(URL + 16 * *(v12 - 1)), *(URL + 16 * *v12));
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }
}

void C3DAuthoringEnvironmentAppendDebugNode(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v6 = (a1 + 65704);
  if ((*(a1 + 65705) & 8) != 0)
  {
    Skinner = C3DNodeGetSkinner(a2, a2);
    if (Skinner)
    {
      v8 = Skinner;
      C3DNodeGetWorldMatrix(a2, a2);
      C3DSizeForScreenSpaceSizeAndTransform(*(a1 + 8), v9);
      C3DSkinnerAppendDebugBones(v8, a1, a2, v10);
    }
  }

  if ((v6[1] & 0x40) != 0)
  {
    C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases(a1, a2);
  }

  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), a2);
  [(SCNMTLRenderContext *)RenderContext authoring_drawDeformersForNode:a2 authoringEnvironment:a1];
  if (*v6)
  {
    v13 = C3DNodeGetSkinner(a2, v12);
    if (v13)
    {
      C3DSkinnerAppendDebugBoundingBoxes(v13, a1, a2);
    }

    if ((*(a3 + 72) & 7) == 2)
    {
      WorldBoundingBox = C3DParticleSystemInstanceGetWorldBoundingBox(*(a3 + 48), v14);
      v32 = v15;
      v30 = 0uLL;
      C3DColor4Make(v30.f32, 1.0, 0.9, 0.9, 1.0);
      v16 = a1;
      v17 = 0;
    }

    else
    {
      IsAlwaysRendered = C3DNodeIsAlwaysRendered(a2, v14);
      WorldBoundingBox = 0u;
      v32 = 0u;
      if (!C3DNodeComputeHierarchicalBoundingBox(a2, 1, &WorldBoundingBox))
      {
        goto LABEL_16;
      }

      WorldMatrix = C3DNodeGetWorldMatrix(a2, v12);
      v30 = 0uLL;
      v20 = 0.0;
      if (!IsAlwaysRendered)
      {
        v20 = 1.0;
      }

      C3DColor4Make(v30.f32, 1.0, v20, 0.9, 1.0);
      v16 = a1;
      v17 = WorldMatrix;
    }

    C3DAuthoringEnvironmentAppendDebugBoundingBox(v16, &WorldBoundingBox, v17, &v30);
  }

LABEL_16:
  v21 = *v6;
  if ((*v6 & 2) != 0)
  {
    v22 = C3DNodeIsAlwaysRendered(a2, v12);
    WorldBoundingBox = 0uLL;
    if (C3DGetBoundingSphere(a2, 1, &WorldBoundingBox))
    {
      v23 = C3DNodeGetWorldMatrix(a2, v12);
      v30 = 0uLL;
      v24 = 0.0;
      if (!v22)
      {
        v24 = 1.0;
      }

      C3DColor4Make(v30.f32, 1.0, v24, 0.9, 1.0);
      C3DAuthoringEnvironmentAppendDebugBoundingSphere(a1, WorldBoundingBox.n128_i64[0], WorldBoundingBox.n128_i64[1], v23, &v30);
    }

    v21 = *v6;
  }

  if ((v21 & 0x400) != 0)
  {
    v25 = C3DNodeGetWorldMatrix(a2, v12);
    Geometry = C3DNodeGetGeometry(a2, v26);
    if (Geometry)
    {
      Mesh = C3DGeometryGetMesh(Geometry, v28);
      if (Mesh)
      {
        C3DAuthoringEnvironmentAppendWireframeMesh(a1, Mesh, 0, v25);
      }
    }
  }
}

__C3DGeometry *C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases(uint64_t a1, uint64_t a2)
{
  result = C3DNodeGetGeometry(a2, a2);
  if (result)
  {
    v6 = result;
    result = C3DGeometryGetMesh(result, v5);
    if (result)
    {
      SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(result, 0, 0, 0);
      v8 = *(a1 + 8);
      WorldMatrix = C3DNodeGetWorldMatrix(a2, v9);
      v43 = WorldMatrix[1];
      v45 = *WorldMatrix;
      v39 = WorldMatrix[3];
      v41 = WorldMatrix[2];
      Skinner = C3DNodeGetSkinner(a2, v11);
      if (Skinner)
      {
        v14 = Skinner;
        EffectiveCalculationMode = C3DSkinnerGetEffectiveCalculationMode(Skinner, v6);
        *v16.i64 = C3DSkinnerAdjustTransformIfUsesNodeTransformCalculationMode(v14, EffectiveCalculationMode, v45, v43, v41, v39);
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
      }

      else
      {
        v19 = v43;
        v17 = v45;
        v23 = v39;
        v21 = v41;
      }

      v44 = v19;
      v46 = v17;
      v40 = v23;
      v42 = v21;
      C3DSizeForScreenSpaceSizeAndTransform(v8, v13);
      v25 = v24;
      if (C3DGeometryOsdGetWantsGPUSubdivision(v6, v26))
      {
        Matrix4x4 = C3DEngineContextGetMatrix4x4(v8, 1);
        v28 = C3DEngineContextGetMatrix4x4(v8, 0);
        v29 = 0;
        v30 = *Matrix4x4;
        v31 = Matrix4x4[1];
        v32 = Matrix4x4[2];
        v33 = Matrix4x4[3];
        v62 = v46;
        v63 = v44;
        v64 = v42;
        v65 = v40;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        do
        {
          *(&v66 + v29) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(*(&v62 + v29))), v31, v62.n128_u64[v29 / 8], 1), v32, *(&v62 + v29), 2), v33, *(&v62 + v29), 3);
          v29 += 16;
        }

        while (v29 != 64);
        v34 = 0;
        v35 = *v28;
        v36 = v28[1];
        v37 = v28[2];
        v38 = v28[3];
        v62 = v66;
        v63 = v67;
        v64 = v68;
        v65 = v69;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        do
        {
          *(&v66 + v34) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v62 + v34))), v36, v62.n128_u64[v34 / 8], 1), v37, *(&v62 + v34), 2), v38, *(&v62 + v34), 3);
          v34 += 16;
        }

        while (v34 != 64);
        C3DGeometryOpenSubdivGPUDrawAuthoringEnvironment(a1, v6, v66, v67, v68, v69);
      }

      else
      {
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke;
        v55[3] = &__block_descriptor_112_e14_v20__0I8I12f16l;
        v60 = SourceWithSemanticAtIndex;
        v61 = a1;
        v56 = v46;
        v57 = v44;
        v58 = v42;
        v59 = v40;
        C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(v6, v55);
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke_2;
      v47[3] = &__block_descriptor_116_e11_v16__0I8f12l;
      v54 = v25;
      v52 = SourceWithSemanticAtIndex;
      v53 = a1;
      v48 = v46;
      v49 = v44;
      v50 = v42;
      v51 = v40;
      return C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCorners(v6, v47);
    }
  }

  return result;
}

uint64_t C3DAuthoringEnvironmentGetProgramDerivedFromVertexDescriptor(uint64_t a1, void *a2)
{
  if ([objc_msgSend(objc_msgSend(a2 "attributes")])
  {
    result = *(a1 + 40);
    if (!result)
    {
      result = C3DFXMetalProgramCreateFromDefaultLibrary(@"ManipulatorColorOnly_vert", @"ManipulatorColorOnly_frag");
      *(a1 + 40) = result;
    }
  }

  else
  {
    result = *(a1 + 32);
    if (!result)
    {
      result = C3DFXMetalProgramCreateFromDefaultLibrary(@"Manipulator_vert", @"Manipulator_frag");
      *(a1 + 32) = result;
    }
  }

  return result;
}

void C3DAuthoringEnvironmentDrawPrimitives(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, uint64_t a7, void *a8, __n128 a9, __n128 a10, __n128 a11, __n128 a12, __n128 a13, char a14)
{
  *v31 = a7;
  *&v27[16] = a10;
  *&v27[32] = a11;
  *v27 = a9;
  v19 = a2;
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), a2);
  ProgramDerivedFromVertexDescriptor = C3DAuthoringEnvironmentGetProgramDerivedFromVertexDescriptor(a1, a8);
  v24 = ProgramDerivedFromVertexDescriptor;
  if (a14)
  {
    v25 = *(a1 + 1608);
  }

  else
  {
    v25 = 0;
  }

  *&v31[4] = *v27;
  *&v31[12] = *&v27[16];
  v26 = C3DBlendStatesDefaultOver(ProgramDerivedFromVertexDescriptor, v23);
  [(SCNMTLRenderContext *)RenderContext authoring_drawPrimitives:v19 vertexCount:a3 instanceCount:1 vertexBuffers:a4 offsets:a5 range:a6 vertexDescriptor:*v31 withProgram:a8 uniforms:v24 uniformsLength:&v31[4] rasterizerStates:&v31[4] >> 32 blendStates:80, v25, v26, *v27, *&v27[8], *&v27[24], *&v27[40], a12.n128_i64[0], a12.n128_i16[4], a12.n128_i8[10], a12.n128_i8[11], a12.n128_i32[3], a13.n128_i64[0], a13.n128_i64[1], v30, *v31, *&v31[8], *&v27[24], *&v27[32], *&v27[40], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43];
}

void __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke(float32x4_t *a1, unsigned int a2, unsigned int a3, float a4)
{
  *v7.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[6].i64[0], a2);
  v11 = v7;
  *v8.i64 = C3DMeshSourceGetValueAtIndexAsVector3(a1[6].i64[0], a3);
  v10 = v8;
  v12[0] = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a4);
  v12[1] = v9;
  C3DAuthoringEnvironmentAppendDebugSegment(a1[6].i64[1], a1 + 2, v12, 0, v11, v10);
}

void __C3DAuthoringEnvironmentAppendDebugNodeGeometryCreases_block_invoke_2(float32x4_t *a1, unsigned int a2, float a3)
{
  *&v5 = C3DMeshSourceGetValueAtIndexAsVector3(a1[6].i64[0], a2);
  v7 = v5;
  *&v8 = C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(a3);
  *(&v8 + 1) = v6;
  C3DAuthoringEnvironmentAppendDebugBoundingSphere(a1[6].i64[1], v7 | (DWORD1(v7) << 32), DWORD2(v7) | (a1[7].u32[0] << 32), a1 + 2, &v8);
}

uint64_t C3DAuthoringEnvironmentAppendDebugNodeAttributes(uint64_t a1, void *a2)
{
  objc_sync_enter(a1);
  v4 = [SCNNode nodeWithNodeRef:a2];
  v6 = [objc_msgSend(a1 "selectedItems")];
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = *(a1 + 65704);
  }

  WorldMatrix = C3DNodeGetWorldMatrix(a2, v5);
  *(v127.n128_u64 + 4) = 0;
  v127.n128_u32[0] = 0;
  C3DMatrix4x4GetTranslation(WorldMatrix, &v127);
  *(v126.i64 + 4) = 0;
  v126.i32[0] = 0;
  C3DMatrix4x4GetScale(WorldMatrix, &v126);
  C3DSizeForScreenSpaceSizeAndTransform(*(a1 + 8), v9);
  v105 = v10;
  if (*&v10 > 0.0)
  {
    [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, 0.0)}];
    if (v7)
    {
      __createGLInfoIfNeeded(a1, a1 + 392);
      __createGLInfoIfNeeded(a1, a1 + 848);
      __createGLInfoIfNeeded(a1, a1 + 696);
      __createGLInfoIfNeeded(a1, a1 + 1304);
      v104 = v6;
      *(&v12 + 1) = *(&v105 + 1);
      *&v12 = *&v105;
      v103 = v12;
      if ((v7 & 0x80) != 0)
      {
        if (C3DNodeGetHasPhysicsField(a2, v11))
        {
          v13 = C3DGetScene(a2, v11);
          v14 = [C3DSceneGetPhysicsWorld(v13 0)];
          v15 = v14;
          if (v14)
          {
            v16 = [v14 isActive];
            v17 = &C3DAuthoringEnvironmentColorPaleBlue;
            if (v6)
            {
              v17 = &C3DAuthoringEnvironmentColorPink;
            }

            if (v16)
            {
              v18 = v17;
            }

            else
            {
              v18 = &C3DAuthoringEnvironmentColorGrayMedium;
            }

            [v15 halfExtent];
            if (*&v19 != 3.4028e38)
            {
              if ([v15 usesEllipsoidalExtent])
              {
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                [v15 halfExtent];
                DWORD1(v21) = v20;
                DWORD2(v21) = v22;
                v121[0] = v21;
                C3DMatrix4x4MakeScale(&v122, v121);
                C3DMatrix4x4Mult(&v122, WorldMatrix, &v122);
                if (v6)
                {
                  v23 = 7;
                }

                else
                {
                  v23 = 3;
                }

                __appendSphereWithSubdivisionCount(a1, 0, 0x3F80000000000000, &v122, v18, a1 + 392, v23);
              }

              else
              {
                [v15 halfExtent];
                *&v26 = __PAIR64__(v25, v24);
                *(&v26 + 1) = v27;
                v122 = xmmword_21C27F610;
                v123 = v26;
                *&v19 = __appendBox(a1, &v122, WorldMatrix, v18->var0.var0, a1 + 392).n128_u64[0];
              }
            }

            [v15 offset];
            v108 = v28;
            v110 = v30;
            v112 = v29;
            v114 = -*&v105;
            if ([v15 supportsOffset])
            {
              v31 = v112;
              v31.n128_u32[1] = v108;
              v31.n128_u32[2] = v110;
              v32 = v31;
              v32.f32[0] = v112.n128_f32[0] + (v114 * 0.5);
              v31.n128_f32[0] = v112.n128_f32[0] + (*&v105 * 0.5);
              __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, v32, v31);
              [v15 offset];
              v35.n128_u64[0] = __PAIR64__(LODWORD(v34), v33);
              v35.n128_u32[2] = v36;
              v37 = v35;
              v37.f32[1] = v34 + (v114 * 0.5);
              v35.n128_f32[1] = v34 + (*&v105 * 0.5);
              __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, v37, v35);
              [v15 offset];
              v40.n128_u64[0] = __PAIR64__(v39, v38);
              v40.n128_f32[2] = v41;
              v42 = v40;
              v42.f32[2] = v41 + (v114 * 0.5);
              v40.n128_f32[2] = v41 + (*&v105 * 0.5);
              __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, v42, v40);
            }

            __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, LODWORD(v114), v105);
            LODWORD(v43) = 0;
            *(&v43 + 1) = -*&v105;
            LODWORD(v44) = 0;
            HIDWORD(v44) = v105;
            __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, v43, v44);
            v45.n128_u64[0] = 0;
            v46.i64[0] = 0;
            v46.i64[1] = LODWORD(v114);
            v45.n128_u64[1] = v105;
            __appendSegment(a1, WorldMatrix, v18->var0.var0, v18->var0.var0, a1 + 392, v46, v45);
            [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, *&v103)}];
            if ([v15 supportsDirection])
            {
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              memset(v121, 0, sizeof(v121));
              memset(v120, 0, sizeof(v120));
              [v15 offset];
              v48.n128_u32[1] = v47;
              v48.n128_u32[2] = v49;
              v119 = v48;
              v48.n128_u64[0] = 0x3F0000003F000000;
              v48.n128_u64[1] = 0x3F0000003F000000;
              v118 = v48;
              [v15 direction];
              v51.i32[1] = v50;
              v51.i32[2] = v52;
              v53 = vmulq_f32(v51, v51);
              *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
              *v53.f32 = vrsqrte_f32(v54);
              *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
              AxisAngleRotationBetweenVectors = C3DVector4GetAxisAngleRotationBetweenVectors(xmmword_21C27F900, vmulq_n_f32(v51, vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).f32[0]));
              C3DMatrix4x4MakeAxisAngleRotation(v120, &AxisAngleRotationBetweenVectors, AxisAngleRotationBetweenVectors.n128_f32[3]);
              C3DMatrix4x4MakeScale(v121, &v118);
              C3DMatrix4x4MakeTranslation(&v122, &v119);
              memset(v116, 0, sizeof(v116));
              C3DMatrix4x4Mult(v120, WorldMatrix, v116);
              C3DMatrix4x4Mult(v121, v116, v116);
              C3DMatrix4x4Mult(v116, &v122, v116);
              __createGLInfoIfNeeded(a1, a1 + 392);
              __appendSegment(a1, v116, v18->var0.var0, v18->var0.var0, a1 + 392, 0, xmmword_21C27F600);
            }

            if ([v15 isActive])
            {
              +[SCNPhysicsField _displayScaleFactor];
              v56 = v55;
              [v15 halfExtent];
              v57 = 0;
              v59 = v58;
              v59.i32[1] = v60;
              v59.i32[2] = v61;
              v62.i32[0] = 2139095039;
              __asm { FMOV            V5.4S, #10.0 }

              v68 = _Q5;
              v68.i32[1] = v60;
              v68.i32[2] = v61;
              v69 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v58, v62), 0), v68, v59);
              v70 = _Q5;
              v70.i32[0] = v69.i32[0];
              v70.i32[2] = v69.i32[2];
              v71 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_lane_s32(*v69.i8, 1), v62), 0), v70, v69);
              v72 = v56 * 0.1;
              v107 = v72;
              _Q5.i64[0] = v71.i64[0];
              v111 = vbslq_s8(vdupq_lane_s32(*&vceqq_f32(vdupq_laneq_s32(v71, 2), v62), 0), _Q5, v71);
              v73 = vdupq_n_s32(0x3F7FF972u);
              v109 = v73;
              do
              {
                v74 = 0;
                *v73.i32 = ((2 * v57) / 9.0) + -1.0;
                v106 = v73;
                do
                {
                  v75 = 0;
                  v76 = v106;
                  v76.f32[1] = ((2 * v74) / 9.0) + -1.0;
                  v76.i32[2] = v106.i32[2];
                  v113 = v76;
                  do
                  {
                    v77 = v113;
                    v77.f32[2] = (v75 / 9.0) + -1.0;
                    v78 = *WorldMatrix;
                    v79 = *(WorldMatrix + 16);
                    v80 = *(WorldMatrix + 48);
                    v124 = *(WorldMatrix + 32);
                    v125 = v80;
                    v122 = v78;
                    v123 = v79;
                    *v81.i64 = C3DVector3MultMatrix4x4(&v122, vmulq_f32(vmulq_f32(v111, v77), v109));
                    LODWORD(v82) = v81.i32[1];
                    LODWORD(v83) = v81.i32[2];
                    v115 = v81;
                    [v15 evalAtLocation:{*v81.i64, v82, v83}];
                    v85.i32[1] = v84;
                    v85.i32[2] = v86;
                    __appendSegment(a1, 0, C3DAuthoringEnvironmentColorPaleGreen, C3DAuthoringEnvironmentColorYellow, a1 + 392, v115, vaddq_f32(v115, vmulq_n_f32(v85, v107)));
                    v75 += 2;
                  }

                  while (v75 != 20);
                  ++v74;
                }

                while (v74 != 10);
                ++v57;
              }

              while (v57 != 10);
            }
          }
        }
      }

      if ((v7 & 0x28) != 0)
      {
        ParticleSystems = C3DNodeGetParticleSystems(a2, v11);
        if (ParticleSystems)
        {
          Count = CFArrayGetCount(ParticleSystems);
          if ((v7 & 0x20) != 0 && Count >= 1)
          {
            [*(a1 + 65800) addObject:{+[SCNNodeManipulableItem nodeManipulatorItemWithNode:screenSize:](SCNNodeManipulableItem, "nodeManipulatorItemWithNode:screenSize:", v4, *&v103 * 0.75)}];
            v89 = -*&v105;
            *&v90 = v89 * 0.03;
            v91 = v90;
            v92 = COERCE_UNSIGNED_INT(*&v105 * 0.2);
            v93 = vcvt_f32_f64(vmulq_n_f64(xmmword_21C2A39C0, *&v103));
            if (v104)
            {
              v94 = &C3DAuthoringEnvironmentColorPink;
            }

            else
            {
              v94 = &C3DAuthoringEnvironmentColorGrayMedium;
            }

            __appendSphereWithSubdivisionCount(a1, v91 | (v93.u32[1] << 32), v93.u32[0] | (v92 << 32), WorldMatrix, v94, a1 + 392, 3u);
            v95 = v92 << 32;
            *&v96 = v89 * 0.2;
            *&v97 = v89 * 0.23;
            *&v98 = *&v103 * 0.37;
            v99 = v97;
            __appendSphereWithSubdivisionCount(a1, v96 | (v97 << 32), v98 | v95, WorldMatrix, v94, a1 + 392, 3u);
            *&v100 = *&v103 * 0.3;
            *&v101 = v89 * 0.37;
            __appendSphereWithSubdivisionCount(a1, v100 | (v99 << 32), v101 | v95, WorldMatrix, v94, a1 + 392, 3u);
          }
        }
      }
    }
  }

  return objc_sync_exit(a1);
}

void __appendSphereWithSubdivisionCount(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v85 = *MEMORY[0x277D85DE8];
  v10 = 48 * a7;
  MEMORY[0x28223BE20](a1);
  v11 = &v75[-16 * v10];
  v13 = *(v12 + 48);
  MEMORY[0x28223BE20](v14);
  v20 = &v75[-2 * v19];
  if (v21)
  {
    v77 = &v75[-2 * v19];
    v78 = v19;
    v79 = v15;
    v80 = a6;
    v22 = 0;
    v23 = ((v18[3] * 255.0) << 24) | ((fminf(fmaxf(v18[2], 0.0), 1.0) * 255.0) << 16);
    v76 = 2 * a7;
    v24.i64[0] = v16;
    v24.i64[1] = v17;
    v25 = v23 | ((fminf(fmaxf(v18[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*v18, 0.0), 1.0) * 255.0);
    v83 = v24;
    v82 = vdupq_laneq_s32(v24, 3);
    v26 = v11 + 396;
    v27 = &v75[-16 * v10];
    do
    {
      v28 = v26;
      v29 = ++v22 * 3.14159265 / (a7 + 1);
      v31 = __sincosf_stret(v29);
      *&v30 = v31.__cosval;
      v81 = v30;
      v32 = 0;
      v33 = 0.0;
      do
      {
        v34 = __sincosf_stret(v33);
        v35.f32[0] = v31.__sinval * v34.__cosval;
        v35.i32[1] = v81;
        v35.f32[2] = v31.__sinval * v34.__sinval;
        v36 = &v27[v32];
        v37 = vmlaq_f32(v83, v35, v82);
        *v36 = v37.i64[0];
        *&v27[v32 + 8] = v37.i32[2];
        *(v36 + 3) = v25;
        v33 = v33 + 0.2618;
        v32 += 16;
      }

      while (v32 != 384);
      v27 += 384;
      v26 = v28 + 96;
    }

    while (v22 != a7);
    v38 = 0;
    v39 = 0.0;
    do
    {
      v40 = v39 * 3.14159265 / a7;
      v41 = __sincosf_stret(v40);
      v42 = 0.0;
      v43 = 24;
      v44 = v28;
      do
      {
        v45 = __sincosf_stret(v42);
        v46.f32[0] = v41.__cosval * v45.__cosval;
        v46.i32[1] = LODWORD(v45.__sinval);
        v46.f32[2] = v41.__sinval * v45.__cosval;
        v47 = vmlaq_f32(v83, v46, v82);
        *(v44 - 3) = v47.i64[0];
        *(v44 - 1) = v47.i32[2];
        *v44 = v25;
        v44 += 4;
        v42 = v42 + 0.2618;
        --v43;
      }

      while (v43);
      v39 = v39 + 1.0;
      ++v38;
      v28 += 96;
    }

    while (v38 != a7);
    a6 = v80;
    if (a4)
    {
      if (v10 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v10;
      }

      v49 = v11 + 8;
      do
      {
        v47.i64[0] = *(v49 - 1);
        v47.i32[2] = *v49;
        v50 = a4[1];
        v84[0] = *a4;
        v84[1] = v50;
        v51 = a4[3];
        v84[2] = a4[2];
        v84[3] = v51;
        *(v49 - 1) = C3DVector3MultMatrix4x4(v84, v47);
        *v49 = v47.i32[2];
        v49 += 4;
        --v48;
      }

      while (v48);
      v13 = *(a6 + 48);
    }

    v52 = v76;
    if (v76 <= 1)
    {
      v52 = 1;
    }

    if (v13)
    {
      v53 = 0;
      v54.i64[0] = 0x100000001;
      v54.i64[1] = 0x100000001;
      v55.i64[0] = 0x1800000018;
      v55.i64[1] = 0x1800000018;
      v56.i64[0] = 0x800000008;
      v56.i64[1] = 0x800000008;
      v20 = v77;
      v57 = v77;
      v15 = v79;
      LODWORD(v19) = v78;
      do
      {
        v58 = 0;
        v59 = vdupq_lane_s32(v53, 1);
        v60 = xmmword_21C280330;
        v61 = xmmword_21C2A27F0;
        do
        {
          v62 = &v57[v58];
          v86.val[0] = vuzp1q_s16(vaddq_s32(v60, v59), vaddq_s32(v61, v59));
          v63 = vaddq_s32(v61, v54);
          v64 = vaddq_s32(v60, v54);
          v86.val[1] = vuzp1q_s16(vaddq_s32(vbicq_s8(v64, vceqq_s32(v64, v55)), v59), vaddq_s32(vbicq_s8(v63, vceqq_s32(v63, v55)), v59));
          vst2q_s16(v62, v86);
          v60 = vaddq_s32(v60, v56);
          v61 = vaddq_s32(v61, v56);
          v58 += 16;
        }

        while (v58 != 48);
        v53 = vadd_s32(v53, 0x1800000001);
        v57 += 48;
      }

      while (v53.i32[0] != v52);
    }

    else
    {
      v65 = 0;
      v66 = 0;
      v20 = v77;
      v67 = v77;
      v15 = v79;
      LODWORD(v19) = v78;
      do
      {
        v68 = 0;
        do
        {
          v69 = v66 + v68;
          *v67 = v66 + v68;
          if (v68 == 23)
          {
            v70 = 0;
          }

          else
          {
            v70 = v68 + 1;
          }

          v71 = v68 + 1;
          v72 = v70 + v66;
          v73 = v67 + 3;
          v74 = v69 >= v10 || v72 >= v10;
          v67[1] = v72;
          v67[2] = (v69 + 24) % v10;
          if (v74)
          {
            ++v66;
          }

          v68 = v71;
          v67 += 3;
        }

        while (v71 != 24);
        v66 += 24;
        ++v65;
        v67 = v73;
      }

      while (v65 != v52);
    }
  }

  __appendVerticesAndIndices(v15, &v75[-16 * v10], v10, v20, v19, a6, 1);
}

void C3DAuthoringEnvironmentAppendDebugCone(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, int a6, float a7, float32_t a8)
{
  if (a6)
  {
    v15 = 68;
  }

  else
  {
    v15 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v15]);
  *&v16 = a7;
  v17.f32[0] = a8;

  __appendCone(a1, v16, v17, a2, a3, a4, a5, &a1[v15]);
}

void __appendCone(uint64_t a1, double a2, float32x4_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t a8)
{
  v54 = a3;
  v62 = *MEMORY[0x277D85DE8];
  if (*(a8 + 48))
  {
    v12 = 51;
  }

  else
  {
    v12 = 52;
  }

  v13 = MEMORY[0x28223BE20](a1);
  v14 = &v53.f32[-4 * v12];
  v16 = *v15;
  v18 = *v17;
  v56 = vmlaq_n_f32(*v15, *v17, *&v13);
  if (v19)
  {
    v55 = v18;
    v20 = *(a6 + 16);
    v58 = *a6;
    v59 = v20;
    v21 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v21;
    *v22.i64 = C3DVector3MultMatrix4x4(&v58, v16);
    v53 = v22;
    v23 = *(a6 + 16);
    v58 = *a6;
    v59 = v23;
    v24 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v24;
    *v25.i64 = C3DVector3Rotate(&v58, v55);
    v55 = v25;
    v26 = *(a6 + 16);
    v58 = *a6;
    v59 = v26;
    v27 = *(a6 + 48);
    v60 = *(a6 + 32);
    v61 = v27;
    *v28.i64 = C3DVector3MultMatrix4x4(&v58, v56);
    v18 = v55;
    v56 = v28;
  }

  else
  {
    v53 = v16;
  }

  v58.i32[2] = 0;
  v58.i64[0] = 0;
  v57.i32[2] = 0;
  v57.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v58, &v57, v18);
  v29 = 0;
  v30 = vmulq_n_f32(v58, v54.f32[0]);
  v31 = 0.0;
  v32 = *a7;
  v33 = (fminf(fmaxf(a7[1], 0.0), 1.0) * 255.0);
  v34 = ((a7[3] * 255.0) << 24) | ((fminf(fmaxf(a7[2], 0.0), 1.0) * 255.0) << 16);
  v54 = vmulq_n_f32(v57, v54.f32[0]);
  v55 = v30;
  v57 = v54;
  v58 = v30;
  v35 = v34 | (v33 << 8) | (fminf(fmaxf(v32, 0.0), 1.0) * 255.0);
  do
  {
    v37 = __sincosf_stret(v31);
    v38 = vmlaq_n_f32(vmlaq_n_f32(v56, v55, v37.__cosval), v54, v37.__sinval);
    v39 = &v14[v29];
    *v39 = v38.i64[0];
    DWORD2(v14[v29]) = v38.i32[2];
    *(v39 + 3) = v35;
    v31 = v31 + 0.12566;
    ++v29;
  }

  while (v29 != 50);
  v40 = v53.i32[2];
  *(v14 + 100) = v53.i64[0];
  *(v14 + 202) = v40;
  *(v14 + 203) = v35;
  if (!*(a8 + 48))
  {
    v41 = v56.i32[2];
    *(v14 + 102) = v56.i64[0];
    *(v14 + 206) = v41;
    *(v14 + 207) = v35;
  }

  (MEMORY[0x28223BE20])(v36);
  v45 = (&v53 - v44);
  v46 = 0;
  v47 = (&v53 - v44);
  do
  {
    while (1)
    {
      v48 = v46 == 49 ? 0 : v46 + 1;
      if (!v43)
      {
        break;
      }

      v49 = &v47->i32[1];
      v47->i16[0] = v46;
      v47->i16[1] = v48;
      ++v46;
      v47 = (v47 + 4);
      if (v46 == 50)
      {
        *v49 = xmmword_21C2A39D0;
        goto LABEL_24;
      }
    }

    v50 = &v47->i16[3];
    v47->i16[2] = v48;
    v47->i16[0] = 51;
    v47->i16[1] = v46++;
    v47 = (v47 + 6);
  }

  while (v46 != 50);
  for (i = 1; i != 51; ++i)
  {
    *v50 = 50;
    v50[1] = i - 1;
    if (i == 50)
    {
      v52 = 0;
    }

    else
    {
      v52 = i;
    }

    v50[2] = v52;
    v50 += 3;
  }

LABEL_24:
  __appendVerticesAndIndices(a1, (&v53 - v12), v12, v45, v42, a8, 1);
}

void C3DAuthoringEnvironmentAppendDebugPyramid(uint64_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float *a5, int a6, float a7, float a8)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a6)
  {
    v14 = 68;
  }

  else
  {
    v14 = 49;
  }

  __createGLInfoIfNeeded(a1, &a1[v14]);
  v46.i32[2] = 0;
  v46.i64[0] = 0;
  v45.i32[2] = 0;
  v45.i64[0] = 0;
  C3DVectorGenerateOrthogonalBasis(&v46, &v45, *a3);
  v15 = vmulq_n_f32(*a3, a7);
  v16 = vmlaq_n_f32(v15, vaddq_f32(v46, v45), a8 * 0.5);
  v17 = vmlaq_n_f32(v15, vsubq_f32(v46, v45), a8 * 0.5);
  v18 = vmlaq_n_f32(v15, vsubq_f32(vnegq_f32(v46), v45), a8 * 0.5);
  v19 = vmlaq_n_f32(v15, vsubq_f32(v45, v46), a8 * 0.5);
  v20 = *a2;
  if (a4)
  {
    v21 = *(a4 + 16);
    v47 = *a4;
    v48 = v21;
    v22 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v22;
    v37 = v19;
    v38 = v17;
    v40 = v16;
    v43 = v18;
    *v23.i64 = C3DVector3MultMatrix4x4(&v47, v20);
    v36 = v23;
    v24 = *(a4 + 16);
    v47 = *a4;
    v48 = v24;
    v25 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v25;
    *v26.i64 = C3DVector3MultMatrix4x4(&v47, v40);
    v41 = v26;
    v27 = *(a4 + 16);
    v47 = *a4;
    v48 = v27;
    v28 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v28;
    *v29.i64 = C3DVector3MultMatrix4x4(&v47, v38);
    v39 = v29;
    v30 = *(a4 + 16);
    v47 = *a4;
    v48 = v30;
    v31 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v31;
    *v32.i64 = C3DVector3MultMatrix4x4(&v47, v43);
    v44 = v32;
    v33 = *(a4 + 16);
    v47 = *a4;
    v48 = v33;
    v34 = *(a4 + 48);
    v49 = *(a4 + 32);
    v50 = v34;
    *v35.i64 = C3DVector3MultMatrix4x4(&v47, v37);
    v20 = v36;
    v17 = v39;
    v16 = v41;
    v18 = v44;
    v19 = v35;
  }

  v47.i64[0] = v20.i64[0];
  v47.i32[2] = v20.i32[2];
  DWORD2(v48) = v16.i32[2];
  *&v48 = v16.i64[0];
  *&v49 = v17.i64[0];
  DWORD2(v49) = v17.i32[2];
  *&v50 = v18.i64[0];
  DWORD2(v50) = v18.i32[2];
  v52 = v19.i32[2];
  v51 = v19.i64[0];
  v53 = ((a5[3] * 255.0) << 24) | ((fminf(fmaxf(a5[2], 0.0), 1.0) * 255.0) << 16) | ((fminf(fmaxf(a5[1], 0.0), 1.0) * 255.0) << 8) | (fminf(fmaxf(*a5, 0.0), 1.0) * 255.0);
  HIDWORD(v50) = v53;
  HIDWORD(v49) = v53;
  HIDWORD(v48) = v53;
  v47.i32[3] = v53;
  __appendVerticesAndIndices(a1, &v47, 5u, word_21C2A3C58, 0x10u, &a1[v14], 1);
}

void C3DAuthoringEnvironmentAppendDebugString(uint64_t a1, const __CFString *a2, uint64_t *a3, double a4)
{
  __createGLInfoIfNeeded(a1, a1 + 1152);
  __createAlphabetTextureIfNeeded(a1, a1 + 1456, __statisticsFont, 0, 0);
  v8 = *(a1 + 1184);
  v9 = *(a1 + 1456);
  if (v8 != v9)
  {
    if (v8)
    {
      CFRelease(*(a1 + 1184));
      *(a1 + 1184) = 0;
      v9 = *(a1 + 1456);
    }

    if (v9)
    {
      v9 = CFRetain(v9);
    }

    *(a1 + 1184) = v9;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = &C3DAuthoringEnvironmentColorWhite;
  }

  v11 = a4;
  __appendText_(a1, &v11, v10, a2, a1 + 1152, a1 + 1456, 1, 1);
}

void __createAlphabetTextureIfNeeded(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v62 = *MEMORY[0x277D85DE8];
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 8), a2);
  v11 = [(SCNMTLRenderContext *)RenderContext contentScaleFactor];
  RendererContextGL = C3DEngineContextGetRendererContextGL(*(a1 + 8), v12);
  if (RendererContextGL)
  {
    ContentScaleFactor = C3DRendererContextGetContentScaleFactor(RendererContextGL);
  }

  else
  {
    ContentScaleFactor = v11;
  }

  v15 = ContentScaleFactor > 1.0;
  if (*a2)
  {
    if (*(a2 + 24) == v15)
    {
      return;
    }

    CFRelease(*a2);
    *a2 = 0;
  }

  v59 = 0;
  v57 = *MEMORY[0x277CBF3A8];
  *v58 = v57;
  if (a4)
  {
    v16 = *(a2 + 64);
    if (v16)
    {
      free(v16);
    }

    (*(a4 + 16))(a4, &v59, v58, a2 + 64);
    if (!v59)
    {
      *(a2 + 64) = 0;
      *v58 = v57;
    }
  }

  v17 = a3();
  MEMORY[0x28223BE20](Length);
  v19 = (2 * Length + 15) & 0xFFFFFFFFFFFFFFF0;
  v63.location = 0;
  v63.length = Length;
  MEMORY[0x28223BE20](v20);
  v21 = (&v58[-2] - v19);
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v17, (&v58[-2] - v19), (&v58[-2] - v19), Length);
  MEMORY[0x28223BE20](GlyphsForCharacters);
  v23 = &v58[-2 * Length - 2];
  CTFontGetAdvancesForGlyphs(v17, kCTFontOrientationHorizontal, (&v58[-2] - v19), v23, Length);
  *(a2 + 48) = malloc_type_realloc(*(a2 + 48), 8 * Length, 0x100004000313F17uLL);
  *(a2 + 40) = 0;
  BoundingBox = CTFontGetBoundingBox(v17);
  *(a2 + 56) = vcvtpd_s64_f64(BoundingBox.size.height);
  if (Length >= 1)
  {
    v24 = *(a2 + 48);
    LOWORD(v25) = *(a2 + 40);
    v26 = Length;
    do
    {
      width = v23->width;
      ++v23;
      *v24++ = width;
      v28 = ceil(width);
      if (v28 <= v25)
      {
        v28 = v25;
      }

      v25 = v28;
      --v26;
    }

    while (v26);
    *(a2 + 40) = v25;
  }

  v29 = ContentScaleFactor;
  Descent = CTFontGetDescent(v17);
  Ascent = CTFontGetAscent(v17);
  v32 = Ascent + CTFontGetDescent(v17);
  *(a2 + 32) = v32 + CTFontGetLeading(v17);
  MEMORY[0x28223BE20](v33);
  v34 = *(a2 + 40);
  if (Length >= 1)
  {
    v35 = 0;
    v36 = &v58[-2 * Length - 1];
    v37 = Length;
    do
    {
      *(v36 - 1) = v35;
      *v36 = Descent;
      v36 += 2;
      v35 += v34;
      --v37;
    }

    while (v37);
  }

  v38 = *(a2 + 56);
  v39 = ceil(v58[0]) + v34 + (Length * v34);
  v40 = ceil(v58[1]);
  if (v40 <= v38)
  {
    v41 = v38;
  }

  else
  {
    v41 = v40;
  }

  *(a2 + 8) = v39;
  *(a2 + 16) = v41;
  *(a2 + 24) = v15;
  v42 = v39 * v29;
  v43 = v41 * v29;
  v44 = vcvtms_u32_f32(v42);
  v45 = vcvtd_n_u64_f64(floorf(v42), 2uLL);
  v46 = C3DColorSpaceLinearSRGB();
  v47 = CGBitmapContextCreate(0, v44, vcvtms_u32_f32(v43), 8uLL, v45, v46, 0x4001u);
  if (v47)
  {
    v49 = v47;
    v50 = C3DColorSpaceLinearSRGB();
    CGContextSetFillColorSpace(v49, v50);
    *components = xmmword_21C2A3C78;
    v61 = unk_21C2A3C88;
    CGContextSetFillColor(v49, components);
    CGContextTranslateCTM(v49, 0.0, floorf(v43));
    CGContextScaleCTM(v49, ContentScaleFactor, -ContentScaleFactor);
    CTFontDrawGlyphs(v17, v21, &v58[-2 * Length - 2], Length, v49);
    v65.size.width = *(a2 + 40);
    v65.origin.x = v39 - v65.size.width;
    v65.size.height = *(a2 + 56);
    v65.origin.y = 0.0;
    CGContextFillRect(v49, v65);
    if (a5)
    {
      v51 = v59;
      if (v59)
      {
        v52 = Length * *(a2 + 40);
        if (v59 >= 1)
        {
          v53 = *(a2 + 64);
          do
          {
            *v53 = *v53 + v52;
            v53 += 4;
            --v51;
          }

          while (v51);
        }

        CGContextTranslateCTM(v49, v52, 0.0);
        UIGraphicsPushContext(v49);
        (*(a5 + 16))(a5, v39, v41);
        UIGraphicsPopContext();
      }
    }

    Image = CGBitmapContextCreateImage(v49);
    *a2 = C3DImageCreateWithCGImage(Image, v55);
    CFRelease(Image);
    CFRelease(v49);
  }

  else
  {
    v56 = scn_default_log(0, v48);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      __createAlphabetTextureIfNeeded_cold_1();
    }
  }
}