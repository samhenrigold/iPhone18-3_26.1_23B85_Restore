uint64_t re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RealityEmitterBase *this, re::RenderFrame *a2, re::RenderGraphDataStore *a3)
{
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = 0xC1ECEDF69A9CD01;
    v4 = re::RenderFrameData::stream((a2 + 264), &v12);
    result = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v4, &v11, &v12);
    if (v13 == 0x7FFFFFFF)
    {
      break;
    }

    v6 = *(v4 + 16) + 96 * v13;
    if (!result)
    {
      break;
    }

    if (*(result + 40))
    {
      v8 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](result, 0);
      return re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData&>(a3, re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RenderFrame &,re::RenderGraphDataStore &)::kPipelineCompilationDataScopeHash, v8);
    }

    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 754);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
LABEL_8:
    v9 = a2;
    a2 = v9;
    if (v10)
    {
      re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(re::RenderFrame &,re::RenderGraphDataStore &)::kPipelineCompilationDataScopeHash = re::Hash<re::StringSlice>::operator()("PipelineCompilationData", 0x17uLL);
      a2 = v9;
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::PipelineCompilationData,re::PipelineCompilationData&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re23PipelineCompilationDataE";
  if (("N2re23PipelineCompilationDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re23PipelineCompilationDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v12 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v9 = &unk_1F5CEFB58;
  *(v9 + 8) = *(a3 + 8);
  v11 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v12, &v11);
}

void re::RealityEmitterBase::handleRenderFrameData(re::RealityEmitterBase *this, re::RenderFrame *a2)
{
  v2 = a2;
  v265 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v250, 5083, *(a2 + 1), *(a2 + 48) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  re::RenderFrameContextBuilder::build(&v249, v2, v245);
  if (atomic_load_explicit(&qword_1EE1BFE30, memory_order_acquire))
  {
    goto LABEL_2;
  }

  while (1)
  {
    if (__cxa_guard_acquire(&qword_1EE1BFE30))
    {
      qword_1EE1BFE28 = re::Hash<re::StringSlice>::operator()("RenderGraphDataPipeData", 0x17uLL);
      __cxa_guard_release(&qword_1EE1BFE30);
    }

LABEL_2:
    if ((atomic_load_explicit(&qword_1EE1BFE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE40))
    {
      qword_1EE1BFE38 = re::Hash<re::StringSlice>::operator()("RenderFrame", 0xBuLL);
      __cxa_guard_release(&qword_1EE1BFE40);
    }

    v4 = *(v2 + 49);
    if ((atomic_load_explicit(&qword_1EE1BFE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE50))
    {
      v211 = qword_1EE1BFE38;
      v212 = re::Hash<re::StringSlice>::operator()("RenderFrameContext", 0x12uLL);
      qword_1EE1BFE48 = (v211 - 0x61C8864680B583E9 + (v212 << 6) + (v212 >> 2)) ^ v212;
      __cxa_guard_release(&qword_1EE1BFE50);
    }

    v5 = "N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE";
    if (("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x8000000000000000) != 0)
    {
      v6 = ("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x7FFFFFFFFFFFFFFFLL);
      v7 = 5381;
      do
      {
        v5 = v7;
        v8 = *v6++;
        v7 = (33 * v7) ^ v8;
      }

      while (v8);
    }

    *v258 = (qword_1EE1BFE48 - 0x61C8864680B583E9 + (v5 << 6) + (v5 >> 2)) ^ v5;
    v9 = (*(**(v2 + 5) + 32))(*(v2 + 5), 152, 8);
    *&v253.var0 = v4;
    memset(v257, 0, 24);
    v257[24] = 64;
    *&v257[32] = 0;
    v257[40] = 1;
    *v9 = &unk_1F5D12978;
    *(v9 + 8) = v4;
    *(v9 + 16) = v4;
    *(v9 + 24) = 0;
    v253.var1 = 0;
    *&v254[0] = 0;
    *(v9 + 32) = 0;
    *(v9 + 96) = v4;
    *&v256[24] = 0;
    *(v254 + 8) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0;
    *(v9 + 80) = 0u;
    *&v256[8] = 0u;
    v255 = 0u;
    *(v9 + 64) = 0u;
    *(&v254[1] + 1) = 0;
    *v256 = 0;
    v10 = *v257;
    v11 = *&v257[16];
    *(v9 + 129) = *&v257[25];
    *(v9 + 120) = v11;
    *(v9 + 104) = v10;
    re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(&v254[1]);
    re::FixedArray<re::RenderSceneContext>::deinit(&v253.var1);
    *&v253.var0 = v9;
    v13 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v258, &v253);
    v14 = v247;
    v253.var1 = v247;
    *&v254[0] = 0;
    *&v253.var0 = v4;
    if (v247)
    {
      if (v247 >= 0x9A90E7D95BC60ALL)
      {
        goto LABEL_311;
      }

      v15 = (*(*v4 + 32))(v4, 424 * v247, 8);
      *&v254[0] = v15;
      if (!v15)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        v15 = _os_crash("assertion failure: (m_data) Out of memory.");
        __break(1u);
        goto LABEL_11;
      }

      while (1)
      {
        v14 = (v14 - 1);
        if (!v14)
        {
          break;
        }

LABEL_11:
        v15 = re::RenderSceneContext::RenderSceneContext(v15, v4) + 424;
      }

      re::RenderSceneContext::RenderSceneContext(v15, v4);
      v4 = *&v253.var0;
    }

    v17 = *(v13 + 16);
    if (!v17 || v17 == v4)
    {
      break;
    }

LABEL_312:
    v223 = "operator=";
    v224 = 296;
    re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator");
    _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
    __break(1u);
  }

  *(v13 + 16) = v4;
  v18 = *(v13 + 24);
  v19 = *(v13 + 32);
  var1 = v253.var1;
  v21 = *&v254[0];
  *&v253.var0 = v17;
  v253.var1 = v18;
  *(v13 + 24) = var1;
  *(v13 + 32) = v21;
  *&v254[0] = v19;
  re::FixedArray<re::RenderSceneContext>::deinit(&v253);
  if ((atomic_load_explicit(&qword_1EE1BFE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE60))
  {
    qword_1EE1BFE58 = (qword_1EE1BFE38 - 0x61C8864680B583E9 + (qword_1EE1BFE28 << 6) + (qword_1EE1BFE28 >> 2)) ^ qword_1EE1BFE28;
    __cxa_guard_release(&qword_1EE1BFE60);
  }

  v22 = re::RenderGraphDataStore::add<re::RenderGraphDataPipeData>(v2 + 32, qword_1EE1BFE58);
  v23 = *(v2 + 40);
  *(v22 + 8) = v23;
  *(v13 + 136) = v23;
  v233 = v13;
  if (v247)
  {
    v24 = 0;
    v25 = 0;
    v26 = 400;
    while (1)
    {
      v27 = *(v13 + 24);
      if (v27 <= v25)
      {
        break;
      }

      v28 = &v248[v24];
      v29 = *(v13 + 32);
      *v258 = v248[v24 + 1];
      v30 = re::RenderFrameData::stream((v2 + 264), v258);
      v31 = **v28;
      v32 = qword_1EE1BFE28;
      v33 = strlen(v31);
      if (v33)
      {
        MurmurHash3_x64_128(v31, v33, 0, &v253);
        v34 = &v253.var1[64 * *&v253.var0 - 0x61C8864680B583E9 + (*&v253.var0 >> 2)] ^ *&v253.var0;
      }

      else
      {
        v34 = 0;
      }

      v35 = re::RenderGraphDataStore::add<re::RenderGraphDataPipeData>(v2 + 32, ((v32 << 6) - 0x61C8864680B583E9 + (v32 >> 2) + v34) ^ v32);
      v36 = *(v30 + 48);
      *(v35 + 8) = v36;
      *(v29 + v26) = v36;
      ++v25;
      v24 += 196;
      v26 += 424;
      v13 = v233;
      if (v25 >= v247)
      {
        goto LABEL_24;
      }
    }

    v252 = 0;
    v255 = 0u;
    *v256 = 0u;
    memset(v254, 0, sizeof(v254));
    v253 = 0;
    v203 = MEMORY[0x1E69E9C10];
    v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v258 = 136315906;
    *&v258[4] = "operator[]";
    v259 = 1024;
    if (v204)
    {
      v205 = 3;
    }

    else
    {
      v205 = 2;
    }

    v260 = 468;
    v261 = 2048;
    v262 = v25;
    v263 = 2048;
    v264 = v27;
    _os_log_send_and_compose_impl(v205, &v252, &v253, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v223, v224);
    _os_crash_msg();
    __break(1u);
LABEL_301:
    v252 = 0;
    v255 = 0u;
    *v256 = 0u;
    memset(v254, 0, sizeof(v254));
    v253 = 0;
    v206 = MEMORY[0x1E69E9C10];
    v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v258 = 136315906;
    *&v258[4] = "operator[]";
    v259 = 1024;
    if (v207)
    {
      v208 = 3;
    }

    else
    {
      v208 = 2;
    }

    v260 = 468;
    v261 = 2048;
    v262 = v27;
    v263 = 2048;
    v264 = v25;
    _os_log_send_and_compose_impl(v208, &v252, &v253, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v223, v224);
    _os_crash_msg();
    __break(1u);
LABEL_305:
    v252 = 0;
    v255 = 0u;
    *v256 = 0u;
    memset(v254, 0, sizeof(v254));
    v253 = 0;
    v14 = MEMORY[0x1E69E9C10];
    v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v258 = 136315906;
    *&v258[4] = "operator[]";
    v259 = 1024;
    if (v209)
    {
      v210 = 3;
    }

    else
    {
      v210 = 2;
    }

    v260 = 468;
    v261 = 2048;
    v262 = v27;
    v263 = 2048;
    v264 = v25;
    _os_log_send_and_compose_impl(v210, &v252, &v253, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v258, 38, v223, v224);
    _os_crash_msg();
    __break(1u);
LABEL_309:
    re::internal::assertLog(4, v157, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || allocator() == other.allocator()) ");
    __break(1u);
LABEL_310:
    re::internal::assertLog(4, v157, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || allocator() == other.allocator()", "operator=", 526);
    _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || allocator() == other.allocator()) ");
    __break(1u);
LABEL_311:
    re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 424, v14);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v221, v222);
    __break(1u);
    goto LABEL_312;
  }

LABEL_24:
  v37 = *(v2 + 1);
  if ((atomic_load_explicit(&qword_1EE1BFE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE80))
  {
    qword_1EE1BFE78 = re::Hash<re::StringSlice>::operator()("RenderFrame", 0xBuLL);
    __cxa_guard_release(&qword_1EE1BFE80);
  }

  v225 = *(v13 + 8);
  v38 = v37[14];
  if (v38 && re::DrawingManager::shouldRenderProfilerNode(v38))
  {
    if ((atomic_load_explicit(&qword_1EE1BFE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE90))
    {
      v219 = qword_1EE1BFE78;
      v220 = re::Hash<re::StringSlice>::operator()("ProfilerOverlay", 0xFuLL);
      qword_1EE1BFE88 = (v219 - 0x61C8864680B583E9 + (v220 << 6) + (v220 >> 2)) ^ v220;
      __cxa_guard_release(&qword_1EE1BFE90);
    }

    v39 = "N2re29ProfilerOverlayEnablementDataE";
    if (("N2re29ProfilerOverlayEnablementDataE" & 0x8000000000000000) != 0)
    {
      v40 = ("N2re29ProfilerOverlayEnablementDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v41 = 5381;
      do
      {
        v39 = v41;
        v42 = *v40++;
        v41 = (33 * v41) ^ v42;
      }

      while (v42);
    }

    *&v253.var0 = (qword_1EE1BFE88 - 0x61C8864680B583E9 + (v39 << 6) + (v39 >> 2)) ^ v39;
    v43 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
    *v43 = &unk_1F5D129F8;
    *(v43 + 8) = 1;
    *v258 = v43;
    re::HashBrown<unsigned long,re::RenderGraphBuilderData *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<re::RenderGraphBuilderData *>,false>::addNew(v2 + 18, &v253, v258);
  }

  if (v245[0])
  {
    v44 = v245[1];
  }

  else
  {
    v44 = 1;
  }

  *(v13 + 144) = v44;
  if ((atomic_load_explicit(&qword_1EE1BFEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEA0))
  {
    v213 = qword_1EE1BFE78;
    v214 = re::Hash<re::StringSlice>::operator()("SceneArray", 0xAuLL);
    qword_1EE1BFE98 = (v213 - 0x61C8864680B583E9 + (v214 << 6) + (v214 >> 2)) ^ v214;
    __cxa_guard_release(&qword_1EE1BFEA0);
  }

  v45 = "N2re14SceneArrayDataE";
  if (("N2re14SceneArrayDataE" & 0x8000000000000000) != 0)
  {
    v46 = ("N2re14SceneArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v47 = 5381;
    do
    {
      v45 = v47;
      v48 = *v46++;
      v47 = (33 * v47) ^ v48;
    }

    while (v48);
  }

  *&v253.var0 = (qword_1EE1BFE98 - 0x61C8864680B583E9 + (v45 << 6) + (v45 >> 2)) ^ v45;
  v49 = (*(**(v2 + 5) + 32))(*(v2 + 5), 48, 8);
  *v49 = &unk_1F5D12A40;
  *(v49 + 40) = 0;
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 8) = v225;
  re::DynamicArray<float *>::setCapacity((v49 + 8), 0);
  ++*(v49 + 32);
  *v258 = v49;
  v50 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v253, v258);
  if (v247)
  {
    v51 = *v50;
    v52 = v248;
    v53 = 1568 * v247;
    do
    {
      re::DynamicArray<re::TransitionCondition *>::add((v51 + 8), *v52);
      v52 += 196;
      v53 -= 1568;
    }

    while (v53);
  }

  v54 = v37[20];
  if ((atomic_load_explicit(&qword_1EE1BFEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEB0))
  {
    v215 = qword_1EE1BFE78;
    v216 = re::Hash<re::StringSlice>::operator()("ToneMapping", 0xBuLL);
    qword_1EE1BFEA8 = (v215 - 0x61C8864680B583E9 + (v216 << 6) + (v216 >> 2)) ^ v216;
    __cxa_guard_release(&qword_1EE1BFEB0);
  }

  v55 = re::RenderGraphDataStore::add<re::TonemapParametersData>(v2 + 32, qword_1EE1BFEA8);
  re::TonemapUserParameters::computeRenderParameters((v54 + 136), &v253);
  v56 = *v256;
  *(v55 + 88) = *&v256[16];
  v57 = *&v257[16];
  *(v55 + 104) = *v257;
  *(v55 + 120) = v57;
  v58 = v253;
  *(v55 + 24) = v254[0];
  v59 = v255;
  *(v55 + 40) = v254[1];
  *(v55 + 56) = v59;
  *(v55 + 72) = v56;
  *(v55 + 136) = *&v257[32];
  *(v55 + 8) = v58;
  updated = re::ColorManager::updateTonemapLUTs(v54, (v55 + 8));
  if (updated)
  {
    re::FixedArray<int>::init<>((v55 + 144), v225, 0x400uLL);
    re::FixedArray<float>::copy(*(v55 + 152), *(v55 + 160), (v54 + 224), 0x400uLL);
    re::FixedArray<int>::init<>((v55 + 168), v225, 0x400uLL);
    updated = re::FixedArray<float>::copy(*(v55 + 176), *(v55 + 184), (v54 + 4320), 0x400uLL);
  }

  if ((atomic_load_explicit(&qword_1EE1BFEC0, memory_order_acquire) & 1) == 0)
  {
    updated = __cxa_guard_acquire(&qword_1EE1BFEC0);
    if (updated)
    {
      v217 = qword_1EE1BFE78;
      v218 = re::Hash<re::StringSlice>::operator()("CameraTMData", 0xCuLL);
      qword_1EE1BFEB8 = (v217 - 0x61C8864680B583E9 + (v218 << 6) + (v218 >> 2)) ^ v218;
      __cxa_guard_release(&qword_1EE1BFEC0);
    }
  }

  v61 = "N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x8000000000000000) != 0)
  {
    v62 = ("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v63 = 5381;
    do
    {
      v61 = v63;
      v64 = *v62++;
      v63 = (33 * v63) ^ v64;
    }

    while (v64);
  }

  *&v253.var0 = (qword_1EE1BFEB8 - 0x61C8864680B583E9 + (v61 << 6) + (v61 >> 2)) ^ v61;
  v65 = re::globalAllocators(updated);
  v66 = (*(*v65[2] + 32))(v65[2], 1048, 8);
  bzero(v66 + 2, 0x408uLL);
  *v66 = &unk_1F5D12A80;
  __asm { FMOV            V0.2S, #1.0 }

  v66[1] = _D0;
  *v258 = v66;
  v72 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, &v253, v258);
  v73 = v37[43];
  if (*(v73 + 608))
  {
    *(v72 + 16) = 1;
  }

  v74 = v37[15];
  if (v74)
  {
    *(v72 + 8) = vcvts_n_f32_u64(v74[234], 8uLL);
    v75 = *(v73 + 704);
    if (v75)
    {
      (*(*v75 + 16))(v75);
    }

    v76 = v74[245];
    *&v253.var0 = v74[246];
    v253.var1 = v76;
    if (re::ColorManager::updateISPTonemapLUTAccelerated(v54))
    {
      re::FixedArray<int>::init<>((v55 + 192), v225, 0x400uLL);
      re::FixedArray<float>::copy(*(v55 + 200), *(v55 + 208), (v54 + 8416), 0x400uLL);
    }
  }

  *(v13 + 104) = (*(**(v13 + 136) + 24))(*(v13 + 136));
  *(v13 + 112) = (*(**(v13 + 136) + 216))(*(v13 + 136));
  v77 = v37[12];
  v258[0] = 0;
  if (v77)
  {
    *&v253.var0 = 0xE32A9F87631BCE4ALL;
    v253.var1 = "overdraw:enable";
    v78 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v77, &v253, v258);
    if (*&v253.var0)
    {
      if (*&v253.var0)
      {
      }
    }

    v79 = v258[0];
  }

  else
  {
    v79 = 0;
  }

  if (v79 != *(this + 448))
  {
    if (v79)
    {
      v80 = *(this + 28);
      v81 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 456));
      re::RenderGraphManager::addProviderInternal(&v253, v80, "Camera", (v81 + 8), 0, 0);
      v82 = re::StringID::operator=((this + 504), &v253);
      *(this + 65) = *&v254[0];
      if (*&v253.var0)
      {
        if (*&v253.var0)
        {
        }
      }
    }

    else
    {
      v83 = *(this + 28);
      re::StringID::StringID(&v253, (this + 504));
      *&v254[0] = *(this + 65);
      v84 = re::RenderGraphManager::removeProvider(v83, &v253);
      if (*&v253.var0)
      {
        if (*&v253.var0)
        {
        }
      }

      *&v253.var0 = 0;
      v253.var1 = &str_67;
      re::ProviderHandle::invalidate((this + 504));
    }

    *(this + 448) = v258[0];
  }

  v227 = v247;
  if (v247)
  {
    v27 = 0;
    v226 = this;
    do
    {
      v25 = *(v13 + 24);
      if (v25 <= v27)
      {
        goto LABEL_301;
      }

      v85 = *(v13 + 32) + 424 * v27;
      *(v85 + 392) = v27;
      v25 = v247;
      if (v247 <= v27)
      {
        goto LABEL_305;
      }

      v86 = &v248[196 * v27];
      v87 = **v86;
      if (v87)
      {
        v88 = *v87;
        if (*v87)
        {
          v89 = v87[1];
          if (v89)
          {
            v90 = (v87 + 2);
            do
            {
              v88 = 31 * v88 + v89;
              v91 = *v90++;
              v89 = v91;
            }

            while (v91);
          }

          v92 = v88 & 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v92 = 0;
        }
      }

      else
      {
        v92 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v251 = v92;
      v253.var0 = v27;
      if (re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v13 + 40), v92) == -1)
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd((v13 + 40), &v251, &v253);
        v87 = **v86;
      }

      v93 = strlen(v87);
      v94 = 0x9E3779B97F4A7C17;
      if (v93)
      {
        MurmurHash3_x64_128(v87, v93, 0, &v253);
        v94 = (&v253.var1[64 * *&v253.var0 - 0x61C8864680B583E9 + (*&v253.var0 >> 2)] ^ *&v253.var0) - 0x61C8864680B583E9;
      }

      if ((atomic_load_explicit(&qword_1EE1BFED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFED0))
      {
        qword_1EE1BFEC8 = re::Hash<re::StringSlice>::operator()("SceneIndex", 0xAuLL);
        __cxa_guard_release(&qword_1EE1BFED0);
      }

      v95 = "N2re14SceneIndexDataE";
      if (("N2re14SceneIndexDataE" & 0x8000000000000000) != 0)
      {
        v96 = 5381;
        v97 = ("N2re14SceneIndexDataE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v95 = v96;
          v98 = *v97++;
          v96 = (33 * v96) ^ v98;
        }

        while (v98);
      }

      *&v253.var0 = (((v94 + (qword_1EE1BFEC8 << 6) + (qword_1EE1BFEC8 >> 2)) ^ qword_1EE1BFEC8) - 0x61C8864680B583E9 + (v95 << 6) + (v95 >> 2)) ^ v95;
      v99 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
      *v99 = &unk_1F5D06A60;
      v99[1] = 0xFFFFFFFFLL;
      *v258 = v99;
      *(*re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v253, v258) + 8) = *(v85 + 392);
      if (*(v85 + 396))
      {
        if (v86[190])
        {
          goto LABEL_97;
        }

        *(v85 + 396) = 0;
      }

      else if (v86[190])
      {
        *(v85 + 396) = 1;
LABEL_97:
        *(v85 + 397) = *(v86 + 1521);
      }

      if ((atomic_load_explicit(&qword_1EE1BFEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFEE0))
      {
        qword_1EE1BFED8 = re::Hash<re::StringSlice>::operator()("MeshScenes", 0xAuLL);
        __cxa_guard_release(&qword_1EE1BFEE0);
      }

      v100 = "N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x8000000000000000) != 0)
      {
        v101 = 5381;
        v102 = ("N2re27RenderGraphDataStoreWrapperINS_15MeshSceneArraysEEE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v100 = v101;
          v103 = *v102++;
          v101 = (33 * v101) ^ v103;
        }

        while (v103);
      }

      *v258 = (((v94 + (qword_1EE1BFED8 << 6) + (qword_1EE1BFED8 >> 2)) ^ qword_1EE1BFED8) - 0x61C8864680B583E9 + (v100 << 6) + (v100 >> 2)) ^ v100;
      v104 = (*(**(v2 + 5) + 32))(*(v2 + 5), 64, 8);
      *v104 = &unk_1F5D12AC0;
      *(v104 + 16) = 0;
      *(v104 + 8) = 0;
      *(v104 + 40) = 0;
      *(v104 + 48) = 0;
      *(v104 + 32) = 0;
      *(v104 + 56) = 0;
      *(&v254[0] + 1) = 0;
      *&v254[1] = 0;
      *&v253.var0 = 0;
      v253.var1 = 0;
      *(v104 + 24) = 3;
      LODWORD(v254[0]) = 3;
      re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v104 + 8, (v86 + 5));
      re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 5), &v253);
      if (*&v253.var0 && (v254[0] & 1) == 0)
      {
        (*(**&v253.var0 + 40))();
      }

      v105 = *(v104 + 48);
      *(v104 + 48) = v86[10];
      v86[10] = v105;
      ++*(v104 + 56);
      ++*(v86 + 22);
      *&v253.var0 = v104;
      v106 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v258, &v253);
      v231 = *v106;
      if ((atomic_load_explicit(&qword_1EE1BFEF0, memory_order_acquire) & 1) == 0)
      {
        v106 = __cxa_guard_acquire(&qword_1EE1BFEF0);
        if (v106)
        {
          qword_1EE1BFEE8 = re::Hash<re::StringSlice>::operator()("VFXScenes", 9uLL);
          __cxa_guard_release(&qword_1EE1BFEF0);
        }
      }

      v107 = v86[12];
      if (v107)
      {
        v108 = "N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE";
        if (("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x8000000000000000) != 0)
        {
          v109 = 5381;
          v110 = ("N2re27RenderGraphDataStoreWrapperINS_11BucketArrayINS_12DynamicArrayINS_8VFXSceneEEELm4EEEEE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v108 = v109;
            v111 = *v110++;
            v109 = (33 * v109) ^ v111;
          }

          while (v111);
        }

        *v258 = (((v94 + (qword_1EE1BFEE8 << 6) + (qword_1EE1BFEE8 >> 2)) ^ qword_1EE1BFEE8) - 0x61C8864680B583E9 + (v108 << 6) + (v108 >> 2)) ^ v108;
        v112 = re::globalAllocators(v106);
        v113 = (*(*v112[2] + 32))(v112[2], 64, 8);
        *v113 = &unk_1F5D12B00;
        *(v113 + 16) = 0;
        *(v113 + 8) = 0;
        *(v113 + 40) = 0;
        *(v113 + 48) = 0;
        *(v113 + 32) = 0;
        *(v113 + 56) = 0;
        *(&v254[0] + 1) = 0;
        *&v254[1] = 0;
        *&v253.var0 = 0;
        v253.var1 = 0;
        *(v113 + 24) = 3;
        LODWORD(v254[0]) = 3;
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v113 + 8, v107);
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v107, &v253);
        if (*&v253.var0 && (v254[0] & 1) == 0)
        {
          (*(**&v253.var0 + 40))();
        }

        v114 = *(v113 + 48);
        *(v113 + 48) = *(v107 + 40);
        *(v107 + 40) = v114;
        ++*(v113 + 56);
        ++*(v107 + 48);
        *&v253.var0 = v113;
        v230 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, v258, &v253) + 8;
      }

      else
      {
        v230 = 0;
      }

      v115 = (*(**(v85 + 400) + 944))(*(v85 + 400));
      v229 = v115;
      if ((atomic_load_explicit(&qword_1EE1BFF00, memory_order_acquire) & 1) == 0)
      {
        v115 = __cxa_guard_acquire(&qword_1EE1BFF00);
        if (v115)
        {
          qword_1EE1BFEF8 = re::Hash<re::StringSlice>::operator()("LightContext", 0xCuLL);
          __cxa_guard_release(&qword_1EE1BFF00);
        }
      }

      v232 = v87;
      v116 = "N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE";
      if (("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x8000000000000000) != 0)
      {
        v117 = 5381;
        v118 = ("N2re27RenderGraphDataStoreWrapperINS_13LightContextsEEE" & 0x7FFFFFFFFFFFFFFFLL);
        do
        {
          v116 = v117;
          v119 = *v118++;
          v117 = (33 * v117) ^ v119;
        }

        while (v119);
      }

      *&v253.var0 = (((v94 + (qword_1EE1BFEF8 << 6) + (qword_1EE1BFEF8 >> 2)) ^ qword_1EE1BFEF8) - 0x61C8864680B583E9 + (v116 << 6) + (v116 >> 2)) ^ v116;
      v120 = re::globalAllocators(v115);
      v121 = (*(*v120[2] + 32))(v120[2], 304, 8);
      *v121 = &unk_1F5D12B40;
      *(v121 + 16) = 0;
      *(v121 + 8) = 0;
      v122 = 1;
      *(v121 + 24) = 1;
      *(v121 + 40) = 0;
      *(v121 + 48) = 0;
      *(v121 + 32) = 0;
      *(v121 + 56) = 0;
      re::BucketArray<RESubscriptionHandle,8ul>::swap(v121 + 8, (v86 + 27));
      *(v121 + 96) = 0;
      *(v121 + 80) = 0u;
      *(v121 + 64) = 0u;
      *(v121 + 100) = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v121 + 64), v86 + 34);
      *(v121 + 112) = 0;
      *(v121 + 120) = 0;
      *(v121 + 128) = 0;
      *(v121 + 112) = v86[40];
      v86[40] = 0;
      *(v121 + 120) = v86[41];
      v86[41] = 0;
      v123 = *(v121 + 128);
      *(v121 + 128) = v86[42];
      v86[42] = v123;
      *(v121 + 136) = 0;
      *(v121 + 144) = 0;
      *(v121 + 152) = 0;
      *(v121 + 136) = v86[43];
      v86[43] = 0;
      *(v121 + 144) = v86[44];
      v86[44] = 0;
      v124 = *(v121 + 152);
      *(v121 + 152) = v86[45];
      v86[45] = v124;
      *(v121 + 160) = 0;
      *(v121 + 168) = 0;
      *(v121 + 176) = 0;
      *(v121 + 160) = v86[46];
      v86[46] = 0;
      *(v121 + 168) = v86[47];
      v86[47] = 0;
      v125 = *(v121 + 176);
      *(v121 + 176) = v86[48];
      v86[48] = v125;
      *(v121 + 184) = 0;
      *(v121 + 192) = 0;
      *(v121 + 200) = 0;
      *(v121 + 184) = v86[49];
      v86[49] = 0;
      *(v121 + 192) = v86[50];
      v86[50] = 0;
      v126 = *(v121 + 200);
      *(v121 + 200) = v86[51];
      v86[51] = v126;
      *(v121 + 208) = 0;
      *(v121 + 216) = 0;
      *(v121 + 224) = 0;
      *(v121 + 208) = v86[52];
      v86[52] = 0;
      *(v121 + 216) = v86[53];
      v86[53] = 0;
      v127 = *(v121 + 224);
      *(v121 + 224) = v86[54];
      v86[54] = v127;
      *(v121 + 232) = 0;
      *(v121 + 240) = 0;
      *(v121 + 248) = 0;
      *(v121 + 232) = v86[55];
      v86[55] = 0;
      *(v121 + 240) = v86[56];
      v86[56] = 0;
      v128 = *(v121 + 248);
      *(v121 + 248) = v86[57];
      v86[57] = v128;
      v129 = *(v86 + 29);
      *(v121 + 272) = *(v86 + 480);
      *(v121 + 256) = v129;
      v130 = *(v86 + 61);
      *(v121 + 296) = *(v86 + 252);
      *(v121 + 280) = v130;
      *v258 = v121;
      v131 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 48, &v253, v258);
      v132 = *v131;
      v133 = *v131 + 8;
      if (*(v86 + 1505))
      {
        v134 = 0;
      }

      else
      {
        v134 = !re::LightContexts::isEmpty((*v131 + 8));
        v122 = *(v86 + 1505);
      }

      *(v85 + 408) = v134;
      *(v85 + 410) = v122 & *(v132 + 297) & 1;
      *(v85 + 409) = *(v132 + 296);
      *(v85 + 411) = *(v86 + 1504);
      v135 = (*(**(v85 + 400) + 1072))();
      if (v135)
      {
        v136 = *(v135 + 128) != 0;
      }

      else
      {
        v136 = 0;
      }

      *(v85 + 413) = v136;
      *(v85 + 418) = *(v86 + 624);
      *(v85 + 414) = *(v86 + 625);
      v228 = (*(**(v85 + 400) + 448))();
      v137 = (*(**(v85 + 400) + 1232))();
      if (v137)
      {
        v138 = *(v137 + 16) != 0;
      }

      else
      {
        v138 = 0;
      }

      *(v85 + 412) = v138;
      *(v85 + 336) = *(v86 + 97);
      v139 = v86[189];
      if (v139)
      {
        *&v253.var0 = &unk_1F5D12888;
        v253.var1 = v139;
        if ((atomic_load_explicit(&qword_1EE1BFF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF10))
        {
          qword_1EE1BFF08 = re::Hash<re::StringSlice>::operator()("IBLContextOverride", 0x12uLL);
          __cxa_guard_release(&qword_1EE1BFF10);
        }

        v140 = "N2re23IBLContextOverrideScopeE";
        if (("N2re23IBLContextOverrideScopeE" & 0x8000000000000000) != 0)
        {
          v141 = 5381;
          v142 = ("N2re23IBLContextOverrideScopeE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v140 = v141;
            v143 = *v142++;
            v141 = (33 * v141) ^ v143;
          }

          while (v143);
        }

        *v258 = (((v94 + (qword_1EE1BFF08 << 6) + (qword_1EE1BFF08 >> 2)) ^ qword_1EE1BFF08) - 0x61C8864680B583E9 + (v140 << 6) + (v140 >> 2)) ^ v140;
        v144 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
        *v144 = &unk_1F5D12888;
        v144[1] = v253.var1;
        v252 = v144;
        v137 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, v258, &v252);
      }

      v145 = v2;
      v146 = v86[80];
      v147 = v86[79];
      if (v146)
      {
        v148 = v146[5] != 0;
        if (!v147)
        {
          goto LABEL_138;
        }
      }

      else
      {
        v148 = 0;
        if (!v147)
        {
LABEL_138:
          v149 = 0;
          goto LABEL_139;
        }
      }

      v149 = v147[5] != 0;
LABEL_139:
      if (v148 || v149)
      {
        if ((atomic_load_explicit(&qword_1EE1BFF20, memory_order_acquire) & 1) == 0)
        {
          v137 = __cxa_guard_acquire(&qword_1EE1BFF20);
          if (v137)
          {
            qword_1EE1BFF18 = re::Hash<re::StringSlice>::operator()("TextInfo", 8uLL);
            __cxa_guard_release(&qword_1EE1BFF20);
          }
        }

        v150 = "N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE";
        if (("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x8000000000000000) != 0)
        {
          v151 = 5381;
          v152 = ("N2re27RenderGraphDataStoreWrapperINS_8TextInfoEEE" & 0x7FFFFFFFFFFFFFFFLL);
          do
          {
            v150 = v151;
            v153 = *v152++;
            v151 = (33 * v151) ^ v153;
          }

          while (v153);
        }

        *&v253.var0 = (((v94 + (qword_1EE1BFF18 << 6) + (qword_1EE1BFF18 >> 2)) ^ qword_1EE1BFF18) - 0x61C8864680B583E9 + (v150 << 6) + (v150 >> 2)) ^ v150;
        v154 = re::globalAllocators(v137);
        v155 = (*(*v154[2] + 32))(v154[2], 24, 8);
        v155[1] = 0;
        v155[2] = 0;
        *v155 = &unk_1F5D12B80;
        *v258 = v155;
        v156 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v145 + 48, &v253, v258);
        if (v148)
        {
          *(v156 + 16) = v146;
        }

        v14 = (v156 + 8);
        if (v149)
        {
          *v14 = v147;
        }
      }

      else
      {
        v14 = 0;
      }

      v2 = v145;
      this = (v86 + 64);
      *(v85 + 48) = v232;
      *(v85 + 8) = v133;
      *(v85 + 16) = (*(**(v85 + 400) + 376))(*(v85 + 400));
      *(v85 + 24) = v229;
      *(v85 + 32) = v231 + 8;
      *(v85 + 40) = v230;
      *(v85 + 64) = v14;
      *(v85 + 80) = (*(**(v85 + 400) + 792))();
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v85 + 88, v86 + 17);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v85 + 128, v86 + 22);
      *(v85 + 168) = v86[2];
      *(v85 + 176) = *(v86 + 13);
      *(v85 + 192) = *(v86 + 15);
      v158 = (v85 + 208);
      if ((v85 + 208) != v86 + 64)
      {
        v159 = *v158;
        if (*v158 && *this && v159 != *this)
        {
          goto LABEL_309;
        }

        *&v253.var0 = 0;
        v253.var1 = 0;
        LODWORD(v254[0]) = 1;
        *(&v254[0] + 1) = 0;
        *&v254[1] = 0;
        v160 = *(v85 + 224);
        if (v160)
        {
          if (*(v85 + 216))
          {
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(&v253, v85 + 208);
          }

          else
          {
            *&v253.var0 = v159;
            *(v85 + 224) = v160 + 2;
            LODWORD(v254[0]) = 3;
          }
        }

        else
        {
          LODWORD(v254[0]) = 3;
          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(&v253, (v85 + 208));
        }

        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v85 + 208, (v86 + 64));
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 64), &v253);
        if (*&v253.var0 && (v254[0] & 1) == 0)
        {
          (*(**&v253.var0 + 40))();
        }

        v161 = *(v85 + 248);
        *(v85 + 248) = v86[69];
        v86[69] = v161;
        ++*(v85 + 256);
        ++*(v86 + 140);
      }

      v162 = (v85 + 264);
      v163 = v86 + 71;
      this = v226;
      if ((v85 + 264) != v86 + 71)
      {
        v164 = *v162;
        if (*v162 && *v163 && v164 != *v163)
        {
          goto LABEL_310;
        }

        *&v253.var0 = 0;
        v253.var1 = 0;
        LODWORD(v254[0]) = 1;
        *(&v254[0] + 1) = 0;
        *&v254[1] = 0;
        v165 = *(v85 + 280);
        if (v165)
        {
          if (*(v85 + 272))
          {
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(&v253, v85 + 264);
          }

          else
          {
            *&v253.var0 = v164;
            *(v85 + 280) = v165 + 2;
            LODWORD(v254[0]) = 3;
          }
        }

        else
        {
          LODWORD(v254[0]) = 3;
          re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(&v253, (v85 + 264));
        }

        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(v85 + 264, (v86 + 71));
        re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=((v86 + 71), &v253);
        if (*&v253.var0 && (v254[0] & 1) == 0)
        {
          (*(**&v253.var0 + 40))();
        }

        v166 = *(v85 + 304);
        *(v85 + 304) = v86[76];
        v86[76] = v166;
        ++*(v85 + 312);
        ++*(v86 + 154);
      }

      v167 = *(v86 + 312);
      *(v85 + 322) = *(v86 + 626);
      *(v85 + 320) = v167;
      *(v85 + 328) = (*(**(v85 + 400) + 832))(*(v85 + 400));
      *(v85 + 352) = v86[3];
      *(v85 + 360) = (*(**(v85 + 400) + 1008))();
      *(v85 + 368) = v86[4];
      *(v85 + 376) = (*(**(v85 + 400) + 1040))();
      *(v85 + 384) = v228;
      v168 = *(v85 + 16);
      if (v168)
      {
        re::IBLContext::updateRenderSceneContextFlags(v168, (v85 + 416), (v85 + 417));
      }

      v13 = v233;
      if ((*(v85 + 416) & 1) != 0 || (*(v85 + 417) & 1) != 0 || (*(v85 + 408) & 1) != 0 || (*(v85 + 409) & 1) != 0 || (*(v85 + 410) & 1) != 0 || (*(v85 + 411) & 1) != 0 || (*(v85 + 412) & 1) != 0 || (*(v85 + 418) & 1) != 0 || (*(v85 + 414) & 1) != 0 || *(v85 + 415) == 1)
      {
        if ((atomic_load_explicit(&qword_1EE1BFF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF60))
        {
          qword_1EE1BFF58 = re::Hash<re::StringSlice>::operator()("DynamicFunctionConstants", 0x18uLL);
          __cxa_guard_release(&qword_1EE1BFF60);
        }

        v169 = qword_1EE1BFF58;
        v170 = strlen(*(v85 + 48));
        if (v170)
        {
          MurmurHash3_x64_128(*(v85 + 48), v170, 0, &v253);
          v171 = &v253.var1[64 * *&v253.var0 - 0x61C8864680B583E9 + (*&v253.var0 >> 2)] ^ *&v253.var0;
        }

        else
        {
          v171 = 0;
        }

        v172 = (v169 << 6) - 0x61C8864680B583E9 + (v169 >> 2) + v171;
        v173 = re::RenderGraphDataStore::tryGet<re::DynamicFunctionConstantsData>(v2 + 32, v172 ^ v169);
        if (!v173)
        {
          *&v253.var0 = v225;
          *v258 = 7;
          v173 = re::RenderGraphDataStore::add<re::DynamicFunctionConstantsData,re::PerFrameAllocator *,int>(v2 + 32, v172 ^ v169, &v253, v258);
        }

        if (*(v85 + 408) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF70))
          {
            qword_1EE1BFF68 = re::Hash<re::StringSlice>::operator()("EnableDynamicLighting", 0x15uLL);
            __cxa_guard_release(&qword_1EE1BFF70);
          }

          v253.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF68, &v253);
        }

        if (*(v85 + 409) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF80))
          {
            qword_1EE1BFF78 = re::Hash<re::StringSlice>::operator()("EnableShadowedDynamicLight", 0x1AuLL);
            __cxa_guard_release(&qword_1EE1BFF80);
          }

          v253.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF78, &v253);
        }

        if (*(v85 + 411) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF90))
          {
            qword_1EE1BFF88 = re::Hash<re::StringSlice>::operator()("EnableAREnvProbe", 0x10uLL);
            __cxa_guard_release(&qword_1EE1BFF90);
          }

          v253.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF88, &v253);
          v174 = re::RenderGraphDataStore::tryGet<re::ProbeContext>(v2 + 32, "ProbeContext", "RenderFrame");
          if ((atomic_load_explicit(&qword_1EE1BFFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFA0))
          {
            qword_1EE1BFF98 = re::Hash<re::StringSlice>::operator()("LocalProbeCount", 0xFuLL);
            __cxa_guard_release(&qword_1EE1BFFA0);
          }

          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFF98, (v174 + 24));
          if ((atomic_load_explicit(&qword_1EE1BFFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFB0))
          {
            qword_1EE1BFFA8 = re::Hash<re::StringSlice>::operator()("GlobalProbeCount", 0x10uLL);
            __cxa_guard_release(&qword_1EE1BFFB0);
          }

          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFA8, (v174 + 28));
          if ((atomic_load_explicit(&qword_1EE1BFFC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFC0))
          {
            qword_1EE1BFFB8 = re::Hash<re::StringSlice>::operator()("EnableCrossBlending", 0x13uLL);
            __cxa_guard_release(&qword_1EE1BFFC0);
          }

          v253.var0 = *(v174 + 32);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFB8, &v253);
          v13 = v233;
        }

        if (*(v85 + 412) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFD0))
          {
            qword_1EE1BFFC8 = re::Hash<re::StringSlice>::operator()("EnableVirtualEnvironmentProbes", 0x1EuLL);
            __cxa_guard_release(&qword_1EE1BFFD0);
          }

          v253.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFC8, &v253);
        }

        if (*(v85 + 415) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFE0))
          {
            qword_1EE1BFFD8 = re::Hash<re::StringSlice>::operator()("PortalClippingMode", 0x12uLL);
            __cxa_guard_release(&qword_1EE1BFFE0);
          }

          v175 = *(v85 + 414);
          if (v175 != 1)
          {
            v175 = 4;
          }

          v253.var0 = v175;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFD8, &v253);
        }

        if (*(v85 + 418) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1BFFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFFF0))
          {
            qword_1EE1BFFE8 = re::Hash<re::StringSlice>::operator()("PortalEnableProbeLightingBlend", 0x1EuLL);
            __cxa_guard_release(&qword_1EE1BFFF0);
          }

          v253.var0 = 1;
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFE8, &v253);
        }

        if (*(v85 + 416) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C0000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0000))
          {
            qword_1EE1BFFF8 = re::Hash<re::StringSlice>::operator()("EnableIBLRotation", 0x11uLL);
            __cxa_guard_release(&qword_1EE1C0000);
          }

          v253.var0 = *(v85 + 416);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1BFFF8, &v253);
        }

        if (*(v85 + 417) == 1)
        {
          if ((atomic_load_explicit(&qword_1EE1C0010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0010))
          {
            qword_1EE1C0008 = re::Hash<re::StringSlice>::operator()("EnableIBLBlending", 0x11uLL);
            __cxa_guard_release(&qword_1EE1C0010);
          }

          v253.var0 = *(v85 + 417);
          re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace((v173 + 8), &qword_1EE1C0008, &v253);
        }
      }

      (*(*v226 + 72))(v226, v86, v13 + 8, v85, v2 + 32);
      ++v27;
    }

    while (v27 != v227);
  }

  if (*(v13 + 144))
  {
    (*(*this + 80))(this, v13 + 8, v2, v2 + 32);
  }

  else if (*(*(v2 + 1) + 327) == 1)
  {
    v176 = *(this + 28);
    v177 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 552));
    re::RenderGraphManager::addProviderInternal(&v253, v176, "Camera", (v177 + 8), 0, 0);
    v178 = re::StringID::operator=((this + 600), &v253);
    *(this + 77) = *&v254[0];
    if (*&v253.var0)
    {
      if (*&v253.var0)
      {
      }
    }

    re::RealityEmitterBase::emitFrameContextRealityRenderer(this, (v13 + 8), v2, (v2 + 32));
    v179 = *(this + 28);
    re::StringID::StringID(v244, (this + 600));
    v244[2] = *(this + 77);
    v180 = re::RenderGraphManager::removeProvider(v179, v244);
    if (v244[0])
    {
      if (v244[0])
      {
      }
    }

    v244[0] = 0;
    v244[1] = &str_67;
    re::ProviderHandle::invalidate((this + 600));
  }

  else
  {
    v181 = *(this + 28);
    v182 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 552));
    re::RenderGraphManager::addProviderInternal(&v253, v181, "Camera", (v182 + 8), 0, 0);
    v183 = re::StringID::operator=((this + 600), &v253);
    *(this + 77) = *&v254[0];
    if (*&v253.var0)
    {
      if (*&v253.var0)
      {
      }
    }

    v184 = *(this + 28);
    v185 = re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>((this + 576));
    re::RenderGraphManager::addProviderInternal(&v253, v184, "PostProcess", (v185 + 8), 0, 0);
    v186 = re::StringID::operator=((this + 624), &v253);
    *(this + 80) = *&v254[0];
    if (*&v253.var0)
    {
      if (*&v253.var0)
      {
      }
    }

    v187 = re::globalAllocators(v186);
    v188 = (*(*v187[2] + 32))(v187[2], 40, 8);
    re::DepthStencilSplitterEmptyProvider::DepthStencilSplitterEmptyProvider(v188, v243);
    if (*&v243[0])
    {
      if (BYTE8(v243[0]))
      {
        (*(**&v243[0] + 40))();
      }

      memset(v243, 0, sizeof(v243));
    }

    re::RenderGraphManager::addProviderInternal(&v253, *(this + 28), "Camera", v188, 10, 1);
    re::RealityEmitterBase::emitFrameContextRealityRenderer(this, (v13 + 8), v2, (v2 + 32));
    v189 = *(this + 28);
    re::StringID::StringID(&v240, &v253);
    v242 = *&v254[0];
    v190 = re::RenderGraphManager::removeProvider(v189, &v240);
    if (v240)
    {
      if (v240)
      {
      }
    }

    v240 = 0;
    v241 = &str_67;
    v191 = *(this + 28);
    re::StringID::StringID(&v237, (this + 600));
    v239 = *(this + 77);
    v192 = re::RenderGraphManager::removeProvider(v191, &v237);
    if (v237)
    {
      if (v237)
      {
      }
    }

    v237 = 0;
    v238 = &str_67;
    re::ProviderHandle::invalidate((this + 600));
    v193 = *(this + 28);
    re::StringID::StringID(&v234, this + 39);
    v236 = *(this + 80);
    v194 = re::RenderGraphManager::removeProvider(v193, &v234);
    if (v234)
    {
      if (v234)
      {
      }
    }

    v234 = 0;
    v235 = &str_67;
    re::ProviderHandle::invalidate((this + 624));
    *v258 = &unk_1F5D12848;
    v258[8] = 1;
    if ((atomic_load_explicit(&qword_1EE1BFE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFE70))
    {
      qword_1EE1BFE68 = re::Hash<re::StringSlice>::operator()("InplaceTonemappingData", 0x16uLL);
      __cxa_guard_release(&qword_1EE1BFE70);
    }

    v195 = "N2re22InplaceTonemappingDataE";
    if (("N2re22InplaceTonemappingDataE" & 0x8000000000000000) != 0)
    {
      v196 = ("N2re22InplaceTonemappingDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v197 = 5381;
      do
      {
        v195 = v197;
        v198 = *v196++;
        v197 = (33 * v197) ^ v198;
      }

      while (v198);
    }

    v252 = (qword_1EE1BFE68 - 0x61C8864680B583E9 + (v195 << 6) + (v195 >> 2)) ^ v195;
    v199 = (*(**(v2 + 5) + 32))(*(v2 + 5), 16, 8);
    *v199 = &unk_1F5D12848;
    *(v199 + 8) = v258[8];
    v251 = v199;
    v200 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v2 + 96, &v252, &v251);
    if (*&v253.var0)
    {
      if (*&v253.var0)
      {
      }
    }
  }

  re::FixedArray<re::RenderFrameContextBuilder::Result::PerSceneData>::deinit(&v246);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v250, v201, v202);
}

uint64_t re::RenderGraphDataStore::add<re::RenderGraphDataPipeData>(uint64_t a1, uint64_t a2)
{
  v3 = "N2re23RenderGraphDataPipeDataE";
  if (("N2re23RenderGraphDataPipeDataE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re23RenderGraphDataPipeDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v10 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  *v7 = &unk_1F5D129B8;
  v7[1] = 0;
  v9 = v7;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v10, &v9);
}

uint64_t re::RealityEmitterBase::emitFrameContextRealityRenderer(re::RealityEmitterBase *a1, void *a2, re::RenderFrame *a3, re::RenderGraphDataStore *a4)
{
  if ((*(*(a3 + 1) + 327) & 1) == 0)
  {
    re::RenderFrame::emitGraph(a3, "UploadMultiSceneConstants", "RenderFrame");
    v10 = a2[2];
    if (v10)
    {
      v11 = a2[3];
      v12 = 424 * v10;
      do
      {
        v13 = re::RealityEmitterBase::emitRTAOGraph(v8, v11, v9, a4);
        v8 = re::RealityEmitterBase::emitVFXSimulationGraph(v13, v11, a3, a4);
        v11 += 424;
        v12 -= 424;
      }

      while (v12);
    }

    v14 = a2[12];
    if (v14 && *(v14 + 16))
    {
      re::RenderFrame::emitGraph(a3, "MipmapGenerationContext", "RenderFrame");
    }

    v15 = a2[13];
    if (v15 && *(v15 + 16))
    {
      re::RenderFrame::emitGraph(a3, "BlurGenerationContext", "RenderFrame");
    }

    re::RealityEmitterBase::emitProbeWriteGraph(v8, a3);
    re::RenderFrame::emitGraph(a3, "ProjectiveMeshShadow", "RenderFrame");
    if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
    {
      dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
    }

    if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
    {
      re::RenderFrame::emitGraph(a3, "UIShadow", "RenderFrame");
    }

    v32 = 0;
    v16 = a2[2];
    if (v16)
    {
      v17 = a2[3];
      v18 = 424 * v16;
      do
      {
        re::RealityEmitterBase::emitSingleGraphShadows(a1, v17, a3, a4, &v32);
        v17 += 424;
        v18 -= 424;
      }

      while (v18);
      v19 = a2[2];
      if (v19)
      {
        v20 = a2[3];
        v21 = 424 * v19;
        do
        {
          re::RealityEmitterBase::emitFilterMapGraph(a1, v20, a3, a4);
          v20 += 424;
          v21 -= 424;
        }

        while (v21);
        v22 = a2[2];
        if (v22)
        {
          v23 = a2[3];
          v24 = 424 * v22;
          do
          {
            re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(a1, v23, a3, a4);
            v23 += 424;
            v24 -= 424;
          }

          while (v24);
        }
      }
    }
  }

  v25 = a2[2];
  if (v25)
  {
    v26 = a2[3];
    v27 = 424 * v25;
    do
    {
      re::RealityEmitterBase::emitCameraGraphs(a1, a2, v26, a3, a4, 1);
      v26 += 424;
      v27 -= 424;
    }

    while (v27);
  }

  if ((*(*(a3 + 1) + 327) & 1) == 0)
  {
    v28 = a2[2];
    if (v28)
    {
      v29 = a2[3];
      v30 = 424 * v28;
      do
      {
        re::RealityEmitterBase::emitEmbeddedStereoContentCameraGraphs(a1, a2, v29, a3, a4, 0);
        v29 += 424;
        v30 -= 424;
      }

      while (v30);
    }
  }

  return re::RealityEmitterBase::pushPipelineCompilationDataToDataStore(a1, a3, a4);
}

unint64_t re::RealityEmitterBase::emitRTAOGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = *MEMORY[0x1E69E9840];
  {
    re::RealityEmitterBase::emitRTAOGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kRTAOTypeScopeHash = re::Hash<re::StringSlice>::operator()("RTAO", 4uLL);
  }

  v6 = re::RealityEmitterBase::emitRTAOGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kRTAOTypeScopeHash;
  result = strlen(*(a2 + 48));
  if (result)
  {
    result = MurmurHash3_x64_128(*(a2 + 48), result, 0, v9);
    v8 = (v9[1] - 0x61C8864680B583E9 + (v9[0] << 6) + (v9[0] >> 2)) ^ v9[0];
  }

  else
  {
    v8 = 0;
  }

  if (*(a2 + 396) == 1)
  {
    return re::RenderGraphDataStore::add<re::SimplifiedMeshBufferIndex,unsigned char &>(a4, ((v6 << 6) - 0x61C8864680B583E9 + (v6 >> 2) + v8) ^ v6, (a2 + 397));
  }

  return result;
}

_anonymous_namespace_ *re::RealityEmitterBase::emitVFXSimulationGraph(uint64_t a1, uint64_t a2, re::RenderFrame *a3, uint64_t a4)
{
  v94 = *MEMORY[0x1E69E9840];
  v6 = (*(**(a3 + 49) + 32))(*(a3 + 49), 320, 16);
  v67 = a3;
  v7 = *(a3 + 49);
  *(v6 + 32) = 0;
  *(v6 + 8) = 0;
  v8 = (v6 + 8);
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *v6 = v7;
  result = re::DynamicArray<float *>::setCapacity(v6, 0);
  ++*(v6 + 24);
  *(v6 + 48) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0x3F80000000000000;
  *(v6 + 56) = 0;
  *(v6 + 80) = 0;
  *(v6 + 84) = xmmword_1E30806D0;
  *(v6 + 100) = 0xBDCCCCCD3DCCCCCDLL;
  *(v6 + 108) = 0;
  *(v6 + 112) = xmmword_1E30476A0;
  *(v6 + 128) = 1;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 160) = 0;
  *(v6 + 240) = 0;
  v68 = a2;
  v10 = *(a2 + 40);
  v11 = *(v10 + 40);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      result = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v10, i);
      v13 = *(result + 2);
      if (v13)
      {
        v14 = *(result + 4);
        v15 = *(v6 + 16);
        v16 = v13 << 10;
        do
        {
          v17 = *v8;
          if (v15 >= *v8)
          {
            v18 = v15 + 1;
            if (v17 < v15 + 1)
            {
              if (*v6)
              {
                v19 = 2 * v17;
                if (!v17)
                {
                  v19 = 8;
                }

                if (v19 <= v18)
                {
                  v20 = v18;
                }

                else
                {
                  v20 = v19;
                }

                result = re::DynamicArray<float *>::setCapacity(v6, v20);
              }

              else
              {
                result = re::DynamicArray<float *>::setCapacity(v6, v18);
                ++*(v6 + 24);
              }
            }

            v15 = *(v6 + 16);
          }

          *(*(v6 + 32) + 8 * v15++) = v14;
          *(v6 + 16) = v15;
          ++*(v6 + 24);
          v14 += 1024;
          v16 -= 1024;
        }

        while (v16);
      }
    }
  }

  if (*(v6 + 16))
  {
    v21 = *(v68 + 184);
    if (v21 && (v22 = *(v21 + 40)) != 0)
    {
      v23 = 0;
      while (1)
      {
        result = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v21, v23);
        if (*(result + 2))
        {
          break;
        }

        if (v22 == ++v23)
        {
          goto LABEL_24;
        }
      }

      v32 = *(result + 4);
      v33 = *(v32 + 144);
      if (v33 == 1)
      {
        v34 = *(v32 + 176);
        *&v91[7] = *(v32 + 160);
        *&v91[23] = v34;
        v35 = *(v32 + 208);
        v92 = *(v32 + 192);
        v93 = v35;
      }

      v36 = *(v32 + 224);
      v37 = v6 + 80;
      if (v36 == 1)
      {
        v38 = *(v32 + 256);
        v86 = *(v32 + 240);
        v87 = v38;
        v39 = *(v32 + 288);
        v88 = *(v32 + 272);
LABEL_48:
        v89 = v39;
      }
    }

    else
    {
LABEL_24:
      v24 = *(v68 + 176);
      if (v24 && (v25 = *(v24 + 40)) != 0)
      {
        v26 = 0;
        while (1)
        {
          result = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v24, v26);
          if (*(result + 2))
          {
            break;
          }

          if (v25 == ++v26)
          {
            goto LABEL_29;
          }
        }

        v32 = *(result + 4);
      }

      else
      {
LABEL_29:
        v27 = *(v68 + 304);
        if (v27)
        {
          v28 = 0;
          while (1)
          {
            result = re::BucketArray<unsigned long,4ul>::operator[](v68 + 264, v28);
            v29 = *result;
            if (*(*result + 16))
            {
              break;
            }

            if (v27 == ++v28)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
LABEL_33:
          v30 = *(v68 + 248);
          if (!v30)
          {
            return result;
          }

          v31 = 0;
          while (1)
          {
            result = re::BucketArray<unsigned long,4ul>::operator[](v68 + 208, v31);
            v29 = *result;
            if (*(*result + 16))
            {
              break;
            }

            if (v30 == ++v31)
            {
              return result;
            }
          }
        }

        v32 = *(v29 + 32);
      }

      v33 = *(v32 + 144);
      if (v33 == 1)
      {
        v40 = *(v32 + 176);
        *&v91[7] = *(v32 + 160);
        *&v91[23] = v40;
        v41 = *(v32 + 208);
        v92 = *(v32 + 192);
        v93 = v41;
      }

      v36 = *(v32 + 224);
      v37 = v6 + 80;
      if (v36 == 1)
      {
        v42 = *(v32 + 256);
        v86 = *(v32 + 240);
        v87 = v42;
        v39 = *(v32 + 288);
        v88 = *(v32 + 272);
        goto LABEL_48;
      }
    }

    v43 = *(v32 + 48);
    v83 = *(v32 + 32);
    v84 = v43;
    v44 = *(v32 + 64);
    v79 = *(v32 + 80);
    v45 = *(v32 + 112);
    v80 = *(v32 + 96);
    v81 = v45;
    v82 = *(v32 + 128);
    v78 = v44;
    if (v33)
    {
      v74 = *&v91[7];
      v75 = *&v91[23];
      v76 = v92;
      v77 = v93;
    }

    if (v36)
    {
      v70 = v86;
      v71 = v87;
      v72 = v88;
      v73 = v89;
    }

    v46 = v84;
    *(v6 + 48) = v83;
    *(v6 + 64) = v46;
    v47 = v79;
    v48 = v81;
    *(v37 + 32) = v80;
    *(v37 + 48) = v48;
    *(v37 + 64) = v82;
    *v37 = v78;
    *(v37 + 16) = v47;
    if (*(v6 + 160))
    {
      if ((v33 & 1) == 0)
      {
        *(v6 + 160) = 0;
        goto LABEL_59;
      }
    }

    else
    {
      if ((v33 & 1) == 0)
      {
        goto LABEL_59;
      }

      *(v6 + 160) = 1;
    }

    v49 = v75;
    *(v6 + 176) = v74;
    *(v6 + 192) = v49;
    v50 = v77;
    *(v6 + 208) = v76;
    *(v6 + 224) = v50;
LABEL_59:
    if (*(v6 + 240))
    {
      if ((v36 & 1) == 0)
      {
        *(v6 + 240) = 0;
        goto LABEL_65;
      }
    }

    else
    {
      if ((v36 & 1) == 0)
      {
        goto LABEL_65;
      }

      *(v6 + 240) = 1;
    }

    v51 = v71;
    *(v6 + 256) = v70;
    *(v6 + 272) = v51;
    v52 = v73;
    *(v6 + 288) = v72;
    *(v6 + 304) = v52;
LABEL_65:
    if ((atomic_load_explicit(&qword_1EE1BFF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF30))
    {
      qword_1EE1BFF28 = re::Hash<re::StringSlice>::operator()("VFXSimulation", 0xDuLL);
      __cxa_guard_release(&qword_1EE1BFF30);
    }

    v53 = qword_1EE1BFF28;
    v54 = *(v68 + 48);
    v55 = strlen(v54);
    if (v55)
    {
      MurmurHash3_x64_128(v54, v55, 0, &v90);
      v56 = (*v91 - 0x61C8864680B583E9 + (v90 << 6) + (v90 >> 2)) ^ v90;
      v54 = *(v68 + 48);
    }

    else
    {
      v56 = 0;
    }

    v57 = ((v53 << 6) - 0x61C8864680B583E9 + (v53 >> 2) + v56) ^ v53;
    v58 = *v68;
    v90 = &unk_1F5D06A20;
    re::DynamicString::DynamicString(v91, v54, v58);
    v59 = re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a4, v57, &v90);
    v60 = "N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE";
    if (("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x8000000000000000) != 0)
    {
      v61 = ("N2re27RenderGraphDataStoreWrapperIPNS_23ActiveVFXSimulationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
      v62 = 5381;
      do
      {
        v60 = v62;
        v63 = *v61++;
        v62 = (33 * v62) ^ v63;
      }

      while (v63);
    }

    v85 = (v57 - 0x61C8864680B583E9 + (v60 << 6) + (v60 >> 2)) ^ v60;
    v64 = re::globalAllocators(v59);
    v65 = (*(*v64[2] + 32))(v64[2], 16, 8);
    *v65 = &unk_1F5D12C00;
    v65[1] = v6;
    v69 = v65;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 16, &v85, &v69);
    re::RenderFrame::emitGraph(v67, "VFXSimulation", *(v68 + 48));
    v90 = &unk_1F5D06A20;
    result = *v91;
    if (*v91)
    {
      if (v91[8])
      {
        return (*(**v91 + 40))(*v91, *&v91[16]);
      }
    }
  }

  return result;
}

void re::RealityEmitterBase::emitProbeWriteGraph(re::RealityEmitterBase *this, re::RenderFrame *a2)
{
  {
    re::RealityEmitterBase::emitProbeWriteGraph(re::RenderFrame &)::kProbeWriteContextCombinedScopeHash = re::getCombinedScopeHash("ProbeWriteContext", "RenderFrame", v5);
  }

  v3 = *(*(a2 + 1) + 112);
  if (v3)
  {
    v4 = *(v3 + 304);
  }

  else
  {
    v4 = 0;
  }

  re::ProbeManager::generateWorkload(v4, v6);
  if (v6[0] == 1)
  {
    re::RenderGraphDataStore::add<re::ProbeWriteContext,re::ProbeWriteContext>((a2 + 32), re::RealityEmitterBase::emitProbeWriteGraph(re::RenderFrame &)::kProbeWriteContextCombinedScopeHash, v7);
    re::RenderFrame::emitGraph(a2, "ProbeWriteContext", "RenderFrame");
    if (v6[0])
    {
      (*v7[0])(v7);
    }
  }
}

void re::RealityEmitterBase::emitUIShadowGraph(int a1, int a2, re::RenderFrame *this)
{
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {

    re::RenderFrame::emitGraph(this, "UIShadow", "RenderFrame");
  }
}

void re::RealityEmitterBase::emitSingleGraphShadows(uint64_t a1, uint64_t a2, re::RenderFrame *a3, uint64_t a4, _DWORD *a5)
{
  v189 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 104);
  if (!v5)
  {
    return;
  }

  v10 = 0;
  v11 = 0;
  v12 = 656 * v5;
  v13 = (*(a2 + 120) + 324);
  do
  {
    if (*v13 != 0xFFFF)
    {
      v10 = ++v11;
    }

    v13 += 328;
    v12 -= 656;
  }

  while (v12);
  v14 = *(a2 + 48);
  if ((atomic_load_explicit(&qword_1EE1BFF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF50))
  {
    qword_1EE1BFF48 = re::Hash<re::StringSlice>::operator()("SingleGraphShadows", 0x12uLL);
    __cxa_guard_release(&qword_1EE1BFF50);
  }

  v15 = qword_1EE1BFF48;
  v16 = strlen(v14);
  if (v16)
  {
    MurmurHash3_x64_128(v14, v16, 0, &v169);
    v17 = (*(&v169 + 1) - 0x61C8864680B583E9 + (v169 << 6) + (v169 >> 2)) ^ v169;
  }

  else
  {
    v17 = 0;
  }

  v152 = v14;
  v18 = ((v15 << 6) - 0x61C8864680B583E9 + (v15 >> 2) + v17) ^ v15;
  v19 = *a2;
  v20 = "N2re15CameraArrayDataE";
  if (("N2re15CameraArrayDataE" & 0x8000000000000000) != 0)
  {
    v21 = ("N2re15CameraArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  v156 = v18;
  v24 = v18 - 0x61C8864680B583E9;
  *v162 = (v18 - 0x61C8864680B583E9 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v25 = (*(**(a4 + 8) + 32))(*(a4 + 8), 32, 8);
  *v25 = &unk_1F5D12C40;
  v25[1] = 0;
  v25[2] = 0;
  v25[3] = 0;
  re::CameraData::CameraData(&v169, v19);
  v25[1] = v19;
  v25[2] = v10;
  v153 = a3;
  v154 = a5;
  if (v10)
  {
    if (v10 >= 0x44444444444445)
    {
      goto LABEL_122;
    }

    v158 = v24;
    v27 = (*(*v19 + 32))(v19, 960 * v10, 16);
    v25[3] = v27;
    if (!v27)
    {
LABEL_123:
      re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_124;
    }

    v29 = v27;
    v155 = v19;
    v30 = v10 - 1;
    if (v10 != 1)
    {
      v151 = a4;
      v31 = v27;
      do
      {
        v32 = v29;
        *v29 = &unk_1F5D03750;
        re::DynamicString::DynamicString((v29 + 8), (&v169 + 8));
        *(v29 + 48) = 0;
        *(v29 + 56) = 0;
        v33 = v172;
        memcpy((v32 + 64), v173, 32 * v172);
        *(v32 + 48) = v33;
        *(v32 + 128) = 0;
        *(v32 + 136) = 0;
        re::DynamicInlineArray<re::Projection,2ul>::copy((v32 + 128), v174);
        *(v32 + 624) = 0;
        *(v32 + 632) = 0;
        v34 = v175;
        memcpy((v32 + 640), v177, v175 << 6);
        *(v32 + 624) = v34;
        *(v32 + 768) = 0;
        *(v32 + 776) = 0;
        v35 = v178;
        memcpy((v32 + 784), v180, 16 * v178);
        *(v32 + 768) = v35;
        v37 = v182;
        v36 = *v183;
        v38 = v181;
        *(v32 + 858) = *&v183[10];
        *(v32 + 832) = v37;
        *(v32 + 848) = v36;
        *(v32 + 816) = v38;
        v39 = v184;
        *(v32 + 876) = v184;
        if (v39 == 1)
        {
          *(v32 + 880) = v185;
        }

        v40 = v186[0];
        *(v32 + 897) = *(v186 + 13);
        *(v32 + 884) = v40;
        *(v32 + 944) = v188;
        *(v32 + 952) = 0;
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v32 + 920, v187);
        v31 += 960;
        v29 = v32 + 960;
        --v30;
      }

      while (v30);
      v29 = v32 + 960;
      a3 = v153;
      a5 = v154;
      a4 = v151;
    }

    *v29 = &unk_1F5D03750;
    re::DynamicString::DynamicString((v29 + 8), (&v169 + 8));
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    v41 = v172;
    memcpy((v29 + 64), v173, 32 * v172);
    *(v29 + 48) = v41;
    *(v29 + 128) = 0;
    *(v29 + 136) = 0;
    re::DynamicInlineArray<re::Projection,2ul>::copy((v29 + 128), v174);
    *(v29 + 624) = 0;
    *(v29 + 632) = 0;
    v42 = v175;
    memcpy((v29 + 640), v177, v175 << 6);
    *(v29 + 624) = v42;
    *(v29 + 768) = 0;
    *(v29 + 776) = 0;
    v43 = v178;
    memcpy((v29 + 784), v180, 16 * v178);
    *(v29 + 768) = v43;
    v44 = *v183;
    v46 = v181;
    v45 = v182;
    *(v29 + 858) = *&v183[10];
    *(v29 + 832) = v45;
    *(v29 + 848) = v44;
    *(v29 + 816) = v46;
    v47 = v184;
    *(v29 + 876) = v184;
    if (v47 == 1)
    {
      *(v29 + 880) = v185;
    }

    v48 = v186[0];
    *(v29 + 897) = *(v186 + 13);
    *(v29 + 884) = v48;
    *(v29 + 944) = v188;
    *(v29 + 952) = 0;
    re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v29 + 920, v187);
    v24 = v158;
    v19 = v155;
  }

  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v187);
  ++v179;
  ++v176;
  ++DWORD2(v174[0]);
  v178 = 0;
  v175 = 0;
  *&v174[0] = 0;
  *&v172 = 0;
  ++DWORD2(v172);
  if (*(&v169 + 1) && (v170 & 1) != 0)
  {
    (*(**(&v169 + 1) + 40))();
  }

  *&v169 = v25;
  v49 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, v162, &v169);
  v50 = "N2re26MultiViewCullModeArrayDataE";
  if (("N2re26MultiViewCullModeArrayDataE" & 0x8000000000000000) != 0)
  {
    v51 = ("N2re26MultiViewCullModeArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v52 = 5381;
    do
    {
      v50 = v52;
      v53 = *v51++;
      v52 = (33 * v52) ^ v53;
    }

    while (v53);
  }

  v159 = *v49;
  *&v169 = (v24 + (v50 << 6) + (v50 >> 2)) ^ v50;
  v55 = (*(**(a4 + 8) + 32))(*(a4 + 8), 32, 8);
  *v55 = &unk_1F5D12C80;
  v55[1] = v19;
  v55[2] = v10;
  v55[3] = 0;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v56 = (*(*v19 + 32))(v19, 2 * v10, 1);
      v55[3] = v56;
      if (v56)
      {
        v58 = v10 - 1;
        if (v10 != 1)
        {
          do
          {
            *v56 = 0;
            v56 += 2;
            --v58;
          }

          while (v58);
        }

        *v56 = 0;
        goto LABEL_37;
      }

LABEL_125:
      re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_126;
    }

LABEL_124:
    re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, v10);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v142, v146);
    __break(1u);
    goto LABEL_125;
  }

LABEL_37:
  *v162 = v55;
  v157 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v169, v162);
  *v162 = 0;
  if ((atomic_load_explicit(&qword_1EE1C00A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C00A0))
  {
    qword_1EE1C0098 = re::introspect_ShadowMapAtlasData(0, v136, v137, v138, v139, v140);
    __cxa_guard_release(&qword_1EE1C00A0);
  }

  v161 = qword_1EE1C0098;
  v59 = strlen(*(qword_1EE1C0098 + 48));
  if (v59)
  {
    MurmurHash3_x64_128(*(qword_1EE1C0098 + 48), v59, 0, &v169);
    v60 = (*(&v169 + 1) - 0x61C8864680B583E9 + (v169 << 6) + (v169 >> 2)) ^ v169;
  }

  else
  {
    v60 = 0;
  }

  *v162 = v60;
  re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, v162, &v161);
  *&v169 = (v24 + (*v162 << 6) + (*v162 >> 2)) ^ *v162;
  v61 = (*(**(a4 + 8) + 32))(*(a4 + 8), 24, 8);
  v61[1] = 0;
  v61[2] = 252;
  *v61 = &unk_1F5D03710;
  v161 = v61;
  v62 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v169, &v161);
  *(v62 + 8) = *(*(a2 + 8) + 280);
  *(v62 + 16) = 252;
  v63 = "N2re17ViewportArrayDataE";
  if (("N2re17ViewportArrayDataE" & 0x8000000000000000) != 0)
  {
    v64 = ("N2re17ViewportArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v65 = 5381;
    do
    {
      v63 = v65;
      v66 = *v64++;
      v65 = (33 * v65) ^ v66;
    }

    while (v66);
  }

  *&v169 = (v24 + (v63 << 6) + (v63 >> 2)) ^ v63;
  v68 = (*(**(a4 + 8) + 32))(*(a4 + 8), 32, 8);
  *v68 = &unk_1F5D12CC0;
  v68[1] = v19;
  v68[2] = v10;
  v68[3] = 0;
  if (v10)
  {
    if (!(v10 >> 59))
    {
      v69 = (*(*v19 + 32))(v19, 32 * v10, 8);
      v68[3] = v69;
      if (v69)
      {
        v71 = v10 - 1;
        if (v10 != 1)
        {
          v72 = v69;
          do
          {
            *v69 = &unk_1F5D035B0;
            v69[1] = 0;
            v69[2] = 0;
            v69[3] = 0x3F80000000000000;
            v69 += 4;
            v72 += 4;
            --v71;
          }

          while (v71);
        }

        *v69 = &unk_1F5D035B0;
        v69[1] = 0;
        v69[2] = 0;
        v69[3] = 0x3F80000000000000;
        goto LABEL_51;
      }

LABEL_127:
      re::internal::assertLog(4, v70, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      re::internal::assertLog(6, v135, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 320, v10);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v144, v148);
      __break(1u);
      goto LABEL_128;
    }

LABEL_126:
    re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, v10);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v143, v147);
    __break(1u);
    goto LABEL_127;
  }

LABEL_51:
  *v162 = v68;
  v73 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v169, v162);
  v74 = "N2re27MeshLodSelectInputArrayDataE";
  if (("N2re27MeshLodSelectInputArrayDataE" & 0x8000000000000000) != 0)
  {
    v75 = ("N2re27MeshLodSelectInputArrayDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v76 = 5381;
    do
    {
      v74 = v76;
      v77 = *v75++;
      v76 = (33 * v76) ^ v77;
    }

    while (v77);
  }

  v78 = *v73;
  *&v169 = (v24 + (v74 << 6) + (v74 >> 2)) ^ v74;
  v79 = (*(**(a3 + 5) + 32))(*(a3 + 5), 32, 8);
  *v79 = &unk_1F5D12D00;
  v79[1] = v19;
  v79[2] = v10;
  v79[3] = 0;
  if (!v10)
  {
    goto LABEL_60;
  }

  v80 = (*(*v19 + 32))(v19, 320 * v10, 16);
  v79[3] = v80;
  if (!v80)
  {
LABEL_128:
    re::internal::assertLog(4, v81, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  v82 = v10 - 1;
  if (v10 != 1)
  {
    v83 = v80;
    do
    {
      *(v80 + 288) = 0uLL;
      *(v80 + 304) = 0uLL;
      *(v80 + 256) = 0uLL;
      *(v80 + 272) = 0uLL;
      *(v80 + 224) = 0uLL;
      *(v80 + 240) = 0uLL;
      *(v80 + 192) = 0uLL;
      *(v80 + 208) = 0uLL;
      *(v80 + 160) = 0uLL;
      *(v80 + 176) = 0uLL;
      *(v80 + 128) = 0uLL;
      *(v80 + 144) = 0uLL;
      *(v80 + 96) = 0uLL;
      *(v80 + 112) = 0uLL;
      *(v80 + 64) = 0uLL;
      *(v80 + 80) = 0uLL;
      *(v80 + 32) = 0uLL;
      *(v80 + 48) = 0uLL;
      *v80 = 0uLL;
      *(v80 + 16) = 0uLL;
      *v80 = &unk_1F5D069E0;
      *(v80 + 16) = 0uLL;
      *(v80 + 32) = 0uLL;
      *(v80 + 48) = 0uLL;
      *(v80 + 64) = 0uLL;
      *(v80 + 80) = 0;
      *(v80 + 84) = xmmword_1E30806D0;
      *(v80 + 100) = 0xBDCCCCCD3DCCCCCDLL;
      *(v80 + 112) = xmmword_1E30476A0;
      *(v80 + 128) = 1;
      v80 += 320;
      v83 += 320;
      --v82;
    }

    while (v82);
  }

  *(v80 + 288) = 0u;
  *(v80 + 304) = 0u;
  *(v80 + 256) = 0u;
  *(v80 + 272) = 0u;
  *(v80 + 224) = 0u;
  *(v80 + 240) = 0u;
  *(v80 + 192) = 0u;
  *(v80 + 208) = 0u;
  *(v80 + 160) = 0u;
  *(v80 + 176) = 0u;
  *(v80 + 128) = 0u;
  *(v80 + 144) = 0u;
  *(v80 + 96) = 0u;
  *(v80 + 112) = 0u;
  *(v80 + 64) = 0u;
  *(v80 + 80) = 0u;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 0u;
  *v80 = 0u;
  *(v80 + 16) = 0u;
  *v80 = &unk_1F5D069E0;
  *(v80 + 16) = 0u;
  *(v80 + 32) = 0u;
  *(v80 + 48) = 0u;
  *(v80 + 64) = 0u;
  *(v80 + 80) = 0;
  *(v80 + 84) = xmmword_1E30806D0;
  *(v80 + 100) = 0xBDCCCCCD3DCCCCCDLL;
  *(v80 + 112) = xmmword_1E30476A0;
  *(v80 + 128) = 1;
LABEL_60:
  *v162 = v79;
  v84 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 96, &v169, v162);
  v85 = *v84;
  re::RealityEmitterBase::addSceneDataToDataStore(v84, a2, v156, a4);
  if (!*a5)
  {
    v161 = 0;
    *v162 = &unk_1F5D12F48;
    v162[8] = 1;
    if ((atomic_load_explicit(&qword_1EE1C00B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C00B0))
    {
      qword_1EE1C00A8 = re::introspect_ForceClearData(0);
      __cxa_guard_release(&qword_1EE1C00B0);
    }

    v160 = qword_1EE1C00A8;
    v86 = strlen(*(qword_1EE1C00A8 + 48));
    if (v86)
    {
      MurmurHash3_x64_128(*(qword_1EE1C00A8 + 48), v86, 0, &v169);
      v87 = (*(&v169 + 1) - 0x61C8864680B583E9 + (v169 << 6) + (v169 >> 2)) ^ v169;
    }

    else
    {
      v87 = 0;
    }

    v161 = v87;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v161, &v160);
    *&v169 = (v24 + (v161 << 6) + (v161 >> 2)) ^ v161;
    v88 = (*(**(a4 + 8) + 32))(*(a4 + 8), 16, 8);
    *v88 = &unk_1F5D12F48;
    *(v88 + 8) = v162[8];
    v160 = v88;
    re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v169, &v160);
  }

  v89 = "N2re18MeshNodeFilterDataE";
  if (("N2re18MeshNodeFilterDataE" & 0x8000000000000000) != 0)
  {
    v90 = ("N2re18MeshNodeFilterDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v91 = 5381;
    do
    {
      v89 = v91;
      v92 = *v90++;
      v91 = (33 * v91) ^ v92;
    }

    while (v92);
  }

  *&v169 = (v24 + (v89 << 6) + (v89 >> 2)) ^ v89;
  v93 = (*(**(a4 + 8) + 32))(*(a4 + 8), 16, 8);
  *v93 = &unk_1F5D12D40;
  v93[1] = 0;
  *v162 = v93;
  v94 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v169, v162);
  *(*v94 + 8) |= 0x1000000010uLL;
  v96 = *(a2 + 104);
  if (v96)
  {
    v97 = 0;
    v98 = 0;
    v99 = *(a2 + 120);
    v100 = 656 * v96;
    while (1)
    {
      v101 = v99 + v97;
      if (*(v99 + v97 + 324) != -1)
      {
        break;
      }

LABEL_103:
      v97 += 656;
      if (v100 == v97)
      {
        goto LABEL_104;
      }
    }

    v102 = *(v159 + 16);
    if (v102 <= v98)
    {
      v161 = 0;
      v172 = 0u;
      v173[0] = 0u;
      v170 = 0u;
      v171 = 0u;
      v169 = 0u;
      v124 = MEMORY[0x1E69E9C10];
      v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v162 = 136315906;
      *&v162[4] = "operator[]";
      v163 = 1024;
      if (v125)
      {
        v126 = 3;
      }

      else
      {
        v126 = 2;
      }

      v164 = 468;
      v165 = 2048;
      v166 = v98;
      v167 = 2048;
      v168 = v102;
      _os_log_send_and_compose_impl(v126, &v161, &v169, 80, &dword_1E1C61000, v124, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v149, v150);
      _os_crash_msg();
      __break(1u);
LABEL_110:
      v161 = 0;
      v172 = 0u;
      v173[0] = 0u;
      v170 = 0u;
      v171 = 0u;
      v169 = 0u;
      v127 = MEMORY[0x1E69E9C10];
      v128 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v162 = 136315906;
      *&v162[4] = "operator[]";
      v163 = 1024;
      if (v128)
      {
        v129 = 3;
      }

      else
      {
        v129 = 2;
      }

      v164 = 468;
      v165 = 2048;
      v166 = v98;
      v167 = 2048;
      v168 = v102;
      _os_log_send_and_compose_impl(v129, &v161, &v169, 80, &dword_1E1C61000, v127, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v149, v150);
      _os_crash_msg();
      __break(1u);
LABEL_114:
      v161 = 0;
      v172 = 0u;
      v173[0] = 0u;
      v170 = 0u;
      v171 = 0u;
      v169 = 0u;
      v130 = MEMORY[0x1E69E9C10];
      v131 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v162 = 136315906;
      *&v162[4] = "operator[]";
      v163 = 1024;
      if (v131)
      {
        v132 = 3;
      }

      else
      {
        v132 = 2;
      }

      v164 = 468;
      v165 = 2048;
      v166 = v98;
      v167 = 2048;
      v168 = v102;
      _os_log_send_and_compose_impl(v132, &v161, &v169, 80, &dword_1E1C61000, v130, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v149, v150);
      _os_crash_msg();
      __break(1u);
LABEL_118:
      v161 = 0;
      v172 = 0u;
      v173[0] = 0u;
      v170 = 0u;
      v171 = 0u;
      v169 = 0u;
      v10 = MEMORY[0x1E69E9C10];
      v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v162 = 136315906;
      *&v162[4] = "operator[]";
      v163 = 1024;
      if (v133)
      {
        v134 = 3;
      }

      else
      {
        v134 = 2;
      }

      v164 = 468;
      v165 = 2048;
      v166 = v98;
      v167 = 2048;
      v168 = v101;
      _os_log_send_and_compose_impl(v134, &v161, &v169, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v162, 38, v149, v150);
      _os_crash_msg();
      __break(1u);
LABEL_122:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 960, v10);
      _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v141, v145);
      __break(1u);
      goto LABEL_123;
    }

    v103 = *(v159 + 24) + 960 * v98;
    *(v103 + 840) = *(a2 + 32);
    if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((v103 + 48), v95))
    {
      v104 = v103 + 32 * *(v103 + 48);
      v105 = *(v99 + v97 + 48);
      *(v104 + 64) = *(v99 + v97 + 32);
      *(v104 + 80) = v105;
      ++*(v103 + 48);
      ++*(v103 + 56);
    }

    re::DynamicInlineArray<re::Projection,2ul>::add((v103 + 128), v99 + v97 + 64);
    *(v103 + 816) = xmmword_1E30474D0;
    *(v103 + 873) = *(v99 + v97 + 652);
    if (*(v103 + 876))
    {
      if (*(v99 + v97 + 644))
      {
        *(v103 + 880) = *(v99 + v97 + 648);
      }

      else
      {
        *(v103 + 876) = 0;
      }
    }

    else if (*(v99 + v97 + 644))
    {
      *(v103 + 876) = 1;
      *(v103 + 880) = *(v99 + v97 + 648);
    }

    v102 = *(v157 + 16);
    if (v102 <= v98)
    {
      goto LABEL_110;
    }

    v106 = (*(v157 + 24) + 2 * v98);
    if (*v106)
    {
      if ((*(v99 + v97 + 640) & 1) == 0)
      {
        *v106 = 0;
        goto LABEL_88;
      }
    }

    else
    {
      if ((*(v99 + v97 + 640) & 1) == 0)
      {
        goto LABEL_88;
      }

      *v106 = 1;
    }

    v106[1] = *(v99 + v97 + 641);
LABEL_88:
    v102 = *(v78 + 16);
    if (v102 <= v98)
    {
      goto LABEL_114;
    }

    v107 = v99 + v97;
    v108.i64[0] = *(v99 + v97 + 316);
    v108.i64[1] = *(v101 + 304);
    v109 = *(v78 + 24) + 32 * v98;
    *(v109 + 8) = vcvtq_f32_u32(v108);
    *(v109 + 24) = 0x3F80000000000000;
    v101 = *(v85 + 16);
    if (v101 <= v98)
    {
      goto LABEL_118;
    }

    v110 = *(v85 + 24) + 320 * v98;
    v111 = *(v107 + 336);
    v112 = *(v107 + 352);
    v113 = *(v107 + 384);
    *(v110 + 48) = *(v107 + 368);
    *(v110 + 64) = v113;
    *(v110 + 16) = v111;
    *(v110 + 32) = v112;
    v115 = *(v107 + 432);
    v114 = *(v107 + 448);
    v116 = *(v107 + 416);
    *(v110 + 144) = *(v107 + 464);
    *(v110 + 112) = v115;
    *(v110 + 128) = v114;
    *(v110 + 96) = v116;
    *(v110 + 80) = *(v107 + 400);
    v117 = *(v107 + 480);
    if (*(v110 + 160))
    {
      if ((v117 & 1) == 0)
      {
        *(v110 + 160) = 0;
        goto LABEL_96;
      }
    }

    else
    {
      if ((v117 & 1) == 0)
      {
        goto LABEL_96;
      }

      *(v110 + 160) = 1;
    }

    v118 = *(v99 + v97 + 496);
    v119 = *(v99 + v97 + 512);
    v120 = *(v99 + v97 + 544);
    *(v110 + 208) = *(v99 + v97 + 528);
    *(v110 + 224) = v120;
    *(v110 + 176) = v118;
    *(v110 + 192) = v119;
LABEL_96:
    if (*(v110 + 240))
    {
      if ((*(v99 + v97 + 560) & 1) == 0)
      {
        *(v110 + 240) = 0;
LABEL_102:
        ++v98;
        goto LABEL_103;
      }
    }

    else
    {
      if ((*(v99 + v97 + 560) & 1) == 0)
      {
        goto LABEL_102;
      }

      *(v110 + 240) = 1;
    }

    v121 = *(v99 + v97 + 576);
    v122 = *(v99 + v97 + 592);
    v123 = *(v99 + v97 + 624);
    *(v110 + 288) = *(v99 + v97 + 608);
    *(v110 + 304) = v123;
    *(v110 + 256) = v121;
    *(v110 + 272) = v122;
    goto LABEL_102;
  }

LABEL_104:
  re::RenderFrame::emitGraph(v153, "SingleGraphShadows", v152);
  ++*v154;
}

void re::RealityEmitterBase::emitFilterMapGraph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 144);
  if (v4)
  {
    v8 = *(a2 + 160);
    v77 = v8 + 688 * v4;
    v9 = *a2;
    v10 = v80;
    while (*(v8 + 324) == -1)
    {
LABEL_49:
      v8 += 688;
      if (v8 == v77)
      {
        return;
      }
    }

    if (*(v8 + 8))
    {
      v11 = *(v8 + 16);
    }

    else
    {
      v11 = v8 + 9;
    }

    re::DynamicString::format(&v78, "%s_%s", a2, v11, "Filter");
    if ((atomic_load_explicit(&qword_1EE1BFF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BFF40))
    {
      qword_1EE1BFF38 = re::Hash<re::StringSlice>::operator()("Filter", 6uLL);
      __cxa_guard_release(&qword_1EE1BFF40);
    }

    v12 = qword_1EE1BFF38;
    v13 = v10;
    if (v79)
    {
      v14 = v81;
    }

    else
    {
      v14 = v10;
    }

    v15 = strlen(v14);
    if (v15)
    {
      MurmurHash3_x64_128(v14, v15, 0, &v84);
      v16 = (v85 - 0x61C8864680B583E9 + (v84 << 6) + (v84 >> 2)) ^ v84;
    }

    else
    {
      v16 = 0;
    }

    v83 = 0;
    {
      re::introspect<re::CameraData>(BOOL)::info = re::introspect_CameraData(0, v62, v63, v64, v65, v66);
    }

    v82 = re::introspect<re::CameraData>(BOOL)::info;
    v17 = strlen(*(re::introspect<re::CameraData>(BOOL)::info + 6));
    if (v17)
    {
      MurmurHash3_x64_128(*(re::introspect<re::CameraData>(BOOL)::info + 6), v17, 0, &v84);
      v18 = (v85 - 0x61C8864680B583E9 + (v84 << 6) + (v84 >> 2)) ^ v84;
    }

    else
    {
      v18 = 0;
    }

    v19 = ((v12 << 6) - 0x61C8864680B583E9 + (v12 >> 2) + v16) ^ v12;
    v83 = v18;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v83, &v82);
    v20 = v19 - 0x61C8864680B583E9;
    v84 = (v19 - 0x61C8864680B583E9 + (v83 << 6) + (v83 >> 2)) ^ v83;
    v21 = (*(**(a4 + 8) + 32))(*(a4 + 8), 960, 16);
    v82 = re::CameraData::CameraData(v21, v9);
    v22 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v84, &v82);
    v23 = *v22;
    re::globalAllocators(v22);
    v24 = (*(*v9 + 32))(v9, 56, 8);
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *v24 = 0u;
    *(v24 + 16) = 1;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 0;
    v25 = re::globalAllocators(v24)[2];
    v84 = &unk_1F5D128C8;
    v86 = v25;
    v87 = &v84;
    v26 = (*(*v9 + 16))(v9, v24, &v84);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v84);
    v27 = re::BucketArray<re::MeshSceneCollection,16ul>::addUninitialized(v26);
    re::DynamicArray<re::MeshScene>::DynamicArray(v27, (v8 + 640));
    *(v23 + 840) = v26;
    *(v23 + 848) = 0;
    if (re::DynamicInlineArray<re::RenderCamera,2ul>::ensureCapacity((v23 + 48), v28))
    {
      v29 = v23 + 32 * *(v23 + 48);
      v30 = *(v8 + 48);
      *(v29 + 64) = *(v8 + 32);
      *(v29 + 80) = v30;
      ++*(v23 + 48);
      ++*(v23 + 56);
    }

    re::DynamicInlineArray<re::Projection,2ul>::add((v23 + 128), v8 + 64);
    *(v23 + 816) = xmmword_1E30474D0;
    v83 = 0;
    if ((atomic_load_explicit(&qword_1EE1C0090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0090))
    {
      qword_1EE1C0088 = re::introspect_FilterMapAtlasData(0, v67, v68, v69, v70, v71);
      __cxa_guard_release(&qword_1EE1C0090);
    }

    v82 = qword_1EE1C0088;
    v31 = strlen(*(qword_1EE1C0088 + 48));
    v10 = v13;
    if (v31)
    {
      MurmurHash3_x64_128(*(qword_1EE1C0088 + 48), v31, 0, &v84);
      v32 = (v85 - 0x61C8864680B583E9 + (v84 << 6) + (v84 >> 2)) ^ v84;
    }

    else
    {
      v32 = 0;
    }

    v83 = v32;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v83, &v82);
    v84 = (v20 + (v83 << 6) + (v83 >> 2)) ^ v83;
    v33 = (*(**(a4 + 8) + 32))(*(a4 + 8), 32, 8);
    *v33 = &unk_1F5D036D0;
    *(v33 + 8) = 0;
    *(v33 + 16) = xmmword_1E31045E0;
    v82 = v33;
    v34 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v84, &v82);
    *(v34 + 8) = *(*(a2 + 8) + 272);
    *(v34 + 16) = 115;
    *(v34 + 24) = *(a3 + 440);
    v83 = 0;
    {
      re::introspect<re::ViewportData>(BOOL)::info = re::introspect_ViewportData(0, v72, v73, v74, v75, v76);
    }

    v82 = re::introspect<re::ViewportData>(BOOL)::info;
    v35 = strlen(*(re::introspect<re::ViewportData>(BOOL)::info + 6));
    if (v35)
    {
      MurmurHash3_x64_128(*(re::introspect<re::ViewportData>(BOOL)::info + 6), v35, 0, &v84);
      v36 = (v85 - 0x61C8864680B583E9 + (v84 << 6) + (v84 >> 2)) ^ v84;
    }

    else
    {
      v36 = 0;
    }

    v83 = v36;
    re::HashTable<unsigned long,re::IntrospectionStructure const*,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(a4 + 176, &v83, &v82);
    v84 = (v20 + (v83 << 6) + (v83 >> 2)) ^ v83;
    v37 = (*(**(a4 + 8) + 32))(*(a4 + 8), 32, 8);
    *v37 = &unk_1F5D035B0;
    *(v37 + 1) = 0;
    *(v37 + 2) = 0;
    *(v37 + 3) = 0x3F80000000000000;
    v82 = v37;
    v38 = *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a4 + 64, &v84, &v82);
    v39.i64[0] = *(v8 + 316);
    v39.i64[1] = *(v8 + 304);
    *(v38 + 8) = vcvtq_f32_u32(v39);
    *(v38 + 24) = 0x3F80000000000000;
    v40 = "N2re22MeshLodSelectInputDataE";
    if (("N2re22MeshLodSelectInputDataE" & 0x8000000000000000) != 0)
    {
      v41 = 5381;
      v42 = ("N2re22MeshLodSelectInputDataE" & 0x7FFFFFFFFFFFFFFFLL);
      do
      {
        v40 = v41;
        v43 = *v42++;
        v41 = (33 * v41) ^ v43;
      }

      while (v43);
    }

    v84 = (v20 + (v40 << 6) + (v40 >> 2)) ^ v40;
    v44 = (*(**(a3 + 40) + 32))(*(a3 + 40), 320, 16);
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0u;
    *(v44 + 48) = 0u;
    *(v44 + 64) = 0u;
    *(v44 + 80) = 0u;
    *(v44 + 96) = 0u;
    *(v44 + 112) = 0u;
    *(v44 + 128) = 0u;
    *(v44 + 144) = 0u;
    *(v44 + 160) = 0u;
    *(v44 + 176) = 0u;
    *(v44 + 192) = 0u;
    *(v44 + 208) = 0u;
    *(v44 + 224) = 0u;
    *(v44 + 240) = 0u;
    *(v44 + 256) = 0u;
    *(v44 + 272) = 0u;
    *(v44 + 288) = 0u;
    *(v44 + 304) = 0u;
    *v44 = &unk_1F5D069E0;
    *(v44 + 16) = 0u;
    *(v44 + 32) = 0u;
    *(v44 + 48) = 0u;
    *(v44 + 64) = 0u;
    *(v44 + 80) = 0;
    *(v44 + 84) = xmmword_1E30806D0;
    *(v44 + 100) = 0xBDCCCCCD3DCCCCCDLL;
    *(v44 + 112) = xmmword_1E30476A0;
    *(v44 + 128) = 1;
    v83 = v44;
    v45 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a3 + 96, &v84, &v83);
    v46 = *v45;
    v47 = *(v8 + 336);
    v48 = *(v8 + 352);
    v49 = *(v8 + 384);
    *(v46 + 48) = *(v8 + 368);
    *(v46 + 64) = v49;
    *(v46 + 16) = v47;
    *(v46 + 32) = v48;
    v51 = *(v8 + 432);
    v50 = *(v8 + 448);
    v52 = *(v8 + 416);
    *(v46 + 144) = *(v8 + 464);
    *(v46 + 112) = v51;
    *(v46 + 128) = v50;
    *(v46 + 96) = v52;
    *(v46 + 80) = *(v8 + 400);
    if (*(v46 + 160))
    {
      if ((*(v8 + 480) & 1) == 0)
      {
        *(v46 + 160) = 0;
        goto LABEL_37;
      }
    }

    else
    {
      if ((*(v8 + 480) & 1) == 0)
      {
        goto LABEL_37;
      }

      *(v46 + 160) = 1;
    }

    v53 = *(v8 + 496);
    v54 = *(v8 + 512);
    v55 = *(v8 + 544);
    *(v46 + 208) = *(v8 + 528);
    *(v46 + 224) = v55;
    *(v46 + 176) = v53;
    *(v46 + 192) = v54;
LABEL_37:
    if (*(v46 + 240))
    {
      if ((*(v8 + 560) & 1) == 0)
      {
        *(v46 + 240) = 0;
LABEL_43:
        re::RealityEmitterBase::addSceneDataToDataStore(v45, a2, v19, a4);
        if (v79)
        {
          v59 = v81;
        }

        else
        {
          v59 = v13;
        }

        v60 = strlen(v59);
        v61 = re::GrowableLinearAllocator::alloc((*(a3 + 4048) + 24), v60 + 1, 0);
        memcpy(v61, v59, v60);
        *(v61 + v60) = 0;
        re::RenderFrame::emitGraph(a3, "Filter", v61);
        if (v78)
        {
          if (v79)
          {
            (*(*v78 + 40))();
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      if ((*(v8 + 560) & 1) == 0)
      {
        goto LABEL_43;
      }

      *(v46 + 240) = 1;
    }

    v56 = *(v8 + 576);
    v57 = *(v8 + 592);
    v58 = *(v8 + 624);
    *(v46 + 288) = *(v8 + 608);
    *(v46 + 304) = v58;
    *(v46 + 256) = v56;
    *(v46 + 272) = v57;
    goto LABEL_43;
  }
}

void re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(uint64_t a1, uint64_t a2, re::RenderFrame *a3, re *a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 168);
  if (v4)
  {
    {
      re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kVisualProxyHighFidelityScopeHash = re::Hash<re::StringSlice>::operator()("VisualProxyHighFidelity", 0x17uLL);
    }

    {
      v12 = re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kVisualProxyHighFidelityScopeHash;
      re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kVisualProxyHighFidelityCombinedScopeHash = ((v12 << 6) + (v12 >> 2) + re::Hash<re::StringSlice>::operator()("RenderFrame", 0xBuLL) - 0x61C8864680B583E9) ^ v12;
    }

    v8 = re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(a4, re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kVisualProxyHighFidelityCombinedScopeHash);
    if (!v8)
    {
      v9 = re::RealityEmitterBase::emitVisualProxyHighFidelityGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::kVisualProxyHighFidelityScopeHash;
      v10 = strlen(*(a2 + 48));
      if (v10)
      {
        MurmurHash3_x64_128(*(a2 + 48), v10, 0, v13);
        v11 = (v13[1] - 0x61C8864680B583E9 + (v13[0] << 6) + (v13[0] >> 2)) ^ v13[0];
      }

      else
      {
        v11 = 0;
      }

      v8 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(a4, ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + v11) ^ v9);
    }

    re::DynamicArray<re::ProviderHandle>::operator=((v8 + 8), v4);
    re::RenderFrame::emitGraph(a3, "VisualProxyHighFidelity", *(a2 + 48));
  }
}

void re::RealityEmitterBase::emitCameraGraphs(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, char a6)
{
  v12 = *(a3 + 176);
  if (v12)
  {
    v24 = *(v12 + 40);
    if (v24)
    {
      for (i = 0; i != v24; ++i)
      {
        v14 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v12, i);
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(v14 + 32);
          v17 = 1552 * v15;
          do
          {
            re::RealityEmitterBase::viewHandler<re::CameraView>(a1, a2, a3, a4, a5, v16, a6);
            v16 += 1552;
            v17 -= 1552;
          }

          while (v17);
        }
      }
    }
  }

  v18 = *(a3 + 184);
  if (v18)
  {
    v25 = *(v18 + 40);
    if (v25)
    {
      for (j = 0; j != v25; ++j)
      {
        v20 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v18, j);
        v21 = *(v20 + 16);
        if (v21)
        {
          v22 = *(v20 + 32);
          v23 = 3120 * v21;
          do
          {
            re::RealityEmitterBase::viewHandler<re::CameraMultiView>(a1, a2, a3, a4, a5, v22, a6);
            v22 += 3120;
            v23 -= 3120;
          }

          while (v23);
        }
      }
    }
  }
}

void re::RealityEmitterBase::emitEmbeddedStereoContentCameraGraphs(uint64_t a1, uint64_t a2, uint64_t a3, re::RenderFrame *a4, uint64_t a5, char a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v39 = *(a3 + 192);
  if (v39)
  {
    v37 = *(v39 + 40);
    if (v37)
    {
      v7 = 0;
      do
      {
        v41 = v7;
        v8 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v39, v7);
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = 0;
          v11 = *(v8 + 32);
          v12 = 1648 * v9;
          do
          {
            v13 = v11 + v10;
            if (*(v11 + v10 + 8))
            {
              v14 = *(v13 + 16);
            }

            else
            {
              v14 = (v13 + 9);
            }

            v48[0] = &unk_1F5D12920;
            v49 = 0;
            v15 = v11 + v10;
            if (*(v11 + v10 + 1568) == 1)
            {
              v49 = 1;
              v16 = *(v15 + 1600);
              v50 = *(v15 + 1584);
              v51 = v16;
            }

            v52 = *(v15 + 1616);
            MurmurHash3_x64_128("Camera", 6uLL, 0, &v53);
            v17 = v53;
            v18 = v54;
            v19 = strlen(v14);
            v20 = 0x9E3779B97F4A7C17;
            if (v19)
            {
              MurmurHash3_x64_128(v14, v19, 0, &v53);
              v20 = ((v54 - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53) - 0x61C8864680B583E9;
            }

            v21 = (v18 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17;
            re::RenderGraphDataStore::add<re::PortalViewData,re::PortalViewData>(a5, ((v21 >> 2) + (v21 << 6) + v20) ^ v21, v48);
            re::RealityEmitterBase::viewHandler<re::CameraView>(a1, a2, a3, a4, a5, v11 + v10, a6);
            v10 += 1648;
          }

          while (v12 != v10);
        }

        v7 = v41 + 1;
      }

      while (v41 + 1 != v37);
    }
  }

  v40 = *(a3 + 200);
  if (v40)
  {
    v38 = *(v40 + 40);
    if (v38)
    {
      v22 = 0;
      do
      {
        v42 = v22;
        v23 = re::BucketArray<re::VisualProxyHighFidelityHandlerData,4ul>::operator[](v40, v22);
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = 0;
          v26 = *(v23 + 32);
          v27 = 3216 * v24;
          do
          {
            v28 = v26 + v25;
            if (*(v26 + v25 + 8))
            {
              v29 = *(v28 + 16);
            }

            else
            {
              v29 = (v28 + 9);
            }

            v48[0] = &unk_1F5D12920;
            v49 = 0;
            v30 = v26 + v25;
            if (*(v26 + v25 + 3136) == 1)
            {
              v49 = 1;
              v31 = *(v30 + 3168);
              v50 = *(v30 + 3152);
              v51 = v31;
            }

            v52 = *(v30 + 3184);
            MurmurHash3_x64_128("Camera", 6uLL, 0, &v53);
            v32 = v53;
            v33 = v54;
            v34 = strlen(v29);
            v35 = 0x9E3779B97F4A7C17;
            if (v34)
            {
              MurmurHash3_x64_128(v29, v34, 0, &v53);
              v35 = ((v54 - 0x61C8864680B583E9 + (v53 << 6) + (v53 >> 2)) ^ v53) - 0x61C8864680B583E9;
            }

            v36 = (v33 - 0x61C8864680B583E9 + (v32 << 6) + (v32 >> 2)) ^ v32;
            re::RenderGraphDataStore::add<re::PortalViewData,re::PortalViewData>(a5, ((v36 >> 2) + (v36 << 6) + v35) ^ v36, v48);
            re::RealityEmitterBase::viewHandler<re::CameraMultiView>(a1, a2, a3, a4, a5, v26 + v25, a6);
            v25 += 3216;
          }

          while (v27 != v25);
        }

        v22 = v42 + 1;
      }

      while (v42 + 1 != v38);
    }
  }
}

void *re::FixedArray<float>::copy(void *result, void *__dst, const void *a3, unint64_t a4)
{
  if (result < a4)
  {
    re::internal::assertLog(4, __dst, a3, "assertion failure: '%s' (%s:line %i) Too much data to copy.", "requiredSize <= m_size", "copy", 363, v4, v5);
    result = _os_crash("assertion failure: (requiredSize <= m_size) Too much data to copy.");
    __break(1u);
  }

  else if (a4)
  {

    return memmove(__dst, a3, 4 * a4);
  }

  return result;
}

uint64_t re::RealityEmitterBase::addSceneDataToDataStore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 48);
  v8 = *a2;
  v12 = &unk_1F5D06A20;
  re::DynamicString::DynamicString(&v13, v7, v8);
  re::RenderGraphDataStore::add<re::SceneScope,re::SceneScope>(a4, a3, &v12);
  v10 = &unk_1F5D06A60;
  v11 = *(a2 + 392);
  re::RenderGraphDataStore::add<re::SceneIndexData,re::SceneIndexData>(a4, a3, &v10);
  v12 = &unk_1F5D06A20;
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphDataStore::add<re::SimplifiedMeshBufferIndex,unsigned char &>(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = "N2re25SimplifiedMeshBufferIndexE";
  if (("N2re25SimplifiedMeshBufferIndexE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re25SimplifiedMeshBufferIndexE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 16, 8);
  v10 = *a3;
  *v9 = &unk_1F5D12BC0;
  *(v9 + 8) = v10;
  v12 = v9;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v13, &v12);
}

uint64_t re::RenderGraphDataStore::tryGet<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 24) + 4 * (v6 % *(a1 + 40)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>>(re *a1, uint64_t a2)
{
  v3 = "N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re27RenderGraphDataStoreWrapperINS_34VisualProxyHighFidelityHandlerDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v11 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 48, 8);
  v8[4] = 0;
  v8[5] = 0;
  *v8 = &unk_1F5D12D80;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  *(v8 + 8) = 0;
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v11, &v10);
}

uint64_t re::RenderGraphDataStore::add<re::PortalViewData,re::PortalViewData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re14PortalViewDataE";
  if (("N2re14PortalViewDataE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re14PortalViewDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v14 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = (*(**(a1 + 8) + 32))(*(a1 + 8), 80, 16);
  *v9 = &unk_1F5D12920;
  v10 = *(a3 + 16);
  *(v9 + 16) = v10;
  if (v10 == 1)
  {
    v11 = *(a3 + 48);
    *(v9 + 32) = *(a3 + 32);
    *(v9 + 48) = v11;
  }

  *(v9 + 64) = *(a3 + 64);
  v13 = v9;
  return re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 64, &v14, &v13);
}

void re::RealityEmitterBase::execute(re::RealityEmitterBase *this, re::RenderManager *a2)
{
  v4 = mach_absolute_time();
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v41, 5089, a2, *(*(a2 + 18) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  (*(*this + 64))(this, a2);
  re::RenderGraphEmitterBase::execute(this, a2);
  v7 = *(a2 + 14);
  if (v7)
  {
    v7 = re::RenderFrameBox::get((v7 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  if ((atomic_load_explicit(&qword_1EE1C0020, memory_order_acquire) & 1) == 0)
  {
    v39 = v7;
    v40 = __cxa_guard_acquire(&qword_1EE1C0020);
    v7 = v39;
    if (v40)
    {
      qword_1EE1C0018 = re::getCombinedScopeHash("RenderFrameContext", "RenderFrame", v6);
      __cxa_guard_release(&qword_1EE1C0020);
      v7 = v39;
    }
  }

  v8 = "N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE";
  v9 = "N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x8000000000000000) != 0)
  {
    v10 = ("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  v13 = v7 + 96;
  if (*(v7 + 96))
  {
    v14 = (qword_1EE1C0018 - 0x61C8864680B583E9 + (v9 << 6) + (v9 >> 2)) ^ v9;
    v15 = *(v7 + 120);
    v16 = *(v7 + 104);
    v17 = *(v16 + 4 * (v14 % v15));
    if (v17 != 0x7FFFFFFF)
    {
      v18 = *(v7 + 112);
      while (*(v18 + 24 * v17 + 8) != v14)
      {
        v17 = *(v18 + 24 * v17) & 0x7FFFFFFF;
        if (v17 == 0x7FFFFFFF)
        {
          goto LABEL_35;
        }
      }

      if (*(v18 + 24 * v17 + 16))
      {
        if (("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x8000000000000000) != 0)
        {
          v19 = ("N2re27RenderGraphDataStoreWrapperINS_18RenderFrameContextEEE" & 0x7FFFFFFFFFFFFFFFLL);
          v20 = 5381;
          do
          {
            v8 = v20;
            v21 = *v19++;
            v20 = (33 * v20) ^ v21;
          }

          while (v21);
        }

        v22 = (qword_1EE1C0018 - 0x61C8864680B583E9 + (v8 << 6) + (v8 >> 2)) ^ v8;
        v23 = v22 % v15;
        v24 = *(v16 + 4 * v23);
        if (v24 != 0x7FFFFFFF)
        {
          v25 = *(v16 + 4 * v23);
          while (*(v18 + 24 * v25 + 8) != v22)
          {
            v25 = *(v18 + 24 * v25) & 0x7FFFFFFF;
            if (v25 == 0x7FFFFFFF)
            {
              goto LABEL_35;
            }
          }

          if (*(v18 + 24 * v24 + 8) == v22)
          {
            v26 = *(v16 + 4 * v23);
            v24 = 0x7FFFFFFF;
          }

          else
          {
            v27 = *(v18 + 24 * v24) & 0x7FFFFFFF;
            v26 = 0x7FFFFFFF;
            if (v27 != 0x7FFFFFFF)
            {
              if (*(v18 + 24 * v27 + 8) == v22)
              {
                v26 = *(v18 + 24 * v24) & 0x7FFFFFFF;
              }

              else
              {
                v28 = *(v18 + 24 * v27) & 0x7FFFFFFF;
                v26 = 0x7FFFFFFF;
                if (v28 != 0x7FFFFFFF)
                {
                  v26 = 0x7FFFFFFF;
                  while (1)
                  {
                    v24 = v28;
                    if (*(v18 + 24 * v28 + 8) == v22)
                    {
                      break;
                    }

                    v28 = *(v18 + 24 * v28) & 0x7FFFFFFF;
                    LODWORD(v27) = v24;
                    if (v28 == 0x7FFFFFFF)
                    {
                      goto LABEL_34;
                    }
                  }

                  v26 = v28;
                }

                v24 = v27;
              }
            }
          }

LABEL_34:
          v42 = v22;
          v43 = v23;
          v44 = v26;
          v45 = v24;
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal(v13, &v42);
        }
      }
    }
  }

LABEL_35:
  v29 = *(a2 + 14);
  if (v29)
  {
    v30 = *(v29 + 1664);
    if (v30)
    {
      v30 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v30);
      if (v30)
      {
LABEL_41:
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v30);
        if (isStatisticCollectionEnabled)
        {
          v33 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v34 = mach_absolute_time();
          v35 = *(v33 + 152);
          if (v35)
          {
            v36 = v35[752].u64[0];
            if (v36 >= v34 - v4)
            {
              v36 = v34 - v4;
            }

            v35[752].i64[0] = v36;
            v37 = v35[752].u64[1];
            if (v37 <= v34 - v4)
            {
              v37 = v34 - v4;
            }

            v35[752].i64[1] = v37;
            v38 = vdupq_n_s64(1uLL);
            v38.i64[0] = v34 - v4;
            v35[753] = vaddq_s64(v35[753], v38);
            *(v33 + 184) = 0;
          }
        }

        goto LABEL_48;
      }

      v29 = *(a2 + 14);
      if (!v29)
      {
        goto LABEL_48;
      }
    }

    v31 = *(v29 + 1648);
    if (!v31 || (*(v31 + 296) & 1) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

LABEL_48:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v41, v5, v6);
}

unint64_t re::RenderGraphUpdateMaterialTextureSource::prepareFrame(re::RenderGraphUpdateMaterialTextureSource *this, const char *a2, const char *a3, re::RenderFrame *a4, const re::DynamicString *a5)
{
  v8 = 0xBF58476D1CE4E5B9;
  if (*(a4 + 1))
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = a4 + 9;
  }

  {
    v8 = 0;
  }

  return (((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) + 0x227C153807781E51) ^ 0x7D937EEF0B15A0E8;
}

uint64_t anonymous namespace::getSourceTable(_anonymous_namespace_ *this, const char *a2, const char *a3, const char *a4, re::RenderFrame *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!strcmp(this, "global"))
  {
    v11 = *(*(a4 + 1) + 24);

    return re::MaterialManager::findTextureTableByName(v11, this);
  }

  else
  {
    v9 = strlen(a2);
    if (v9)
    {
      MurmurHash3_x64_128(a2, v9, 0, &v24);
      v10 = (v25 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24;
    }

    else
    {
      v10 = 0;
    }

    v13 = strlen(a3);
    if (v13)
    {
      MurmurHash3_x64_128(a3, v13, 0, &v24);
      v14 = ((v25 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24) - 0x61C8864680B583E9;
    }

    else
    {
      v14 = 0x9E3779B97F4A7C17;
    }

    v15 = (v10 >> 2) + (v10 << 6) + v14;
    v16 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>((a4 + 32), v15 ^ v10);
    if (v16)
    {
      goto LABEL_12;
    }

    v18 = re::RenderGraphDataStore::tryGet<re::SceneScope>((a4 + 32), v15 ^ v10);
    if (!v18)
    {
      goto LABEL_22;
    }

    v19 = v18;
    if ((atomic_load_explicit(&qword_1EE1C0070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0070))
    {
      qword_1EE1C0068 = re::Hash<re::StringSlice>::operator()("SceneIndex", 0xAuLL);
      __cxa_guard_release(&qword_1EE1C0070);
    }

    v20 = (*(v19 + 16) & 1) != 0 ? *(v19 + 24) : (v19 + 17);
    v21 = qword_1EE1C0068;
    v22 = strlen(v20);
    if (v22)
    {
      MurmurHash3_x64_128(v20, v22, 0, &v24);
      v23 = (v25 - 0x61C8864680B583E9 + (v24 << 6) + (v24 >> 2)) ^ v24;
    }

    else
    {
      v23 = 0;
    }

    v16 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>((a4 + 32), ((v21 << 6) - 0x61C8864680B583E9 + (v21 >> 2) + v23) ^ v21);
    if (v16)
    {
LABEL_12:
      v17 = *(v16 + 8);
    }

    else
    {
LABEL_22:
      v17 = 0;
    }

    return re::MaterialManager::findPerSceneTextureTableByName(*(*(a4 + 1) + 24), this, v17);
  }
}

uint64_t re::RenderGraphUpdateMaterialTextureSource::configure(re::RenderGraphUpdateMaterialTextureSource *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  if (*(this + 34))
  {
    v8 = *(this + 35);
  }

  else
  {
    v8 = this + 273;
  }

  result = strcmp(v8, "renderGraph");
  if (result)
  {
    v11 = result != 0;
  }

  else
  {
    v11 = 1;
  }

  *(this + 344) = v11;
  return result;
}

void re::RenderGraphUpdateMaterialTextureSource::setup(re::RenderGraphUpdateMaterialTextureSource *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  if (*(this + 344) == 1)
  {
    v17 = v6;
    v18 = v5;
    v19 = v3;
    v20 = v4;
    v9 = *(this + 82);
    if (v9)
    {
      v10 = 0;
      v11 = *(this + 39);
      while (1)
      {
        v12 = *v11;
        v11 += 16;
        if (v12 < 0)
        {
          break;
        }

        if (v9 == ++v10)
        {
          LODWORD(v10) = *(this + 82);
          break;
        }
      }
    }

    else
    {
      LODWORD(v10) = 0;
    }

    while (v10 != v9)
    {
      v13 = *(this + 39);
      memset(v15, 0, 7);
      v16 = 2;
      re::RenderGraphBuilder::read(a2, v13 + (v10 << 6) + 40, v15);
      v14 = *(this + 82);
      if (v14 <= v10 + 1)
      {
        v14 = v10 + 1;
      }

      while (v14 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(this + 39) + (v10 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_16;
        }
      }

      LODWORD(v10) = v14;
LABEL_16:
      ;
    }

    *(a2 + 592) = 1;
  }
}

void re::RenderGraphUpdateMaterialTextureSource::execute(re::RenderGraphUpdateMaterialTextureSource *this, re::RenderGraphContext *a2)
{
  v35[2] = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v34, 5044, 0, 0, 0, 0);
  if (*(this + 344) == 1)
  {
    v6 = *(this + 34);
    if (v6)
    {
      v7 = *(this + 35);
    }

    else
    {
      v7 = this + 273;
    }

    if (!strcmp(v7, "global"))
    {
      if (v6)
      {
        v12 = *(this + 35);
      }

      else
      {
        v12 = this + 273;
      }

      TextureTableByName = re::MaterialManager::findTextureTableByName(*(*(a2 + 1) + 24), v12);
    }

    else
    {
      v8 = this + 273;
      if (v6)
      {
        v9 = *(this + 35);
      }

      else
      {
        v9 = this + 273;
      }

      if (!strcmp(v9, "renderGraph"))
      {
        v13 = (*a2 + 368);
        goto LABEL_31;
      }

      v10 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (v10)
      {
        goto LABEL_11;
      }

      v15 = re::RenderGraphDataStore::tryGet<re::SceneScope>(*(a2 + 146), *(*(a2 + 5) + 48));
      if (!v15)
      {
        goto LABEL_26;
      }

      if ((atomic_load_explicit(&qword_1EE1C0080, memory_order_acquire) & 1) == 0)
      {
        v31 = v15;
        v32 = __cxa_guard_acquire(&qword_1EE1C0080);
        v15 = v31;
        if (v32)
        {
          qword_1EE1C0078 = re::Hash<re::StringSlice>::operator()("SceneIndex", 0xAuLL);
          __cxa_guard_release(&qword_1EE1C0080);
          v15 = v31;
        }
      }

      v16 = (*(v15 + 16) & 1) != 0 ? *(v15 + 24) : (v15 + 17);
      v17 = qword_1EE1C0078;
      v18 = strlen(v16);
      if (v18)
      {
        MurmurHash3_x64_128(v16, v18, 0, v35);
        v19 = (v35[1] - 0x61C8864680B583E9 + (v35[0] << 6) + (v35[0] >> 2)) ^ v35[0];
      }

      else
      {
        v19 = 0;
      }

      v10 = re::RenderGraphDataStore::tryGet<re::SceneIndexData>(*(a2 + 146), ((v17 << 6) - 0x61C8864680B583E9 + (v17 >> 2) + v19) ^ v17);
      if (v10)
      {
LABEL_11:
        v11 = *(v10 + 8);
      }

      else
      {
LABEL_26:
        v11 = 0;
      }

      if (*(this + 272))
      {
        v8 = *(this + 35);
      }

      TextureTableByName = re::MaterialManager::findPerSceneTextureTableByName(*(*(a2 + 1) + 24), v8, v11);
    }

    v13 = TextureTableByName;
LABEL_31:
    v20 = *(this + 82);
    if (!v20)
    {
      LODWORD(v21) = 0;
      goto LABEL_55;
    }

    v21 = 0;
    v22 = *(this + 39);
    do
    {
      v23 = *v22;
      v22 += 16;
      if (v23 < 0)
      {
        goto LABEL_55;
      }

      ++v21;
    }

    while (v20 != v21);
    for (LODWORD(v21) = *(this + 82); ; LODWORD(v21) = v30)
    {
LABEL_55:
      if (v21 == v20)
      {
        goto LABEL_56;
      }

      v24 = *(this + 39) + (v21 << 6);
      if ((*(v24 + 16) & 1) == 0)
      {
        break;
      }

      v25 = *(v24 + 24);
      re::RenderGraphContext::metalTexture(a2, v24 + 40, 0, 0, &v33);
      if (v25)
      {
        goto LABEL_41;
      }

      v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_47:
      v35[0] = v26;
      re::TextureTable::setTexture(v13, v35, &v33);
      if (v33)
      {
      }

      v30 = *(this + 82);
      if (v30 <= v21 + 1)
      {
        v30 = v21 + 1;
      }

      while (v30 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(*(this + 39) + (v21 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_55;
        }
      }
    }

    v25 = (v24 + 17);
    re::RenderGraphContext::metalTexture(a2, v24 + 40, 0, 0, &v33);
LABEL_41:
    v26 = *v25;
    if (*v25)
    {
      v27 = v25[1];
      if (v27)
      {
        v28 = (v25 + 2);
        do
        {
          v26 = 31 * v26 + v27;
          v29 = *v28++;
          v27 = v29;
        }

        while (v29);
      }

      v26 &= ~0x8000000000000000;
    }

    goto LABEL_47;
  }

LABEL_56:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v34, v4, v5);
}

void *re::allocInfo_RealityEmitterBase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0048, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0048))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C0148, "RealityEmitterBase");
    __cxa_guard_release(&qword_1EE1C0048);
  }

  return &unk_1EE1C0148;
}

void re::initInfo_RealityEmitterBase(re *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xABD03B7E6DF05E1ELL;
  v21[1] = "RealityEmitterBase";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1C0050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0050))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphEmitterBase(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphEmitterBase";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C00D8 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_BOOL(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "displayWireframe";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x8800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C00E0 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::mtl::introspect_PixelFormat(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "depthFormat";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x8C00000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C00E8 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::mtl::introspect_PixelFormat(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "stencilFormat";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x9000000005;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C00F0 = v19;
    __cxa_guard_release(&qword_1EE1C0050);
  }

  *(this + 2) = 0x2D800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1C00D8;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::allocInfo_RenderGraphUpdateMaterialTextureSource(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C0058, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0058))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C01D8, "RenderGraphUpdateMaterialTextureSource");
    __cxa_guard_release(&qword_1EE1C0058);
  }

  return &unk_1EE1C01D8;
}

void re::initInfo_RenderGraphUpdateMaterialTextureSource(re *this, re::IntrospectionBase *a2)
{
  v16[0] = 0x5BE3C778DE9B131CLL;
  v16[1] = "RenderGraphUpdateMaterialTextureSource";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1C0060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0060))
  {
    v5 = re::introspectionAllocator();
    v6 = re::introspect_RenderGraphNode(1);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "RenderGraphNode";
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v7 + 32) = 0;
    *(v7 + 40) = 3;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C00C0 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::IntrospectionInfo<re::DynamicString>::get(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "sourceName";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x10800000001;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C00C8 = v11;
    v12 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v12, v13);
    v14 = (*(*v12 + 32))(v12, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "targetsToUpdate";
    *(v14 + 16) = &qword_1EE1C00F8;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x12800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1C00D0 = v14;
    __cxa_guard_release(&qword_1EE1C0060);
  }

  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1C00C0;
  *(this + 9) = re::internal::defaultConstruct<re::RenderGraphUpdateMaterialTextureSource>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RenderGraphUpdateMaterialTextureSource>;
  *(this + 13) = re::internal::defaultConstructV2<re::RenderGraphUpdateMaterialTextureSource>;
  *(this + 14) = re::internal::defaultDestructV2<re::RenderGraphUpdateMaterialTextureSource>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C00B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C00B8))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1C00F8);
    qword_1EE1C00F8 = &unk_1F5D12E28;
    __cxa_guard_release(&qword_1EE1C00B8);
  }

  if ((_MergedGlobals_522 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_RenderGraphTargetHandle(1, v3);
    if ((_MergedGlobals_522 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_522 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1C00F8, 0);
      qword_1EE1C0108 = 0x3000000007;
      dword_1EE1C0110 = v6;
      word_1EE1C0114 = 0;
      *&xmmword_1EE1C0118 = 0;
      *(&xmmword_1EE1C0118 + 1) = 0xFFFFFFFFLL;
      qword_1EE1C0128 = v2;
      qword_1EE1C0130 = 0;
      qword_1EE1C0138 = v5;
      qword_1EE1C0140 = 0;
      qword_1EE1C00F8 = &unk_1F5D12E28;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1C00F8);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1C0118 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RenderGraphUpdateMaterialTextureSource>(int a1, int a2, re::RenderGraphNode *this)
{
  v4 = re::RenderGraphNode::RenderGraphNode(this);
  *this = &unk_1F5D12448;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  re::DynamicString::setCapacity(this + 33, 0);
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 41) = 0x7FFFFFFF00000000;
  *(this + 84) = 0;
  *(this + 344) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphUpdateMaterialTextureSource>(uint64_t a1)
{
  v2 = re::RenderGraphNode::RenderGraphNode(a1);
  *v2 = &unk_1F5D12448;
  v3 = (v2 + 264);
  *(v2 + 264) = 0u;
  *(v2 + 280) = 0u;
  re::DynamicString::setCapacity(v3, 0);
  result = 0.0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0x7FFFFFFF00000000;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  return result;
}

void re::RenderGraphUpdateMaterialTextureSource::~RenderGraphUpdateMaterialTextureSource(re::RenderGraphUpdateMaterialTextureSource *this)
{
  *this = &unk_1F5D12448;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 37);
  re::DynamicString::deinit((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  *this = &unk_1F5D12448;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 37);
  re::DynamicString::deinit((this + 264));
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::UploadMultiSceneConstantsRenderGraphProvider::~UploadMultiSceneConstantsRenderGraphProvider(re::UploadMultiSceneConstantsRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::UploadMultiSceneConstantsRenderGraphProvider::prepareFrame(re::UploadMultiSceneConstantsRenderGraphProvider *this, char *a2, char *a3, re::RenderFrame *a4)
{
  v47 = 0x5216D4B08B8035A8;
  v48 = "TonemapLUTTexture_Current";
  v49 = 0xF0C3C206081611F8;
  v50 = "TonemapLUTTexture_Previous";
  v43 = 0x667334BF02C73D6CLL;
  v44 = "TonemapLUTTexture0";
  v45 = 0x667334BF02C73D6ELL;
  v46 = "TonemapLUTTexture1";
  v39 = 0x273652880D147520;
  v40 = "TonemapInverseLUTTexture_Current";
  v41 = 0xBF93FF1EB909C180;
  v42 = "TonemapInverseLUTTexture_Previous";
  v35 = 0xC36BD034B306F4F4;
  v36 = "TonemapInverseLUTTexture0";
  v37 = 0xC36BD034B306F4F6;
  v38 = "TonemapInverseLUTTexture1";
  v31 = 0xBEA741F8351B3A5CLL;
  v32 = "ISPTonemapLUTTexture_Current";
  v33 = 0x1640FDB391DBA3C4;
  v34 = "ISPTonemapLUTTexture_Previous";
  v27 = 0x8C66F49CEF715B38;
  v28 = "ISPTonemapLUTTexture0";
  v29 = 0x8C66F49CEF715B3ALL;
  v30 = "ISPTonemapLUTTexture1";
  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        v9 = a3 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v61 = v7;
  v11 = *(*a4 + 296);
  v57 = 0;
  v58 = 1065353216;
  v60 = xmmword_1E3062D70;
  v56 = 132;
  LODWORD(v55) = 2;
  if (*(a4 + 96) >= 0)
  {
    v12 = *(a4 + 96) & 1;
  }

  else
  {
    v12 = -(*(a4 + 96) & 1);
  }

  v54[0] = 0x57914155EAD10A54;
  v54[1] = "TonemapParamsBuffer_Current";
  v54[2] = 0x9A96EA0C92DFD2CCLL;
  v54[3] = "TonemapParamsBuffer_Previous";
  v13 = v12;
  v59 = 0xFFFFFFFF00000000;
  if (v12 >= 2)
  {
    re::internal::assertLog(6, a2, NAN, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v12, 2, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50);
    result = _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v25, v26);
    __break(1u);
  }

  else
  {
    v14 = v54[2 * v12] >> 1;
    v51 = 0x7B89B19BECFC8920;
    v52 = v14;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v11, &v61, &v52, &v51, a4, &v55, &v53, 0);
    v15 = v54[2 * (1 - v13)] >> 1;
    v51 = 0x7B89B19BECFC8921;
    v52 = v15;
    re::RenderGraphPersistentResourceManager::registerPersistentBuffer(v11, &v61, &v52, &v51, a4, &v55, &v53, 0);
    for (i = 2; i != -2; i -= 2)
    {
      re::StringID::destroyString(&v54[i]);
    }

    re::UploadMultiSceneConstantsRenderGraphProvider::registerTonemappingLUTTextures(a3, a4, &v47, &v43);
    re::UploadMultiSceneConstantsRenderGraphProvider::registerTonemappingLUTTextures(a3, a4, &v39, &v35);
    re::UploadMultiSceneConstantsRenderGraphProvider::registerTonemappingLUTTextures(a3, a4, &v31, &v27);
    v55 = 0x286AE258F5FA4B8ELL;
    v56 = "UploadMultiSceneConstantsRenderGraphProvider";
    v17 = re::RenderGraphProviderBase::generateScopeHash(&v55, a2, a3);
    for (j = 16; j != -16; j -= 16)
    {
      re::StringID::destroyString((&v27 + j));
    }

    for (k = 16; k != -16; k -= 16)
    {
      re::StringID::destroyString((&v31 + k));
    }

    for (m = 16; m != -16; m -= 16)
    {
      re::StringID::destroyString((&v35 + m));
    }

    for (n = 16; n != -16; n -= 16)
    {
      re::StringID::destroyString((&v39 + n));
    }

    for (ii = 16; ii != -16; ii -= 16)
    {
      re::StringID::destroyString((&v43 + ii));
    }

    for (jj = 16; jj != -16; jj -= 16)
    {
      re::StringID::destroyString((&v47 + jj));
    }

    return v17;
  }

  return result;
}

uint64_t re::UploadMultiSceneConstantsRenderGraphProvider::provide(re::UploadMultiSceneConstantsRenderGraphProvider *this, const char *a2, char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "UploadMultiSceneConstants", 1uLL);
  v8 = re::globalAllocators(RenderGraph);
  v9 = (*(*v8[2] + 32))(v8[2], 328, 8);
  v10 = re::RenderGraphNode::RenderGraphNode(v9, "UploadTonemapConstants");
  *v10 = &unk_1F5D14DB8;
  v11 = (v10 + 264);
  *(v10 + 33) = 0;
  *(v10 + 34) = -1;
  *(v10 + 35) = 0;
  *(v10 + 36) = -1;
  *(v10 + 37) = 0;
  *(v10 + 38) = -1;
  *(v10 + 39) = 0;
  *(v10 + 40) = -1;
  v26[0] = v10;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v26);
  *(v9 + 24) = *(RenderGraph + 10);
  *(v9 + 32) = *(RenderGraph + 12);
  *(v9 + 48) = *(RenderGraph + 13);
  if (a3)
  {
    v12 = *a3;
    if (*a3)
    {
      v13 = a3[1];
      if (v13)
      {
        v14 = a3 + 2;
        do
        {
          v12 = 31 * v12 + v13;
          v15 = *v14++;
          v13 = v15;
        }

        while (v15);
      }

      v16 = ((v12 & 0x7FFFFFFFFFFFFFFFLL) - 0x64AE335E693A181FLL) ^ 0x2BC8A0AAF568852ALL;
    }

    else
    {
      v16 = 0xB0996C0B63AD62CBLL;
    }
  }

  else
  {
    v16 = 0x30996C0B63AD62CALL;
  }

  v26[1] = -1;
  v27 = 0;
  v28 = 0x203F800000;
  v29 = -1;
  LODWORD(v26[0]) = 2;
  v30 = -1;
  v31 = v16;
  re::RenderFrame::createBuffer(&v25, a4, v26, "TonemapParamsBuffer_Current");
  *v11 = v25;
  *&v24.var0 = 0x5216D4B08B8035A8;
  v24.var1 = "TonemapLUTTexture_Current";
  re::UploadMultiSceneConstantsRenderGraphProvider::createTonemappingLUTTexture((v9 + 280), &v24, a3, a4);
  *&v23.var0 = 0x273652880D147520;
  v23.var1 = "TonemapInverseLUTTexture_Current";
  re::UploadMultiSceneConstantsRenderGraphProvider::createTonemappingLUTTexture((v9 + 296), &v23, a3, a4);
  *&v22.var0 = 0xBEA741F8351B3A5CLL;
  v22.var1 = "ISPTonemapLUTTexture_Current";
  re::UploadMultiSceneConstantsRenderGraphProvider::createTonemappingLUTTexture((v9 + 312), &v22, a3, a4);
  re::RenderGraphNode::configure(v9, a2, a3, a4);
  v18 = re::globalAllocators(v17);
  v19 = (*(*v18[2] + 32))(v18[2], 264, 8);
  v20 = re::RenderGraphNode::RenderGraphNode(v19, "UploadMultiSceneConstants");
  *v20 = &unk_1F5D14D10;
  v26[0] = v20;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, v26);
  *(v19 + 3) = *(RenderGraph + 10);
  *(v19 + 4) = *(RenderGraph + 12);
  *(v19 + 6) = *(RenderGraph + 13);
  return (*(*v19 + 80))(v19, a2, a3, a4);
}

void re::UploadMultiSceneConstantsRenderGraphProvider::registerTonemappingLUTTextures(char *a1, re::RenderFrame *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v7 = *a1;
    if (*a1)
    {
      v8 = a1[1];
      if (v8)
      {
        v9 = a1 + 2;
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }

      v7 &= ~0x8000000000000000;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v30 = 0xFFFFFFFFLL;
  __asm { FMOV            V1.2S, #1.0 }

  v32 = _D1;
  v33 = xmmword_1E30A3B60;
  v27 = xmmword_1E31045F0;
  v34 = 0xFFFF00000001;
  v28 = 0x100000001;
  v39 = v7;
  v26 = 3;
  v31 = 0;
  v35 = -1;
  v36 = -1;
  v38 = 0;
  v29 = 1;
  if (*(a2 + 96) >= 0)
  {
    v16 = *(a2 + 96) & 1;
  }

  else
  {
    v16 = -(*(a2 + 96) & 1);
  }

  v17 = v16;
  v37 = 0uLL;
  if (v16 >= 2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v16, 2);
    _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v21, v22);
    __break(1u);
  }

  else
  {
    v18 = *(*a2 + 296);
    v19 = *(a3 + 16 * v16) >> 1;
    v23 = *a4 >> 1;
    v24 = v19;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v18, &v39, &v24, &v23, a2, &v26, &v25);
    v20 = *(a3 + 16 * (1 - v17)) >> 1;
    v23 = a4[2] >> 1;
    v24 = v20;
    re::RenderGraphPersistentResourceManager::registerPersistentTexture(v18, &v39, &v24, &v23, a2, &v26, &v25);
  }
}

double re::UploadMultiSceneConstantsRenderGraphProvider::createTonemappingLUTTexture(_OWORD *a1, StringID *a2, char *a3, re::RenderFrame *a4)
{
  if (a3)
  {
    v7 = 0x9E3779B97F4A7C17;
    v8 = *a3;
    if (*a3)
    {
      v9 = a3[1];
      if (v9)
      {
        v10 = a3 + 2;
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }

      v7 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9;
    }
  }

  else
  {
    v7 = 0x1E3779B97F4A7C16;
  }

  v22 = 0x200000000;
  v23 = -1;
  v24 = -1;
  v25 = -1;
  v26 = 0;
  v27 = 0;
  __asm { FMOV            V0.2S, #1.0 }

  v28 = _D0;
  v29 = xmmword_1E30A3B60;
  v30 = 0x2000000000;
  v31 = -1;
  v32 = -1;
  v33 = -1;
  v35 = 0;
  v21 = 2;
  v17 = re::StringID::StringID(v20, a2);
  v34 = (v7 + (v20[0] >> 3) + (v20[0] >> 1 << 6)) ^ (v20[0] >> 1);
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  v20[0] = 0;
  v20[1] = &str_67;
  re::RenderFrame::createTarget(&v19, a4, &v21, a2->var1);
  result = *&v19;
  *a1 = v19;
  return result;
}

void re::MipMapGenerationRenderGraphProvider::~MipMapGenerationRenderGraphProvider(re::MipMapGenerationRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::MipMapGenerationRenderGraphProvider::prepareFrame(re::MipMapGenerationRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x20BE0F4953CF4189;
  v5[1] = "MipMapGenerationRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

void re::MipMapGenerationRenderGraphProvider::provide(re::MipMapGenerationRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "MipmapGeneration", 1uLL);
  v8 = re::globalAllocators(RenderGraph);
  v9 = (*(*v8[2] + 32))(v8[2], 264, 8);
  v10 = re::RenderGraphNode::RenderGraphNode(v9, "MipmapGeneration");
  *v10 = &unk_1F5D14860;
  v13 = v10;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v13);
  v11 = *(RenderGraph + 12);
  v12 = *(RenderGraph + 13);
  *(v9 + 3) = *(RenderGraph + 10);
  *(v9 + 4) = v11;
  *(v9 + 6) = v12;

  re::RenderGraphNode::configure(v9, a2, a3, a4);
}

void re::BlurGenerationRenderGraphProvider::~BlurGenerationRenderGraphProvider(re::BlurGenerationRenderGraphProvider *this)
{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  re::AssetHandle::~AssetHandle((this + 40));
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::BlurGenerationRenderGraphProvider::prepareFrame(re::BlurGenerationRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x171CC058D73313EALL;
  v5[1] = "BlurGenerationRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

void re::BlurGenerationRenderGraphProvider::provide(re::BlurGenerationRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "BlurGeneration", 1uLL);
  v9 = re::globalAllocators(RenderGraph);
  v10 = (*(*v9[2] + 32))(v9[2], 312, 8);
  v11 = re::RenderGraphNode::RenderGraphNode(v10, "BlurGeneration");
  *v11 = &unk_1F5D16548;
  v12 = v11 + 264;
  *(v11 + 264) = 0u;
  *(v11 + 280) = 0u;
  *(v11 + 296) = 0u;
  v15 = v11;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v15);
  v13 = *(RenderGraph + 12);
  v14 = *(RenderGraph + 13);
  *(v10 + 3) = *(RenderGraph + 10);
  *(v10 + 4) = v13;
  *(v10 + 6) = v14;
  re::AssetHandle::operator=(v12, this + 5);

  re::RenderGraphBlurGenerationNode::configure(v10, a2, a3, a4);
}

void re::ProbeWriteRenderGraphProvider::~ProbeWriteRenderGraphProvider(re::ProbeWriteRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::ProbeWriteRenderGraphProvider::prepareFrame(re::ProbeWriteRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x18F744CEEF88C8BALL;
  v5[1] = "ProbeWriteRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

uint64_t *re::ProbeWriteRenderGraphProvider::provide(re::ProbeWriteRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "ProbeWrite", 1uLL);
  v8 = re::globalAllocators(RenderGraph);
  v9 = (*(*v8[2] + 32))(v8[2], 272, 8);
  v10 = re::RenderGraphNode::RenderGraphNode(v9, "ProbeClamp");
  *v10 = &unk_1F5D141C8;
  *(v10 + 33) = 0;
  v32 = v10;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v9 + 3) = *(RenderGraph + 10);
  *(v9 + 4) = *(RenderGraph + 12);
  *(v9 + 6) = *(RenderGraph + 13);
  v11 = re::RenderGraphProbeArrayClampNode::configure(v9, a2, a3, a4);
  v12 = re::globalAllocators(v11);
  v13 = (*(*v12[2] + 32))(v12[2], 264, 8);
  v14 = re::RenderGraphNode::RenderGraphNode(v13, "ProbeMipMaps");
  *v14 = &unk_1F5D14270;
  v32 = v14;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v13 + 3) = *(RenderGraph + 10);
  *(v13 + 4) = *(RenderGraph + 12);
  *(v13 + 6) = *(RenderGraph + 13);
  re::RenderGraphNode::configure(v13, a2, a3, a4);
  v16 = re::globalAllocators(v15);
  v17 = (*(*v16[2] + 32))(v16[2], 272, 8);
  v18 = re::RenderGraphNode::RenderGraphNode(v17, "ProbeDiffuseFilter");
  *v18 = &unk_1F5D143C0;
  *(v18 + 33) = 0;
  v32 = v18;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v17 + 3) = *(RenderGraph + 10);
  *(v17 + 4) = *(RenderGraph + 12);
  *(v17 + 6) = *(RenderGraph + 13);
  v19 = re::RenderGraphProbeArrayDiffuseFilterNode::configure(v17, a2, a3, a4);
  v20 = re::globalAllocators(v19);
  v21 = (*(*v20[2] + 32))(v20[2], 272, 8);
  v22 = re::RenderGraphNode::RenderGraphNode(v21, "ProbeSpecularFilter");
  *v22 = &unk_1F5D14318;
  *(v22 + 33) = 0;
  v32 = v22;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v21 + 3) = *(RenderGraph + 10);
  *(v21 + 4) = *(RenderGraph + 12);
  *(v21 + 6) = *(RenderGraph + 13);
  v23 = re::RenderGraphProbeArraySpecularFilterNode::configure(v21, a2, a3, a4);
  v24 = re::globalAllocators(v23);
  v25 = (*(*v24[2] + 32))(v24[2], 264, 8);
  v26 = re::RenderGraphNode::RenderGraphNode(v25, "ProbeCopy");
  *v26 = &unk_1F5D14468;
  v32 = v26;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v25 + 3) = *(RenderGraph + 10);
  *(v25 + 4) = *(RenderGraph + 12);
  *(v25 + 6) = *(RenderGraph + 13);
  re::RenderGraphNode::configure(v25, a2, a3, a4);
  v28 = re::globalAllocators(v27);
  v29 = (*(*v28[2] + 32))(v28[2], 272, 8);
  v30 = re::RenderGraphNode::RenderGraphNode(v29, "ProbeLatLong");
  *v30 = &unk_1F5D14510;
  *(v30 + 33) = 0;
  v32 = v30;
  re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v32);
  *(v29 + 3) = *(RenderGraph + 10);
  *(v29 + 4) = *(RenderGraph + 12);
  *(v29 + 6) = *(RenderGraph + 13);

  return re::RenderGraphProbeArrayLatLongNode::configure(v29, a2, a3, a4);
}

void re::CustomPostProcessRenderGraphProvider::~CustomPostProcessRenderGraphProvider(re::CustomPostProcessRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::CustomPostProcessRenderGraphProvider::prepareFrame(re::CustomPostProcessRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x41BAFCC672CF692BLL;
  v5[1] = "CustomPostProcessRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

void re::CustomPostProcessRenderGraphProvider::provide(re::CustomPostProcessRenderGraphProvider *this, const char *a2, char *a3, re::RenderFrame *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  re::RenderFrame::tryGetInputTarget(&v22, a4, "Color", a3);
  re::RenderFrame::tryGetInputTarget(&v20, a4, "Depth", a3);
  _ZF = v23 == -1 || HIDWORD(v23) == -1;
  if (_ZF || (v21 != -1 ? (v8 = HIDWORD(v21) == -1) : (v8 = 1), v8))
  {
    if ((atomic_exchange(re::CustomPostProcessRenderGraphProvider::provide(char const*,char const*,re::RenderFrame &)const::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v9 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "provide";
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "%s: required targets for custom post processing aren't available incurrent graph.\n", buf, 0xCu);
      }
    }
  }

  else
  {
    RenderGraph = re::RenderFrame::makeRenderGraph(a4, "CustomPostProcessGraph", 0);
    v11 = re::globalAllocators(RenderGraph);
    v12 = (*(*v11[2] + 32))(v11[2], 264, 8);
    v13 = re::RenderGraphNode::RenderGraphNode(v12, "CustomPostProcessNode");
    *v13 = &unk_1F5D0E638;
    *buf = v13;
    re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, buf);
    v12[3] = *(RenderGraph + 10);
    v12[4] = *(RenderGraph + 12);
    v12[6] = *(RenderGraph + 13);
    *buf = 3;
    *&buf[8] = 2;
    memset(&buf[12], 255, 24);
    *&buf[36] = 0;
    buf[40] = 0;
    __asm { FMOV            V0.2S, #1.0 }

    *&buf[44] = _D0;
    v25 = xmmword_1E30A3B60;
    v26 = 0x2000000000;
    v27 = -1;
    v28 = -1;
    v29 = -1;
    v30 = 0;
    v31 = 0;
    re::RenderFrame::createTarget(&v18, a4, buf, "CustomPostTarget");
    *buf = 65290051;
    re::RenderFrame::addTargetOutput(a4, buf, &v18, a3);
    *buf = v18;
    *&buf[8] = v19;
    *&buf[16] = 0x100000000;
    *&buf[32] = xmmword_1E30474D0;
    *&buf[48] = 0;
    *&v25 = 0;
    re::DynamicArray<re::TargetWrite>::add((v12 + 28), buf);
    *buf = v18;
    *&buf[8] = v19;
    *&buf[16] = 0x500000000;
    *&buf[32] = xmmword_1E30474D0;
    *&buf[48] = 0;
    *&v25 = 0;
    re::DynamicArray<re::TargetWrite>::add((v12 + 28), buf);
    *buf = v22;
    *&buf[8] = v23;
    *&buf[16] = 0;
    *&buf[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v12 + 23), buf);
    *buf = v20;
    *&buf[8] = v21;
    *&buf[16] = 0;
    *&buf[24] = 2;
    re::DynamicArray<re::TargetRead>::add((v12 + 23), buf);
  }
}

void re::VisualProxyHighFidelityGraphProvider::~VisualProxyHighFidelityGraphProvider(re::VisualProxyHighFidelityGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::VisualProxyHighFidelityGraphProvider::prepareFrame(re::VisualProxyHighFidelityGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x29D9C6F3AFF97BE9;
  v5[1] = "VisualProxyHighFidelityGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

_anonymous_namespace_ *re::VisualProxyHighFidelityGraphProvider::provide(re::VisualProxyHighFidelityGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "VisualProxyGraph", 1uLL);
  v5 = re::globalAllocators(RenderGraph);
  v6 = (*(*v5[2] + 32))(v5[2], 264, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, "visualProxyHighFidelity");
  *v7 = &unk_1F5D15D20;
  v11 = v7;
  result = re::DynamicArray<re::TransitionCondition *>::add(RenderGraph, &v11);
  v9 = *(RenderGraph + 12);
  v10 = *(RenderGraph + 13);
  *(v6 + 3) = *(RenderGraph + 10);
  *(v6 + 4) = v9;
  *(v6 + 6) = v10;
  return result;
}

unint64_t re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::operator()(uint64_t a1, char **a2, const char **a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a3;
  v7 = strlen(*a2);
  if (v7)
  {
    MurmurHash3_x64_128(v5, v7, 0, &v15);
    v8 = &v16[64 * v15 - 0x61C8864680B583E9 + (v15 >> 2)] ^ v15;
  }

  else
  {
    v8 = 0;
  }

  v9 = strlen(v6);
  if (v9)
  {
    MurmurHash3_x64_128(v6, v9, 0, &v15);
    v10 = (&v16[64 * v15 - 0x61C8864680B583E9 + (v15 >> 2)] ^ v15) - 0x61C8864680B583E9;
  }

  else
  {
    v10 = 0x9E3779B97F4A7C17;
  }

  v11 = *(re::RenderGraphDataStore::get<re::CameraData>(a4 + 32, ((v8 >> 2) + (v8 << 6) + v10) ^ v8) + 884);
  v15 = 0x18EDBD623C4C0C58;
  v16 = "ColorTexture";
  v12 = re::RenderGraphProviderBase::generateScopeHash(&v15, v5, v6);
  v13 = 73244475 * ((73244475 * (v11 ^ HIWORD(v11))) ^ ((73244475 * (v11 ^ HIWORD(v11))) >> 16));
  return ((v12 << 6) - 0x61C8864680B583E9 + (v12 >> 2) + (v13 ^ HIWORD(v13))) ^ v12;
}

void *re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12798;
  return result;
}

void *re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_0,unsigned long long ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D12798;
  return result;
}

void re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::operator()(int a1, const char **a2, const char **a3, re::RenderFrame *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *a3;
  re::RenderFrame::tryGetInputTarget(&v20, this, "Color", 0);
  __asm { FMOV            V8.2S, #1.0 }

  if (_ZF)
  {
    *v21 = 3;
    *&v21[8] = 2;
    *&v21[12] = -1;
    *v22 = -1;
    *&v22[8] = -1;
    *&v22[16] = 0;
    v23 = 0;
    v24 = _D8;
    v25 = xmmword_1E30A3B60;
    v26 = 0x2000000000;
    v27 = -1;
    v28 = -1;
    v29 = -1;
    v30 = 0;
    v31 = 0;
    re::RenderFrame::createTarget(&v19, this, v21, "Color0");
    v20 = v19;
  }

  v12 = 0x9E3779B97F4A7C17;
  v13 = strlen(v5);
  if (v13)
  {
    MurmurHash3_x64_128(v5, v13, 0, v21);
    v14 = (*&v21[8] - 0x61C8864680B583E9 + (*v21 << 6) + (*v21 >> 2)) ^ *v21;
  }

  else
  {
    v14 = 0;
  }

  v15 = strlen(v6);
  if (v15)
  {
    MurmurHash3_x64_128(v6, v15, 0, v21);
    v12 = ((*&v21[8] - 0x61C8864680B583E9 + (*v21 << 6) + (*v21 >> 2)) ^ *v21) - 0x61C8864680B583E9;
  }

  v16 = *(re::RenderGraphDataStore::get<re::CameraData>(this + 32, ((v14 >> 2) + (v14 << 6) + v12) ^ v14) + 884);
  if (v16 >= 2)
  {
    *v21 = xmmword_1E3104600;
    *&v21[16] = -1;
    *v22 = v16;
    *&v22[4] = xmmword_1E3104610;
    v23 = 0;
    v24 = _D8;
    v25 = xmmword_1E30A3B60;
    v26 = 0x2000000000;
    v27 = -1;
    v28 = -1;
    v29 = -1;
    v30 = 0;
    v31 = 0;
    re::RenderFrame::createTarget(&v19, this, v21, "Color0[MSAA]");
    *v21 = v20;
    v17 = DWORD2(v19);
    *(re::RenderGraphResourceDescriptions::targetDescription((this + 3672), v21) + 84) = v17;
    v18 = 65290051;
    re::RenderFrame::addTargetOutput(this, &v18, &v19, 0);
  }

  *&v19 = 65290051;
  re::RenderFrame::addTargetOutput(this, &v19, &v20, 0);
}

void *re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D127F0;
  return result;
}

void *re::internal::Callable<re::RealityEmitterBase::registerCommonProviders(re::RenderGraphManager &,re::AssetService *)::$_1,void ()(char const*,char const*,re::RenderFrame &)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D127F0;
  return result;
}

uint64_t re::DynamicOverflowArray<re::DynamicArray<re::CameraView> const**,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      if (*a2 && *a1 != *a2)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
        __break(1u);
        return result;
      }
    }

    if (*(a2 + 16))
    {
      if (*(a2 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(a1, a2);
      }

      else
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
        *a1 = *a2;
        *(a2 + 16) += 2;
        *(a1 + 16) += 2;
      }
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) += 2;
      re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
    }
  }

  return a1;
}

uint64_t re::internal::Callable<re::RealityEmitterBase::emitFilterMapGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  re::BucketArray<re::MeshSceneCollection,16ul>::deinit(*a2);

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
}

void *re::internal::Callable<re::RealityEmitterBase::emitFilterMapGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D128C8;
  return result;
}

void *re::internal::Callable<re::RealityEmitterBase::emitFilterMapGraph(re::RenderSceneContext &,re::RenderFrame &,re::RenderGraphDataStore &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D128C8;
  return result;
}

void *re::RenderGraphDataStoreWrapper<re::RenderFrameContext>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12978;
  v2 = a1 + 2;
  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit((a1 + 5));
  re::FixedArray<re::RenderSceneContext>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::RenderFrameContext>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12978;
  v1 = a1 + 2;
  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit((a1 + 5));
  re::FixedArray<re::RenderSceneContext>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderSceneContext::RenderSceneContext(uint64_t a1, re::Allocator *a2)
{
  *a1 = a2;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = a2;
  re::DynamicArray<re::ShadowView>::setCapacity((a1 + 88), 0);
  ++*(a1 + 112);
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 128) = a2;
  re::DynamicArray<re::FilterView>::setCapacity((a1 + 128), 0);
  ++*(a1 + 152);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  re::PortalInfo::PortalInfo((a1 + 208), a2);
  *(a1 + 389) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  return a1;
}

void *re::FixedArray<re::RenderSceneContext>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 424 * v2;
      v5 = result[2] + 264;
      do
      {
        re::BucketArray<unsigned long,4ul>::deinit(v5);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5);
        re::BucketArray<unsigned long,4ul>::deinit(v5 - 56);
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v5 - 56);
        re::DynamicArray<re::FilterView>::deinit(v5 - 136);
        re::DynamicArray<re::ShadowView>::deinit(v5 - 176);
        v5 += 424;
        v4 -= 424;
      }

      while (v4);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::SceneArrayData::~SceneArrayData(re::SceneArrayData *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 8);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

int64x2_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(uint64_t *a1, unint64_t *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(a1);
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
  v16 = a1[1] + 16 * (v13 + 16 * v11);
  v17 = *a2;
  *v16 = *a2;
  *(v16 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
  a1[5] ^= (v21 >> 31) ^ v21;
  return result;
}

double re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + 1;
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

  v8 = *(a1 + 56);
  memset(v25, 0, sizeof(v25));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v25, v8, v3);
  v23[0] = a1;
  v9 = *(a1 + 16);
  if (v9 >= 0x10)
  {
    v10 = 0;
    v11 = *a1;
    v12 = v9 >> 4;
    while (1)
    {
      v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v23[1] = v13 ^ 0xFFFFLL;
      if (v13 != 0xFFFFLL)
      {
        break;
      }

      v10 -= 16;
      ++v11;
      if (!--v12)
      {
        goto LABEL_13;
      }
    }

    v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
    v15 = v14 - v10;
    v24 = v14 - v10;
    if (v14 + 1 != v10)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 16 * v15), (*(v23[0] + 8) + 16 * v15 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
        v15 = v24;
      }

      while (v24 != -1);
      v9 = *(a1 + 16);
    }
  }

LABEL_13:
  v16 = *(&v25[3] + 1);
  *(&v25[3] + 1) = *(a1 + 56);
  v17 = v25[0];
  v18 = v25[1];
  v25[0] = *a1;
  *&v25[1] = v9;
  v19 = v25[2];
  v20 = *(a1 + 40);
  *(a1 + 48) = *&v25[3];
  *(a1 + 56) = v16;
  *(&v25[2] + 8) = v20;
  v21 = *(a1 + 24);
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 32) = v19;
  *(&v25[1] + 8) = v21;
  return re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(v25);
}

void *re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12AC0;
  v2 = a1 + 1;
  re::BucketArray<re::MeshSceneCollection,16ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::MeshSceneArrays>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12AC0;
  v1 = a1 + 1;
  re::BucketArray<re::MeshSceneCollection,16ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12B00;
  v2 = a1 + 1;
  re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2);
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12B00;
  v1 = a1 + 1;
  re::BucketArray<re::DynamicArray<re::VFXScene>,4ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::RenderGraphDataStoreWrapper<re::LightContexts>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D12B40;
  v2 = a1 + 8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 29);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 26);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 23);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v2);
  re::BucketArray<re::LightContext,16ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 1));
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::LightContexts>::~RenderGraphDataStoreWrapper(uint64_t *a1)
{
  *a1 = &unk_1F5D12B40;
  v2 = a1 + 8;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 29);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 26);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 23);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 20);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 17);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 14);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v2);
  re::BucketArray<re::LightContext,16ul>::deinit((a1 + 1));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::ProbeWriteContext,re::ProbeWriteContext>(re *a1, uint64_t a2, uint64_t a3)
{
  v5 = "N2re17ProbeWriteContextE";
  if (("N2re17ProbeWriteContextE" & 0x8000000000000000) != 0)
  {
    v6 = ("N2re17ProbeWriteContextE" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  v13 = (a2 + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  v9 = re::globalAllocators(a1);
  v10 = (*(*v9[2] + 32))(v9[2], 312, 8);
  v12 = re::ProbeWriteContext::ProbeWriteContext(v10, a3);
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v13, &v12);
}

uint64_t re::ProbeWriteContext::ProbeWriteContext(uint64_t result, uint64_t a2)
{
  *result = &unk_1F5D051D0;
  v2 = *(a2 + 8);
  *(result + 8) = v2;
  if (v2 == 1)
  {
    v3 = *(a2 + 16);
    *(result + 32) = *(a2 + 32);
    *(result + 16) = v3;
  }

  v4 = *(a2 + 40);
  *(result + 40) = v4;
  if (v4 == 1)
  {
    *(result + 44) = *(a2 + 44);
  }

  v5 = *(a2 + 48);
  *(result + 48) = v5;
  if (v5 == 1)
  {
    v6 = *(a2 + 52);
    v7 = *(a2 + 68);
    v8 = *(a2 + 84);
    *(result + 100) = *(a2 + 100);
    *(result + 84) = v8;
    *(result + 68) = v7;
    *(result + 52) = v6;
  }

  *(result + 144) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 112) = 0;
  *(result + 136) = 0;
  v9 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(result + 120) = v9;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v10 = *(result + 128);
  *(result + 128) = *(a2 + 128);
  *(a2 + 128) = v10;
  v11 = *(result + 144);
  *(result + 144) = *(a2 + 144);
  *(a2 + 144) = v11;
  ++*(a2 + 136);
  ++*(result + 136);
  *(result + 184) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 152) = 0;
  *(result + 176) = 0;
  v12 = *(a2 + 160);
  *(result + 152) = *(a2 + 152);
  *(result + 160) = v12;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v13 = *(result + 168);
  *(result + 168) = *(a2 + 168);
  *(a2 + 168) = v13;
  v14 = *(result + 184);
  *(result + 184) = *(a2 + 184);
  *(a2 + 184) = v14;
  ++*(a2 + 176);
  ++*(result + 176);
  LODWORD(v14) = *(a2 + 192);
  *(result + 192) = v14;
  if (v14 == 1)
  {
    *(result + 200) = *(a2 + 200);
    *(result + 224) = 0;
    *(result + 232) = 0;
    *(result + 216) = 0;
    v15 = *(a2 + 224);
    *(result + 216) = *(a2 + 216);
    *(result + 224) = v15;
    *(a2 + 216) = 0;
    *(a2 + 224) = 0;
    v16 = *(result + 232);
    *(result + 232) = *(a2 + 232);
    *(a2 + 232) = v16;
    *(result + 240) = 0;
    *(result + 248) = 0;
    *(result + 256) = 0;
    v17 = *(a2 + 248);
    *(result + 240) = *(a2 + 240);
    *(result + 248) = v17;
    *(a2 + 240) = 0;
    *(a2 + 248) = 0;
    v18 = *(result + 256);
    *(result + 256) = *(a2 + 256);
    *(a2 + 256) = v18;
  }

  *(result + 264) = *(a2 + 264);
  *(a2 + 264) = 0;
  *(result + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(result + 280) = *(a2 + 280);
  *(a2 + 280) = 0;
  *(result + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(result + 296) = *(a2 + 296);
  *(a2 + 296) = 0;
  *(result + 304) = *(a2 + 304);
  *(a2 + 304) = 0;
  return result;
}

void re::CameraArrayData::~CameraArrayData(re::CameraArrayData *this)
{
  re::FixedArray<re::CameraData>::deinit(this + 1);
}

{
  re::FixedArray<re::CameraData>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::CameraData>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = 0;
      v5 = result[2];
      v6 = 960 * v2;
      do
      {
        v7 = v5 + v4;
        re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v5 + v4 + 920);
        *(v7 + 768) = 0;
        ++*(v7 + 776);
        *(v7 + 624) = 0;
        ++*(v7 + 632);
        *(v7 + 128) = 0;
        ++*(v7 + 136);
        *(v7 + 48) = 0;
        ++*(v7 + 56);
        v8 = re::DynamicString::deinit((v5 + v4 + 8));
        v4 += 960;
      }

      while (v6 != v4);
      result = (*(**v1 + 40))(*v1, v1[2], v8);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void re::MultiViewCullModeArrayData::~MultiViewCullModeArrayData(re::MultiViewCullModeArrayData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::ViewportArrayData::~ViewportArrayData(re::ViewportArrayData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::MeshLodSelectInputArrayData::~MeshLodSelectInputArrayData(re::MeshLodSelectInputArrayData *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void *re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12D80;
  re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit((a1 + 1));
  return a1;
}

void re::RenderGraphDataStoreWrapper<re::VisualProxyHighFidelityHandlerData>::~RenderGraphDataStoreWrapper(void *a1)
{
  *a1 = &unk_1F5D12D80;
  re::DynamicArray<re::VisualProxyHighFidelityTextureCopyRequest>::deinit((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void re::DynamicFunctionConstantsData::~DynamicFunctionConstantsData(re::DynamicFunctionConstantsData *this)
{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 8);
}

{
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::add<re::CustomPostProcessRenderGraphData>(re *a1, uint64_t a2)
{
  v3 = "N2re32CustomPostProcessRenderGraphDataE";
  if (("N2re32CustomPostProcessRenderGraphDataE" & 0x8000000000000000) != 0)
  {
    v4 = ("N2re32CustomPostProcessRenderGraphDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  v11 = (a2 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  v7 = re::globalAllocators(a1);
  v8 = (*(*v7[2] + 32))(v7[2], 128, 16);
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *v8 = &unk_1F5D12E00;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 36) = 0u;
  *(v8 + 52) = 0x7FFFFFFF;
  *(v8 + 64) = 0u;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 112) = 0u;
  v10 = v8;
  return *re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a1 + 16, &v11, &v10);
}

void re::CustomPostProcessRenderGraphData::~CustomPostProcessRenderGraphData(re::CustomPostProcessRenderGraphData *this)
{
  *this = &unk_1F5D12E00;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);
}

{
  *this = &unk_1F5D12E00;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

void *re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10[0] = 0;
  v10[1] = -1;
  v8 = re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + (v6 << 6);
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v16, 0, 36);
      *&v16[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v16, v4, a2);
      v5 = *v16;
      *v16 = *a1;
      *a1 = v5;
      v6 = *&v16[16];
      v7 = *(a1 + 16);
      *&v16[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v16[24];
      *&v16[24] = *(a1 + 24);
      v8 = *&v16[32];
      *(a1 + 24) = v9;
      ++*&v16[40];
      v10 = v8;
      if (v8)
      {
        v11 = v7 + 32;
        do
        {
          if ((*(v11 - 32) & 0x80000000) != 0)
          {
            v12 = re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v11 + 24) % *(a1 + 24), *(v11 + 24));
            *(v12 + 8) = 0u;
            *(v12 + 24) = 0u;
            *(v12 + 8) = *(v11 - 24);
            *(v11 - 24) = 0;
            v13 = *(v12 + 24);
            *(v12 + 24) = *(v11 - 8);
            *(v11 - 8) = v13;
            *(v12 + 40) = 0;
            *(v12 + 48) = -1;
            *(v12 + 32) = *v11;
            *v11 = 0;
            v14 = *(v12 + 16);
            *(v12 + 16) = *(v11 - 16);
            *(v11 - 16) = v14;
            *(v12 + 48) = *(v11 + 16);
          }

          v11 += 64;
          --v10;
        }

        while (v10);
      }

      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v16);
    }
  }

  else
  {
    if (a2)
    {
      v15 = a2;
    }

    else
    {
      v15 = 3;
    }
  }
}

uint64_t re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void *re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v14, a2);
  re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v11, a1, a2, v6);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v12, v11);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = 0;
    v9 = (v8 + 40);
    v9[1] = -1;
    *v9 = *a3;
    v9[1] = a3[1];
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = (*(a1 + 16) + (v7 << 6) + 40);
    *v9 = *a3;
  }

  return v9;
}

BOOL re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(_BOOL8 result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = result;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a4 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(a2 + 16);
  result = re::DynamicString::operator==(v10 + (v8 << 6) + 8, a3);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + (v8 << 6)) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + (v11 << 6) + 8, a3);
      if (result)
      {
        break;
      }

      v11 = *(v10 + (v12 << 6)) & 0x7FFFFFFF;
      LODWORD(v8) = v12;
      if (v11 == 0x7FFFFFFF)
      {
        LODWORD(v8) = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *v5 = a4;
  *(v5 + 8) = v7;
  *(v5 + 12) = v6;
  *(v5 + 16) = v8;
  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

void *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v7 << 6) + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 16;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::RenderGraphTargetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void re::RenderGraphNodeRegistry::~RenderGraphNodeRegistry(re::RenderGraphNodeRegistry *this)
{
  v1 = this;
  {
    if (this)
    {
      re::introspect<re::RenderGraphNode>(BOOL)::info = re::introspect_RenderGraphNode(0);
    }
  }

  v2 = *(re::introspect<re::RenderGraphNode>(BOOL)::info + 8);
  v3 = *v2;
  if (**v2 != 2)
  {
    v4 = (v2 + 1);
    do
    {
      v5 = *v4++;
      v3 = v5;
    }

    while (*v5 != 2);
  }

  *(v3 + 1) = 0;
  v6 = *(v1 + 2);
  if (v6)
  {
    v7 = *(v1 + 4);
    v8 = 40 * v6;
    do
    {
      v9 = *v7;
      if (*v7)
      {
        v10 = re::globalAllocators(this);
        this = (*(*v10[2] + 40))(v10[2], v9);
      }

      *v7 = 0;
      v7 += 5;
      v8 -= 40;
    }

    while (v8);
  }

  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v1 + 11);
  re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v1 + 5);
  re::DynamicArray<re::IntrospectionPolymorphicType>::deinit(v1);
}

void re::RenderGraphNodeRegistry::init(re::RenderGraphNodeRegistry *this)
{
  v1 = re::globalAllocators(this);
  v2 = (*(*v1[2] + 32))(v1[2], 160, 8);
  v3 = re::RenderGraphNodeRegistry::RenderGraphNodeRegistry(v2);
  re::RenderGraphNodeRegistry::m_instance = v3;

  re::RenderGraphNodeRegistry::registerAllNodeTypes(v3);
}

void re::RenderGraphNodeRegistry::registerAllNodeTypes(re::RenderGraphNodeRegistry *this)
{
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ARSegmentationDilationNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::DebugClusterAABBNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::GenerateClusterAABBNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphBloomNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphTonemapNode>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>(void)::item);
  re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, re::renderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>(void)::item);
  v1 = re::RenderGraphNodeRegistry::m_instance;

  re::RenderGraphNodeRegistry::registerNode(v1, &re::renderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>(void)::item);
}

re *re::internal::destroyPersistent<re::RenderGraphNodeRegistry>(re *result, uint64_t a2, re::RenderGraphNodeRegistry *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::RenderGraphNodeRegistry::~RenderGraphNodeRegistry(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::RenderGraphNodeRegistry::registerNode(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = re::introspectionSharedMutex(a1);
  v34 = 0;
  lock = (a1 + 152);
  v32 = 0;
  std::lock[abi:nn200100]<std::unique_lock<std::shared_mutex>,std::unique_lock<re::UnfairLock>>(&v33, &lock);
  v4 = (*(*a2 + 16))(a2);
  v5 = strlen(v4);
  if (v5)
  {
    MurmurHash3_x64_128(v4, v5, 0, &v35);
    v6 = &v35.var1[64 * *&v35.var0 - 0x61C8864680B583E9 + (*&v35.var0 >> 2)] ^ *&v35.var0;
  }

  else
  {
    v6 = 0;
  }

  v30 = v6;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (!*(a1 + 40) || (v9 = *(*(a1 + 48) + 4 * (v8 % *(a1 + 64))), v9 == 0x7FFFFFFF))
  {
LABEL_9:
    v11 = (**a2)(a2, 1);
    v12 = (*(*a2 + 8))(a2);
    v13 = strlen(v4);
    v14 = re::globalAllocators(v13);
    v15 = (*(*v14[2] + 32))(v14[2], v13 + 1, 0);
    memcpy(v15, v4, v13 + 1);
    (*(*a2 + 24))(&v35, a2);
    if (*(a1 + 40))
    {
      v16 = v8 % *(a1 + 64);
      v17 = *(*(a1 + 48) + 4 * v16);
      if (v17 != 0x7FFFFFFF)
      {
        v18 = *(a1 + 56);
        if (*(v18 + 56 * v17 + 8) == v6)
        {
LABEL_22:
          std::__function::__value_func<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::~__value_func[abi:nn200100](&v35);
          v21 = strlen(v15);
          if (v21)
          {
            MurmurHash3_x64_128(v15, v21, 0, &v35);
            v22 = &v35.var1[64 * *&v35.var0 - 0x61C8864680B583E9 + (*&v35.var0 >> 2)] ^ *&v35.var0;
          }

          else
          {
            v22 = 0;
          }

          *&v35.var0 = v15;
          v35.var1 = v11;
          v36 = 0;
          v37 = v22;
          v38 = v12;
          re::DynamicArray<re::IntrospectionPolymorphicType>::add(a1, &v35);
          re::SerializedReference<re::IntrospectionBase const*>::reset(&v35.var1);
          *(a1 + 136) = *(a1 + 16);
          *(a1 + 144) = *(a1 + 32);
          v29 = *(v11 + 32);
          if (v4)
          {
            v23 = *v4;
            if (*v4)
            {
              v24 = v4[1];
              if (v24)
              {
                v25 = (v4 + 2);
                do
                {
                  v23 = 31 * v23 + v24;
                  v26 = *v25++;
                  v24 = v26;
                }

                while (v26);
              }
            }
          }

          else
          {
            v23 = 0;
          }

          *&v35.var0 = 2 * v23;
          v35.var1 = v4;
          if (*&v35.var0)
          {
            if (*&v35.var0)
            {
            }
          }

          *&v35.var0 = 0;
          v35.var1 = 0;
          v36 = 0;
          re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 88, &v30, v8, &v35);
          if (HIDWORD(v35.var1) == 0x7FFFFFFF)
          {
            v28 = re::HashTable<unsigned long long,re::ecs2::Scene const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1 + 88, v35.var1, *&v35.var0);
            *(v28 + 8) = v30;
            *(v28 + 16) = a2;
            ++*(a1 + 128);
          }

          goto LABEL_37;
        }

        while (1)
        {
          LODWORD(v17) = *(v18 + 56 * v17) & 0x7FFFFFFF;
          if (v17 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v18 + 56 * v17 + 8) == v6)
          {
            goto LABEL_22;
          }
        }
      }
    }

    else
    {
      LODWORD(v16) = 0;
    }

    v19 = re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1 + 40, v16, v8);
    *(v19 + 8) = v6;
    v20 = v37;
    if (v37)
    {
      if (v37 == &v35)
      {
        *(v19 + 40) = v19 + 16;
        (*(*&v20->var0 + 24))(v20);
      }

      else
      {
        *(v19 + 40) = v37;
        v37 = 0;
      }
    }

    else
    {
      *(v19 + 40) = 0;
    }

    ++*(a1 + 80);
    goto LABEL_22;
  }

  v10 = *(a1 + 56);
  while (*(v10 + 56 * v9 + 8) != v6)
  {
    v9 = *(v10 + 56 * v9) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_37:
  if (v32 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  if (v34 == 1)
  {
    std::__shared_mutex_base::unlock(v33);
  }
}

void re::RenderGraphNodeRegistry::registryItem(uint64_t *__return_ptr a1@<X8>, os_unfair_lock_s *this@<X0>, uint64_t a3@<X1>)
{
  v7 = a3;
  os_unfair_lock_lock(this + 38);
  v5 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(&this[22], &v7);
  if (v5)
  {
    a1[1] = *v5;
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  os_unfair_lock_unlock(this + 38);
}

uint64_t re::RenderGraphNodeRegistry::RenderGraphNodeRegistry(uint64_t this)
{
  *this = 0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0u;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0;
  *(this + 124) = 0x7FFFFFFFLL;
  *(this + 136) = 0;
  v1 = this + 136;
  *(this + 144) = 0;
  *(this + 152) = 0;
  v2 = &unk_1EE187000;
  {
    v9 = this + 136;
    v10 = this;
    v2 = &unk_1EE187000;
    v8 = v7;
    v1 = v9;
    this = v10;
    if (v8)
    {
      re::introspect<re::RenderGraphNode>(BOOL)::info = re::introspect_RenderGraphNode(0);
      v2 = &unk_1EE187000;
      v1 = v9;
      this = v10;
    }
  }

  v3 = *(v2[222] + 64);
  v4 = *v3;
  if (**v3 != 2)
  {
    v5 = (v3 + 1);
    do
    {
      v6 = *v5++;
      v4 = v6;
    }

    while (*v6 != 2);
  }

  *(v4 + 1) = v1;
  return this;
}

double re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          std::__function::__value_func<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::~__value_func[abi:nn200100](v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 56;
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

uint64_t re::RenderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0270))
  {
    _MergedGlobals_523 = re::introspect_ARGuidedFilterOcclusionNode(a2);
    __cxa_guard_release(&qword_1EE1C0270);
  }

  return _MergedGlobals_523;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 520, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D164A0;
  *(v7 + 33) = 0;
  *(v7 + 34) = -1;
  *(v7 + 35) = 0;
  *(v7 + 36) = -1;
  *(v7 + 37) = 0;
  *(v7 + 38) = -1;
  *(v7 + 39) = 0;
  *(v7 + 40) = -1;
  *(v7 + 41) = 0;
  *(v7 + 42) = -1;
  *(v7 + 43) = 0;
  *(v7 + 44) = -1;
  *(v7 + 45) = 0;
  *(v7 + 46) = -1;
  *(v7 + 47) = 0;
  *(v7 + 48) = -1;
  *(v7 + 49) = 0;
  *(v7 + 50) = -1;
  *(v7 + 51) = 0;
  *(v7 + 52) = -1;
  *(v7 + 53) = 0;
  *(v7 + 54) = -1;
  *(v7 + 55) = 0;
  *(v7 + 56) = -1;
  *(v7 + 57) = 0;
  *(v7 + 58) = -1;
  *(v7 + 59) = 0;
  *(v7 + 60) = -1;
  *(v7 + 61) = 0;
  *(v7 + 62) = -1;
  *(v7 + 63) = 0;
  *(v7 + 64) = -1;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARGuidedFilterOcclusionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0280))
  {
    qword_1EE1C0278 = re::introspect_ARSegmentationCompositeNode(a2);
    __cxa_guard_release(&qword_1EE1C0280);
  }

  return qword_1EE1C0278;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 504, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D11878;
  *(v7 + 59) = 0;
  *(v7 + 60) = -1;
  *(v7 + 61) = 0;
  *(v7 + 62) = -1;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::ARSegmentationDilationNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0290))
  {
    qword_1EE1C0288 = re::introspect_ARSegmentationDilationNode(a2);
    __cxa_guard_release(&qword_1EE1C0290);
  }

  return qword_1EE1C0288;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationDilationNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationDilationNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 312, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D11680;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 37) = -1;
  *(v7 + 38) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationDilationNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationDilationNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02A0))
  {
    qword_1EE1C0298 = re::introspect_ARSegmentationDualGuidedFilterNode(a2);
    __cxa_guard_release(&qword_1EE1C02A0);
  }

  return qword_1EE1C0298;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 312, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D117D0;
  *(v7 + 33) = 0;
  *(v7 + 34) = -1;
  *(v7 + 35) = 0;
  *(v7 + 36) = -1;
  *(v7 + 37) = 0;
  *(v7 + 38) = -1;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationDualGuidedFilterNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02B0))
  {
    qword_1EE1C02A8 = re::introspect_ARSegmentationGenerateGuideNode(a2);
    __cxa_guard_release(&qword_1EE1C02B0);
  }

  return qword_1EE1C02A8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 336, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D11728;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 37) = -1;
  *(v7 + 38) = 0;
  *(v7 + 39) = -1;
  *(v7 + 40) = 0;
  *(v7 + 41) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ARSegmentationGenerateGuideNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02C0))
  {
    qword_1EE1C02B8 = re::introspect_ComputeClusterProbeIntersectionNode(a2);
    __cxa_guard_release(&qword_1EE1C02C0);
  }

  return qword_1EE1C02B8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 328, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0E960;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 39) = 0;
  re::DynamicString::setCapacity(v6 + 36, 0);
  *(v6 + 40) = 0;
  v11 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::ComputeClusterProbeIntersectionNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::DebugClusterAABBNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02D0))
  {
    qword_1EE1C02C8 = re::introspect_DebugClusterAABBNode(a2);
    __cxa_guard_release(&qword_1EE1C02D0);
  }

  return qword_1EE1C02C8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::DebugClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DebugClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 296, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0EA08;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::DebugClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::DebugClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::GenerateClusterAABBNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02E0))
  {
    qword_1EE1C02D8 = re::introspect_GenerateClusterAABBNode(a2);
    __cxa_guard_release(&qword_1EE1C02E0);
  }

  return qword_1EE1C02D8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::GenerateClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::GenerateClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 328, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0E8B8;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 39) = 0;
  re::DynamicString::setCapacity(v6 + 36, 0);
  *(v6 + 40) = 0;
  v11 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::GenerateClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::GenerateClusterAABBNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C02F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C02F0))
  {
    qword_1EE1C02E8 = re::introspect_RenderProjectiveMeshShadowPatchesNode(a2);
    __cxa_guard_release(&qword_1EE1C02F0);
  }

  return qword_1EE1C02E8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 272, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0F380;
  *(v7 + 132) = 0;
  *(v7 + 266) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderProjectiveMeshShadowPatchesNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0300))
  {
    qword_1EE1C02F8 = re::introspect_RenderGraphARCombinedPostProcessNode(a2);
    __cxa_guard_release(&qword_1EE1C0300);
  }

  return qword_1EE1C02F8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 456, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D14660;
  *(v7 + 33) = 0;
  *(v7 + 68) = 0;
  *(v7 + 56) = 0;
  *(v7 + 53) = 0;
  *(v7 + 54) = 0;
  *(v7 + 52) = 0;
  *(v7 + 110) = 0;
  *(v7 + 409) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphARCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0310))
  {
    qword_1EE1C0308 = re::introspect_RenderGraphARUploadPostParams(a2);
    __cxa_guard_release(&qword_1EE1C0310);
  }

  return qword_1EE1C0308;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 328, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D145B8;
  *(v7 + 132) = 0;
  *(v7 + 266) = 0;
  *(v6 + 268) = xmmword_1E3054790;
  *(v6 + 284) = xmmword_1E304F3C0;
  *(v7 + 300) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v7 + 38) = _D0;
  *(v7 + 312) = 0;
  *(v7 + 316) = 0x3F80000000000000;
  *(v7 + 324) = 0;
  v16 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v16);
  v13 = *(a2 + 12);
  v14 = *(a2 + 13);
  *(v6 + 24) = *(a2 + 10);
  *(v6 + 32) = v13;
  *(v6 + 48) = v14;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphARUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphBloomNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0320))
  {
    qword_1EE1C0318 = re::introspect_RenderGraphBloomNode(a2);
    __cxa_guard_release(&qword_1EE1C0320);
  }

  return qword_1EE1C0318;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphBloomNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphBloomNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 472, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D0EEF0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphBloomNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphBloomNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0330))
  {
    qword_1EE1C0328 = re::introspect_RenderGraphCombinedPostProcessNode(a2);
    __cxa_guard_release(&qword_1EE1C0330);
  }

  return qword_1EE1C0328;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 472, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D11AB8;
  *(v7 + 33) = 0;
  *(v7 + 68) = 0;
  *(v7 + 52) = 0;
  *(v7 + 424) = 0u;
  *(v7 + 110) = 0;
  *(v7 + 102) = 0;
  *(v7 + 412) = 0;
  *(v7 + 28) = 0u;
  *(v7 + 58) = -1;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCombinedPostProcessNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0340))
  {
    qword_1EE1C0338 = re::introspect_RenderGraphDofBokehBlurNode(a2);
    __cxa_guard_release(&qword_1EE1C0340);
  }

  return qword_1EE1C0338;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 472, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D0EB58;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofBokehBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0350))
  {
    qword_1EE1C0348 = re::introspect_RenderGraphDofCompositeNode(a2);
    __cxa_guard_release(&qword_1EE1C0350);
  }

  return qword_1EE1C0348;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 544, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D0EC00;
  *(v7 + 59) = 0;
  *(v7 + 60) = 0;
  *(v7 + 31) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 33) = 0u;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofCompositeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0360))
  {
    qword_1EE1C0358 = re::introspect_RenderGraphDofSetupNode(a2);
    __cxa_guard_release(&qword_1EE1C0360);
  }

  return qword_1EE1C0358;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 592, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D0EAB0;
  *(v7 + 60) = 0;
  *(v7 + 61) = 0;
  *(v7 + 59) = 0;
  *(v7 + 520) = 0u;
  *(v7 + 536) = 0u;
  *(v7 + 552) = 0u;
  *(v7 + 568) = 0u;
  *(v7 + 73) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDofSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0370))
  {
    qword_1EE1C0368 = re::introspect_RenderGraphDownsampleBlur(a2);
    __cxa_guard_release(&qword_1EE1C0370);
  }

  return qword_1EE1C0368;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 328, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0EE48;
  *(v7 + 33) = 0;
  *(v7 + 34) = -1;
  *(v7 + 280) = 0u;
  *(v7 + 296) = 0u;
  *(v7 + 39) = -1;
  *(v7 + 40) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleBlur>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0380))
  {
    qword_1EE1C0378 = re::introspect_RenderGraphDownsampleThresholdNode(a2);
    __cxa_guard_release(&qword_1EE1C0380);
  }

  return qword_1EE1C0378;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 296, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0EDA0;
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDownsampleThresholdNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C0390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C0390))
  {
    qword_1EE1C0388 = re::introspect_RenderGraphMotionBlurNode(a2);
    __cxa_guard_release(&qword_1EE1C0390);
  }

  return qword_1EE1C0388;
}

re::RenderGraphFullscreenNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 616, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D11EF8;
  *(v7 + 472) = 0u;
  *(v7 + 488) = 0u;
  *(v7 + 63) = 0x3C3C888F86;
  *(v7 + 520) = 0u;
  *(v7 + 536) = 0u;
  *(v7 + 552) = 0u;
  *(v7 + 568) = 0u;
  *(v7 + 584) = 0u;
  *(v7 + 600) = 0u;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMotionBlurNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphTonemapNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C03A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C03A0))
  {
    qword_1EE1C0398 = re::introspect_RenderGraphTonemapNode(a2);
    __cxa_guard_release(&qword_1EE1C03A0);
  }

  return qword_1EE1C0398;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphTonemapNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphTonemapNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 536, 8);
  v7 = re::RenderGraphFullscreenNode::RenderGraphFullscreenNode(v6, v4);
  *v7 = &unk_1F5D15220;
  *(v6 + 472) = xmmword_1E3054790;
  *(v6 + 488) = xmmword_1E304F3C0;
  *(v7 + 504) = 0;
  *(v7 + 508) = 0x3F8000003F800000;
  *(v7 + 516) = 0;
  *(v7 + 65) = 0x3F80000000000000;
  *(v7 + 528) = 0;
  *(v7 + 532) = 0;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 24) = *(a2 + 10);
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphTonemapNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphTonemapNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C03B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C03B0))
  {
    qword_1EE1C03A8 = re::introspect_RenderGraphUpdateMaterialTextureSource(a2);
    __cxa_guard_release(&qword_1EE1C03B0);
  }

  return qword_1EE1C03A8;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 352, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D12448;
  v8 = (v7 + 264);
  *(v7 + 264) = 0u;
  *(v7 + 280) = 0u;
  re::DynamicString::setCapacity(v8, 0);
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0x7FFFFFFF00000000;
  *(v6 + 336) = 0;
  *(v6 + 344) = 0;
  v12 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v12);
  v9 = *(a2 + 12);
  v10 = *(a2 + 13);
  *(v6 + 24) = *(a2 + 10);
  *(v6 + 32) = v9;
  *(v6 + 48) = v10;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUpdateMaterialTextureSource>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C03C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C03C0))
  {
    qword_1EE1C03B8 = re::introspect_RenderGraphUploadBloomParams(a2);
    __cxa_guard_release(&qword_1EE1C03C0);
  }

  return qword_1EE1C03B8;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 280, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D0ECF8;
  *(v7 + 33) = 0x3F8000003E800000;
  *(v7 + 34) = 0x13F800000;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = *(a2 + 12);
  v9 = *(a2 + 13);
  *(v6 + 3) = *(a2 + 10);
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadBloomParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE1C03D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C03D0))
  {
    qword_1EE1C03C8 = re::introspect_RenderGraphUploadPostParams(a2);
    __cxa_guard_release(&qword_1EE1C03D0);
  }

  return qword_1EE1C03C8;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, _anonymous_namespace_ *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 344, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *v7 = &unk_1F5D11A10;
  *(v7 + 66) = 0;
  *(v6 + 268) = xmmword_1E3054790;
  *(v6 + 284) = xmmword_1E304F3C0;
  *(v7 + 300) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v7 + 38) = _D0;
  *(v7 + 312) = 0;
  *(v7 + 316) = 0x3F80000000000000;
  *(v7 + 324) = 0;
  *(v7 + 41) = 0x3F8000003E800000;
  *(v7 + 42) = 0x13F800000;
  v16 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v16);
  v13 = *(a2 + 12);
  v14 = *(a2 + 13);
  *(v6 + 24) = *(a2 + 10);
  *(v6 + 32) = v13;
  *(v6 + 48) = v14;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphUploadPostParams>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = *(a1 + 16);
          *&v24[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v14 = *&v24[32];
          *(a1 + 24) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24), *(v13 + 48));
                *(v17 + 8) = *(v13 + 8);
                std::__function::__value_func<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::__value_func[abi:nn200100](v17 + 16, v13 + 16);
              }

              v13 += 56;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,std::function<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 56 * v5);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 56 * v5);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = v18 + 56 * v5;
  *v21 = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *v21 = *(v22 + 4 * a2) | 0x80000000;
  *(v22 + 4 * a2) = v5;
  *(v21 + 48) = a3;
  ++*(a1 + 28);
  return v18 + 56 * v5;
}

uint64_t std::__function::__value_func<re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t re::VFXRenderGraphProvider::VFXRenderGraphProvider(uint64_t a1, const re::DynamicString *a2)
{
  re::DynamicString::DynamicString(&v4, a2);
  *a1 = &unk_1F5CC5700;
  re::DynamicString::DynamicString((a1 + 8), &v4);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  *a1 = &unk_1F5D14180;
  *(a1 + 40) = 0;
  return a1;
}

void re::VFXRenderGraphProvider::~VFXRenderGraphProvider(re::VFXRenderGraphProvider *this)
{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));
}

{
  *this = &unk_1F5CC5700;
  re::DynamicString::deinit((this + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::VFXRenderGraphProvider::prepareFrame(re::VFXRenderGraphProvider *this, char *a2, const char *a3, re::RenderFrame *a4)
{
  v5[0] = 0x596323A061D6FAA1;
  v5[1] = "VFXRenderGraphProvider";
  return re::RenderGraphProviderBase::generateScopeHash(v5, a2, a3);
}

void re::VFXRenderGraphProvider::provide(re::VFXRenderGraphProvider *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  RenderGraph = re::RenderFrame::makeRenderGraph(a4, "VFXSimulation", 1uLL);
  v9 = re::RenderGraph::addNode<re::RenderGraphVFXNode>(RenderGraph, "VFXSimulationNode");
  *(v9 + 264) = *(this + 40);

  re::RenderGraphNode::configure(v9, a2, a3, a4);
}

void re::rendergraph_helper::getOcclusionMeshPasses(uint64_t *__return_ptr a1@<X8>)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v5 = a1;
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    a1 = v5;
    if (v3)
    {
      re::rendergraph_helper::getOcclusionMeshPasses(void)::passNameHash = re::hashString("Occlusion", v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      a1 = v5;
    }
  }

  v2 = *(v1 + 445);
  *a1 = "Occlusion";
  a1[1] = v2;
  *(a1 + 8) = -256;
  *(a1 + 18) = 14;
  *(a1 + 19) = 0;
  *(a1 + 23) = 0;
}

void re::rendergraph_helper::getOpaqueMeshPasses(uint64_t *__return_ptr a1@<X8>)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v5 = a1;
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    a1 = v5;
    if (v3)
    {
      re::rendergraph_helper::getOpaqueMeshPasses(void)::passNameHash = re::hashString("Opaque", v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      a1 = v5;
    }
  }

  v2 = *(v1 + 447);
  *a1 = "Opaque";
  a1[1] = v2;
  *(a1 + 8) = -256;
  *(a1 + 18) = 14;
  *(a1 + 19) = 0;
  *(a1 + 23) = 0;
}

void re::rendergraph_helper::getSkyboxMeshPasses(uint64_t a1@<X8>)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v5 = a1;
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    a1 = v5;
    if (v3)
    {
      re::rendergraph_helper::getSkyboxMeshPasses(void)::passNameHash = re::hashString("Skybox", v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      a1 = v5;
    }
  }

  v2 = *(v1 + 449);
  *a1 = "Skybox";
  *(a1 + 8) = v2;
  *(a1 + 16) = -256;
  *(a1 + 18) = 0;
  *(a1 + 21) = 0;
}

const char *re::rendergraph_helper::getTransparentMeshPasses@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE1C03E0, memory_order_acquire) & 1) == 0)
  {
    v23 = a1;
    v9 = __cxa_guard_acquire(&qword_1EE1C03E0);
    a1 = v23;
    if (v9)
    {
      _MergedGlobals_524 = re::hashString("Occlusion", v10);
      __cxa_guard_release(&qword_1EE1C03E0);
      a1 = v23;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C03F0, memory_order_acquire) & 1) == 0)
  {
    v24 = a1;
    v11 = __cxa_guard_acquire(&qword_1EE1C03F0);
    a1 = v24;
    if (v11)
    {
      qword_1EE1C03E8 = re::hashString("FadeDepthPrepass", v12);
      __cxa_guard_release(&qword_1EE1C03F0);
      a1 = v24;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0400, memory_order_acquire) & 1) == 0)
  {
    v25 = a1;
    v13 = __cxa_guard_acquire(&qword_1EE1C0400);
    a1 = v25;
    if (v13)
    {
      qword_1EE1C03F8 = re::hashString("FadeOpaqueAfterPrepass", v14);
      __cxa_guard_release(&qword_1EE1C0400);
      a1 = v25;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0410, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v15 = __cxa_guard_acquire(&qword_1EE1C0410);
    a1 = v26;
    if (v15)
    {
      qword_1EE1C0408 = re::hashString("FadeOpaqueNoPrepass", v16);
      __cxa_guard_release(&qword_1EE1C0410);
      a1 = v26;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0420, memory_order_acquire) & 1) == 0)
  {
    v27 = a1;
    v17 = __cxa_guard_acquire(&qword_1EE1C0420);
    a1 = v27;
    if (v17)
    {
      qword_1EE1C0418 = re::hashString("FadeOpaque", v18);
      __cxa_guard_release(&qword_1EE1C0420);
      a1 = v27;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0430, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v19 = __cxa_guard_acquire(&qword_1EE1C0430);
    a1 = v28;
    if (v19)
    {
      qword_1EE1C0428 = re::hashString("Opaque", v20);
      __cxa_guard_release(&qword_1EE1C0430);
      a1 = v28;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0440, memory_order_acquire) & 1) == 0)
  {
    v29 = a1;
    v21 = __cxa_guard_acquire(&qword_1EE1C0440);
    a1 = v29;
    if (v21)
    {
      qword_1EE1C0438 = re::hashString("Transparent", v22);
      __cxa_guard_release(&qword_1EE1C0440);
      a1 = v29;
    }
  }

  v1 = _MergedGlobals_524;
  *a1 = "Occlusion";
  a1[1] = v1;
  *(a1 + 8) = 1536;
  *(a1 + 18) = 8;
  *(a1 + 19) = 16843521;
  *(a1 + 23) = 1;
  *(a1 + 24) = 0;
  v2 = qword_1EE1C03E8;
  a1[4] = "FadeDepthPrepass";
  a1[5] = v2;
  *(a1 + 24) = 1024;
  *(a1 + 50) = 10;
  *(a1 + 55) = 257;
  *(a1 + 51) = 16843009;
  v3 = qword_1EE1C03F8;
  a1[8] = "FadeOpaqueAfterPrepass";
  a1[9] = v3;
  *(a1 + 40) = -256;
  *(a1 + 82) = 10;
  *(a1 + 87) = 258;
  *(a1 + 83) = 33686018;
  v4 = qword_1EE1C0408;
  a1[12] = "FadeOpaqueNoPrepass";
  a1[13] = v4;
  *(a1 + 56) = 768;
  *(a1 + 114) = 8;
  *(a1 + 119) = 3;
  *(a1 + 115) = 50529027;
  *(a1 + 120) = 0;
  v5 = qword_1EE1C0418;
  a1[16] = "FadeOpaque";
  a1[17] = v5;
  *(a1 + 72) = -256;
  *(a1 + 146) = 8;
  *(a1 + 151) = 2;
  *(a1 + 147) = 33686274;
  *(a1 + 152) = 1;
  result = "Opaque";
  v7 = qword_1EE1C0428;
  a1[20] = "Opaque";
  a1[21] = v7;
  *(a1 + 88) = 1536;
  *(a1 + 178) = 8;
  *(a1 + 183) = 2;
  *(a1 + 179) = 33686274;
  *(a1 + 184) = 1;
  v8 = qword_1EE1C0438;
  a1[24] = "Transparent";
  a1[25] = v8;
  *(a1 + 104) = -256;
  *(a1 + 210) = 8;
  *(a1 + 211) = 50529027;
  *(a1 + 215) = 3;
  *(a1 + 216) = 0;
  return result;
}

void re::rendergraph_helper::getRenderOnTopMeshPasses(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1EE1C0450, memory_order_acquire) & 1) == 0)
  {
    v25 = a1;
    v9 = __cxa_guard_acquire(&qword_1EE1C0450);
    a1 = v25;
    if (v9)
    {
      qword_1EE1C0448 = re::hashString("DepthPush", v10);
      __cxa_guard_release(&qword_1EE1C0450);
      a1 = v25;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0460, memory_order_acquire) & 1) == 0)
  {
    v26 = a1;
    v11 = __cxa_guard_acquire(&qword_1EE1C0460);
    a1 = v26;
    if (v11)
    {
      qword_1EE1C0458 = re::hashString("Occlusion", v12);
      __cxa_guard_release(&qword_1EE1C0460);
      a1 = v26;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0470, memory_order_acquire) & 1) == 0)
  {
    v27 = a1;
    v13 = __cxa_guard_acquire(&qword_1EE1C0470);
    a1 = v27;
    if (v13)
    {
      qword_1EE1C0468 = re::hashString("FadeDepthPrepass", v14);
      __cxa_guard_release(&qword_1EE1C0470);
      a1 = v27;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0480, memory_order_acquire) & 1) == 0)
  {
    v28 = a1;
    v15 = __cxa_guard_acquire(&qword_1EE1C0480);
    a1 = v28;
    if (v15)
    {
      qword_1EE1C0478 = re::hashString("FadeOpaqueAfterPrepass", v16);
      __cxa_guard_release(&qword_1EE1C0480);
      a1 = v28;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C0490, memory_order_acquire) & 1) == 0)
  {
    v29 = a1;
    v17 = __cxa_guard_acquire(&qword_1EE1C0490);
    a1 = v29;
    if (v17)
    {
      qword_1EE1C0488 = re::hashString("FadeOpaqueNoPrepass", v18);
      __cxa_guard_release(&qword_1EE1C0490);
      a1 = v29;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C04A0, memory_order_acquire) & 1) == 0)
  {
    v30 = a1;
    v19 = __cxa_guard_acquire(&qword_1EE1C04A0);
    a1 = v30;
    if (v19)
    {
      qword_1EE1C0498 = re::hashString("FadeOpaque", v20);
      __cxa_guard_release(&qword_1EE1C04A0);
      a1 = v30;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C04B0, memory_order_acquire) & 1) == 0)
  {
    v31 = a1;
    v21 = __cxa_guard_acquire(&qword_1EE1C04B0);
    a1 = v31;
    if (v21)
    {
      qword_1EE1C04A8 = re::hashString("Opaque", v22);
      __cxa_guard_release(&qword_1EE1C04B0);
      a1 = v31;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1C04C0, memory_order_acquire) & 1) == 0)
  {
    v32 = a1;
    v23 = __cxa_guard_acquire(&qword_1EE1C04C0);
    a1 = v32;
    if (v23)
    {
      qword_1EE1C04B8 = re::hashString("Transparent", v24);
      __cxa_guard_release(&qword_1EE1C04C0);
      a1 = v32;
    }
  }

  v1 = qword_1EE1C0448;
  *a1 = "DepthPush";
  *(a1 + 8) = v1;
  *(a1 + 16) = -248;
  *(a1 + 18) = 0;
  *(a1 + 23) = 0;
  *(a1 + 19) = 0;
  v2 = qword_1EE1C0458;
  *(a1 + 32) = "Occlusion";
  *(a1 + 40) = v2;
  *(a1 + 48) = -248;
  *(a1 + 50) = 0;
  *(a1 + 51) = 16843521;
  *(a1 + 55) = 1;
  *(a1 + 56) = 1;
  v3 = qword_1EE1C0468;
  *(a1 + 64) = "FadeDepthPrepass";
  *(a1 + 72) = v3;
  *(a1 + 80) = 1032;
  *(a1 + 82) = 2;
  *(a1 + 87) = 257;
  *(a1 + 83) = 16843009;
  v4 = qword_1EE1C0478;
  *(a1 + 96) = "FadeOpaqueAfterPrepass";
  *(a1 + 104) = v4;
  *(a1 + 112) = -248;
  *(a1 + 114) = 2;
  *(a1 + 115) = 33686018;
  *(a1 + 119) = 258;
  v5 = qword_1EE1C0488;
  *(a1 + 128) = "FadeOpaqueNoPrepass";
  *(a1 + 136) = v5;
  *(a1 + 144) = 776;
  *(a1 + 146) = 0;
  *(a1 + 151) = 3;
  *(a1 + 147) = 50529027;
  *(a1 + 152) = 0;
  v6 = qword_1EE1C0498;
  *(a1 + 160) = "FadeOpaque";
  *(a1 + 168) = v6;
  *(a1 + 176) = -248;
  *(a1 + 178) = 0;
  *(a1 + 183) = 2;
  *(a1 + 179) = 33686274;
  *(a1 + 184) = 1;
  v7 = qword_1EE1C04A8;
  *(a1 + 192) = "Opaque";
  *(a1 + 200) = v7;
  *(a1 + 208) = 1544;
  *(a1 + 210) = 0;
  *(a1 + 215) = 2;
  *(a1 + 211) = 33686274;
  *(a1 + 216) = 1;
  v8 = qword_1EE1C04B8;
  *(a1 + 224) = "Transparent";
  *(a1 + 232) = v8;
  *(a1 + 240) = -248;
  *(a1 + 242) = 0;
  *(a1 + 247) = 3;
  *(a1 + 243) = 50529027;
  *(a1 + 248) = 0;
}

uint64_t *re::RenderGraphProbeArrayClampNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  v14 = 0;
  v17 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27[0] = "generateClampedMap";
  v27[1] = 18;
  re::DynamicString::operator=(&v10, v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 33, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v25)
  {

    v25 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphProbeArrayClampNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 8) == 1)
    {
      re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v13);
      [v13 setComputePipelineState:this[33]];
      [v13 setTexture:*(v5 + 280) atIndex:0];
      [v13 setTexture:*(v5 + 304) atIndex:1];
      v6 = *(v5 + 32);
      v7 = *(v5 + 20);
      v9 = v7;
      v10 = *(v5 + 16);
      v11 = v7;
      v12 = v6;
      [v13 setBytes:&v10 length:24 atIndex:0];
      v8 = v9 + 126;
      if (v9 >= -63)
      {
        v8 = v9 + 63;
      }

      v16 = (v8 >> 6);
      v17 = vdupq_n_s64(1uLL);
      v14 = xmmword_1E3106FE0;
      v15 = 1;
      [v13 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v13, 1);
    }
  }
}

void re::RenderGraphProbeArrayMipGenerationNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v3 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 40) == 1)
    {
      re::RenderGraphContext::makeBlitCommandEncoder(a2, 0, &v5);
      re::mtl::BlitCommandEncoder::generateMipmaps(&v5, *(v4 + 280));
      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(a2, &v5, 1);
    }
  }
}

uint64_t *re::RenderGraphProbeArraySpecularFilterNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  v14 = 0;
  v17 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27[0] = "generatePrefilteredSpecularMapFast";
  v27[1] = 34;
  re::DynamicString::operator=(&v10, v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 33, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v25)
  {

    v25 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphProbeArraySpecularFilterNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 128))
    {
      re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v27);
      [v27 setComputePipelineState:this[33]];
      v6 = *(v5 + 128);
      if (v6)
      {
        v7 = *(v5 + 144);
        v8 = &v7[17 * v6];
        v18 = vdupq_n_s64(0x1FFFFFFFuLL);
        v19 = vdupq_n_s64(7uLL);
        v17 = vdupq_n_s64(8uLL);
        do
        {
          [v27 setTexture:*(v5 + 304) atIndex:0];
          [v27 setTexture:*(v5 + 280) atIndex:1];
          v9 = [*(v5 + 288) newTextureViewWithPixelFormat:115 textureType:3 levels:v7[14] slices:1, 0, 6];
          [v27 setTexture:v9 atIndex:2];
          v20 = vmovn_s64(*(v7 + 2));
          v10 = v7[14];
          v11 = v7[15];
          v21 = *v7;
          v22 = v10;
          v23 = v11;
          v12 = re::RenderGraphProbeArraySpecularFilterNode::kTotalSampleCounts[v10];
          v24 = v10 / (v11 - 1);
          v26 = v12;
          v25 = 16;
          v13 = (&re::RenderGraphProbeArraySpecularFilterNode::kGGXSampleDirections + 16 * (16 * v10));
          for (i = 2; i != 18; ++i)
          {
            v15 = *v13++;
            *&v20.i8[16 * i] = v15;
          }

          [v27 setBytes:&v20 length:304 atIndex:0];
          v16 = v7[1];
          v30 = vandq_s8(vshrq_n_u64(vaddq_s64(*(v7 + 2), v19), 3uLL), v18);
          v31 = v16;
          v28 = v17;
          v29 = 1;
          [v27 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
          if (v9)
          {
          }

          v7 += 17;
        }

        while (v7 != v8);
      }

      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v27, 1);
    }
  }
}

uint64_t *re::RenderGraphProbeArrayDiffuseFilterNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  v14 = 0;
  v17 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27[0] = "generatePrefilteredDiffuseMapFast";
  v27[1] = 33;
  re::DynamicString::operator=(&v10, v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 33, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v25)
  {

    v25 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphProbeArrayDiffuseFilterNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 48) == 1)
    {
      re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v14);
      [v14 setComputePipelineState:this[33]];
      v6 = 1;
      v7 = [*(v5 + 296) newTextureViewWithPixelFormat:115 textureType:3 levels:0 slices:1, 0, 6];
      [v14 setTexture:v7 atIndex:1];
      [v14 setTexture:*(v5 + 304) atIndex:0];
      v11 = vmovn_s64(*(v5 + 60));
      LODWORD(v12) = *(v5 + 52);
      v13 = 32;
      v8 = &re::RenderGraphProbeArrayDiffuseFilterNode::kCosSampleDirections;
      do
      {
        v9 = *v8++;
        *&v11.i8[16 * v6++] = v9;
      }

      while (v6 != 33);
      [v14 setBytes:&v11 length:544 atIndex:0];
      v10 = *(v5 + 56);
      v17 = vandq_s8(vshrq_n_u64(vaddq_s64(*(v5 + 84), vdupq_n_s64(7uLL)), 3uLL), vdupq_n_s64(0x1FFFFFFFuLL));
      v18 = v10;
      v15 = vdupq_n_s64(8uLL);
      v16 = 1;
      [v14 dispatchThreadgroups:&v17 threadsPerThreadgroup:{&v15, *&v11, v12}];
      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v14, 1);
      if (v7)
      {
      }
    }
  }
}

void re::RenderGraphProbeArrayCopyNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v3 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 168))
    {
      re::RenderGraphContext::makeBlitCommandEncoder(a2, 0, &v15);
      v5 = *(v4 + 168);
      if (v5)
      {
        v6 = *(v4 + 184);
        v7 = 12 * v5;
        while (1)
        {
          v13 = 0;
          v14 = 0;
          v8 = v6[2];
          if (v8 == 1)
          {
            break;
          }

          v9 = 0;
          v10 = 0;
          if (!v8)
          {
            v12 = [*(v4 + 264) newTextureViewWithPixelFormat:115 textureType:5 levels:0 slices:objc_msgSend(*(v4 + 264), sel_mipmapLevelCount, 0), (6 * *v6), 6];
            NS::SharedPtr<MTL::Texture>::operator=(&v14, &v12);
            if (v12)
            {
            }

            v11 = (v4 + 288);
LABEL_13:
            NS::SharedPtr<MTL::Buffer>::operator=(&v13, v11);
            v10 = v13;
            v9 = v14;
          }

          re::mtl::BlitCommandEncoder::textureCopy(&v15, v10, v9);
          if (v13)
          {
          }

          if (v14)
          {
          }

          v6 += 3;
          v7 -= 12;
          if (!v7)
          {
            goto LABEL_19;
          }
        }

        v12 = [*(v4 + 272) newTextureViewWithPixelFormat:115 textureType:5 levels:0 slices:objc_msgSend(*(v4 + 272), sel_mipmapLevelCount), (6 * *v6), 6];
        NS::SharedPtr<MTL::Texture>::operator=(&v14, &v12);
        if (v12)
        {
        }

        v11 = (v4 + 296);
        goto LABEL_13;
      }

LABEL_19:
      re::RenderGraphContext::finishEncoding<re::mtl::BlitCommandEncoder &>(a2, &v15, 1);
    }
  }
}

uint64_t *re::RenderGraphProbeArrayLatLongNode::configure(void **this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  re::DynamicString::setCapacity(&v10, 0);
  v14 = 0;
  v17 = 0;
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27[0] = "generateLatLongMap";
  v27[1] = 18;
  re::DynamicString::operator=(&v10, v27);
  ComputePipelineState = re::getOrCreateComputePipelineState(*(a4 + 1), &v10);
  NS::SharedPtr<MTL::Buffer>::operator=(this + 33, ComputePipelineState);
  re::RenderGraphNode::configure(this, a2, a3, a4);
  if (v25)
  {

    v25 = 0;
  }

  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v20);
  if (v17 == 1 && v18)
  {
    if (BYTE8(v18))
    {
      (*(*v18 + 40))();
    }

    v18 = 0u;
    v19 = 0u;
  }

  if (v14 == 1 && v15)
  {
    if (BYTE8(v15))
    {
      (*(*v15 + 40))();
    }

    v16 = 0u;
    v15 = 0u;
  }

  result = v10;
  if (v10)
  {
    if (v11)
    {
      return (*(*v10 + 40))();
    }
  }

  return result;
}

void re::RenderGraphProbeArrayLatLongNode::execute(const char **this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(*(a2 + 146), this[4]);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 192) == 1)
    {
      re::RenderGraphContext::makeComputeCommandEncoder(a2, 0, 0, &v17);
      [v17 setComputePipelineState:this[33]];
      [v17 setTexture:*(v5 + 264) atIndex:0];
      [v17 setTexture:*(v5 + 304) atIndex:1];
      v10 = *(v5 + 200);
      _ZN2re10FixedArrayIDv2_jEC2ERKS2_(&v11, (v5 + 216));
      re::FixedArray<unsigned int>::FixedArray(&v14, (v5 + 240));
      v7 = v10;
      v8 = *(&v10 + 1);
      v9 = v12;
      [v17 setBytes:&v7 length:16 atIndex:0];
      [v17 setBytes:v13 length:8 * v9 atIndex:1];
      [v17 setBytes:v16 length:4 * v9 atIndex:2];
      v6 = HIDWORD(v10) + 126;
      if (SHIDWORD(v10) >= -63)
      {
        v6 = HIDWORD(v10) + 63;
      }

      v19 = 1;
      v20 = (v6 >> 6);
      v21 = vdupq_n_s64(1uLL);
      v18 = xmmword_1E3106FE0;
      [v17 dispatchThreadgroups:&v20 threadsPerThreadgroup:&v18];
      re::RenderGraphContext::finishEncoding<re::mtl::ComputeCommandEncoder &>(a2, &v17, 1);
      if (v14)
      {
        if (v15)
        {
          (*(*v14 + 40))();
          v15 = 0;
          v16 = 0;
        }

        v14 = 0;
      }

      if (v11)
      {
        if (v12)
        {
          (*(*v11 + 40))();
        }
      }
    }
  }
}

void re::RenderGraphProbeArrayClampNode::~RenderGraphProbeArrayClampNode(re::RenderGraphProbeArrayClampNode *this)
{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProbeArrayMipGenerationNode::~RenderGraphProbeArrayMipGenerationNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProbeArraySpecularFilterNode::~RenderGraphProbeArraySpecularFilterNode(re::RenderGraphProbeArraySpecularFilterNode *this)
{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProbeArrayDiffuseFilterNode::~RenderGraphProbeArrayDiffuseFilterNode(re::RenderGraphProbeArrayDiffuseFilterNode *this)
{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProbeArrayCopyNode::~RenderGraphProbeArrayCopyNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphProbeArrayLatLongNode::~RenderGraphProbeArrayLatLongNode(re::RenderGraphProbeArrayLatLongNode *this)
{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  v2 = *(this + 33);
  if (v2)
  {

    *(this + 33) = 0;
  }

  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::tryGet<re::ProbeWriteContext>(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ProbeWriteContext", 0x11uLL, 0, &v17);
  v4 = v17;
  v5 = v18;
  v6 = strlen(a2);
  if (v6)
  {
    MurmurHash3_x64_128(a2, v6, 0, &v17);
    v7 = ((v18 - 0x61C8864680B583E9 + (v17 << 6) + (v17 >> 2)) ^ v17) - 0x61C8864680B583E9;
  }

  else
  {
    v7 = 0x9E3779B97F4A7C17;
  }

  v8 = "N2re17ProbeWriteContextE";
  if (("N2re17ProbeWriteContextE" & 0x8000000000000000) != 0)
  {
    v9 = ("N2re17ProbeWriteContextE" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v12 = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  v13 = ((((v12 >> 2) + (v12 << 6) + v7) ^ v12) - 0x61C8864680B583E9 + (v8 << 6) + (v8 >> 2)) ^ v8;
  v14 = *(*(a1 + 24) + 4 * (v13 % *(a1 + 40)));
  if (v14 == 0x7FFFFFFF)
  {
    return 0;
  }

  v15 = *(a1 + 32);
  while (*(v15 + 24 * v14 + 8) != v13)
  {
    v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v15 + 24 * v14 + 16);
}

void re::RenderGraphARUploadPostParams::execute(re::RenderGraphARUploadPostParams *this, re::RenderGraphContext *a2)
{
  if (*(this + 264) == 1 && (*(this + 265) & 1) == 0)
  {
    v4 = re::RenderGraphDataStore::add<re::TonemapParametersData>(*(a2 + 146), *(*(a2 + 5) + 48));
    re::TonemapUserParameters::computeRenderParameters((this + 268), &v20);
    v5 = v24;
    *(v4 + 88) = v25;
    v6 = v27;
    *(v4 + 104) = v26;
    *(v4 + 120) = v6;
    v7 = v20;
    *(v4 + 24) = v21;
    v8 = v23;
    *(v4 + 40) = v22;
    *(v4 + 56) = v8;
    *(v4 + 72) = v5;
    *(v4 + 136) = v28;
    *(v4 + 8) = v7;
  }

  if (*(this + 266) == 1)
  {
    v9 = *(a2 + 2);
    v10 = xmmword_1E30476A0;
    v11 = xmmword_1E3047680;
    v12 = xmmword_1E3047670;
    if (v9[112] == 1 && *v9 != v9[1] && v9[113] == 1)
    {
      v12 = *(v9 + 1);
      v11 = *(v9 + 2);
      v10 = *(v9 + 3);
    }

    v16 = v12;
    v17 = v11;
    v18 = v10;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v20, (*a2 + 16), 0x30uLL, 0x10uLL);
    v13 = v21;
    v19 = *(&v20 + 1);
    v14 = (v20 + DWORD2(v20));
    *v14 = v16;
    v14[1] = v17;
    v14[2] = v18;
    v15 = re::RenderGraphDataStore::add<re::RenderGraphDataStoreWrapper<re::ColorExecData>>(*(a2 + 146), *(*(a2 + 5) + 48));
    *&v20 = v13;
    DWORD2(v21) = 0;
    *&v22 = v19;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v15 + 8, &v20);
    *(v15 + 40) = v22;
    if (DWORD2(v21) != -1)
    {
      (off_1F5D146F8[DWORD2(v21)])(&v29, &v20);
    }
  }
}

uint64_t re::RenderGraphARCombinedPostProcessNode::setup(re::RenderGraphARCombinedPostProcessNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v8, &v13, &v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v13 = 0;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v14 = 136315906;
    v15 = "operator[]";
    v16 = 1024;
    if (v10)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v17 = 789;
    v18 = 2048;
    v19 = 0;
    v20 = 2048;
    v21 = 0;
    _os_log_send_and_compose_impl(v11, &v13, &v22, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  re::RenderGraphBuilder::read(a2, *(this + 27), *(this + 27) + 16);
  if (!*(this + 30))
  {
    goto LABEL_8;
  }

  v5 = *(this + 32);
  *&v22 = 0x100000000;
  v23 = xmmword_1E30474D0;
  LOWORD(v24) = 0;
  *(&v24 + 4) = 0;
  return re::RenderGraphBuilder::write(a2, v5, &v22);
}

void re::RenderGraphARCombinedPostProcessNode::configure(re::RenderGraphARCombinedPostProcessNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = *(this + 54);
  if (v8)
  {
    v9 = 0;
    for (i = 0; i < v8; ++i)
    {
      v11 = (*(this + 56) + v9);
      if (*(v11 + 1))
      {
        if (v8 <= i)
        {
          v16 = 0;
          memset(v25, 0, sizeof(v25));
          v13 = MEMORY[0x1E69E9C10];
          v17 = 136315906;
          v18 = "operator[]";
          v19 = 1024;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          v20 = 789;
          v21 = 2048;
          v22 = i;
          v23 = 2048;
          v24 = v8;
          _os_log_send_and_compose_impl(v14, &v16, v25, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
          _os_crash_msg();
          __break(1u);
        }

        re::AssetHandle::loadAsync(v11);
        v8 = *(this + 54);
      }

      if (i > 0xE)
      {
        break;
      }

      v9 += 24;
    }
  }

  v12 = *(this + 33);
  if (v12 > 0xF)
  {
    if (v12 == 16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    bzero(this + 8 * v12 + 280, 128 - 8 * v12);
  }

  *(this + 33) = 16;
  ++*(this + 68);
LABEL_12:

  re::RenderGraphNode::configure(this, a2, a3, a4);
}