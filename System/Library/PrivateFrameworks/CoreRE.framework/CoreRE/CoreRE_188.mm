uint64_t re::MaterialTechnique::tryGetFallbackVariant(re::MaterialTechnique *this)
{
  if (*(this + 40) == 1)
  {
    v2 = this + 48;
  }

  else
  {
    v2 = (*this + 8);
  }

  v6 = *(v2 + 4);
  v3 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 88, &v6);
  if (*(*this + 2845) != 1 || v3 == 0)
  {
    return 0;
  }

  if (*(*v3 + 16))
  {
    return *v3;
  }

  return 0;
}

_anonymous_namespace_ *re::EncoderState::setVertexAmplificationCountForState(_anonymous_namespace_ *result, _anonymous_namespace_ *a2, int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v12 = result;
  if ((~*result & 0x60) != 0 || *(result + 21) != a5 || *(result + 11) != a6)
  {
    if (*(a4 + 8) != a5 && (atomic_exchange(re::EncoderState::setVertexAmplificationCountForState(BOOL,BOOL,re::FixedArray<re::mtl::Viewport> const&,unsigned char,unsigned char,re::mtl::RenderCommandEncoder &)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(result);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "The viewport count and size must match", v15, 2u);
      }
    }

    re::mtl::RenderCommandEncoder::setViewports(a7);
    result = re::setVertexAmplificationCount(a2, a3, a5, a6, a7, v14);
    *(v12 + 21) = a5;
    *(v12 + 11) = a6;
    *v12 |= 0x60u;
  }

  return result;
}

uint64_t re::resolveStencilInfo(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 72);
  v7 = v6[8];
  if (v7)
  {
    v4 = *(v7 + 1080);
    if (v4 == 1)
    {
      v4 = *(v7 + 1081);
      LODWORD(v7) = 1;
    }

    else
    {
      LODWORD(v7) = 0;
    }
  }

  v8 = v6[9];
  if (v8)
  {
    v5 = *(v8 + 1080);
    if (v5 == 1)
    {
      v5 = *(v8 + 1081);
      LODWORD(v8) = 1;
    }

    else
    {
      LODWORD(v8) = 0;
    }
  }

  v9 = v6[11];
  if (v9 && (v10 = *(v9 + 1080), v10 == 1))
  {
    v9 = *(v9 + 1081);
    if (!a4)
    {
LABEL_12:
      LODWORD(v11) = 255;
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v11) = *(**a4 + 78);
LABEL_15:
  *result = *a3;
  *(result + 16) = *(a3 + 16);
  v12 = *(a2 + 147);
  if (v12 != 255)
  {
    *result = v12 == 1;
    *(result + 1) = *(a2 + 148);
    *(result + 5) = *(a2 + 152);
    *(result + 8) = *result;
    *(result + 16) = *(a2 + 154);
  }

  if ((v7 | v8 | v10))
  {
    if (v8)
    {
      v13 = v5;
    }

    else
    {
      v13 = v9;
    }

    if (v7)
    {
      v14 = v4;
    }

    else
    {
      v14 = v13;
    }

    *result = v14 == 1;
    *(result + 1) = BYTE1(v14);
    *(result + 2) = BYTE2(v14);
    *(result + 3) = BYTE3(v14);
    *(result + 4) = BYTE4(v14);
    *(result + 5) = BYTE5(v14);
    *(result + 6) = BYTE6(v14);
    *(result + 8) = *result;
    v11 = HIBYTE(v14);
  }

  else if (v11 == 255)
  {
    return result;
  }

  *(result + 16) = v11;
  return result;
}

uint64_t re::ShaderResourceBindState::reset(uint64_t this)
{
  v1 = 0;
  v2 = 1488;
  v3 = 1984;
  do
  {
    v4 = this + v1;
    *v4 = 0;
    *(v4 + 8) = 0;
    if ((*(this + v1 + 16) & 1) == 0)
    {
      *(v4 + 16) = 1;
    }

    *(v4 + 18) = 0;
    *(v4 + 20) = 0;
    *(v4 + 744) = 0uLL;
    if ((*(v4 + 760) & 1) == 0)
    {
      *(v4 + 760) = 1;
    }

    v5 = this + v1;
    *(v5 + 762) = 0;
    *(v5 + 764) = 0;
    if (*(this + v3) == 1)
    {
      *(this + v3) = 0;
    }

    if (*(this + v3 + 496) == 1)
    {
      *(this + v3 + 496) = 0;
    }

    v6 = (this + v2);
    *v6 = 0;
    v6[31] = 0;
    v1 += 24;
    v2 += 8;
    v3 += 16;
  }

  while (v1 != 744);
  return this;
}

void re::getOrCreateEncoderStates(uint64_t a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v96 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v22 = *a2;
  v21 = a2[1];
  v23 = **a2;
  v63[0] = a3;
  v63[1] = a4;
  v63[2] = *(a4 + 112);
  v63[3] = a5;
  v64 = v21;
  if (v21)
  {
    v24 = v21 + 1;
    v22 = *a2;
  }

  v65 = v23;
  v25 = v22[1];
  if (v25)
  {
    v26 = *(v25 + 1432);
  }

  else
  {
    v26 = 0;
  }

  v66 = v26;
  v67 = *(a2 + 16);
  v68 = 0;
  v69 = a7;
  v70 = a9;
  v71 = a10;
  v72 = (*a6 >> 1) & 7;
  v73 = *(v25 + 1440);
  v74 = 0;
  v75 = a13;
  v76 = a14;
  v77 = a15;
  v78 = 0;
  v79 = 0;
  re::getOrCreatePipelineState(v63, a6[80], &v62);
  v61 = v62;
  v27 = (v62 + 8);
  v28 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew((a2 + 3), (v62 + 24), &v61);
  if (v61)
  {

    v61 = 0;
  }

  if (!v62)
  {
    v40 = *re::graphicsLogObjects(v28);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v41 = ***a2;
    *buf = 136315138;
    *v84 = v41;
    v42 = "Failed to obtain cached pipeline state for technique %s";
LABEL_49:
    _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, v42, buf, 0xCu);
    goto LABEL_34;
  }

  v31 = a6[80];
  v32 = *(a5 + 36);
  v33 = a11[1];
  v34 = a11[2];
  v29.i32[0] = *(a11 + 3);
  v35 = vmovl_u8(v29).u64[0];
  v36 = a11[9];
  v37 = a11[10];
  v30.i32[0] = *(a11 + 11);
  v38 = vmovl_u8(v30).u64[0];
  if ((v31 & 4) != 0)
  {
    v39 = 7;
  }

  else if (!*(v23 + 82) || *(v23 + 82) == 7 || (v39 = 7, (v32 - 250) <= 0xA) && ((1 << (v32 + 6)) & 0x425) != 0)
  {
    v39 = *(v23 + 82);
  }

  v43 = 0;
  v44 = *(a5 + 40);
  v88 = v39;
  v45 = *a11;
  v46 = a11[8];
  buf[0] = 0;
  v47 = vuzp1_s16(v35, vrev32_s16(v35));
  v48 = vuzp1_s8(v47, v47);
  v48.i32[1] = vuzp1_s8(vuzp1_s16(v38, vrev32_s16(v38)), v48).u32[0];
  v87 = v48;
  v89 = v33;
  v90 = v34;
  v91 = v36;
  v92 = v37;
  v49 = v32 - 250;
  if (v49 <= 0xA && ((1 << v49) & 0x425) != 0)
  {
    v43 = *(v23 + 74) & ~v31;
  }

  v93 = v43;
  v50 = ((v44 - 253) < 0xA) & (0x385u >> (v44 + 3));
  v94 = v50 & v45;
  v95 = v50 & v46;
  DepthStencilState = re::getOrCreateDepthStencilState(a4, *(a4 + 112), buf);
  v52 = DepthStencilState;
  if (buf[0] == 1)
  {
    DepthStencilState = *&v84[4];
    if (*&v84[4])
    {
      if (v85)
      {
        DepthStencilState = (*(**&v84[4] + 40))(*&v84[4], v86);
      }
    }
  }

  if (!v52)
  {
    v40 = *re::graphicsLogObjects(DepthStencilState);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    v60 = ***a2;
    *buf = 136315138;
    *v84 = v60;
    v42 = "Failed to obtain cached depth stencil state for technique %s";
    goto LABEL_49;
  }

  v53 = a12;
  v54 = atomic_load((v62 + 208));
  if (v53 && v54 == 1)
  {
    v55 = (v62 + 208);
    do
    {
      __ulock_wait();
      v56 = atomic_load(v55);
    }

    while (v56 == 1);
    v54 = atomic_load((v62 + 208));
  }

  if (!v54)
  {
    NS::SharedPtr<MTL::Buffer>::operator=(&v82, (v62 + 16));
    NS::SharedPtr<MTL::Buffer>::operator=(&v81, v52);
    NS::SharedPtr<MTL::Buffer>::operator=(&v80, (v62 + 96));
    v57 = v82;
    v58 = v81;
    v59 = v80;
    *a1 = 1;
    *(a1 + 8) = v57;
    *(a1 + 16) = v58;
    *(a1 + 24) = v59;
    goto LABEL_35;
  }

LABEL_34:
  *a1 = 0;
LABEL_35:
  if (v62)
  {
  }

  if (v79)
  {
  }

  if (v64)
  {
  }

  if (v80)
  {
  }

  if (v81)
  {
  }

  if (v82)
  {
  }
}

uint64_t re::Optional<re::DrawCallEncoderStates>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 8), (a2 + 8));
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 16), (a2 + 16));
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 24), (a2 + 24));
    }

    else
    {
      v4 = *(a1 + 24);
      if (v4)
      {

        *(a1 + 24) = 0;
      }

      v5 = *(a1 + 16);
      if (v5)
      {

        *(a1 + 16) = 0;
      }

      v6 = *(a1 + 8);
      if (v6)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t re::Optional<re::DrawCallEncoderStates>::~Optional(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {

      *(a1 + 24) = 0;
    }

    v3 = *(a1 + 16);
    if (v3)
    {

      *(a1 + 16) = 0;
    }

    v4 = *(a1 + 8);
    if (v4)
    {

      *(a1 + 8) = 0;
    }
  }

  return a1;
}

__n128 re::StandardEngineResources::populate(uint64_t a1, uint64_t a2, _DWORD *a3, __int128 *a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v13 = *a4;
  *(a1 + 16) = *(a4 + 2);
  *a1 = v13;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v27, (*a2 + 16), 0xA0uLL, 0x20uLL);
  *(a1 + 24) = v27;
  *(a1 + 40) = v28;
  v14 = (*(a1 + 24) + *(a1 + 32));
  v14[1] = *(a5 + 16);
  v15 = *(a5 + 80);
  v17 = *(a5 + 32);
  v16 = *(a5 + 48);
  v14[4] = *(a5 + 64);
  v14[5] = v15;
  v14[2] = v17;
  v14[3] = v16;
  v18 = *(a5 + 144);
  v20 = *(a5 + 96);
  v19 = *(a5 + 112);
  v14[8] = *(a5 + 128);
  v14[9] = v18;
  v14[6] = v20;
  v14[7] = v19;
  result = *a5;
  *v14 = *a5;
  if (!*(a1 + 60))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v27, (*a2 + 16), 0x400uLL, 0x100uLL);
    *(a1 + 48) = v27;
    *(a1 + 64) = v28;
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    memcpy((v22 + v23), a6, 0x400uLL);
    if (a3)
    {
      result.n128_f64[0] = re::ViewConstantsLateLatch::trackViewConstantsBuffer(a3, v22 + v23);
    }
  }

  if (!*(a1 + 84))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v27, (*a2 + 16), 0x40uLL, 0x10uLL);
    *(a1 + 72) = v27;
    *(a1 + 88) = v28;
    v24 = *(a1 + 72) + *(a1 + 80);
    result = *a7;
    v25 = *(a7 + 16);
    v26 = *(a7 + 48);
    *(v24 + 32) = *(a7 + 32);
    *(v24 + 48) = v26;
    *v24 = result;
    *(v24 + 16) = v25;
  }

  return result;
}

id *re::encodeDrawCalls(id *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, re::mtl *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned __int8 a18, unsigned int a19, unsigned int a20, uint64_t a21)
{
  v80 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 16))
  {
    HIDWORD(v45) = a18;
    v46 = result;
    v26 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v58);
    v59 = a2;
    v60 = a14;
    v61 = a3;
    v62 = a4;
    v63 = a6;
    v64 = a7;
    v65 = a12;
    v66 = a13;
    v67 = 0;
    v68[0] = a17;
    *&v68[4] = a15;
    *&v68[12] = a15;
    *&v68[20] = a15;
    *&v68[28] = a15;
    v68[36] = a18;
    v71 = 0u;
    LODWORD(v69) = a19;
    LODWORD(v72) = a20;
    BYTE4(v72) = 0;
    LODWORD(v73) = 0;
    BYTE4(v73) = 0;
    v74 = a9;
    v75 = a11;
    v76 = a10;
    v78 = 0;
    v79 = 0;
    location = 0;
    v27 = re::globalAllocators(v26);
    v28 = (*(*v27[2] + 32))(v27[2], 272, 8);
    *v28 = 0u;
    v28[1] = 0u;
    v28[2] = 0u;
    v28[3] = 0u;
    v28[4] = 0u;
    v28[5] = 0u;
    v28[6] = 0u;
    v28[7] = 0u;
    v28[8] = 0u;
    v28[9] = 0u;
    v28[10] = 0u;
    v28[11] = 0u;
    v28[12] = 0u;
    v28[13] = 0u;
    v28[14] = 0u;
    v28[15] = 0u;
    v28[16] = 0u;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v50 = v28;
    re::mtl::RenderCommandEncoder::operator=(&location, v46);
    v51 = a5 + 48;
    v52 = a5 + 104;
    v29 = *(a2 + 16);
    v53 = *(a4 + 24);
    v54 = 0;
    v55 = v29;
    v56 = a3 + 104;
    v57 = a21;
    (v50[20])(*v50, sel_pushDebugGroup_, [MEMORY[0x1E696AEC0] stringWithCString:a8 encoding:4]);
    re::mtl::RenderCommandEncoder::insertDebugSignpost(&location, a8);
    v43 = *(a4 + 112);
    if (v43)
    {
      re::RenderStat::sampleRenderEncoderMTLCounterBegin(v43 + 864, &location, 1u);
    }

    re::encodeDrawCalls(&location, &v59, a16, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, a13, v45, a9, a10, a11, __SPAIR64__(a20, a19), v46, a5, a8, a21, a16, location, v50, v51, v52, v53, v54, v55, v56, v57, v58[0], v58[1], v59, v60, v61, v62, v63, v64, *(&v64 + 1), v65, v66, v67, *v68, *&v68[8], *&v68[16], *&v68[24], *&v68[32], v69, v70, v71, *(&v71 + 1), v72, v73, v74, v75, v76, v77);
    v44 = *(a4 + 112);
    if (v44)
    {
      re::RenderStat::sampleRenderEncoderMTLCounterEnd(v44 + 864, &location, 1u);
    }

    (v50[21])(*v50, sel_popDebugGroup);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(&location);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)79>::end(v58);
  }

  return result;
}

uint64_t re::EngineConstantSource::lookup(re::EngineConstantSource *this, const re::WeakStringID *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(*(this + 1), a2);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8) + 16 * v3 + 8;
  }
}

uint64_t re::EngineConstantSource::layoutHash(re::EngineConstantSource *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *(v1 + 48);
  }

  else
  {
    return 0;
  }
}

unint64_t re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(uint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    v8 = a1[1] + 16 * v7;
    *(v8 + 8) = *a3;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1)
  {

    return re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  else
  {
    v7 = v6;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, a1[1] + 16 * v6);
    v8 = a1[1] + 16 * v7;
    *(v8 + 8) = *a3;
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(a1, v8);
    return a1[1] + 16 * v7 + 8;
  }
}

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(uint64_t *a1, void *a2, void *a3)
{
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2) == -1)
  {

    *&result = re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  return result;
}

int64x2_t re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(uint64_t *a1, void *a2, void *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash("assertion failure: (blockIndex != h1(key) % blockCount()) Unexpected full hash-table");
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = v15 + 16 * v14;
  v19 = a1[1];
  v20 = v19 + 16 * v18;
  v21 = 16 * v18;
  *(v19 + v21) = *a2;
  *(v20 + 8) = *a3;
  if (v17 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  result = vaddq_s64(*(a1 + 3), v23);
  *(a1 + 3) = result;
  v25 = *(v19 + v21) ^ (*(v19 + v21) >> 30);
  v26 = ((v25 * v8) ^ ((v25 * v8) >> 27)) * v9;
  a1[5] ^= (v26 >> 31) ^ v26;
  return result;
}

{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = a1[1];
  v18 = v17 + 16 * v16;
  v19 = 16 * v16;
  *(v17 + v19) = *a2;
  *(v18 + 8) = *a3;
  if (v15 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  result = vaddq_s64(*(a1 + 3), v21);
  *(a1 + 3) = result;
  v23 = *(v17 + v19) ^ (*(v17 + v19) >> 30);
  v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v23) ^ ((0xBF58476D1CE4E5B9 * v23) >> 27));
  a1[5] ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(a1, v3);
}

double re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long,unsigned long long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 16 * v11), (*(v19[0] + 8) + 16 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

_anonymous_namespace_ *re::DynamicArray<unsigned long>::insert(_anonymous_namespace_ *this, unint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = *(this + 2);
  v5 = v4 + 1;
  if (v4 + 1 <= a2)
  {
    v15 = 0;
    memset(v24, 0, sizeof(v24));
    v12 = MEMORY[0x1E69E9C10];
    v16 = 136315906;
    v17 = "insert";
    v18 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v19 = 855;
    v20 = 2048;
    v21 = a2;
    v22 = 2048;
    v23 = v5;
    _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
    _os_crash_msg();
    __break(1u);
  }

  v7 = this;
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<unsigned long>::growCapacity(this, v4 + 1);
    v4 = *(v7 + 2);
  }

  v8 = *(v7 + 4);
  v9 = (v8 + 8 * v4);
  if (v4 <= a2)
  {
    *v9 = *a3;
  }

  else
  {
    *v9 = *(v9 - 1);
    v10 = v8 + 8 * a2;
    v11 = v8 + 8 * *(v7 + 2) - 8;
    if (v11 != v10)
    {
      this = memmove((v10 + 8), v10, v11 - v10);
      v8 = *(v7 + 4);
    }

    *(v8 + 8 * a2) = *a3;
  }

  ++*(v7 + 2);
  ++*(v7 + 6);
  return this;
}

uint64_t re::ShaderResourceBindState::bindVertexResource(uint64_t a1, re::BufferSlice *this, unsigned int a3, uint64_t a4, unsigned __int8 *a5)
{
  v9 = *a5;
  if (a3 < 0x1F)
  {
    if (*a5)
    {
      v32 = *(a5 + 4);
    }

    result = re::BufferSlice::buffer(this, this);
    v19 = *this;
    v20 = *(this + 8);
    v21 = (a1 + 24 * a3);
    v22 = *v21;
    if (v21[1])
    {
      v23 = 0;
    }

    else
    {
      v23 = v22 == v19;
    }

    if (v23 && *(v21 + 5) == v20)
    {
      if (*(v21 + 16) == 1)
      {
        if (v9 && *(v21 + 9) == v32)
        {
          return result;
        }
      }

      else if (!v9)
      {
        return result;
      }
    }

    re::BufferSlice::buffer(this, v18);
    v28 = *a5;
    if (v22 == *this)
    {
      v31 = *(this + 8);
      if (*a5)
      {
        result = (*(*(a4 + 8) + 40))(**(a4 + 8), sel_setVertexBufferOffset_attributeStride_atIndex_, v31, *(a5 + 1), a3);
      }

      else
      {
        result = (*(*(a4 + 8) + 24))(**(a4 + 8), sel_setVertexBufferOffset_atIndex_, v31, a3);
      }
    }

    else
    {
      re::BufferSlice::buffer(this, v27);
      v29 = *this;
      v30 = *(this + 8);
      if (v28)
      {
        result = (*(*(a4 + 8) + 32))(**(a4 + 8), sel_setVertexBuffer_offset_attributeStride_atIndex_, v29, v30, *(a5 + 1), a3);
      }

      else
      {
        result = (*(*(a4 + 8) + 16))(**(a4 + 8), sel_setVertexBuffer_offset_atIndex_, v29, v30, a3);
      }
    }

    *v21 = v19;
    v21[1] = 0;
    if (v21[2])
    {
      if ((v9 & 1) == 0)
      {
        *(v21 + 16) = 0;
LABEL_35:
        *(v21 + 5) = v20;
        return result;
      }
    }

    else
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_35;
      }

      *(v21 + 16) = 1;
    }

    *(v21 + 9) = v32;
    goto LABEL_35;
  }

  re::BufferSlice::buffer(this, this);
  v10 = *this;
  v11 = *(this + 8);
  if (v9)
  {
    v12 = *(a5 + 1);
    v13 = *(a4 + 8);
    v14 = *v13;
    v15 = v13[4];

    return v15(v14, sel_setVertexBuffer_offset_attributeStride_atIndex_, v10, v11, v12, a3);
  }

  else
  {
    v24 = *(a4 + 8);
    v25 = *v24;
    v26 = v24[2];

    return v26(v25, sel_setVertexBuffer_offset_atIndex_, v10, v11, a3);
  }
}

uint64_t re::ShaderResourceBindState::bindVertexResource(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, void *a5, char a6, uint64_t a7)
{
  if (a4 < 0x1F)
  {
    v13 = (result + 24 * a4);
    v14 = *v13;
    if (v13[1])
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 == a2;
    }

    if (v15 && *(v13 + 5) == a3)
    {
      if (*(v13 + 16) == 1)
      {
        if (a6)
        {
          if (*(v13 + 9) == a7)
          {
            return result;
          }

          goto LABEL_26;
        }

LABEL_23:
        result = (a5[3])(*a5, sel_setVertexBufferOffset_atIndex_, a3, a4);
        goto LABEL_27;
      }

      if ((a6 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v14 != a2)
      {
        v16 = *a5;
        if (a6)
        {
          result = (a5[4])(v16, sel_setVertexBuffer_offset_attributeStride_atIndex_, a2, a3, a7);
        }

        else
        {
          result = (a5[2])(v16, sel_setVertexBuffer_offset_atIndex_, a2, a3, a4);
        }

LABEL_27:
        *v13 = a2;
        v13[1] = 0;
        if (v13[2])
        {
          if ((a6 & 1) == 0)
          {
            *(v13 + 16) = 0;
LABEL_33:
            *(v13 + 5) = a3;
            return result;
          }
        }

        else
        {
          if ((a6 & 1) == 0)
          {
            goto LABEL_33;
          }

          *(v13 + 16) = 1;
        }

        *(v13 + 9) = a7;
        goto LABEL_33;
      }

      if ((a6 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    result = (a5[5])(*a5, sel_setVertexBufferOffset_attributeStride_atIndex_, a3, a7, a4);
    goto LABEL_27;
  }

  v11 = *a5;
  if (a6)
  {
    v12 = a5[4];

    return v12(v11, sel_setVertexBuffer_offset_attributeStride_atIndex_, a2, a3, a7, a4);
  }

  else
  {
    v17 = a5[2];

    return v17(v11, sel_setVertexBuffer_offset_atIndex_, a2, a3, a4);
  }
}

void re::fillConstantBuffer(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a8 + 106);
  if (v12 > 1)
  {
    if (*(a8 + 107) == 1 && ((v17 = *(a7 + 32), v17 >= 2) ? (v18 = *(a7 + 3) == 2) : (v18 = 0), v18))
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(result, (a2 + 16), *(a8 + 100) * v17, *(a8 + 98));
      v42 = *result;
      v44 = *(result + 2);
      v43 = *(result + 3);
      v45 = *(a8 + 100);
      v46 = *(a7 + 32);
      v47 = *(a8 + 24);
      *&v55 = *(a8 + 40);
      *(&v55 + 1) = v47;
      v48 = *(a8 + 72);
      v53 = *(a8 + 88);
      v54 = v48;
      re::ConstantTableCollection::fillInstanceArray(a6, v42 + v44, v43, v45, v46, &v55, &v53);
      v49 = *(a7 + 32);
      v50 = *(a3 + 24);
      *(a3 + 20) += v49 * *(a8 + 100);
      v30 = v50 + v49 * *(a8 + 24);
    }

    else
    {
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(result, (a2 + 16), *(a8 + 100), *(a8 + 98));
      v19 = *result;
      v20 = *(result + 2);
      v21 = *(a8 + 100);
      v22 = *(a8 + 24);
      *&v55 = *(a8 + 40);
      *(&v55 + 1) = v22;
      v23 = *(a8 + 72);
      v53 = *(a8 + 88);
      v54 = v23;
      re::ConstantTableCollection::fill(a6, v19 + v20, v21, &v55, &v53);
      if (a5)
      {
        if ((*(a8 + 104) & 2) != 0)
        {
          v24 = *(result + 3);
          v25 = *(a8 + 24);
          *&v55 = *(a8 + 40);
          *(&v55 + 1) = v25;
          re::ViewConstantsLateLatch::trackViewConstantsBuffer(a5, v19 + v20, v24, &v55);
        }

        v26 = *(a7 + 9);
        if (v26 && (*(a8 + 104) & 8) != 0)
        {
          v27 = *(result + 3);
          v28 = *(a8 + 24);
          *&v55 = *(a8 + 40);
          *(&v55 + 1) = v28;
          re::InstanceConstantsLateLatch::trackInstanceConstantsBuffer((a5 + 1536), v19 + v20, v27, &v55, v26);
        }
      }

      v29 = *(a3 + 24);
      *(a3 + 20) += *(a8 + 100);
      v30 = v29 + *(a8 + 24);
    }

    *(a3 + 24) = v30;
  }

  else
  {
    v14 = (a4 + 56 * *(a8 + 106));
    if (__PAIR128__(*(a8 + 48), *a8) == *(v14 + 3))
    {
      *(v14 + 11) += *(a8 + 100);
LABEL_20:
      v41 = a4 + 56 * v12;
      *result = *v41;
      result[2] = *(v41 + 16);
      return;
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v55, (a2 + 16), *(a8 + 100), *(a8 + 98));
    *v14 = v55;
    v14[2] = v56;
    v31 = *v14;
    v32 = *(v14 + 2);
    v33 = *(a8 + 100);
    v34 = *(a8 + 24);
    *&v55 = *(a8 + 40);
    *(&v55 + 1) = v34;
    v35 = *(a8 + 72);
    v53 = *(a8 + 88);
    v54 = v35;
    re::ConstantTableCollection::fill(a6, v31 + v32, v33, &v55, &v53);
    if (a5)
    {
      if ((*(a8 + 104) & 2) != 0)
      {
        v37 = *v14;
        v39 = *(v14 + 2);
        v38 = *(v14 + 3);
        v40 = *(a8 + 24);
        *&v55 = *(a8 + 40);
        *(&v55 + 1) = v40;
        re::ViewConstantsLateLatch::trackViewConstantsBuffer(a5, v37 + v39, v38, &v55);
      }
    }

    *(v14 + 10) += *(a8 + 100);
    *(v14 + 12) += *(a8 + 24);
    v14[3] = *a8;
    v14[4] = *(a8 + 48);
    v12 = *(a8 + 106);
    if (v12 < 2)
    {
      goto LABEL_20;
    }

    re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, *(a8 + 106), 2);
    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v51, v52);
    __break(1u);
  }
}

unint64_t re::SamplerTableReference::samplerAt(re::SamplerTableReference *this, unint64_t a2)
{
  v4 = *(this + 1);
  if (v4 > a2)
  {
    return *this + 8 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

uint64_t re::ShaderResourceBindState::bindFragmentResource(uint64_t this, const BufferView *a2, unsigned int a3, RenderCommandEncoder *a4)
{
  if (a3 < 0x1F)
  {
    v10 = this + 24 * a3;
    v11 = v10 + 744;
    v12 = *a2;
    v13 = *(v10 + 752);
    v14 = *(v10 + 744);
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14 == v12;
    }

    if (!v15 || *(v11 + 20) != *(a2 + 4) || *(v11 + 16) != 1 || *(v11 + 18))
    {
      m_object = a4->m_object;
      if (v14 == v12)
      {
        this = (a4[6].m_object)(m_object, sel_setFragmentBufferOffset_atIndex_, *(a2 + 4), a3);
      }

      else
      {
        this = (a4[5].var0)(m_object, sel_setFragmentBuffer_offset_atIndex_);
      }

      v17 = *(a2 + 4);
      *v11 = *a2;
      *(v11 + 8) = 0;
      if ((*(v11 + 16) & 1) == 0)
      {
        *(v11 + 16) = 1;
      }

      *(v11 + 18) = 0;
      *(v11 + 20) = v17;
    }
  }

  else
  {
    v6 = *a2;
    v7 = a4->m_object;
    var0 = a4[5].var0;
    v9 = *(a2 + 4);

    return (var0)(v7, sel_setFragmentBuffer_offset_atIndex_, v6, v9, a3);
  }

  return this;
}

uint64_t re::Optional<re::TechniqueState>::operator=(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    if (*a2)
    {
      *a1 = 1;
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      v8 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v8;
      *(a1 + 24) = v7;
      *(a1 + 8) = v6;
      v9 = *(a2 + 60);
      *(a1 + 60) = v9;
      if (v9 == 1)
      {
        *(a1 + 61) = *(a2 + 61);
      }

      *(a1 + 96) = 0;
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 64) = 0;
      *(a1 + 88) = 0;
      v10 = *(a2 + 72);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = v10;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      goto LABEL_19;
    }

    return a1;
  }

  if ((*a2 & 1) == 0)
  {
    re::DynamicArray<unsigned long>::deinit(a1 + 64);
    *a1 = 0;
    return a1;
  }

  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  if (*(a1 + 60))
  {
    if ((*(a2 + 60) & 1) == 0)
    {
      *(a1 + 60) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 60) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(a1 + 60) = 1;
  }

  *(a1 + 61) = *(a2 + 61);
LABEL_14:
  if (a1 == a2)
  {
    return a1;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (!v11 || !v12 || v11 == v12)
  {
    v13 = *(a1 + 72);
    v14 = *(a2 + 72);
    *(a1 + 64) = v12;
    *(a1 + 72) = v14;
    *(a2 + 64) = v11;
    *(a2 + 72) = v13;
LABEL_19:
    v15 = *(a1 + 80);
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 80) = v15;
    v16 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v16;
    ++*(a2 + 88);
    ++*(a1 + 88);
    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
  result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
  __break(1u);
  return result;
}

uint64_t re::Optional<re::TechniqueState>::Optional(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 24);
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 14);
    *(a1 + 40) = v6;
    *(a1 + 24) = v5;
    *(a1 + 8) = v4;
    v7 = a2[60];
    *(a1 + 60) = v7;
    if (v7 == 1)
    {
      *(a1 + 61) = a2[61];
    }

    re::DynamicArray<re::RenderAttachmentState>::DynamicArray(a1 + 64, a2 + 8);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 9);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    v5 = v4;
    if (v4 == *(a1 + 6))
    {
      v7 = *(a1 + 7);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = a1[2];
          *&v25[16] = v13;
          a1[2] = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 3);
          v14 = *&v25[32];
          *(a1 + 3) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(a1, *(v17 - 8) % *(a1 + 6), *(v17 - 8));
                *(v18 + 8) = *(v17 - 8);
                re::BufferTable::BufferTable(v18 + 16, v17);
              }

              v17 += 304;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v5 = *(a1 + 8);
    }

    *(a1 + 8) = v5 + 1;
    v19 = a1[2];
    v20 = *(v19 + 304 * v4);
  }

  else
  {
    v19 = a1[2];
    v20 = *(v19 + 304 * v4);
    *(a1 + 9) = v20 & 0x7FFFFFFF;
  }

  v22 = 304 * v4;
  *(v19 + v22) = v20 | 0x80000000;
  v23 = a1[1];
  *(v19 + v22) = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v4;
  ++*(a1 + 7);
  return v19 + 304 * v4;
}

void re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 304 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_61, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void *re::FixedArray<unsigned char>::init<int>(void *result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  *result = a2;
  result[1] = a3;
  if (a3)
  {
    v6 = result;
    result = (*(*a2 + 32))(a2, a3, 1);
    v6[2] = result;
    if (result)
    {
      v8 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          *result = *a4;
          result = (result + 1);
          --v8;
        }

        while (v8);
      }

      *result = *a4;
    }

    else
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::BufferTable,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::BufferTable::~BufferTable((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 304;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void *re::DynamicArray<re::ConstantSource const*>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 8 * a2, 8);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 8 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 8 * a2, *(*v4 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v7, v8);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::ConstantSource const*>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::InstanceConstants>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (HIBYTE(a2))
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 256, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = a2 << 8;
          result = (*(*result + 32))(result, a2 << 8, 256);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], v5[2] << 8);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::InstanceConstants>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

re::mtl::mps::ImageGuidedFilter *re::mtl::mps::ImageGuidedFilter::ImageGuidedFilter(re::mtl::mps::ImageGuidedFilter *this, const re::mtl::Device *a2, uint64_t a3)
{
  v4 = [objc_alloc(MEMORY[0x1E69745D0]) initWithDevice:*a2 kernelDiameter:a3];
  *this = v4;

  return this;
}

uint64_t re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(id *a1, void *a2, id *a3)
{
  v7 = *a3;
  v5 = [*a1 encodeToCommandBuffer:*a2 inPlaceTexture:&v7 fallbackCopyAllocator:0];

  return v5;
}

void re::mtl::mps::UnaryImageKernel::encodeToCommandBuffer(void **a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a4;
  v7 = *a3;
  [v4 encodeToCommandBuffer:v5 sourceTexture:v7 destinationTexture:v6];
}

re::mtl::mps::ImageGaussianBlur *re::mtl::mps::ImageGaussianBlur::ImageGaussianBlur(re::mtl::mps::ImageGaussianBlur *this, const re::mtl::Device *a2, float a3)
{
  v6 = objc_alloc(MEMORY[0x1E69745C0]);
  *&v7 = a3;
  v8 = [v6 initWithDevice:*a2 sigma:v7];
  *this = v8;

  return this;
}

re::mtl::mps::ImageBilinearScale *re::mtl::mps::ImageBilinearScale::ImageBilinearScale(re::mtl::mps::ImageBilinearScale *this, const re::mtl::Device *a2)
{
  v3 = [objc_alloc(MEMORY[0x1E6974578]) initWithDevice:*a2];
  *this = v3;

  return this;
}

re::mtl::mps::ImageAreaMax *re::mtl::mps::ImageAreaMax::ImageAreaMax(re::mtl::mps::ImageAreaMax *this, const re::mtl::Device *a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_alloc(MEMORY[0x1E6974568]) initWithDevice:*a2 kernelWidth:a3 kernelHeight:a4];
  *this = v5;

  return this;
}

re::mtl::mps::ImageTent *re::mtl::mps::ImageTent::ImageTent(re::mtl::mps::ImageTent *this, const re::mtl::Device *a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_alloc(MEMORY[0x1E6974638]) initWithDevice:*a2 kernelWidth:a3 kernelHeight:a4];
  *this = v5;

  return this;
}

uint64_t re::mtl::getTypeSize(int a1)
{
  if ((a1 - 3) > 0x52)
  {
    return 0;
  }

  else
  {
    return dword_1E30B5CE0[(a1 - 3)];
  }
}

void re::FramePersistentPooledGPUBuffer::replace(void **__return_ptr a1@<X8>, re::FramePersistentPooledGPUBuffer *this@<X0>, re::FrameManager *a3@<X1>)
{
  v78 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 3) & 0xFFFFFFFFFFFFFFFLL | (*(a3 + 2) << 60);
  v7 = *(a3 + 4);
  *a1 = 0;
  v8 = *(this + 1);
  if (!v8)
  {
    goto LABEL_39;
  }

  v9 = 0;
  v10 = v7 & 0xFFFFFFFFFFFFFFFLL;
  do
  {
    v11 = *(this + 4);
    v12 = this + 24;
    if ((v11 & 1) == 0)
    {
      v12 = *(this + 4);
    }

    v13 = *&v12[8 * v9] & 0xFFFFFFFFFFFFFFFLL;
    if (*a1)
    {
      v14 = 0;
    }

    else
    {
      v14 = v10 >= v13;
    }

    if (v14)
    {
      v8 = *(this + 6);
      if (v8 <= v9)
      {
        v64 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *v73 = 0u;
        v52 = MEMORY[0x1E69E9C10];
        v65 = 136315906;
        v66 = "operator[]";
        v67 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v68 = 858;
        v69 = 2048;
        v70 = v9;
        v71 = 2048;
        v72 = v8;
        _os_log_send_and_compose_impl(v53, &v64, v73, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v63);
        _os_crash_msg();
        __break(1u);
LABEL_79:
        v64 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *v73 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65 = 136315906;
        v66 = "operator[]";
        v67 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v68 = 858;
        v69 = 2048;
        v70 = v9;
        v71 = 2048;
        v72 = v8;
        _os_log_send_and_compose_impl(v56, &v64, v73, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v63);
        _os_crash_msg();
        __break(1u);
LABEL_83:
        v64 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *v73 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65 = 136315906;
        v66 = "removeStableAt";
        v67 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v68 = 1038;
        v69 = 2048;
        v70 = v9;
        v71 = 2048;
        v72 = v8;
        _os_log_send_and_compose_impl(v59, &v64, v73, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v63);
        _os_crash_msg();
        __break(1u);
LABEL_87:
        v64 = 0;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        *v73 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65 = 136315906;
        v66 = "removeStableAt";
        v67 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v68 = 1038;
        v69 = 2048;
        v70 = v9;
        v71 = 2048;
        v72 = v3;
        _os_log_send_and_compose_impl(v62, &v64, v73, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v63);
        _os_crash_msg();
        __break(1u);
      }

      v29 = this + 64;
      if ((*(this + 56) & 1) == 0)
      {
        v29 = *(this + 9);
      }

      NS::SharedPtr<MTL::Buffer>::operator=(a1, &v29[8 * v9]);
      v8 = *(this + 1);
      if (v8 <= v9)
      {
        goto LABEL_79;
      }

      v30 = this + 24;
      if ((*(this + 16) & 1) == 0)
      {
        v30 = *(this + 4);
      }

      *&v30[8 * v9] = v6;
    }

    else if (v9 >= 2 && *a1 && v10 - v13 >= 3)
    {
      if (v8 <= v9)
      {
        goto LABEL_83;
      }

      v15 = *(this + 4) & 1;
      v16 = v8 - 1;
      if (v8 - 1 > v9)
      {
        v17 = this + 24;
        if ((v11 & 1) == 0)
        {
          v17 = *(this + 4);
        }

        v18 = &v17[8 * v9];
        v19 = &v17[8 * v8];
        if (v19 != v18 + 8)
        {
          memmove(v18, v18 + 8, v19 - (v18 + 8));
          v16 = *(this + 1) - 1;
          v11 = *(this + 4);
          v15 = v11 & 1;
        }
      }

      *(this + 1) = v16;
      *(this + 4) = (v11 & 0xFFFFFFFE | v15) + 2;
      v3 = *(this + 6);
      if (v3 <= v9)
      {
        goto LABEL_87;
      }

      v20 = *(this + 14);
      if (v3 - 1 > v9)
      {
        v21 = this + 64;
        if ((v20 & 1) == 0)
        {
          v21 = *(this + 9);
        }

        v22 = &v21[8 * v9];
        v23 = &v21[8 * v3];
        if (v22 + 1 != v23)
        {
          do
          {
            v3 = (v22 + 1);
            NS::SharedPtr<MTL::Texture>::operator=(v22, v22 + 1);
            v24 = v22 + 2;
            ++v22;
          }

          while (v24 != v23);
          v20 = *(this + 14);
        }
      }

      v25 = this + 64;
      if ((v20 & 1) == 0)
      {
        v25 = *(this + 9);
      }

      v26 = *(this + 6);
      v27 = &v25[8 * v26];
      v28 = *(v27 - 1);
      if (v28)
      {

        *(v27 - 1) = 0;
        v26 = *(this + 6);
        v20 = *(this + 14);
      }

      *(this + 6) = v26 - 1;
      *(this + 14) = v20 + 2;
    }

    ++v9;
    v8 = *(this + 1);
  }

  while (v9 < v8);
  if (!*a1)
  {
LABEL_39:
    v73[0] = [*(this + 10) newBufferWithLength:*(this + 11) options:0];
    NS::SharedPtr<MTL::Texture>::operator=(a1, v73);
    v31 = v73[0];
    if (v73[0])
    {
    }

    if (*(this + 5))
    {
      v32 = *(this + 6);
      v33 = *(this + 14);
      if (v33)
      {
        v35 = v32 + 1;
        if (v35 >= 3)
        {
          v36 = 4;
LABEL_52:
          if (v36 <= v35)
          {
            v40 = v35;
          }

          else
          {
            v40 = v36;
          }

          re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(this + 5, v40);
          if (*(this + 14))
          {
            goto LABEL_56;
          }

LABEL_50:
          v39 = *(this + 9);
          goto LABEL_57;
        }
      }

      else
      {
        v34 = *(this + 8);
        if (v32 >= v34)
        {
          v35 = v32 + 1;
          if (v34 < v35)
          {
            v36 = 2 * v34;
            goto LABEL_52;
          }
        }
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v37 = *(this + 6);
      re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(this + 5, v37 + 1);
      v38 = *(this + 14) + 2;
      *(this + 14) = v38;
      if ((v38 & 1) == 0)
      {
        goto LABEL_50;
      }
    }

LABEL_56:
    v39 = this + 64;
LABEL_57:
    v41 = *(this + 6);
    v42 = *a1;
    *&v39[8 * v41] = v42;
    ++*(this + 6);
    *(this + 14) += 2;
    if (*this)
    {
      v43 = *(this + 1);
      v44 = *(this + 4);
      if (v44)
      {
        v46 = v43 + 1;
        if (v46 >= 3)
        {
          v47 = 4;
LABEL_68:
          if (v47 <= v46)
          {
            v51 = v46;
          }

          else
          {
            v51 = v47;
          }

          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this, v51);
          if (*(this + 4))
          {
            goto LABEL_72;
          }

LABEL_66:
          v50 = *(this + 4);
LABEL_73:
          *&v50[8 * (*(this + 1))++] = v6;
          *(this + 4) += 2;
          return;
        }
      }

      else
      {
        v45 = *(this + 3);
        if (v43 >= v45)
        {
          v46 = v43 + 1;
          if (v45 < v46)
          {
            v47 = 2 * v45;
            goto LABEL_68;
          }
        }
      }

      if ((v44 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v48 = *(this + 1);
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this, v48 + 1);
      v49 = *(this + 4) + 2;
      *(this + 4) = v49;
      if ((v49 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

LABEL_72:
    v50 = this + 24;
    goto LABEL_73;
  }
}

id re::FramePersistentPooledGPUBuffer::read@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = 0;
  v6 = a1 + 24;
  v7 = *(a1 + 16);
  v8 = -1;
  v9 = -1;
  do
  {
    v10 = a1 + 24;
    if ((v7 & 1) == 0)
    {
      v10 = *(a1 + 32);
    }

    v11 = (a2 & 0xFFFFFFFFFFFFFFFLL) - (*(v10 + 8 * v5) & 0xFFFFFFFFFFFFFFFLL);
    if (v11 < v8)
    {
      v9 = v5;
      v8 = v11;
    }

    ++v5;
  }

  while (v4 != v5);
  if (v9 == -1)
  {
LABEL_15:
    result = 0;
    goto LABEL_18;
  }

  if (v4 <= v9)
  {
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v24 = 858;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v15, &v20, &v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
    goto LABEL_23;
  }

  if ((v7 & 1) == 0)
  {
    v6 = *(a1 + 32);
  }

  *(v6 + 8 * v9) = a2;
  v4 = *(a1 + 48);
  if (v4 <= v9)
  {
LABEL_23:
    v20 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v21 = 136315906;
    v22 = "operator[]";
    v23 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v24 = 858;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v4;
    _os_log_send_and_compose_impl(v18, &v20, &v29, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 56))
  {
    v12 = a1 + 64;
  }

  else
  {
    v12 = *(a1 + 72);
  }

  result = *(v12 + 8 * v9);
LABEL_18:
  *a3 = result;
  return result;
}

re::MeshNameMap *re::MeshNameMap::init(re::MeshNameMap *result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t a5)
{
  v180 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return result;
  }

  var1 = a3;
  v11 = a2;
  v12 = result;
  v13 = &v175;
  v14 = a4[1];
  v15 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = *a4;
    do
    {
      if (v20 == v6)
      {
        goto LABEL_139;
      }

      v5 = *(*var1 + 96 * v20 + 80);
      if (v7 <= v5)
      {
        goto LABEL_140;
      }

      v22 = *(v11 + 32) + 864 * v5;
      v23 = *(v22 + 224);
      if (v23)
      {
        v24 = *(v23 + 8);
        if (v24)
        {
          ++v17;
          a2 = 0;
          v25 = 4;
          do
          {
            if (v24 <= a2)
            {
              v26 = 0xFFFFFFFFLL;
            }

            else
            {
              v26 = *(*(v23 + 16) + v25);
            }

            if (v14 > v26)
            {
              ++v16;
              v18 += *(v21 + 184 * v26 + 24);
            }

            ++a2;
            v25 += 88;
          }

          while (v24 != a2);
        }
      }

      v19 += *(v22 + 56);
      ++v20;
    }

    while (v20 != v6);
    if (v16 > 0xFFFFFFFE)
    {
      goto LABEL_193;
    }

    if (v17 >= 0xFFFFFFFF)
    {
LABEL_194:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash("assertion failure: (skinnedMeshInstanceCount < 4294967295U) The number of skinned instances exceeds expectations.");
      __break(1u);
      goto LABEL_195;
    }

    if (v18 >= 0xFFFFFFFF)
    {
LABEL_195:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash("assertion failure: (skinnedMeshPartJointCount < 4294967295U) The number of skinned joints exceeds expectations.");
      __break(1u);
LABEL_196:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v140 = MEMORY[0x1E69E9C10];
      v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v141)
      {
        v142 = 3;
      }

      else
      {
        v142 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v15;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v142, &v166, &v175, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
      goto LABEL_200;
    }

    if (v19 < 0xFFFFFFFF)
    {
      goto LABEL_27;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    _os_crash("assertion failure: (meshPartInstanceCount < 4294967295U) The number of mesh parts exceeds expectations.");
    __break(1u);
  }

  v19 = 0;
  v17 = 0;
  v16 = 0;
LABEL_27:
  v161 = v11;
  v159 = v6;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v12 + 16, a5, 2 * v6);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v12 + 64, a5, 2 * v7);
  v5 = v7;
  re::FixedArray<unsigned short>::init<>(v12 + 14, a5, v7);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v12 + 17, a5, v7);
  re::FixedArray<re::StringID>::init<>(v12 + 20, a5, v7);
  re::FixedArray<re::StringID>::init<>(v12 + 23, a5, v15);
  v157 = v15;
  re::FixedArray<int>::init<>(v12 + 26, a5, v15);
  re::FixedArray<int>::init<>(v12 + 29, a5, v17);
  re::FixedArray<int>::init<>(v12 + 32, a5, v16);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v12 + 35, a5, v19, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>(v12 + 304, a5, v7);
  re::FixedArray<int>::init<>(v12 + 41, a5, v159 + 1);
  re::FixedArray<int>::init<>(v12 + 44, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v12 + 47, a5, v159 + 1);
  re::FixedArray<int>::init<>(v12 + 50, a5, v19);
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v160 = v7;
  v7 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v162 = 0;
  v15 = 88;
  v158 = var1;
  do
  {
    v32 = v31;
    v33 = *(var1 + 8);
    if (v33 <= v31)
    {
      goto LABEL_114;
    }

    a5 = *var1 + 96 * v31;
    v17 = *(a5 + 80);
    v5 = v164;
    if (v164 <= v17)
    {
      goto LABEL_115;
    }

    ++*(v165 + 4 * v17);
    v5 = v162;
    var1 = *(v12 + 42);
    if (var1 <= v162)
    {
      goto LABEL_119;
    }

    *(*(v12 + 43) + 4 * v162) = v7;
    v5 = v162;
    var1 = *(v12 + 24);
    if (var1 <= v162)
    {
      goto LABEL_123;
    }

    re::StringID::operator=((*(v12 + 25) + 16 * v162), a5);
    v5 = v162;
    var1 = *(v12 + 27);
    if (var1 <= v162)
    {
      goto LABEL_127;
    }

    *(*(v12 + 28) + 4 * v162) = v17;
    v5 = v162;
    var1 = *(v12 + 48);
    if (var1 <= v162)
    {
      goto LABEL_131;
    }

    *(*(v12 + 49) + 4 * v162) = v30;
    v34 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v12 + 16, a5, &v162);
    v35 = v161;
    v5 = *(v161 + 16);
    if (v5 <= v17)
    {
      goto LABEL_135;
    }

    v36 = *(v161 + 32);
    v37 = *(v36 + 864 * v17 + 224);
    if (v37)
    {
      v38 = *(v37 + 8);
      var1 = v158;
      v39 = v159;
      if (v38)
      {
        v5 = v29;
        a5 = *(v12 + 30);
        if (a5 <= v29)
        {
          goto LABEL_189;
        }

        v40 = 0;
        *(*(v12 + 31) + 4 * v29) = v162;
        v41 = 1;
        do
        {
          if (v38 <= v40)
          {
            v42 = 0xFFFFFFFFLL;
          }

          else
          {
            v42 = *(*(v37 + 16) + 88 * v40 + 4);
          }

          if (v14 > v42)
          {
            v5 = v30;
            a5 = *(v12 + 33);
            if (a5 <= v30)
            {
              goto LABEL_106;
            }

            a5 = v7 + v41 - 1;
            *(*(v12 + 34) + 4 * v30) = a5;
            v5 = *(v12 + 36);
            if (v5 <= a5)
            {
              goto LABEL_110;
            }

            *(*(v12 + 37) + 4 * a5) = v30;
            v30 = (v30 + 1);
          }

          v40 = v41;
        }

        while (v38 > v41++);
        ++v29;
      }
    }

    else
    {
      var1 = v158;
      v39 = v159;
    }

    v44 = *(v36 + 864 * v17 + 56);
    v45 = v44;
    if (v44)
    {
      v17 = v7;
      a5 = *(v12 + 51);
      v46 = a5 - v7;
      if (a5 < v7)
      {
        v46 = 0;
      }

      while (v46)
      {
        v47 = v162;
        *(*(v12 + 52) + 4 * v17) = v162;
        --v46;
        ++v17;
        if (!--v45)
        {
          goto LABEL_56;
        }
      }

      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v17;
      v173 = 2048;
      v174 = a5;
      _os_log_send_and_compose_impl(v67, &v166, &v175, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
      goto LABEL_94;
    }

    v47 = v162;
LABEL_56:
    v7 = (v7 + v44);
    v31 = v47 + 1;
    v162 = v47 + 1;
  }

  while (v47 + 1 < v39);
  v5 = *(v12 + 42);
  v15 = v157;
  if (v5 <= v157)
  {
    goto LABEL_196;
  }

  *(*(v12 + 43) + 4 * v157) = v7;
  v5 = *(v12 + 48);
  if (v5 <= v157)
  {
LABEL_200:
    v166 = 0;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v175 = 0u;
    v143 = MEMORY[0x1E69E9C10];
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v167 = 136315906;
    v168 = "operator[]";
    v169 = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    v170 = 468;
    v171 = 2048;
    v172 = v15;
    v173 = 2048;
    v174 = v5;
    _os_log_send_and_compose_impl(v145, &v166, &v175, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
    _os_crash_msg();
    __break(1u);
    goto LABEL_204;
  }

  v48 = 0;
  v49 = 0;
  a5 = 0;
  v7 = 0;
  v15 = 0;
  *(*(v12 + 49) + 4 * v157) = v30;
  do
  {
    v5 = *(v35 + 16);
    if (v5 <= v7)
    {
      goto LABEL_144;
    }

    v5 = *(v12 + 15);
    if (v5 <= v7)
    {
      goto LABEL_148;
    }

    v50 = (*(v35 + 32) + v48);
    v5 = v50[7];
    *(*(v12 + 16) + 2 * v7) = v5;
    v14 = *(v12 + 18);
    if (v14 <= v7)
    {
      goto LABEL_152;
    }

    v14 = v164;
    if (v164 <= v7)
    {
      goto LABEL_156;
    }

    v51 = *(v12 + 19);
    v52 = *(v165 + 4 * v7);
    v14 = *(v12 + 21);
    if (v14 <= v7)
    {
      goto LABEL_160;
    }

    v34 = re::StringID::operator=((*(v12 + 22) + a5), v50);
    v14 = *(v12 + 45);
    if (v14 <= v7)
    {
      goto LABEL_164;
    }

    v54 = *(v12 + 46);
    *(v54 + 4 * v7) = v15;
    v15 = (v15 + v5);
    ++v7;
    a5 += 16;
    v49 += 24;
    v48 += 864;
    v35 = v161;
  }

  while (v160 != v7);
  v5 = v160;
  if (v14 <= v160)
  {
LABEL_204:
    v166 = 0;
    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v175 = 0u;
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v167 = 136315906;
    v168 = "operator[]";
    v169 = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    v170 = 468;
    v171 = 2048;
    v172 = v5;
    v173 = 2048;
    v174 = v14;
    _os_log_send_and_compose_impl(v148, &v166, &v175, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
    _os_crash_msg();
    __break(1u);
  }

  v55 = 0;
  *(v54 + 4 * v160) = v15;
  v15 = v164;
  v56 = v165;
  v57 = v158[1];
  v58 = (*v158 + 80);
  do
  {
    if (v57 == v55)
    {
      goto LABEL_168;
    }

    v7 = *v58;
    v5 = *(v12 + 18);
    if (v5 <= v7)
    {
      goto LABEL_169;
    }

    if (v15 <= v7)
    {
      goto LABEL_173;
    }

    v59 = *(v12 + 19) + 24 * v7;
    v5 = *(v59 + 8);
    v60 = *(v56 + 4 * v7);
    v14 = v5 - v60;
    if (v5 <= v5 - v60)
    {
      goto LABEL_177;
    }

    *(*(v59 + 16) + 4 * v14) = v55;
    --*(v56 + 4 * v7);
    ++v55;
    v58 += 24;
  }

  while (v157 != v55);
  v7 = 0;
  v14 = 864;
  v17 = 544;
  while (2)
  {
    v5 = *(v35 + 16);
    if (v5 <= v7)
    {
      goto LABEL_181;
    }

    v61 = (*(v35 + 32) + 864 * v7);
    var1 = v61[3].var1;
    re::MeshNameMap::addMeshAssetModelNameToMap(v12, v61, v7);
    v5 = *(v12 + 39);
    if (v5 <= v7)
    {
      goto LABEL_185;
    }

    if ((2 * var1) <= 1)
    {
      a5 = 1;
    }

    else
    {
      a5 = (2 * var1);
    }

    v63 = *(v12 + 40) + 48 * v7;
    LOWORD(v162) = 0;
    if (var1)
    {
      v5 = 0;
      a5 = 0;
      while (1)
      {
        v30 = *(v161 + 16);
        if (v30 <= v7)
        {
          break;
        }

        v64 = *(v161 + 32) + 864 * v7;
        v30 = *(v64 + 56);
        if (v30 <= a5)
        {
          goto LABEL_98;
        }

        v30 = *(v12 + 39);
        if (v30 <= v7)
        {
          goto LABEL_102;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(*(v12 + 40) + 48 * v7, (*(v64 + 64) + 544 * a5 + 488), &v162);
        v5 = (v5 + 1);
        LOWORD(v162) = v5;
        a5 = v5;
        if (var1 <= v5)
        {
          goto LABEL_86;
        }
      }

LABEL_94:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v170 = 797;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v30;
      _os_log_send_and_compose_impl(v70, &v166, &v175, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_98:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v170 = 476;
      v171 = 2048;
      v172 = a5;
      v173 = 2048;
      v174 = v30;
      _os_log_send_and_compose_impl(v73, &v166, &v175, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_102:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v30;
      _os_log_send_and_compose_impl(v76, &v166, &v175, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_106:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = a5;
      _os_log_send_and_compose_impl(v79, &v166, &v175, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = a5;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v82, &v166, &v175, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v32, v33);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v149, v152);
      __break(1u);
LABEL_115:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v17;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v85, &v166, &v175, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = var1;
      _os_log_send_and_compose_impl(v88, &v166, &v175, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = var1;
      _os_log_send_and_compose_impl(v91, &v166, &v175, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_127:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = var1;
      _os_log_send_and_compose_impl(v94, &v166, &v175, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_131:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = var1;
      _os_log_send_and_compose_impl(v97, &v166, &v175, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      v170 = 797;
      v171 = 2048;
      v172 = v17;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v100, &v166, &v175, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v6);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v150, v153);
      __break(1u);
LABEL_140:
      v163 = 0;
      v13[3] = 0u;
      v13[4] = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v170 = 797;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = v7;
      _os_log_send_and_compose_impl(v103, &v163, &v175, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_144:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      v170 = 797;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v106, &v166, &v175, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_148:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v109, &v166, &v175, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_152:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v14;
      _os_log_send_and_compose_impl(v112, &v166, &v175, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_156:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v113 = MEMORY[0x1E69E9C10];
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v14;
      _os_log_send_and_compose_impl(v115, &v166, &v175, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_160:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v116 = MEMORY[0x1E69E9C10];
      v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v117)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v14;
      _os_log_send_and_compose_impl(v118, &v166, &v175, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_164:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v119 = MEMORY[0x1E69E9C10];
      v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v120)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v14;
      _os_log_send_and_compose_impl(v121, &v166, &v175, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_168:
      re::internal::assertLog(6, v53, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v57, v57);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v151, v154);
      __break(1u);
LABEL_169:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v122 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v124, &v166, &v175, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_173:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v125 = MEMORY[0x1E69E9C10];
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v15;
      _os_log_send_and_compose_impl(v127, &v166, &v175, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_177:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v128 = MEMORY[0x1E69E9C10];
      v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v129)
      {
        v130 = 3;
      }

      else
      {
        v130 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v14;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v130, &v166, &v175, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_181:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v131 = MEMORY[0x1E69E9C10];
      v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v132)
      {
        v133 = 3;
      }

      else
      {
        v133 = 2;
      }

      v170 = 797;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v133, &v166, &v175, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_185:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v134 = MEMORY[0x1E69E9C10];
      v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v135)
      {
        v136 = 3;
      }

      else
      {
        v136 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v7;
      v173 = 2048;
      v174 = v5;
      _os_log_send_and_compose_impl(v136, &v166, &v175, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_189:
      v166 = 0;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v175 = 0u;
      v137 = MEMORY[0x1E69E9C10];
      v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v167 = 136315906;
      v168 = "operator[]";
      v169 = 1024;
      if (v138)
      {
        v139 = 3;
      }

      else
      {
        v139 = 2;
      }

      v170 = 468;
      v171 = 2048;
      v172 = v5;
      v173 = 2048;
      v174 = a5;
      _os_log_send_and_compose_impl(v139, &v166, &v175, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v167, 38, v155, v156);
      _os_crash_msg();
      __break(1u);
LABEL_193:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash("assertion failure: (skinnedMeshPartCount < 4294967295U) The number of skinned parts exceeds expectations.");
      __break(1u);
      goto LABEL_194;
    }

LABEL_86:
    ++v7;
    v35 = v161;
    if (v7 != v160)
    {
      continue;
    }

    break;
  }

  ++*v12;
  re::MeshNameMap::calculateHash(v12);
  result = v163;
  if (v163)
  {
    if (v164)
    {
      return (*(*v163 + 40))();
    }
  }

  return result;
}

re::MeshNameMap *re::MeshNameMap::init(re::MeshNameMap *result, re::_anonymous_namespace_::MeshAssetAccessor *this, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4;
  v171 = *MEMORY[0x1E69E9840];
  v6 = *(this + 76);
  if (v6)
  {
    v7 = a4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return result;
  }

  v8 = a5;
  v10 = result;
  v11 = *(this + 156);
  v12 = a4;
  v145 = a4;
  if (a4)
  {
    v143 = *(this + 76);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    do
    {
      if (v17 == v5)
      {
        goto LABEL_128;
      }

      v18 = *(a3 + 96 * v17 + 80);
      if (v19)
      {
        ++v14;
      }

      v148 = v14;
      if (v19)
      {
        v20 = v19;
        for (i = 0; i != v20; ++i)
        {
          if (v22 < v11)
          {
            ++v13;
            v15 += *(re::MeshAsset::skeletonAtIndex(this, v22) + 24);
          }
        }
      }

      v12 = v145;
      v16 += v146;
      ++v17;
      v5 = a4;
      v14 = v148;
    }

    while (v17 != v145);
    if (v13 > 0xFFFFFFFE)
    {
      goto LABEL_178;
    }

    if (v148 >= 0xFFFFFFFF)
    {
LABEL_179:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash("assertion failure: (skinnedMeshInstanceCount < 4294967295U) The number of skinned instances exceeds expectations.");
      __break(1u);
      goto LABEL_180;
    }

    if (v15 >= 0xFFFFFFFF)
    {
LABEL_180:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash("assertion failure: (skinnedMeshPartJointCount < 4294967295U) The number of skinned joints exceeds expectations.");
      __break(1u);
LABEL_181:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v124 = MEMORY[0x1E69E9C10];
      v125 = v36;
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v125;
      v164 = 2048;
      v165 = v12;
      _os_log_send_and_compose_impl(v127, &v157, &v166, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
      goto LABEL_185;
    }

    v23 = v148;
    v6 = v143;
    v8 = a5;
    if (v16 < 0xFFFFFFFF)
    {
      goto LABEL_24;
    }

    re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    _os_crash("assertion failure: (meshPartInstanceCount < 4294967295U) The number of mesh parts exceeds expectations.");
    __break(1u);
  }

  v16 = 0;
  v23 = 0;
  v13 = 0;
LABEL_24:
  v149 = v23;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v10 + 16, v8, 2 * v5);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v10 + 64, v8, 2 * v6);
  v17 = v6;
  re::FixedArray<unsigned short>::init<>(v10 + 14, v8, v6);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v10 + 17, v8, v6);
  re::FixedArray<re::StringID>::init<>(v10 + 20, v8, v6);
  re::FixedArray<re::StringID>::init<>(v10 + 23, v8, v12);
  re::FixedArray<int>::init<>(v10 + 26, v8, v12);
  re::FixedArray<int>::init<>(v10 + 29, v8, v149);
  re::FixedArray<int>::init<>(v10 + 32, v8, v13);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v10 + 35, v8, v16, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>(v10 + 304, v8, v6);
  v12 = (v5 + 1);
  re::FixedArray<int>::init<>(v10 + 41, v8, v12);
  re::FixedArray<int>::init<>(v10 + 44, v8, (v6 + 1));
  re::FixedArray<int>::init<>(v10 + 47, v8, v12);
  re::FixedArray<int>::init<>(v10 + 50, v8, v16);
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v147 = v6;
  v26 = 0;
  v150 = 0;
  v14 = 0;
  v27 = 0;
  v153 = 0;
  do
  {
    v28 = v27;
    if (v5 <= v27)
    {
      goto LABEL_107;
    }

    v12 = a3 + 96 * v27;
    v5 = *(v12 + 80);
    v17 = v155;
    if (v155 <= v5)
    {
      goto LABEL_108;
    }

    ++*(v156 + 4 * v5);
    v17 = v153;
    v13 = *(v10 + 42);
    if (v13 <= v153)
    {
      goto LABEL_112;
    }

    *(*(v10 + 43) + 4 * v153) = v26;
    v17 = v153;
    v13 = *(v10 + 24);
    if (v13 <= v153)
    {
      goto LABEL_116;
    }

    re::StringID::operator=((*(v10 + 25) + 16 * v153), v12);
    v17 = v153;
    v13 = *(v10 + 27);
    if (v13 <= v153)
    {
      goto LABEL_120;
    }

    *(*(v10 + 28) + 4 * v153) = v5;
    v17 = v153;
    v13 = *(v10 + 48);
    if (v13 <= v153)
    {
      goto LABEL_124;
    }

    *(*(v10 + 49) + 4 * v153) = v14;
    re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v10 + 16, v12, &v153);
    {
      v12 = v150;
      v17 = *(v10 + 30);
      if (v17 <= v150)
      {
        goto LABEL_166;
      }

      *(*(v10 + 31) + 4 * v150) = v153;
      if (v29)
      {
        v12 = v29;
        v30 = 0;
        v17 = 1;
        do
        {
          {
            v6 = v14;
            v13 = *(v10 + 33);
            if (v13 <= v14)
            {
              goto LABEL_99;
            }

            v13 = (v26 + v17 - 1);
            *(*(v10 + 34) + 4 * v14) = v13;
            v6 = *(v10 + 36);
            if (v6 <= v13)
            {
              goto LABEL_103;
            }

            *(*(v10 + 37) + 4 * v13) = v14;
            v14 = (v14 + 1);
          }

          v30 = v17;
          v31 = v12 > v17;
          v17 = (v17 + 1);
        }

        while (v31);
      }

      ++v150;
    }

    v33 = v32;
    if (v32)
    {
      v17 = v26;
      v12 = *(v10 + 51);
      v34 = v12 - v26;
      if (v12 < v26)
      {
        v34 = 0;
      }

      v5 = a4;
      while (v34)
      {
        v35 = v153;
        *(*(v10 + 52) + 4 * v17) = v153;
        --v34;
        ++v17;
        if (!--v33)
        {
          goto LABEL_49;
        }
      }

      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v12;
      _os_log_send_and_compose_impl(v57, &v157, &v166, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
      goto LABEL_87;
    }

    v35 = v153;
    v5 = a4;
LABEL_49:
    v26 = v26 + v32;
    v27 = v35 + 1;
    v153 = v35 + 1;
  }

  while (v35 + 1 < v5);
  v12 = *(v10 + 42);
  v36 = v145;
  if (v12 <= v145)
  {
    goto LABEL_181;
  }

  *(*(v10 + 43) + 4 * v145) = v26;
  v12 = *(v10 + 48);
  if (v12 <= v145)
  {
LABEL_185:
    v157 = 0;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    v128 = MEMORY[0x1E69E9C10];
    v129 = v36;
    v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v158 = 136315906;
    v159 = "operator[]";
    v160 = 1024;
    if (v130)
    {
      v131 = 3;
    }

    else
    {
      v131 = 2;
    }

    v161 = 468;
    v162 = 2048;
    v163 = v129;
    v164 = 2048;
    v165 = v12;
    _os_log_send_and_compose_impl(v131, &v157, &v166, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
    _os_crash_msg();
    __break(1u);
    goto LABEL_189;
  }

  v37 = 0;
  v17 = 0;
  v5 = 0;
  v11 = 0;
  *(*(v10 + 49) + 4 * v145) = v14;
  do
  {
    v12 = *(this + 76);
    if (v12 <= v5)
    {
      goto LABEL_129;
    }

    v38 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v5));
    v14 = *(v10 + 15);
    if (v14 <= v5)
    {
      goto LABEL_133;
    }

    v12 = v39;
    *(*(v10 + 16) + 2 * v5) = v39;
    v14 = *(v10 + 18);
    if (v14 <= v5)
    {
      goto LABEL_137;
    }

    v14 = v155;
    if (v155 <= v5)
    {
      goto LABEL_141;
    }

    v40 = *(v10 + 19);
    v41 = *(v156 + 4 * v5);
    v14 = *(v10 + 21);
    if (v14 <= v5)
    {
      goto LABEL_145;
    }

    re::StringID::operator=((*(v10 + 22) + v17), v38);
    v14 = *(v10 + 45);
    if (v14 <= v5)
    {
      goto LABEL_149;
    }

    v43 = *(v10 + 46);
    *(v43 + 4 * v5) = v11;
    v11 = (v11 + v12);
    ++v5;
    v17 += 16;
    v37 += 24;
    v12 = v147;
  }

  while (v147 != v5);
  if (v14 <= v147)
  {
LABEL_189:
    v157 = 0;
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v166 = 0u;
    v132 = MEMORY[0x1E69E9C10];
    v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v158 = 136315906;
    v159 = "operator[]";
    v160 = 1024;
    if (v133)
    {
      v134 = 3;
    }

    else
    {
      v134 = 2;
    }

    v161 = 468;
    v162 = 2048;
    v163 = v12;
    v164 = 2048;
    v165 = v14;
    _os_log_send_and_compose_impl(v134, &v157, &v166, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
    _os_crash_msg();
    __break(1u);
  }

  v44 = 0;
  *(v43 + 4 * v147) = v11;
  v11 = v155;
  v45 = v156;
  v17 = *(v10 + 18);
  v46 = (a3 + 80);
  do
  {
    v47 = a4;
    if (a4 == v44)
    {
      goto LABEL_153;
    }

    v12 = *v46;
    if (v17 <= v12)
    {
      goto LABEL_154;
    }

    if (v11 <= v12)
    {
      goto LABEL_158;
    }

    v48 = *(v10 + 19) + 24 * v12;
    v14 = *(v48 + 8);
    v49 = *(v45 + 4 * v12);
    v5 = v14 - v49;
    if (v14 <= v14 - v49)
    {
      goto LABEL_162;
    }

    *(*(v48 + 16) + 4 * v5) = v44;
    --*(v45 + 4 * v12);
    ++v44;
    v46 += 24;
  }

  while (v145 != v44);
  v12 = 0;
  v13 = 48;
  v6 = 544;
  while (2)
  {
    v17 = *(this + 76);
    if (v17 <= v12)
    {
      goto LABEL_170;
    }

    v50 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v12));
    re::MeshNameMap::addMeshAssetModelNameToMap(v10, v50, v12);
    v17 = *(v10 + 39);
    if (v17 <= v12)
    {
      goto LABEL_174;
    }

    if ((2 * v14) <= 1)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2 * v14;
    }

    v53 = *(v10 + 40) + 48 * v12;
    LOWORD(v153) = 0;
    if (v14)
    {
      v5 = 0;
      v17 = 0;
      while (1)
      {
        v26 = *(this + 76);
        if (v26 <= v12)
        {
          break;
        }

        v54 = re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * v12));
        v26 = *(v54 + 56);
        if (v26 <= v17)
        {
          goto LABEL_91;
        }

        v26 = *(v10 + 39);
        if (v26 <= v12)
        {
          goto LABEL_95;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(*(v10 + 40) + 48 * v12, (*(v54 + 64) + 544 * v17 + 488), &v153);
        v5 = (v5 + 1);
        LOWORD(v153) = v5;
        v17 = v5;
        if (v14 <= v5)
        {
          goto LABEL_79;
        }
      }

LABEL_87:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v161 = 797;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v26;
      _os_log_send_and_compose_impl(v60, &v157, &v166, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v61 = MEMORY[0x1E69E9C10];
      v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v62)
      {
        v63 = 3;
      }

      else
      {
        v63 = 2;
      }

      v161 = 476;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v26;
      _os_log_send_and_compose_impl(v63, &v157, &v166, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_95:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v64 = MEMORY[0x1E69E9C10];
      v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v65)
      {
        v66 = 3;
      }

      else
      {
        v66 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v26;
      _os_log_send_and_compose_impl(v66, &v157, &v166, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_99:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v67 = MEMORY[0x1E69E9C10];
      v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v68)
      {
        v69 = 3;
      }

      else
      {
        v69 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v6;
      v164 = 2048;
      v165 = v13;
      _os_log_send_and_compose_impl(v69, &v157, &v166, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_103:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v70 = MEMORY[0x1E69E9C10];
      v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v71)
      {
        v72 = 3;
      }

      else
      {
        v72 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v13;
      v164 = 2048;
      v165 = v6;
      _os_log_send_and_compose_impl(v72, &v157, &v166, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_107:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, v5);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v135, v138);
      __break(1u);
LABEL_108:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v17;
      _os_log_send_and_compose_impl(v75, &v157, &v166, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_112:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v13;
      _os_log_send_and_compose_impl(v78, &v157, &v166, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v13;
      _os_log_send_and_compose_impl(v81, &v157, &v166, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v82 = MEMORY[0x1E69E9C10];
      v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v83)
      {
        v84 = 3;
      }

      else
      {
        v84 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v13;
      _os_log_send_and_compose_impl(v84, &v157, &v166, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_124:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v85 = MEMORY[0x1E69E9C10];
      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v86)
      {
        v87 = 3;
      }

      else
      {
        v87 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v17;
      v164 = 2048;
      v165 = v13;
      _os_log_send_and_compose_impl(v87, &v157, &v166, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_128:
      re::internal::assertLog(6, this, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v5);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v136, v139);
      __break(1u);
LABEL_129:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      v161 = 797;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v12;
      _os_log_send_and_compose_impl(v90, &v157, &v166, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_133:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v93, &v157, &v166, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_137:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v96, &v157, &v166, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_141:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v99, &v157, &v166, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_145:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v100 = MEMORY[0x1E69E9C10];
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v102, &v157, &v166, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_149:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v105, &v157, &v166, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_153:
      re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v47);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v137, v140);
      __break(1u);
LABEL_154:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v17;
      _os_log_send_and_compose_impl(v108, &v157, &v166, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_158:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v109 = MEMORY[0x1E69E9C10];
      v110 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v110)
      {
        v111 = 3;
      }

      else
      {
        v111 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v11;
      _os_log_send_and_compose_impl(v111, &v157, &v166, 80, &dword_1E1C61000, v109, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_162:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v112 = MEMORY[0x1E69E9C10];
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v113)
      {
        v114 = 3;
      }

      else
      {
        v114 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v5;
      v164 = 2048;
      v165 = v14;
      _os_log_send_and_compose_impl(v114, &v157, &v166, 80, &dword_1E1C61000, v112, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_166:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v115 = MEMORY[0x1E69E9C10];
      v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v116)
      {
        v117 = 3;
      }

      else
      {
        v117 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v17;
      _os_log_send_and_compose_impl(v117, &v157, &v166, 80, &dword_1E1C61000, v115, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_170:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v118 = MEMORY[0x1E69E9C10];
      v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v119)
      {
        v120 = 3;
      }

      else
      {
        v120 = 2;
      }

      v161 = 797;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v17;
      _os_log_send_and_compose_impl(v120, &v157, &v166, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_174:
      v157 = 0;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v166 = 0u;
      v121 = MEMORY[0x1E69E9C10];
      v122 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v158 = 136315906;
      v159 = "operator[]";
      v160 = 1024;
      if (v122)
      {
        v123 = 3;
      }

      else
      {
        v123 = 2;
      }

      v161 = 468;
      v162 = 2048;
      v163 = v12;
      v164 = 2048;
      v165 = v17;
      _os_log_send_and_compose_impl(v123, &v157, &v166, 80, &dword_1E1C61000, v121, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v158, 38, v141, v142);
      _os_crash_msg();
      __break(1u);
LABEL_178:
      re::internal::assertLog(4, this, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash("assertion failure: (skinnedMeshPartCount < 4294967295U) The number of skinned parts exceeds expectations.");
      __break(1u);
      goto LABEL_179;
    }

LABEL_79:
    if (++v12 != v147)
    {
      continue;
    }

    break;
  }

  ++*v10;
  re::MeshNameMap::calculateHash(v10);
  result = v154;
  if (v154)
  {
    if (v155)
    {
      return (*(*v154 + 40))();
    }
  }

  return result;
}

re::MeshNameMap *re::MeshNameMap::init(re::MeshNameMap *result, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v7 = a4;
  v178 = *MEMORY[0x1E69E9840];
  v8 = a2[2];
  if (v8)
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    return result;
  }

  v11 = result;
  v12 = a2[12];
  v13 = a4;
  if (a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      if (v18 == a4)
      {
        goto LABEL_105;
      }

      v5 = *(a3 + 96 * v18 + 80);
      if (v8 <= v5)
      {
        goto LABEL_106;
      }

      v19 = (a2[4] + (v5 << 9));
      v20 = v19[21];
      if (v20)
      {
        ++v15;
        v21 = v19[23];
        do
        {
          v23 = *v21;
          v21 += 36;
          v22 = v23;
          if (v12 > v23)
          {
            ++v14;
            v16 += *(a2[14] + 112 * v22 + 24);
          }

          --v20;
        }

        while (v20);
      }

      v17 += v19[26];
      ++v18;
    }

    while (v18 != a4);
    if (v14 > 0xFFFFFFFE)
    {
      goto LABEL_184;
    }

    if (v15 >= 0xFFFFFFFF)
    {
LABEL_185:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned instances exceeds expectations.", "skinnedMeshInstanceCount < 4294967295U", "init", 253);
      _os_crash("assertion failure: (skinnedMeshInstanceCount < 4294967295U) The number of skinned instances exceeds expectations.");
      __break(1u);
      goto LABEL_186;
    }

    if (v16 >= 0xFFFFFFFF)
    {
LABEL_186:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned joints exceeds expectations.", "skinnedMeshPartJointCount < 4294967295U", "init", 254);
      _os_crash("assertion failure: (skinnedMeshPartJointCount < 4294967295U) The number of skinned joints exceeds expectations.");
      __break(1u);
      goto LABEL_187;
    }

    if (v17 < 0xFFFFFFFF)
    {
      goto LABEL_23;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of mesh parts exceeds expectations.", "meshPartInstanceCount < 4294967295U", "init", 255);
    v13 = _os_crash("assertion failure: (meshPartInstanceCount < 4294967295U) The number of mesh parts exceeds expectations.");
    __break(1u);
  }

  v17 = 0;
  v15 = 0;
  v14 = 0;
LABEL_23:
  v5 = v13;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v11 + 16, a5, 2 * v7);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v11 + 64, a5, 2 * v8);
  v6 = v8;
  re::FixedArray<unsigned short>::init<>(v11 + 14, a5, v8);
  re::FixedArray<re::FixedArray<unsigned int>>::init<>(v11 + 17, a5, v8);
  re::FixedArray<re::StringID>::init<>(v11 + 20, a5, v8);
  re::FixedArray<re::StringID>::init<>(v11 + 23, a5, v5);
  v156 = v5;
  re::FixedArray<int>::init<>(v11 + 26, a5, v5);
  re::FixedArray<int>::init<>(v11 + 29, a5, v15);
  re::FixedArray<int>::init<>(v11 + 32, a5, v14);
  re::FixedArray<unsigned int>::init<unsigned int const&>(v11 + 35, a5, v17, re::MeshNameMap::kInvalidSkinnedPartIndex);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>(v11 + 304, a5, v8);
  re::FixedArray<int>::init<>(v11 + 41, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v11 + 44, a5, (v8 + 1));
  re::FixedArray<int>::init<>(v11 + 47, a5, (v7 + 1));
  re::FixedArray<int>::init<>(v11 + 50, a5, v17);
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v155 = v8;
  v26 = 0;
  v27 = 0;
  v8 = 0;
  v28 = 0;
  v160 = 0;
  v15 = 144;
  v157 = v7;
  do
  {
    v29 = v28;
    if (v7 <= v28)
    {
      goto LABEL_110;
    }

    v30 = a3 + 96 * v28;
    v6 = *(v30 + 80);
    v5 = v162;
    if (v162 <= v6)
    {
      goto LABEL_111;
    }

    ++*(v163 + 4 * v6);
    v5 = v160;
    v7 = *(v11 + 42);
    if (v7 <= v160)
    {
      goto LABEL_115;
    }

    *(*(v11 + 43) + 4 * v160) = v26;
    v5 = v160;
    v7 = *(v11 + 24);
    if (v7 <= v160)
    {
      goto LABEL_119;
    }

    re::StringID::operator=((*(v11 + 25) + 16 * v160), v30);
    v5 = v160;
    v7 = *(v11 + 27);
    if (v7 <= v160)
    {
      goto LABEL_123;
    }

    *(*(v11 + 28) + 4 * v160) = v6;
    v5 = v160;
    v7 = *(v11 + 48);
    if (v7 <= v160)
    {
      goto LABEL_127;
    }

    *(*(v11 + 49) + 4 * v160) = v8;
    v31 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v11 + 16, v30, &v160);
    v5 = a2[2];
    if (v5 <= v6)
    {
      goto LABEL_131;
    }

    v32 = (a2[4] + (v6 << 9));
    v33 = v32[21];
    if (v33)
    {
      v5 = v27;
      v7 = *(v11 + 30);
      if (v7 <= v27)
      {
        goto LABEL_172;
      }

      v34 = 0;
      *(*(v11 + 31) + 4 * v27) = v160;
      v35 = v32[23];
      v36 = 1;
      do
      {
        if (v12 > *(v35 + 144 * v34))
        {
          v5 = v8;
          v7 = *(v11 + 33);
          if (v7 <= v8)
          {
            goto LABEL_85;
          }

          v7 = v26 + v36 - 1;
          *(*(v11 + 34) + 4 * v8) = v7;
          v5 = *(v11 + 36);
          if (v5 <= v7)
          {
            goto LABEL_89;
          }

          *(*(v11 + 37) + 4 * v7) = v8;
          v8 = (v8 + 1);
        }

        v34 = v36;
      }

      while (v33 > v36++);
      ++v27;
    }

    v38 = v32[26];
    v39 = v38;
    if (v38)
    {
      v6 = v26;
      v7 = *(v11 + 51);
      v40 = v7 - v26;
      if (v7 < v26)
      {
        v40 = 0;
      }

      while (v40)
      {
        v41 = v160;
        *(*(v11 + 52) + 4 * v6) = v160;
        --v40;
        ++v6;
        if (!--v39)
        {
          goto LABEL_47;
        }
      }

      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v62 = MEMORY[0x1E69E9C10];
      v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v63)
      {
        v64 = 3;
      }

      else
      {
        v64 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v6;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v64, &v164, &v173, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_85:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v67, &v164, &v173, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_89:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v68 = MEMORY[0x1E69E9C10];
      v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v69)
      {
        v70 = 3;
      }

      else
      {
        v70 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v7;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v70, &v164, &v173, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_93:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v71 = MEMORY[0x1E69E9C10];
      v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v72)
      {
        v73 = 3;
      }

      else
      {
        v73 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v30;
      _os_log_send_and_compose_impl(v73, &v164, &v173, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_97:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v74 = MEMORY[0x1E69E9C10];
      v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v75)
      {
        v76 = 3;
      }

      else
      {
        v76 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v6;
      v171 = 2048;
      v172 = v30;
      _os_log_send_and_compose_impl(v76, &v164, &v173, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_101:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v77 = MEMORY[0x1E69E9C10];
      v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v78)
      {
        v79 = 3;
      }

      else
      {
        v79 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v30;
      _os_log_send_and_compose_impl(v79, &v164, &v173, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_105:
      re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v147, v150);
      __break(1u);
LABEL_106:
      v161 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v80 = MEMORY[0x1E69E9C10];
      v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v81)
      {
        v82 = 3;
      }

      else
      {
        v82 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v8;
      _os_log_send_and_compose_impl(v82, &v161, &v173, 80, &dword_1E1C61000, v80, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v29, v7);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v148, v151);
      __break(1u);
LABEL_111:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v83 = MEMORY[0x1E69E9C10];
      v84 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v84)
      {
        v85 = 3;
      }

      else
      {
        v85 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v6;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v85, &v164, &v173, 80, &dword_1E1C61000, v83, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_115:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v86 = MEMORY[0x1E69E9C10];
      v87 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v87)
      {
        v88 = 3;
      }

      else
      {
        v88 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v88, &v164, &v173, 80, &dword_1E1C61000, v86, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_119:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v89 = MEMORY[0x1E69E9C10];
      v90 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v90)
      {
        v91 = 3;
      }

      else
      {
        v91 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v91, &v164, &v173, 80, &dword_1E1C61000, v89, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v92 = MEMORY[0x1E69E9C10];
      v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v93)
      {
        v94 = 3;
      }

      else
      {
        v94 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v94, &v164, &v173, 80, &dword_1E1C61000, v92, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_127:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v95 = MEMORY[0x1E69E9C10];
      v96 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v96)
      {
        v97 = 3;
      }

      else
      {
        v97 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v97, &v164, &v173, 80, &dword_1E1C61000, v95, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_131:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v98 = MEMORY[0x1E69E9C10];
      v99 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v99)
      {
        v100 = 3;
      }

      else
      {
        v100 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v6;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v100, &v164, &v173, 80, &dword_1E1C61000, v98, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_135:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v101 = MEMORY[0x1E69E9C10];
      v102 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v102)
      {
        v103 = 3;
      }

      else
      {
        v103 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v103, &v164, &v173, 80, &dword_1E1C61000, v101, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_139:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v104 = MEMORY[0x1E69E9C10];
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v105)
      {
        v106 = 3;
      }

      else
      {
        v106 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v106, &v164, &v173, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_143:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v107 = MEMORY[0x1E69E9C10];
      v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v108)
      {
        v109 = 3;
      }

      else
      {
        v109 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v8;
      _os_log_send_and_compose_impl(v109, &v164, &v173, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_147:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v110 = MEMORY[0x1E69E9C10];
      v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v111)
      {
        v112 = 3;
      }

      else
      {
        v112 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v8;
      _os_log_send_and_compose_impl(v112, &v164, &v173, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_151:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v113 = MEMORY[0x1E69E9C10];
      v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v114)
      {
        v115 = 3;
      }

      else
      {
        v115 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v8;
      _os_log_send_and_compose_impl(v115, &v164, &v173, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_155:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v116 = MEMORY[0x1E69E9C10];
      v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v117)
      {
        v118 = 3;
      }

      else
      {
        v118 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v12;
      v171 = 2048;
      v172 = v8;
      _os_log_send_and_compose_impl(v118, &v164, &v173, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_159:
      re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v53, v53);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v149, v152);
      __break(1u);
LABEL_160:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v119 = MEMORY[0x1E69E9C10];
      v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v120)
      {
        v121 = 3;
      }

      else
      {
        v121 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v12;
      _os_log_send_and_compose_impl(v121, &v164, &v173, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_164:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v122 = MEMORY[0x1E69E9C10];
      v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v123)
      {
        v124 = 3;
      }

      else
      {
        v124 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v124, &v164, &v173, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_168:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v125 = MEMORY[0x1E69E9C10];
      v126 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v126)
      {
        v127 = 3;
      }

      else
      {
        v127 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v6;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v127, &v164, &v173, 80, &dword_1E1C61000, v125, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_172:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v128 = MEMORY[0x1E69E9C10];
      v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v129)
      {
        v130 = 3;
      }

      else
      {
        v130 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v5;
      v171 = 2048;
      v172 = v7;
      _os_log_send_and_compose_impl(v130, &v164, &v173, 80, &dword_1E1C61000, v128, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_176:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v131 = MEMORY[0x1E69E9C10];
      v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v132)
      {
        v133 = 3;
      }

      else
      {
        v133 = 2;
      }

      v168 = 797;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v133, &v164, &v173, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_180:
      v164 = 0;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      v173 = 0u;
      v134 = MEMORY[0x1E69E9C10];
      v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v165 = 136315906;
      v166 = "operator[]";
      v167 = 1024;
      if (v135)
      {
        v136 = 3;
      }

      else
      {
        v136 = 2;
      }

      v168 = 468;
      v169 = 2048;
      v170 = v8;
      v171 = 2048;
      v172 = v5;
      _os_log_send_and_compose_impl(v136, &v164, &v173, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
      _os_crash_msg();
      __break(1u);
LABEL_184:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) The number of skinned parts exceeds expectations.", "skinnedMeshPartCount < 4294967295U", "init", 252);
      _os_crash("assertion failure: (skinnedMeshPartCount < 4294967295U) The number of skinned parts exceeds expectations.");
      __break(1u);
      goto LABEL_185;
    }

    v41 = v160;
LABEL_47:
    v26 += v38;
    v28 = v41 + 1;
    v160 = v41 + 1;
    v7 = v157;
  }

  while (v41 + 1 < v157);
  v5 = *(v11 + 42);
  v42 = v156;
  if (v5 <= v156)
  {
LABEL_187:
    v164 = 0;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v173 = 0u;
    v137 = MEMORY[0x1E69E9C10];
    v138 = v42;
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v165 = 136315906;
    v166 = "operator[]";
    v167 = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    v168 = 468;
    v169 = 2048;
    v170 = v138;
    v171 = 2048;
    v172 = v5;
    _os_log_send_and_compose_impl(v140, &v164, &v173, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
    _os_crash_msg();
    __break(1u);
    goto LABEL_191;
  }

  *(*(v11 + 43) + 4 * v156) = v26;
  v5 = *(v11 + 48);
  if (v5 <= v156)
  {
LABEL_191:
    v164 = 0;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v173 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v8 = v42;
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v165 = 136315906;
    v166 = "operator[]";
    v167 = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    v168 = 468;
    v169 = 2048;
    v170 = v8;
    v171 = 2048;
    v172 = v5;
    _os_log_send_and_compose_impl(v143, &v164, &v173, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
    _os_crash_msg();
    __break(1u);
    goto LABEL_195;
  }

  v15 = 0;
  v43 = 0;
  v7 = 0;
  v12 = 0;
  v6 = 0;
  *(*(v11 + 49) + 4 * v156) = v8;
  v44 = a2;
  do
  {
    v5 = v44[2];
    if (v5 <= v12)
    {
      goto LABEL_135;
    }

    v5 = *(v11 + 15);
    if (v5 <= v12)
    {
      goto LABEL_139;
    }

    v45 = (v44[4] + v15);
    v5 = v45[26];
    *(*(v11 + 16) + 2 * v12) = v5;
    v8 = *(v11 + 18);
    if (v8 <= v12)
    {
      goto LABEL_143;
    }

    v8 = v162;
    if (v162 <= v12)
    {
      goto LABEL_147;
    }

    v46 = *(v11 + 19);
    v47 = *(v163 + 4 * v12);
    v8 = *(v11 + 21);
    if (v8 <= v12)
    {
      goto LABEL_151;
    }

    v31 = re::StringID::operator=((*(v11 + 22) + v7), v45);
    v8 = *(v11 + 45);
    v44 = a2;
    if (v8 <= v12)
    {
      goto LABEL_155;
    }

    v49 = *(v11 + 46);
    *(v49 + 4 * v12) = v6;
    v6 = (v6 + v5);
    ++v12;
    v7 += 16;
    v43 += 24;
    v15 += 512;
  }

  while (v155 != v12);
  v15 = v155;
  if (v8 <= v155)
  {
LABEL_195:
    v164 = 0;
    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v173 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v165 = 136315906;
    v166 = "operator[]";
    v167 = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    v168 = 468;
    v169 = 2048;
    v170 = v15;
    v171 = 2048;
    v172 = v8;
    _os_log_send_and_compose_impl(v146, &v164, &v173, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v165, 38, v153, v154);
    _os_crash_msg();
    __break(1u);
  }

  v50 = 0;
  *(v49 + 4 * v155) = v6;
  v7 = v162;
  v51 = v163;
  v12 = *(v11 + 18);
  v52 = (a3 + 80);
  do
  {
    v53 = v157;
    if (v157 == v50)
    {
      goto LABEL_159;
    }

    v8 = *v52;
    if (v12 <= v8)
    {
      goto LABEL_160;
    }

    if (v7 <= v8)
    {
      goto LABEL_164;
    }

    v54 = *(v11 + 19) + 24 * v8;
    v5 = *(v54 + 8);
    v55 = *(v51 + 4 * v8);
    v6 = v5 - v55;
    if (v5 <= v5 - v55)
    {
      goto LABEL_168;
    }

    *(*(v54 + 16) + 4 * v6) = v50;
    --*(v51 + 4 * v8);
    ++v50;
    v52 += 24;
  }

  while (v156 != v50);
  v8 = 0;
  v12 = 48;
  while (2)
  {
    v5 = a2[2];
    if (v5 <= v8)
    {
      goto LABEL_176;
    }

    v56 = a2[4] + (v8 << 9);
    v57 = *(v56 + 208);
    re::MeshNameMap::addMeshAssetModelNameToMap(v11, v56, v8);
    v5 = *(v11 + 39);
    if (v5 <= v8)
    {
      goto LABEL_180;
    }

    if ((2 * v57) <= 1)
    {
      v59 = 1;
    }

    else
    {
      v59 = 2 * v57;
    }

    v60 = *(v11 + 40) + 48 * v8;
    LOWORD(v160) = 0;
    if (v57)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v30 = a2[2];
        if (v30 <= v8)
        {
          goto LABEL_93;
        }

        v61 = a2[4] + (v8 << 9);
        v30 = *(v61 + 208);
        if (v30 <= v6)
        {
          goto LABEL_97;
        }

        v30 = *(v11 + 39);
        if (v30 <= v8)
        {
          goto LABEL_101;
        }

        re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(*(v11 + 40) + 48 * v8, (*(v61 + 224) + (v6 << 8) + 72), &v160);
        v5 = (v5 + 1);
        LOWORD(v160) = v5;
        v6 = v5;
      }

      while (v57 > v5);
    }

    if (++v8 != v155)
    {
      continue;
    }

    break;
  }

  ++*v11;
  re::MeshNameMap::calculateHash(v11);
  result = v161;
  if (v161)
  {
    if (v162)
    {
      return (*(*v161 + 40))();
    }
  }

  return result;
}

uint64_t re::MeshNameMap::deinit(re::MeshNameMap *this)
{
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 2);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::FixedArray<re::FixedArray<unsigned int>>::deinit(this + 17);
  re::FixedArray<re::StringID>::deinit(this + 20);
  re::FixedArray<re::StringID>::deinit(this + 23);
  re::FixedArray<CoreIKTransform>::deinit(this + 26);
  re::FixedArray<CoreIKTransform>::deinit(this + 29);
  re::FixedArray<CoreIKTransform>::deinit(this + 32);
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::deinit(this + 38);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 44);
  re::FixedArray<CoreIKTransform>::deinit(this + 47);
  result = re::FixedArray<CoreIKTransform>::deinit(this + 50);
  ++*this;
  *(this + 1) = 0;
  return result;
}

uint64_t re::MeshNameMap::meshPartInstanceCount(re::MeshNameMap *this, unsigned int a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2 + 1;
  v4 = *(this + 42);
  if (v4 <= v3)
  {
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v6 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v16 = 476;
    v17 = 2048;
    v18 = v3;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v7, &v12, &v21, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v12 = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 476;
    v17 = 2048;
    v18 = v2;
    v19 = 2048;
    v20 = v4;
    _os_log_send_and_compose_impl(v10, &v12, &v21, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2;
  if (v4 <= a2)
  {
    goto LABEL_8;
  }

  return (*(*(this + 43) + 4 * v3) - *(*(this + 43) + 4 * a2));
}

uint64_t re::MeshNameMap::instanceIndex(re::MeshNameMap *this, const re::StringID *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(this + 4) + 32 * v6 + 24);
  }
}

uint64_t re::MeshNameMap::modelIndex(re::MeshNameMap *this, const re::StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, a2, v4 ^ (v4 >> 31), v16);
  if (v17 != 0x7FFFFFFF)
  {
    return *(*(this + 10) + 32 * v17 + 24);
  }

  v5 = *(a2 + 1);
  v6 = strlen(v5);
  v9 = v8;
  v14 = 0;
  v15 = &str_67;
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ (v14 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v14 >> 31) ^ (v14 >> 1))) >> 27));
  v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v14, v10 ^ (v10 >> 31), v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v14)
    {
      if (v14)
      {
      }
    }

    return 0xFFFFLL;
  }

  else
  {
    v13 = *(this + 10) + 32 * v17;
    if (v14)
    {
      if (v14)
      {
      }
    }

    return *(v13 + 24);
  }
}

uint64_t re::anonymous namespace::meshModelTrimmedName(uint64_t result, unint64_t a2)
{
  v6[0] = result;
  v6[1] = a2;
  v3 = a2 + 1;
  for (i = a2; i; --i)
  {
    v5 = *(result - 1 + i);
    --v3;
    if (v5 == 47)
    {
      return re::Slice<char>::range(v6, v3, a2);
    }
  }

  return result;
}

uint64_t re::MeshNameMap::modelIndex(re::MeshNameMap *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 27);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 28) + 4 * a2);
}

uint64_t re::MeshNameMap::partIndex(re::MeshNameMap *this, unsigned int a2, const re::StringID *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 39);
  if (v4 <= a2)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 476;
    v15 = 2048;
    v16 = v3;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 40) + 48 * a2;
  re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v19, v5, a3);
  if (HIDWORD(v19[0]) == 0x7FFFFFFF)
  {
    return 0xFFFFLL;
  }

  else
  {
    return *(*(v5 + 16) + 32 * HIDWORD(v19[0]) + 24);
  }
}

uint64_t re::MeshNameMap::meshPartStartIndexForInstance(re::MeshNameMap *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 42);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 43) + 4 * a2);
}

uint64_t re::MeshNameMap::skinnedPartIndexForPartInstance(re::MeshNameMap *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 36);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 476;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 37) + 4 * a2);
}

uint64_t *re::MeshNameMap::meshInstancePartsForIdentifier@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t this@<X0>, unsigned __int8 *a3@<X1>)
{
  v4 = this;
  v79 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  if (v6 == 3)
  {
    v7 = *(this + 408);
    if (v7)
    {
      v8 = *(this + 416);
      v10 = *(this + 336);
      v9 = *(this + 344);
      v11 = re::globalAllocators(this)[2];
      *(&v75 + 1) = v11;
      v12 = (*(*v11 + 32))(v11, 40, 0);
      *v12 = &unk_1F5D06640;
      v12[1] = v8;
      v12[2] = v7;
      v12[3] = v9;
      v12[4] = v10;
      *&v76 = v12;
      *a1 = v7;
LABEL_4:
      a1[4] = v11;
LABEL_5:
      a1[5] = 0;
      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>((a1 + 1), buf);
      return re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(buf);
    }

    goto LABEL_39;
  }

  v14 = a3;
  v15 = *(a3 + 4);
  if (v15 && *v15)
  {
    if (v6 == 2)
    {
      this = re::MeshNameMap::modelIndex(this, (a3 + 8));
      if (this == 0xFFFF)
      {
        goto LABEL_39;
      }

      v3 = this;
      v17 = v4[39];
      if (v17 > this)
      {
        v32 = v4[40] + 48 * this;
        this = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, v32, (v14 + 24));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          goto LABEL_39;
        }

        v14 = v4[18];
        if (v14 > v3)
        {
          v33 = *(v32 + 16) + 32 * *&buf[12];
          v34 = v4[19] + 24 * v3;
          v36 = *(v34 + 8);
          v35 = *(v34 + 16);
          v37 = *(v33 + 24);
          v11 = re::globalAllocators(this)[2];
          *(&v75 + 1) = v11;
          v38 = (*(*v11 + 32))(v11, 32, 0);
          *v38 = &unk_1F5D065E8;
          *(v38 + 8) = v35;
          *(v38 + 16) = v36;
          *(v38 + 24) = v37;
          *&v76 = v38;
          *a1 = v36;
          goto LABEL_4;
        }

LABEL_69:
        v65 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *buf = 0u;
        v61 = MEMORY[0x1E69E9C10];
        v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v66 = 136315906;
        v67 = "operator[]";
        v68 = 1024;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        v69 = 476;
        v70 = 2048;
        v71 = v3;
        v72 = 2048;
        v73 = v14;
        _os_log_send_and_compose_impl(v63, &v65, buf, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
        _os_crash_msg();
        __break(1u);
      }

      goto LABEL_53;
    }

    if (v6 == 1)
    {
      v16 = 0xBF58476D1CE4E5B9 * ((*(a3 + 1) >> 31) ^ (*(a3 + 1) >> 1));
      this = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a3 + 1, (0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) ^ ((0x94D049BB133111EBLL * (v16 ^ (v16 >> 27))) >> 31), buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      v17 = *(v4[4] + 32 * *&buf[12] + 24);
      v3 = v4[27];
      if (v3 > v17)
      {
        v3 = *(v4[28] + 4 * v17);
        v18 = v4[39];
        if (v18 > v3)
        {
          v19 = v4[40] + 48 * v3;
          this = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(buf, v19, (v14 + 24));
          if (*&buf[12] == 0x7FFFFFFF)
          {
            goto LABEL_39;
          }

          v20 = *(*(v19 + 16) + 32 * *&buf[12] + 24);
          v21 = re::globalAllocators(this)[2];
          *(&v75 + 1) = v21;
          *&v76 = buf;
          *buf = &unk_1F5D06590;
          *&buf[8] = v17 | (v20 << 32);
          *a1 = 1;
LABEL_23:
          a1[4] = v21;
          goto LABEL_5;
        }

        goto LABEL_57;
      }

      goto LABEL_49;
    }

    v30 = *re::graphicsLogObjects(this);
    this = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!this)
    {
      goto LABEL_39;
    }

    v39 = *v14;
    *buf = 67109120;
    *&buf[4] = v39;
LABEL_38:
    _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Invalid mesh identifier type detected: %u.", buf, 8u);
    goto LABEL_39;
  }

  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*(a3 + 1) >> 31) ^ (*(a3 + 1) >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*(a3 + 1) >> 31) ^ (*(a3 + 1) >> 1))) >> 27));
      this = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, a3 + 1, v22 ^ (v22 >> 31), buf);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        goto LABEL_39;
      }

      v14 = *(v4[4] + 32 * *&buf[12] + 24);
      if (v14 == 0xFFFF)
      {
        goto LABEL_39;
      }

      v17 = v4[27];
      if (v17 > v14)
      {
        v17 = *(v4[28] + 4 * v14);
        v3 = v4[15];
        if (v3 > v17)
        {
          v23 = v4[16];
          v24 = *(v23 + 2 * v17);
          if (!*(v23 + 2 * v17))
          {
            goto LABEL_39;
          }

          v21 = re::globalAllocators(this)[2];
          *buf = &unk_1F5D064D0;
          *&buf[8] = v14;
          *(&v75 + 1) = v21;
          *&v76 = buf;
          *a1 = v24;
          goto LABEL_23;
        }

        goto LABEL_65;
      }

LABEL_61:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *buf = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66 = 136315906;
      v67 = "operator[]";
      v68 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v69 = 476;
      v70 = 2048;
      v71 = v14;
      v72 = 2048;
      v73 = v17;
      _os_log_send_and_compose_impl(v57, &v65, buf, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
      _os_crash_msg();
      __break(1u);
LABEL_65:
      v65 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *buf = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v66 = 136315906;
      v67 = "operator[]";
      v68 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v69 = 476;
      v70 = 2048;
      v71 = v17;
      v72 = 2048;
      v73 = v3;
      _os_log_send_and_compose_impl(v60, &v65, buf, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
      _os_crash_msg();
      __break(1u);
      goto LABEL_69;
    }

    v30 = *re::graphicsLogObjects(this);
    this = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!this)
    {
      goto LABEL_39;
    }

    v31 = *v14;
    *buf = 67109120;
    *&buf[4] = v31;
    goto LABEL_38;
  }

  this = re::MeshNameMap::modelIndex(this, (a3 + 8));
  if (this == 0xFFFF)
  {
    goto LABEL_39;
  }

  v14 = this;
  v17 = v4[18];
  if (v17 <= this)
  {
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v40 = MEMORY[0x1E69E9C10];
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v69 = 476;
    v70 = 2048;
    v71 = v14;
    v72 = 2048;
    v73 = v17;
    _os_log_send_and_compose_impl(v41, &v65, buf, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  v17 = v4[15];
  if (v17 <= this)
  {
LABEL_45:
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    v69 = 476;
    v70 = 2048;
    v71 = v14;
    v72 = 2048;
    v73 = v17;
    _os_log_send_and_compose_impl(v44, &v65, buf, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v69 = 476;
    v70 = 2048;
    v71 = v17;
    v72 = 2048;
    v73 = v3;
    _os_log_send_and_compose_impl(v47, &v65, buf, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v69 = 476;
    v70 = 2048;
    v71 = v3;
    v72 = 2048;
    v73 = v17;
    _os_log_send_and_compose_impl(v50, &v65, buf, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v65 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = v18;
    v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v66 = 136315906;
    v67 = "operator[]";
    v68 = 1024;
    if (v53)
    {
      v54 = 3;
    }

    else
    {
      v54 = 2;
    }

    v69 = 476;
    v70 = 2048;
    v71 = v3;
    v72 = 2048;
    v73 = v52;
    _os_log_send_and_compose_impl(v54, &v65, buf, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v66, 38, v64);
    _os_crash_msg();
    __break(1u);
    goto LABEL_61;
  }

  v25 = v4[19] + 24 * this;
  v26 = *(v25 + 8);
  v27 = *(v4[16] + 2 * this);
  if (v26 * v27)
  {
    v28 = *(v25 + 16);
    v11 = re::globalAllocators(this)[2];
    *(&v75 + 1) = v11;
    v29 = (*(*v11 + 32))(v11, 32, 0);
    *v29 = &unk_1F5D06538;
    *(v29 + 8) = v28;
    *(v29 + 16) = v26;
    *(v29 + 24) = v27;
    *&v76 = v29;
    *a1 = v26 * v27;
    goto LABEL_4;
  }

LABEL_39:
  *a1 = 0;
  result = re::globalAllocators(this);
  a1[4] = result[2];
  a1[5] = 0;
  return result;
}

void re::MeshNameMap::addMeshAssetModelNameToMap(re::MeshNameMap *this, StringID *a2, int a3)
{
  v14 = a3;
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 64, a2, &v14);
  v5 = strlen(a2->var1);
  v8 = v7;
  var1 = a2->var1;
  v10 = strlen(var1);
  if (v10 != v8 || (v10 = memcmp(v6, var1, v8), v10))
  {
    v12 = 0;
    v13 = &str_67;
    v11 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 64, &v12, &v14);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }
}

uint64_t re::MeshNameMap::estimateFootprint(re::MeshNameMap *this)
{
  v2 = (*(this + 10) << 6) + 424;
  v3 = *(this + 12);
  if (v3)
  {
    v4 = 0;
    v5 = *(this + 4);
    while (1)
    {
      v6 = *v5;
      v5 += 8;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(this + 12);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(this + 4);
    do
    {
      v8 = v7 + 32 * v4;
      v10 = *(v8 + 8);
      v9 = v8 + 8;
      if (v10)
      {
        v11 = strlen(*(v9 + 8)) + 1;
      }

      else
      {
        v11 = 0;
      }

      v2 += v11;
      if (v3 <= v4 + 1)
      {
        v12 = v4 + 1;
      }

      else
      {
        v12 = v3;
      }

      while (v12 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 32 * v4) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v4) = v12;
LABEL_20:
      ;
    }

    while (v4 != v3);
  }

  v13 = v2 + (*(this + 22) << 6);
  v14 = *(this + 24);
  if (v14)
  {
    v15 = 0;
    v16 = *(this + 10);
    while (1)
    {
      v17 = *v16;
      v16 += 8;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(this + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != v14)
  {
    v18 = *(this + 10);
    do
    {
      v19 = v18 + 32 * v15;
      v21 = *(v19 + 8);
      v20 = v19 + 8;
      if (v21)
      {
        v22 = strlen(*(v20 + 8)) + 1;
      }

      else
      {
        v22 = 0;
      }

      v13 += v22;
      if (v14 <= v15 + 1)
      {
        v23 = v15 + 1;
      }

      else
      {
        v23 = *(this + 24);
      }

      while (v23 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(v18 + 32 * v15) & 0x80000000) != 0)
        {
          goto LABEL_40;
        }
      }

      LODWORD(v15) = v23;
LABEL_40:
      ;
    }

    while (v15 != v14);
  }

  v24 = *(this + 18);
  v25 = v13 + 2 * *(this + 15) + 24 * v24;
  if (v24)
  {
    v26 = (*(this + 19) + 8);
    do
    {
      v27 = *v26;
      v26 += 3;
      v25 += 4 * v27;
      --v24;
    }

    while (v24);
  }

  v28 = *(this + 21);
  v29 = v25 + 16 * v28;
  if (v28)
  {
    v30 = 16 * v28;
    v31 = (*(this + 22) + 8);
    do
    {
      if (*(v31 - 1))
      {
        v32 = strlen(*v31) + 1;
      }

      else
      {
        v32 = 0;
      }

      v29 += v32;
      v31 += 2;
      v30 -= 16;
    }

    while (v30);
  }

  v33 = *(this + 24);
  v34 = v29 + 16 * v33;
  if (v33)
  {
    v35 = (*(this + 25) + 8);
    do
    {
      if (*(v35 - 1))
      {
        v36 = strlen(*v35) + 1;
      }

      else
      {
        v36 = 0;
      }

      v34 += v36;
      v35 += 2;
      --v33;
    }

    while (v33);
  }

  v37 = *(this + 39);
  v38 = v34 + 48 * v37 + 4 * (*(this + 30) + *(this + 27) + *(this + 33) + *(this + 36));
  if (v37)
  {
    for (i = 0; i != v37; ++i)
    {
      v40 = *(this + 40) + 48 * i;
      v41 = *(v40 + 32);
      if (v41)
      {
        v42 = 0;
        v43 = *(v40 + 16);
        while (1)
        {
          v44 = *v43;
          v43 += 8;
          if (v44 < 0)
          {
            break;
          }

          if (v41 == ++v42)
          {
            LODWORD(v42) = *(v40 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v42) = 0;
      }

      v38 += 30 * *(v40 + 24) + ((30 * *(v40 + 24) + 15) & 0x3FFFFFFFF0);
      if (v42 != v41)
      {
        v45 = *(v40 + 16);
        do
        {
          v46 = v45 + 32 * v42;
          v48 = *(v46 + 8);
          v47 = v46 + 8;
          if (v48)
          {
            v49 = strlen(*(v47 + 8)) + 1;
          }

          else
          {
            v49 = 0;
          }

          v38 += v49;
          if (v41 <= v42 + 1)
          {
            v50 = v42 + 1;
          }

          else
          {
            v50 = v41;
          }

          while (v50 - 1 != v42)
          {
            LODWORD(v42) = v42 + 1;
            if ((*(v45 + 32 * v42) & 0x80000000) != 0)
            {
              goto LABEL_77;
            }
          }

          LODWORD(v42) = v50;
LABEL_77:
          ;
        }

        while (v42 != v41);
      }
    }
  }

  return v38 + 4 * (*(this + 45) + *(this + 42) + *(this + 48));
}

void *re::MeshNameMap::calculateHash(void *this)
{
  v1 = this;
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = this[21];
  if (v2)
  {
    v3 = 0;
    v4 = this[22];
    v5 = 16 * v2;
    do
    {
      v6 = *v4;
      v4 += 2;
      v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) >> 27));
      v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + (v7 ^ (v7 >> 31));
      v5 -= 16;
    }

    while (v5);
  }

  else
  {
    v3 = 0;
  }

  v8 = this[24];
  if (v8)
  {
    v9 = this[25];
    v10 = 16 * v8;
    do
    {
      v11 = *v9;
      v9 += 2;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v11 >> 31) ^ (v11 >> 1))) >> 27));
      v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + (v12 ^ (v12 >> 31));
      v10 -= 16;
    }

    while (v10);
  }

  v13 = this[36];
  if (v13)
  {
    this = MurmurHash3_x64_128(this[37], v13, 0, v14);
    v3 ^= (v3 << 6) - 0x61C8864680B583E9 + (v3 >> 2) + ((v14[1] - 0x61C8864680B583E9 + (v14[0] << 6) + (v14[0] >> 2)) ^ v14[0]);
  }

  v1[1] = v3;
  return this;
}

void *re::allocInfo_MeshInstanceAndPartIndex(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_453, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_453))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B99C8, "MeshInstanceAndPartIndex");
    __cxa_guard_release(&_MergedGlobals_453);
  }

  return &unk_1EE1B99C8;
}

void re::initInfo_MeshInstanceAndPartIndex(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xCB11BF4FA32C06D4;
  v16[1] = "MeshInstanceAndPartIndex";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B99B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B99B0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "instanceIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B99B8 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "partIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B99C0 = v14;
    __cxa_guard_release(&qword_1EE1B99B0);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B99B8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshInstanceAndPartIndex>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshInstanceAndPartIndex>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshInstanceAndPartIndex>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshInstanceAndPartIndex>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

uint64_t re::internal::defaultConstructV2<re::MeshInstanceAndPartIndex>(uint64_t result)
{
  *result = -1;
  *(result + 4) = -1;
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForInstance(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D064D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForInstance(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D064D0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v5 = *a2 / v4;
  v6 = *(a1 + 16);
  if (v6 > v5)
  {
    return *(*(a1 + 8) + 4 * (*a2 / v4)) | ((*a2 % v4) << 32);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v6, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v9);
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06538;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForModel(re::StringID const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06538;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D06590;
  a2[1] = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_0,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D06590;
  a2[1] = *(a1 + 8);
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 16);
  if (v5 > *a2)
  {
    return *(*(a1 + 8) + 4 * v4) | (*(a1 + 24) << 32);
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, v5, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v7, v8);
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D065E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_1,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D065E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

unint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator()(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[2];
  if (v3 <= *a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *a2, v3);
    v5 = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v8, v10);
    __break(1u);
  }

  else
  {
    v5 = *(a1[1] + 4 * v2);
    v6 = a1[4];
    if (v6 > v5)
    {
      return v5 & 0xFFFF0000FFFFFFFFLL | ((v2 - *(a1[3] + 4 * v5)) << 32);
    }
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v5, v6);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v9, v11);
  __break(1u);
  return result;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06640;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::MeshNameMap::meshInstancePartsForIdentifier(re::MeshIdentifierAsset const&)::$_2,re::MeshInstanceAndPartIndex ()(unsigned long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06640;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::FixedArray<re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::init<>(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (a3)
  {
    v4 = result;
    result = (*(*a2 + 32))(a2, 48 * a3, 8);
    *(v4 + 16) = result;
    if (result)
    {
      v6 = a3 - 1;
      if (a3 != 1)
      {
        do
        {
          *(result + 16) = 0uLL;
          *(result + 32) = 0uLL;
          *result = 0uLL;
          *(result + 36) = 0x7FFFFFFF;
          result += 48;
          --v6;
        }

        while (v6);
      }

      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 36) = 0x7FFFFFFF;
    }

    else
    {
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      result = _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }
  }

  return result;
}

re::StringID *re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, _WORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  result = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v8, a1, a2);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v9, v8);
    result = re::StringID::StringID((v7 + 8), a2);
    *(v7 + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = v13 + v17;
                v20 = 0xBF58476D1CE4E5B9 * ((*(v13 + v17 + 8) >> 31) ^ (*(v13 + v17 + 8) >> 1));
                v21 = (0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) ^ ((0x94D049BB133111EBLL * (v20 ^ (v20 >> 27))) >> 31);
                v22 = re::HashTable<re::StringID,unsigned short,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v21 % *(a1 + 24), v21);
                v23 = *(v19 + 8);
                *(v22 + 8) = *(v22 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 8) = *(v19 + 8) & 0xFFFFFFFFFFFFFFFELL | v23 & 1;
                *(v22 + 16) = *(v19 + 16);
                *(v19 + 8) = 0;
                *(v19 + 16) = &str_67;
                v13 = *&v30[16];
                *(v22 + 24) = *(*&v30[16] + v17 + 24);
                v16 = *&v30[32];
              }

              ++v18;
              v17 += 32;
            }

            while (v18 < v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 32 * v4);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = 32 * v4;
  *(v24 + v27) = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *(v24 + v27) = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v24 + 32 * v4;
}

uint64_t re::anonymous namespace::MeshAssetAccessor::partCount(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 76);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x1E69E9C10];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 56);
}

uint64_t re::anonymous namespace::MeshAssetAccessor::skinnedPartCount(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(this + 76);
  if (v3 <= a2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 797;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 224);
  if (v4)
  {
    return *(v4 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t re::anonymous namespace::MeshAssetAccessor::skeletonIndexForModelPart(re::_anonymous_namespace_::MeshAssetAccessor *this, unint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(this + 76);
  if (v4 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 797;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v4;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(re::DataArray<re::MeshModel>::get(*(this + 79) + 8, *(*(this + 78) + 8 * a2)) + 224);
  if (v6 && *(v6 + 8) > a3)
  {
    return *(*(v6 + 16) + 88 * a3 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

re::ShaderManager *re::ShaderManager::ShaderManager(re::ShaderManager *this)
{
  *this = 0u;
  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 92) = 0x7FFFFFFFLL;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  *(this + 140) = 0x7FFFFFFFLL;
  *(this + 38) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 0;
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 114) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 492) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 260) = 0;
  *(this + 131) = 0;
  *(this + 264) = 256;
  *(this + 530) = 0;
  re::makeDepthPixelFormatPredictions(this + 67);
  re::makeStencilPixelFormatPredictions(this + 73);
  re::makeSampleCountPredictions(this + 79);
  re::makePixel0FormatsPredictions(this + 85);
  re::makePixel1FormatsPredictions(this + 91);
  Pixel2FormatsPredictions = re::makePixel2FormatsPredictions(this + 97);
  *(this + 824) = 0;
  *(this + 52) = 0u;
  *(this + 53) = 0u;
  *(this + 108) = 850045863;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  *(this + 115) = 0;
  v3 = re::globalAllocators(Pixel2FormatsPredictions);
  *(this + 120) = v3[2];
  *(this + 121) = 0;
  *(this + 125) = re::globalAllocators(v3)[2];
  *(this + 126) = 0;
  return this;
}

void re::ShaderManager::~ShaderManager(re::ShaderManager *this)
{
  re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::destroyCallable(this + 976);
  re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::destroyCallable(this + 936);
  std::mutex::~mutex((this + 864));

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 97);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 91);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 85);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 79);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 59);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 432);
  re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 47);

  re::HashTable<unsigned long,re::HashSet<unsigned short,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 38);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 32);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 26);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 20);
  re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 7);
  re::BucketArray<re::CachedMetalFunction,64ul>::deinit(this);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this);
}

BOOL re::ShaderManager::init(re::ShaderManager *this, id *a2, char a3)
{
  re::ObjCObject::operator=(this + 44, a2 + 26);
  v44 = 0x100000001;
  LODWORD(v45) = 0;
  v46 = 0;
  re::dispatch::Queue::make("com.apple.re.specializedPSOCompiler", &v44, &v40);
  v6 = (this + 832);
  if ((this + 832) != &v40)
  {
    v7 = v40;
    v40 = 0;
    v8 = *v6;
    *v6 = v7;
  }

  re::dispatch::Queue::global(&v48, 0x21, 0);
  v44 = 0x100000000;
  LODWORD(v45) = 1;
  v46 = &v48;
  re::dispatch::Queue::make("com.apple.re.fallbackPSOCompiler", &v44, &v40);
  v9 = (this + 848);
  if ((this + 848) != &v40)
  {
    v10 = v40;
    v40 = 0;
    v11 = *v9;
    *v9 = v10;
  }

  v44 = 0x100000000;
  LODWORD(v45) = 0;
  v46 = 0;
  re::dispatch::Queue::make("com.apple.re.fallbackPSOProducer", &v44, &v40);
  v12 = (this + 856);
  if ((this + 856) != &v40)
  {
    v13 = v40;
    v40 = 0;
    v14 = *v12;
    *v12 = v13;
  }

  if ((atomic_load_explicit(&qword_1EE1B9A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9A60))
  {
    re::Defaults::intValue(&v44, "compilationQueueWidth", v36);
    if (v44)
    {
      v37 = HIDWORD(v44);
    }

    else
    {
      v37 = 2;
    }

    dword_1EE1B9A5C = v37;
    __cxa_guard_release(&qword_1EE1B9A60);
  }

  v15 = dispatch_semaphore_create(dword_1EE1B9A5C);

  v16 = *(this + 105);
  *(this + 105) = v15;

  re::Bundle::testData(&v47);
  if (!v47)
  {
    re::Bundle::application(&v44);
    v18 = v44;
    v44 = 0;
    v19 = v47;
    v47 = v18;
  }

  re::Defaults::BOOLValue(&v44, "useSolariumMetallib", v17);
  if (v44)
  {
    v20 = BYTE1(v44);
  }

  else
  {
    v20 = a3;
  }

  re::Bundle::findFile(&v44, &v47, "default.metallib");
  if (v45)
  {
    v21 = v46;
  }

  else
  {
    v21 = (&v45 + 1);
  }

  re::mtl::Device::newLibraryWithURL(&v40, this + 44, v21);
  v22 = (this + 360);
  if ((this + 360) != &v40)
  {
    v23 = v40;
    v40 = 0;
    v24 = *v22;
    *v22 = v23;
  }

  if (*v22)
  {
    if (v45)
    {
      v25 = v46;
    }

    else
    {
      v25 = &v45 + 1;
    }

    LibraryHash = re::ShaderManager::getLibraryHash(this, v25);
    re::ShaderManager::installLibrary(this, LibraryHash, this + 45);
    if (v45)
    {
      v27 = v46;
    }

    else
    {
      v27 = &v45 + 1;
    }

    v40 = re::ShaderManager::getLibraryHash(this, v27);
    v28 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, &v40);
    v29 = v40;
    if (!v28)
    {
      v29 = 0;
    }

    *(this + 46) = v29;
  }

  if (v20)
  {
    re::Bundle::findFile(&v40, &v47, "mxi.metallib");
    if (v41)
    {
      v30 = v43;
    }

    else
    {
      v30 = v42;
    }

    re::mtl::Device::newLibraryWithURL(&v39, this + 44, v30);
    v31 = v39;
    if (v39)
    {
      if (v41)
      {
        v32 = v43;
      }

      else
      {
        v32 = v42;
      }

      v33 = re::ShaderManager::getLibraryHash(this, v32);
      re::ShaderManager::installLibrary(this, v33, &v39);
      v31 = v39;
    }

    if (v40 && (v41 & 1) != 0)
    {
      (*(v40->isa + 5))();
    }
  }

  if (*(a2 + 205) == 1)
  {
    re::ShaderManager::loadBinaryArchives(this, &v47, v20 & 1);
  }

  atomic_store(0, this + 232);
  v34 = *(this + 45);
  if (v34 && (v20 & 1) == 0)
  {
    v38 = v34;
    re::APIFunctionCache::init(this + 256, &v38);
  }

  if (v44 && (v45 & 1) != 0)
  {
    (*(*v44 + 40))();
  }

  return v34 != 0;
}

uint64_t re::ShaderManager::loadBinaryArchives(re::ShaderManager *this, const re::Bundle *a2, int a3)
{
  re::Defaults::BOOLValue(&v33, "generateBinaryArchiveOnDevice", a2);
  if (v33)
  {
    v7 = BYTE1(v33);
  }

  else
  {
    v7 = 0;
  }

  *(this + 520) = v7;
  re::Defaults::BOOLValue(&v33, "disableBinaryArchives", v6);
  if (v33)
  {
    v9 = BYTE1(v33);
  }

  else
  {
    v9 = 0;
  }

  *(this + 521) = v9;
  re::Defaults::BOOLValue(&v33, "harvestAllPipelines", v8);
  if (v33)
  {
    v11 = BYTE1(v33);
  }

  else
  {
    v11 = 0;
  }

  *(this + 528) = v11;
  if (*(this + 520) == 1)
  {
    re::ShaderManager::makeAndAddBinaryArchive(this, 0, "testOnDeviceArchive");
  }

  re::Defaults::stringValue(&v33, "binaryArchiveInputPath", v10);
  if (v33 == 1)
  {
    if (v35)
    {
      v13 = *&v36[7];
    }

    else
    {
      v13 = v36;
    }

    v12 = re::ShaderManager::makeAndAddBinaryArchive(this, v13, "testInputArchive");
  }

  if (a3)
  {
    v26 = "mxi-binaryarchive.metallib";
    v27 = 26;
    re::DynamicString::operator=(&v29, &v26);
  }

  if (v30)
  {
    v14 = v32;
  }

  else
  {
    v14 = v31;
  }

  re::Bundle::findFile(&v26, a2, v14);
  v16 = v27 >> 1;
  if ((v27 & 1) == 0)
  {
    v16 = v27 >> 1;
  }

  if (v16)
  {
    if (v27)
    {
      v17 = v28;
    }

    else
    {
      v17 = &v27 + 1;
    }

    if (v30)
    {
      v18 = v32;
    }

    else
    {
      v18 = v31;
    }

    re::ShaderManager::makeAndAddBinaryArchive(this, v17, v18);
  }

  if (a3)
  {
    *(this + 529) = 0;
  }

  re::Defaults::BOOLValue(&v24, "useMPSBinaryArchive", v15);
  if (v24 == 1 && (BYTE1(v24) & 1) != 0)
  {
    v24 = "mps-binaryarchive.metallib";
    v25 = 26;
    re::DynamicString::operator=(&v29, &v24);
    if (v30)
    {
      v19 = v32;
    }

    else
    {
      v19 = v31;
    }

    re::Bundle::findFile(&v24, a2, v19);
    re::DynamicString::operator=(&v26, &v24);
    if (v24 && (v25 & 1) != 0)
    {
      (*(*v24 + 40))();
    }

    v20 = v27 >> 1;
    if ((v27 & 1) == 0)
    {
      v20 = v27 >> 1;
    }

    if (v20)
    {
      v21 = (v27 & 1) != 0 ? v28 : &v27 + 1;
      v22 = (v30 & 1) != 0 ? v32 : v31;
      if (re::ShaderManager::makeAndAddBinaryArchive(this, v21, v22))
      {
        re::mtl::Device::setMPSBinaryArchives(this + 44, this + 432);
      }
    }
  }

  *(this + 530) = 1;
  if (v26 && (v27 & 1) != 0)
  {
    (*(*v26 + 40))();
  }

  result = v29;
  if (v29 && (v30 & 1) != 0)
  {
    result = (*(*v29 + 40))();
  }

  if (v33 == 1)
  {
    result = v34;
    if (v34)
    {
      if (v35)
      {
        return (*(*v34 + 40))();
      }
    }
  }

  return result;
}

void re::ShaderManager::prepareForDeinit(re::ShaderManager *this)
{
  std::mutex::lock((this + 864));
  atomic_store(1u, this + 824);
  std::mutex::unlock((this + 864));
  v2 = (this + 928);
  v3 = atomic_load(v2);
  if (v3 >= 1)
  {
    do
    {
      do
      {
        __ulock_wait();
        v4 = atomic_load(v2);
      }

      while (v4 == v3);
      v3 = atomic_load(v2);
    }

    while (v3 > 0);
  }
}

re *re::ShaderManager::deinit(re::ShaderManager *this, const char *a2)
{
  re::ShaderManager::serializeBinaryArchive(this, a2);
  v3 = *(this + 45);
  *(this + 45) = 0;

  re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(this + 376);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 85);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 91);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 67);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 73);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 79);

  return re::APIFunctionCache::deinit((this + 256));
}

void re::ShaderManager::serializeBinaryArchive(re::ShaderManager *this, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 520) != 1)
  {
    return;
  }

  re::Defaults::stringValue(&v13, "binaryArchiveOutputPath", a2);
  if (v13 == 1)
  {
    if (v15)
    {
      v4 = *&v16[7];
    }

    else
    {
      v4 = v16;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v4 encoding:4];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath_];
    if (!*(this + 56))
    {
      v17 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      *buf = 0u;
      v10 = MEMORY[0x1E69E9C10];
      v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      v21 = 789;
      v22 = 2048;
      v23 = 0;
      v24 = 2048;
      v25 = 0;
      _os_log_send_and_compose_impl(v12, &v17, buf, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v13, v14);
      _os_crash_msg();
      __break(1u);
    }

    v7 = [**(this + 58) serializeToURL:v6 error:0];
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = *re::graphicsLogObjects(v7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "Binary archive serialization successful!";
    goto LABEL_12;
  }

  v8 = *re::graphicsLogObjects(v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v9 = "Generated binary archive on device, but no output URL was provided.";
LABEL_12:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_13:
  if (v13 == 1 && v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }
}

void re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_74, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 32);
        }

        v4 += 40;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

void re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(re::ShaderManager *this)
{
  if ((*(this + 530) & 1) == 0)
  {
    re::Bundle::testData(&v5);
    if (!v5)
    {
      re::Bundle::application(&v4);
      v2 = v4;
      v3 = v5;
      v4 = 0;
      v5 = v2;
    }

    re::ShaderManager::loadBinaryArchives(this, &v5, 0);
  }
}

BOOL re::ShaderManager::makeAndAddBinaryArchive(re::ShaderManager *this, const char *a2, const char *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 131);
  if (a2 && (v6 = strlen(a2)) != 0)
  {
    MurmurHash3_x64_128(a2, v6, 0, buf);
    v7 = (*&buf[8] + (*buf << 6) + (*buf >> 2) - 0x61C8864680B583E9) ^ *buf;
  }

  else
  {
    v7 = 0;
  }

  v39 = v7;
  v8 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 472, &v39);
  if (v8)
  {
LABEL_6:
    v9 = 1;
    goto LABEL_7;
  }

  if ((*(this + 529) & 1) == 0)
  {
    v22 = *re::graphicsLogObjects(v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Skipping MTLBinaryArchive load from %s", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v11 = mach_absolute_time();
  v12 = [objc_msgSend(MEMORY[0x1E6973FE8] alloc)];
  v38 = v12;
  [v12 setOptions_];
  if (a2)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithCString:a2 encoding:4];
    [v12 setUrl_];
  }

  re::mtl::Device::makeBinaryArchive(this + 44, &v38, &v37);
  v9 = v37 != 0;
  if (v37)
  {
    if (a3)
    {
      v14 = [v37 setLabel_];
    }

    v15 = *(this + 55);
    v16 = *(this + 56);
    if (v16 >= v15)
    {
      v17 = v16 + 1;
      if (v15 < v17)
      {
        if (*(this + 54))
        {
          v18 = 2 * v15;
          v19 = v15 == 0;
          v20 = 8;
          if (!v19)
          {
            v20 = v18;
          }

          if (v20 <= v17)
          {
            v21 = v17;
          }

          else
          {
            v21 = v20;
          }

          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 54, v21);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(this + 54, v17);
          ++*(this + 114);
        }
      }

      v16 = *(this + 56);
    }

    v23 = *(this + 58);
    *(v23 + 8 * v16) = v37;
    ++*(this + 56);
    ++*(this + 114);
    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27));
    v25 = v24 ^ (v24 >> 31);
    v26 = *(this + 124);
    if (v26)
    {
      v27 = v25 % v26;
      v28 = *(*(this + 60) + 4 * (v25 % v26));
      if (v28 != 0x7FFFFFFF)
      {
        v29 = *(this + 61);
        if (*(v29 + 24 * v28 + 16) == v39)
        {
          goto LABEL_35;
        }

        while (1)
        {
          LODWORD(v28) = *(v29 + 24 * v28 + 8) & 0x7FFFFFFF;
          if (v28 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v29 + 24 * v28 + 16) == v39)
          {
            goto LABEL_35;
          }
        }
      }
    }

    else
    {
      LODWORD(v27) = 0;
    }

    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(this + 472, v27, v25, &v39, &v39);
    ++*(this + 128);
LABEL_35:
    v30 = mach_absolute_time();
    v31 = v30;
    v32 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
    if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
    {
      v30 = mach_timebase_info(buf);
      if (v30)
      {
        v35 = NAN;
LABEL_40:
        v36 = *re::graphicsLogObjects(v30);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = (v35 / 1000000.0);
          _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "MTLBinaryArchive loaded from %s in %dms", buf, 0x12u);
        }

        if (v37)
        {
        }

        goto LABEL_44;
      }

      LODWORD(v33) = *buf;
      LODWORD(v34) = *&buf[4];
      v32 = v33 / v34;
      re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v32;
    }

    v35 = v32 * (v31 - v11);
    goto LABEL_40;
  }

LABEL_44:
  if (v38)
  {
  }

LABEL_7:
  os_unfair_lock_unlock(this + 131);
  return v9;
}

void re::ShaderManager::makeLibraryWithURL(void **this, const char *a2, re::mtl *a3, const char *a4)
{
  re::mtl::Device::newLibraryWithURL(&v7, this + 44, a3);
  LibraryHash = re::ShaderManager::getLibraryHash(this, a2);
  re::ShaderManager::installLibrary(this, LibraryHash, &v7);
}

void re::ShaderManager::makeLibraryWithData(void **this, const char *a2, re::mtl *a3, const char *a4)
{
  re::mtl::Device::newLibraryWithData(this + 44, a3, &v7);
  LibraryHash = re::ShaderManager::getLibraryHash(this, a2);
  re::ShaderManager::installLibrary(this, LibraryHash, &v7);
}

void re::ShaderManager::defaultBinaryArchive(uint64_t *__return_ptr a1@<X8>, re::ShaderManager *this@<X0>)
{
  if (*(this + 521) == 1)
  {
    *a1 = 0;
  }

  else
  {
    re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(this);
    os_unfair_lock_lock(this + 131);
    if (*(this + 56))
    {
      v4 = **(this + 58);
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4;

    os_unfair_lock_unlock(this + 131);
  }
}

unint64_t re::ShaderManager::getLibraryHash(re::ShaderManager *this, const char *__s)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (!__s)
  {
    return *(this + 46);
  }

  v3 = *(this + 53);
  if (v3 && ((**v3)(&v9), v9 == 1))
  {
    if (v11)
    {
      v4 = *&v12[7];
    }

    else
    {
      v4 = v12;
    }

    v5 = strlen(v4);
    if (v5)
    {
      MurmurHash3_x64_128(v4, v5, 0, v13);
      v6 = (v13[1] + (v13[0] << 6) + (v13[0] >> 2) - 0x61C8864680B583E9) ^ v13[0];
      if ((v9 & 1) == 0)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v10 && (v11 & 1) != 0)
    {
      (*(*v10 + 40))();
    }
  }

  else
  {
    v7 = strlen(__s);
    if (v7)
    {
      MurmurHash3_x64_128(__s, v7, 0, &v9);
      return (v10 + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t re::ShaderManager::releaseLibrary(uint64_t this, uint64_t a2)
{
  if (*(this + 368) != a2)
  {
    v7[3] = v2;
    v7[4] = v3;
    v5 = this;
    v7[0] = a2;
    this = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 376, v7);
    if (this)
    {
      if (!*this || (v6 = *this - 1, (*this = v6) == 0))
      {
        v7[0] = a2;
        return re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(v5 + 376, v7);
      }
    }
  }

  return this;
}

BOOL re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long,re::ShaderManager::LibraryEntry,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::removeInternal(a1, v5);
}

void re::ShaderManager::makeFunction(re::ShaderManager *a1@<X0>, uint64_t a2@<X1>, re::mtl *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v12 = a2;
  v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, &v12);
  if (v9)
  {
    if (a4)
    {
      re::ShaderManager::makeFunctionDescriptor(&v11, a1);
      v10 = v11;
      [v11 setName_];
      [v10 setConstantValues_];
      re::ShaderManager::makeFunctionWithDescriptor(a1, *(a1 + 46), &v11, a5);
      if (v10)
      {
      }
    }

    else
    {
      re::mtl::Library::makeFunction(a5, (v9 + 8), a3);
    }
  }

  else
  {
    *a5 = 0;
  }
}

void re::ShaderManager::makeFunctionDescriptor(uint64_t *__return_ptr a1@<X8>, re::ShaderManager *this@<X0>)
{
  v4 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
  *a1 = v4;
  v5 = v4;
  v6 = v5;
  re::ShaderManager::addBinaryArchivesToFunction(this, &v6, 0);
  if (v5)
  {
  }
}

void re::ShaderManager::makeFunctionWithDescriptor(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v9 = a2;
    v6 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, &v9);
    if (v6)
    {
      re::mtl::Library::makeFunctionWithDescriptor((v6 + 8), *a3, a4);
    }

    else
    {
      *a4 = 0;
    }
  }

  else
  {
    v7 = *a3;
    v8 = (a1 + 360);

    re::mtl::Library::makeFunctionWithDescriptor(v8, v7, a4);
  }
}

void re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(uint64_t a1, int a2, uint64_t a3, char a4, StringID *a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v19, a5);
  v21 = *(a6 + 24);
  v22 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v20, a6);
  std::mutex::lock((a1 + 864));
  v11 = mach_absolute_time();
  v12 = atomic_load((a1 + 824));
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v14 = v28;
      v15 = (a1 + 856);
      v16 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 1174405120;
      v26[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke;
      v26[3] = &__block_descriptor_tmp_48;
      v26[4] = a1;
      v26[5] = a3;
      v17 = v27;
      v27[3] = v21;
      v27[4] = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v27, v20);
      v27[5] = v13;
      v28[17] = a4;
    }

    else
    {
      v14 = v25;
      v15 = (a1 + 832);
      v16 = v23;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1174405120;
      v23[2] = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_35scheduleAsyncFuncOnCompilationQueueEbyNS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS2_S3_S6_T__block_invoke_49;
      v23[3] = &__block_descriptor_tmp_52_0;
      v23[4] = a1;
      v23[5] = a3;
      v17 = v24;
      v24[3] = v21;
      v24[4] = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, v20);
      v24[5] = v13;
      v25[16] = a4;
    }

    re::StringID::StringID(v14, &v19);
    dispatch_async(*v15, v16);
    re::StringID::destroyString(v14);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v17);
  }

  std::mutex::unlock((a1 + 864));
  v18 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v20);
  if (*&v19.var0)
  {
    if (*&v19.var0)
    {
    }
  }
}

void re::ShaderManager::scheduleGroupNotifyOnCompilationQueue(uint64_t a1, int a2, void *a3, id *a4, char a5, StringID *a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v22, a6);
  v25 = *(a7 + 24);
  v26 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, a7);
  v21 = *a4;
  std::mutex::lock((a1 + 864));
  v13 = mach_absolute_time();
  v14 = atomic_load((a1 + 824));
  if ((v14 & 1) == 0)
  {
    v15 = v13;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke;
      v30 = &__block_descriptor_tmp_56;
      v31 = a1;
      v32 = v21;
      v33 = a3;
      v35 = v25;
      v36 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v34, v24);
      v37 = v15;
      v40 = a5;
      re::StringID::StringID(&v38, &v22);
      v16 = *(a1 + 856);
      v23 = v16;
      re::dispatch::Group::notify(&v21, &v23, &v27);

      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v34);
    }

    else
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_37scheduleGroupNotifyOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_57;
      v30 = &__block_descriptor_tmp_60;
      v31 = a1;
      v32 = a3;
      v34[2] = v25;
      v35 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(&v33, v24);
      v36 = v15;
      LOBYTE(v39) = a5;
      re::StringID::StringID(&v37, &v22);
      v18 = *(a1 + 832);
      v23 = v18;
      re::dispatch::Group::notify(&v21, &v23, &v27);

      if (v37)
      {
        if (v37)
        {
        }
      }

      v37 = 0;
      v38 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v33);
    }
  }

  std::mutex::unlock((a1 + 864));

  v20 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v24);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }
}

void re::ShaderManager::scheduleAsyncGroupFuncOnCompilationQueue(uint64_t a1, int a2, void *a3, id *a4, char a5, StringID *a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  re::StringID::StringID(&v22, a6);
  v25 = *(a7 + 24);
  v26 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v24, a7);
  v21 = *a4;
  std::mutex::lock((a1 + 864));
  v13 = mach_absolute_time();
  v14 = atomic_load((a1 + 824));
  if ((v14 & 1) == 0)
  {
    v15 = v13;
    atomic_fetch_add((a1 + 928), 1u);
    if (a2)
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke;
      v30 = &__block_descriptor_tmp_64_0;
      v31 = a1;
      v32 = v21;
      v33 = a3;
      v35 = v25;
      v36 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v34, v24);
      v37 = v15;
      v40 = a5;
      re::StringID::StringID(&v38, &v22);
      v16 = *(a1 + 856);
      v23 = v16;
      re::dispatch::Group::async(&v21, &v23, &v27);

      if (v38)
      {
        if (v38)
        {
        }
      }

      v38 = 0;
      v39 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(v34);
    }

    else
    {
      v27 = MEMORY[0x1E69E9820];
      v28 = 1174405120;
      v29 = ___ZNK2re13ShaderManager29resolveShaderCompilationQueueIZNKS0_40scheduleAsyncGroupFuncOnCompilationQueueEbyNS_8dispatch5GroupENS_15CompilationTypeENS_8StringIDENS_8FunctionIFvvEEEE3__0EEvbyS4_S5_S8_T__block_invoke_65;
      v30 = &__block_descriptor_tmp_68_0;
      v31 = a1;
      v32 = a3;
      v34[2] = v25;
      v35 = 0;
      re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(&v33, v24);
      v36 = v15;
      LOBYTE(v39) = a5;
      re::StringID::StringID(&v37, &v22);
      v18 = *(a1 + 832);
      v23 = v18;
      re::dispatch::Group::async(&v21, &v23, &v27);

      if (v37)
      {
        if (v37)
        {
        }
      }

      v37 = 0;
      v38 = &str_67;
      re::FunctionBase<24ul,void ()(void)>::destroyCallable(&v33);
    }
  }

  std::mutex::unlock((a1 + 864));

  v20 = re::FunctionBase<24ul,void ()(void)>::destroyCallable(v24);
  if (*&v22.var0)
  {
    if (*&v22.var0)
    {
    }
  }
}

uint64_t re::ShaderManager::executeWithPrioritizedShaderCompilation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 968);
  if (v2)
  {
    return (*(*v2 + 16))(v2, a2);
  }

  else
  {
    return (*(**(a2 + 32) + 16))();
  }
}

uint64_t re::ShaderManager::executeWithShaderCompilationBlamedToPeer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2)
  {
    v6 = a2;
    return (*(*a1 + 16))(a1, &v6, a3);
  }

  else
  {
    v5 = *(**(a3 + 32) + 16);

    return v5();
  }
}

uint64_t re::ShaderManager::tryRequestFunctionReflection(uint64_t a1, uint64_t a2, const char *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v36 = *MEMORY[0x1E69E9840];
  v23[0] = a2;
  v14 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 376, v23);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = (a1 + 360);
  }

  v33 = *(a7 + 24);
  v34 = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v32, a7);
  v35 = a1;
  re::ShaderManager::makeFunctionDescriptor(a1, a3, a4, v15, a2, &v22);
  *&v21.var0 = 0;
  v21.var1 = &str_67;
  v23[3] = v33;
  v23[4] = 0;
  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::operator=<24ul>(v23, v32);
  v23[5] = v35;
  v17 = v22;
  v24 = v22;
  v25 = a3;
  v26 = a5;
  v27 = a6;
  v28 = *v15;
  v18 = re::globalAllocators(v28)[2];
  v30 = v18;
  if (v18)
  {
    v18 = (*(*v18 + 32))(v18, 96, 0);
  }

  v31 = re::internal::Callable<re::ShaderManager::tryRequestFunctionReflection(unsigned long long,char const*,NS::SharedPtr<MTL::FunctionConstantValues> const&,BOOL,unsigned long long,re::Function<void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>)::$_1,void ()(void)>::Callable(v18, v23);
  re::ShaderManager::scheduleAsyncFuncOnCompilationQueue(a1, a5, a6, 0, &v21, v29);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v29);

  if (v24)
  {

    v24 = 0;
  }

  v19 = re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v23);
  if (*&v21.var0)
  {
    if (*&v21.var0)
    {
    }
  }

  *&v21.var0 = 0;
  v21.var1 = &str_67;
  if (v17)
  {
  }

  re::FunctionBase<24ul,void ()(re::Pair<NS::SharedPtr<MTL::Function>,re::DynamicArray<NS::SharedPtr<MTL::Argument>>,true> const&)>::destroyCallable(v32);
  return 1;
}

void re::ShaderManager::makeFunctionDescriptor(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v12 = [objc_msgSend(MEMORY[0x1E6974070] alloc)];
  *a6 = v12;
  [v12 setName_];
  if (*a3)
  {
    [v12 setConstantValues_];
  }

  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v13 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [v12 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a5 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        v17 = 0;
        memset(v26, 0, sizeof(v26));
        v14 = MEMORY[0x1E69E9C10];
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v15 = 3;
        }

        else
        {
          v15 = 2;
        }

        v21 = 789;
        v22 = 2048;
        v23 = 0;
        v24 = 2048;
        v25 = 0;
        _os_log_send_and_compose_impl(v15, &v17, v26, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addFunctionWithDescriptor:v12 library:*a4 error:0];
    }

    if (v13)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToRenderPipeline(uint64_t a1, id *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        v10 = 0;
        memset(v19, 0, sizeof(v19));
        v7 = MEMORY[0x1E69E9C10];
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v14 = 789;
        v15 = 2048;
        v16 = 0;
        v17 = 2048;
        v18 = 0;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addRenderPipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToTilePipeline(uint64_t a1, id *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        v10 = 0;
        memset(v19, 0, sizeof(v19));
        v7 = MEMORY[0x1E69E9C10];
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v14 = 789;
        v15 = 2048;
        v16 = 0;
        v17 = 2048;
        v18 = 0;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addTileRenderPipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}

void re::ShaderManager::addBinaryArchivesToComputePipeline(uint64_t a1, id *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  re::ShaderManager::ensureEngineBinaryArchivesAreLoaded(a1);
  os_unfair_lock_lock((a1 + 524));
  if (*(a1 + 448) && (*(a1 + 521) & 1) == 0)
  {
    v6 = [objc_msgSend(MEMORY[0x1E695DEC8] alloc)];
    [*a2 setBinaryArchives_];
    if (*(a1 + 520) == 1 && (*(a1 + 368) == a3 || *(a1 + 528) == 1))
    {
      if (!*(a1 + 448))
      {
        v10 = 0;
        memset(v19, 0, sizeof(v19));
        v7 = MEMORY[0x1E69E9C10];
        v11 = 136315906;
        v12 = "operator[]";
        v13 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v14 = 789;
        v15 = 2048;
        v16 = 0;
        v17 = 2048;
        v18 = 0;
        _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
        _os_crash_msg();
        __break(1u);
      }

      [**(a1 + 464) addComputePipelineFunctionsWithDescriptor:*a2 error:0];
    }

    if (v6)
    {
    }
  }

  os_unfair_lock_unlock((a1 + 524));
}