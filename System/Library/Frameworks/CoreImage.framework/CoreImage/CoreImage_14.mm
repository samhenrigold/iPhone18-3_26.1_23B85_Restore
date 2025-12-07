uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry::~Entry(v3 + 24, a2);
    }

    operator delete(v3);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique(uint64_t *a1, void *a2)
{
  v2 = a2;
  v5 = a2 + 2;
  v4 = a2[2];
  *(v5 - 1) = v4;
  v6 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_prepare[abi:nn200100](a1, v4, v5);
  if (v6)
  {
    return v6;
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_perform[abi:nn200100](a1, v2);
  return v2;
}

uint64_t std::pair<CI::ProgramDigest const,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>::pair[abi:nn200100]<CI::ProgramDigest const&,CI::MainProgram* const&,unsigned long long &,unsigned int const&,0ul,0ul,1ul,2ul>(uint64_t a1, void **a2, uint64_t a3)
{
  *a1 = **a2;
  v4 = **a3;
  v5 = **(a3 + 8);
  v6 = **(a3 + 16);
  if (v4)
  {
    v4 = CI::Object::ref(v4);
  }

  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6 > 0x40;
  return a1;
}

void *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_prepare[abi:nn200100](uint64_t a1, unint64_t a2, void *a3)
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
          if (i[2] == *a3)
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

  v9 = (*(a1 + 24) + 1);
  v10 = *(a1 + 32);
  if (!v3 || (v10 * v3) < v9)
  {
    v11 = 2 * v3;
    v12 = v3 < 3 || (v3 & (v3 - 1)) != 0;
    v13 = v12 | v11;
    v14 = vcvtps_u32_f32(v9 / v10);
    if (v13 <= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(a1, v15);
  }

  return 0;
}

uint64_t *std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::__node_insert_unique_perform[abi:nn200100](uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t ___ZN2CI11ObjectCacheINS_11MainProgramENS_13ProgramDigestELb0EE4findES2__block_invoke(void *a1)
{
  v2 = a1[5];
  result = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>((v2 + 16), a1 + 6);
  if (result)
  {
    v4 = *(v2 + 8) + 1;
    *(v2 + 8) = v4;
    *(result + 32) = v4;
    result = *(result + 24);
    if (result)
    {
      result = CI::Object::ref(result);
    }

    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(std::unique_ptr<CI::intermediate_t>::~unique_ptr[abi:nn200100], a2, a3);
}

const char *CI::name_for_conversion(unsigned int a1)
{
  if (a1 > 0x4B)
  {
    return "unknown-conversion";
  }

  else
  {
    return off_1E75C50A0[a1];
  }
}

__CFString *CI::cfname_for_conversion(unsigned int a1)
{
  if (a1 > 0x4B)
  {
    return @"unknown-conversion";
  }

  else
  {
    return off_1E75C5300[a1];
  }
}

uint64_t CI::conversion_is_alpha_one(unsigned int a1)
{
  if (a1 - 40 < 0x24)
  {
    return 1;
  }

  result = 0;
  if (a1 <= 0x23 && ((1 << a1) & 0xFFFFFE31ELL) != 0)
  {
    return 1;
  }

  return result;
}

void CI::convert_buffer_to_texture(uint64_t a1, __IOSurface *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __IOSurface *a6, uint64_t a7, unsigned int a8)
{
  v78 = *MEMORY[0x1E69E9840];
  if (CI_ENABLE_METAL_CONVERT())
  {
    v16 = (*(*a1 + 16))(a1);
    if (a7)
    {
      if (v16 == 85)
      {
        v51 = a3;
        v17 = a4;
        v48 = a5[1];
        v49 = *a5;
        v50 = a5[3];
        v52 = CI::MetalContext::device(a1);
        if (v52)
        {
          v18 = *(a1 + 1848);
          if (v18)
          {
            v19 = [CIMetalConverter alloc];
            v20 = a6;
            v21 = MEMORY[0x1E696AEC0];
            v22 = CI::name_for_conversion(a8);
            v23 = v21;
            a6 = v20;
            v47 = v22;
            v24 = [v23 stringWithUTF8String:?];
            v25 = v19;
            v26 = v18;
            v27 = [(CIMetalConverter *)v25 initWithDevice:v52 kernelName:v24];
            if (v27)
            {
              v28 = v27;
              v29 = v50;
              v30 = [v52 newBufferWithBytes:v49 length:v50 * v48 options:0];
              BaseAddress = IOSurfaceGetBaseAddress(v20);
              MemorySize = SurfaceGetMemorySize(v20);
              v34 = MemorySize;
              if ((atomic_load_explicit(byte_1ED7C4578, memory_order_acquire) & 1) == 0)
              {
                CI::convert_buffer_to_texture();
                v29 = v50;
              }

              v35 = _MergedGlobals_8 - 1;
              v36 = v28;
              if ((_MergedGlobals_8 & (_MergedGlobals_8 - 1)) != 0)
              {
                if (BaseAddress % _MergedGlobals_8)
                {
                  goto LABEL_24;
                }

                v37 = v34 % _MergedGlobals_8;
              }

              else
              {
                if ((v35 & BaseAddress) != 0)
                {
                  goto LABEL_24;
                }

                v37 = v35 & v34;
              }

              if (!v37)
              {
                v41 = ci_logger_performance(MemorySize, v33);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf) = 136446210;
                  *(&buf + 4) = v47;
                  _os_log_impl(&dword_19CC36000, v41, OS_LOG_TYPE_INFO, "CI_CONVERSION: (Metal) %{public}s_buffer", &buf, 0xCu);
                }

                IOSurfaceLock(a6, 2u, 0);
                v42 = a6;
                CFRetain(a6);
                v67 = MEMORY[0x1E69E9820];
                v68 = 3221225472;
                v69 = ___ZN2CIL13convert_metalEPKNS_12MetalContextE13vImage_BufferP11__IOSurfacePKvNS_11ConvertTypeE_block_invoke;
                v70 = &__block_descriptor_40_e12_v24__0_v8Q16l;
                v71 = a6;
                v43 = [v52 newBufferWithBytesNoCopy:BaseAddress length:v34 options:0 deallocator:&v67];
                BytesPerRow = IOSurfaceGetBytesPerRow(a6);
                Width = IOSurfaceGetWidth(a6);
                Height = IOSurfaceGetHeight(v42);
                *&buf = Width;
                *(&buf + 1) = Height;
                v77 = 0;
                [v36 encodeToCommandBuffer:v26 sourceBuffer:v30 sourceRowBytes:v50 destinationBuffer:v43 destinationRowBytes:BytesPerRow destinationSize:&buf];

                IOSurfaceUnlock(v42, 2u, 0);
                goto LABEL_27;
              }

LABEL_24:
              v38 = ci_logger_performance(MemorySize, v33);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf) = 136446210;
                *(&buf + 4) = v47;
                _os_log_impl(&dword_19CC36000, v38, OS_LOG_TYPE_INFO, "CI_CONVERSION: (Metal) %{public}s_texture", &buf, 0xCu);
              }

              [v36 encodeToCommandBuffer:v26 sourceBuffer:v30 sourceRowBytes:v29 destinationTexture:a7];
LABEL_27:
              if (CI_KDEBUG())
              {
                v39 = (*(*a1 + 280))(a1);
                v40 = v39;
                v59 = MEMORY[0x1E69E9820];
                v60 = 3221225472;
                v61 = ___ZN2CIL13convert_metalEPKNS_12MetalContextE13vImage_BufferP11__IOSurfacePKvNS_11ConvertTypeE_block_invoke_314;
                v62 = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
                v63 = v39;
                [v26 addScheduledHandler:&v59];
                v75[0] = MEMORY[0x1E69E9820];
                v75[1] = 3221225472;
                v75[2] = ___ZN2CIL13convert_metalEPKNS_12MetalContextE13vImage_BufferP11__IOSurfacePKvNS_11ConvertTypeE_block_invoke_317;
                v75[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
                v75[4] = v40;
                [v26 addCompletedHandler:v75];
              }

              return;
            }
          }
        }

        a4 = v17;
        a3 = v51;
      }
    }
  }

  if (a2 && a6)
  {
    if (IOSurfaceGetPlaneCount(a2) < 2)
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_3;
      v55[3] = &__block_descriptor_68_e21_v48__0_v8Q16Q24Q32Q40l;
      v55[4] = a2;
      v55[5] = a1;
      v55[6] = a3;
      v55[7] = a4;
      v56 = a8;
      SurfaceApplyPlaneBlock(a6, v55);
    }

    else
    {
      v67 = 0;
      v68 = &v67;
      v69 = 0x5012000000;
      v70 = __Block_byref_object_copy__21;
      v71 = __Block_byref_object_dispose__21;
      v72 = &unk_19D0E11CF;
      v73 = 0u;
      v74 = 0u;
      v59 = 0;
      v60 = &v59;
      v61 = 0x5012000000;
      v62 = __Block_byref_object_copy__21;
      v63 = __Block_byref_object_dispose__21;
      v64 = &unk_19D0E11CF;
      v65 = 0u;
      v66 = 0u;
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke;
      v57[3] = &unk_1E75C5000;
      v57[4] = &v67;
      v57[5] = &v59;
      v57[6] = a2;
      v57[7] = a1;
      v57[8] = a3;
      v57[9] = a4;
      v58 = a8;
      SurfaceApplyPlaneBlock(a6, v57);
      _Block_object_dispose(&v59, 8);
      _Block_object_dispose(&v67, 8);
    }
  }

  else if (a5 && a6)
  {
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_5;
    v53[3] = &__block_descriptor_68_e21_v48__0_v8Q16Q24Q32Q40l;
    v53[4] = a1;
    v53[5] = a5;
    v53[6] = a3;
    v53[7] = a4;
    v54 = a8;
    SurfaceApplyPlaneBlock(a6, v53);
  }
}

void sub_19CE5E66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__21(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_2;
  v8[3] = &unk_1E75C4FD8;
  v9 = *(a1 + 32);
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = a2;
  v13 = a5;
  v14 = a4;
  v15 = a6;
  v16 = *(a1 + 80);
  return SurfaceApplyPlaneReadOnlyBlock(v6, v8);
}

void ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v8 = 40;
  }

  else
  {
    v8 = 32;
  }

  *(*(*(result + v8) + 8) + 48) = a2;
  *(*(*(result + v8) + 8) + 56) = a5;
  *(*(*(result + v8) + 8) + 64) = a4;
  *(*(*(result + v8) + 8) + 72) = a6;
LABEL_6:
  v9 = *(*(result + 32) + 8);
  v11 = *(v9 + 48);
  v10 = (v9 + 48);
  if (v11)
  {
    v12 = *(*(result + 40) + 8);
    v14 = *(v12 + 48);
    v13 = (v12 + 48);
    if (v14)
    {
      v24 = v6;
      v25 = v7;
      v15 = v10[1];
      *&v23.data = *v10;
      *&v23.width = v15;
      v16 = v13[1];
      v22[0] = *v13;
      v22[1] = v16;
      v18 = *(result + 48);
      v17 = *(result + 56);
      v19 = *(result + 64);
      v20 = *(result + 88);
      *&v21.data = *(result + 72);
      *&v21.width = v20;
      CI::convert_cpu(v18, &v23, v22, v17, v19, &v21, *(result + 104));
    }
  }
}

void CI::convert_cpu(uint64_t a1, vImage_Buffer *a2, uint64_t *a3, uint64_t a4, vImagePixelCount a5, const vImage_Buffer *a6, unsigned int a7)
{
  v555 = *MEMORY[0x1E69E9840];
  v14 = (*(*a1 + 16))(a1);
  if (v14 == 84 || (v14 = (*(*a1 + 16))(a1), v14 == 85))
  {
    v16 = ci_logger_performance(v14, v15);
    v14 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v14)
    {
      *buf = 136446210;
      v553 = CI::name_for_conversion(a7);
      _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_INFO, "CI_CONVERSION: (CPU) %{public}s", buf, 0xCu);
    }
  }

  v17 = ci_signpost_log_render(v14, v15);
  v18 = (*(*a1 + 280))(a1) << 32;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "convert_cpu", &unk_19CFBCBAE, buf, 2u);
  }

  v19 = (*(*a1 + 280))(a1);
  TimerBase::TimerBase(buf, v19, 0, "convert_cpu", 0x1Eu);
  color = xmmword_19CF22690;
  v22 = a7 - 1;
  if (a7 - 1 <= 0x29 && ((0x3FFFE1FFFFFuLL >> v22) & 1) != 0)
  {
    height = a2->height;
    v24 = height - 1;
    if (height - 1 >= a5)
    {
      v24 = a5;
    }

    width = a2->width;
    a2->data = a2->data + v24 * a2->rowBytes + qword_19CF2CA00[v22] * a4;
    a2->height = height - a5;
    a2->width = width - a4;
  }

  v26 = -1;
  v27 = 1;
  v28 = 4;
  switch(a7)
  {
    case 1u:
      vImageConvert_RGB888toRGBA8888(a2, 0, 0xFFu, a6, 0, 0);
      break;
    case 2u:
      goto LABEL_262;
    case 3u:
      v26 = 15360;
LABEL_262:
      vImageConvert_RGB16UtoRGBA16U(a2, 0, v26, a6, 0, 0);
      break;
    case 4u:
      vImageConvert_RGBFFFtoRGBAFFFF(a2, 0, 1.0, a6, 0, 0);
      break;
    case 5u:
      CI::Convert_Halfs_to_Shorts(a2, a6, 1);
      break;
    case 6u:
      goto LABEL_317;
    case 7u:
      CI::Convert_Shorts_to_Halfs(a2, a6, 1);
      *permuteMap = 197121;
      MEMORY[0x19EAF6730](a6, a6, permuteMap, 0);
      break;
    case 8u:
      CI::Convert_Shorts_to_Halfs(a2, a6, 1);
      *permuteMap = 0x3C00000000000000;
      vImageOverwriteChannelsWithPixel_ARGB16U(permuteMap, a6, a6, 1u, 0);
      break;
    case 9u:
      CI::Convert_Shorts_to_Halfs(a2, a6, 1);
      *permuteMap = 197121;
      MEMORY[0x19EAF6730](a6, a6, permuteMap, 0);
      *permuteMap = 0x3C00000000000000;
      vImageOverwriteChannelsWithPixel_ARGB16U(permuteMap, a6, a6, 1u, 0);
      break;
    case 0xAu:
      goto LABEL_363;
    case 0xBu:
      goto LABEL_321;
    case 0xCu:
      CI::Convert_Floats_to_Halfs(a2, a6, 4);
      *permuteMap = 197121;
      MEMORY[0x19EAF6730](a6, a6, permuteMap, 0);
      break;
    case 0xDu:
      CI::Convert_Floats_to_Halfs(a2, a6, 4);
      *permuteMap = 0x3C00000000000000;
      vImageOverwriteChannelsWithPixel_ARGB16U(permuteMap, a6, a6, 1u, 0);
      break;
    case 0xEu:
      vImageConvert_RGB16UtoRGBA16U(a2, 0, 0xFFFFu, a6, 0, 0);
      a2 = a6;
LABEL_317:
      CI::Convert_Shorts_to_Halfs(a2, a6, v27);
      break;
    case 0xFu:
      v321 = a6->height;
      if (v321)
      {
        v322 = 0;
        data = a2->data;
        rowBytes = a2->rowBytes;
        v325 = a2->height - 1;
        v326 = a6->data;
        v328 = a6->width;
        v327 = a6->rowBytes;
        do
        {
          if (v328)
          {
            v329 = &v326[v327 * v322];
            if (v325 >= v322)
            {
              v330 = v322;
            }

            else
            {
              v330 = v325;
            }

            v331 = &data[v330 * rowBytes];
            v332 = v328;
            do
            {
              _S1 = *v331;
              __asm { FCVT            H1, S1 }

              *v329 = _S1;
              _S1 = *(v331 + 1);
              __asm { FCVT            H1, S1 }

              *(v329 + 1) = _S1;
              _S1 = *(v331 + 2);
              __asm { FCVT            H1, S1 }

              *(v329 + 2) = _S1;
              *(v329 + 3) = COERCE_UNSIGNED_INT(1.0);
              v331 += 12;
              v329 += 8;
              --v332;
            }

            while (v332);
          }

          ++v322;
        }

        while (v322 != v321);
      }

      break;
    case 0x10u:
      goto LABEL_251;
    case 0x11u:
      goto LABEL_408;
    case 0x12u:
      goto LABEL_234;
    case 0x13u:
      goto LABEL_361;
    case 0x14u:
      v28 = 1;
      goto LABEL_363;
    case 0x15u:
      v28 = 1;
      goto LABEL_321;
    case 0x16u:
      v416 = a6->height;
      if (v416)
      {
        v417 = 0;
        v418 = a2->data;
        v419 = a2->rowBytes;
        v420 = a2->height - 1;
        v421 = a6->data;
        v423 = a6->width;
        v422 = a6->rowBytes;
        do
        {
          v424 = v417 + a5;
          if (v420 < v417 + a5)
          {
            v424 = v420;
          }

          if (v423)
          {
            v425 = &v418[v424 * v419];
            v426 = v423;
            v20 = a4;
            v427 = v421;
            do
            {
              _S1 = ((*&v425[4 * (v20 / 3)] >> (10 * (v20 % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H1, S1 }

              *v427++ = LOWORD(_S1);
              ++v20;
              --v426;
            }

            while (v426);
          }

          ++v417;
          v421 += v422;
        }

        while (v417 != v416);
      }

      break;
    case 0x17u:
      v429 = a6->height;
      if (v429)
      {
        v430 = 0;
        v431 = a2->data;
        v432 = a2->rowBytes;
        v433 = a2->height - 1;
        v434 = a6->data;
        v436 = a6->width;
        v435 = a6->rowBytes;
        do
        {
          v437 = v430 + a5;
          if (v433 < v430 + a5)
          {
            v437 = v433;
          }

          if (v436)
          {
            v438 = &v431[v437 * v432];
            v439 = v436;
            v20 = a4;
            v440 = v434;
            do
            {
              *v440++ = ((*&v438[4 * (v20 / 3)] >> (10 * (v20 % 3))) & 0x3FF) / 1023.0;
              ++v20;
              --v439;
            }

            while (v439);
          }

          ++v430;
          v434 = (v434 + v435);
        }

        while (v430 != v429);
      }

      break;
    case 0x18u:
      v475 = a6->height;
      if (v475)
      {
        v476 = 0;
        v477 = a2->data;
        v478 = a2->rowBytes;
        v479 = a2->height - 1;
        v481 = a6->width;
        v480 = a6->rowBytes;
        v482 = a6->data + 2;
        do
        {
          v483 = v476 + a5;
          if (v479 < v476 + a5)
          {
            v483 = v479;
          }

          if (v481)
          {
            v484 = &v477[v483 * v478];
            v20 = v481;
            v485 = v482;
            v486 = 2 * a4;
            do
            {
              _S1 = ((*&v484[4 * (v486 / 3)] >> (10 * (v486 % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H1, S1 }

              *(v485 - 1) = LOWORD(_S1);
              _S1 = ((*&v484[4 * ((v486 + 1) / 3)] >> (10 * ((v486 + 1) % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H1, S1 }

              *v485 = LOWORD(_S1);
              v486 += 2;
              v485 += 2;
              --v20;
            }

            while (v20);
          }

          ++v476;
          v482 += v480;
        }

        while (v476 != v475);
      }

      break;
    case 0x19u:
      v336 = a6->height;
      if (v336)
      {
        v337 = 0;
        v338 = a2->data;
        v339 = a2->rowBytes;
        v340 = a2->height - 1;
        v342 = a6->width;
        v341 = a6->rowBytes;
        v343 = (a6->data + 4);
        do
        {
          v344 = v337 + a5;
          if (v340 < v337 + a5)
          {
            v344 = v340;
          }

          if (v342)
          {
            v345 = &v338[v344 * v339];
            v20 = v342;
            v346 = v343;
            v347 = 2 * a4;
            do
            {
              *(v346 - 1) = ((*&v345[4 * (v347 / 3)] >> (10 * (v347 % 3))) & 0x3FF) / 1023.0;
              *v346 = ((*&v345[4 * ((v347 + 1) / 3)] >> (10 * ((v347 + 1) % 3))) & 0x3FF) / 1023.0;
              v346 += 2;
              v347 += 2;
              --v20;
            }

            while (v20);
          }

          ++v337;
          v343 = (v343 + v341);
        }

        while (v337 != v336);
      }

      break;
    case 0x1Au:
      v27 = 2;
LABEL_251:
      CI::Convert_Bytes_to_Halfs(a2, a6, v27);
      break;
    case 0x1Bu:
      v27 = 2;
LABEL_408:
      CI::Convert_Halfs_to_Bytes(a2, a6, v27);
      break;
    case 0x1Cu:
      v27 = 2;
LABEL_234:
      CI::Convert_Bytes_to_Floats(a2, a6, v27);
      break;
    case 0x1Du:
      v27 = 2;
LABEL_361:
      CI::Convert_Floats_to_Bytes(a2, a6, v27);
      break;
    case 0x1Eu:
      v28 = 2;
LABEL_363:
      CI::Convert_Halfs_to_Floats(a2, a6, v28);
      break;
    case 0x1Fu:
      v28 = 2;
LABEL_321:
      CI::Convert_Floats_to_Halfs(a2, a6, v28);
      break;
    case 0x20u:
      vImageExtractChannel_ARGB16U(a2, a6, 0, 0);
      break;
    case 0x21u:
      vImageConvert_Planar16UtoARGB16U(a2, a2, a2, a2, a6, 0);
      *permuteMap = 0x3C00000000000000;
      vImageOverwriteChannelsWithPixel_ARGB16U(permuteMap, a6, a6, 7u, 0);
      break;
    case 0x22u:
      vImageExtractChannel_ARGBFFFF(a2, a6, 0, 0);
      break;
    case 0x23u:
      vImageBufferFill_ARGBFFFF(a6, &color, 0);
      vImageOverwriteChannels_ARGBFFFF(a2, a6, a6, 8u, 0);
      break;
    case 0x24u:
      *permuteMap = 197121;
      vImageConvert_ARGB2101010ToARGB16F(a2, a6, 0, 1023, permuteMap, 0);
      break;
    case 0x25u:
      *permuteMap = 66051;
      vImageConvert_ARGB2101010ToARGB16F(a2, a6, 0, 1023, permuteMap, 0);
      break;
    case 0x26u:
      v288 = a6->height;
      if (v288)
      {
        v289 = 0;
        v290 = a2->data;
        v291 = a2->rowBytes;
        v292 = a2->height - 1;
        v293 = a6->data;
        v295 = a6->width;
        v294 = a6->rowBytes;
        do
        {
          if (v295)
          {
            v296 = &v293[v294 * v289];
            if (v292 >= v289)
            {
              v297 = v289;
            }

            else
            {
              v297 = v292;
            }

            v20 = v290 + v297 * v291;
            v298 = v295;
            do
            {
              _H2 = *v20;
              __asm { FCVT            S2, H2 }

              v301 = llroundf(_S2 * 1023.0);
              if (v301 >= 0x3FF)
              {
                v302 = 1023;
              }

              else
              {
                v302 = v301;
              }

              v303 = v302 << 20;
              _H2 = *(v20 + 2);
              __asm { FCVT            S2, H2 }

              v306 = llroundf(_S2 * 1023.0);
              if (v306 >= 0x3FF)
              {
                v307 = 1023;
              }

              else
              {
                v307 = v306;
              }

              v308 = v307 << 10;
              _H2 = *(v20 + 4);
              __asm { FCVT            S2, H2 }

              v311 = llroundf(_S2 * 1023.0);
              if (v311 >= 0x3FF)
              {
                v312 = 1023;
              }

              else
              {
                v312 = v311;
              }

              if (v311 >= 0)
              {
                v313 = v312;
              }

              else
              {
                v313 = 0;
              }

              _H2 = *(v20 + 6);
              __asm { FCVT            S2, H2 }

              v316 = llroundf(_S2 * 3.0);
              if (v316 >= 3)
              {
                v316 = 3;
              }

              v317 = v316 & ~(v316 >> 63);
              if (v301 >= 0)
              {
                v318 = v303;
              }

              else
              {
                v318 = 0;
              }

              v319 = v318 | (v317 << 30);
              if (v306 >= 0)
              {
                v320 = v308;
              }

              else
              {
                v320 = 0;
              }

              *v296++ = v319 | v320 | v313;
              v20 += 8;
              --v298;
            }

            while (v298);
          }

          ++v289;
        }

        while (v289 != v288);
      }

      break;
    case 0x27u:
      v506 = a6->height;
      if (v506)
      {
        v507 = 0;
        v508 = a2->data;
        v509 = a2->rowBytes;
        v510 = a2->height - 1;
        v511 = a6->data;
        v513 = a6->width;
        v512 = a6->rowBytes;
        do
        {
          if (v513)
          {
            v514 = &v511[v512 * v507];
            if (v510 >= v507)
            {
              v515 = v507;
            }

            else
            {
              v515 = v510;
            }

            v20 = v508 + v515 * v509;
            v516 = v513;
            do
            {
              _H2 = *v20;
              __asm { FCVT            S2, H2 }

              v519 = llroundf(_S2 * 1023.0);
              if (v519 >= 0x3FF)
              {
                v520 = 1023;
              }

              else
              {
                v520 = v519;
              }

              if (v519 >= 0)
              {
                v521 = v520;
              }

              else
              {
                v521 = 0;
              }

              _H2 = *(v20 + 2);
              __asm { FCVT            S2, H2 }

              v524 = llroundf(_S2 * 1023.0);
              if (v524 >= 0x3FF)
              {
                v525 = 1023;
              }

              else
              {
                v525 = v524;
              }

              _H2 = *(v20 + 4);
              __asm { FCVT            S2, H2 }

              v528 = llroundf(_S2 * 1023.0);
              v529 = v525 << 10;
              if (v528 >= 0x3FF)
              {
                v530 = 1023;
              }

              else
              {
                v530 = v528;
              }

              v531 = v530 << 20;
              _H2 = *(v20 + 6);
              __asm { FCVT            S2, H2 }

              v534 = llroundf(_S2 * 3.0);
              if (v534 >= 3)
              {
                v534 = 3;
              }

              v535 = v534 & ~(v534 >> 63);
              if (v528 >= 0)
              {
                v536 = v531;
              }

              else
              {
                v536 = 0;
              }

              v537 = v536 | (v535 << 30);
              if (v524 >= 0)
              {
                v538 = v529;
              }

              else
              {
                v538 = 0;
              }

              *v514++ = v537 | v538 | v521;
              v20 += 8;
              --v516;
            }

            while (v516);
          }

          ++v507;
        }

        while (v507 != v506);
      }

      break;
    case 0x28u:
    case 0x29u:
      v231 = a6->height;
      if (v231)
      {
        v232 = 0;
        v233 = a6->width;
        do
        {
          if (v233)
          {
            v234 = 0;
            v235 = a6->data + a6->rowBytes * v232;
            v236 = a2->height - 1;
            if (v236 >= v232)
            {
              v236 = v232;
            }

            v237 = a2->data + v236 * a2->rowBytes;
            if (a7 == 40)
            {
              v238 = v237 + 1;
            }

            else
            {
              v238 = a2->data + v236 * a2->rowBytes;
            }

            if (a7 != 40)
            {
              ++v237;
            }

            do
            {
              v239 = *v237;
              v237 += 2;
              *v235 = v239;
              v235[1] = v238[((v234 << 63) >> 63) & 0xFFFFFFFFFFFFFFFELL];
              if (v234)
              {
                v240 = v238;
              }

              else
              {
                v240 = v238 + 2;
              }

              v235[2] = *v240;
              v235[3] = -1;
              ++v234;
              v235 += 4;
              v233 = a6->width;
              v238 += 2;
            }

            while (v233 > v234);
            v231 = a6->height;
          }

          ++v232;
        }

        while (v231 > v232);
      }

      break;
    case 0x2Au:
      v348 = a6->height;
      if (v348)
      {
        v349 = 0;
        v350 = a2->data;
        v351 = a2->rowBytes;
        v352 = a2->height - 1;
        v353 = a6->data;
        v355 = a6->width;
        v354 = a6->rowBytes;
        do
        {
          if (v355)
          {
            v356 = 0;
            v357 = &v353[v354 * v349];
            if (v352 >= v349)
            {
              v358 = v349;
            }

            else
            {
              v358 = v352;
            }

            v359 = &v350[v358 * v351];
            do
            {
              LOWORD(_S2) = *(v359 + 1);
              _S2 = LODWORD(_S2) / 65535.0;
              __asm { FCVT            H2, S2 }

              *v357 = LOWORD(_S2);
              if (_ZF)
              {
                v361 = 1;
              }

              else
              {
                v361 = 0;
              }

              LOWORD(_S2) = *&v359[(v356 << 63 >> 63) & 0xFFFFFFFFFFFFFFFCLL];
              *&_S2 = LODWORD(_S2) / 65535.0;
              __asm { FCVT            H2, S2 }

              *(v357 + 1) = _S2;
              v20 = 4 * v361;
              LOWORD(_S2) = *&v359[v20];
              v359 += 4;
              _S2 = _S2 / 65535.0;
              __asm { FCVT            H2, S2 }

              *(v357 + 2) = LOWORD(_S2);
              *(v357 + 3) = COERCE_UNSIGNED_INT(1.0);
              ++v356;
              v357 += 8;
            }

            while (v355 != v356);
          }

          ++v349;
        }

        while (v349 != v348);
      }

      break;
    case 0x2Bu:
    case 0x2Cu:
      v548 = a6->height;
      if (v548)
      {
        v173 = 0;
        v174 = *a3;
        v175 = a3[1];
        v176 = v175 - 1;
        v545 = a2->data;
        v543 = a2->rowBytes;
        v177 = a2->height - 1;
        v178 = a3[3];
        v179 = v175 - 1;
        v180 = a6->width;
        v181 = a6->rowBytes;
        v20 = a6->data + 3;
        v182 = a5;
        do
        {
          if (v182 >= v177)
          {
            v183 = v177;
          }

          else
          {
            v183 = v182;
          }

          v184 = 2 * ((v173 + a5) & 1) + (v173 + a5) / 2 - 1;
          if (v176 >= (v173 + a5) / 2)
          {
            v185 = (v173 + a5) / 2;
          }

          else
          {
            v185 = v176;
          }

          v186 = v185 & ~(v185 >> 63);
          if (v176 < v184)
          {
            v184 = v176;
          }

          v187 = v184 & ~(v184 >> 63);
          if (v179 >= v186)
          {
            v188 = v186;
          }

          else
          {
            v188 = v179;
          }

          if (v179 >= v187)
          {
            v189 = v187;
          }

          else
          {
            v189 = v179;
          }

          if (v180)
          {
            v190 = &v545[v543 * v183];
            v191 = v174 + v188 * v178;
            v192 = v174 + v189 * v178;
            v193 = *(a3 + 4) - 1;
            v194 = 2 * a4;
            v195 = v20;
            v196 = a4;
            v197 = v180;
            do
            {
              if (v193 >= v196 / 2)
              {
                v198 = v196 / 2;
              }

              else
              {
                v198 = v193;
              }

              v199 = v198 & ~(v198 >> 63);
              if (v193 >= (v194 & 2) + v196 / 2 - 1)
              {
                v200 = (v194 & 2) + v196 / 2 - 1;
              }

              else
              {
                v200 = v193;
              }

              v201 = v200 & ~(v200 >> 63);
              v202 = (9 * *(v191 + 2 * v199) + *(v192 + 2 * v201) + 3 * (*(v192 + 2 * v199) + *(v191 + 2 * v201)) + 8) >> 4;
              v203 = (9 * *(v191 + ((2 * (v199 & 0x3FFFFFFFFFFFFFFFLL)) | 1)) + *(v192 + ((2 * (v201 & 0x3FFFFFFFFFFFFFFFLL)) | 1)) + 3 * (*(v192 + ((2 * (v199 & 0x3FFFFFFFFFFFFFFFLL)) | 1)) + *(v191 + ((2 * (v201 & 0x3FFFFFFFFFFFFFFFLL)) | 1))) + 8) >> 4;
              *(v195 - 3) = v190[v196];
              *(v195 - 2) = v202;
              *(v195 - 1) = v203;
              *v195 = -1;
              v195 += 4;
              ++v196;
              v194 += 2;
              --v197;
            }

            while (v197);
          }

          ++v173;
          ++v182;
          v20 += v181;
        }

        while (v173 != v548);
      }

      break;
    case 0x2Du:
    case 0x2Eu:
      v204 = a6->height;
      if (v204)
      {
        v205 = 0;
        v206 = a2->data;
        v207 = a2->rowBytes;
        v208 = a2->height - 1;
        v209 = *a3;
        v210 = a3[3];
        v211 = a3[1] - 1;
        v213 = a6->width;
        v212 = a6->rowBytes;
        v214 = a6->data + 3;
        v20 = 2 * a4;
        v215 = a5;
        do
        {
          if (v215 >= v208)
          {
            v216 = v208;
          }

          else
          {
            v216 = v215;
          }

          v217 = v205 + a5;
          if (v211 < v205 + a5)
          {
            v217 = v211;
          }

          if (v213)
          {
            v218 = &v206[v207 * v216];
            v219 = v209 + v217 * v210;
            v220 = *(a3 + 4) - 1;
            v221 = 2 * a4;
            v222 = v214;
            v223 = a4;
            v224 = v213;
            do
            {
              if (v220 >= v223 / 2)
              {
                v225 = v223 / 2;
              }

              else
              {
                v225 = v220;
              }

              v226 = v225 & ~(v225 >> 63);
              if (v220 >= (v221 & 2) + v223 / 2 - 1)
              {
                v227 = (v221 & 2) + v223 / 2 - 1;
              }

              else
              {
                v227 = v220;
              }

              v228 = (v219 + 2 * v226);
              v229 = (v219 + 2 * (v227 & ~(v227 >> 63)));
              v230 = (*v229 + 3 * *v228 + 2) >> 2;
              LODWORD(v228) = (v229[1] + 3 * v228[1] + 2) >> 2;
              *(v222 - 3) = v218[v223];
              *(v222 - 2) = v230;
              *(v222 - 1) = v228;
              *v222 = -1;
              v222 += 4;
              ++v223;
              v221 += 2;
              --v224;
            }

            while (v224);
          }

          ++v205;
          ++v215;
          v214 += v212;
        }

        while (v205 != v204);
      }

      break;
    case 0x2Fu:
    case 0x30u:
      v154 = a6->height;
      if (v154)
      {
        v155 = 0;
        v156 = a2->rowBytes;
        v157 = a2->height - 1;
        v158 = a3[3];
        v159 = a3[1] - 1;
        v161 = a6->width;
        v160 = a6->rowBytes;
        v162 = a2->data + a4;
        v163 = *a3 + 2 * a4 + 1;
        v164 = a6->data + 3;
        v20 = 255;
        do
        {
          if (a5 >= v157)
          {
            v165 = v157;
          }

          else
          {
            v165 = a5;
          }

          if (a5 >= v159)
          {
            v166 = v159;
          }

          else
          {
            v166 = a5;
          }

          if (v161)
          {
            v167 = &v162[v156 * v165];
            v168 = v164;
            v169 = v161;
            v170 = v163 + v158 * v166;
            do
            {
              v171 = *v167++;
              v172 = *(v170 - 1);
              *(v168 - 3) = v171;
              *(v168 - 1) = v172;
              *v168 = -1;
              v168 += 4;
              v170 += 2;
              --v169;
            }

            while (v169);
          }

          ++v155;
          ++a5;
          v164 += v160;
        }

        while (v155 != v154);
      }

      break;
    case 0x31u:
    case 0x32u:
    case 0x37u:
    case 0x38u:
    case 0x3Du:
    case 0x3Eu:
      v29 = a6->height;
      if (v29)
      {
        v30 = 0;
        v31 = *a3;
        v32 = a3[1];
        v33 = v32 - 1;
        v34 = a2->data;
        v35 = a2->rowBytes;
        v36 = a2->height - 1;
        v37 = a3[3];
        v38 = v32 - 1;
        v39 = a6->data;
        v20 = a6->width;
        v40 = a6->rowBytes;
        do
        {
          if (v33 >= (v30 + a5) / 2)
          {
            v41 = (v30 + a5) / 2;
          }

          else
          {
            v41 = v33;
          }

          v42 = v41 & ~(v41 >> 63);
          if (v33 >= (2 * ((v30 + a5) & 1) + (v30 + a5) / 2 - 1))
          {
            v43 = 2 * ((v30 + a5) & 1) + (v30 + a5) / 2 - 1;
          }

          else
          {
            v43 = v33;
          }

          v44 = v43 & ~(v43 >> 63);
          if (v36 >= v30 + a5)
          {
            v45 = v30 + a5;
          }

          else
          {
            v45 = v36;
          }

          if (v38 < v42)
          {
            v42 = v38;
          }

          if (v38 < v44)
          {
            v44 = v38;
          }

          if (v20)
          {
            v46 = 0;
            v47 = &v34[v45 * v35];
            v48 = v31 + v42 * v37;
            v49 = v31 + v44 * v37;
            v50 = *(a3 + 4) - 1;
            do
            {
              v51 = 2 * ((v46 + a4) & 1) + (v46 + a4) / 2 - 1;
              if (v50 >= (v46 + a4) / 2)
              {
                v52 = (v46 + a4) / 2;
              }

              else
              {
                v52 = v50;
              }

              v53 = v52 & ~(v52 >> 63);
              if (v50 < v51)
              {
                v51 = v50;
              }

              v54 = v51 & ~(v51 >> 63);
              v55 = 9 * (*(v48 + 4 * v53) >> 6) + (*(v49 + 4 * v54) >> 6);
              v56 = 3 * ((*(v49 + 4 * v53) >> 6) + (*(v48 + 4 * v54) >> 6));
              v57 = (9 * (*(v48 + ((4 * v53) | 2)) >> 6) + (*(v49 + ((4 * v54) | 2)) >> 6) + 3 * ((*(v49 + ((4 * v53) | 2)) >> 6) + (*(v48 + ((4 * v54) | 2)) >> 6)) + 8) >> 4;
              _D2 = (*&v47[2 * v46 + 2 * a4] >> 6) / 1023.0;
              v59 = &v39[8 * v46 + v40 * v30];
              __asm { FCVT            H2, D2 }

              *v59 = LOWORD(_D2);
              _D2 = ((v55 + v56 + 8) >> 4) / 1023.0;
              __asm { FCVT            H2, D2 }

              *(v59 + 1) = LOWORD(_D2);
              _D2 = v57 / 1023.0;
              __asm { FCVT            H2, D2 }

              *(v59 + 2) = LOWORD(_D2);
              *(v59 + 3) = COERCE_UNSIGNED_INT(1.0);
              ++v46;
            }

            while (v46 != v20);
          }

          ++v30;
        }

        while (v30 != v29);
      }

      break;
    case 0x33u:
    case 0x34u:
    case 0x39u:
    case 0x3Au:
    case 0x3Fu:
    case 0x40u:
      v66 = a6->height;
      if (v66)
      {
        v67 = 0;
        v68 = a2->data;
        v69 = a2->rowBytes;
        v70 = a2->height - 1;
        v71 = *a3;
        v72 = a3[3];
        v73 = a3[1] - 1;
        v74 = a6->data;
        v75 = a6->width;
        v76 = a6->rowBytes;
        do
        {
          v20 = v67 + a5;
          if (v70 >= v67 + a5)
          {
            v77 = v67 + a5;
          }

          else
          {
            v77 = v70;
          }

          if (v73 >= v20)
          {
            v78 = v67 + a5;
          }

          else
          {
            v78 = v73;
          }

          if (v75)
          {
            v20 = 0;
            v79 = &v68[v77 * v69];
            v80 = v71 + v78 * v72;
            v81 = *(a3 + 4) - 1;
            do
            {
              v82 = 2 * ((v20 + a4) & 1) + (v20 + a4) / 2 - 1;
              if (v81 >= (v20 + a4) / 2)
              {
                v83 = (v20 + a4) / 2;
              }

              else
              {
                v83 = v81;
              }

              v84 = v83 & ~(v83 >> 63);
              if (v81 < v82)
              {
                v82 = v81;
              }

              v85 = (v80 + 4 * v84);
              v86 = (v80 + 4 * (v82 & ~(v82 >> 63)));
              v87 = 3 * (*v85 >> 6) + (*v86 >> 6);
              LODWORD(v85) = (3 * (v85[1] >> 6) + (v86[1] >> 6) + 2) >> 2;
              _D2 = (*&v79[2 * v20 + 2 * a4] >> 6) / 1023.0;
              v89 = &v74[8 * v20 + v76 * v67];
              __asm { FCVT            H2, D2 }

              *v89 = LOWORD(_D2);
              _D2 = ((v87 + 2) >> 2) / 1023.0;
              __asm { FCVT            H2, D2 }

              *(v89 + 1) = LOWORD(_D2);
              _D2 = v85 / 1023.0;
              __asm { FCVT            H2, D2 }

              *(v89 + 2) = LOWORD(_D2);
              *(v89 + 3) = COERCE_UNSIGNED_INT(1.0);
              ++v20;
            }

            while (v20 != v75);
          }

          ++v67;
        }

        while (v67 != v66);
      }

      break;
    case 0x35u:
    case 0x36u:
    case 0x3Bu:
    case 0x3Cu:
    case 0x41u:
    case 0x42u:
      v92 = a6->height;
      if (v92)
      {
        v93 = 0;
        v94 = a2->rowBytes;
        v95 = a2->height - 1;
        v96 = a3[3];
        v97 = a3[1] - 1;
        v98 = a2->data + 2 * a4;
        v100 = a6->width;
        v99 = a6->rowBytes;
        v101 = *a3 + 4 * a4 + 2;
        v102 = a6->data + 4;
        do
        {
          if (a5 >= v97)
          {
            v20 = v97;
          }

          else
          {
            v20 = a5;
          }

          if (a5 >= v95)
          {
            v103 = v95;
          }

          else
          {
            v103 = a5;
          }

          if (v100)
          {
            v20 = v101 + v96 * v20;
            v104 = v102;
            v105 = v100;
            v106 = &v98[v94 * v103];
            do
            {
              v107 = *v106;
              v106 += 2;
              v108 = v107 >> 6;
              v109 = *(v20 - 2) >> 6;
              v110 = *v20;
              v20 += 4;
              _D2 = v108 / 1023.0;
              __asm { FCVT            H2, D2 }

              *(v104 - 2) = LOWORD(_D2);
              _D2 = v109 / 1023.0;
              __asm { FCVT            H2, D2 }

              _D3 = (v110 >> 6) / 1023.0;
              *(v104 - 1) = LOWORD(_D2);
              __asm { FCVT            H2, D3 }

              *v104 = LOWORD(_D2);
              v104[1] = COERCE_UNSIGNED_INT(1.0);
              v104 += 4;
              --v105;
            }

            while (v105);
          }

          ++v93;
          ++a5;
          v102 += v99;
        }

        while (v93 != v92);
      }

      break;
    case 0x43u:
    case 0x44u:
      v547 = a6->height;
      if (v547)
      {
        v114 = 0;
        v115 = a3[1];
        v116 = v115 - 1;
        v541 = a2->data;
        v542 = *a3;
        v117 = a2->height - 1;
        v539 = a3[3];
        v540 = a2->rowBytes;
        v118 = v115 - 1;
        v119 = a6->width;
        v544 = a6->rowBytes;
        v120 = a6->data + 4;
        do
        {
          v121 = v114 + a5;
          if (v116 >= (v114 + a5) / 2)
          {
            v122 = (v114 + a5) / 2;
          }

          else
          {
            v122 = v116;
          }

          v123 = v122 & ~(v122 >> 63);
          if (v116 >= (2 * ((v114 + a5) & 1) + (v114 + a5) / 2 - 1))
          {
            v124 = 2 * ((v114 + a5) & 1) + (v114 + a5) / 2 - 1;
          }

          else
          {
            v124 = v116;
          }

          v125 = v124 & ~(v124 >> 63);
          if (v117 < v121)
          {
            v121 = v117;
          }

          if (v118 < v123)
          {
            v123 = v118;
          }

          if (v118 < v125)
          {
            v125 = v118;
          }

          if (v119)
          {
            v126 = &v541[v121 * v540];
            v127 = 2 * a4;
            v128 = v542 + v123 * v539;
            v129 = v542 + v125 * v539;
            v130 = *(a3 + 4) - 1;
            v131 = v120;
            v132 = a4;
            v133 = v119;
            do
            {
              if (v130 >= v132 / 2)
              {
                v134 = v132 / 2;
              }

              else
              {
                v134 = v130;
              }

              if (v130 >= (v127 & 2) + v132 / 2 - 1)
              {
                v135 = (v127 & 2) + v132 / 2 - 1;
              }

              else
              {
                v135 = v130;
              }

              v136 = v134 & ~(v134 >> 63);
              v137 = v135 & ~(v135 >> 63);
              v138 = (2 * v136) / 3uLL;
              v139 = 10 * (2 * v136 % 3u);
              v140 = (2 * v137) / 3uLL;
              v141 = 9 * ((*(v128 + 4 * v138) >> v139) & 0x3FF);
              v142 = 10 * (2 * v137 % 3u);
              v143 = *(v128 + 4 * v140) >> v142;
              v144 = *(v129 + 4 * v140) >> v142;
              LODWORD(v140) = (2 * v136) | 1;
              v145 = v140 / 3uLL;
              v146 = ((*(v129 + 4 * v138) >> v139) & 0x3FF) + (v143 & 0x3FF);
              LODWORD(v138) = (2 * v137) | 1;
              v147 = (v144 & 0x3FF) + v141;
              v148 = v138 / 3uLL;
              v20 = 10 * (v138 % 3);
              v149 = (v147 + 3 * v146 + 8) >> 4;
              v150 = (((*(v129 + 4 * v148) >> v20) & 0x3FF) + 9 * ((*(v128 + 4 * v145) >> (10 * (v140 - 3 * v145))) & 0x3FF) + 3 * (((*(v129 + 4 * v145) >> (10 * (v140 - 3 * v145))) & 0x3FF) + ((*(v128 + 4 * v148) >> v20) & 0x3FFu)) + 8) >> 4;
              _D2 = ((*&v126[4 * (v132 / 3)] >> (10 * (v132 % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H2, D2 }

              _D3 = v149 / 1023.0;
              *(v131 - 2) = LOWORD(_D2);
              __asm { FCVT            H2, D3 }

              _D3 = v150 / 1023.0;
              __asm { FCVT            H3, D3 }

              *(v131 - 1) = LOWORD(_D2);
              *v131 = LOWORD(_D3);
              v131[1] = COERCE_UNSIGNED_INT(1.0);
              v127 += 2;
              ++v132;
              v131 += 4;
              --v133;
            }

            while (v133);
          }

          ++v114;
          v120 += v544;
        }

        while (v114 != v547);
      }

      break;
    case 0x45u:
    case 0x46u:
      v263 = a6->height;
      if (v263)
      {
        v264 = 0;
        v546 = a2->rowBytes;
        v549 = a2->data;
        v265 = a2->height - 1;
        v266 = *a3;
        v267 = a3[3];
        v268 = a3[1] - 1;
        v270 = a6->width;
        v269 = a6->rowBytes;
        v20 = a6->data + 4;
        do
        {
          v271 = v264 + a5;
          if (v265 >= v264 + a5)
          {
            v272 = v264 + a5;
          }

          else
          {
            v272 = v265;
          }

          if (v268 < v271)
          {
            v271 = v268;
          }

          if (v270)
          {
            v273 = &v549[v272 * v546];
            v274 = v266 + v271 * v267;
            v275 = *(a3 + 4) - 1;
            v276 = v20;
            v277 = a4;
            v278 = 2 * a4;
            v279 = v270;
            do
            {
              if (v275 >= v277 / 2)
              {
                v280 = v277 / 2;
              }

              else
              {
                v280 = v275;
              }

              v281 = v280 & ~(v280 >> 63);
              if (v275 >= (v278 & 2) + v277 / 2 - 1)
              {
                v282 = (v278 & 2) + v277 / 2 - 1;
              }

              else
              {
                v282 = v275;
              }

              v283 = v282 & ~(v282 >> 63);
              v284 = (((*(v274 + 4 * (((2 * v283) | 1u) / 3uLL)) >> (10 * (((2 * v283) | 1u) % 3))) & 0x3FF) + 3 * ((*(v274 + 4 * (((2 * v281) | 1u) / 3uLL)) >> (10 * (((2 * v281) | 1u) % 3))) & 0x3FFu) + 2) >> 2;
              _D2 = ((*&v273[4 * (v277 / 3)] >> (10 * (v277 % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H2, D2 }

              _D3 = ((((*(v274 + 4 * ((2 * v283) / 3uLL)) >> (10 * (2 * v283 % 3u))) & 0x3FF) + 3 * ((*(v274 + 4 * ((2 * v281) / 3uLL)) >> (10 * (2 * v281 % 3u))) & 0x3FFu) + 2) >> 2) / 1023.0;
              *(v276 - 2) = LOWORD(_D2);
              __asm { FCVT            H2, D3 }

              _D3 = v284 / 1023.0;
              __asm { FCVT            H3, D3 }

              *(v276 - 1) = LOWORD(_D2);
              *v276 = LOWORD(_D3);
              v276[1] = COERCE_UNSIGNED_INT(1.0);
              v278 += 2;
              ++v277;
              v276 += 4;
              --v279;
            }

            while (v279);
          }

          ++v264;
          v20 += v269;
        }

        while (v264 != v263);
      }

      break;
    case 0x47u:
    case 0x48u:
      v241 = a6->height;
      if (v241)
      {
        v242 = 0;
        v243 = a2->data;
        v244 = a2->rowBytes;
        v245 = a2->height - 1;
        v246 = *a3;
        v247 = a3[3];
        v248 = a3[1] - 1;
        v250 = a6->width;
        v249 = a6->rowBytes;
        v20 = a6->data + 4;
        do
        {
          if (v245 >= v242 + a5)
          {
            v251 = v242 + a5;
          }

          else
          {
            v251 = v245;
          }

          if (v248 >= v242 + a5)
          {
            v252 = v242 + a5;
          }

          else
          {
            v252 = v248;
          }

          if (v250)
          {
            v253 = &v243[v251 * v244];
            v254 = a4;
            v255 = v20;
            v256 = 2 * a4;
            v257 = v250;
            v258 = v246 + v252 * v247;
            do
            {
              v259 = (*(v258 + 4 * ((v256 + 1) / 3)) >> (10 * ((v256 + 1) % 3))) & 0x3FF;
              _D2 = ((*&v253[4 * (v254 / 3)] >> (10 * (v254 % 3))) & 0x3FF) / 1023.0;
              __asm { FCVT            H2, D2 }

              _D3 = ((*(v258 + 4 * (v256 / 3)) >> (10 * (v256 % 3))) & 0x3FF) / 1023.0;
              *(v255 - 2) = LOWORD(_D2);
              __asm { FCVT            H2, D3 }

              _D3 = v259 / 1023.0;
              __asm { FCVT            H3, D3 }

              *(v255 - 1) = LOWORD(_D2);
              *v255 = LOWORD(_D3);
              v255[1] = COERCE_UNSIGNED_INT(1.0);
              v256 += 2;
              v255 += 4;
              ++v254;
              --v257;
            }

            while (v257);
          }

          ++v242;
          v20 += v249;
        }

        while (v242 != v241);
      }

      break;
    case 0x49u:
      v363 = a6->height;
      if (v363)
      {
        v364 = 0;
        v365 = *a3;
        v366 = a3[1];
        v367 = v366 - 1;
        v550 = a2->data;
        v368 = a2->rowBytes;
        v369 = a2->height - 1;
        v370 = a3[3];
        v371 = v366 - 1;
        v372 = a6->width;
        v373 = a6->rowBytes;
        v20 = 2 * a4;
        v374 = a6->data + 4;
        v375 = a5;
        do
        {
          if (v375 >= v369)
          {
            v376 = v369;
          }

          else
          {
            v376 = v375;
          }

          v377 = 2 * ((v364 + a5) & 1) + (v364 + a5) / 2 - 1;
          if (v367 >= (v364 + a5) / 2)
          {
            v378 = (v364 + a5) / 2;
          }

          else
          {
            v378 = v367;
          }

          v379 = v378 & ~(v378 >> 63);
          if (v367 < v377)
          {
            v377 = v367;
          }

          v380 = v377 & ~(v377 >> 63);
          if (v371 >= v379)
          {
            v381 = v379;
          }

          else
          {
            v381 = v371;
          }

          if (v371 >= v380)
          {
            v382 = v380;
          }

          else
          {
            v382 = v371;
          }

          if (v372)
          {
            v383 = &v550[v368 * v376];
            v384 = v365 + v381 * v370;
            v385 = v365 + v382 * v370;
            v386 = *(a3 + 4) - 1;
            v387 = v374;
            v388 = a4;
            v389 = 2 * a4;
            v390 = v372;
            do
            {
              v391 = (v389 & 2) + v388 / 2 - 1;
              if (v386 >= v388 / 2)
              {
                v392 = v388 / 2;
              }

              else
              {
                v392 = v386;
              }

              if (v386 < v391)
              {
                v391 = v386;
              }

              v393 = v391 & ~(v391 >> 63);
              v394 = 4 * (v392 & ~(v392 >> 63));
              _H4 = *(v384 + v394);
              _H5 = *(v384 + 4 * v393);
              _H6 = *(v385 + v394);
              __asm
              {
                FCVT            S4, H4
                FCVT            S5, H5
                FCVT            S6, H6
              }

              _H7 = *(v385 + 4 * v393);
              __asm { FCVT            S7, H7 }

              _H17 = *(v384 + (v394 | 2));
              v404 = (_S5 * 3.0) + (_S4 * 9.0);
              __asm { FCVT            S5, H17 }

              v406 = (4 * v393) | 2;
              _H17 = *(v384 + v406);
              v408 = v404 + (_S6 * 3.0);
              __asm { FCVT            S6, H17 }

              v410 = (_S6 * 3.0) + (_S5 * 9.0);
              LOWORD(_S6) = *(v385 + (v394 | 2));
              _S4 = (v408 + _S7) * 0.0625;
              __asm { FCVT            S6, H6 }

              v413 = v410 + (_S6 * 3.0);
              LOWORD(_S6) = *(v385 + v406);
              __asm
              {
                FCVT            H4, S4
                FCVT            S6, H6
              }

              _S5 = (v413 + _S6) * 0.0625;
              __asm { FCVT            H5, S5 }

              *(v387 - 2) = *&v383[v389];
              *(v387 - 1) = LOWORD(_S4);
              *v387 = LOWORD(_S5);
              v387[1] = COERCE_UNSIGNED_INT(1.0);
              v389 += 2;
              ++v388;
              v387 += 4;
              --v390;
            }

            while (v390);
          }

          ++v364;
          ++v375;
          v374 += v373;
        }

        while (v364 != v363);
      }

      break;
    case 0x4Au:
      v441 = a6->height;
      if (v441)
      {
        v442 = 0;
        v443 = a2->data;
        v444 = a2->rowBytes;
        v445 = a2->height - 1;
        v446 = *a3;
        v447 = a3[3];
        v448 = a3[1] - 1;
        v450 = a6->width;
        v449 = a6->rowBytes;
        v20 = a6->data + 4;
        v451 = a5;
        do
        {
          if (v451 >= v445)
          {
            v452 = v445;
          }

          else
          {
            v452 = v451;
          }

          v453 = v442 + a5;
          if (v448 < v442 + a5)
          {
            v453 = v448;
          }

          if (v450)
          {
            v454 = &v443[v444 * v452];
            v455 = v446 + v453 * v447;
            v456 = *(a3 + 4) - 1;
            v457 = v20;
            v458 = a4;
            v459 = 2 * a4;
            v460 = v450;
            do
            {
              if (v456 >= v458 / 2)
              {
                v461 = v458 / 2;
              }

              else
              {
                v461 = v456;
              }

              v462 = v461 & ~(v461 >> 63);
              if (v456 >= (v459 & 2) + v458 / 2 - 1)
              {
                v463 = (v459 & 2) + v458 / 2 - 1;
              }

              else
              {
                v463 = v456;
              }

              v464 = (v455 + 4 * v462);
              _H4 = *v464;
              __asm { FCVT            S4, H4 }

              v467 = (v455 + 4 * (v463 & ~(v463 >> 63)));
              _H5 = *v467;
              __asm { FCVT            S5, H5 }

              _S4 = (_S5 + (_S4 * 3.0)) * 0.25;
              LOWORD(_S5) = v464[1];
              __asm { FCVT            S5, H5 }

              _H6 = v467[1];
              __asm
              {
                FCVT            H4, S4
                FCVT            S6, H6
              }

              _S5 = (_S6 + (_S5 * 3.0)) * 0.25;
              __asm { FCVT            H5, S5 }

              *(v457 - 2) = *&v454[v459];
              *(v457 - 1) = LOWORD(_S4);
              *v457 = LOWORD(_S5);
              v457[1] = COERCE_UNSIGNED_INT(1.0);
              v459 += 2;
              ++v458;
              v457 += 4;
              --v460;
            }

            while (v460);
          }

          ++v442;
          ++v451;
          v20 += v449;
        }

        while (v442 != v441);
      }

      break;
    case 0x4Bu:
      v489 = a6->height;
      if (v489)
      {
        v490 = 0;
        v491 = a2->rowBytes;
        v492 = a2->height - 1;
        v493 = a3[3];
        v494 = a3[1] - 1;
        v495 = a2->data + 2 * a4;
        v497 = a6->width;
        v496 = a6->rowBytes;
        v498 = *a3 + 4 * a4 + 2;
        v499 = a6->data + 4;
        do
        {
          if (a5 >= v492)
          {
            v20 = v492;
          }

          else
          {
            v20 = a5;
          }

          if (a5 >= v494)
          {
            v500 = v494;
          }

          else
          {
            v500 = a5;
          }

          if (v497)
          {
            v20 = &v495[v491 * v20];
            v501 = v499;
            v502 = v497;
            v503 = v498 + v493 * v500;
            do
            {
              v504 = *v20;
              v20 += 2;
              v505 = *(v503 - 2);
              *(v501 - 2) = v504;
              *(v501 - 2) = v505;
              *(v501 + 1) = COERCE_UNSIGNED_INT(1.0);
              v503 += 4;
              v501 += 8;
              --v502;
            }

            while (v502);
          }

          ++v490;
          ++a5;
          v499 += v496;
        }

        while (v490 != v489);
      }

      break;
    default:
      break;
  }

  CI::convert_cpu(CI::Context *,vImage_Buffer,vImage_Buffer,long long,long long,vImage_Buffer,CI::ConvertType)::SignpostTimer::~SignpostTimer(buf, v20);
}

void sub_19CE605A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  CI::convert_cpu(CI::Context *,vImage_Buffer,vImage_Buffer,long long,long long,vImage_Buffer,CI::ConvertType)::SignpostTimer::~SignpostTimer(va, a2);
  _Unwind_Resume(a1);
}

uint64_t ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_4;
  v8[3] = &__block_descriptor_92_e22_v48__0r_v8Q16Q24Q32Q40l;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = a2;
  v11 = a5;
  v12 = a4;
  v13 = a6;
  v14 = *(a1 + 64);
  return SurfaceApplyPlaneReadOnlyBlock(v6, v8);
}

void ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_4(uint64_t a1, void *a2, uint64_t a3, vImagePixelCount a4, vImagePixelCount a5, size_t a6)
{
  v12.data = a2;
  v12.height = a5;
  v12.width = a4;
  v12.rowBytes = a6;
  memset(v11, 0, sizeof(v11));
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 72);
  *&v10.data = *(a1 + 56);
  *&v10.width = v9;
  CI::convert_cpu(v7, &v12, v11, v6, v8, &v10, *(a1 + 88));
}

__n128 ___ZN2CI25convert_buffer_to_textureEPNS_7ContextEP11__IOSurfacexxP13vImage_BufferS3_PKvNS_11ConvertTypeE_block_invoke_5(uint64_t a1, void *a2, uint64_t a3, vImagePixelCount a4, vImagePixelCount a5, size_t a6)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v7[1];
  *&v14.data = *v7;
  *&v14.width = v8;
  memset(v13, 0, sizeof(v13));
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12.data = a2;
  v12.height = a5;
  v12.width = a4;
  v12.rowBytes = a6;
  CI::convert_cpu(v6, &v14, v13, v9, v10, &v12, *(a1 + 64));
  return result;
}

void ___ZN2CIL13convert_metalEPKNS_12MetalContextE13vImage_BufferP11__IOSurfacePKvNS_11ConvertTypeE_block_invoke_314(uint64_t a1)
{
  v2 = kdebug_trace();
  v4 = ci_signpost_log_render(v2, v3);
  v5 = *(a1 + 32);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v4;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "convert_metal", &unk_19CFBCBAE, v7, 2u);
    }
  }
}

void ___ZN2CIL13convert_metalEPKNS_12MetalContextE13vImage_BufferP11__IOSurfacePKvNS_11ConvertTypeE_block_invoke_317(uint64_t a1)
{
  v2 = kdebug_trace();
  v4 = ci_signpost_log_render(v2, v3);
  v5 = *(a1 + 32);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v4;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "convert_metal", &unk_19CFBCBAE, v7, 2u);
    }
  }
}

vImage_Error CI::Convert_Halfs_to_Shorts(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = 4 * *(this + 2);
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = 4 * a2->width;
  v8.rowBytes = rowBytes;
  return vImageConvert_16Fto16U(&src, &v8, 0);
}

vImage_Error CI::Convert_Shorts_to_Halfs(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = 4 * *(this + 2);
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = 4 * a2->width;
  v8.rowBytes = rowBytes;
  return vImageConvert_16Uto16F(&src, &v8, 0);
}

vImage_Error CI::Convert_Halfs_to_Floats(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_Planar16FtoPlanarF(&src, &v8, 0);
}

vImage_Error CI::Convert_Floats_to_Halfs(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_PlanarFtoPlanar16F(&src, &v8, 0);
}

vImage_Error CI::Convert_Bytes_to_Halfs(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_Planar8toPlanar16F(&src, &v8, 0);
}

vImage_Error CI::Convert_Halfs_to_Bytes(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_Planar16FtoPlanar8(&src, &v8, 0);
}

vImage_Error CI::Convert_Bytes_to_Floats(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_Planar8toPlanarF(&src, &v8, 1.0, 0.0, 0);
}

vImage_Error CI::Convert_Floats_to_Bytes(CI *this, const vImage_Buffer *a2, const vImage_Buffer *a3)
{
  v3 = *(this + 1);
  src.data = *this;
  src.height = v3;
  v4 = *(this + 3);
  src.width = *(this + 2) * a3;
  src.rowBytes = v4;
  height = a2->height;
  v8.data = a2->data;
  v8.height = height;
  rowBytes = a2->rowBytes;
  v8.width = a2->width * a3;
  v8.rowBytes = rowBytes;
  return vImageConvert_PlanarFtoPlanar8(&src, &v8, 1.0, 0.0, 0);
}

void CI::convert_cpu(CI::Context *,vImage_Buffer,vImage_Buffer,long long,long long,vImage_Buffer,CI::ConvertType)::SignpostTimer::~SignpostTimer(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "convert_cpu", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

const char *CI::name_for_format(int a1)
{
  if (a1 > 1792)
  {
    if (a1 > 2307)
    {
      if (a1 > 3332)
      {
        if (a1 > 3605)
        {
          if (a1 <= 3859)
          {
            switch(a1)
            {
              case 3606:
                return "YCC422v12";
              case 3858:
                return "YCC420v16";
              case 3859:
                return "YCC444v16";
            }
          }

          else if (a1 > 4359)
          {
            if (a1 == 4360)
            {
              return "RGB10A8-WideGamut";
            }

            if (a1 == 4616)
            {
              return "RGB10A8-WideLinear";
            }
          }

          else
          {
            if (a1 == 3860)
            {
              return "CbYCrY16";
            }

            if (a1 == 3862)
            {
              return "YCC422v16";
            }
          }
        }

        else if (a1 <= 3346)
        {
          switch(a1)
          {
            case 3333:
              return "R12";
            case 3334:
              return "RG12";
            case 3346:
              return "YCC420f12";
          }
        }

        else if (a1 > 3601)
        {
          if (a1 == 3602)
          {
            return "YCC420v12";
          }

          if (a1 == 3603)
          {
            return "YCC444v12";
          }
        }

        else
        {
          if (a1 == 3347)
          {
            return "YCC444f12";
          }

          if (a1 == 3350)
          {
            return "YCC422f12";
          }
        }
      }

      else if (a1 > 2316)
      {
        if (a1 <= 2823)
        {
          switch(a1)
          {
            case 2317:
              return "XRGBf";
            case 2567:
              return "RGB10-WideGamut";
            case 2569:
              return "ARGB10-WideGamut";
          }
        }

        else if (a1 > 3080)
        {
          if (a1 == 3081)
          {
            return "ARGB10-WideLinear";
          }

          if (a1 == 3331)
          {
            return "L12";
          }
        }

        else
        {
          if (a1 == 2824)
          {
            return "RGBA14";
          }

          if (a1 == 3079)
          {
            return "RGB10-WideLinear";
          }
        }
      }

      else
      {
        if (a1 <= 2310)
        {
          if (a1 == 2308)
          {
            return "LAf";
          }

          if (a1 == 2309)
          {
            return "Rf";
          }

          return "RGf";
        }

        if (a1 <= 2312)
        {
          if (a1 == 2311)
          {
            return "RGBf";
          }

          else
          {
            return "RGBAf";
          }
        }

        if (a1 == 2313)
        {
          return "ARGBf";
        }

        if (a1 == 2316)
        {
          return "RGBXf";
        }
      }
    }

    else
    {
      if (a1 <= 2049)
      {
        switch(a1)
        {
          case 1793:
            result = "A16";
            break;
          case 1794:
            result = "I16";
            break;
          case 1795:
            result = "L16";
            break;
          case 1796:
            result = "LA16";
            break;
          case 1797:
            result = "R16";
            break;
          case 1798:
            result = "RG16";
            break;
          case 1799:
            result = "RGB16";
            break;
          case 1800:
            result = "RGBA16";
            break;
          case 1801:
            result = "ARGB16";
            break;
          case 1802:
          case 1803:
          case 1806:
          case 1807:
          case 1808:
          case 1809:
          case 1812:
          case 1813:
            return "unknown-format";
          case 1804:
            result = "RGBX16";
            break;
          case 1805:
            result = "XRGB16";
            break;
          case 1810:
            result = "YCC420f16";
            break;
          case 1811:
            result = "YCC444f16";
            break;
          case 1814:
            result = "YCC422f16";
            break;
          default:
            if (a1 != 2049)
            {
              return "unknown-format";
            }

            result = "Ah";
            break;
        }

        return result;
      }

      if (a1 > 2059)
      {
        if (a1 <= 2069)
        {
          switch(a1)
          {
            case 2060:
              return "RGBXh";
            case 2066:
              return "YCC420fh";
            case 2067:
              return "YCC444fh";
          }
        }

        else
        {
          if (a1 > 2305)
          {
            if (a1 == 2306)
            {
              return "If";
            }

            else
            {
              return "Lf";
            }
          }

          if (a1 == 2070)
          {
            return "YCC422fh";
          }

          if (a1 == 2305)
          {
            return "Af";
          }
        }
      }

      else
      {
        if (a1 <= 2052)
        {
          if (a1 == 2050)
          {
            return "Ih";
          }

          if (a1 == 2051)
          {
            return "Lh";
          }

          return "LAh";
        }

        if (a1 <= 2054)
        {
          if (a1 == 2053)
          {
            return "Rh";
          }

          else
          {
            return "RGh";
          }
        }

        if (a1 == 2055)
        {
          return "RGBh";
        }

        if (a1 == 2056)
        {
          return "RGBAh";
        }
      }
    }

    return "unknown-format";
  }

  if (a1 > 532)
  {
    if (a1 <= 789)
    {
      if (a1 <= 773)
      {
        if (a1 <= 534)
        {
          if (a1 == 533)
          {
            return "YCbYCr8";
          }

          else
          {
            return "YCC422v";
          }
        }

        switch(a1)
        {
          case 535:
            return "AYCbCr8";
          case 771:
            return "L10";
          case 773:
            return "R10";
        }
      }

      else if (a1 > 784)
      {
        switch(a1)
        {
          case 785:
            return "A2BGR10";
          case 786:
            return "YCC420f10";
          case 787:
            return "YCC444f10";
        }
      }

      else
      {
        switch(a1)
        {
          case 774:
            return "RG10";
          case 775:
            return "RGB10";
          case 784:
            return "A2RGB10";
        }
      }
    }

    else if (a1 > 1297)
    {
      if (a1 > 1553)
      {
        switch(a1)
        {
          case 1554:
            return "YCC420v10Packed";
          case 1555:
            return "YCC444v10Packed";
          case 1558:
            return "YCC422v10Packed";
        }
      }

      else
      {
        switch(a1)
        {
          case 1298:
            return "YCC420f10Packed";
          case 1299:
            return "YCC444f10Packed";
          case 1302:
            return "YCC422f10Packed";
        }
      }
    }

    else if (a1 > 1045)
    {
      switch(a1)
      {
        case 1046:
          return "YCC422v10";
        case 1285:
          return "R10p";
        case 1286:
          return "RG10p";
      }
    }

    else
    {
      switch(a1)
      {
        case 790:
          return "YCC422f10";
        case 1042:
          return "YCC420v10";
        case 1043:
          return "YCC444v10";
      }
    }

    return "unknown-format";
  }

  if (a1 > 529)
  {
    if (a1 == 530)
    {
      return "YCC420v";
    }

    else if (a1 == 531)
    {
      return "YCC444v";
    }

    else
    {
      return "CbYCrY8";
    }
  }

  else
  {
    switch(a1)
    {
      case 257:
        result = "A8";
        break;
      case 258:
        result = "I8";
        break;
      case 259:
        result = "L8";
        break;
      case 260:
        result = "LA8";
        break;
      case 261:
        result = "R8";
        break;
      case 262:
        result = "RG8";
        break;
      case 263:
        result = "RGB8";
        break;
      case 264:
        result = "RGBA8";
        break;
      case 265:
        result = "ARGB8";
        break;
      case 266:
        result = "BGRA8";
        break;
      case 267:
        result = "ABGR8";
        break;
      case 268:
        result = "RGBX8";
        break;
      case 269:
        result = "XRGB8";
        break;
      case 270:
        result = "BGRX8";
        break;
      case 271:
        result = "XBGR8";
        break;
      case 272:
      case 273:
        return "unknown-format";
      case 274:
        result = "YCC420f";
        break;
      case 275:
        result = "YCC444f";
        break;
      case 276:
        result = "CbYCrY8f";
        break;
      case 277:
        result = "YCbYCr8f";
        break;
      case 278:
        result = "YCC422f";
        break;
      default:
        if (a1)
        {
          return "unknown-format";
        }

        result = "Nil";
        break;
    }
  }

  return result;
}

uint64_t CI::format_modernize(uint64_t a1, CI *this, const char *a3)
{
  v3 = a1;
  v4 = a1 - 1;
  if (a1 - 1) <= 0x3E && ((0x7C77FFFFF807FFFFuLL >> v4))
  {
    v3 = dword_19CF2CB54[v4];
    CI::log_old_format(this, off_1E75C5588[v4], a3);
  }

  return v3;
}

void CI::log_old_format(CI *this, const char *a2, const char *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = ci_logger_api(this, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = this;
    v8 = 2082;
    v9 = a2;
    _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_INFO, "%{public}s an old value for kPixelFormat%{public}s was used.", &v6, 0x16u);
  }
}

uint64_t CI::format_component_count(int a1)
{
  result = 0;
  if (a1 <= 1798)
  {
    if (a1 <= 770)
    {
      if (a1 > 263)
      {
        v3 = a1 - 8;
        if ((a1 - 264) > 0xE)
        {
LABEL_8:
          if ((a1 - 530) >= 5)
          {
            if (a1 == 535)
            {
              return 4;
            }

            else
            {
              return 0;
            }
          }

          return 3;
        }

        if (((1 << v3) & 0x7C00) != 0)
        {
          return 3;
        }

        if (((1 << v3) & 0xF) == 0)
        {
          if (((1 << v3) & 0xF0) != 0)
          {
            return 3;
          }

          goto LABEL_8;
        }

        return 4;
      }

      if (a1 <= 259)
      {
        if ((a1 - 257) >= 3)
        {
          return result;
        }

        return 1;
      }

      if (a1 > 261)
      {
        if (a1 != 262)
        {
          return 3;
        }
      }

      else if (a1 != 260)
      {
        return 1;
      }

      return 2;
    }

    if (a1 <= 1285)
    {
      if (a1 <= 774)
      {
        if (a1 == 771 || a1 == 773)
        {
          return 1;
        }

        if (a1 != 774)
        {
          return result;
        }

        return 2;
      }

      v7 = a1 - 7;
      if ((a1 - 775) <= 0xF && (((1 << v7) & 0x9800) != 0 || ((1 << v7) & 0x600) != 0 || a1 == 775) || (a1 - 1042) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
      {
        return 3;
      }

      if (a1 != 1285)
      {
        return result;
      }

      return 1;
    }

    if (a1 > 1792)
    {
      if (a1 < 1796 || a1 == 1797)
      {
        return 1;
      }

      return 2;
    }

    if (a1 <= 1553)
    {
      if ((a1 - 1298) < 2)
      {
        return 3;
      }

      if (a1 != 1286)
      {
        if (a1 != 1302)
        {
          return result;
        }

        return 3;
      }

      return 2;
    }

    v6 = a1 - 1554;
    goto LABEL_86;
  }

  if (a1 > 2310)
  {
    if (a1 <= 3330)
    {
      if (a1 > 2566)
      {
        if (a1 <= 2823)
        {
          if (a1 == 2567)
          {
            return 3;
          }

          if (a1 != 2569)
          {
            return result;
          }
        }

        else if (a1 != 2824)
        {
          if (a1 == 3079)
          {
            return 3;
          }

          if (a1 != 3081)
          {
            return result;
          }
        }

        return 4;
      }

      if ((a1 - 2312) < 2)
      {
        return 4;
      }

      if ((a1 - 2316) < 2 || a1 == 2311)
      {
        return 3;
      }
    }

    else
    {
      if (a1 <= 3857)
      {
        v5 = a1 - 3;
        if ((a1 - 3331) <= 0x13)
        {
          if (((1 << v5) & 0x98000) != 0)
          {
            return 3;
          }

          if (((1 << v5) & 5) != 0)
          {
            return 1;
          }

          if (a1 == 3334)
          {
            return 2;
          }
        }

        v6 = a1 - 3602;
LABEL_86:
        if (v6 <= 4 && ((1 << v6) & 0x13) != 0)
        {
          return 3;
        }

        return result;
      }

      if ((a1 - 3858) <= 4 && a1 != 3861)
      {
        return 3;
      }

      if (a1 == 4360 || a1 == 4616)
      {
        return 4;
      }
    }
  }

  else
  {
    if (a1 <= 2053)
    {
      if (a1 <= 2048)
      {
        v4 = a1 - 8;
        if ((a1 - 1800) <= 0xE)
        {
          if (((1 << v4) & 0x4C00) != 0)
          {
            return 3;
          }

          if (((1 << v4) & 3) != 0)
          {
            return 4;
          }

          if (((1 << v4) & 0x30) != 0)
          {
            return 3;
          }
        }

        if (a1 != 1799)
        {
          return result;
        }

        return 3;
      }

      if ((a1 - 2049) >= 3)
      {
        if (a1 == 2052)
        {
          return 2;
        }

        if (a1 != 2053)
        {
          return result;
        }
      }

      return 1;
    }

    if (a1 > 2304)
    {
      if (a1 < 2308 || a1 == 2309)
      {
        return 1;
      }

      return 2;
    }

    if (a1 <= 2059)
    {
      if (a1 != 2054)
      {
        if (a1 == 2055)
        {
          return 3;
        }

        if (a1 != 2056)
        {
          return result;
        }

        return 4;
      }

      return 2;
    }

    if ((a1 - 2066) < 2 || a1 == 2060 || a1 == 2070)
    {
      return 3;
    }
  }

  return result;
}

uint64_t CI::format_bits_per_pixel(int a1)
{
  result = 0;
  if (a1 > 1797)
  {
    if (a1 > 2309)
    {
      if (a1 > 3333)
      {
        if (a1 <= 3605)
        {
          if (a1 > 3349)
          {
            if (a1 == 3350)
            {
              return 32;
            }

            if (a1 != 3602)
            {
              if (a1 != 3603)
              {
                return result;
              }

              return 48;
            }
          }

          else
          {
            if (a1 == 3334)
            {
              return 32;
            }

            if (a1 != 3346)
            {
              if (a1 != 3347)
              {
                return result;
              }

              return 48;
            }
          }
        }

        else
        {
          if (a1 > 3859)
          {
            if (a1 > 4359)
            {
              if (a1 == 4360 || a1 == 4616)
              {
                return 40;
              }
            }

            else if (a1 == 3860 || a1 == 3862)
            {
              return 32;
            }

            return result;
          }

          if (a1 == 3606)
          {
            return 32;
          }

          if (a1 != 3858)
          {
            if (a1 != 3859)
            {
              return result;
            }

            return 48;
          }
        }

        return 24;
      }

      if (a1 <= 2568)
      {
        if ((a1 - 2310) <= 7)
        {
          if (((1 << (a1 - 6)) & 0xCC) != 0)
          {
            return 128;
          }

          if (a1 == 2310)
          {
            return 64;
          }

          if (a1 == 2311)
          {
            return 96;
          }
        }

        if (a1 == 2567)
        {
          return 32;
        }

        return result;
      }

      if (a1 > 3080)
      {
        if (a1 != 3081)
        {
          if (a1 == 3331 || a1 == 3333)
          {
            return 16;
          }

          return result;
        }
      }

      else if (a1 != 2569 && a1 != 2824)
      {
        if (a1 == 3079)
        {
          return 32;
        }

        return result;
      }
    }

    else if (a1 > 2052)
    {
      if (a1 <= 2066)
      {
        if (a1 <= 2055)
        {
          if (a1 == 2053)
          {
            return 16;
          }

          if (a1 == 2054)
          {
            return 32;
          }

          return 48;
        }

        if (a1 != 2056 && a1 != 2060)
        {
          if (a1 != 2066)
          {
            return result;
          }

          return 24;
        }
      }

      else
      {
        if (a1 <= 2304)
        {
          if (a1 != 2067)
          {
            if (a1 == 2070)
            {
              return 32;
            }

            return result;
          }

          return 48;
        }

        if ((a1 - 2305) < 3)
        {
          return 32;
        }

        if (a1 != 2308)
        {
          if (a1 == 2309)
          {
            return 32;
          }

          return result;
        }
      }
    }

    else
    {
      if (a1 > 1809)
      {
        if (a1 > 2048)
        {
          if ((a1 - 2049) >= 3)
          {
            if (a1 != 2052)
            {
              return result;
            }

            return 32;
          }

          return 16;
        }

        if (a1 != 1810)
        {
          if (a1 != 1811)
          {
            if (a1 == 1814)
            {
              return 32;
            }

            return result;
          }

          return 48;
        }

        return 24;
      }

      if (a1 > 1803)
      {
        if ((a1 - 1804) >= 2)
        {
          return result;
        }
      }

      else if ((a1 - 1800) >= 2)
      {
        if (a1 == 1798)
        {
          return 32;
        }

        if (a1 == 1799)
        {
          return 48;
        }

        return result;
      }
    }

    return 64;
  }

  if (a1 > 770)
  {
    if (a1 > 1284)
    {
      if (a1 <= 1554)
      {
        if (a1 <= 1298)
        {
          switch(a1)
          {
            case 1285:
              return 10;
            case 1286:
              return 20;
            case 1298:
              return 16;
          }

          return result;
        }

        if (a1 == 1299)
        {
          return 32;
        }

        if (a1 != 1302)
        {
          if (a1 == 1554)
          {
            return 16;
          }

          return result;
        }
      }

      else
      {
        if (a1 > 1792)
        {
          if ((a1 - 1793) < 3)
          {
            return 16;
          }

          if (a1 == 1796)
          {
            return 32;
          }

          if (a1 == 1797)
          {
            return 16;
          }

          return result;
        }

        if (a1 == 1555)
        {
          return 32;
        }

        if (a1 != 1558)
        {
          return result;
        }
      }

      return 22;
    }

    if (a1 > 785)
    {
      if (a1 > 1041)
      {
        switch(a1)
        {
          case 1042:
            return 24;
          case 1043:
            return 48;
          case 1046:
            return 32;
        }
      }

      else
      {
        switch(a1)
        {
          case 786:
            return 24;
          case 787:
            return 48;
          case 790:
            return 32;
        }
      }
    }

    else
    {
      if (a1 > 783 || (a1 - 774) < 2)
      {
        return 32;
      }

      if (a1 == 771 || a1 == 773)
      {
        return 16;
      }
    }
  }

  else
  {
    if (a1 > 273)
    {
      if (a1 <= 529)
      {
        if (a1 > 275)
        {
          if ((a1 - 276) < 2 || a1 == 278)
          {
            return 16;
          }

          return result;
        }

        if (a1 != 274)
        {
          return 24;
        }
      }

      else
      {
        if (a1 > 531)
        {
          if ((a1 - 532) < 2 || a1 == 534)
          {
            return 16;
          }

          if (a1 == 535)
          {
            return 32;
          }

          return result;
        }

        if (a1 != 530)
        {
          return 24;
        }
      }

      return 12;
    }

    if (a1 <= 261)
    {
      if ((a1 - 257) < 3)
      {
        return 8;
      }

      if (a1 == 260)
      {
        return 16;
      }

      if (a1 == 261)
      {
        return 8;
      }
    }

    else
    {
      if ((a1 - 264) < 8)
      {
        return 32;
      }

      if (a1 == 262)
      {
        return 16;
      }

      if (a1 == 263)
      {
        return 24;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CI::format_destination_rowbytes_requirement(uint64_t a1)
{
  if (CI::format_is_ycc_biplanar(a1))
  {
    v2 = CI::format_of_plane(a1, 0);
    if ((v2 - 1285) >= 2)
    {
      v3 = (CI::format_bits_per_pixel(v2) + 7) >> 3;
    }

    else
    {
      v3 = 4;
    }

    v5 = CI::format_of_plane(a1, 1);
    if ((v5 - 1285) >= 2)
    {
      v6 = (CI::format_bits_per_pixel(v5) + 7) >> 3;
    }

    else
    {
      v6 = 4;
    }

    if (v3 <= v6)
    {
      return v6;
    }

    else
    {
      return v3;
    }
  }

  else if ((a1 - 1285) >= 2)
  {
    v7 = (CI::format_bits_per_pixel(a1) + 7) >> 3;
    if (v7 == 6)
    {
      v8 = 8;
    }

    else
    {
      v8 = v7;
    }

    if (v7 == 3)
    {
      return 4;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    return 4;
  }
}

uint64_t CI::format_is_ycc_biplanar(int a1)
{
  result = 1;
  if (a1 <= 1553)
  {
    if (a1 <= 785)
    {
      if ((a1 - 274) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
      {
        return result;
      }

      v3 = a1 - 530;
      goto LABEL_15;
    }

    if (((a1 - 786) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 1042) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
    {
      v3 = a1 - 1298;
      goto LABEL_15;
    }
  }

  else if (a1 > 3345)
  {
    if (((a1 - 3346) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 3602) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
    {
      v3 = a1 - 3858;
      goto LABEL_15;
    }
  }

  else if (((a1 - 1554) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 1810) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
  {
    v3 = a1 - 2066;
LABEL_15:
    if (v3 > 4 || ((1 << v3) & 0x13) == 0)
    {
      return 0;
    }
  }

  return result;
}

unint64_t CI::format_bytes_per_row(int a1, uint64_t a2)
{
  if (a1 == 1286)
  {
    v2 = 2 * a2 + 2;
    return (2 * ((v2 * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (a1 == 1285)
  {
    v2 = a2 + 2;
    return (2 * ((v2 * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  }

  return (CI::format_bits_per_pixel(a1) * a2 + 7) >> 3;
}

uint64_t CI::format_of_plane(uint64_t a1, uint64_t a2)
{
  if (a1 <= 1041)
  {
    if ((a1 - 786) > 4 || ((1 << (a1 - 18)) & 0x13) == 0)
    {
      return CI::format_of_plane_old(a1, a2);
    }
  }

  else if ((a1 - 1042) > 4 || ((1 << (a1 - 18)) & 0x13) == 0)
  {
    if (a1 == 4360)
    {
      v2 = a2 == 0;
      v3 = 2567;
LABEL_14:
      if (v2)
      {
        return v3;
      }

      else
      {
        return 261;
      }
    }

    if (a1 == 4616)
    {
      v2 = a2 == 0;
      v3 = 3079;
      goto LABEL_14;
    }

    return CI::format_of_plane_old(a1, a2);
  }

  if (a2)
  {
    return 774;
  }

  else
  {
    return 773;
  }
}

uint64_t CI::format_bits_per_component(int a1)
{
  result = 0;
  if (a1 <= 1792)
  {
    if (a1 <= 770)
    {
      if ((a1 - 257) <= 0x15 && ((1 << (a1 - 1)) & 0x3E7FFF) != 0 || (a1 - 530) < 6)
      {
        return 8;
      }

      return result;
    }

    if (a1 > 1041)
    {
      if ((a1 - 1285) <= 0x11 && ((1 << (a1 - 5)) & 0x26003) != 0)
      {
        return 10;
      }

      if ((a1 - 1042) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
      {
        return 10;
      }

      v7 = a1 - 1554;
      if (v7 <= 4 && ((1 << v7) & 0x13) != 0)
      {
        return 10;
      }

      return result;
    }

    v10 = a1 - 771;
    if (v10 > 0x13)
    {
      return result;
    }

    v5 = 1 << v10;
    if ((v5 & 0x9E010) != 0)
    {
      return 10;
    }

    v6 = 13;
LABEL_37:
    if ((v5 & v6) == 0)
    {
      return result;
    }

    return 16;
  }

  if (a1 <= 2304)
  {
    if ((a1 - 1793) <= 0x15)
    {
      v3 = 1 << (a1 - 1);
      if ((v3 & 0x19FF) != 0 || (v3 & 0x260000) != 0)
      {
        return 16;
      }
    }

    v4 = a1 - 2049;
    if (v4 > 0x15)
    {
      return result;
    }

    v5 = 1 << v4;
    if (v5)
    {
      return 16;
    }

    v6 = 2492416;
    goto LABEL_37;
  }

  if (a1 > 3080)
  {
    if (a1 <= 3857)
    {
      if ((a1 - 3331) > 0x13)
      {
        goto LABEL_43;
      }

      v11 = 1 << (a1 - 3);
      if ((v11 & 0xD) != 0)
      {
        return 16;
      }

      if ((v11 & 0x98000) == 0)
      {
LABEL_43:
        if ((a1 - 3602) > 4 || ((1 << (a1 - 18)) & 0x13) == 0)
        {
          if (a1 != 3081)
          {
            return result;
          }

          return 10;
        }
      }

      return 12;
    }

    if ((a1 - 3858) > 4 || a1 == 3861)
    {
      if (a1 != 4360 && a1 != 4616)
      {
        return result;
      }

      return 10;
    }

    return 16;
  }

  if (a1 > 2566)
  {
    if (a1 > 2823)
    {
      if (a1 != 2824)
      {
        if (a1 != 3079)
        {
          return result;
        }

        return 10;
      }

      return 16;
    }

    if (a1 == 2567 || a1 == 2569)
    {
      return 10;
    }
  }

  else
  {
    v8 = a1 - 2305;
    if (((1 << v8) & 0x19FF) != 0)
    {
      v9 = 32;
    }

    else
    {
      v9 = 0;
    }

    if (v8 <= 0xC)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t CI::format_bytes_for_width_of_plane(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if ((CI::format_is_ycc_biplanar(a1) & 1) != 0 || v5 == 4616 || v5 == 4360)
  {
    LODWORD(v5) = CI::format_of_plane(v5, a3);
  }

  return CI::format_bytes_per_row(v5, a2);
}

uint64_t CI::format_is_r(int a1)
{
  HIDWORD(v1) = a1 - 261;
  LODWORD(v1) = a1 - 261;
  return ((v1 >> 8) < 0xD) & (0x11D5u >> ((a1 - 261) >> 8));
}

uint64_t CI::format_is_rg(int a1)
{
  HIDWORD(v1) = a1 - 262;
  LODWORD(v1) = a1 - 262;
  return ((v1 >> 8) < 0xD) & (0x11D5u >> ((a1 - 262) >> 8));
}

uint64_t CI::format_is_rgb(int a1)
{
  result = 1;
  if (a1 <= 2054)
  {
    if ((a1 - 263) < 9 || (a1 - 1799) <= 6 && ((1 << (a1 - 7)) & 0x67) != 0)
    {
      return result;
    }

    v6 = a1 - 775;
    if (v6 > 0xA)
    {
      return 0;
    }

    v4 = 1 << v6;
    v5 = 1537;
LABEL_18:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 2566)
  {
    if (a1 <= 2823)
    {
      if (a1 != 2567 && a1 != 2569)
      {
        return 0;
      }
    }

    else if (a1 != 2824 && a1 != 3079 && a1 != 3081)
    {
      return 0;
    }
  }

  else if ((a1 - 2311) > 6 || ((1 << (a1 - 7)) & 0x67) == 0)
  {
    v3 = a1 - 2055;
    if (v3 > 5)
    {
      return 0;
    }

    v4 = 1 << v3;
    v5 = 35;
    goto LABEL_18;
  }

  return result;
}

uint64_t CI::format_only_alpha(int a1)
{
  HIDWORD(v1) = a1 - 257;
  LODWORD(v1) = a1 - 257;
  return ((v1 >> 8) < 9) & (0x1C1u >> ((a1 - 257) >> 8));
}

uint64_t CI::format_has_alpha(int a1)
{
  result = 1;
  if (a1 > 2048)
  {
    if (a1 > 2568)
    {
      if (a1 <= 3080)
      {
        if (a1 == 2569 || a1 == 2824)
        {
          return result;
        }
      }

      else if (a1 == 3081 || a1 == 4360 || a1 == 4616)
      {
        return result;
      }

      return 0;
    }

    if ((a1 - 2305) > 8 || ((1 << (a1 - 1)) & 0x18B) == 0)
    {
      v3 = a1 - 2049;
      if (v3 > 7 || ((1 << v3) & 0x8B) == 0)
      {
        return 0;
      }
    }
  }

  else if (a1 > 783)
  {
    if (((a1 - 1793) > 8 || ((1 << (a1 - 1)) & 0x18B) == 0) && (a1 - 784) >= 2)
    {
      return 0;
    }
  }

  else if (((a1 - 257) > 0xA || ((1 << (a1 - 1)) & 0x78B) == 0) && a1 != 535)
  {
    return 0;
  }

  return result;
}

uint64_t CI::format_has_x(int a1)
{
  result = 1;
  if (a1 <= 1803)
  {
    if ((a1 - 268) >= 4 && a1 != 775)
    {
      return 0;
    }
  }

  else
  {
    if (a1 > 2315)
    {
      if ((a1 - 2316) < 2 || a1 == 2567 || a1 == 3079)
      {
        return result;
      }

      return 0;
    }

    if ((a1 - 1804) >= 2 && a1 != 2060)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::format_with_x_for_format(uint64_t result)
{
  if (result > 1799)
  {
    if (result <= 2055)
    {
      if (result == 1800)
      {
        return 1804;
      }

      else if (result == 1801)
      {
        return 1805;
      }
    }

    else
    {
      switch(result)
      {
        case 0x808:
          return 2060;
        case 0x908:
          return 2316;
        case 0x909:
          return 2317;
      }
    }
  }

  else if (result <= 265)
  {
    if (result == 264)
    {
      return 268;
    }

    else if (result == 265)
    {
      return 269;
    }
  }

  else
  {
    switch(result)
    {
      case 0x10A:
        return 270;
      case 0x10B:
        return 271;
      case 0x310:
        return 775;
    }
  }

  return result;
}

uint64_t CI::format_is_luminance(int a1)
{
  result = 1;
  if (a1 > 2050)
  {
    if ((a1 - 2051) >= 2 && (a1 - 2307) >= 2 && a1 != 3331)
    {
      return 0;
    }
  }

  else if ((a1 - 259) >= 2 && (a1 - 1795) >= 2 && a1 != 771)
  {
    return 0;
  }

  return result;
}

uint64_t CI::format_is_ycc(uint64_t a1)
{
  v1 = a1;
  HIDWORD(v3) = a1 - 274;
  LODWORD(v3) = a1 - 274;
  v2 = v3 >> 8;
  if (v2 < 0xF && ((0x70FFu >> v2) & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    is_ycc_422 = CI::format_is_ycc_422(a1);
    HIDWORD(v6) = v1 - 275;
    LODWORD(v6) = v1 - 275;
    v7 = 0x70FFu >> ((v1 - 275) >> 8);
    if ((v6 >> 8) >= 0xF)
    {
      LOBYTE(v7) = 0;
    }

    if (is_ycc_422)
    {
      v4 = 1;
    }

    else
    {
      v4 = v7;
    }
  }

  return v4 & 1;
}

uint64_t CI::format_is_ycc_420(int a1)
{
  HIDWORD(v1) = a1 - 274;
  LODWORD(v1) = a1 - 274;
  return ((v1 >> 8) < 0xF) & (0x70FFu >> ((a1 - 274) >> 8));
}

uint64_t CI::format_is_ycc_422(int a1)
{
  result = 1;
  if (a1 > 1301)
  {
    if (a1 > 3349)
    {
      if (a1 > 3859)
      {
        if (a1 != 3860 && a1 != 3862)
        {
          return 0;
        }
      }

      else if (a1 != 3350 && a1 != 3606)
      {
        return 0;
      }
    }

    else if (a1 > 1813)
    {
      if (a1 != 1814 && a1 != 2070)
      {
        return 0;
      }
    }

    else if (a1 != 1302 && a1 != 1558)
    {
      return 0;
    }
  }

  else if (a1 <= 531)
  {
    if ((a1 - 276) >= 3)
    {
      return 0;
    }
  }

  else if ((a1 - 532) >= 3 && a1 != 790 && a1 != 1046)
  {
    return 0;
  }

  return result;
}

uint64_t CI::format_is_ycc_444(int a1)
{
  HIDWORD(v1) = a1 - 275;
  LODWORD(v1) = a1 - 275;
  return ((v1 >> 8) < 0xF) & (0x70FFu >> ((a1 - 275) >> 8));
}

uint64_t CI::format_is_ycc_or_ycca(uint64_t a1)
{
  v1 = a1;
  LODWORD(result) = CI::format_is_ycc(a1);
  if (v1 == 535)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t CI::format_of_plane_old(int a1, int a2)
{
  result = CI::format_is_ycc_biplanar(a1);
  if (!result)
  {
    return result;
  }

  if (a1 <= 1553)
  {
    if (a1 <= 785)
    {
      if ((a1 - 274) > 4 || ((1 << (a1 - 18)) & 0x13) == 0)
      {
        if ((a1 - 530) > 4)
        {
          return 0;
        }

        result = 0;
        if (((1 << (a1 - 18)) & 0x13) == 0)
        {
          return result;
        }
      }

      v7 = a2 == 0;
      v8 = 261;
      goto LABEL_44;
    }

    if (((a1 - 786) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 1042) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
    {
      if ((a1 - 1298) <= 4)
      {
        result = 0;
        if (((1 << (a1 - 18)) & 0x13) == 0)
        {
          return result;
        }

        goto LABEL_31;
      }

      return 0;
    }

LABEL_43:
    v7 = a2 == 0;
    v8 = 1797;
LABEL_44:
    if (v7)
    {
      return v8;
    }

    else
    {
      return v8 + 1;
    }
  }

  if (a1 > 3345)
  {
    if (((a1 - 3346) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 3602) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
    {
      if ((a1 - 3858) <= 4)
      {
        result = 0;
        if (((1 << (a1 - 18)) & 0x13) == 0)
        {
          return result;
        }

        goto LABEL_43;
      }

      return 0;
    }

    goto LABEL_43;
  }

  if ((a1 - 1554) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
  {
LABEL_31:
    v7 = a2 == 0;
    v8 = 1285;
    goto LABEL_44;
  }

  if ((a1 - 1810) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
  {
    goto LABEL_43;
  }

  if (a2)
  {
    v5 = 2054;
  }

  else
  {
    v5 = 2053;
  }

  if (((1 << (a1 - 18)) & 0x13) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ((a1 - 2066) <= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t CI::format_is_ycc_full_range(int a1)
{
  result = 1;
  if (a1 <= 1809)
  {
    if ((a1 - 274) < 5 || (a1 - 786) <= 4 && ((1 << (a1 - 18)) & 0x13) != 0)
    {
      return result;
    }

    v3 = a1 - 1298;
    goto LABEL_8;
  }

  if (((a1 - 1810) > 4 || ((1 << (a1 - 18)) & 0x13) == 0) && ((a1 - 2066) > 4 || ((1 << (a1 - 18)) & 0x13) == 0))
  {
    v3 = a1 - 3346;
LABEL_8:
    if (v3 > 4 || ((1 << v3) & 0x13) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::format_get_default_ycc_color_matrix(uint64_t a1)
{
  v1 = a1;
  result = CI::format_is_ycc(a1);
  if (v1 != 535 && !result)
  {
    return result;
  }

  result = 601;
  if (v1 > 1297)
  {
    if (v1 > 2065)
    {
      if (((v1 - 3346) > 4 || ((1 << (v1 - 18)) & 0x13) == 0) && v1 != 2066 && v1 != 3860)
      {
        return 709;
      }

      return result;
    }

    if ((v1 - 1298) <= 4 && ((1 << (v1 - 18)) & 0x13) != 0)
    {
      return result;
    }

    v3 = v1 - 1810;
  }

  else
  {
    if ((v1 - 274) < 5 || (v1 - 532) <= 3 && v1 != 534)
    {
      return result;
    }

    v3 = v1 - 786;
  }

  if (v3 > 4 || ((1 << v3) & 0x13) == 0)
  {
    return 709;
  }

  return result;
}

uint64_t CI::format_is_float(int a1)
{
  result = 1;
  if ((a1 - 2049) > 0x15 || ((1 << (a1 - 1)) & 0x2608FF) == 0)
  {
    v3 = a1 - 2305;
    if (v3 > 0xC || ((1 << v3) & 0x19FF) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::format_is_extended(int a1)
{
  result = 1;
  if (a1 <= 2304)
  {
    v6 = a1 - 2049;
    if (v6 > 0x15)
    {
      return 0;
    }

    v4 = 1 << v6;
    v5 = 2492671;
    goto LABEL_7;
  }

  if (a1 <= 2566)
  {
    v3 = a1 - 2305;
    if (v3 > 0xC)
    {
      return 0;
    }

    v4 = 1 << v3;
    v5 = 6655;
LABEL_7:
    if ((v4 & v5) != 0)
    {
      return result;
    }

    return 0;
  }

  if (a1 > 3080)
  {
    if (a1 != 3081 && a1 != 4360 && a1 != 4616)
    {
      return 0;
    }
  }

  else if (a1 != 2567 && a1 != 2569 && a1 != 3079)
  {
    return 0;
  }

  return result;
}

uint64_t CI::format_is_packed(int a1)
{
  result = 1;
  if ((a1 - 1285) > 0x11 || ((1 << (a1 - 5)) & 0x26003) == 0)
  {
    v3 = a1 - 1554;
    if (v3 > 4 || ((1 << v3) & 0x13) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::format_get_clear_color(uint64_t result, _DWORD *a2, int *a3, _DWORD *a4, _DWORD *a5)
{
  *a5 = 0;
  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  if (result <= 532)
  {
    if (result == 276)
    {
      *a2 = 1056997505;
      return result;
    }

    if (result != 277)
    {
      if (result != 532)
      {
        return result;
      }

      *a2 = 1056997505;
      v5 = -32639;
LABEL_10:
      v6 = v5 | 0x3D800000;
LABEL_14:
      *a3 = v6;
      return result;
    }

LABEL_13:
    v6 = 1056997505;
    goto LABEL_14;
  }

  if (result == 533)
  {
    *a2 = 1031831681;
    goto LABEL_13;
  }

  if (result != 535)
  {
    if (result != 3860)
    {
      return result;
    }

    *a2 = 1056964736;
    v5 = 128;
    goto LABEL_10;
  }

  *a2 = 1031831681;
  *a3 = 1056997505;
  *a4 = 1056997505;
  return result;
}

uint64_t CI::format_is_supported_source_bitmap(int a1)
{
  result = 0;
  if (a1)
  {
    if (a1 != 2824)
    {
      return CI::format_is_ycc_biplanar(a1) ^ 1;
    }
  }

  return result;
}

uint64_t CI::format_is_supported_source_provider(int a1)
{
  result = 0;
  v3 = (a1 - 1285) < 2 || a1 == 0;
  if (!v3 && a1 != 2824)
  {
    return CI::format_is_ycc_biplanar(a1) ^ 1;
  }

  return result;
}

uint64_t CI::format_is_not_supported_as_destination_on_gles(int a1)
{
  v1 = ((a1 - 2305) < 0xD) & (0x19FFu >> (a1 - 1));
  if ((a1 - 1285) < 2)
  {
    LOBYTE(v1) = 1;
  }

  if ((a1 & 0xFFFFFFFE) == 0x708)
  {
    LOBYTE(v1) = 1;
  }

  if (a1 == 263)
  {
    LOBYTE(v1) = 1;
  }

  if (a1 == 1799)
  {
    LOBYTE(v1) = 1;
  }

  if ((a1 & 0xFFFFFEFF) == 0x807)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

uint64_t CI::format_is_supported_render_to_bitmap(int a1)
{
  if (CI::format_is_ycc_biplanar(a1))
  {
    return 0;
  }

  result = 1;
  if (a1 <= 2048)
  {
    if (a1 <= 770)
    {
      if (((a1 - 257) > 0xE || a1 == 258) && a1 != 535)
      {
        return 0;
      }

      return result;
    }

    if ((a1 - 1793) <= 0xC && ((1 << (a1 - 1)) & 0x19FD) != 0)
    {
      return result;
    }

    if ((a1 - 771) <= 0xE)
    {
      v3 = 1 << (a1 - 3);
      v4 = 24605;
      goto LABEL_24;
    }

    return 0;
  }

  if (a1 > 2566)
  {
    if (a1 <= 3080)
    {
      if (a1 != 2567 && a1 != 2569 && a1 != 3079)
      {
        return 0;
      }
    }

    else if (((a1 - 3331) > 3 || a1 == 3332) && a1 != 3081)
    {
      return 0;
    }

    return result;
  }

  if ((a1 - 2305) <= 0xC && ((1 << (a1 - 1)) & 0x19FD) != 0)
  {
    return result;
  }

  if ((a1 - 2049) > 0xB)
  {
    return 0;
  }

  v3 = 1 << (a1 - 1);
  v4 = 2301;
LABEL_24:
  if ((v3 & v4) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t CI::input_format_for_conversion(int a1)
{
  if ((a1 - 1) > 0x4A)
  {
    return 0;
  }

  else
  {
    return dword_19CF2CC50[a1 - 1];
  }
}

uint64_t CI::output_format_for_conversion(int a1)
{
  if ((a1 - 1) > 0x4A)
  {
    return 0;
  }

  else
  {
    return dword_19CF2CD7C[a1 - 1];
  }
}

uint64_t CI::format_swizzle_for_input(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  if (!a1 || !a3)
  {
    return v3 | v4;
  }

  if ((a1 - 532) >= 2 && (a1 - 276) > 1)
  {
    if (a2 && ((*(a3 + 16))(a3, 0) & 1) != 0)
    {
LABEL_537:
      v4 = 0;
LABEL_538:
      v3 = 0;
      return v3 | v4;
    }

    v8 = (*(a3 + 16))(a3, a1);
    if (v8 && !a2)
    {
      v3 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v8 = (*(a3 + 16))(a3, a1);
    if (v8 && (a2 & 1) == 0)
    {
      v3 = 0x400000000;
LABEL_8:
      v4 = a1;
      return v3 | v4;
    }
  }

  if (a1 > 1792)
  {
    if (a1 <= 2307)
    {
      if (a1 <= 2048)
      {
        switch(a1)
        {
          case 1793:
            v4 = 1797;
            if ((*(a3 + 16))(a3, 1797) && !a2)
            {
              goto LABEL_361;
            }

            v4 = 1795;
            if ((*(a3 + 16))(a3, 1795))
            {
              if (!a2)
              {
                goto LABEL_361;
              }
            }

            v4 = 262;
            if ((*(a3 + 16))(a3, 262) && !a2)
            {
              v3 = 0x1D00000000;
              return v3 | v4;
            }

            v4 = 260;
            v8 = (*(a3 + 16))(a3, 260);
            if (!v8 || (a2 & 1) != 0)
            {
              goto LABEL_535;
            }

            v3 = 0x2100000000;
            return v3 | v4;
          case 1794:
            v4 = 1797;
            if ((*(a3 + 16))(a3, 1797) && !a2)
            {
              goto LABEL_346;
            }

            v4 = 1795;
            if ((*(a3 + 16))(a3, 1795))
            {
              if (!a2)
              {
                goto LABEL_346;
              }
            }

            v4 = 262;
            if ((*(a3 + 16))(a3, 262) && !a2)
            {
              v3 = 0x1E00000000;
              return v3 | v4;
            }

            v4 = 260;
            v8 = (*(a3 + 16))(a3, 260);
            if (!v8 || (a2 & 1) != 0)
            {
              goto LABEL_535;
            }

            v3 = 0x2200000000;
            return v3 | v4;
          case 1795:
            v4 = 1797;
            if ((*(a3 + 16))(a3, 1797) && !a2)
            {
              goto LABEL_493;
            }

            v4 = 1793;
            if ((*(a3 + 16))(a3, 1793) && !a2)
            {
              goto LABEL_293;
            }

            v4 = 1794;
            if ((*(a3 + 16))(a3, 1794) && !a2)
            {
              goto LABEL_493;
            }

            v4 = 262;
            if ((*(a3 + 16))(a3, 262) && !a2)
            {
              goto LABEL_502;
            }

            v4 = 260;
            v8 = (*(a3 + 16))(a3, 260);
            if (!v8 || (a2 & 1) != 0)
            {
              goto LABEL_535;
            }

            v3 = 0x2000000000;
            return v3 | v4;
          case 1796:
            v4 = 1798;
            if ((*(a3 + 16))(a3, 1798) && !a2)
            {
              goto LABEL_444;
            }

            v4 = 264;
            if ((*(a3 + 16))(a3, 264) && !a2)
            {
              v3 = 0x2400000000;
              return v3 | v4;
            }

            v8 = (*(a3 + 16))(a3, 266);
            if (!v8)
            {
              goto LABEL_535;
            }

            v12 = ci_logger_render(v8, v9);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              CI::format_swizzle_for_input();
            }

            goto LABEL_537;
          case 1797:
            v4 = 1795;
            if ((*(a3 + 16))(a3, 1795) && !a2)
            {
              goto LABEL_404;
            }

            v4 = 1793;
            if ((*(a3 + 16))(a3, 1793) && !a2)
            {
              goto LABEL_462;
            }

            v4 = 1794;
            if ((*(a3 + 16))(a3, 1794) && !a2)
            {
              goto LABEL_404;
            }

            v4 = 262;
            if ((*(a3 + 16))(a3, 262) && !a2)
            {
              goto LABEL_389;
            }

            v4 = 260;
            v8 = (*(a3 + 16))(a3, 260);
            if (!v8 || (a2 & 1) != 0)
            {
              goto LABEL_535;
            }

            v3 = 0x1F00000000;
            return v3 | v4;
          case 1798:
            v4 = 1796;
            if ((*(a3 + 16))(a3, 1796) && !a2)
            {
              goto LABEL_335;
            }

            v4 = 264;
            if ((*(a3 + 16))(a3, 264) && !a2)
            {
              goto LABEL_473;
            }

            v8 = (*(a3 + 16))(a3, 266);
            if (!v8)
            {
              goto LABEL_535;
            }

            v11 = ci_logger_render(v8, v9);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              CI::format_swizzle_for_input();
            }

            goto LABEL_537;
          case 1799:
            v4 = 1800;
            if ((*(a3 + 16))(a3, 1800))
            {
              v3 = 0;
              return v3 | v4;
            }

            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            break;
          case 1800:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1801:
            v4 = 1800;
            if ((*(a3 + 16))(a3, 1800) && !a2)
            {
              goto LABEL_505;
            }

            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1804:
            v4 = 1800;
            if ((*(a3 + 16))(a3, 1800) && !a2)
            {
              goto LABEL_449;
            }

            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1805:
            v4 = 1801;
            if ((*(a3 + 16))(a3, 1801) && !a2)
            {
              goto LABEL_449;
            }

            v4 = 1800;
            if ((*(a3 + 16))(a3, 1800) && !a2)
            {
              goto LABEL_499;
            }

            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1810:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1811:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          case 1814:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if ((v8 & 1) == 0)
            {
              goto LABEL_535;
            }

            v3 = 0;
            return v3 | v4;
          default:
            goto LABEL_535;
        }

        return v3 | v4;
      }

      if (a1 <= 2059)
      {
        if (a1 > 2051)
        {
          if (a1 <= 2053)
          {
            if (a1 != 2052)
            {
              v4 = 2051;
              if ((*(a3 + 16))(a3, 2051) && !a2)
              {
                goto LABEL_404;
              }

              v4 = 2049;
              if (!(*(a3 + 16))(a3, 2049) || a2)
              {
                v4 = 2050;
                if (!(*(a3 + 16))(a3, 2050) || a2)
                {
                  v4 = 2309;
                  if ((*(a3 + 16))(a3, 2309))
                  {
                    v3 = 0;
                    return v3 | v4;
                  }

                  v4 = 2056;
                  v8 = (*(a3 + 16))(a3, 2056);
                  if (v8)
                  {
                    v3 = 0;
                    return v3 | v4;
                  }

                  goto LABEL_535;
                }

LABEL_404:
                v3 = 0x1600000000;
                return v3 | v4;
              }

LABEL_462:
              v3 = 0x1700000000;
              return v3 | v4;
            }

            v4 = 2054;
            if (!(*(a3 + 16))(a3, 2054) || a2)
            {
              v4 = 2310;
              v8 = (*(a3 + 16))(a3, 2310);
              if (v8 && (a2 & 1) == 0)
              {
                v3 = 0x900000000;
                return v3 | v4;
              }

              goto LABEL_535;
            }

LABEL_444:
            v3 = 0x900000000;
            return v3 | v4;
          }

          if (a1 != 2054)
          {
            if (a1 == 2055)
            {
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }
            }

            goto LABEL_535;
          }

          v4 = 2052;
          if ((*(a3 + 16))(a3, 2052) && !a2)
          {
LABEL_335:
            v3 = 0x1800000000;
            return v3 | v4;
          }

          v4 = 2310;
          v8 = (*(a3 + 16))(a3, 2310);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }

          goto LABEL_535;
        }

        if (a1 != 2049)
        {
          if (a1 != 2050)
          {
            v4 = 2053;
            if ((*(a3 + 16))(a3, 2053) && !a2)
            {
              goto LABEL_493;
            }

            v4 = 2049;
            if (!(*(a3 + 16))(a3, 2049) || a2)
            {
              v4 = 2050;
              v8 = (*(a3 + 16))(a3, 2050);
              if (!v8)
              {
                goto LABEL_535;
              }

LABEL_492:
              if (a2)
              {
                goto LABEL_535;
              }

LABEL_493:
              v3 = 0x1500000000;
              return v3 | v4;
            }

            goto LABEL_293;
          }

          v4 = 2053;
          if (!(*(a3 + 16))(a3, 2053) || a2)
          {
            v4 = 2051;
            v8 = (*(a3 + 16))(a3, 2051);
            goto LABEL_344;
          }

          goto LABEL_346;
        }

        v4 = 2053;
        if ((*(a3 + 16))(a3, 2053) && !a2 || (v4 = 2051, (*(a3 + 16))(a3, 2051)) && !a2)
        {
LABEL_361:
          v3 = 0x1400000000;
          return v3 | v4;
        }

        v4 = 2050;
        v8 = (*(a3 + 16))(a3, 2050);
LABEL_359:
        if (!v8 || (a2 & 1) != 0)
        {
          goto LABEL_535;
        }

        goto LABEL_361;
      }

      if (a1 > 2069)
      {
        if (a1 > 2305)
        {
          if (a1 != 2306)
          {
            v4 = 2309;
            if ((*(a3 + 16))(a3, 2309) && !a2)
            {
              goto LABEL_493;
            }

            v4 = 2305;
            if (!(*(a3 + 16))(a3, 2305) || a2)
            {
              v4 = 2306;
              v8 = (*(a3 + 16))(a3, 2306);
              if (!v8)
              {
                goto LABEL_535;
              }

              goto LABEL_492;
            }

LABEL_293:
            v3 = 0x1A00000000;
            return v3 | v4;
          }

          v4 = 2309;
          if (!(*(a3 + 16))(a3, 2309) || a2)
          {
            v4 = 2307;
            v8 = (*(a3 + 16))(a3, 2307);
LABEL_344:
            if (!v8 || (a2 & 1) != 0)
            {
              goto LABEL_535;
            }
          }

LABEL_346:
          v3 = 0x800000000;
          return v3 | v4;
        }

        if (a1 == 2070)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }

          goto LABEL_535;
        }

        if (a1 == 2305)
        {
          v4 = 2309;
          if ((*(a3 + 16))(a3, 2309) && !a2)
          {
            goto LABEL_361;
          }

          v4 = 2307;
          v8 = (*(a3 + 16))(a3, 2307);
          goto LABEL_359;
        }

        goto LABEL_535;
      }

      if (a1 != 2060)
      {
        if (a1 == 2066)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        else if (a1 == 2067)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        goto LABEL_535;
      }

      v4 = 2056;
      v8 = (*(a3 + 16))(a3, 2056);
      if (!v8 || (a2 & 1) != 0)
      {
        goto LABEL_535;
      }

LABEL_449:
      v3 = 0xA00000000;
      return v3 | v4;
    }

    if (a1 > 3330)
    {
      if (a1 > 3602)
      {
        if (a1 <= 3858)
        {
          switch(a1)
          {
            case 0xE13:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0xE16:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0xF12:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
          }
        }

        else if (a1 > 3861)
        {
          if (a1 == 3862)
          {
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }
          }

          else if (a1 == 4360)
          {
            v4 = 4616;
            v8 = (*(a3 + 16))(a3, 4616);
            if (v8)
            {
              if ((a2 & 1) == 0)
              {
                goto LABEL_538;
              }
            }
          }
        }

        else if (a1 == 3859)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        else if (a1 == 3860)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        goto LABEL_535;
      }

      if (a1 > 3345)
      {
        if (a1 > 3349)
        {
          if (a1 == 3350)
          {
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }
          }

          else if (a1 == 3602)
          {
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }
          }
        }

        else if (a1 == 3346)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        else if (a1 == 3347)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        goto LABEL_535;
      }

      if (a1 != 3331)
      {
        if (a1 != 3333)
        {
          if (a1 != 3334)
          {
            goto LABEL_535;
          }

          v4 = 1798;
          if ((*(a3 + 16))(a3, 1798) && !a2)
          {
            goto LABEL_538;
          }

          v4 = 264;
          v8 = (*(a3 + 16))(a3, 264);
          if (!v8)
          {
            goto LABEL_535;
          }

          goto LABEL_472;
        }

        v4 = 1797;
        if ((*(a3 + 16))(a3, 1797) && !a2)
        {
          goto LABEL_538;
        }

        v4 = 262;
        v8 = (*(a3 + 16))(a3, 262);
        if (!v8)
        {
          goto LABEL_535;
        }

LABEL_388:
        if ((a2 & 1) == 0)
        {
LABEL_389:
          v3 = 0x1B00000000;
          return v3 | v4;
        }

        goto LABEL_535;
      }

      v4 = 3333;
      if ((*(a3 + 16))(a3, 3333) && !a2)
      {
        goto LABEL_493;
      }

      v4 = 1797;
      if ((*(a3 + 16))(a3, 1797))
      {
        if (!a2)
        {
          goto LABEL_493;
        }
      }

      v4 = 262;
      v8 = (*(a3 + 16))(a3, 262);
      if (!v8)
      {
        goto LABEL_535;
      }

LABEL_501:
      if ((a2 & 1) == 0)
      {
LABEL_502:
        v3 = 0x1C00000000;
        return v3 | v4;
      }

      goto LABEL_535;
    }

    if (a1 > 2315)
    {
      if (a1 > 2568)
      {
        if (a1 > 3078)
        {
          if (a1 == 3079)
          {
            v4 = 785;
            if ((*(a3 + 16))(a3, 785) && !a2)
            {
              v3 = 0x4A00000000;
              return v3 | v4;
            }

            v4 = 784;
            if ((*(a3 + 16))(a3, 784) && !a2)
            {
              v3 = 0x4900000000;
              return v3 | v4;
            }

            v4 = 264;
            v8 = (*(a3 + 16))(a3, 264);
            if (v8 && (a2 & 1) == 0)
            {
              v3 = 0x4800000000;
              return v3 | v4;
            }
          }

          else if (a1 == 3081)
          {
            v4 = 1800;
            if ((*(a3 + 16))(a3, 1800) && !a2)
            {
              v3 = 0x4E00000000;
              return v3 | v4;
            }

            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8 && (a2 & 1) == 0)
            {
              v3 = 0x4E00000000;
              return v3 | v4;
            }
          }
        }

        else if (a1 == 2569)
        {
          v4 = 1800;
          if ((*(a3 + 16))(a3, 1800) && !a2)
          {
            v3 = 0x4D00000000;
            return v3 | v4;
          }

          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8 && (a2 & 1) == 0)
          {
            v3 = 0x4D00000000;
            return v3 | v4;
          }
        }

        else if (a1 == 2824)
        {
          v8 = (*(a3 + 16))(a3, 1800);
          if (v8)
          {
            v10 = ci_logger_render(v8, v9);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              CI::format_swizzle_for_input();
            }

            goto LABEL_537;
          }
        }

        goto LABEL_535;
      }

      if (a1 == 2316)
      {
        v4 = 2312;
        if (!(*(a3 + 16))(a3, 2312) || a2)
        {
          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }

          goto LABEL_535;
        }
      }

      else
      {
        if (a1 != 2317)
        {
          if (a1 == 2567)
          {
            v4 = 785;
            if ((*(a3 + 16))(a3, 785) && !a2)
            {
              v3 = 0x4500000000;
              return v3 | v4;
            }

            v4 = 784;
            if ((*(a3 + 16))(a3, 784) && !a2)
            {
              v3 = 0x4400000000;
              return v3 | v4;
            }

            v4 = 264;
            v8 = (*(a3 + 16))(a3, 264);
            if (v8 && (a2 & 1) == 0)
            {
              v3 = 0x4300000000;
              return v3 | v4;
            }
          }

          goto LABEL_535;
        }

        v4 = 2313;
        if (!(*(a3 + 16))(a3, 2313) || a2)
        {
          v4 = 2312;
          if ((*(a3 + 16))(a3, 2312) && !a2)
          {
LABEL_499:
            v3 = 0xE00000000;
            return v3 | v4;
          }

          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8 && (a2 & 1) == 0)
          {
            v3 = 0xA00000000;
            return v3 | v4;
          }

          goto LABEL_535;
        }
      }

      goto LABEL_449;
    }

    if (a1 <= 2310)
    {
      if (a1 == 2308)
      {
        v4 = 2310;
        v8 = (*(a3 + 16))(a3, 2310);
        if (v8)
        {
LABEL_443:
          if ((a2 & 1) == 0)
          {
            goto LABEL_444;
          }
        }
      }

      else
      {
        if (a1 != 2309)
        {
          v4 = 2308;
          if (!(*(a3 + 16))(a3, 2308) || a2)
          {
            v4 = 2054;
            v8 = (*(a3 + 16))(a3, 2054);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            goto LABEL_535;
          }

          goto LABEL_335;
        }

        v4 = 2307;
        if ((*(a3 + 16))(a3, 2307) && !a2)
        {
          goto LABEL_404;
        }

        v4 = 2305;
        if ((*(a3 + 16))(a3, 2305) && !a2)
        {
          goto LABEL_462;
        }

        v4 = 2306;
        if ((*(a3 + 16))(a3, 2306) && !a2)
        {
          goto LABEL_404;
        }

        v4 = 2053;
        if ((*(a3 + 16))(a3, 2053))
        {
          v3 = 0;
          return v3 | v4;
        }

        v4 = 2312;
        v8 = (*(a3 + 16))(a3, 2312);
        if (v8)
        {
          v3 = 0;
          return v3 | v4;
        }
      }

      goto LABEL_535;
    }

    if (a1 == 2311)
    {
      v4 = 2312;
      if ((*(a3 + 16))(a3, 2312))
      {
        v3 = 0;
        return v3 | v4;
      }

      v4 = 2056;
      v8 = (*(a3 + 16))(a3, 2056);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }

      goto LABEL_535;
    }

    if (a1 == 2312)
    {
      v4 = 2056;
      v8 = (*(a3 + 16))(a3, 2056);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }

      goto LABEL_535;
    }

    if (a1 != 2313)
    {
LABEL_535:
      v13 = ci_logger_render(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        CI::format_swizzle_for_input(a1);
      }

      goto LABEL_537;
    }

    v4 = 2312;
    if (!(*(a3 + 16))(a3, 2312) || a2)
    {
      v4 = 2056;
      v8 = (*(a3 + 16))(a3, 2056);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }

      goto LABEL_535;
    }

LABEL_505:
    v3 = 0x600000000;
    return v3 | v4;
  }

  if (a1 > 532)
  {
    if (a1 > 789)
    {
      if (a1 > 1297)
      {
        if (a1 > 1553)
        {
          switch(a1)
          {
            case 0x612:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0x613:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0x616:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x512:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0x513:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
            case 0x516:
              v4 = 2056;
              v8 = (*(a3 + 16))(a3, 2056);
              if (v8)
              {
                v3 = 0;
                return v3 | v4;
              }

              break;
          }
        }
      }

      else if (a1 > 1045)
      {
        switch(a1)
        {
          case 0x416:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
          case 0x505:
            v4 = 2053;
            if ((*(a3 + 16))(a3, 2053))
            {
              v3 = 0;
              return v3 | v4;
            }

            v4 = 2309;
            v8 = (*(a3 + 16))(a3, 2309);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
          case 0x506:
            v4 = 2054;
            if ((*(a3 + 16))(a3, 2054))
            {
              v3 = 0;
              return v3 | v4;
            }

            v4 = 2310;
            v8 = (*(a3 + 16))(a3, 2310);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
        }
      }

      else
      {
        switch(a1)
        {
          case 0x316:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
          case 0x412:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
          case 0x413:
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }

            break;
        }
      }

      goto LABEL_535;
    }

    if (a1 <= 773)
    {
      if (a1 <= 534)
      {
        if (a1 == 533)
        {
LABEL_197:
          v4 = 264;
          v8 = (*(a3 + 16))(a3, 264);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        else
        {
          v4 = 264;
          v8 = (*(a3 + 16))(a3, 264);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }
        }

        goto LABEL_535;
      }

      if (a1 == 535)
      {
        v4 = 265;
        if ((*(a3 + 16))(a3, 265) && !a2)
        {
          goto LABEL_538;
        }

        v4 = 266;
        if ((*(a3 + 16))(a3, 266) && !a2)
        {
LABEL_377:
          v3 = 0x500000000;
          return v3 | v4;
        }

        v4 = 264;
        v8 = (*(a3 + 16))(a3, 264);
        if (!v8 || a2)
        {
          goto LABEL_535;
        }

        goto LABEL_505;
      }

      if (a1 == 771)
      {
        v4 = 773;
        if ((*(a3 + 16))(a3, 773) && !a2)
        {
          goto LABEL_493;
        }

        v4 = 1797;
        if ((*(a3 + 16))(a3, 1797) && !a2)
        {
          v3 = 0x5000000000;
          return v3 | v4;
        }

        v4 = 262;
        v8 = (*(a3 + 16))(a3, 262);
        if (!v8)
        {
          goto LABEL_535;
        }

        goto LABEL_501;
      }

      if (a1 != 773)
      {
        goto LABEL_535;
      }

      v4 = 1797;
      if (!(*(a3 + 16))(a3, 1797) || a2)
      {
        v4 = 262;
        v8 = (*(a3 + 16))(a3, 262);
        if (!v8)
        {
          goto LABEL_535;
        }

        goto LABEL_388;
      }
    }

    else
    {
      if (a1 > 784)
      {
        if (a1 != 785)
        {
          if (a1 == 786)
          {
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }
          }

          else if (a1 == 787)
          {
            v4 = 2056;
            v8 = (*(a3 + 16))(a3, 2056);
            if (v8)
            {
              v3 = 0;
              return v3 | v4;
            }
          }

          goto LABEL_535;
        }

        v4 = 784;
        if (!(*(a3 + 16))(a3, 784) || a2)
        {
          v4 = 264;
          if ((*(a3 + 16))(a3, 264) && !a2)
          {
            v3 = 0x4200000000;
            return v3 | v4;
          }

          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }

          goto LABEL_535;
        }

        goto LABEL_418;
      }

      if (a1 != 774)
      {
        if (a1 == 775)
        {
          v4 = 784;
          if (!(*(a3 + 16))(a3, 784) || a2)
          {
            v4 = 785;
            if ((*(a3 + 16))(a3, 785) && !a2)
            {
LABEL_382:
              v3 = 0xB00000000;
              return v3 | v4;
            }

            v4 = 264;
            v8 = (*(a3 + 16))(a3, 264);
            if (v8 && (a2 & 1) == 0)
            {
              v3 = 0x4000000000;
              return v3 | v4;
            }

            goto LABEL_535;
          }

          goto LABEL_449;
        }

        if (a1 != 784)
        {
          goto LABEL_535;
        }

        v4 = 785;
        if (!(*(a3 + 16))(a3, 785) || a2)
        {
          v4 = 264;
          if ((*(a3 + 16))(a3, 264) && !a2)
          {
            v3 = 0x4100000000;
            return v3 | v4;
          }

          v4 = 2056;
          v8 = (*(a3 + 16))(a3, 2056);
          if (v8)
          {
            v3 = 0;
            return v3 | v4;
          }

          goto LABEL_535;
        }

LABEL_418:
        v3 = 0x100000000;
        return v3 | v4;
      }

      v4 = 1798;
      if (!(*(a3 + 16))(a3, 1798) || a2)
      {
        v4 = 264;
        v8 = (*(a3 + 16))(a3, 264);
        if (!v8)
        {
          goto LABEL_535;
        }

LABEL_472:
        if ((a2 & 1) == 0)
        {
LABEL_473:
          v3 = 0x2300000000;
          return v3 | v4;
        }

        goto LABEL_535;
      }
    }

    v3 = 0x4F00000000;
    return v3 | v4;
  }

  if (a1 > 529)
  {
    if (a1 == 530)
    {
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }
    }

    else if (a1 == 531)
    {
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }
    }

    else
    {
LABEL_114:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (v8)
      {
        v3 = 0;
        return v3 | v4;
      }
    }

    goto LABEL_535;
  }

  switch(a1)
  {
    case 257:
      v4 = 261;
      if ((*(a3 + 16))(a3, 261) && !a2)
      {
        goto LABEL_361;
      }

      v4 = 259;
      v8 = (*(a3 + 16))(a3, 259);
      goto LABEL_359;
    case 258:
      v4 = 261;
      if ((*(a3 + 16))(a3, 261) && !a2)
      {
        goto LABEL_346;
      }

      v4 = 259;
      v8 = (*(a3 + 16))(a3, 259);
      goto LABEL_344;
    case 259:
      v4 = 261;
      if ((*(a3 + 16))(a3, 261) && !a2)
      {
        goto LABEL_493;
      }

      v4 = 257;
      if ((*(a3 + 16))(a3, 257) && !a2)
      {
        goto LABEL_293;
      }

      v4 = 258;
      v8 = (*(a3 + 16))(a3, 258);
      if (v8)
      {
        goto LABEL_492;
      }

      goto LABEL_535;
    case 260:
      v4 = 262;
      v8 = (*(a3 + 16))(a3, 262);
      if (!v8)
      {
        goto LABEL_535;
      }

      goto LABEL_443;
    case 261:
      v4 = 259;
      if ((*(a3 + 16))(a3, 259) && !a2)
      {
        goto LABEL_404;
      }

      v4 = 257;
      if ((*(a3 + 16))(a3, 257) && !a2)
      {
        goto LABEL_462;
      }

      v4 = 258;
      if ((*(a3 + 16))(a3, 258) && !a2)
      {
        goto LABEL_404;
      }

      v4 = 2053;
      if ((*(a3 + 16))(a3, 2053))
      {
        v3 = 0;
        return v3 | v4;
      }

      v4 = 2309;
      v8 = (*(a3 + 16))(a3, 2309);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    case 262:
      v4 = 260;
      if ((*(a3 + 16))(a3, 260) && !a2)
      {
        goto LABEL_335;
      }

      v4 = 2054;
      if ((*(a3 + 16))(a3, 2054))
      {
        v3 = 0;
        return v3 | v4;
      }

      v4 = 2310;
      v8 = (*(a3 + 16))(a3, 2310);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    case 263:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    case 264:
      v4 = 266;
      v8 = (*(a3 + 16))(a3, 266);
      if (!v8)
      {
        goto LABEL_535;
      }

      goto LABEL_314;
    case 265:
      v4 = 266;
      if ((*(a3 + 16))(a3, 266) && !a2)
      {
        goto LABEL_377;
      }

      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (!v8 || (a2 & 1) != 0)
      {
        goto LABEL_535;
      }

      goto LABEL_505;
    case 266:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (!v8)
      {
        goto LABEL_535;
      }

LABEL_314:
      if (a2)
      {
        goto LABEL_535;
      }

      goto LABEL_418;
    case 267:
      v4 = 266;
      if ((*(a3 + 16))(a3, 266) && !a2)
      {
        v3 = 0x300000000;
        return v3 | v4;
      }

      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (!v8 || (a2 & 1) != 0)
      {
        goto LABEL_535;
      }

      v3 = 0x200000000;
      return v3 | v4;
    case 268:
      v4 = 264;
      if ((*(a3 + 16))(a3, 264) && !a2)
      {
        goto LABEL_449;
      }

      v4 = 266;
      v8 = (*(a3 + 16))(a3, 266);
      if (v8)
      {
        goto LABEL_278;
      }

      goto LABEL_535;
    case 269:
      v4 = 265;
      if ((*(a3 + 16))(a3, 265) && !a2)
      {
        goto LABEL_449;
      }

      v4 = 266;
      if ((*(a3 + 16))(a3, 266) && !a2)
      {
        v3 = 0xD00000000;
        return v3 | v4;
      }

      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (v8 && (a2 & 1) == 0)
      {
        goto LABEL_499;
      }

      goto LABEL_535;
    case 270:
      v4 = 266;
      if ((*(a3 + 16))(a3, 266) && !a2)
      {
        goto LABEL_449;
      }

      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (!v8)
      {
        goto LABEL_535;
      }

LABEL_278:
      if (a2)
      {
        goto LABEL_535;
      }

      goto LABEL_382;
    case 271:
      v4 = 267;
      if ((*(a3 + 16))(a3, 267) && !a2)
      {
        goto LABEL_449;
      }

      v4 = 266;
      if ((*(a3 + 16))(a3, 266) && !a2)
      {
        v3 = 0xC00000000;
        return v3 | v4;
      }

      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if (!v8 || (a2 & 1) != 0)
      {
        goto LABEL_535;
      }

      v3 = 0xF00000000;
      break;
    case 274:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    case 275:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    case 276:
      goto LABEL_114;
    case 277:
      goto LABEL_197;
    case 278:
      v4 = 264;
      v8 = (*(a3 + 16))(a3, 264);
      if ((v8 & 1) == 0)
      {
        goto LABEL_535;
      }

      v3 = 0;
      return v3 | v4;
    default:
      goto LABEL_535;
  }

  return v3 | v4;
}

void CI::format_swizzle_for_output(uint64_t result@<X0>, _DWORD *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = 0;
  v7 = 1;
  if (!result)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v11 = 1;
  v12 = 1;
  if (a4)
  {
    v15 = result;
    v16 = (*(a4 + 16))(a4, result);
    if (v16)
    {
      v9 = 0;
      v10 = 0;
      v7 = 1;
      v6 = v15;
LABEL_6:
      v11 = 1;
LABEL_7:
      v12 = 1;
      goto LABEL_8;
    }

    v6 = 0;
    v7 = 1;
    if (v15 > 1792)
    {
      if (v15 <= 2305)
      {
        if (v15 <= 2048)
        {
          v9 = 0;
          v10 = 0;
          v11 = 1;
          v12 = 1;
          switch(v15)
          {
            case 1793:
              v6 = 1797;
              if ((*(a4 + 16))(a4, 1797))
              {
                goto LABEL_354;
              }

              v6 = 1795;
              if ((*(a4 + 16))(a4, 1795))
              {
                goto LABEL_437;
              }

              v6 = 1794;
              if ((*(a4 + 16))(a4, 1794))
              {
                goto LABEL_354;
              }

              v6 = 262;
              if ((*(a4 + 16))(a4, 262))
              {
                v9 = 0;
                v10 = 39;
                goto LABEL_458;
              }

              v6 = 264;
              v16 = (*(a4 + 16))(a4, 264);
              if ((v16 & 1) == 0)
              {
                goto LABEL_485;
              }

              v9 = 0;
              v10 = 89;
              goto LABEL_482;
            case 1794:
              goto LABEL_8;
            case 1795:
              v6 = 1797;
              if ((*(a4 + 16))(a4, 1797))
              {
                goto LABEL_457;
              }

              v6 = 1794;
              v32 = (*(a4 + 16))(a4, 1794);
              goto LABEL_456;
            case 1796:
              v6 = 1798;
              if ((*(a4 + 16))(a4, 1798))
              {
                goto LABEL_457;
              }

              v6 = 264;
              if ((*(a4 + 16))(a4, 264))
              {
                v9 = 0;
                v10 = 43;
                goto LABEL_458;
              }

              v6 = 266;
              if ((*(a4 + 16))(a4, 266))
              {
                v9 = 0;
                v10 = 42;
                goto LABEL_458;
              }

              v6 = 1800;
              v16 = (*(a4 + 16))(a4, 1800);
              break;
            case 1797:
              v6 = 1795;
              if ((*(a4 + 16))(a4, 1795))
              {
                goto LABEL_365;
              }

              v6 = 1794;
              if (((*(a4 + 16))(a4, 1794) & 1) == 0)
              {
                goto LABEL_426;
              }

              goto LABEL_439;
            case 1798:
              goto LABEL_325;
            case 1799:
              if ((a3 & 1) == 0)
              {
                goto LABEL_485;
              }

              v6 = 1797;
              v16 = (*(a4 + 16))(a4, 1797);
              goto LABEL_357;
            case 1801:
              v6 = 1800;
              v16 = (*(a4 + 16))(a4, 1800);
              goto LABEL_360;
            case 1804:
              v6 = 1800;
              v16 = (*(a4 + 16))(a4, 1800);
              goto LABEL_336;
            case 1805:
              v6 = 1801;
              if ((*(a4 + 16))(a4, 1801))
              {
                goto LABEL_352;
              }

              v6 = 1800;
              v16 = (*(a4 + 16))(a4, 1800);
              goto LABEL_311;
            case 1810:
              goto LABEL_130;
            case 1811:
              goto LABEL_171;
            case 1814:
              goto LABEL_164;
            default:
              goto LABEL_485;
          }

LABEL_480:
          if (v16)
          {
            v9 = 0;
            v10 = 90;
            goto LABEL_482;
          }

          goto LABEL_485;
        }

        if (v15 <= 2054)
        {
          if (v15 <= 2051)
          {
            if (v15 != 2049)
            {
              v9 = 0;
              v10 = 0;
              v11 = 1;
              v12 = 1;
              if (v15 == 2050)
              {
                goto LABEL_8;
              }

              v6 = 2053;
              if (((*(a4 + 16))(a4, 2053) & 1) == 0)
              {
                v6 = 2050;
                if (((*(a4 + 16))(a4, 2050) & 1) == 0)
                {
                  v6 = 2056;
                  v16 = (*(a4 + 16))(a4, 2056);
                  goto LABEL_332;
                }
              }

              goto LABEL_457;
            }

            v6 = 2053;
            if ((*(a4 + 16))(a4, 2053))
            {
              goto LABEL_354;
            }

            v6 = 2051;
            if ((*(a4 + 16))(a4, 2051))
            {
LABEL_437:
              v9 = 0;
              v10 = 26;
              goto LABEL_458;
            }

            v6 = 2050;
            if (((*(a4 + 16))(a4, 2050) & 1) == 0)
            {
              v6 = 2056;
              v16 = (*(a4 + 16))(a4, 2056);
LABEL_469:
              if (v16)
              {
                v9 = 0;
                v10 = 86;
                goto LABEL_474;
              }

LABEL_485:
              v36 = ci_logger_render(v16, v17);
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                CI::format_swizzle_for_output(v15);
              }

              v6 = 0;
              goto LABEL_488;
            }

            goto LABEL_354;
          }

          if (v15 != 2052)
          {
            if (v15 != 2053)
            {
              v6 = 2056;
              v16 = (*(a4 + 16))(a4, 2056);
LABEL_421:
              if ((v16 & 1) == 0)
              {
                goto LABEL_485;
              }

              v9 = 0;
              v10 = 83;
              goto LABEL_482;
            }

            v6 = 2051;
            if (((*(a4 + 16))(a4, 2051) & 1) == 0)
            {
              v6 = 2050;
              if (((*(a4 + 16))(a4, 2050) & 1) == 0)
              {
                v6 = 2056;
                v16 = (*(a4 + 16))(a4, 2056);
                goto LABEL_472;
              }

              goto LABEL_439;
            }

            goto LABEL_365;
          }

          v6 = 2054;
          if (((*(a4 + 16))(a4, 2054) & 1) == 0)
          {
            v6 = 2056;
            v16 = (*(a4 + 16))(a4, 2056);
            goto LABEL_480;
          }

LABEL_457:
          v9 = 0;
          v10 = 63;
          goto LABEL_458;
        }

        if (v15 <= 2066)
        {
          if (v15 != 2055)
          {
            if (v15 != 2060)
            {
              if (v15 != 2066)
              {
                goto LABEL_485;
              }

              v19 = CI_ENABLE_WRITE_420();
              if ((~a3 & 0xD) == 0)
              {
                if (v19)
                {
                  if (((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
                  {
                    if ((*(a4 + 16))(a4, 2053))
                    {
                      v9 = 2054;
                      if ((*(a4 + 16))(a4, 2054))
                      {
                        v10 = 57;
LABEL_401:
                        v6 = 2053;
                        goto LABEL_411;
                      }
                    }
                  }
                }
              }

              CI_ENABLE_WRITE_420();
              if ((a3 & 5) == 5 && ((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
              {
                if ((*(a4 + 16))(a4, 2053))
                {
                  v9 = 2054;
                  if ((*(a4 + 16))(a4, 2054))
                  {
                    v10 = 54;
                    v6 = 2053;
                    goto LABEL_385;
                  }
                }
              }

              v35 = CI_ENABLE_WRITE_420();
              if ((a3 & 5) == 5)
              {
                if (v35)
                {
                  if ((*(a4 + 16))(a4, 2053))
                  {
                    v9 = 2054;
                    if ((*(a4 + 16))(a4, 2054))
                    {
                      v10 = 59;
                      goto LABEL_401;
                    }
                  }
                }
              }

LABEL_396:
              v16 = CI_ENABLE_WRITE_420();
              if ((~a3 & 0x24) != 0)
              {
                goto LABEL_485;
              }

              if (!v16)
              {
                goto LABEL_485;
              }

              v16 = (*(a4 + 16))(a4, 2053);
              if (!v16)
              {
                goto LABEL_485;
              }

              v9 = 2054;
              v16 = (*(a4 + 16))(a4, 2054);
              if ((v16 & 1) == 0)
              {
                goto LABEL_485;
              }

              v10 = 61;
              goto LABEL_401;
            }

            v6 = 2056;
            v16 = (*(a4 + 16))(a4, 2056);
            goto LABEL_336;
          }

          if ((a3 & 1) == 0)
          {
            goto LABEL_485;
          }

          v6 = 2053;
          v16 = (*(a4 + 16))(a4, 2053);
          goto LABEL_357;
        }

        if (v15 != 2067)
        {
          if (v15 != 2070)
          {
            if (v15 != 2305)
            {
              goto LABEL_485;
            }

            v6 = 2309;
            if (((*(a4 + 16))(a4, 2309) & 1) == 0)
            {
              v6 = 2307;
              if ((*(a4 + 16))(a4, 2307))
              {
                goto LABEL_437;
              }

              v6 = 2306;
              if (((*(a4 + 16))(a4, 2306) & 1) == 0)
              {
                v6 = 2312;
                v16 = (*(a4 + 16))(a4, 2312);
                goto LABEL_469;
              }
            }

LABEL_354:
            v9 = 0;
            v10 = 7;
            goto LABEL_458;
          }

          v33 = CI_ENABLE_WRITE_420();
          if ((~a3 & 0xD) == 0)
          {
            if (v33)
            {
              if ((*a2 & 1) == 0 && (*(a2 + 1) & 1) == 0)
              {
                if ((*(a4 + 16))(a4, 2053))
                {
                  v9 = 2054;
                  if ((*(a4 + 16))(a4, 2054))
                  {
                    v10 = 58;
                    goto LABEL_401;
                  }
                }
              }
            }
          }

          CI_ENABLE_WRITE_420();
          if ((a3 & 5) != 5 || (*a2 & 1) != 0 || (*(a2 + 1) & 1) != 0 || !(*(a4 + 16))(a4, 2053) || (v9 = 2054, ((*(a4 + 16))(a4, 2054) & 1) == 0))
          {
            v34 = CI_ENABLE_WRITE_420();
            if ((a3 & 5) == 5)
            {
              if (v34)
              {
                if ((*(a4 + 16))(a4, 2053))
                {
                  v9 = 2054;
                  if ((*(a4 + 16))(a4, 2054))
                  {
                    v10 = 60;
                    goto LABEL_401;
                  }
                }
              }
            }

            goto LABEL_396;
          }

          v10 = 55;
          v6 = 2053;
LABEL_378:
          v11 = 1;
          v12 = 2;
          v7 = 2;
          goto LABEL_8;
        }

        if ((~a3 & 5) != 0)
        {
          goto LABEL_445;
        }

        if ((*(a4 + 16))(a4, 2053))
        {
          v9 = 2054;
          if ((*(a4 + 16))(a4, 2054))
          {
            v10 = 56;
LABEL_450:
            v6 = 2053;
            goto LABEL_489;
          }
        }

        if (!(*(a4 + 16))(a4, 2050) || (v9 = 2054, ((*(a4 + 16))(a4, 2054) & 1) == 0))
        {
LABEL_445:
          v16 = CI_ENABLE_WRITE_420();
          if ((~a3 & 0x24) != 0)
          {
            goto LABEL_485;
          }

          if (!v16)
          {
            goto LABEL_485;
          }

          v16 = (*(a4 + 16))(a4, 2053);
          if (!v16)
          {
            goto LABEL_485;
          }

          v9 = 2054;
          v16 = (*(a4 + 16))(a4, 2054);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v10 = 61;
          goto LABEL_450;
        }

        v10 = 56;
        v6 = 2050;
LABEL_489:
        v12 = 1;
        goto LABEL_490;
      }

      if (v15 <= 3080)
      {
        if (v15 > 2312)
        {
          if (v15 > 2566)
          {
            switch(v15)
            {
              case 2567:
                v6 = 784;
                if ((*(a4 + 16))(a4, 784))
                {
                  v9 = 0;
                  v10 = 70;
                }

                else
                {
                  v6 = 785;
                  if ((*(a4 + 16))(a4, 785))
                  {
                    v9 = 0;
                    v10 = 71;
                  }

                  else
                  {
                    v6 = 264;
                    v16 = (*(a4 + 16))(a4, 264);
                    if ((v16 & 1) == 0)
                    {
                      goto LABEL_485;
                    }

                    v9 = 0;
                    v10 = 50;
                  }
                }

                break;
              case 2569:
                v6 = 1800;
                v16 = (*(a4 + 16))(a4, 1800);
                if ((v16 & 1) == 0)
                {
                  goto LABEL_485;
                }

                v9 = 0;
                v10 = 52;
                break;
              case 3079:
                v6 = 784;
                if ((*(a4 + 16))(a4, 784))
                {
                  v9 = 0;
                  v10 = 75;
                }

                else
                {
                  v6 = 785;
                  if ((*(a4 + 16))(a4, 785))
                  {
                    v9 = 0;
                    v10 = 76;
                  }

                  else
                  {
                    v6 = 264;
                    v16 = (*(a4 + 16))(a4, 264);
                    if ((v16 & 1) == 0)
                    {
                      goto LABEL_485;
                    }

                    v9 = 0;
                    v10 = 51;
                  }
                }

                break;
              default:
                goto LABEL_485;
            }

            goto LABEL_411;
          }

          if (v15 == 2313)
          {
            v6 = 2312;
            v16 = (*(a4 + 16))(a4, 2312);
LABEL_360:
            if ((v16 & 1) == 0)
            {
              goto LABEL_485;
            }

            v9 = 0;
            v10 = 3;
            goto LABEL_411;
          }

          if (v15 != 2316)
          {
            if (v15 != 2317)
            {
              goto LABEL_485;
            }

            v6 = 2312;
            v16 = (*(a4 + 16))(a4, 2312);
LABEL_311:
            if ((v16 & 1) == 0)
            {
              goto LABEL_485;
            }

LABEL_312:
            v9 = 0;
            v10 = 17;
            goto LABEL_411;
          }

          v6 = 2312;
          v16 = (*(a4 + 16))(a4, 2312);
LABEL_336:
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

LABEL_352:
          v9 = 0;
          v10 = 10;
          goto LABEL_411;
        }

        if (v15 <= 2308)
        {
          v9 = 0;
          v10 = 0;
          v11 = 1;
          v12 = 1;
          if (v15 == 2306)
          {
            goto LABEL_8;
          }

          if (v15 == 2307)
          {
            v6 = 2309;
            if (((*(a4 + 16))(a4, 2309) & 1) == 0)
            {
              v6 = 2306;
              if (((*(a4 + 16))(a4, 2306) & 1) == 0)
              {
                v6 = 2312;
                v16 = (*(a4 + 16))(a4, 2312);
LABEL_332:
                if (v16)
                {
                  v9 = 0;
                  v10 = 85;
LABEL_474:
                  v11 = 1;
                  v7 = 4;
                  goto LABEL_7;
                }

                goto LABEL_485;
              }
            }
          }

          else
          {
            v6 = 2310;
            if (((*(a4 + 16))(a4, 2310) & 1) == 0)
            {
              v6 = 2312;
              v16 = (*(a4 + 16))(a4, 2312);
              goto LABEL_480;
            }
          }

          goto LABEL_457;
        }

        if (v15 == 2309)
        {
          v6 = 2307;
          if (((*(a4 + 16))(a4, 2307) & 1) == 0)
          {
            v6 = 2306;
            if (((*(a4 + 16))(a4, 2306) & 1) == 0)
            {
              v6 = 2312;
              v16 = (*(a4 + 16))(a4, 2312);
LABEL_472:
              if (v16)
              {
                v9 = 0;
                v10 = 84;
                goto LABEL_474;
              }

              goto LABEL_485;
            }

LABEL_439:
            v9 = 0;
            v10 = 8;
            goto LABEL_458;
          }

LABEL_365:
          v9 = 0;
          v10 = 21;
          goto LABEL_458;
        }

        if (v15 == 2310)
        {
          v6 = 2312;
          v16 = (*(a4 + 16))(a4, 2312);
          goto LABEL_421;
        }

        if (v15 != 2311 || (a3 & 1) == 0)
        {
          goto LABEL_485;
        }

        v6 = 2309;
        v16 = (*(a4 + 16))(a4, 2309);
LABEL_357:
        if (v16)
        {
          v9 = 0;
          v10 = 46;
          v12 = 3;
LABEL_490:
          v7 = 1;
          v11 = 1;
          goto LABEL_8;
        }

        goto LABEL_485;
      }

      if (v15 > 3349)
      {
        if (v15 > 3605)
        {
          if (v15 <= 3858)
          {
            if (v15 != 3606)
            {
              if (v15 != 3858)
              {
                goto LABEL_485;
              }

              goto LABEL_130;
            }

LABEL_164:
            v23 = CI_ENABLE_WRITE_420();
            if ((~a3 & 0xD) == 0)
            {
              if (v23)
              {
                if ((*a2 & 1) == 0 && (*(a2 + 1) & 1) == 0)
                {
                  if ((*(a4 + 16))(a4, 1797))
                  {
                    v9 = 1798;
                    if ((*(a4 + 16))(a4, 1798))
                    {
                      v10 = 58;
                      goto LABEL_191;
                    }
                  }
                }
              }
            }

            CI_ENABLE_WRITE_420();
            if ((a3 & 5) == 5 && (*a2 & 1) == 0 && (*(a2 + 1) & 1) == 0)
            {
              if ((*(a4 + 16))(a4, 1797))
              {
                v9 = 1798;
                if ((*(a4 + 16))(a4, 1798))
                {
                  v10 = 55;
                  v6 = 1797;
                  goto LABEL_378;
                }
              }
            }

            v24 = CI_ENABLE_WRITE_420();
            if ((a3 & 5) == 5)
            {
              if (v24)
              {
                if ((*(a4 + 16))(a4, 1797))
                {
                  v9 = 1798;
                  if ((*(a4 + 16))(a4, 1798))
                  {
                    v10 = 60;
                    goto LABEL_191;
                  }
                }
              }
            }

            goto LABEL_186;
          }

          if (v15 != 3859)
          {
            if (v15 != 3862)
            {
              goto LABEL_485;
            }

            goto LABEL_164;
          }

          goto LABEL_171;
        }

        if (v15 == 3350)
        {
          goto LABEL_164;
        }

        if (v15 != 3602)
        {
          if (v15 != 3603)
          {
            goto LABEL_485;
          }

          goto LABEL_171;
        }

LABEL_130:
        v20 = CI_ENABLE_WRITE_420();
        if ((~a3 & 0xD) == 0)
        {
          if (v20)
          {
            if (((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
            {
              if ((*(a4 + 16))(a4, 1797))
              {
                v9 = 1798;
                if ((*(a4 + 16))(a4, 1798))
                {
                  v10 = 57;
LABEL_191:
                  v6 = 1797;
LABEL_411:
                  v11 = 1;
                  goto LABEL_412;
                }
              }
            }
          }
        }

        CI_ENABLE_WRITE_420();
        if ((a3 & 5) == 5 && ((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
        {
          if ((*(a4 + 16))(a4, 1797))
          {
            v9 = 1798;
            if ((*(a4 + 16))(a4, 1798))
            {
              v10 = 54;
              v6 = 1797;
LABEL_385:
              v11 = 2;
              v7 = 2;
              v12 = 2;
              goto LABEL_8;
            }
          }
        }

        v21 = CI_ENABLE_WRITE_420();
        if ((a3 & 5) == 5)
        {
          if (v21)
          {
            if ((*(a4 + 16))(a4, 1797))
            {
              v9 = 1798;
              if ((*(a4 + 16))(a4, 1798))
              {
                v10 = 59;
                goto LABEL_191;
              }
            }
          }
        }

LABEL_186:
        v16 = CI_ENABLE_WRITE_420();
        if ((~a3 & 0x24) != 0)
        {
          goto LABEL_485;
        }

        if (!v16)
        {
          goto LABEL_485;
        }

        v16 = (*(a4 + 16))(a4, 1797);
        if (!v16)
        {
          goto LABEL_485;
        }

        v9 = 1798;
        v16 = (*(a4 + 16))(a4, 1798);
        if ((v16 & 1) == 0)
        {
          goto LABEL_485;
        }

        v10 = 61;
        goto LABEL_191;
      }

      if (v15 <= 3333)
      {
        if (v15 == 3081)
        {
          v6 = 1800;
          v16 = (*(a4 + 16))(a4, 1800);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 53;
          goto LABEL_411;
        }

        if (v15 != 3331)
        {
          if (v15 != 3333)
          {
            goto LABEL_485;
          }

          v6 = 1797;
          v18 = (*(a4 + 16))(a4, 1797);
          goto LABEL_424;
        }

        v6 = 3333;
        if ((*(a4 + 16))(a4, 3333))
        {
          goto LABEL_457;
        }

        v6 = 1797;
        v32 = (*(a4 + 16))(a4, 1797);
LABEL_456:
        if (v32)
        {
          goto LABEL_457;
        }

        v6 = 262;
        if ((*(a4 + 16))(a4, 262))
        {
          v9 = 0;
          v10 = 38;
          goto LABEL_458;
        }

        v6 = 264;
        v16 = (*(a4 + 16))(a4, 264);
        if ((v16 & 1) == 0)
        {
          goto LABEL_485;
        }

        v9 = 0;
        v10 = 88;
        goto LABEL_482;
      }

      if (v15 != 3334)
      {
        if (v15 != 3346)
        {
          if (v15 != 3347)
          {
            goto LABEL_485;
          }

          goto LABEL_171;
        }

        goto LABEL_130;
      }

      v6 = 1798;
      if ((*(a4 + 16))(a4, 1798))
      {
LABEL_425:
        v9 = 0;
        v10 = 0;
        goto LABEL_458;
      }

      goto LABEL_325;
    }

    if (v15 <= 533)
    {
      v9 = 0;
      v10 = 0;
      v11 = 1;
      v12 = 1;
      switch(v15)
      {
        case 257:
          v6 = 261;
          if ((*(a4 + 16))(a4, 261))
          {
            goto LABEL_354;
          }

          v6 = 259;
          if ((*(a4 + 16))(a4, 259))
          {
            goto LABEL_437;
          }

          v6 = 258;
          if ((*(a4 + 16))(a4, 258))
          {
            goto LABEL_354;
          }

          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          goto LABEL_469;
        case 258:
          goto LABEL_8;
        case 259:
          v6 = 261;
          if ((*(a4 + 16))(a4, 261))
          {
            goto LABEL_457;
          }

          v6 = 258;
          if ((*(a4 + 16))(a4, 258))
          {
            goto LABEL_457;
          }

          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          goto LABEL_332;
        case 260:
          v6 = 262;
          if ((*(a4 + 16))(a4, 262))
          {
            goto LABEL_457;
          }

          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          goto LABEL_480;
        case 261:
          v6 = 259;
          if ((*(a4 + 16))(a4, 259))
          {
            goto LABEL_365;
          }

          v6 = 258;
          if ((*(a4 + 16))(a4, 258))
          {
            goto LABEL_439;
          }

          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          goto LABEL_472;
        case 262:
          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          goto LABEL_421;
        case 263:
          if ((a3 & 1) == 0)
          {
            goto LABEL_485;
          }

          v6 = 261;
          v16 = (*(a4 + 16))(a4, 261);
          goto LABEL_357;
        case 264:
          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 1;
          goto LABEL_458;
        case 265:
          v6 = 264;
          if ((*(a4 + 16))(a4, 264))
          {
            v9 = 0;
            v10 = 3;
            goto LABEL_458;
          }

          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 5;
          goto LABEL_458;
        case 266:
          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v7 = 1;
          v10 = 1;
          goto LABEL_6;
        case 267:
          v6 = 264;
          if ((*(a4 + 16))(a4, 264))
          {
            v9 = 0;
            v10 = 2;
            goto LABEL_458;
          }

          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 6;
          goto LABEL_458;
        case 268:
          v6 = 264;
          if ((*(a4 + 16))(a4, 264))
          {
            goto LABEL_294;
          }

          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          goto LABEL_416;
        case 269:
          v6 = 265;
          if ((*(a4 + 16))(a4, 265))
          {
            goto LABEL_294;
          }

          v6 = 264;
          if ((*(a4 + 16))(a4, 264))
          {
            goto LABEL_312;
          }

          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 19;
          goto LABEL_411;
        case 270:
          v6 = 266;
          if ((*(a4 + 16))(a4, 266))
          {
LABEL_294:
            v9 = 0;
            v10 = 10;
            goto LABEL_458;
          }

          v6 = 264;
          v16 = (*(a4 + 16))(a4, 264);
LABEL_416:
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 11;
          goto LABEL_458;
        case 271:
          v6 = 267;
          if ((*(a4 + 16))(a4, 267))
          {
            goto LABEL_352;
          }

          v6 = 264;
          if ((*(a4 + 16))(a4, 264))
          {
            v9 = 0;
            v10 = 16;
            goto LABEL_411;
          }

          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 18;
          goto LABEL_411;
        case 272:
        case 273:
        case 276:
        case 277:
          goto LABEL_485;
        case 274:
          goto LABEL_210;
        case 275:
          goto LABEL_119;
        case 278:
          goto LABEL_192;
        default:
          if (v15 == 530)
          {
LABEL_210:
            v27 = CI_ENABLE_WRITE_420();
            if ((~a3 & 0xD) == 0)
            {
              if (v27)
              {
                if (((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
                {
                  if ((*(a4 + 16))(a4, 261))
                  {
                    v9 = 262;
                    if ((*(a4 + 16))(a4, 262))
                    {
                      v10 = 57;
                      goto LABEL_410;
                    }
                  }
                }
              }
            }

            CI_ENABLE_WRITE_420();
            if ((a3 & 5) == 5 && ((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
            {
              if ((*(a4 + 16))(a4, 261))
              {
                v9 = 262;
                if ((*(a4 + 16))(a4, 262))
                {
                  v10 = 54;
                  v6 = 261;
                  goto LABEL_385;
                }
              }
            }

            v31 = CI_ENABLE_WRITE_420();
            if ((a3 & 5) == 5)
            {
              if (v31)
              {
                if ((*(a4 + 16))(a4, 261))
                {
                  v9 = 262;
                  if ((*(a4 + 16))(a4, 262))
                  {
                    v10 = 59;
                    goto LABEL_410;
                  }
                }
              }
            }
          }

          else
          {
            if (v15 != 531)
            {
              goto LABEL_485;
            }

LABEL_119:
            if ((~a3 & 5) == 0)
            {
              if ((*(a4 + 16))(a4, 261))
              {
                v9 = 262;
                if ((*(a4 + 16))(a4, 262))
                {
                  v10 = 56;
                  goto LABEL_410;
                }
              }

              if ((*(a4 + 16))(a4, 258))
              {
                v9 = 262;
                if ((*(a4 + 16))(a4, 262))
                {
                  v10 = 56;
                  v6 = 258;
                  goto LABEL_411;
                }
              }
            }
          }

          break;
      }

LABEL_405:
      v16 = CI_ENABLE_WRITE_420();
      if ((~a3 & 0x24) != 0)
      {
        goto LABEL_485;
      }

      if (!v16)
      {
        goto LABEL_485;
      }

      v16 = (*(a4 + 16))(a4, 261);
      if (!v16)
      {
        goto LABEL_485;
      }

      v9 = 262;
      v16 = (*(a4 + 16))(a4, 262);
      if ((v16 & 1) == 0)
      {
        goto LABEL_485;
      }

      v10 = 61;
      goto LABEL_410;
    }

    if (v15 <= 789)
    {
      if (v15 > 774)
      {
        if (v15 <= 784)
        {
          if (v15 == 775)
          {
            v6 = 784;
            if (((*(a4 + 16))(a4, 784) & 1) == 0)
            {
              v6 = 785;
              if ((*(a4 + 16))(a4, 785))
              {
                v9 = 0;
                v10 = 11;
              }

              else
              {
                v6 = 264;
                v16 = (*(a4 + 16))(a4, 264);
                if ((v16 & 1) == 0)
                {
                  goto LABEL_485;
                }

                v9 = 0;
                v10 = 47;
              }

              goto LABEL_411;
            }

            goto LABEL_352;
          }

          if (v15 != 784)
          {
            goto LABEL_485;
          }

          v6 = 785;
          if (((*(a4 + 16))(a4, 785) & 1) == 0)
          {
            v6 = 264;
            v16 = (*(a4 + 16))(a4, 264);
            if ((v16 & 1) == 0)
            {
              goto LABEL_485;
            }

            v9 = 0;
            v10 = 49;
            goto LABEL_411;
          }
        }

        else
        {
          if (v15 != 785)
          {
            if (v15 != 786)
            {
              if (v15 != 787)
              {
                goto LABEL_485;
              }

              goto LABEL_171;
            }

            goto LABEL_130;
          }

          v6 = 784;
          if (((*(a4 + 16))(a4, 784) & 1) == 0)
          {
            v6 = 264;
            v16 = (*(a4 + 16))(a4, 264);
            if ((v16 & 1) == 0)
            {
              goto LABEL_485;
            }

            v9 = 0;
            v10 = 48;
            goto LABEL_411;
          }
        }

        v9 = 0;
        v11 = 1;
        v10 = 1;
LABEL_412:
        v7 = 1;
        goto LABEL_7;
      }

      if (v15 > 770)
      {
        switch(v15)
        {
          case 771:
            v6 = 773;
            if ((*(a4 + 16))(a4, 773))
            {
              goto LABEL_457;
            }

            v6 = 1797;
            if (((*(a4 + 16))(a4, 1797) & 1) == 0)
            {
              v32 = (*(a4 + 16))(a4, 1797);
              goto LABEL_456;
            }

            v9 = 0;
            v10 = 82;
LABEL_458:
            v7 = 1;
            goto LABEL_6;
          case 773:
            v6 = 1797;
            if (((*(a4 + 16))(a4, 1797) & 1) == 0)
            {
              v18 = (*(a4 + 16))(a4, 1797);
LABEL_424:
              if (v18)
              {
                goto LABEL_425;
              }

LABEL_426:
              v6 = 262;
              if ((*(a4 + 16))(a4, 262))
              {
                v9 = 0;
                v10 = 37;
                goto LABEL_458;
              }

              v6 = 264;
              v16 = (*(a4 + 16))(a4, 264);
              if ((v16 & 1) == 0)
              {
                goto LABEL_485;
              }

              v9 = 0;
              v10 = 87;
LABEL_482:
              v11 = 1;
              v7 = 2;
              goto LABEL_7;
            }

            break;
          case 774:
            v6 = 1798;
            if (((*(a4 + 16))(a4, 1798) & 1) == 0)
            {
LABEL_325:
              v6 = 264;
              if ((*(a4 + 16))(a4, 264))
              {
                v9 = 0;
                v10 = 41;
              }

              else
              {
                v6 = 266;
                if (((*(a4 + 16))(a4, 266) & 1) == 0)
                {
                  v6 = 1800;
                  v16 = (*(a4 + 16))(a4, 1800);
                  goto LABEL_421;
                }

                v9 = 0;
                v10 = 40;
              }

              goto LABEL_458;
            }

            break;
          default:
            goto LABEL_485;
        }

        v9 = 0;
        v10 = 81;
        goto LABEL_458;
      }

      if (v15 != 534)
      {
        if (v15 != 535)
        {
          goto LABEL_485;
        }

        v6 = 265;
        if ((*(a4 + 16))(a4, 265))
        {
LABEL_488:
          v9 = 0;
          v10 = 0;
          goto LABEL_489;
        }

        v6 = 264;
        if ((*(a4 + 16))(a4, 264))
        {
          v9 = 0;
          v10 = 3;
        }

        else
        {
          v6 = 266;
          v16 = (*(a4 + 16))(a4, 266);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v9 = 0;
          v10 = 5;
        }

        goto LABEL_489;
      }

LABEL_192:
      v25 = CI_ENABLE_WRITE_420();
      if ((~a3 & 0xD) != 0 || !v25 || (*a2 & 1) != 0 || (*(a2 + 1) & 1) != 0 || !(*(a4 + 16))(a4, 261) || (v9 = 262, ((*(a4 + 16))(a4, 262) & 1) == 0))
      {
        CI_ENABLE_WRITE_420();
        if ((a3 & 5) == 5 && (*a2 & 1) == 0 && (*(a2 + 1) & 1) == 0)
        {
          if ((*(a4 + 16))(a4, 261))
          {
            v9 = 262;
            if ((*(a4 + 16))(a4, 262))
            {
              v10 = 55;
              v6 = 261;
              goto LABEL_378;
            }
          }
        }

        v30 = CI_ENABLE_WRITE_420();
        if ((a3 & 5) != 5)
        {
          goto LABEL_405;
        }

        if (!v30)
        {
          goto LABEL_405;
        }

        if (!(*(a4 + 16))(a4, 261))
        {
          goto LABEL_405;
        }

        v9 = 262;
        if (((*(a4 + 16))(a4, 262) & 1) == 0)
        {
          goto LABEL_405;
        }

        v10 = 60;
      }

      else
      {
        v10 = 58;
      }

LABEL_410:
      v6 = 261;
      goto LABEL_411;
    }

    if (v15 <= 1298)
    {
      if (v15 <= 1042)
      {
        if (v15 != 790)
        {
          if (v15 != 1042)
          {
            goto LABEL_485;
          }

          goto LABEL_130;
        }

        goto LABEL_164;
      }

      if (v15 == 1043)
      {
LABEL_171:
        if ((~a3 & 5) == 0)
        {
          if ((*(a4 + 16))(a4, 1797))
          {
            v9 = 1798;
            if ((*(a4 + 16))(a4, 1798))
            {
              v10 = 56;
              goto LABEL_191;
            }
          }
        }

        goto LABEL_186;
      }

      if (v15 == 1046)
      {
        goto LABEL_164;
      }

      if (v15 != 1298)
      {
        goto LABEL_485;
      }

      goto LABEL_199;
    }

    if (v15 <= 1553)
    {
      if (v15 != 1299)
      {
        if (v15 != 1302)
        {
          goto LABEL_485;
        }

LABEL_155:
        v22 = CI_ENABLE_WRITE_420();
        if ((~a3 & 0xD) != 0 || !v22 || (*a2 & 1) != 0 || (*(a2 + 1) & 1) != 0 || !(*(a4 + 16))(a4, 1285) || (v9 = 1286, ((*(a4 + 16))(a4, 1286) & 1) == 0))
        {
          CI_ENABLE_WRITE_420();
          v29 = a3 & 5;
          if (v29 == 5 && (*a2 & 1) == 0 && (*(a2 + 1) & 1) == 0)
          {
            if ((*(a4 + 16))(a4, 1285))
            {
              v9 = 1286;
              if ((*(a4 + 16))(a4, 1286))
              {
                v10 = 55;
                v6 = 1285;
                goto LABEL_378;
              }
            }
          }

          v16 = CI_ENABLE_WRITE_420();
          if (v29 != 5)
          {
            goto LABEL_485;
          }

          if (!v16)
          {
            goto LABEL_485;
          }

          v16 = (*(a4 + 16))(a4, 1285);
          if (!v16)
          {
            goto LABEL_485;
          }

          v9 = 1286;
          v16 = (*(a4 + 16))(a4, 1286);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v10 = 60;
        }

        else
        {
          v10 = 58;
        }

        goto LABEL_256;
      }
    }

    else
    {
      if (v15 == 1554)
      {
LABEL_199:
        v26 = CI_ENABLE_WRITE_420();
        if ((~a3 & 0xD) != 0 || !v26 || ((a2[1] | *a2) & 1) != 0 || ((a2[4] | a2[2]) & 1) != 0 || !(*(a4 + 16))(a4, 1285) || (v9 = 1286, ((*(a4 + 16))(a4, 1286) & 1) == 0))
        {
          CI_ENABLE_WRITE_420();
          v28 = a3 & 5;
          if (v28 == 5 && ((a2[1] | *a2) & 1) == 0 && ((a2[4] | a2[2]) & 1) == 0)
          {
            if ((*(a4 + 16))(a4, 1285))
            {
              v9 = 1286;
              if ((*(a4 + 16))(a4, 1286))
              {
                v10 = 54;
                v6 = 1285;
                goto LABEL_385;
              }
            }
          }

          v16 = CI_ENABLE_WRITE_420();
          if (v28 != 5)
          {
            goto LABEL_485;
          }

          if (!v16)
          {
            goto LABEL_485;
          }

          v16 = (*(a4 + 16))(a4, 1285);
          if (!v16)
          {
            goto LABEL_485;
          }

          v9 = 1286;
          v16 = (*(a4 + 16))(a4, 1286);
          if ((v16 & 1) == 0)
          {
            goto LABEL_485;
          }

          v10 = 59;
        }

        else
        {
          v10 = 57;
        }

LABEL_256:
        v6 = 1285;
        goto LABEL_411;
      }

      if (v15 != 1555)
      {
        if (v15 != 1558)
        {
          goto LABEL_485;
        }

        goto LABEL_155;
      }
    }

    if ((~a3 & 5) != 0 || !(*(a4 + 16))(a4, 1285) || (v9 = 1286, ((*(a4 + 16))(a4, 1286) & 1) == 0))
    {
      v16 = CI_ENABLE_WRITE_420();
      if ((~a3 & 0x24) != 0)
      {
        goto LABEL_485;
      }

      if (!v16)
      {
        goto LABEL_485;
      }

      v16 = (*(a4 + 16))(a4, 1285);
      if (!v16)
      {
        goto LABEL_485;
      }

      v9 = 1286;
      v16 = (*(a4 + 16))(a4, 1286);
      if ((v16 & 1) == 0)
      {
        goto LABEL_485;
      }

      v10 = 61;
      v6 = 1285;
      goto LABEL_489;
    }

    v10 = 56;
    goto LABEL_256;
  }

LABEL_8:
  *a5 = v6;
  *(a5 + 4) = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v7;
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  *(a5 + 40) = v11;
}

BOOL CI::format_converter_for_output(uint64_t a1, int *a2, uint64_t a3)
{
  result = 0;
  *a2 = 0;
  if (a1 && a3)
  {
    v7 = (*(a3 + 16))(a3, a1);
    if (v7)
    {
      return 1;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v13 = ___ZN2CI27format_converter_for_outputENS_11PixelFormatERNS_11ConvertTypeEU13block_pointerFbS0_E_block_invoke;
    v14 = &unk_1E75C5568;
    v15 = a3;
    if (a1 <= 2052)
    {
      if (a1 > 783)
      {
        if (a1 == 784)
        {
          v7 = (*(a3 + 16))(a3, 2056);
          if (v7)
          {
            v9 = 38;
            goto LABEL_35;
          }
        }

        else if (a1 == 785)
        {
          v7 = (*(a3 + 16))(a3, 2056);
          if (v7)
          {
            v9 = 39;
            goto LABEL_35;
          }
        }

        goto LABEL_42;
      }

      if (a1 == 261)
      {
        if ((*(a3 + 16))(a3, 2053))
        {
          v9 = 17;
          goto LABEL_35;
        }

        v10 = 19;
        v7 = v13(v12, 19);
        goto LABEL_39;
      }

      if (a1 == 262)
      {
        if ((*(a3 + 16))(a3, 2054))
        {
          v9 = 27;
          goto LABEL_35;
        }

        v10 = 29;
        v7 = v13(v12, 29);
        goto LABEL_39;
      }
    }

    else
    {
      if (a1 > 2308)
      {
        if (a1 != 2309)
        {
          if (a1 == 2310)
          {
            v7 = (*(a3 + 16))(a3, 2054);
            if (v7)
            {
              v9 = 30;
              goto LABEL_35;
            }
          }

          else if (a1 == 2312)
          {
            v7 = (*(a3 + 16))(a3, 2056);
            if (v7)
            {
              v9 = 10;
LABEL_35:
              *a2 = v9;
              return 1;
            }
          }

          goto LABEL_42;
        }

        if ((*(a3 + 16))(a3, 2053))
        {
          v9 = 20;
          goto LABEL_35;
        }

        v10 = 34;
        v7 = v13(v12, 34);
        goto LABEL_39;
      }

      if (a1 == 2053)
      {
        if ((*(a3 + 16))(a3, 2309))
        {
          v9 = 21;
          goto LABEL_35;
        }

LABEL_32:
        v10 = 32;
        v7 = v13(v12, 32);
LABEL_39:
        if (v7)
        {
          *a2 = v10;
          return 1;
        }

        goto LABEL_42;
      }

      if (a1 == 2054)
      {
        if ((*(a3 + 16))(a3, 2310))
        {
          v9 = 31;
          goto LABEL_35;
        }

        goto LABEL_32;
      }
    }

LABEL_42:
    v11 = ci_logger_render(v7, v8);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      CI::format_converter_for_output(a1);
      return 0;
    }
  }

  return result;
}

uint64_t ___ZN2CI27format_converter_for_outputENS_11PixelFormatERNS_11ConvertTypeEU13block_pointerFbS0_E_block_invoke(uint64_t a1, int a2)
{
  CI::input_format_for_conversion(a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t CI::format_CGBitmapInfo(int a1, int a2)
{
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 3;
  }

  if (a2)
  {
    result = 2;
  }

  else
  {
    result = 4;
  }

  if (a1 > 1799)
  {
    if (a1 > 2059)
    {
      if (a1 > 2311)
      {
        if (a1 > 2315)
        {
          if (a1 == 2316)
          {
            return 8453;
          }

          if (a1 == 2317)
          {
            return 8454;
          }

          if (a1 != 3331)
          {
            return 0xFFFFFFFFLL;
          }

          return 4096;
        }

        if (a1 != 2312)
        {
          if (a1 == 2313)
          {
            v5 = 8448;
            return result | v5;
          }

          return 0xFFFFFFFFLL;
        }

        goto LABEL_70;
      }

      if (a1 > 2307)
      {
        if (a1 == 2308)
        {
LABEL_70:
          v6 = 8448;
          return v3 | v6;
        }

        if (a1 != 2311)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (a1 == 2060)
        {
          return 4357;
        }

        if (a1 != 2307)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 8448;
    }

    if (a1 <= 2050)
    {
      if (a1 > 1803)
      {
        if (a1 == 1804)
        {
          return 4101;
        }

        if (a1 == 1805)
        {
          return 4102;
        }

        return 0xFFFFFFFFLL;
      }

      if (a1 != 1800)
      {
        if (a1 == 1801)
        {
          return result | 0x1000;
        }

        return 0xFFFFFFFFLL;
      }

      return v3 | 0x1000;
    }

    if (a1 > 2054)
    {
      if (a1 != 2055)
      {
        if (a1 != 2056)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_69;
      }
    }

    else if (a1 != 2051)
    {
      if (a1 != 2052)
      {
        return 0xFFFFFFFFLL;
      }

LABEL_69:
      v6 = 4352;
      return v3 | v6;
    }

    return 4352;
  }

  if (a1 <= 268)
  {
    if (a1 > 264)
    {
      if (a1 > 266)
      {
        if (a1 == 267)
        {
          return v3 | 0x2000;
        }

        else
        {
          return 5;
        }
      }

      else if (a1 != 265)
      {
        return result | 0x2000;
      }
    }

    else
    {
      result = 0;
      if (a1 > 262)
      {
        if (a1 != 263)
        {
          return v3;
        }
      }

      else if (a1 != 259)
      {
        result = v3;
        if (a1 != 260)
        {
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  else
  {
    if (a1 > 774)
    {
      if (a1 > 1794)
      {
        if (a1 == 1795)
        {
          return 4096;
        }

        if (a1 != 1796)
        {
          if (a1 != 1799)
          {
            return 0xFFFFFFFFLL;
          }

          return 4096;
        }

        return v3 | 0x1000;
      }

      if (a1 == 775)
      {
        return 204806;
      }

      if (a1 != 784)
      {
        return 0xFFFFFFFFLL;
      }

      v5 = 204800;
      return result | v5;
    }

    if (a1 > 270)
    {
      if (a1 == 271)
      {
        return 8197;
      }

      if (a1 != 771)
      {
        return 0xFFFFFFFFLL;
      }

      return 4096;
    }

    if (a1 == 269)
    {
      return 6;
    }

    else
    {
      return 8198;
    }
  }

  return result;
}