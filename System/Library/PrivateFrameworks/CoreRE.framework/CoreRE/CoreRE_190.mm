uint64_t re::DrawingManager::initShaderSources(re::DrawingManager *this)
{
  re::MaterialManager::resizeScenes(*(*(this + 32) + 24), 1uLL);
  v2 = *(this + 32);
  v3 = *(*(v2 + 24) + 656);
  v18 = 0x59C04294BD50;
  re::TextureTable::setTexture(v3, &v18, (*(v2 + 56) + 24));
  v17 = 0x27635BB0799E8825;
  v18 = 0;
  re::TextureTable::setTexture(v3, &v17, (*(*(this + 32) + 56) + 24));
  v16 = 0x268DB2F30BB36DB1;
  v17 = 0;
  re::TextureTable::setTexture(v3, &v16, this + 97);
  v16 = 0;
  v4 = *(*(*(this + 32) + 24) + 640);
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity((v4 + 72), 3uLL);
  ++*(v4 + 96);
  v15 = 0x15085BDF2ALL;
  re::TextureTable::setTexture(v4, &v15, this + 92);
  v15 = 0;
  v14 = 0x242DE8CC841767B0;
  re::TextureTable::setTexture(v4, &v14, this + 96);
  v13 = 0x11BEEAE3F6511AA0;
  v14 = 0;
  re::TextureTable::setTexture(v4, &v13, this + 93);
  v6 = *(*(*(this + 32) + 24) + 712);
  v12 = 0x2803BD43311CF958;
  v13 = 0;
  v8[0] = *(this + 94);
  v9 = 0;
  v10 = 0;
  v11 = [*(this + 94) length];
  result = re::BufferTable::setBuffer(v6, &v12, v8);
  if (v9 != -1)
  {
    return (off_1F5D06E28[v9])(&v19, v8);
  }

  return result;
}

void re::DrawingManager::activatePerfSampling(re::DrawingManager *this)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 208);
  if (v2 && ((re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v2) & 1) != 0 || (v3 = *(this + 208)) != 0 && (re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v3) & 1) != 0) || (v4 = *(this + 206)) != 0 && (*(v4 + 177) & 0x10) != 0)
  {
    v5 = re::RenderStat::activatePerfSampling(this + 864, this + 35, 1);
    v6 = re::globalAllocators(v5)[2];
    v10[0] = &unk_1F5D07058;
    v10[1] = this;
    v10[3] = v6;
    v10[4] = v10;
    v7 = re::RenderStat::addMTLCounterHandler(this + 864, v10, 1u);
    v8 = re::globalAllocators(v7)[2];
    v9[0] = &unk_1F5D070C0;
    v9[1] = this;
    v9[3] = v8;
    v9[4] = v9;
    re::RenderStat::addMTLCounterHandler(this + 864, v9, 2u);
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v9);
    re::FunctionBase<24ul,void ()(re::PerfMTLCounterSamplerResult)>::destroyCallable(v10);
  }

  else
  {
    objc_storeStrong(this + 112, *(this + 35));
    atomic_store(1u, this + 904);
    if (*(this + 222))
    {
      if (*(this + 904))
      {
        re::RenderStat::deinitializeCurrentMode(this + 864);
        *(this + 222) = 0;
        ++*(this + 121);
      }

      else
      {
        *(this + 222) = 0;
      }
    }
  }
}

void re::DrawingManager::prepareForDeinit(re::DrawingManager *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    re::RenderThread::join(v2);
  }

  if (*(this + 786) == 1)
  {
    [*(this + 35) dispatchAvailableCompletionNotifications];
  }

  if (!atomic_load(this + 208))
  {
    goto LABEL_13;
  }

  v4 = 0;
  do
  {
    __ns.__rep_ = 100000000;
    std::this_thread::sleep_for (&__ns);
    v5 = v4 + 1;
    if (atomic_load(this + 208))
    {
      v7 = v4 >= 0x13;
    }

    else
    {
      v7 = 1;
    }

    ++v4;
  }

  while (!v7);
  if (v5 != 20)
  {
LABEL_13:
    if (*(this + 786))
    {
      [*(this + 100) waitUntilSignaledValue:*(this + 101) + *(*(this + 32) + 264) - 1 timeoutMS:0xFFFFFFFFLL];

      *(this + 50) = 0u;
    }

    else
    {
      if (*(*(this + 32) + 264))
      {
        v8 = 1;
        do
        {
          dispatch_semaphore_wait(*(this + 99), 0xFFFFFFFFFFFFFFFFLL);
          v9 = *(*(this + 32) + 264);
          v10 = v9 > v8++;
        }

        while (v10);
        if (v9)
        {
          v11 = 1;
          do
          {
            dispatch_semaphore_signal(*(this + 99));
            v10 = *(*(this + 32) + 264) > v11++;
          }

          while (v10);
        }
      }

      v12 = *(this + 99);
      *(this + 99) = 0;
    }
  }

  *(this + 787) = 1;
}

double re::DrawingManager::deinit(re::DrawingManager *this)
{
  re::DrawingManager::cleanupEcbContexts(this);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 1808);
  if (*(this + 76))
  {
    v2 = *(this + 77);
    if (v2)
    {
      if (*(this + 624))
      {
        v3 = (this + 632);
      }

      else
      {
        v3 = *(this + 80);
      }

      v4 = 8 * v2;
      do
      {
        v5 = *v3++;
        (*(*v5 + 2))(v5);
        objc_destroyWeak(v5 + 1);
        v5[1] = 0;
        v4 -= 8;
      }

      while (v4);
    }
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 608);
  v6 = *(this + 39);
  if (v6)
  {
    re::RenderThread::deinit(v6);
    re::internal::destroyPersistent<re::RenderThread>(*(this + 39));
    *(this + 39) = 0;
  }

  *(this + 29) = 0;
  *(this + 248) = 0;
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::clear(this + 48);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::deinit(this + 6);
  re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual(*(this + 40), (*(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(this + 32) + 144) + 16) << 60)));
  v7 = *(this + 37);
  if (v7)
  {
    v8 = re::RenderGraphManager::deinit(v7);
    v9 = *(this + 37);
    if (v9)
    {
      v10 = re::globalAllocators(v8)[2];
      re::RenderGraphManager::~RenderGraphManager(v9);
      (*(*v10 + 40))(v10, v9);
    }

    *(this + 37) = 0;
  }

  v11 = *(this + 38);
  if (v11)
  {
    *(v11 + 8) = 0;

    *(v11 + 80) = 0;
    *(v11 + 128) = 0;
    v13 = *(this + 38);
    if (v13)
    {
      v14 = re::globalAllocators(v12)[2];
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 704);
      v15.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 640);
      v16 = *(v13 + 600);
      if (v16)
      {
        v17 = *(v13 + 632);
        if (v17)
        {
          v18 = *(v13 + 616);
          if (v18)
          {
            v19 = 80 * v18;
            v20 = (v17 + 8);
            do
            {
              if (*v20)
              {

                *v20 = 0;
              }

              v20 += 10;
              v19 -= 80;
            }

            while (v19);
            v16 = *(v13 + 600);
            v17 = *(v13 + 632);
          }

          (*(*v16 + 40))(v16, v17, v15);
        }

        *(v13 + 632) = 0;
        *(v13 + 608) = 0;
        *(v13 + 616) = 0;
        *(v13 + 600) = 0;
        ++*(v13 + 624);
      }

      v21 = *(v13 + 560);
      if (v21)
      {
        v22 = *(v13 + 592);
        if (v22)
        {
          v23 = *(v13 + 576);
          if (v23)
          {
            v24 = 24 * v23;
            v25 = (v22 + 8);
            do
            {
              if (*v25)
              {

                *v25 = 0;
              }

              v25 += 3;
              v24 -= 24;
            }

            while (v24);
            v21 = *(v13 + 560);
            v22 = *(v13 + 592);
          }

          (*(*v21 + 40))(v21, v22, v15);
        }

        *(v13 + 592) = 0;
        *(v13 + 568) = 0;
        *(v13 + 576) = 0;
        *(v13 + 560) = 0;
        ++*(v13 + 584);
      }

      if (*(v13 + 488) == 1)
      {
        re::FixedArray<CoreIKTransform>::deinit((v13 + 536));
        re::FixedArray<CoreIKTransform>::deinit((v13 + 512));
      }

      re::DynamicArray<unsigned long>::deinit(v13 + 448);
      re::DynamicArray<unsigned long>::deinit(v13 + 344);
      if (*(v13 + 232) == 1)
      {
        std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v13 + 256);
        v26 = *(v13 + 240);
        if (v26)
        {

          *(v13 + 240) = 0;
        }
      }

      v27 = *(v13 + 192);
      if (v27)
      {
        v28 = *(v13 + 224);
        if (v28)
        {
          v29 = *(v13 + 208);
          if (v29)
          {
            v30 = v29 << 6;
            v31 = v28 + 16;
            do
            {
              std::__function::__value_func<void ()(re::ProbeManager &,long long)>::~__value_func[abi:nn200100](v31);
              v32 = *(v31 - 16);
              if (v32)
              {

                *(v31 - 16) = 0;
              }

              v31 += 64;
              v30 -= 64;
            }

            while (v30);
            v27 = *(v13 + 192);
            v28 = *(v13 + 224);
          }

          (*(*v27 + 40))(v27, v28);
        }

        *(v13 + 224) = 0;
        *(v13 + 200) = 0;
        *(v13 + 208) = 0;
        *(v13 + 192) = 0;
        ++*(v13 + 216);
      }

      v33 = *(v13 + 136);
      if (v33)
      {
        if (*(v13 + 168))
        {
          (*(*v33 + 40))(v33);
        }

        *(v13 + 168) = 0;
        *(v13 + 144) = 0;
        *(v13 + 152) = 0;
        *(v13 + 136) = 0;
        ++*(v13 + 160);
      }

      v34 = *(v13 + 128);
      if (v34)
      {

        *(v13 + 128) = 0;
      }

      v35 = *(v13 + 120);
      if (v35)
      {

        *(v13 + 120) = 0;
      }

      v36 = *(v13 + 112);
      if (v36)
      {

        *(v13 + 112) = 0;
      }

      v37 = *(v13 + 104);
      if (v37)
      {

        *(v13 + 104) = 0;
      }

      v38 = *(v13 + 88);
      if (v38)
      {

        *(v13 + 88) = 0;
      }

      v39 = *(v13 + 80);
      if (v39)
      {

        *(v13 + 80) = 0;
      }

      v40 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v13 + 16);
      (*(*v14 + 40))(v14, v13, v40);
    }

    *(this + 38) = 0;
  }

  v41 = *(this + 40);
  if (v41)
  {
    v41 = re::PerFrameAllocatorGPUManager::deinit(v41);
    v42 = *(this + 40);
    if (v42)
    {
      v43 = re::globalAllocators(v41)[2];
      re::DynamicArray<unsigned long>::deinit(v42 + 5272);
      v44 = 5120;
      do
      {
        *(v42 + v44 + 96) = 0;
        v44 -= 40;
      }

      while (v44);
      re::DynamicArray<re::RigComponentConstraint>::deinit(v42 + 88);
      re::DataArray<re::PerFrameAllocatorGPU>::deinit(v42 + 16);
      re::DynamicArray<unsigned long>::deinit(v42 + 16);
      v41 = (*(*v43 + 40))(v43, v42);
    }

    *(this + 40) = 0;
  }

  v45 = re::globalAllocators(v41);
  v46 = *(this + 102);
  if (v46)
  {
    v47 = v45[2];
    v49 = *(v46 - 16);
    v48 = *(v46 - 8);
    if (v49 - 1 >= 0)
    {
      v50 = v46 - 8;
      do
      {
        v51 = *(v50 + 8 * v49);
        if (v51)
        {

          *(v50 + 8 * v49) = 0;
        }

        --v49;
      }

      while (v49 > 0);
    }

    (*(*v47 + 40))(v47, v48);
  }

  *(this + 102) = 0;
  if (*(this + 904))
  {
    re::RenderStat::clearMTLCounterHandlers(this + 108);
    re::RenderStat::deinitializeCurrentMode(this + 864);
    v52 = *(this + 112);
    *(this + 112) = 0;
  }

  v53 = *(*(this + 32) + 144);

  return re::FrameManager::deinitRenderFrameCounting(v53);
}

void re::DrawingManager::cleanupEcbContexts(os_unfair_lock_s *this)
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 462);
  v2 = *&this[456]._os_unfair_lock_opaque;
  if (v2)
  {
    v3 = 0;
    for (i = 0; i < v2; v3 = i)
    {
      v5 = *&this[460]._os_unfair_lock_opaque;
      v6 = *(v5 + 8 * v3);
      v7 = *(v6 + 24);
      if (v7)
      {
        v8 = atomic_load((v6 + 28));
        if (v7 == v8)
        {
          v9 = *(v5 + 8 * v3);
          if (*(v9 + 24))
          {
            v10 = 0;
            v11 = *(*&this[64]._os_unfair_lock_opaque + 144);
            do
            {
              FrameRefCount = re::FrameManager::getFrameRefCount(v11, *(v9 + 32));
              if (FrameRefCount)
              {
                atomic_fetch_add(FrameRefCount + 32, 0xFFFFFFFF);
              }

              v9 = *(v5 + 8 * v3);
              v13 = *(v9 + 40);
              if (*(v9 + 32) != v13)
              {
                v14 = re::FrameManager::getFrameRefCount(v11, v13);
                if (v14)
                {
                  atomic_fetch_add(v14 + 32, 0xFFFFFFFF);
                }

                v9 = *(v5 + 8 * v3);
              }

              ++v10;
            }

            while (v10 < *(v9 + 24));
          }

          v15 = *&this[456]._os_unfair_lock_opaque;
          if (v15 <= v3)
          {
            v24 = 0;
            memset(v33, 0, sizeof(v33));
            v21 = MEMORY[0x1E69E9C10];
            v25 = 136315906;
            v26 = "removeAt";
            v27 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v22 = 3;
            }

            else
            {
              v22 = 2;
            }

            v28 = 931;
            v29 = 2048;
            v30 = v3;
            v31 = 2048;
            v32 = v15;
            _os_log_send_and_compose_impl(v22, &v24, v33, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
            _os_crash_msg();
            __break(1u);
          }

          v2 = v15 - 1;
          if (v15 - 1 > v3)
          {
            v16 = *&this[460]._os_unfair_lock_opaque;
            v17 = v16 + 8 * v15;
            v18 = *(v16 + 8 * v3);
            *(v16 + 8 * v3) = *(v17 - 8);
            *(v17 - 8) = v18;
          }

          v19 = *&this[460]._os_unfair_lock_opaque + 8 * v15;
          v20 = *(v19 - 8);
          if (v20)
          {

            *(v19 - 8) = 0;
            v2 = *&this[456]._os_unfair_lock_opaque - 1;
          }

          *&this[456]._os_unfair_lock_opaque = v2;
          ++this[458]._os_unfair_lock_opaque;
          continue;
        }

        v2 = *&this[456]._os_unfair_lock_opaque;
      }

      ++i;
    }
  }

  os_unfair_lock_unlock(this + 462);
}

re *re::internal::destroyPersistent<re::RenderThread>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    std::condition_variable::~condition_variable((v1 + 392));
    std::mutex::~mutex((v1 + 328));
    std::condition_variable::~condition_variable((v1 + 272));
    std::mutex::~mutex((v1 + 208));
    std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v1 + 128);
    for (i = 72; i != -8; i -= 40)
    {
      re::DynamicArray<unsigned long>::deinit(v1 + i);
    }

    std::thread::~thread(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1);
  }

  return result;
}

void re::DrawingManager::deactivatePerfSampling(re::DrawingManager *this)
{
  re::RenderStat::clearMTLCounterHandlers(this + 108);
  re::RenderStat::deinitializeCurrentMode(this + 864);
  v2 = *(this + 112);
  *(this + 112) = 0;
}

void re::DrawingManager::waitForGPUInternal(re::DrawingManager *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v5, 5008, this, *(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v4);
  if (*(this + 786) == 1)
  {
    [*(this + 100) waitUntilSignaledValue:*(this + 101) timeoutMS:0xFFFFFFFFLL];
  }

  else
  {
    dispatch_semaphore_wait(*(this + 99), 0xFFFFFFFFFFFFFFFFLL);
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)12>::end(v4);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v5, v2, v3);
}

uint64_t re::RenderFrameBox::get(pthread_t a1, unint64_t a2)
{
  v2 = a2;
  p_sig = &a1->__sig;
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = *&a1->__opaque[240];
  v5 = *(v4 + 112);
  if (!v5 || (v6 = *(v5 + 312)) == 0)
  {
    if ((~a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  a1 = pthread_self();
  v7 = v2 & 0xFFFFFFFFFFFFFFFLL;
  if (*v6 == a1)
  {
    if (v7 == 0xFFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    v21 = &p_sig[2 * (v2 & 7)];
    if (((v21[17] ^ v2) & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      return 0;
    }

    else
    {
      return v21[16];
    }
  }

  if (v7 == 0xFFFFFFFFFFFFFFFLL)
  {
    v4 = p_sig[32];
LABEL_7:
    v2 = *(*(v4 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v4 + 144) + 16) << 60);
  }

LABEL_8:
  v8 = &p_sig[2 * (v2 & 7)];
  if (((v8[1] ^ v2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    return *v8;
  }

  v9 = *(*(p_sig[32] + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(p_sig[32] + 144) + 40) << 60);
  v10 = re::globalAllocators(a1);
  v11 = re::PerFrameAllocatorManager::perFrameAllocator(v10[6], v2);
  v12 = re::globalAllocators(v11);
  v13 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v9);
  FrameRefCount = re::FrameManager::getFrameRefCount(*(p_sig[32] + 144), v2 & 0xFFFFFFFFFFFFFFFLL);
  if (FrameRefCount && *(FrameRefCount + 2) != 0xFFFFFFFFFFFFFFFLL)
  {
    v18 = p_sig[2 * (*(FrameRefCount + 2) & 7)];
    *(v18 + 384) = v2;
    *(v18 + 392) = v11;
    *(v18 + 400) = v9;
    *(v18 + 408) = v13;
    re::RenderFrame::prepareForReuse(v18);
  }

  else
  {
    re::globalAllocators(FrameRefCount);
    v15 = (*(*v11 + 32))(v11, 4808, 8);
    v16 = re::RenderFrame::RenderFrame(v15, p_sig[32], p_sig[33], p_sig[34], v2, v11, v9, v13);
    v17 = re::globalAllocators(v16)[2];
    v23[0] = &unk_1F5D07168;
    v23[3] = v17;
    v23[4] = v23;
    v18 = (*(*v11 + 16))(v11, v15, v23);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v23);
    v19 = *(p_sig[32] + 112);
    if (v19)
    {
      v20 = *(v19 + 296);
    }

    else
    {
      v20 = 0;
    }

    re::RenderGraphManager::checkDisableTimeouts(v20);
    if (*(v20 + 412) == 1)
    {
      *(v18 + 448) = 1;
    }

    *(v18 + 449) = *(v20 + 380);
  }

  *v8 = v18;
  v8[1] = v2;
  return v18;
}

uint64_t (***re::DrawingManager::trackCommandBufferForFrameCompletion(re *a1, void **a2, uint64_t a3))(void)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v5 = a3 & 0xFFFFFFFFFFFFFFFLL;
  v6 = re::globalAllocators(a1)[2];
  v12[2] = v5;
  v12[3] = v6;
  v12[0] = &unk_1F5D06E48;
  v12[1] = a1;
  v12[4] = v12;
  v10 = v6;
  v11 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v9, v12);
  re::mtl::CommandBuffer::addCompletionHandler(a2, v9);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v9);
  FrameRefCount = re::FrameManager::getFrameRefCount(*(*(a1 + 32) + 144), v5);
  if (FrameRefCount)
  {
    atomic_fetch_add(FrameRefCount + 32, 1u);
  }

  return re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v12);
}

void re::DrawingManager::commit(uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  re::DrawingManager::commitQueuedCommandBuffers(a1, a2);
  if (*(a1 + 1768))
  {
    v3 = 0;
    do
    {
      if ([*(*(a1 + 1784) + 8 * v3) status] <= 1)
      {
        v4 = *(a1 + 1768);
        if (v4 <= v3)
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

          v12 = 789;
          v13 = 2048;
          v14 = v3;
          v15 = 2048;
          v16 = v4;
          _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
          _os_crash_msg();
          __break(1u);
        }

        [*(*(a1 + 1784) + 8 * v3) commit];
      }

      ++v3;
    }

    while (*(a1 + 1768) > v3);
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(a1 + 1752);
}

void re::DrawingManager::commitQueuedCommandBuffers(uint64_t a1, unint64_t a2)
{
  v2 = re::RenderFrameBox::get((a1 + 328), a2);
  v3 = *(v2 + 4600);
  if (v3)
  {
    v4 = v2;
    if (*(v2 + 4608))
    {
      v5 = v2 + 4616;
    }

    else
    {
      v5 = *(v2 + 4624);
    }

    v6 = 24 * v3;
    v7 = (v5 + 16);
    do
    {
      [*v7 commit];
      v8 = *v7;
      *v7 = 0;
      v7 += 3;

      v6 -= 24;
    }

    while (v6);

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v4 + 4592);
  }
}

void re::DrawingManager::commitAndWait(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v38 = *MEMORY[0x1E69E9840];
  v3 = re::RenderFrameBox::get((a1 + 328), a2);
  v4 = *(v3 + 4600);
  if (v4 != 1)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      if (v4 <= v5)
      {
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v28 = 858;
        v29 = 2048;
        v30 = v5;
        v31 = 2048;
        v32 = v4;
        _os_log_send_and_compose_impl(v17, &v24, &v33, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v24 = 0;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
        v2 = MEMORY[0x1E69E9C10];
        v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v25 = 136315906;
        v26 = "operator[]";
        v27 = 1024;
        if (v18)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        v28 = 789;
        v29 = 2048;
        v30 = v3;
        v31 = 2048;
        v32 = v5;
        _os_log_send_and_compose_impl(v19, &v24, &v33, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v22, v23);
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

      v7 = v3 + 4616;
      if ((*(v3 + 4608) & 1) == 0)
      {
        v7 = *(v3 + 4624);
      }

      [*(v7 + v6) commit];
      v8 = *(v7 + v6);
      *(v7 + v6) = 0;

      ++v5;
      v4 = *(v3 + 4600);
      v6 += 24;
    }

    while (v5 < v4 - 1);
  }

  v4 = 4592;
  if ((atomic_load_explicit(&qword_1EE1B9A90, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    if (*(v2 + 786) == 1 && byte_1EE1B9A72 != 1)
    {
      v12 = (*(v3 + 4608) & 1) != 0 ? v3 + 4616 : *(v3 + 4624);
      v13 = *(v12 + 24 * *(v3 + 4600) - 8);
      [v13 commit];
      [*(v2 + 280) dispatchAvailableCompletionNotifications];
      while (([v13 status] & 0xFFFFFFFELL) != 4)
      {
        [*(v2 + 280) dispatchAvailableCompletionNotifications];
        usleep(0x3E8u);
      }

      [*(v2 + 280) dispatchAvailableCompletionNotifications];
      v11 = 0;
    }

    else
    {
      v9 = (*(v3 + 4608) & 1) != 0 ? v3 + 4616 : *(v3 + 4624);
      v10 = v9 + 24 * *(v3 + 4600);
      [*(v10 - 8) commit];
      [*(v10 - 8) waitUntilCompleted];
      v11 = *(v10 - 8);
      *(v10 - 8) = 0;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v3 + v4);
    if (!*(v2 + 1768))
    {
      break;
    }

    if (*(v2 + 786) != 1 || (byte_1EE1B9A72 & 1) != 0)
    {
      v3 = 0;
      v4 = &selRef_setOwnerWithIdentity_;
      do
      {
        if ([*(*(v2 + 1784) + 8 * v3) status] <= 1)
        {
          v5 = *(v2 + 1768);
          if (v5 <= v3)
          {
            goto LABEL_37;
          }

          [*(*(v2 + 1784) + 8 * v3) commit];
        }

        ++v3;
        v15 = *(v2 + 1768);
      }

      while (v15 > v3);
      [*(*(v2 + 1784) + 8 * v15 - 8) waitUntilCompleted];

      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(v2 + 1752);
      return;
    }

LABEL_41:
    v22 = "commitAndWait";
    v23 = 802;
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) ", "!m_commandQueueNeedsManualDispatch || kUseBlockingWaitWithManualDispatch");
    _os_crash("assertion failure: (!m_commandQueueNeedsManualDispatch || kUseBlockingWaitWithManualDispatch) ");
    __break(1u);
LABEL_42:
    if (__cxa_guard_acquire(&qword_1EE1B9A90))
    {
      re::Defaults::BOOLValue(&v33, "useBlockingWaitWithManualDispatch", v20);
      if (v33)
      {
        v21 = BYTE1(v33);
      }

      else
      {
        v21 = 0;
      }

      byte_1EE1B9A72 = v21;
      __cxa_guard_release(&qword_1EE1B9A90);
    }
  }
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 24;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v5 = 24 * v2;
  v6 = (v4 + 16);
  do
  {
    v7 = *v6;
    v6 += 3;

    v5 -= 24;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_8:
  *(a1 + 16) = v3 + 2;
}

void re::DrawingManager::commitAndWaitUntilScheduled(uint64_t a1, unint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = re::RenderFrameBox::get((a1 + 328), a2);
  v4 = *(v3 + 4600);
  if (v4 != 1)
  {
    v5 = 0;
    v6 = 16;
    do
    {
      if (v4 <= v5)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v23 = 858;
        v24 = 2048;
        v25 = v5;
        v26 = 2048;
        v27 = v4;
        _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
LABEL_24:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 789;
        v24 = 2048;
        v25 = v3;
        v26 = 2048;
        v27 = v4;
        _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v7 = v3 + 4616;
      if ((*(v3 + 4608) & 1) == 0)
      {
        v7 = *(v3 + 4624);
      }

      [*(v7 + v6) commit];
      v8 = *(v7 + v6);
      *(v7 + v6) = 0;

      ++v5;
      v4 = *(v3 + 4600);
      v6 += 24;
    }

    while (v5 < v4 - 1);
  }

  if (*(v3 + 4608))
  {
    v9 = v3 + 4616;
  }

  else
  {
    v9 = *(v3 + 4624);
  }

  v10 = v9 + 24 * v4;
  [*(v10 - 8) commit];
  [*(v10 - 8) waitUntilScheduled];
  v11 = *(v10 - 8);
  *(v10 - 8) = 0;

  re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v3 + 4592);
  if (*(a1 + 1768))
  {
    v3 = 0;
    do
    {
      if ([*(*(a1 + 1784) + 8 * v3) status] <= 1)
      {
        v4 = *(a1 + 1768);
        if (v4 <= v3)
        {
          goto LABEL_24;
        }

        [*(*(a1 + 1784) + 8 * v3) commit];
      }

      ++v3;
      v12 = *(a1 + 1768);
    }

    while (v12 > v3);
    [*(*(a1 + 1784) + 8 * v12 - 8) waitUntilScheduled];

    re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear(a1 + 1752);
  }
}

void re::DrawingManager::configureForProfiling(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 904))
  {
    v6 = *(a2 + 16);
    *a2 = re::RenderStat::beginRecordPassStat(a1 + 864, &v6, a3);
  }
}

uint64_t re::DrawingManager::shouldRenderProfilerNode(re::DrawingManager *this)
{
  v2 = *(this + 206);
  if (v2 && *(v2 + 204) == 1)
  {
    v3 = *(v2 + 17) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 208);
  result = v4 != 0;
  if (v4 && (v3 & 1) == 0)
  {
    if (re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(*(this + 208)) & 1) != 0 || (re::ProfilerManager::isProcessorEnabled<re::ProfilerFlameChartProcessor,void>(*(this + 208)))
    {
      return 1;
    }

    else
    {
      v6 = *(this + 208);

      return re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(v6);
    }
  }

  return result;
}

void re::DrawingManager::executeFrameInternal(re::DrawingManager *this, re::RenderFrameWorkload *a2)
{
  v309 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderManager::executeFrameInternal", "workload", "executeFrameInternal", 895);
    _os_crash("assertion failure: (workload) NULL workload passed to RenderManager::executeFrameInternal");
    __break(1u);
LABEL_300:
    v222 = __cxa_guard_acquire(&qword_1EE1B9AA0);
    if (v222)
    {
      qword_1EE1B9A98 = re::getCombinedScopeHash(v222, v223, v224);
      __cxa_guard_release(&qword_1EE1B9AA0);
    }

    goto LABEL_11;
  }

  v4 = a2;
  v2 = this;
  v6 = *(a2 + 19);
  v7 = *(this + 32);
  if ((~v6 & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = *(*(v7 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v7 + 144) + 16) << 60);
  }

  v8 = re::globalAllocators(this);
  v9 = re::PerFrameAllocatorManager::perFrameAllocator(v8[6], v6);
  v10 = *(v2 + 40);
  location = 0;
  v253 = 0;
  v254 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v10, v6);
  v255 = 0;
  v256 = v6;
  memset(&v258[17], 0, 25);
  *v257 = 0u;
  memset(v258, 0, 28);
  memset(&v258[4], 0, 100);
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  v267 = 0;
  v260 = 0u;
  v259 = 0u;
  v271 = 0;
  memset(v272, 0, 24);
  v269 = 0u;
  v272[3] = v9;
  v268 = &unk_1F5D061E0;
  v270 = 16;
  *&v269 = (*(*v9 + 32))(v9, 272, 16);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v269 = v11;
  *(&v269 + 1) = v269 + 16;
  v271 = 0;
  *&v272[1] = 0u;
  v272[0] = v270;
  v276 = 0;
  v274 = 0u;
  v275 = 0;
  v273 = v9;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(&v273, 1uLL);
  ++v275;
  v228 = &v268;
  v268 = &unk_1F5D06170;
  memset(v279, 0, sizeof(v279));
  v277 = 0u;
  v280 = v9;
  v278 = 0x10uLL;
  *&v277 = (*(*v9 + 32))(v9, 272, 16);
  *&v12 = -1;
  *(&v12 + 1) = -1;
  *v277 = v12;
  *(&v277 + 1) = v277 + 16;
  *(&v278 + 1) = 0;
  *&v279[8] = 0u;
  *v279 = v278;
  v284 = 0;
  v282 = 0u;
  v283 = 0;
  v281 = v9;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(&v281, 1uLL);
  ++v283;
  v285 = 0;
  v286 = 0u;
  v287 = 0;
  v288 = 0;
  v289 = 0u;
  v290 = 1;
  v291 = 0;
  v292 = 0u;
  v293 = 0;
  re::BucketArray<re::BufferSlice,8ul>::init(&v289, v9, 1uLL);
  v297 = 0;
  v295 = 0u;
  v296 = 0;
  v294 = v9;
  re::DynamicArray<re::EvaluationSkeletalPoseInputHandle>::setCapacity(&v294, 1uLL);
  ++v296;
  v301 = 0;
  v299 = 0u;
  v300 = 0;
  v298 = v9;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(&v298, 1uLL);
  ++v300;
  v302 = 0;
  re::ObjCObject::operator=(&location, (v7 + 208));
  v255 = v9;
  v13 = *(v2 + 102);
  v14 = *(v2 + 103);
  v15 = *(v13 + 8 * v14);
  if (v257[0] != v15)
  {
    if (v257[0])
    {

      v15 = *(v13 + 8 * v14);
    }

    v257[0] = v15;
  }

  v252 = *(v4 + 44);
  re::DynamicArray<re::RenderFrameEvent>::operator=(v258, v4 + 27);
  v16 = v258[2];
  if (v258[2] >= v258[1])
  {
    re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::growCapacity(v258, v258[2] + 1);
    v16 = v258[2];
  }

  v229 = v7;
  v17 = (v258[4] + 16 * v16);
  *v17 = *(v4 + 23);
  v17[1] = *(v4 + 24);
  ++v258[2];
  ++LODWORD(v258[3]);
  v3 = re::RenderFrameBox::get((v2 + 328), v6);
  if ((atomic_load_explicit(&qword_1EE1B9AA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_300;
  }

LABEL_11:
  p_location = &unk_1EE1B9000;
  v19 = qword_1EE1B9A98;
  v20 = "N2re15RendererGlobalsE";
  v21 = "N2re15RendererGlobalsE";
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v22 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  if (v3[12])
  {
    v25 = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v21 << 6) + (v21 >> 2)) ^ v21;
    v26 = *(v3 + 30);
    v27 = v3[13];
    v28 = *(v27 + 4 * (v25 % v26));
    if (v28 != 0x7FFFFFFF)
    {
      v29 = v3[14];
      while (*(v29 + 24 * v28 + 8) != v25)
      {
        v28 = *(v29 + 24 * v28) & 0x7FFFFFFF;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_42;
        }
      }

      if (*(v29 + 24 * v28 + 16))
      {
        v30 = "N2re15RendererGlobalsE";
        if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
        {
          v31 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
          v32 = 5381;
          do
          {
            v30 = v32;
            v33 = *v31++;
            v32 = (33 * v32) ^ v33;
          }

          while (v33);
        }

        v34 = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
        v35 = v34 % v26;
        v36 = *(v27 + 4 * v35);
        if (v36 != 0x7FFFFFFF)
        {
          v37 = v36;
          while (*(v29 + 24 * v37 + 8) != v34)
          {
            v37 = *(v29 + 24 * v37) & 0x7FFFFFFF;
            if (v37 == 0x7FFFFFFF)
            {
              goto LABEL_42;
            }
          }

          if (*(v29 + 24 * v36 + 8) == v34)
          {
            v38 = v36;
            LODWORD(v36) = 0x7FFFFFFF;
          }

          else
          {
            v39 = *(v29 + 24 * v36) & 0x7FFFFFFF;
            v38 = 0x7FFFFFFF;
            if (v39 != 0x7FFFFFFF)
            {
              if (*(v29 + 24 * v39 + 8) == v34)
              {
                v38 = *(v29 + 24 * v36) & 0x7FFFFFFF;
              }

              else
              {
                v40 = *(v29 + 24 * v39) & 0x7FFFFFFF;
                v38 = 0x7FFFFFFF;
                if (v40 != 0x7FFFFFFF)
                {
                  v38 = 0x7FFFFFFF;
                  while (1)
                  {
                    LODWORD(v36) = v40;
                    if (*(v29 + 24 * v40 + 8) == v34)
                    {
                      break;
                    }

                    v40 = *(v29 + 24 * v40) & 0x7FFFFFFF;
                    LODWORD(v39) = v36;
                    if (v40 == 0x7FFFFFFF)
                    {
                      goto LABEL_41;
                    }
                  }

                  v38 = v40;
                }

                LODWORD(v36) = v39;
              }
            }
          }

LABEL_41:
          buf.n128_u64[0] = (qword_1EE1B9A98 - 0x61C8864680B583E9 + (v30 << 6) + (v30 >> 2)) ^ v30;
          buf.n128_u64[1] = __PAIR64__(v38, v35);
          LODWORD(v304) = v36;
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::removeInternal((v3 + 12), &buf);
          v19 = qword_1EE1B9A98;
        }
      }
    }
  }

LABEL_42:
  v41 = *(v2 + 32);
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v42 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v43 = 5381;
    do
    {
      v20 = v43;
      v44 = *v42++;
      v43 = (33 * v43) ^ v44;
    }

    while (v44);
  }

  buf.n128_u64[0] = (v19 - 0x61C8864680B583E9 + (v20 << 6) + (v20 >> 2)) ^ v20;
  v45 = (*(*v3[5] + 32))(v3[5], 24, 8);
  *v45 = &unk_1F5D07230;
  v45[1] = &location;
  v45[2] = v41;
  v236[0] = v45;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v3 + 12), buf.n128_u64, v236);
  v46 = re::RenderFrameBox::get((v2 + 328), v6);
  v48 = *(v2 + 214);
  if (v48 >= 4)
  {
    re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
    _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
    __break(1u);
LABEL_303:
    if (__cxa_guard_acquire(&qword_1EE1B9AE0))
    {
      v225 = re::ns::String::String(&qword_1EE1B9AD8, "SharedEventSignalBuffer");
      __cxa_guard_release(v225 + 1);
    }

    goto LABEL_280;
  }

  *(v2 + v48 + 431) = *(v46 + 4600);
  *(v2 + 214) = v48 + 1;
  ++*(v2 + 430);
  v304 = 0;
  buf = 0xFFFFFFFFuLL;
  re::DynamicOverflowArray<re::CommandBuffer,8ul>::add(v46 + 4592, &buf);

  v50 = re::protectionOptions(v49);
  v51 = re::RenderFrameBox::get((v2 + 328), v6);
  QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v51);
  [*(QueuedCommandBuffer + 16) setProtectionOptions:v50];
  re::DrawingManager::configureForProfiling(v2, QueuedCommandBuffer, 1u);
  v234 = v3;
  v53 = v3[52] ^ v3[48];
  v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if ((v53 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    re::ns::String::format("Initial CB %llu(R)", &buf, v6 & 0xFFFFFFFFFFFFFFFLL);
  }

  else
  {
    re::ns::String::format("Initial CB %llu", &buf, v6 & 0xFFFFFFFFFFFFFFFLL);
  }

  [*(QueuedCommandBuffer + 16) setLabel:buf.n128_u64[0]];

  [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  v55 = re::RenderManager::splitCommandBuffersForDebugging(*(v2 + 32));
  if (v55)
  {
    v55 = [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  }

  if (*(v2 + 106))
  {
    v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:*(v2 + 105) value:?];
  }

  v56 = *(v4 + 23);
  if (v56)
  {
    v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:v56 value:*(v4 + 24)];
  }

  v57 = *(v4 + 29);
  if (v57)
  {
    v58 = 16 * v57;
    v59 = (*(v4 + 31) + 8);
    do
    {
      v60 = *(v59 - 1);
      if (v60)
      {
        v55 = [*(QueuedCommandBuffer + 16) encodeWaitForEvent:v60 value:*v59];
      }

      v59 += 2;
      v58 -= 16;
    }

    while (v58);
  }

  v61 = *(v234 + 3352);
  if (v61)
  {
    v62 = *(QueuedCommandBuffer + 16);
    v63 = *(v234 + 3368);
    v64 = &v63[2 * v61];
    do
    {
      v65 = *v63;
      v66 = v63[1];
      v63 += 2;
      v55 = [v62 encodeSignalEvent:v65 value:v66];
    }

    while (v63 != v64);
  }

  v67 = *(v234 + 416) & 0xFFFFFFFFFFFFFFFLL;
  v68 = re::globalAllocators(v55)[2];
  v248[2] = v4;
  v249 = v68;
  v248[0] = &unk_1F5D06EF8;
  v248[1] = v2;
  v250 = v248;
  v246 = re::globalAllocators(v4 + 8)[2];
  v247 = 0;
  v69 = (*(*v246 + 32))(v246, 40, 0);
  *v69 = &unk_1F5D06F50;
  v69[1] = v2;
  v69[2] = v54;
  v69[3] = v67;
  v230 = v67;
  v69[4] = v4;
  v247 = v69;
  re::RenderFrameWorkload::beforeEncode(v4);
  re::RenderFrame::applyRenderFrameDeltas(v234);
  *(v2 + 1800) = 0;
  re::RenderFrame::execute(v234);
  v70 = re::RenderFrameWorkload::postEncode(v4);
  v233 = v4;
  v231 = v6 & 0xFFFFFFFFFFFFFFFLL;
  if (*(v234 + 3392))
  {
    v71 = *re::graphicsLogObjects(v70);
    v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
    if (v72)
    {
      buf.n128_u16[0] = 0;
      _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "Skipping render frame due to RenderGraph errors:", &buf, 2u);
    }

    v73 = *(v234 + 3392);
    if (v73)
    {
      v74 = 48 * v73;
      v75 = (*(v234 + 3408) + 32);
      do
      {
        v76 = *re::graphicsLogObjects(v72);
        v72 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);
        if (v72)
        {
          if (*(v75 - 1))
          {
            v77 = *v75;
          }

          else
          {
            v77 = v75 - 7;
          }

          buf.n128_u32[0] = 136315138;
          *(buf.n128_u64 + 4) = v77;
          _os_log_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_DEFAULT, "- %s", &buf, 0xCu);
        }

        v75 += 6;
        v74 -= 48;
      }

      while (v74);
    }

    if (*(v234 + 4608))
    {
      v78 = v234 + 4616;
    }

    else
    {
      v78 = *(v234 + 4624);
    }

    v79 = *(v234 + 4600);
    if (v79)
    {
      v80 = 24 * v79;
      v81 = (v78 + 16);
      do
      {
        if (*v81)
        {
          if ([*v81 status] == 1)
          {
            v82 = *v81;
            v236[0] = v82;
            if (v82 != v257[1])
            {
              v83 = *re::graphicsLogObjects(v82);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
              {
                Label = re::mtl::CommandBuffer::getLabel(v236);
                buf.n128_u32[0] = 136315138;
                *(buf.n128_u64 + 4) = Label;
                _os_log_impl(&dword_1E1C61000, v83, OS_LOG_TYPE_DEFAULT, "Enqueued CommandBuffer in RenderManager's queue, cannot invalidate: %s", &buf, 0xCu);
              }
            }

            v85 = v236[0];
          }

          else
          {
            v85 = *v81;
            *v81 = 0;
          }
        }

        v81 += 3;
        v80 -= 24;
      }

      while (v80);
    }

    v86 = re::RenderGraphManager::processRenderGraphErrors(*(v2 + 37), v234, v4);
    buf.n128_u64[0] = 0;
    v87 = re::protectionOptions(v86);
    v88 = re::RenderFrameBox::get((v2 + 328), v6);
    v89 = (re::RenderFrame::createQueuedCommandBuffer(v88) + 16);
    [*v89 setProtectionOptions:v87];
    re::ObjCObject::operator=(&buf, v89);
    if ((atomic_load_explicit(&qword_1EE1B9AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B9AD0))
    {
      v226 = re::ns::String::String(&qword_1EE1B9AC8, "Failed command buffer");
      __cxa_guard_release(v226 + 1);
    }

    v90 = qword_1EE1B9AC8;
    [buf.n128_u64[0] setLabel:v90];

    v91 = *(v4 + 23);
    v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
    if (v91)
    {
      [buf.n128_u64[0] encodeWaitForEvent:v91 value:*(v4 + 24)];
    }

    v92 = *(v4 + 29);
    if (v92)
    {
      v93 = 16 * v92;
      v94 = (*(v4 + 31) + 8);
      do
      {
        v95 = *(v94 - 1);
        if (v95)
        {
          [buf.n128_u64[0] encodeWaitForEvent:v95 value:*v94];
        }

        v94 += 2;
        v93 -= 16;
      }

      while (v93);
    }
  }

  p_buf = 0;
  v304 = 0;
  buf = 0uLL;
  LODWORD(v305) = 0;
  if (*(v234 + 4608))
  {
    v96 = v234 + 4616;
  }

  else
  {
    v96 = *(v234 + 4624);
  }

  v97 = *(v234 + 4600);
  if (v97)
  {
    v98 = 0;
    v99 = 0;
    v100 = (v96 + 16);
    v101 = 24 * v97;
    do
    {
      if (*v100)
      {
        if (v99 >= buf.n128_u64[1])
        {
          if (buf.n128_u64[1] < v99 + 1)
          {
            if (buf.n128_u64[0])
            {
              if (buf.n128_u64[1])
              {
                v102 = 2 * buf.n128_u64[1];
              }

              else
              {
                v102 = 8;
              }

              if (v102 <= v99 + 1)
              {
                v103 = v99 + 1;
              }

              else
              {
                v103 = v102;
              }

              re::DynamicArray<re::CommandBuffer>::setCapacity(&buf, v103);
            }

            else
            {
              re::DynamicArray<re::CommandBuffer>::setCapacity(&buf, v99 + 1);
              LODWORD(v305) = v305 + 1;
            }
          }

          v99 = v304;
          v98 = p_buf;
        }

        v104 = v98 + 24 * v99;
        *v104 = *(v100 - 1);
        v70 = *v100;
        *(v104 + 2) = v70;
        v99 = ++v304;
        LODWORD(v305) = v305 + 1;
      }

      v100 += 3;
      v101 -= 24;
    }

    while (v101);
    v105 = p_buf;
    v54 = v6 & 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v99 = 0;
    v105 = 0;
  }

  if (*(v234 + 4592))
  {
    if (!v99)
    {
      re::DynamicOverflowArray<re::CommandBuffer,8ul>::clear(v234 + 4592);
      goto LABEL_144;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy((v234 + 4592), v105, v99);
    v107 = *(v234 + 4600);
    if (v107 >= v99)
    {
      if (v107 <= v99)
      {
        goto LABEL_144;
      }

      v109 = v234;
      v110 = 24 * v99 + 16;
      v111 = v99;
      do
      {
        v112 = v234 + 4616;
        if ((*(v234 + 4608) & 1) == 0)
        {
          v112 = *(v234 + 4624);
        }

        ++v111;
        v110 += 24;
      }

      while (v111 < *(v234 + 4600));
      goto LABEL_143;
    }

    if (*(v234 + 4592))
    {
      if ((*(v234 + 4608) & 1) == 0)
      {
LABEL_124:
        v108 = *(v234 + 4616);
LABEL_136:
        if (v108 < v99)
        {
          re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
        }

        v109 = v234;
        v114 = *(v234 + 4600);
        v115 = v99 - v114;
        if (v99 > v114)
        {
          v116 = 24 * v114;
          do
          {
            v117 = v234 + 4616;
            if ((*(v109 + 4608) & 1) == 0)
            {
              v117 = *(v234 + 4624);
            }

            v118 = (v117 + v116);
            v118[1] = 0;
            v118[2] = 0;
            *v118 = 0xFFFFFFFFLL;
            v116 += 24;
            --v115;
            v109 = v234;
          }

          while (v115);
        }

LABEL_143:
        *(v109 + 4600) = v99;
        *(v109 + 4608) += 2;
        goto LABEL_144;
      }
    }

    else
    {
      re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
      v113 = *(v234 + 4608) + 2;
      *(v234 + 4608) = v113;
      if ((v113 & 1) == 0)
      {
        goto LABEL_124;
      }
    }

    v108 = 8;
    goto LABEL_136;
  }

  if (v99)
  {
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::setCapacity((v234 + 4592), v99);
    *(v234 + 4608) += 2;
    re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy((v234 + 4592), v105, v99);
  }

LABEL_144:
  v119 = buf.n128_u64[0];
  if (buf.n128_u64[0])
  {
    if (v105)
    {
      if (v99)
      {
        v120 = 24 * v99;
        v121 = (v105 + 16);
        do
        {
          v122 = *v121;
          v121 += 3;

          v120 -= 24;
        }

        while (v120);
      }

      (*(*v119 + 40))(v119, v105);
    }

    p_buf = 0;
  }

  *(v2 + 214) = 0;
  ++*(v2 + 430);
  *(v2 + 436) = 0;
  v123 = re::RenderFrameBox::get((v2 + 328), v6);
  v124 = re::RenderFrame::currentCommandBuffer(v123);
  if (*(v2 + 904))
  {
    v125 = re::RenderFrameBox::get((v2 + 328), v6);
    v126 = v125;
    v127 = *(v125 + 4608);
    if (v127)
    {
      v128 = v125 + 4616;
    }

    else
    {
      v128 = *(v125 + 4624);
    }

    v129 = *(v125 + 4600);
    if (v129)
    {
      v130 = 24 * v129;
      v131 = (v128 + 16);
      do
      {
        v132 = *(v131 - 4);
        if (v132 != -1)
        {
          buf.n128_u64[0] = *v131;
          re::RenderStat::finishMTLCounterSampling((v2 + 864), v132, &buf);
        }

        v131 += 3;
        v130 -= 24;
      }

      while (v130);
      v127 = *(v126 + 4608);
    }

    if (v127)
    {
      v133 = v126 + 4616;
    }

    else
    {
      v133 = *(v126 + 4624);
    }

    v134 = v133 + 24 * *(v126 + 4600);
    v135 = *(v134 - 24);
    v236[0] = *(v134 - 8);
    re::RenderStat::finishFrame(v2 + 864, v135, v236);
  }

  v227 = v6;
  v243 = v246;
  v244 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v242, v245);
  re::mtl::CommandBuffer::addCompletionHandler(v124 + 2, v242);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v242);
  v240 = v249;
  v241 = 0;
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(v239, v248);
  re::mtl::CommandBuffer::addScheduledHandler(v124 + 2, v239);
  v136 = re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v239);
  v137 = re::globalAllocators(v136);
  v138 = (*(*v137[2] + 32))(v137[2], 48, 8);
  ArcSharedObject::ArcSharedObject(v138, 0);
  v138[3] = 0;
  *v138 = &unk_1F5D07258;
  v138[4] = v54;
  v138[5] = v230;
  v139 = v138 + 1;
  v237[0] = &unk_1F5D072A0;
  v237[1] = v138;
  v232 = v138;
  v238 = v237;
  v140 = v234;
  if (*(v234 + 4312))
  {
    v141 = 0;
    v142 = 0;
    v143 = (v2 + 1752);
    do
    {
      v144 = v143;
      v145 = v140[541];
      v146 = [*(v145 + v141) commandBuffer];
      if (v146)
      {
        ++*(v232 + 6);
        buf.n128_u64[0] = 0;
        buf.n128_u64[1] = &buf;
        v304 = 0x4802000000;
        v305 = __Block_byref_object_copy__14;
        p_buf = __Block_byref_object_dispose__14;
        if (v238)
        {
          if (v238 == v237)
          {
            v308 = v307;
            (*(*v238 + 24))();
          }

          else
          {
            v308 = (*(*v238 + 16))();
          }
        }

        else
        {
          v308 = 0;
        }

        v236[0] = MEMORY[0x1E69E9820];
        v236[1] = 0x40000000;
        v236[2] = ___ZN3MTL13CommandBuffer19addCompletedHandlerERKNSt3__18functionIFvPS0_EEE_block_invoke;
        v236[3] = &unk_1E871FC80;
        v236[4] = &buf;
        [v146 addCompletedHandler_];
        _Block_object_dispose(&buf, 8);
        std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](v307);
      }

      v143 = v144;
      if (*(v233 + 157) == 1)
      {
        (*(*(v145 + v141 + 8) + 264))(**(v145 + v141 + 8), sel_endEncoding);
        v147 = v146;
        v148 = *(v2 + 221);
        v149 = *(v2 + 220);
        if (v148 >= v149)
        {
          v150 = v148 + 1;
          if (v149 < v148 + 1)
          {
            if (*v144)
            {
              v151 = 2 * v149;
              v152 = v149 == 0;
              v153 = 8;
              if (!v152)
              {
                v153 = v151;
              }

              if (v153 <= v150)
              {
                v154 = v150;
              }

              else
              {
                v154 = v153;
              }

              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v144, v154);
            }

            else
            {
              re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v144, v150);
              ++*(v2 + 444);
            }
          }

          v148 = *(v2 + 221);
        }

        *(*(v2 + 223) + 8 * v148) = v147;
        *(v2 + 221) = v148 + 1;
        ++*(v2 + 444);
        v143 = v144;
      }

      ++v142;
      v140 = v234;
      v141 += 24;
    }

    while (*(v234 + 4312) > v142);
  }

  p_location = &location;
  v155 = v140;
  if (*(v232 + 6))
  {
    os_unfair_lock_lock(v2 + 462);
    v157 = *(v2 + 228);
    v158 = *(v2 + 227);
    if (v157 >= v158)
    {
      v159 = v157 + 1;
      if (v158 < v157 + 1)
      {
        if (*(v2 + 226))
        {
          v160 = 2 * v158;
          v152 = v158 == 0;
          v161 = 8;
          if (!v152)
          {
            v161 = v160;
          }

          if (v161 <= v159)
          {
            v162 = v159;
          }

          else
          {
            v162 = v161;
          }

          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v2 + 226, v162);
        }

        else
        {
          re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v2 + 226, v159);
          ++*(v2 + 458);
        }
      }

      v157 = *(v2 + 228);
    }

    *(*(v2 + 230) + 8 * v157) = v232;
    v163 = v232 + 1;
    ++*(v2 + 228);
    ++*(v2 + 458);
    os_unfair_lock_unlock(v2 + 462);
  }

  if (*(v2 + 786) == 1)
  {
    v164 = *(v2 + 101);
    v165 = v230;
    v5 = *(v229 + 264) + v164;
    v166 = v231;
    if (v155[514])
    {
      v167 = *(v2 + 100);
      v168 = *(v2 + 107);
      v235[0] = MEMORY[0x1E69E9820];
      v235[1] = 0x40000000;
      v235[2] = ___ZN2re14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadE_block_invoke;
      v235[3] = &__block_descriptor_tmp_29;
      v235[4] = v2;
      v235[5] = v231;
      v235[6] = v230;
      [v167 notifyListener:v168 atValue:v5 block:v235];
      v164 = *(v2 + 101);
    }

    v4 = v227;
    *(v2 + 101) = v164 + 1;
  }

  else
  {
    v5 = -1;
    v4 = v227;
    v165 = v230;
    v166 = v231;
  }

  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::clear((v155 + 555));
  v169 = *(v2 + 39);
  if (!v169 || *v169 != pthread_self())
  {
    FrameRefCount = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v166);
    if (FrameRefCount)
    {
      atomic_fetch_add(FrameRefCount + 32, 1u);
    }

    if (v166 != v165)
    {
      v171 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v165);
      if (v171)
      {
        atomic_fetch_add(v171 + 32, 1u);
      }
    }

    if (v155[539])
    {
      v172 = 0;
      v173 = 0;
      do
      {
        if ([*(v155[541] + v172) commandBuffer])
        {
          v174 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v166);
          if (v174)
          {
            atomic_fetch_add(v174 + 32, 1u);
          }

          if (v166 != v165)
          {
            v175 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v165);
            if (v175)
            {
              atomic_fetch_add(v175 + 32, 1u);
            }
          }
        }

        ++v173;
        v172 += 24;
      }

      while (v155[539] > v173);
    }
  }

  *(v2 + 97) = *&v258[13];
  *(v2 + 98) = *&v258[15];
  *(v2 + 99) = *&v258[17];
  *(v2 + 93) = *&v258[5];
  *(v2 + 94) = *&v258[7];
  *(v2 + 95) = *&v258[9];
  *(v2 + 96) = *&v258[11];
  *(v2 + 1593) = *(&v258[18] + 1);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v176 = re::internal::enableSignposts(0, 0);
  if (v176)
  {
    v176 = kdebug_trace();
  }

  v177 = *(v2 + 373);
  v178 = *(v2 + 374);
  v179 = *(v2 + 375);
  v180 = *(v2 + 376);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v176);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v182 = *(isStatisticCollectionEnabled + 152);
    if (v182)
    {
      v183 = v182[280].u64[0];
      if (v183 >= v177)
      {
        v183 = v177;
      }

      v182[280].i64[0] = v183;
      v184 = v182[280].u64[1];
      if (v184 <= v177)
      {
        v184 = v177;
      }

      v182[280].i64[1] = v184;
      v185 = vdupq_n_s64(1uLL);
      v185.i64[0] = v177;
      v182[281] = vaddq_s64(v182[281], v185);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v186 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v186)
  {
    v186 = re::profilerThreadContext(v186);
    v187 = *(v186 + 152);
    if (v187)
    {
      v188 = v187[288].u64[0];
      if (v188 >= v178)
      {
        v188 = v178;
      }

      v187[288].i64[0] = v188;
      v189 = v187[288].u64[1];
      if (v189 <= v178)
      {
        v189 = v178;
      }

      v187[288].i64[1] = v189;
      v190 = vdupq_n_s64(1uLL);
      v190.i64[0] = v178;
      v187[289] = vaddq_s64(v187[289], v190);
      *(v186 + 184) = 0;
    }
  }

  v191 = re::ProfilerConfig::isStatisticCollectionEnabled(v186);
  if (v191)
  {
    v191 = re::profilerThreadContext(v191);
    v192 = *(v191 + 152);
    if (v192)
    {
      v193 = v192[296].u64[0];
      if (v193 >= v179)
      {
        v193 = v179;
      }

      v192[296].i64[0] = v193;
      v194 = v192[296].u64[1];
      if (v194 <= v179)
      {
        v194 = v179;
      }

      v192[296].i64[1] = v194;
      v195 = vdupq_n_s64(1uLL);
      v195.i64[0] = v179;
      v192[297] = vaddq_s64(v192[297], v195);
      *(v191 + 184) = 0;
    }
  }

  v196 = re::ProfilerConfig::isStatisticCollectionEnabled(v191);
  if (v196)
  {
    v197 = re::profilerThreadContext(v196);
    v198 = *(v197 + 152);
    if (v198)
    {
      v199 = v198[304].u64[0];
      if (v199 >= v180)
      {
        v199 = v180;
      }

      v198[304].i64[0] = v199;
      v200 = v198[304].u64[1];
      if (v200 <= v180)
      {
        v200 = v180;
      }

      v198[304].i64[1] = v200;
      v201 = vdupq_n_s64(1uLL);
      v201.i64[0] = v180;
      v198[305] = vaddq_s64(v198[305], v201);
      *(v197 + 184) = 0;
    }
  }

  if (*(v2 + 206))
  {
    v202 = *(v2 + 208);
    if (v202)
    {
      v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerMiniHUDProcessor,void>(v202);
      if (v203 & 1) != 0 || (v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerDetailedHUDProcessor,void>(*(v2 + 208)), (v203) || (v203 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(*(v2 + 208)), (v203) || (v221 = *(v2 + 206), v221[204] == 1) && (v221[17] & 1) == 0 && (v221[177])
      {
        if ((*(v2 + 904) & 1) == 0)
        {
          re::DrawingManager::activatePerfSampling(v2);
        }

        if (!*(v2 + 207))
        {
          v204 = re::globalAllocators(v203)[2];
          buf.n128_u64[0] = &unk_1F5D071C0;
          buf.n128_u64[1] = v2;
          v305 = v204;
          p_buf = &buf;
          LOWORD(v236[0]) = *(v2 + 120);
          re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::add(v2 + 912, v236, &buf);
          v205 = *(v2 + 120);
          *(v2 + 120) = v205 + 1;
          *(v2 + 207) = v205;
          re::FunctionBase<24ul,void ()(re::GpuTimingData const&)>::destroyCallable(&buf);
        }
      }

      else if (*(v2 + 207))
      {
        buf.n128_u16[0] = *(v2 + 207);
        re::HashTable<unsigned short,re::Function<void ()(re::GpuTimingData const&)>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(v2 + 912, &buf);
        *(v2 + 207) = 0;
      }
    }
  }

  *(v2 + 202) = v259;
  if (*(v2 + 235))
  {
    if ((*(v2 + 904) & 1) == 0)
    {
      re::DrawingManager::activatePerfSampling(v2);
    }
  }

  else if (*(v2 + 904))
  {
    re::RenderStat::clearMTLCounterHandlers(v2 + 108);
    re::RenderStat::deinitializeCurrentMode(v2 + 864);
    v206 = *(v2 + 112);
    *(v2 + 112) = 0;
  }

  v207 = *(*(v2 + 32) + 64);
  if (v207)
  {
    v208 = v207[23];
    if (v208)
    {
      v207[18] = v208;
      v207[19] = v208 + 16;
      v207[20] = v208 + 16;
      v207[24] = 0;
    }
  }

  v209 = re::RenderFrameBox::get((v2 + 328), v4);
  v3 = *(re::RenderFrame::createQueuedCommandBuffer(v209) + 16);
  if ((atomic_load_explicit(&qword_1EE1B9AE0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_303;
  }

LABEL_280:
  v210 = qword_1EE1B9AD8;
  [v3 setLabel:v210];

  v211 = *(v2 + 29);
  ++*(v2 + 30);
  [v3 encodeSignalEvent:v211 value:?];
  ++*(v2 + 106);
  v212 = [v3 encodeSignalEvent:*(v2 + 105) value:?];
  if (v5 != -1)
  {
    v212 = [v3 encodeSignalEvent:*(v2 + 100) value:v5];
  }

  v213 = *(v233 + 25);
  if (v213)
  {
    v212 = [v3 encodeSignalEvent:v213 value:*(v233 + 26)];
  }

  v214 = *(v233 + 34);
  if (v214)
  {
    v215 = 16 * v214;
    v216 = (*(v233 + 36) + 8);
    do
    {
      v217 = *(v216 - 1);
      if (v217)
      {
        v212 = [v3 encodeSignalEvent:v217 value:*v216];
      }

      v216 += 2;
      v215 -= 16;
    }

    while (v215);
  }

  *(v2 + 103) = (*(v2 + 103) + 1) % *(v229 + 264);
  atomic_fetch_add(v2 + 208, 1u);
  atomic_fetch_add(v2 + 209, 1u);
  v218 = *(v233 + 20);
  v219 = re::globalAllocators(v212);
  re::PerFrameAllocatorManager::freeAllocatorsForFrame(v219[6], v218);
  re::FrameManager::destructOlderOrEqualOnRenderThread(*(*(v2 + 32) + 144), v4);
  v220 = re::FrameManager::getFrameRefCount(*(*(v2 + 32) + 144), v231);
  if (v220)
  {
    *(v220 + 89) = 1;
  }

  *(v2 + 1800) = 1;

  std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](v237);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v245);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::destroyCallable(v248);
  re::BufferTable::~BufferTable((p_location + 60));
  re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::~TextureTableImpl(v228);
  re::DynamicArray<re::RenderFrameEvent>::deinit((p_location + 8));

  if (v257[0])
  {

    v257[0] = 0;
  }
}

unint64_t re::getCombinedScopeHash(re *this, const char *a2, const char *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphGlobals", 0x12uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  v4 = strlen(this);
  if (v4)
  {
    MurmurHash3_x64_128(this, v4, 0, &v7);
    v5 = (v8 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7;
  }

  else
  {
    v5 = 0;
  }

  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  return ((v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + ((v8 - 0x61C8864680B583E9 + (v7 << 6) + (v7 >> 2)) ^ v7)) ^ v5;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v6 = strlen(this);
  if (v6)
  {
    MurmurHash3_x64_128(this, v6, 0, &v10);
    v7 = (v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
  }

  else
  {
    v7 = 0;
  }

  v8 = strlen(a2);
  if (v8)
  {
    MurmurHash3_x64_128(a2, v8, 0, &v10);
    v5 = ((v11 - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10) - 0x61C8864680B583E9;
  }

  return ((v7 >> 2) + (v7 << 6) + v5) ^ v7;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ToneMapping", 0xBuLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphGlobals", 0x12uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("SceneArray", 0xAuLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("GuidedFilterOcclusionData", 0x19uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("GuidedFilterOcclusion", 0x15uLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

{
  v9 = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("ProjectiveMeshShadow", 0x14uLL, 0, &v7);
  v3 = v7;
  v4 = v8;
  MurmurHash3_x64_128("RenderFrame", 0xBuLL, 0, &v7);
  v5 = (v4 + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
  return ((v5 << 6) + (v5 >> 2) + ((v8 + (v7 << 6) + (v7 >> 2) - 0x61C8864680B583E9) ^ v7) - 0x61C8864680B583E9) ^ v5;
}

re *___ZN2re14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadE_block_invoke(re *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v2 = *(a1 + 5);
  v4 = *(*(v3 + 256) + 144);
  v5 = re::globalAllocators(a1)[2];
  v10 = &unk_1F5D07000;
  v11 = v3;
  v12 = v5;
  v13 = &v10;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v4, v2, &v10);
  result = re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(&v10);
  v7 = *(a1 + 5);
  v8 = *(a1 + 6);
  if (v7 != v8)
  {
    v9 = *(*(v3 + 256) + 144);
    v12 = re::globalAllocators(result)[2];
    v13 = &v10;
    v10 = &unk_1F5D07000;
    v11 = v3;
    re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v9, v8, &v10);
    return re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(&v10);
  }

  return result;
}

void re::DrawingManager::sampleComputeEncoderMTLCounterBegin(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::sampleComputeEncoderMTLCounterBegin(a1 + 864, &v5, a3);
}

void re::DrawingManager::sampleComputeEncoderMTLCounterEnd(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::sampleComputeEncoderMTLCounterEnd(a1 + 864, &v5, a3);
}

void re::DrawingManager::enableMTLCounterSamplingOnRenderPassDescriptor(uint64_t a1, id *a2, unsigned int a3)
{
  v5 = *a2;
  re::RenderStat::enableMTLCounterSamplingOnRenderPassDescriptor(a1 + 864, &v5, a3);
  if (v5)
  {
  }
}

void re::DrawingManager::makeComputeCommandEncoderWithMTLCounterSampling(uint64_t a1@<X0>, id *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  re::RenderStat::makeComputeCommandEncoderWithMTLCounterSampling(a1 + 864, &v9, a3, a4, a5);
}

uint64_t re::DrawingManager::reloadLibrary(_anonymous_namespace_ **this, const char *a2, const char *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (v29)
  {
    v7 = *&v30[7];
  }

  else
  {
    v7 = v30;
  }

  if (v26)
  {
    v8 = *&v27[7];
  }

  else
  {
    v8 = v27;
  }

  re::ShaderManager::makeLibraryWithData(*(this[32] + 6), v7, v8, 0);
  v9 = this[32];
  re::DynamicString::DynamicString(&v19, &v28);
  v10 = re::DynamicString::DynamicString(&v23, &v25);
  v32 = re::globalAllocators(v10)[2];
  v11 = (*(*v32 + 32))(v32, 80, 0);
  v12 = v20;
  *v11 = &unk_1F5D07118;
  v11[1] = this;
  v11[4] = 0;
  v11[5] = 0;
  v11[3] = 0;
  v13 = v19;
  v11[5] = v22;
  v22 = 0;
  v14 = v11[3];
  v11[2] = v13;
  v11[3] = v12;
  v15 = *(&v23 + 1);
  v11[4] = v21;
  v19 = 0;
  v20 = v14;
  v11[7] = 0;
  v11[8] = 0;
  v11[9] = 0;
  v16 = *(&v24 + 1);
  *(&v24 + 1) = 0;
  v17 = v11[7];
  v11[6] = v23;
  v11[8] = v24;
  v11[9] = v16;
  v21 = 0;
  *&v23 = 0;
  *(&v23 + 1) = v17;
  v11[7] = v15;
  *&v24 = 0;
  v33 = v11;
  re::RenderManager::addDelayedDestructorToRenderThread(v9, v31);
  re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v31);
  if (v23)
  {
    if (BYTE8(v23))
    {
      (*(*v23 + 40))();
    }

    v24 = 0u;
    v23 = 0u;
  }

  if (v19 && (v20 & 1) != 0)
  {
    (*(*v19 + 40))();
  }

  if (v25 && (v26 & 1) != 0)
  {
    (*(*v25 + 40))();
  }

  result = v28;
  if (v28)
  {
    if (v29)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

uint64_t *re::DrawingManager::removeInvalidPipelineStates(re::DrawingManager *this)
{
  ValidAllocator = re::getValidAllocator((*(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(this + 32) + 144) + 16) << 60)));
  v58 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v54 = ValidAllocator;
  re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, 0);
  v3 = ++v57;
  v4 = *(*(this + 32) + 24);
  v5 = *(v4 + 416);
  if (v5)
  {
    v6 = *(v4 + 432);
    v44 = &v6[v5];
    do
    {
      to = 0;
      objc_copyWeak(&to, v6);
      v7 = objc_loadWeakRetained(&to);
      if (v7)
      {
        v45 = v7;
        v46 = v6;
        v8 = *(v7 + 9);
        if (v8)
        {
          v9 = *(v7 + 10);
          v47 = &v9[5 * v8];
          do
          {
            v10 = *v9;
            v48 = v9;
            v49 = *(*v9 + 120);
            if (v49)
            {
              v11 = 0;
              v12 = *(v10 + 104);
              while (1)
              {
                v13 = *v12;
                v12 += 8;
                if (v13 < 0)
                {
                  break;
                }

                if (v49 == ++v11)
                {
                  LODWORD(v11) = *(*v9 + 120);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v11) = 0;
            }

LABEL_54:
            while (v11 != v49)
            {
              v14 = *(*(v10 + 104) + 32 * v11 + 16);
              v15 = *(v14 + 56);
              if (v15)
              {
                v16 = 0;
                v17 = *(v14 + 40);
                while (1)
                {
                  v18 = *v17;
                  v17 += 24;
                  if (v18 < 0)
                  {
                    break;
                  }

                  if (v15 == ++v16)
                  {
                    LODWORD(v16) = *(v14 + 56);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v16) = 0;
              }

              while (v16 != v15)
              {
                v19 = v16;
                if (v15 <= v16 + 1)
                {
                  v20 = v16 + 1;
                }

                else
                {
                  v20 = v15;
                }

                v21 = *(v14 + 40);
                while (v20 - 1 != v16)
                {
                  LODWORD(v16) = v16 + 1;
                  if ((*(v21 + 96 * v16) & 0x80000000) != 0)
                  {
                    goto LABEL_27;
                  }
                }

                LODWORD(v16) = v20;
LABEL_27:
                v22 = v21 + 96 * v19;
                v23 = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(this + 48, (v22 + 8));
                if (v23)
                {
                  v24 = *v23;
                  if (*v23)
                  {
                    v25 = (v24 + 8);
                    v26 = *(this + 32);
                    v52 = v24;
                    v27 = (v24 + 8);
                    LOBYTE(v26) = re::validateCachedPipelineState(v26, &v52);

                    v52 = 0;
                    if ((v26 & 1) == 0)
                    {
                      v29 = v56;
                      if (v56 >= v55)
                      {
                        v30 = v56 + 1;
                        if (v55 < v56 + 1)
                        {
                          if (v54)
                          {
                            v31 = 2 * v55;
                            if (!v55)
                            {
                              v31 = 8;
                            }

                            if (v31 <= v30)
                            {
                              v32 = v56 + 1;
                            }

                            else
                            {
                              v32 = v31;
                            }

                            re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, v32);
                            v3 = v57;
                          }

                          else
                          {
                            re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(&v54, v30);
                            v3 = v57 + 1;
                          }
                        }

                        v29 = v56;
                      }

                      v33 = v58 + 72 * v29;
                      *v33 = *(v22 + 8);
                      v34 = *(v22 + 40);
                      v35 = *(v22 + 56);
                      v36 = *(v22 + 24);
                      *(v33 + 64) = *(v22 + 72);
                      *(v33 + 32) = v34;
                      *(v33 + 48) = v35;
                      *(v33 + 16) = v36;
                      v56 = v29 + 1;
                      v57 = ++v3;
                    }
                  }
                }

                LODWORD(v15) = *(v14 + 56);
              }

              if (v56)
              {
                v37 = v58;
                v38 = 72 * v56;
                do
                {
                  v50[0] = *v37;
                  v39 = *(v37 + 16);
                  v40 = *(v37 + 32);
                  v41 = *(v37 + 48);
                  v51 = *(v37 + 64);
                  v50[2] = v40;
                  v50[3] = v41;
                  v50[1] = v39;
                  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(v14 + 24, v50);
                  re::DrawingManager::releasePipelineState(this, v50);
                  v37 += 72;
                  v38 -= 72;
                }

                while (v38);
              }

              v56 = 0;
              v57 = ++v3;
              v42 = *(v10 + 120);
              if (v42 <= v11 + 1)
              {
                v42 = v11 + 1;
              }

              while (v42 - 1 != v11)
              {
                LODWORD(v11) = v11 + 1;
                if ((*(*(v10 + 104) + 32 * v11) & 0x80000000) != 0)
                {
                  goto LABEL_54;
                }
              }

              LODWORD(v11) = v42;
            }

            v9 = v48 + 5;
          }

          while (v48 + 5 != v47);
        }

        v6 = v46;
      }

      objc_destroyWeak(&to);
      ++v6;
    }

    while (v6 != v44);
  }

  result = v54;
  if (v54)
  {
    if (v58)
    {
      return (*(*v54 + 40))(v54);
    }
  }

  return result;
}

BOOL re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(uint64_t a1, int *a2)
{
  v4 = re::Hash<re::PipelineStateCacheKey>::operator()(v6, a2);
  re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::findEntry<re::PipelineStateCacheKey>(a1, a2, v4, v6);
  return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::removeInternal(a1, v6);
}

void *re::DrawingManager::releasePipelineState(uint64_t a1, int *a2)
{
  result = re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::tryGet(a1 + 48, a2);
  if (result)
  {
    result = objc_isUniquelyReferenced();
    if (result)
    {

      return re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::remove(a1 + 48, a2);
    }
  }

  return result;
}

uint64_t re::DrawingManager::removeUnusedArgumentBuffers(uint64_t a1, re *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v30[0] = re::getValidAllocator(a2);
  re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v30, 0);
  ++v32;
  v27 = a1 + 104;
  v28 = 0;
  v3 = *(a1 + 120);
  if (v3 < 0x10)
  {
LABEL_5:
    v29 = -1;
  }

  else
  {
    v4 = 0;
    v5 = *(a1 + 104);
    v6 = v3 >> 4;
    while (1)
    {
      v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v28 = v7 ^ 0xFFFFLL;
      if (v7 != 0xFFFFLL)
      {
        break;
      }

      v4 -= 16;
      ++v5;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v18 = __clz(__rbit64(v7 ^ 0xFFFFLL));
    v19 = v18 - v4;
    v29 = v18 - v4;
    if (v18 + 1 != v4)
    {
      do
      {
        v20 = v27;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v27);
        v21 = *(v20 + 8) + 48 * v19;
        v22 = *(v21 + 40);
        if (*(v22 + 73))
        {
          *(v22 + 72) = 0;
        }

        else
        {

          *v22 = 0;
          *(v22 + 8) = 0;
          re::internal::destroyPersistent<re::CachedArgumentBuffer>("destroyCachedArgumentBuffer", 185, v22);
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add(v30, v21);
        }

        v19 = v29;
      }

      while (v29 != -1);
    }
  }

  if (v31)
  {
    v8 = v33;
    v9 = 40 * v31;
    do
    {
      v10 = *v8;
      v11 = v8[1];
      *&v45 = *(v8 + 4);
      v44 = v11;
      v43 = v10;
      re::HashBrown<re::ArgumentBufferCacheKey,re::CachedArgumentBuffer *,re::Hash<re::ArgumentBufferCacheKey>,re::EqualTo<re::ArgumentBufferCacheKey>,void,false>::remove(a1 + 104, &v43);
      v8 = (v8 + 40);
      v9 -= 40;
    }

    while (v9);
  }

  if (*(a1 + 184))
  {
    v12 = 0;
    do
    {
      if ([*(*(a1 + 200) + 8 * v12) usedSize])
      {
        ++v12;
        v13 = *(a1 + 184);
      }

      else
      {
        v14 = *(a1 + 184);
        if (v14 <= v12)
        {
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v43 = 0u;
          v23 = MEMORY[0x1E69E9C10];
          v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = 136315906;
          v36 = "removeAt";
          v37 = 1024;
          if (v24)
          {
            v25 = 3;
          }

          else
          {
            v25 = 2;
          }

          v38 = 931;
          v39 = 2048;
          v40 = v12;
          v41 = 2048;
          v42 = v14;
          _os_log_send_and_compose_impl(v25, &v34, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v26, v27);
          _os_crash_msg();
          __break(1u);
        }

        if (v14 - 1 > v12)
        {
          NS::SharedPtr<MTL::Texture>::operator=((*(a1 + 200) + 8 * v12), (*(a1 + 200) + 8 * v14 - 8));
          v14 = *(a1 + 184);
        }

        v15 = *(a1 + 200) + 8 * v14;
        v16 = *(v15 - 8);
        if (v16)
        {

          *(v15 - 8) = 0;
          v14 = *(a1 + 184);
        }

        v13 = v14 - 1;
        *(a1 + 184) = v14 - 1;
        ++*(a1 + 192);
      }
    }

    while (v12 < v13);
  }

  result = v30[0];
  if (v30[0])
  {
    if (v33)
    {
      return (*(*v30[0] + 40))();
    }
  }

  return result;
}

unint64_t re::DrawingManager::registerRenderLayer(uint64_t a1, id *a2)
{
  if (*a2)
  {
    [*a2 setProtectionOptions:re::protectionOptions(a1)];
    location = 0;
    v26 = 0;
    v28 = 0;
    re::ObjCObject::operator=(&location, a2);
    v4 = [*a2 colorspace];
    if (v4)
    {
      if (*(*(a1 + 264) + 112) == 1)
      {
        v24 = 0;
        Name = CGColorSpaceGetName(v4);
        ColorGamutFromCGColorSpaceName = re::ColorHelpers::getColorGamutFromCGColorSpaceName(Name, &v24);
        if (!ColorGamutFromCGColorSpaceName || v24 != *(*(a1 + 264) + 1))
        {
          v7 = *re::graphicsLogObjects(ColorGamutFromCGColorSpaceName);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v23[0] = 0;
            _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Registered render layer specified colorspace does not match RE target display color gamut", v23, 2u);
          }
        }
      }
    }

    [*a2 setFenceEnabled:1];
    v8 = [location setDevice:*(*(a1 + 256) + 208)];
    v9 = *(a1 + 1688);
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = 0;
    v11 = *(a1 + 1704) + 12;
    while (*(v11 - 12))
    {
      ++v10;
      v11 += 32;
      if (v9 == v10)
      {
        goto LABEL_20;
      }
    }

    if (v10 >= v9)
    {
LABEL_20:
      v15 = *(a1 + 1680);
      if (v9 >= v15)
      {
        v16 = v9 + 1;
        if (v15 < v9 + 1)
        {
          if (*(a1 + 1672))
          {
            v17 = 2 * v15;
            if (!v15)
            {
              v17 = 8;
            }

            if (v17 <= v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = v17;
            }

            re::DynamicArray<re::RenderLayer>::setCapacity((a1 + 1672), v18);
          }

          else
          {
            re::DynamicArray<re::RenderLayer>::setCapacity((a1 + 1672), v16);
            ++*(a1 + 1696);
          }
        }

        v9 = *(a1 + 1688);
      }

      v19 = *(a1 + 1704) + 32 * v9;
      v20 = location;
      location = 0;
      *v19 = v20;
      LODWORD(v20) = v26;
      *(v19 + 8) = v26;
      if (v20 == 1)
      {
        *(v19 + 12) = v27;
      }

      v21 = v28;
      *(v19 + 20) = v28;
      if (v21 == 1)
      {
        *(v19 + 24) = v29;
      }

      v10 = *(a1 + 1688);
      *(a1 + 1688) = v10 + 1;
      ++*(a1 + 1696);
      goto LABEL_45;
    }

    v12 = (v11 - 12);
    if ((v11 - 12) != &location)
    {
      v13 = location;
      location = 0;
      v14 = *v12;
      *v12 = v13;
    }

    if (*(v11 - 4))
    {
      if ((v26 & 1) == 0)
      {
        *(v11 - 4) = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if ((v26 & 1) == 0)
      {
        goto LABEL_32;
      }

      *(v11 - 4) = 1;
    }

    *v11 = v27;
LABEL_32:
    if (*(v11 + 8))
    {
      if ((v28 & 1) == 0)
      {
        *(v11 + 8) = 0;
LABEL_45:

        return v10;
      }
    }

    else
    {
      if ((v28 & 1) == 0)
      {
        goto LABEL_45;
      }

      *(v11 + 8) = 1;
    }

    *(v11 + 12) = v29;
    goto LABEL_45;
  }

  return 0xFFFFFFFFLL;
}

void re::DrawingManager::unregisterRenderLayer(re::DrawingManager *this, unsigned int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 211);
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

    v13 = 789;
    v14 = 2048;
    v15 = v2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(this + 213) + 32 * a2;
  v5 = *v4;
  *v4 = 0;

  if (*(v4 + 8) == 1)
  {
    *(v4 + 8) = 0;
  }

  if (*(v4 + 20) == 1)
  {
    *(v4 + 20) = 0;
  }
}

float re::DrawingManager::layerAspect(re::DrawingManager *this, unsigned int a2, double a3)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v5 = *(this + 213) + 32 * a2;
    if (*v5)
    {
      if (*(v5 + 8) == 1)
      {
        *&a3 = *(v5 + 12) / *(v5 + 16);
      }

      else
      {
        [*v5 bounds];
        *&a3 = v6;
        v8 = v7;
        *&a3 = *&a3 / v8;
      }

      if ((LODWORD(a3) & 0x7FFFFFFFu) >= 0x7F800000)
      {
        *&a3 = 1.0;
      }
    }
  }

  return *&a3;
}

float re::DrawingManager::getLayerContentsScale(re::DrawingManager *this, unsigned int a2, double a3)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v5 = *(this + 213) + 32 * a2;
    if (*v5)
    {
      if (*(v5 + 20) == 1)
      {
        LODWORD(a3) = *(v5 + 24);
      }

      else
      {
        [*v5 contentsScale];
        *&a3 = a3;
      }
    }
  }

  return *&a3;
}

uint64_t re::DrawingManager::setLayerSize(uint64_t this, unsigned int a2, float a3, float a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(this + 1688);
  if (v5 <= a2)
  {
    v12 = 0;
    memset(v21, 0, sizeof(v21));
    v9 = MEMORY[0x1E69E9C10];
    v13 = 136315906;
    v14 = "operator[]";
    v15 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v16 = 789;
    v17 = 2048;
    v18 = v4;
    v19 = 2048;
    v20 = v5;
    _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(this + 1704) + 32 * a2;
  v8 = *(v6 + 8);
  v7 = v6 + 8;
  if ((v8 & 1) == 0)
  {
    *v7 = 1;
  }

  *(v7 + 4) = LODWORD(a3) | (LODWORD(a4) << 32);
  return this;
}

float re::DrawingManager::getLayerSize(re::DrawingManager *this, unsigned int a2, double a3, double a4)
{
  LODWORD(a3) = 1.0;
  if (a2 != -1 && *(this + 211) > a2)
  {
    v6 = *(this + 213) + 32 * a2;
    LODWORD(a4) = 1.0;
    if (*v6)
    {
      if (*(v6 + 8) == 1)
      {
        LODWORD(a3) = *(v6 + 12);
      }

      else
      {
        [*v6 drawableSize];
        *&a3 = a3;
      }
    }
  }

  return *&a3;
}

_anonymous_namespace_ *re::DrawingManager::getLayersWithPendingSizeOrScaleChanges@<X0>(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v8 = 0;
  v3 = *(this + 211);
  if (v3)
  {
    v4 = this;
    LODWORD(v5) = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + 213) + 32 * v6;
      if ((*(v7 + 8) & 1) != 0 || *(v7 + 20) == 1)
      {
        this = re::DynamicArray<int>::add(a2, &v8);
        LODWORD(v5) = v8;
        v3 = *(v4 + 211);
      }

      v5 = (v5 + 1);
      v8 = v5;
      v6 = v5;
    }

    while (v3 > v5);
  }

  return this;
}

uint64_t re::DrawingManager::getLayerPixelFormat(re::DrawingManager *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  if (*(this + 211) <= a2)
  {
    return 0;
  }

  v2 = *(*(this + 213) + 32 * a2);
  if (!v2)
  {
    return 0;
  }

  else
  {
    return [v2 pixelFormat];
  }
}

uint64_t re::DrawingManager::presentDrawablesAndCommit(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v8 = a4[19];
  v9 = re::RenderFrameBox::get((a1 + 328), v8);
  v10 = re::RenderFrame::currentCommandBuffer(v9);
  if (a3 != 2)
  {
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v11; ++i)
    {
      if (*(*(a2 + 16) + 8 * i))
      {
        [*(v10 + 2) presentDrawable:1.0 / *(a1 + 1792) afterMinimumDuration:?];
        v11 = *(a2 + 8);
      }
    }

    if (a4)
    {
LABEL_8:
      re::RenderFrameWorkload::presentDrawables(a4, v10 + 2);
    }
  }

  if (re::RenderManager::splitCommandBuffersForDebugging(*(a1 + 256)))
  {
    v13 = re::RenderFrameBox::get((a1 + 328), v8);
    QueuedCommandBuffer = re::RenderFrame::createQueuedCommandBuffer(v13);
    {
      re::ns::String::String(&re::DrawingManager::presentDrawablesAndCommit(re::FixedArray<re::mtl::Drawable> const&,re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0::operator() const(void)::s_ns_string, "Before CC");
    }

    v15 = re::DrawingManager::presentDrawablesAndCommit(re::FixedArray<re::mtl::Drawable> const&,re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0::operator() const(void)::s_ns_string;
    [*(QueuedCommandBuffer + 16) setLabel:v15];

    [*(QueuedCommandBuffer + 16) addCompletedHandler:&__block_literal_global_43_0];
  }

  v17 = *(v10 + 2);
  v16 = (v10 + 16);
  [v17 status];
  re::RenderFrameWorkload::beforeCommandBufferCommitted(a4, v16);
  re::RenderFrameWorkload::encoded(a4);
  [*v16 status];
  switch(a3)
  {
    case 2:
      re::DrawingManager::commitAndWaitUntilScheduled(a1, v8);
      v18 = *(a2 + 8);
      if (v18)
      {
        v19 = 0;
        for (j = 0; j < v18; ++j)
        {
          if (a4)
          {
            v21 = *(a2 + 16);
            if (*(v21 + v19))
            {
              re::DynamicArray<re::mtl::Drawable>::add((a4 + 38), (v21 + v19));
              v18 = *(a2 + 8);
            }
          }

          v19 += 8;
        }
      }

      break;
    case 1:
      re::DrawingManager::commitAndWait(a1, v8);
      break;
    case 0:
      re::DrawingManager::commit(a1, v8);
      break;
  }

  return re::DrawingManager::removeUnusedArgumentBuffers(a1, v8);
}

void re::DrawingManager::createRenderFrameWorkload(re::DrawingManager *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = mach_absolute_time();
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v17, 5079, this, *(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  v5 = re::RenderFrameBox::get((this + 328), 0xFFFFFFFFFFFFFFFuLL);
  re::RenderFrame::createWorkload(v5, a2);
  *(*a2 + 24) = *(this + 785);
  v8 = *(this + 208);
  if (v8 && (v8 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v8), (v8 & 1) != 0) || (v9 = *(this + 206)) != 0 && (*(v9 + 296) & 1) == 0)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v8);
    if (isStatisticCollectionEnabled)
    {
      v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
      v12 = mach_absolute_time();
      v13 = *(v11 + 152);
      if (v13)
      {
        v14 = v13[744].u64[0];
        if (v14 >= v12 - v4)
        {
          v14 = v12 - v4;
        }

        v13[744].i64[0] = v14;
        v15 = v13[744].u64[1];
        if (v15 <= v12 - v4)
        {
          v15 = v12 - v4;
        }

        v13[744].i64[1] = v15;
        v16 = vdupq_n_s64(1uLL);
        v16.i64[0] = v12 - v4;
        v13[745] = vaddq_s64(v13[745], v16);
        *(v11 + 184) = 0;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v17, v6, v7);
}

re *re::DrawingManager::commitEmptyWorkload(re::DrawingManager *this)
{
  if (*(this + 785) == 1)
  {
    v2 = *(this + 39);
    re::internal::AutoResetEvent::set((v2 + 320));
    re::RenderThread::waitForIdleInternal(v2);
  }

  if (atomic_load(this + 208))
  {
    v4 = -30;
    do
    {
      __ns.__rep_ = 3000000;
      std::this_thread::sleep_for (&__ns);
      v6 = atomic_load(this + 208);
      ++v4;
    }

    while (v6);
    if (!v4)
    {
      v7 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "commitEmptyWorkload: failed to sync the callbacks", v14, 2u);
      }
    }
  }

  v8 = *(*(this + 32) + 144);
  v9 = *(v8 + 3);
  v10 = v9 & 0xFFFFFFFFFFFFFFFLL | (*(v8 + 2) << 60);
  FrameRefCount = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (FrameRefCount)
  {
    atomic_fetch_add(FrameRefCount + 32, 1u);
  }

  re::FrameManager::destructForFrameOnRenderThread(v8, v10, 0);
  v12 = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (v12)
  {
    *(v12 + 89) = 1;
  }

  result = re::FrameManager::getFrameRefCount(v8, v9 & 0xFFFFFFFFFFFFFFFLL);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

void re::DrawingManager::waitUntilScheduled(re::DrawingManager *this)
{
  if (*(this + 785) == 1)
  {
    v2 = *(this + 39);
    re::internal::AutoResetEvent::set((v2 + 320));
    re::RenderThread::waitForIdleInternal(v2);
  }

  if (atomic_load(this + 209))
  {
    v4 = -30;
    do
    {
      __ns.__rep_ = 3000000;
      std::this_thread::sleep_for (&__ns);
      v6 = atomic_load(this + 209);
      ++v4;
    }

    while (v6);
    if (!v4)
    {
      v7 = *re::graphicsLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "waitUntilScheduled: failed to sync", v8, 2u);
      }
    }
  }
}

void re::DrawingManager::commitFrameInternal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) NULL workload passed to RenderManager::commitFrameInternal", "workload", "commitFrameInternal", 2458);
    _os_crash("assertion failure: (workload) NULL workload passed to RenderManager::commitFrameInternal");
    __break(1u);
  }

  v5 = a2;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled && (v8 = re::profilerThreadContext(isStatisticCollectionEnabled), *(v8 + 9) == *(v8 + 10)))
  {
    v29 = re::profilerThreadContext(v8);
    re::ProfilerThreadContext::begin(v29, *(a1 + 1664), *(*(*(a1 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = mach_absolute_time();
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v53, 5081, a1, *(*(*(a1 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  re::RenderGraphStats::registerNewFrame((a1 + 1624), v11, v12, v13, v14);
  rep = 0;
  v51 = 0.0;
  v52 = 0;
  if (*(a1 + 785) != 1)
  {
    operator new();
  }

  v15 = re::RenderFrameBox::get((a1 + 328), *(*(*(a1 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 16) << 60));
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(v15 + 417, (a1 + 696));
  re::DynamicArray<re::RenderFrameEvent>::clear(a1 + 696);
  if (*(a1 + 624))
  {
    v16 = a1 + 632;
  }

  else
  {
    v16 = *(a1 + 640);
  }

  v17 = *(a1 + 616);
  v54 = v16;
  v55 = v17;
  re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=((v15 + 409), &v54);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 608);
  v18 = *(a1 + 1688);
  v54 = *(a1 + 1704);
  v55 = v18;
  re::FixedArray<re::RenderLayer>::operator=((v15 + 552), &v54);
  re::TextureManager::synchronizeTextures(*(*(a1 + 256) + 56));
  v19 = *(a1 + 256);
  v20 = *(v19 + 24);
  v21 = re::RenderFrameBox::get((a1 + 328), *(*(v19 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v19 + 144) + 16) << 60));
  v49 = *(re::RenderFrame::currentCommandBuffer(v21) + 2);
  re::MaterialManager::resolveArgumentBuffers(v20, &v49);

  v22 = *(a1 + 1688);
  if (v22)
  {
    v23 = (*(a1 + 1704) + 20);
    v24 = 32 * v22;
    do
    {
      if (*(v23 - 20))
      {
        if (*(v23 - 12) == 1)
        {
          *(v23 - 12) = 0;
        }

        if (*v23 == 1)
        {
          *v23 = 0;
        }
      }

      v23 += 32;
      v24 -= 32;
    }

    while (v24);
  }

  if ((re::DrawingManager::shouldRenderProfilerNode(a1) & 1) != 0 && *(*(a1 + 1648) + 16) == 1)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v54);
    re::RenderFrame::emitGraph(v15, "ProfilerOverlay", "RenderFrame");
    v48 = 65290051;
    re::RenderFrame::specifyScopeLane(v15, &v48, (*(a1 + 1648) + 12), "ProfilerOverlay");
    re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&v54);
  }

  v25 = 1;
  *(*(a1 + 1648) + 16) = 1;
  re::RenderFrame::buildOrRetainCachedGraph(v15, (a1 + 1624));
  re::RenderGraphManager::deleteStaleGraphs(*(a1 + 296), *(*(*(a1 + 256) + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 16) << 60), v15[49]);
  re::RenderFrame::identifyUsedRenderLayers(v15);
  if (!v15[54])
  {
    v25 = *(a3 + 320) != 0;
  }

  *(a3 + 296) = v25;
  v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v26.__d_.__rep_;
  v27 = re::ProfilerConfig::isStatisticCollectionEnabled(v26.__d_.__rep_);
  if (v27)
  {
    v28 = re::profilerThreadContext(v27);
    if (*(v28 + 152))
    {
      v3 = mach_absolute_time();
    }

    re::RenderThread::commitFrame(*(a1 + 312), v5, a3);
    if (*(v28 + 152))
    {
      v30 = mach_absolute_time();
      v31 = *(v28 + 152);
      if (v31)
      {
        v32 = v31[88].u64[0];
        if (v32 >= v30 - v3)
        {
          v32 = v30 - v3;
        }

        v31[88].i64[0] = v32;
        v33 = v31[88].u64[1];
        if (v33 <= v30 - v3)
        {
          v33 = v30 - v3;
        }

        v31[88].i64[1] = v33;
        v34 = vdupq_n_s64(1uLL);
        v34.i64[0] = v30 - v3;
        v31[89] = vaddq_s64(v31[89], v34);
        *(v28 + 184) = 0;
      }
    }
  }

  else
  {
    re::RenderThread::commitFrame(*(a1 + 312), v5, a3);
  }

  v51 = (std::chrono::steady_clock::now().__d_.__rep_ - v26.__d_.__rep_) / 1000000000.0 + 0.0;
  v52 = 0;
  *(a1 + 864) = v51 + (std::chrono::steady_clock::now().__d_.__rep_ - v26.__d_.__rep_) / 1000000000.0 * 0.0;
  v35 = *(a1 + 1664);
  if (v35 && (v35 = re::ProfilerManager::isProcessorEnabled<re::ProfilerFrameStatisticsProcessor,void>(v35), (v35 & 1) != 0) || (v36 = *(a1 + 1648)) != 0 && (*(v36 + 296) & 1) == 0)
  {
    v35 = re::ProfilerConfig::isStatisticCollectionEnabled(v35);
    if (v35)
    {
      v37 = re::profilerThreadContext(v35);
      v35 = mach_absolute_time();
      v38 = *(v37 + 152);
      if (v38)
      {
        v39 = v38[736].u64[0];
        if (v39 >= v35 - v10)
        {
          v39 = v35 - v10;
        }

        v38[736].i64[0] = v39;
        v40 = v38[736].u64[1];
        if (v40 <= v35 - v10)
        {
          v40 = v35 - v10;
        }

        v38[736].i64[1] = v40;
        v41 = vdupq_n_s64(1uLL);
        v41.i64[0] = v35 - v10;
        v38[737] = vaddq_s64(v38[737], v41);
        *(v37 + 184) = 0;
      }
    }
  }

  if (v9)
  {
    v42 = re::ProfilerConfig::isStatisticCollectionEnabled(v35);
    if (v42)
    {
      v43 = re::profilerThreadContext(v42);
      re::ProfilerThreadContext::end(v43);
    }
  }

  v44 = *(*(a1 + 256) + 144);
  v45 = *(v44 + 6);
  v44 = (v44 + 48);
  re::updateFrameCountCommon(v44, ((v45 & 0xFFFFFFFFFFFFFFFLL) + 1), "RenderFrameCount", 0);
  *(v44 + 1) = *(v44 - 3) & 0xFFFFFFFFFFFFFFFLL;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53, v46, v47);
}

void re::DrawingManager::addFrameBeganSignal(uint64_t a1, id *a2, void *a3)
{
  v5[0] = *a2;
  v5[1] = a3;
  re::DynamicArray<re::ecs2::HandleTable::HandleSlot>::add((a1 + 696), v5);
  if (v5[0])
  {
  }
}

BOOL re::DrawingManager::didExceedFlywheelThresholdFrameCount(re::DrawingManager *this)
{
  v1 = &qword_1EE1C5000;
  {
    v7 = this;
    v1 = &qword_1EE1C5000;
    v5 = v3;
    this = v7;
    if (v5)
    {
      re::Defaults::uint64Value(v8, "flywheelFrameCountThreshold", v4);
      v6 = v8[1];
      if (!LOBYTE(v8[0]))
      {
        v6 = 6;
      }

      re::DrawingManager::didExceedFlywheelThresholdFrameCount(void)const::kFlywheelFrameCountThreshold = v6;
      v1 = &qword_1EE1C5000;
      this = v7;
    }
  }

  return (*(*(*(this + 32) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL) - (*(*(*(this + 32) + 144) + 56) & 0xFFFFFFFFFFFFFFFuLL) > v1[228];
}

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::operator()(uint64_t result)
{
  v2 = *(result + 8);
  if (*(v2 + 785) == 1)
  {
    v3 = *(v2 + 312);
    re::internal::AutoResetEvent::set((v3 + 320));

    re::RenderThread::waitForIdleInternal(v3);
  }
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_0,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C08;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::operator()(uint64_t result, void *a2)
{
  v2 = *(result + 8) + 16 * (*a2 & 7);
  if (((*(v2 + 336) ^ *a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    result = *(v2 + 328);
    if (result)
    {
      return re::RenderFrame::onFrameComplete(result);
    }
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_1,void ()(re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06C60;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::FrameCount)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::operator()(uint64_t a1, os_unfair_lock_s **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  re::PerFrameAllocatorGPUManager::freeAllocatorsForFrame(*(v3 + 320), *a2);
  v4 = *(*(v3 + 296) + 296);

  re::RenderGraphPersistentResourceManager::pruneExpiredData(v4, v2);
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06CC8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_2,void ()(re::FrameCount)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06CC8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_3,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D20;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_3,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D20;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::operator()(re *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  if (*(v2 + 786) == 1)
  {
    a1 = [*(v2 + 280) dispatchAvailableCompletionNotifications];
  }

  v3 = *(v2 + 785);
  if (*(v2 + 784) != v3)
  {
    if ((v3 & 1) != 0 || !*(v2 + 784))
    {
      v6 = *(v2 + 312);
      if (!v6)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) RenderThread was disabled or not initialized", "m_renderThread != nullptr", "operator()", 262);
        _os_crash("assertion failure: (m_renderThread != nullptr) RenderThread was disabled or not initialized");
        __break(1u);
        return;
      }

      re::RenderThread::deinit(v6);
      re::internal::destroyPersistent<re::RenderThread>(*(v2 + 312));
      *(v2 + 312) = 0;
    }

    else
    {
      v4 = re::globalAllocators(a1);
      v5 = (*(*v4[2] + 32))(v4[2], 440, 8);
      *(v5 + 24) = 0;
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      *(v5 + 56) = 0;
      *(v5 + 104) = 0;
      *(v5 + 112) = 0;
      *(v5 + 120) = 0;
      *(v5 + 152) = 0;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0;
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 15) = 0;
      *(v5 + 208) = 850045863;
      *(v5 + 216) = 0u;
      *(v5 + 232) = 0u;
      *(v5 + 248) = 0u;
      *(v5 + 264) = 0;
      *(v5 + 272) = 1018212795;
      *(v5 + 305) = 0u;
      *(v5 + 280) = 0u;
      *(v5 + 296) = 0u;
      *(v5 + 328) = 850045863;
      *(v5 + 352) = 0u;
      *(v5 + 368) = 0u;
      *(v5 + 336) = 0u;
      *(v5 + 384) = 0;
      *(v5 + 392) = 1018212795;
      *(v5 + 432) = 0;
      *(v5 + 400) = 0u;
      *(v5 + 416) = 0u;
      *(v2 + 312) = v5;
      re::RenderThread::init(v5, *(v2 + 256));
    }

    *(v2 + 785) = *(v2 + 784);
  }

  v7 = *(*(v2 + 256) + 24);
  if (v7)
  {

    re::MaterialManager::startFrame(v7);
  }
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D78;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_4,void ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06D78;
  a2[1] = v2;
  return a2;
}

float re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(*(v2 + 256) + 317) == 1)
  {
    v3 = *(v2 + 1648);
    if (v3)
    {
      result = *(a2 + 8);
      *(v3 + 232) = result;
    }
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06DD0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::init(re::RenderManager *,re::ProfilerManager *,re::ColorManager *,re::MeshManager *,BOOL)::$_5,void ()(re::GpuTimingData const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06DD0;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(re *a1))(void)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 1);
  v1 = *(a1 + 2);
  v3 = *(*(v2 + 256) + 144);
  v4 = re::globalAllocators(a1)[2];
  v6[0] = &unk_1F5D06EA0;
  v6[1] = v2;
  v6[3] = v4;
  v6[4] = v6;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v3, v1, v6);
  return re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(v6);
}

uint64_t re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06E48;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06E48;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

re *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::operator()(uint64_t a1, unint64_t *a2)
{
  result = re::FrameManager::getFrameRefCount(*(*(*(a1 + 8) + 256) + 144), *a2);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

void *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06EA0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::trackCommandBufferForFrameCompletion(re::mtl::CommandBuffer &,re::FrameCount)::$_0::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D06EA0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = *(a1 + 8);
  re::RenderFrameWorkload::scheduled(*(a1 + 16));
  atomic_fetch_add((v3 + 836), 0xFFFFFFFF);
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06EF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_0,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06EF8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::operator()(uint64_t a1, id *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  re::RenderFrameWorkload::completed(*(a1 + 32));
  v5 = [*a2 status];
  if (v5 == 5)
  {
    re::mtl::CommandBuffer::error(&v19, a2);
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = [*a2 status];
      v18 = v19;
      *buf = 134218242;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Command buffer did not complete (status = %zu, error = %@)", buf, 0x16u);
    }
  }

  v8 = *(a1 + 32);
  v9 = *(*(v4 + 256) + 144);
  v10 = *(a1 + 16);
  v11 = re::globalAllocators(v5)[2];
  *&buf[16] = v4;
  v21 = v11;
  *buf = &unk_1F5D06FA8;
  *&buf[8] = v8;
  v22 = buf;
  re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v9, v10, buf);
  v12 = re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(buf);
  v13 = *(a1 + 24);
  if (*(a1 + 16) != v13)
  {
    v14 = *(*(v4 + 256) + 144);
    v15 = re::globalAllocators(v12)[2];
    *&buf[16] = v4;
    v21 = v15;
    *buf = &unk_1F5D06FA8;
    *&buf[8] = v8;
    v22 = buf;
    re::FrameManager::tryExecuteCallbackWithAllocatedFrame(v14, v13, buf);
    re::FunctionBase<24ul,void ()(unsigned long long)>::destroyCallable(buf);
  }

  v16 = *(a1 + 32);
  if (*(v16 + 24) == 1)
  {
    re::RenderThread::workloadGPUCompleted(*(v4 + 312));
    v16 = *(a1 + 32);
  }

  atomic_fetch_add((v4 + 832), 0xFFFFFFFF);
  if ((*(v4 + 786) & 1) == 0)
  {
    dispatch_semaphore_signal(*(v4 + 792));
  }
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1,void ()(re::mtl::CommandBuffer const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

re *re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v4 = v3 + 16 * (*(*(a1 + 8) + 152) & 7);
  if (((*(v4 + 336) ^ *(*(a1 + 8) + 152)) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v5 = *(v4 + 328);
    if (v5)
    {
      re::RenderFrame::onCommandBuffersComplete(v5);
    }
  }

  result = re::FrameManager::getFrameRefCount(*(*(v3 + 256) + 144), v2);
  if (result)
  {
    atomic_fetch_add(result + 32, 0xFFFFFFFF);
  }

  return result;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06FA8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_1::operator() const(re::mtl::CommandBuffer const&)::{lambda(unsigned long long)#1},void ()(unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D06FA8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    if (v2 == a2 + 40)
    {
      *(result + 64) = result + 40;
      return (*(**(a2 + 64) + 24))(*(a2 + 64), result + 40);
    }

    else
    {
      *(result + 64) = v2;
      *(a2 + 64) = 0;
    }
  }

  else
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t ___ZN3MTL13CommandBuffer19addCompletedHandlerERKNSt3__18functionIFvPS0_EEE_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 64);
  v4 = a2;
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E28BDCA8);
  }

  return (*(*v2 + 48))(v2, &v4);
}

void _ZNK2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEEclEOy(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8) + 16 * (*a2 & 7);
  if (((*(v2 + 336) ^ *a2) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    v3 = *(v2 + 328);
    if (v3)
    {
      re::RenderFrame::onCommandBuffersComplete(v3);
    }
  }
}

void *_ZNK2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEE9cloneIntoEPv(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07000;
  a2[1] = v2;
  return a2;
}

void *_ZN2re8internal8CallableIZZNS_14DrawingManager20executeFrameInternalEPNS_19RenderFrameWorkloadEEUb_E4__10FvyEJEE8moveIntoEPv(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07000;
  a2[1] = v2;
  return a2;
}

uint64_t std::__function::__value_func<void ()(MTL::CommandBuffer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::operator()(re::ProfilerConfig *a1, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v8 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v8, *(v6 + 1664), v4, 0);
  }

  v9 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v9)
  {
    v9 = re::profilerThreadContext(v9);
    v10 = *(v9 + 152);
    if (v10)
    {
      v11 = (v3 * 1000000.0);
      v12 = v10[240].u64[0];
      if (v12 >= v11)
      {
        v12 = (v3 * 1000000.0);
      }

      v10[240].i64[0] = v12;
      v13 = v10[240].u64[1];
      if (v13 <= v11)
      {
        v13 = (v3 * 1000000.0);
      }

      v10[240].i64[1] = v13;
      v14 = vdupq_n_s64(1uLL);
      v14.i64[0] = (v3 * 1000000.0);
      v10[241] = vaddq_s64(v10[241], v14);
      *(v9 + 184) = 0;
    }
  }

  v15 = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
  if (v15)
  {
    v15 = re::profilerThreadContext(v15);
    v16 = *(v15 + 152);
    if (v16)
    {
      v17 = (v2 * 1000000.0);
      v18 = v16[248].u64[0];
      if (v18 >= v17)
      {
        v18 = (v2 * 1000000.0);
      }

      v16[248].i64[0] = v18;
      v19 = v16[248].u64[1];
      if (v19 <= v17)
      {
        v19 = (v2 * 1000000.0);
      }

      v16[248].i64[1] = v19;
      v20 = vdupq_n_s64(1uLL);
      v20.i64[0] = (v2 * 1000000.0);
      v16[249] = vaddq_s64(v16[249], v20);
      *(v15 + 184) = 0;
    }
  }

  v21 = re::ProfilerConfig::isStatisticCollectionEnabled(v15);
  if (v21)
  {
    v21 = re::profilerThreadContext(v21);
    v22 = *(v21 + 152);
    if (v22)
    {
      v23 = (v5 * 1000000.0);
      v24 = v22[256].u64[0];
      if (v24 >= v23)
      {
        v24 = (v5 * 1000000.0);
      }

      v22[256].i64[0] = v24;
      v25 = v22[256].u64[1];
      if (v25 <= v23)
      {
        v25 = (v5 * 1000000.0);
      }

      v22[256].i64[1] = v25;
      v26 = vdupq_n_s64(1uLL);
      v26.i64[0] = (v5 * 1000000.0);
      v22[257] = vaddq_s64(v22[257], v26);
      *(v21 + 184) = 0;
    }
  }

  v27 = re::ProfilerConfig::isStatisticCollectionEnabled(v21);
  if (v27)
  {
    v28 = re::profilerThreadContext(v27);

    re::ProfilerThreadContext::end(v28);
  }
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07058;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_0,void ()(re::PerfMTLCounterSamplerResult)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D07058;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::operator()(re::ProfilerConfig *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  v4 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v6, *(v4 + 1664), v2, 0);
  }

  v7 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v7)
  {
    v7 = re::profilerThreadContext(v7);
    v8 = *(v7 + 152);
    if (v8)
    {
      v9 = (v3 * 1000000.0);
      v10 = v8[264].u64[0];
      if (v10 >= v9)
      {
        v10 = (v3 * 1000000.0);
      }

      v8[264].i64[0] = v10;
      v11 = v8[264].u64[1];
      if (v11 <= v9)
      {
        v11 = (v3 * 1000000.0);
      }

      v8[264].i64[1] = v11;
      v12 = vdupq_n_s64(1uLL);
      v12.i64[0] = (v3 * 1000000.0);
      v8[265] = vaddq_s64(v8[265], v12);
      *(v7 + 184) = 0;
    }
  }

  v13 = re::ProfilerConfig::isStatisticCollectionEnabled(v7);
  if (v13)
  {
    v14 = re::profilerThreadContext(v13);

    re::ProfilerThreadContext::end(v14);
  }
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D070C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::activatePerfSampling(void)::$_1,void ()(re::PerfMTLCounterSamplerResult)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D070C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D07118;
  v2 = (a1 + 2);
  re::DynamicString::deinit((a1 + 6));
  re::DynamicString::deinit(v2);
  return a1;
}

void re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::~MoveOnlyCallable(void *a1)
{
  *a1 = &unk_1F5D07118;
  v1 = (a1 + 2);
  re::DynamicString::deinit((a1 + 6));
  re::DynamicString::deinit(v1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::MoveOnlyCallable<re::DrawingManager::reloadLibrary(char const*,char const*)::$_0,void ()(void)>::moveInto(void *a1, uint64_t a2)
{
  v2 = a1[1];
  *a2 = &unk_1F5D07118;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 40) = a1[5];
  v3 = a1[3];
  *(a2 + 16) = a1[2];
  a1[2] = 0;
  v4 = a1[4];
  a1[5] = 0;
  v6 = *(a2 + 24);
  v5 = *(a2 + 32);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  a1[3] = v6;
  a1[4] = v5;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 72) = a1[9];
  v7 = a1[7];
  *(a2 + 48) = a1[6];
  a1[6] = 0;
  v8 = a1[8];
  a1[9] = 0;
  v10 = *(a2 + 56);
  v9 = *(a2 + 64);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  a1[7] = v10;
  a1[8] = v9;
  return a2;
}

void *re::internal::Callable<re::RenderFrameBox::get(re::FrameCount)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D07168;
  return result;
}

void *re::internal::Callable<re::RenderFrameBox::get(re::FrameCount)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D07168;
  return result;
}

void re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::operator()(re::ProfilerConfig *a1, uint64_t a2)
{
  v3 = *(a1 + 1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v5, *(v3 + 1664), *a2, 0);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v6 = re::profilerThreadContext(v6);
    v7 = *(v6 + 152);
    if (v7)
    {
      v8 = (*(a2 + 8) * 1000000.0);
      v9 = v7[200].u64[0];
      if (v9 >= v8)
      {
        v9 = (*(a2 + 8) * 1000000.0);
      }

      v7[200].i64[0] = v9;
      v10 = v7[200].u64[1];
      if (v10 <= v8)
      {
        v10 = v8;
      }

      v7[200].i64[1] = v10;
      v11 = vdupq_n_s64(1uLL);
      v11.i64[0] = v8;
      v7[201] = vaddq_s64(v7[201], v11);
      *(v6 + 184) = 0;
    }
  }

  v12 = re::ProfilerConfig::isStatisticCollectionEnabled(v6);
  if (v12)
  {
    v13 = re::profilerThreadContext(v12);

    re::ProfilerThreadContext::end(v13);
  }
}

void *re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D071C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::DrawingManager::sendGPUStatsToFrameProfiler(void)::$_0,void ()(re::GpuTimingData const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D071C0;
  a2[1] = v2;
  return a2;
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)12>::end(void *result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[104].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[104].i64[0] = v5;
      v6 = v3[104].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[104].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[105] = vaddq_s64(v3[105], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::DynamicArray<re::CommandBuffer>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::CommandBuffer>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x18uLL))
        {
          v2 = 24 * a2;
          result = (*(*result + 32))(result, 24 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 24 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          *(v8 + 16) = 0;
          v11[2] = v12;

          v8 += 24;
          v11 += 3;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicOverflowArray<re::CommandBuffer,8ul>::copy(id *result, uint64_t a2, unint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = result[1];
    if (v4 == -1)
    {
      v24 = 0;
      memset(v33, 0, sizeof(v33));
      v21 = MEMORY[0x1E69E9C10];
      v25 = 136315906;
      v26 = "copy";
      v27 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v28 = 678;
      v29 = 2048;
      v30 = 0;
      v31 = 2048;
      v32 = 0;
      _os_log_send_and_compose_impl(v22, &v24, v33, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v25, 38, v23);
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      if (result[2])
      {
        v11 = result + 3;
      }

      else
      {
        v11 = result[4];
      }

      v18 = v11 + 2;
      v19 = 24 * a3;
      v20 = (a2 + 16);
      do
      {
        *(v18 - 1) = *(v20 - 1);
        v18 = re::ObjCObject::operator=(v18, v20) + 3;
        v20 += 3;
        v19 -= 24;
      }

      while (v19);
LABEL_22:
      *(result + 4) += 2;
      return;
    }

    re::DynamicOverflowArray<re::CommandBuffer,8ul>::growCapacity(result, a3);
    v7 = result[1];
    v8 = *(result + 4);
    if (v8)
    {
      v9 = result + 3;
      if (!v7)
      {
LABEL_6:
        if ((v8 & 1) == 0)
        {
LABEL_7:
          v10 = result[4];
LABEL_15:
          if (v7 != a3)
          {
            v15 = a2 + 24 * v7;
            v16 = a2 + 24 * a3;
            v17 = &v10[3 * result[1]];
            do
            {
              *v17 = *v15;
              v17[2] = *(v15 + 16);
              v15 += 24;
              v17 += 3;
            }

            while (v15 != v16);
          }

          result[1] = a3;
          goto LABEL_22;
        }

LABEL_14:
        v10 = result + 3;
        goto LABEL_15;
      }
    }

    else
    {
      v9 = result[4];
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v12 = v9 + 2;
    v13 = 24 * v7;
    v14 = (a2 + 16);
    do
    {
      *(v12 - 1) = *(v14 - 1);
      v12 = re::ObjCObject::operator=(v12, v14) + 3;
      v14 += 3;
      v13 -= 24;
    }

    while (v13);
    if ((result[2] & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }
}

void re::DrawingManager::ExternalCommandBufferHandlerContext::~ExternalCommandBufferHandlerContext(re::DrawingManager::ExternalCommandBufferHandlerContext *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D072A0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  return a1;
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D072A0;
  v2 = a1[1];
  if (v2)
  {

    a1[1] = 0;
  }

  JUMPOUT(0x1E6906520);
}

void *std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5D072A0;
  a2[1] = v2;
  if (v2)
  {
    return (v2 + 8);
  }

  return result;
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {

    *(a1 + 8) = 0;
  }
}

void std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
  }

  operator delete(__p);
}

uint64_t std::__function::__func<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2,std::allocator<re::DrawingManager::executeFrameInternal(re::RenderFrameWorkload *)::$_2>,void ()(MTL::CommandBuffer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
            memcpy(v7, v5[4], 72 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::PipelineStateCacheKey>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 96 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 96 * v5) = *(v6 + 96 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 96 * v9) = *(*(a1 + 16) + 96 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void *re::DynamicArray<re::RenderLayer>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderLayer>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 32 * v9;
        v11 = v7 + 12;
        v12 = v8 + 12;
        do
        {
          v14 = v12 - 12;
          v13 = *(v12 - 12);
          *(v12 - 12) = 0;
          *(v11 - 12) = v13;
          LODWORD(v13) = *(v12 - 4);
          *(v11 - 4) = v13;
          if (v13 == 1)
          {
            *v11 = *v12;
          }

          v15 = *(v12 + 8);
          v11[8] = v15;
          if (v15 == 1)
          {
            *(v11 + 3) = *(v12 + 12);
          }

          v11 += 32;
          v12 += 32;
        }

        while (v14 + 32 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

double re::make::shared::object<re::RenderFrameSettings>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 144, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v4 = &unk_1F5D07330;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 64) = 0;
  *(v4 + 88) = 0;
  *(v4 + 136) = 0;
  result = 0.0;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0;
  *a2 = v4;
  return result;
}

void re::RenderFrameSettings::~RenderFrameSettings(re::RenderFrameSettings *this)
{
  *this = &unk_1F5D07330;
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 104);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 64);
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5D07330;
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 104);
  re::DynamicArray<re::RenderFrameEvent>::deinit(this + 64);
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(void *result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[192].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[192].i64[0] = v5;
      v6 = v3[192].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[192].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[193] = vaddq_s64(v3[193], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

__n128 std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D07378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void *std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  *v3 = std::chrono::steady_clock::now();
  *(v3 + 16) = 1;
  re::DrawingManager::waitForGPUInternal(v2);
  v4 = *(a1 + 16);
  *(v4 + 8) = *(v4 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v4) / 1000000000.0;
  *(v4 + 16) = 0;
  v5 = re::RenderFrameBox::get((v2 + 328), *(*(*(v2 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(v2 + 256) + 144) + 16) << 60));
  re::DynamicArray<re::Pair<NS::SharedPtr<MTL::Event>,unsigned long long,true>>::operator=(v5 + 417, (v2 + 696));
  re::DynamicArray<re::RenderFrameEvent>::clear(v2 + 696);
  if (*(v2 + 624))
  {
    v6 = v2 + 632;
  }

  else
  {
    v6 = *(v2 + 640);
  }

  v7 = *(v2 + 616);
  v27 = v6;
  v28 = v7;
  re::DynamicOverflowArray<re::RenderFrameDelta *,5ul>::operator=((v5 + 409), &v27);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 608);
  v8 = *(v2 + 1688);
  v27 = *(v2 + 1704);
  v28 = v8;
  re::FixedArray<re::RenderLayer>::operator=((v5 + 552), &v27);
  re::TextureManager::synchronizeTextures(*(*(v2 + 256) + 56));
  v9 = *(v2 + 256);
  v10 = *(v9 + 24);
  v11 = re::RenderFrameBox::get((v2 + 328), *(*(v9 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v9 + 144) + 16) << 60));
  v30 = *(re::RenderFrame::currentCommandBuffer(v11) + 2);
  re::MaterialManager::resolveArgumentBuffers(v10, &v30);

  v12 = *(v2 + 1688);
  if (v12)
  {
    v13 = (*(v2 + 1704) + 20);
    v14 = 32 * v12;
    do
    {
      if (*(v13 - 20))
      {
        if (*(v13 - 12) == 1)
        {
          *(v13 - 12) = 0;
        }

        if (*v13 == 1)
        {
          *v13 = 0;
        }
      }

      v13 += 32;
      v14 -= 32;
    }

    while (v14);
  }

  if ((re::DrawingManager::shouldRenderProfilerNode(v2) & 1) != 0 && *(*(v2 + 1648) + 16) == 1)
  {
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(&v27);
    re::RenderFrame::emitGraph(v5, "ProfilerOverlay", "RenderFrame");
    v26[0] = 65290051;
    re::RenderFrame::specifyScopeLane(v5, v26, (*(v2 + 1648) + 12), "ProfilerOverlay");
    re::ProfilerTimeGuard<(re::ProfilerStatistic)23>::end(&v27);
  }

  *(*(v2 + 1648) + 16) = 1;
  re::RenderFrame::buildOrRetainCachedGraph(v5, (v2 + 1624));
  re::RenderGraphManager::deleteStaleGraphs(*(v2 + 296), *(*(*(v2 + 256) + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(v2 + 256) + 144) + 16) << 60), v5[49]);
  re::RenderFrame::identifyUsedRenderLayers(v5);
  v15 = *(a1 + 24);
  v16 = 1;
  if (!v5[54])
  {
    v16 = *(v15 + 320) != 0;
  }

  *(v15 + 296) = v16;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v17 = *(a1 + 16);
  *v17 = std::chrono::steady_clock::now();
  *(v17 + 16) = 1;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v26);
  re::RenderFrame::acquireDrawables(v5, &v27);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)11>::end(v26);
  v18 = *(a1 + 16);
  *(v18 + 8) = *(v18 + 8) + (std::chrono::steady_clock::now().__d_.__rep_ - *v18) / 1000000000.0;
  *(v18 + 16) = 0;
  v19 = *(a1 + 16);
  v20.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  LOBYTE(v21) = *(v19 + 16);
  *(v2 + 864) = *(v19 + 8) + (v20.__d_.__rep_ - *v19) / 1000000000.0 * v21;
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v26, 5002, v2, *(*(*(v2 + 256) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL, 0, 0);
  re::DrawingManager::executeFrameInternal(v2, *(a1 + 24));
  re::DrawingManager::presentDrawablesAndCommit(v2, &v27, *(a1 + 8), *(a1 + 24));
  v24 = *(a1 + 8);
  if (v24 == 2)
  {
    re::RenderFrameWorkload::immediatePresentDrawables(*(a1 + 24), 1.0 / *(v2 + 1792));
    v24 = *(a1 + 8);
  }

  if (v24 == 1)
  {
    re::RenderFrame::onFrameComplete(v5);
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v26, v22, v23);
  return re::FixedArray<re::mtl::Drawable>::deinit(&v27);
}

uint64_t std::__function::__func<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0,std::allocator<re::DrawingManager::commitFrameInternal(re::WorkloadCommitMode,re::RenderFrameWorkload *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::ProfilerTimeGuard<(re::ProfilerStatistic)11>::end(void *result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[96].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[96].i64[0] = v5;
      v6 = v3[96].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[96].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[97] = vaddq_s64(v3[97], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::mtl::Drawable>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;

        v5 -= 8;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::allocInfo_DeformationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_456, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_456))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B9AF0, "DeformationService");
    __cxa_guard_release(&_MergedGlobals_456);
  }

  return &unk_1EE1B9AF0;
}

void re::initInfo_DeformationService(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xC0353100B91B06CALL;
  v8[1] = "DeformationService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_DeformationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::DeformerHelper::registerBuiltInDeformers(re::DeformerHelper *this, re::DeformationManager *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 96, 8);
  *(v3 + 88) = 0;
  *v3 = &unk_1F5D05E90;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  v9[0] = &unk_1F5D07468;
  v9[3] = v9;
  v8 = v7;
  v7[0] = &unk_1F5D07468;
  v4 = re::globalAllocators(v3)[2];
  v14 = v4;
  v5 = (*(*v4 + 32))(v4, 40, 0);
  v6 = v5;
  *v5 = &unk_1F5D074F8;
  if (v8)
  {
    if (v8 == v7)
    {
      v5[4] = v5 + 1;
      (*(*v8 + 24))(v8);
    }

    else
    {
      v5[4] = v8;
      v8 = 0;
    }
  }

  else
  {
    v5[4] = 0;
  }

  v15 = v6;
  v11 = v4;
  v12 = 0;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>(v10, v13);
  operator new();
}

void re::FenceDeformer::addDeformationInstance(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = vdupq_n_s64(2uLL);
  v6 = *a3;
  if (v6 == 255)
  {
    v7 = *(a3 + 2);
    LOBYTE(v6) = 3;
    if (v7)
    {
      if (*(v7 + 208))
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = 3;
      }
    }
  }

  *(a4 + 24) = v6;
  if (*a2)
  {
    *&v30[0] = 0;
    *(&v30[0] + 1) = &str_67;
    v8 = v30[0];
    v9 = *&v30[0] >> 1;
    *(a4 + 40) = 0;
    v10 = (a4 + 40);
    *(v10 - 1) = v9;
    v10[1] = 0;
    v10[2] = 0;
    if (v8)
    {
      if (v30[0])
      {
      }
    }
  }

  else
  {
    *(a4 + 40) = 0;
    v10 = (a4 + 40);
    *(v10 - 1) = -1;
    v10[1] = 0;
    v10[2] = 0;
  }

  if (*(a2 + 256) != 255)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    if (!v19)
    {
      v21 = 0;
      memset(v30, 0, sizeof(v30));
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v22 = 136315906;
      v23 = "operator[]";
      v24 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v25 = 468;
      v26 = 2048;
      v27 = 0;
      v28 = 2048;
      v29 = 0;
      _os_log_send_and_compose_impl(v17, &v21, v30, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v18, v19);
      _os_crash_msg();
      __break(1u);
    }

    v12 = v20;
    *v20 = *(a2 + 256);
    *&v30[0] = 0;
    *(&v30[0] + 1) = &str_67;
    v14 = v30[0];
    *(v12 + 1) = *&v30[0] >> 1;
    if (v14)
    {
      if (v30[0])
      {
      }
    }

    re::FixedArray<float>::operator=(v10, &v18);
    if (v18)
    {
      if (v19)
      {
        (*(*v18 + 40))();
      }
    }
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0>,void ()(re::BlendShapeDeformer *)>::operator()(re *result, re::BlendShapeDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::BlendShapeDeformer::~BlendShapeDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_0>,void ()(re::BlendShapeDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::function<void ()(re::BlendShapeDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::operator=[abi:nn200100](v3, v4);
}

uint64_t *std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::Deformer *)>::operator()((a1 + 1), v5);
  }

  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v7 = a2[4];
  if (v7)
  {
    if (v7 == a2 + 1)
    {
      a1[4] = (a1 + 1);
      (*(*a2[4] + 24))(a2[4], a1 + 1);
    }

    else
    {
      a1[4] = v7;
      a2[4] = 0;
    }
  }

  else
  {
    a1[4] = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addNew(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  result = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v10, v9);
    v8 = *a2;
    *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
    *(result + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
    *(result + 16) = a2[1];
    *a2 = 0;
    a2[1] = &str_67;
    *(result + 24) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D074F8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::BlendShapeDeformer *)>,void ()(re::BlendShapeDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D074F8;
  std::__function::__value_func<void ()(re::BlendShapeDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07560;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07560;
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07560;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::BlendShapeDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BlendShapeDeformer>(std::unique_ptr<re::BlendShapeDeformer,std::function<void ()(re::BlendShapeDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::function<void ()(re::Deformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100](v4);
}

uint64_t *std::unique_ptr<re::Deformer,std::function<void ()(re::Deformer*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::Deformer *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::Deformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::Deformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1>,void ()(re::SkinningDeformer *)>::operator()(re *result, re::SkinningDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::SkinningDeformer::~SkinningDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_1>,void ()(re::SkinningDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::SkinningDeformer::~SkinningDeformer(re::SkinningDeformer *this)
{
  v2 = 0;
  v3 = this + 32912;
  do
  {
    v4 = *&v3[v2];
    if (v4)
    {

      *&v3[v2] = 0;
    }

    v2 -= 8;
  }

  while (v2 != -128);
  for (i = 32784; i != 16; i -= 8)
  {
    v6 = *(this + i);
    if (v6)
    {

      *(this + i) = 0;
    }
  }
}

{
  re::SkinningDeformer::~SkinningDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::SkinningDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::SkinningDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07680;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::SkinningDeformer *)>,void ()(re::SkinningDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07680;
  std::__function::__value_func<void ()(re::SkinningDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D076E8;
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D076E8;
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D076E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::SkinningDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SkinningDeformer>(std::unique_ptr<re::SkinningDeformer,std::function<void ()(re::SkinningDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2>,void ()(re::SmoothDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = *(v2 + 16);
    if (v4)
    {

      *(v2 + 16) = 0;
    }

    v5 = *(*v3 + 40);

    return v5(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_2>,void ()(re::SmoothDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::SmoothDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::SmoothDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D077F8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::SmoothDeformer *)>,void ()(re::SmoothDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D077F8;
  std::__function::__value_func<void ()(re::SmoothDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07860;
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07860;
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07860;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::SmoothDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::SmoothDeformer>(std::unique_ptr<re::SmoothDeformer,std::function<void ()(re::SmoothDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3>,void ()(re::StitchedDeformer *)>::operator()(re *result, re::StitchedDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::StitchedDeformer::~StitchedDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_3>,void ()(re::StitchedDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::StitchedDeformer::~StitchedDeformer(re::StitchedDeformer *this)
{
  re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::deinit(this + 256);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 256);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(this + 152);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 152);
  re::DataArray<re::ecs2::Component *>::deinit(this + 88);
  re::DynamicArray<unsigned long>::deinit(this + 88);
  re::BucketArray<re::StitchedDeformer::StitchedDeformerInstance,32ul>::deinit(this + 32);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 32);
}

{
  re::StitchedDeformer::~StitchedDeformer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

unint64_t re::BucketArray<re::StitchedDeformer::ComputePipelineData,64ul>::operator[](uint64_t a1, unint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  if (v4 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v4);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v9, v10);
    __break(1u);
LABEL_8:
    v13 = 0;
    memset(v22, 0, sizeof(v22));
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

    v17 = 858;
    v18 = 2048;
    v19 = v2;
    v20 = 2048;
    v21 = v3;
    _os_log_send_and_compose_impl(v8, &v13, v22, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v11, v12);
    _os_crash_msg();
    __break(1u);
  }

  v2 = a2 >> 6;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  return *(v5 + 8 * v2) + 16 * (a2 & 0x3F);
}

uint64_t re::BucketArray<re::StitchedDeformer::StitchedDeformerInstance,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ImportAssetTable::ImportedAsset,32ul>::operator[](a1, i);
      re::FixedArray<re::DeformationDescription>::deinit(v4 + 3);
      re::FixedArray<CoreIKTransform>::deinit(v4);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

void *re::FixedArray<re::DeformationDescription>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = v2 << 6;
      v5 = (result[2] + 40);
      do
      {
        re::FixedArray<CoreIKTransform>::deinit(v5);
        v5 += 8;
        v4 -= 64;
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

uint64_t std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::StitchedDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::StitchedDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07970;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::StitchedDeformer *)>,void ()(re::StitchedDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07970;
  std::__function::__value_func<void ()(re::StitchedDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D079D8;
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D079D8;
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D079D8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::StitchedDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::StitchedDeformer>(std::unique_ptr<re::StitchedDeformer,std::function<void ()(re::StitchedDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4>,void ()(re::RenormalizationDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 144; i != 16; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_4>,void ()(re::RenormalizationDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::RenormalizationDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07AE8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::RenormalizationDeformer *)>,void ()(re::RenormalizationDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07AE8;
  std::__function::__value_func<void ()(re::RenormalizationDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07B50;
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07B50;
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07B50;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::RenormalizationDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::RenormalizationDeformer>(std::unique_ptr<re::RenormalizationDeformer,std::function<void ()(re::RenormalizationDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5>,void ()(re::OffsetsDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 48; i != 16; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_5>,void ()(re::OffsetsDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OffsetsDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::OffsetsDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07C60;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OffsetsDeformer *)>,void ()(re::OffsetsDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07C60;
  std::__function::__value_func<void ()(re::OffsetsDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07CC8;
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07CC8;
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07CC8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OffsetsDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OffsetsDeformer>(std::unique_ptr<re::OffsetsDeformer,std::function<void ()(re::OffsetsDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6>,void ()(re::BoundingBoxCalculation *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = *(v2 + 8);
    if (v4)
    {

      *(v2 + 8) = 0;
    }

    v5 = *(*v3 + 40);

    return v5(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_6>,void ()(re::BoundingBoxCalculation *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::BoundingBoxCalculation *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07DD8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::BoundingBoxCalculation *)>,void ()(re::BoundingBoxCalculation *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07DD8;
  std::__function::__value_func<void ()(re::BoundingBoxCalculation *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07E40;
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07E40;
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07E40;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::BoundingBoxCalculation *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::BoundingBoxCalculation>(std::unique_ptr<re::BoundingBoxCalculation,std::function<void ()(re::BoundingBoxCalculation*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7>,void ()(re::TensionDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 24; i != 8; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_7>,void ()(re::TensionDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::TensionDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::TensionDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07F50;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::TensionDeformer *)>,void ()(re::TensionDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07F50;
  std::__function::__value_func<void ()(re::TensionDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07FB8;
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D07FB8;
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D07FB8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::TensionDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::TensionDeformer>(std::unique_ptr<re::TensionDeformer,std::function<void ()(re::TensionDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8>,void ()(re::WrapDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    v4 = 16;
    do
    {
      v5 = *(v2 + v4);
      if (v5)
      {

        *(v2 + v4) = 0;
      }

      v4 -= 8;
    }

    while (v4);
    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_8>,void ()(re::WrapDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::WrapDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::WrapDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D080C8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::WrapDeformer *)>,void ()(re::WrapDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D080C8;
  std::__function::__value_func<void ()(re::WrapDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08130;
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08130;
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08130;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::WrapDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::WrapDeformer>(std::unique_ptr<re::WrapDeformer,std::function<void ()(re::WrapDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9>,void ()(re::ContactDeformer *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    for (i = 24; i != 8; i -= 8)
    {
      v5 = *(v2 + i);
      if (v5)
      {

        *(v2 + i) = 0;
      }
    }

    v6 = *(*v3 + 40);

    return v6(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_9>,void ()(re::ContactDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::ContactDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::ContactDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08240;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::ContactDeformer *)>,void ()(re::ContactDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08240;
  std::__function::__value_func<void ()(re::ContactDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D082A8;
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D082A8;
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D082A8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::ContactDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::ContactDeformer>(std::unique_ptr<re::ContactDeformer,std::function<void ()(re::ContactDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator()(re *result, re::OpenSubdivViewIndependentComputeStep **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_10>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(re::OpenSubdivViewIndependentComputeStep *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {

    *(this + 3) = 0;
  }
}

{
  re::OpenSubdivViewIndependentComputeStep::~OpenSubdivViewIndependentComputeStep(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D083B8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewIndependentComputeStep *)>,void ()(re::OpenSubdivViewIndependentComputeStep *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D083B8;
  std::__function::__value_func<void ()(re::OpenSubdivViewIndependentComputeStep *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08420;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08420;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08420;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewIndependentComputeStep *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewIndependentComputeStep>(std::unique_ptr<re::OpenSubdivViewIndependentComputeStep,std::function<void ()(re::OpenSubdivViewIndependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11>,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator()(re *result, re::OpenSubdivViewDependentComputeStep **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_11>,void ()(re::OpenSubdivViewDependentComputeStep *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(re::OpenSubdivViewDependentComputeStep *this)
{
  v2 = *(this + 6);
  if (v2)
  {

    *(this + 6) = 0;
  }

  v3 = *(this + 5);
  if (v3)
  {

    *(this + 5) = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {

    *(this + 4) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {

    *(this + 3) = 0;
  }
}

{
  re::OpenSubdivViewDependentComputeStep::~OpenSubdivViewDependentComputeStep(this);

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08530;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::OpenSubdivViewDependentComputeStep *)>,void ()(re::OpenSubdivViewDependentComputeStep *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08530;
  std::__function::__value_func<void ()(re::OpenSubdivViewDependentComputeStep *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08598;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08598;
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08598;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::OpenSubdivViewDependentComputeStep *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::OpenSubdivViewDependentComputeStep>(std::unique_ptr<re::OpenSubdivViewDependentComputeStep,std::function<void ()(re::OpenSubdivViewDependentComputeStep*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12>,void ()(re::CustomDeformers *)>::operator()(re *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::DynamicArray<unsigned long>::deinit(v2 + 128);
    re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit((v2 + 72));
    re::DataArray<re::CustomDeformers::CustomDeformerData>::deinit(v2 + 8);
    re::DynamicArray<unsigned long>::deinit(v2 + 8);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_12>,void ()(re::CustomDeformers *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::CustomDeformers *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::CustomDeformers *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D086A8;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::CustomDeformers *)>,void ()(re::CustomDeformers *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D086A8;
  std::__function::__value_func<void ()(re::CustomDeformers *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08710;
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08710;
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08710;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::CustomDeformers *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::CustomDeformers>(std::unique_ptr<re::CustomDeformers,std::function<void ()(re::CustomDeformers*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13>,void ()(re::FenceDeformer *)>::operator()(re *result, void *a2)
{
  if (*a2)
  {
    v2 = *(*re::globalAllocators(result)[2] + 40);

    return v2();
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_13>,void ()(re::FenceDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(re::FenceDeformer *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

void *std::function<void ()(re::FenceDeformer *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v4);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(v3);
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::~Callable(void *a1)
{
  *a1 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08820;
  v3 = a2 + 1;
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v4 == a1 + 8)
    {
      a2[4] = v3;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      a2[4] = (*(*v4 + 16))(*(a1 + 32), v3);
    }
  }

  else
  {
    a2[4] = 0;
  }

  return a2;
}

void *re::internal::Callable<std::function<void ()(re::FenceDeformer *)>,void ()(re::FenceDeformer *)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08820;
  std::__function::__value_func<void ()(re::FenceDeformer *)>::__value_func[abi:nn200100]((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void *std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08888;
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable((a1 + 1));
  return a1;
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::~__func(void *a1)
{
  *a1 = &unk_1F5D08888;
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5D08888;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  return re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::operator=<24ul>((a2 + 1), a1 + 8);
}

void std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::destroy_deallocate(void *a1)
{
  re::FunctionBase<24ul,void ()(re::FenceDeformer *)>::destroyCallable(a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1},std::allocator<void re::DeformationManager::registerDeformer<re::FenceDeformer>(std::unique_ptr<re::FenceDeformer,std::function<void ()(re::FenceDeformer*)>>)::{lambda(re::Deformer *)#1}>,void ()(re::Deformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14>,void ()(re::VertexCacheDeformer *)>::operator()(re *result, re::VertexCacheDeformer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    re::VertexCacheDeformer::~VertexCacheDeformer(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14,std::allocator<re::DeformerHelper::registerBuiltInDeformers(re::DeformationManager *)::$_14>,void ()(re::VertexCacheDeformer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::VertexCacheDeformer *)>::~__value_func[abi:nn200100](uint64_t a1)
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