uint64_t re::PbrConstantSource::lookup(re::PbrConstantSource *this, const re::WeakStringID *a2)
{
  v4 = re::PbrConstantSource::constantNameMap(this);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4, a2);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v4[1] + 16 * v5;
  if (((*(this + 40) >> *(v6 + 12)) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return v6 + 8;
  }
}

uint64_t re::PbrConstantSource::layoutHash(re::PbrConstantSource *this)
{
  v1 = 73244475 * (*(this + 40) ^ HIWORD(*(this + 40)));
  v2 = (73244475 * (v1 ^ HIWORD(v1))) ^ ((73244475 * (v1 ^ HIWORD(v1))) >> 16);
  return (re::PbrConstantSource::constantNameMap(this)[6] + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
}

uint64_t re::PbrTextureSource::lookup@<X0>(re::PbrTextureSource *this@<X0>, const re::WeakStringID *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = re::PbrTextureSource::textureNameMap(this);
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v6, a2);
  if (result != -1 && (v8 = v6[1] + 16 * result, v9 = *(v8 + 9), v9 <= 0xD) && (v10 = this + 16 * v9, *(v10 + 2)) && *(v10 + 1))
  {
    *a3 = 1;
    *(a3 + 1) = *(v8 + 8);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

unint64_t re::PbrTextureSource::layoutHash(re::PbrTextureSource *this)
{
  v2 = re::PbrTextureSource::textureNameMap(this);
  v3 = 0;
  v4 = (this + 16);
  v5 = 14;
  do
  {
    v6 = *v4;
    if (*v4)
    {
      LODWORD(v6) = *(v4 - 1) != 0;
    }

    v3 = 2 * (v6 | v3);
    v4 += 2;
    --v5;
  }

  while (v5);
  v7 = 73244475 * ((73244475 * (v3 ^ HIWORD(v3))) ^ ((73244475 * (v3 ^ HIWORD(v3))) >> 16));
  return (v2[6] + ((v7 ^ HIWORD(v7)) << 6) + ((v7 ^ HIWORD(v7)) >> 2) - 0x61C8864680B583E9) ^ v7 ^ HIWORD(v7);
}

void re::PbrTextureSource::textureAt(uint64_t *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 > 0xD)
  {
    *a3 = 0;
  }

  else
  {
    re::TextureHandle::metalTexture(a3, &this[2 * a2 + 1]);
  }
}

uint64_t re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::remove(uint64_t a1, void *a2)
{
  re::DynamicOverflowArray<unsigned long long,1ul>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::removeAt(a1, v6);
  }

  return v3;
}

uint64_t re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::removeAt(uint64_t result, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  if (v3 <= a2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "removeAt";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 1000;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    if (*(result + 16))
    {
      v4 = result + 24;
    }

    else
    {
      v4 = *(result + 32);
    }

    *(v4 + 8 * a2) = *(v4 + 8 * v3 - 8);
  }

  v5 = *(result + 16);
  *(result + 8) = v3 - 1;
  *(result + 16) = v5 + 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(uint64_t a1, void *a2)
{
  result = re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v5 = a1 + 24;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = *(a1 + 8);
  *(v5 + 8 * v6) = *a2;
  *(a1 + 8) = v6 + 1;
  *(a1 + 16) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(result, a2);
}

void re::ecs2::NetworkTransferReporterSystem::willAddSystemToECSService(re::ecs2::NetworkTransferReporterSystem *this)
{
  v2 = re::globalAllocators(this);
  v3 = (*(*v2[2] + 32))(v2[2], 64, 8);
  *v3 = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 52) = 0x7FFFFFFFLL;
  *(this + 28) = v3;
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::TraceService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  v6 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v5);
  if (v6 && *(v6 + 320))
  {
    *(this + 31) = RESyncTransferReportObserverCreate();
    v9 = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = ___ZN2re4ecs229NetworkTransferReporterSystem25willAddSystemToECSServiceEv_block_invoke;
    v12 = &__block_descriptor_tmp_7;
    v13 = this;
    RESyncTransferReportObserverOnTransferReportSend();
    RESyncServiceAddTransferReportObserver();
  }

  else
  {
    v7 = *re::ecsComponentsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *v8 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "[TransferReport] Failed to subscribe to transferReportSendEvent, NetworkSyncService not found.", v8, 2u);
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::TraceService>(uint64_t a1)
{
  {
    re::introspect<re::TraceService>(BOOL)::info = re::introspect_TraceService(0);
  }

  v2 = re::introspect<re::TraceService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void *___ZN2re4ecs229NetworkTransferReporterSystem25willAddSystemToECSServiceEv_block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v12 = *(a1 + 32);
  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v28 = v13 ^ (v13 >> 31);
  v29 = a4;
  v14 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*(v12 + 224) + 16, &v28);
  if (!v14)
  {
    v15 = *(v12 + 224);
    v16 = v28;
    IsLocal = RESyncNetSessionGetIsLocal();
    v23 = v16;
    v24[0] = IsLocal;
    memset(&v24[8], 0, 36);
    *&v24[44] = 0x7FFFFFFFLL;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
    re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v15 + 16, &v28, v18 ^ (v18 >> 31), &v30);
    if (HIDWORD(v31) == 0x7FFFFFFF)
    {
      v19 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v15 + 16, v31, v30);
      v20 = v28;
      *(v19 + 16) = v23;
      v14 = v19 + 16;
      *(v19 + 8) = v20;
      *(v19 + 24) = v24[0];
      *(v19 + 32) = *&v24[8];
      *&v24[8] = 0;
      *&v24[16] = 0;
      *(v19 + 48) = *&v24[24];
      *&v24[24] = 0;
      *(v19 + 56) = *&v24[32];
      *&v24[32] = xmmword_1E3058120;
      *(v19 + 72) = 1;
      ++*(v15 + 56);
    }

    else
    {
      v14 = *(v15 + 32) + 88 * HIDWORD(v31) + 16;
    }

    re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v24[8]);
  }

  v21 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v14 + 16, &v29);
  if (!v21)
  {
    v23 = v29;
    memset(v24, 0, 36);
    *&v24[36] = 0x7FFFFFFFLL;
    *&v24[48] = 0u;
    v25 = 0u;
    v26 = 0;
    v27 = 0x7FFFFFFFLL;
    v21 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(v14 + 16, &v29, &v23);
    re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(&v24[48]);
    re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v24);
  }

  return re::PeerTransferReport::addEntry(v21, a5, a6, a7, a8 >> 3);
}

uint64_t re::ecs2::NetworkTransferReporterSystem::willRemoveSystemFromECSService(re::ecs2::NetworkTransferReporterSystem *this)
{
  re::internal::destroyPersistent<re::TransferReport>("willRemoveSystemFromECSService", 50, *(this + 28));
  *(this + 28) = 0;
  *(this + 29) = 0;
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v2);
  if (v3 && *(v3 + 320))
  {
    RESyncServiceRemoveTransferReportObserver();
  }

  return RESyncRelease();
}

re *re::internal::destroyPersistent<re::TransferReport>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    v5.n128_f64[0] = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit((a3 + 16));
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

void re::ecs2::NetworkTransferReporterSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v17, 3105, a1, 0, 0, 0);
  if (*(a3 + 8) != 2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v8 = *(a1 + 240);
    if (Current - v8 >= 1.0)
    {
      v10 = *(a1 + 224);
      v9 = *(a1 + 232);
      *v10 = v8;
      v10[1] = Current;
      *(a1 + 240) = Current;
      if (v9)
      {
        v18 = v10;
        v11 = (*(*v9 + 24))(v9, &v18);
        v12 = v18;
        v18 = 0;
        if (v12)
        {
          v13 = re::globalAllocators(v11)[2];
          v14 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v12 + 2);
          v11 = (*(*v13 + 40))(v13, v12, v14);
        }

        v15 = re::globalAllocators(v11);
        v16 = (*(*v15[2] + 32))(v15[2], 64, 8);
        *v16 = 0u;
        *(v16 + 32) = 0u;
        *(v16 + 48) = 0;
        *(v16 + 16) = 0u;
        *(v16 + 52) = 0x7FFFFFFFLL;
        *(a1 + 224) = v16;
      }

      else
      {
        *v10 = 0.0;
        v10[1] = 0.0;
        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear((v10 + 2));
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v17, v5, v6);
}

unint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + (v6 << 7) + 16;
  }
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 7) + 16;
  }
}

{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 7) + 16;
  }
}

void *re::ecs2::allocInfo_NetworkTransferReporterSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_151, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_151))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F798, "NetworkTransferReporterSystem");
    __cxa_guard_release(&_MergedGlobals_151);
  }

  return &unk_1EE19F798;
}

void re::ecs2::initInfo_NetworkTransferReporterSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xB7FCF8038E4345D2;
  v8[1] = "NetworkTransferReporterSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_NetworkTransferReporterSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkTransferReporterSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkTransferReporterSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::NetworkTransferReporterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::NetworkTransferReporterSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkTransferReporterSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkTransferReporterSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::NetworkTransferReporterSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 2);
  *result = &unk_1F5CD4160;
  result[30] = 0;
  result[31] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::NetworkTransferReporterSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 2);
  *result = &unk_1F5CD4160;
  result[30] = 0;
  result[31] = 0;
  result[29] = 0;
  return result;
}

void re::ecs2::NetworkTransferReporterSystem::~NetworkTransferReporterSystem(re::ecs2::NetworkTransferReporterSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 24);
          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit((v8 + 72));
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 128;
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

double re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 32));
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 88 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 88 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 80) = a3;
  ++*(a1 + 28);
  return v7 + 88 * v5;
}

void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t *re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 6), *(v7 + v5 + 80));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        v10 = *(v9 + 24);
        v11 = *(v9 + 16);
        *(v8 + 32) = 0u;
        v8 += 32;
        *(v8 - 16) = v11;
        *(v8 - 8) = v10;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, (v9 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_1, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + (v6 << 7) + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 7)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 7) + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + (v8 << 7)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = *a4;
  v8 = v7 + 16;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 60) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 24), a4 + 1);
  *(v7 + 72) = 0u;
  v7 += 72;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v7, a4 + 7);
  ++*(a1 + 40);
  return v8;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 7));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 7));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 7);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 120) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 7);
}

void re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t *re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 120) % *(v4 + 6), *(v7 + v5 + 120));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 8) = v9[1];
        *(v8 + 16) = v9[2];
        *(v8 + 56) = 0;
        *(v8 + 40) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 60) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v8 + 24), v9 + 3);
        *(v8 + 72) = 0u;
        v8 += 72;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v8, v9 + 9);
        v2 = *(a2 + 32);
      }

      v5 += 128;
    }
  }

  return result;
}

void re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 7), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_27_1, 4 * v10);
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

void *re::ecs2::allocInfo_ShadowProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_152, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_152))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F840, "ShadowProxyComponent");
    __cxa_guard_release(&_MergedGlobals_152);
  }

  return &unk_1EE19F840;
}

void re::ecs2::initInfo_ShadowProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x232AB817E529F1ELL;
  v16[1] = "ShadowProxyComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE19F838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19F838))
  {
    v7 = re::introspectionAllocator();
    v13 = re::ecs2::introspect_Component(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "Component";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = 3;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE19F830 = v14;
    __cxa_guard_release(&qword_1EE19F838);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE19F830;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::ShadowProxyComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD41F0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 32) = result;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ShadowProxyComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD41F0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v1 + 32) = result;
  return result;
}

void re::ecs2::ShadowProxyComponent::~ShadowProxyComponent(re::ecs2::ShadowProxyComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowProxyComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

uint64_t re::internal::buildCollisionShapeAssetData(re::internal *this, re::CollisionShape *a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0x7FFFFFFFLL;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v8 = 0x7FFFFFFFLL;
  v3 = re::globalAllocators(this);
  v4 = re::convertToSerializable(this, v9, v6, v3[2]);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v6);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
  return v4;
}

re **re::internal::buildCollisionShape(re *inited, __n128 a2)
{
  a2.n128_u64[0] = *(inited + 12);
  a2.n128_u32[2] = *(inited + 5);
  v9 = a2;
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited);
  v4 = (*(*v2 + 32))(v2, v3[2], &v9);
  v6 = re::internal::buildCollisionShapeAssetData(v4, v5);
  v7 = re::globalAllocators(v6);
  result = (*(*v7[2] + 32))(v7[2], 16, 8);
  *result = v6;
  result[1] = v4;
  return result;
}

re **re::internal::buildCollisionShape(re *inited)
{
  v8 = *(inited + 20);
  {
    inited = re::initCollision(inited);
  }

  v2 = re::globalAllocators(inited);
  v3 = (*(*v1 + 32))(v1, v2[2], &v8);
  v5 = re::internal::buildCollisionShapeAssetData(v3, v4);
  v6 = re::globalAllocators(v5);
  result = (*(*v6[2] + 32))(v6[2], 16, 8);
  *result = v5;
  result[1] = v3;
  return result;
}

{
  v1 = *(inited + 1);
  v2 = *(inited + 2);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 120))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v1 = *(inited + 1);
  v2 = *(inited + 3);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 128))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v10 = xmmword_1E3047670;
  v1 = *(inited + 6);
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v2 = xmmword_1E3047690;
    }

    else
    {
      if (v1 != 2)
      {
        goto LABEL_13;
      }

      v2 = xmmword_1E3047680;
    }
  }

  else
  {
    switch(v1)
    {
      case 3:
        v2 = xmmword_1E30476B0;
        break;
      case 4:
        v2 = xmmword_1E30476A0;
        break;
      case 5:
        v2 = xmmword_1E306DD20;
        break;
      default:
        goto LABEL_13;
    }
  }

  v10 = v2;
LABEL_13:
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 104))(v3, v4[2], &v10, 0.0);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

{
  v1 = *(inited + 1);
  {
    inited = re::initCollision(inited);
  }

  v3 = re::globalAllocators(inited);
  v4 = (*(*v2 + 112))(v2, v3[2], v1);
  v6 = re::internal::buildCollisionShapeAssetData(v4, v5);
  v7 = re::globalAllocators(v6);
  result = (*(*v7[2] + 32))(v7[2], 16, 8);
  *result = v6;
  result[1] = v4;
  return result;
}

{
  v2 = *(inited + 2);
  v1 = *(inited + 3);
  {
    inited = re::initCollision(inited);
  }

  v4 = re::globalAllocators(inited);
  v5 = (*(*v3 + 40))(v3, v4[2], v1, v2);
  v7 = re::internal::buildCollisionShapeAssetData(v5, v6);
  v8 = re::globalAllocators(v7);
  result = (*(*v8[2] + 32))(v8[2], 16, 8);
  *result = v7;
  result[1] = v5;
  return result;
}

re **re::internal::buildCollisionShape(re *inited, int8x16_t a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  a2.i32[0] = *(inited + 1);
  v8 = vmulq_n_f64(xmmword_1E306DD30, *a2.i32);
  *v8.i8 = vcvt_f32_f64(v8);
  *&v9 = *a2.i32 * -0.433013;
  LODWORD(v10) = 0;
  v11 = vzip1q_s32(0, v8);
  v11.i32[2] = v9;
  a8.i32[1] = 1069709738;
  *a8.i32 = *a2.i32 * -0.5;
  v12 = *a2.i32 * 0.408248;
  *&v13 = *a2.i32 * 0.144338;
  *(&v10 + 1) = v12;
  *(&v10 + 1) = v13;
  *a2.i32 = *a2.i32 * 0.5;
  v21 = vextq_s8(vextq_s8(a8, a8, 4uLL), v8, 0xCuLL);
  v22 = vextq_s8(vextq_s8(a2, a2, 4uLL), v8, 0xCuLL);
  v23 = v10;
  v24 = v22;
  v25 = v11;
  v26 = v10;
  v27 = v11;
  v28 = v21;
  v29 = v10;
  v30 = v22;
  v31 = v21;
  v32 = v11;
  {
    inited = re::initCollision(inited);
  }

  v15 = re::globalAllocators(inited);
  v16 = (*(*v14 + 56))(v14, v15[2], &v21, 12);
  v18 = re::internal::buildCollisionShapeAssetData(v16, v17);
  v19 = re::globalAllocators(v18);
  result = (*(*v19[2] + 32))(v19[2], 16, 8);
  *result = v18;
  result[1] = v16;
  return result;
}

re **re::internal::buildCollisionShape(re *inited, double a2, double a3, double a4, double a5, __n128 a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = vmul_f32(*(inited + 4), 0x3F0000003F000000);
  a6.n128_u64[0] = vneg_f32(v6);
  v7 = a6;
  v7.n128_f32[2] = *(inited + 3) * 0.5;
  v8 = a6;
  v8.n128_u32[0] = v6.i32[0];
  v9 = v8;
  v9.n128_f32[2] = v7.n128_f32[2];
  v8.n128_f32[2] = -v7.n128_f32[2];
  a6.n128_f32[2] = -v7.n128_f32[2];
  LODWORD(v10) = 0;
  HIDWORD(v10) = v6.i32[1];
  v18[0] = v7;
  v18[1] = v9;
  v18[2] = v10;
  v18[3] = v9;
  v18[4] = v8;
  v18[5] = v10;
  v18[6] = v8;
  v18[7] = a6;
  v18[8] = v10;
  v18[9] = a6;
  v18[10] = v8;
  v18[11] = v7;
  {
    inited = re::initCollision(inited);
  }

  v12 = re::globalAllocators(inited);
  v13 = (*(*v11 + 56))(v11, v12[2], v18, 12);
  v15 = re::internal::buildCollisionShapeAssetData(v13, v14);
  v16 = re::globalAllocators(v15);
  result = (*(*v16[2] + 32))(v16[2], 16, 8);
  *result = v15;
  result[1] = v13;
  return result;
}

__n128 re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(&v11, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v12, v11);
    *(v8 + 8) = *a2;
    result = *a3;
    v9 = *(a3 + 16);
    v10 = *(a3 + 48);
    *(v8 + 48) = *(a3 + 32);
    *(v8 + 64) = v10;
    *(v8 + 16) = result;
    *(v8 + 32) = v9;
    ++*(a1 + 40);
  }

  return result;
}

void re::internal::shadows::generateAABBsForCluster(uint64_t a1@<X0>, float32x4_t *a2@<X1>, float32x4_t *a3@<X2>, re::MeshAsset *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1;
  v166 = 0;
  v164 = 0u;
  v165 = 0u;
  v167 = 0x7FFFFFFFLL;
  v6 = *a1;
  v170[0].i64[0] = v6;
  if (!v6)
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = 8 * v9;
      do
      {
        v171.i64[0] = *v10;
        v12 = *(v171.i64[0] + 256);
        v13 = xmmword_1E3047670;
        v14 = xmmword_1E3047680;
        v15 = xmmword_1E30476A0;
        v16 = xmmword_1E30474D0;
        if (v12)
        {
          v17 = *(v12 + 48);
          v18 = *(v12 + 52);
          v19 = v17 + v17;
          v20 = v18 + v18;
          v21 = *(v12 + 56);
          v22 = *(v12 + 60);
          v23 = v21 + v21;
          v24 = v17 * (v17 + v17);
          v25 = v18 * (v18 + v18);
          v26 = v21 * (v21 + v21);
          v27 = v19 * v18;
          v28 = v19 * v21;
          v29 = v20 * v21;
          v30 = v19 * v22;
          v31 = v20 * v22;
          v32 = v23 * v22;
          v33.i32[3] = 0;
          v33.f32[0] = 1.0 - (v25 + v26);
          v33.f32[1] = v27 + v32;
          v33.f32[2] = v28 - v31;
          v34.i32[3] = 0;
          v34.f32[0] = v27 - v32;
          v34.f32[1] = 1.0 - (v24 + v26);
          v34.f32[2] = v29 + v30;
          v35.i32[3] = 0;
          v35.f32[0] = v28 + v31;
          v35.f32[1] = v29 - v30;
          v35.f32[2] = 1.0 - (v24 + v25);
          v36 = *(v12 + 32);
          v13 = vmulq_n_f32(v33, v36.f32[0]);
          v15 = vmulq_laneq_f32(v35, v36, 2);
          v14 = vmulq_n_f32(v34, COERCE_FLOAT(HIDWORD(*(v12 + 32))));
          v16 = *(v12 + 64);
          HIDWORD(v16) = 1.0;
        }

        *buf = v13;
        v176 = v14;
        v177 = v15;
        v178 = v16;
        re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(&v164, &v171, buf);
        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    goto LABEL_59;
  }

  v148 = a1;
  *buf = xmmword_1E3047670;
  v176 = xmmword_1E3047680;
  v177 = xmmword_1E30476A0;
  v178 = xmmword_1E30474D0;
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(&v164, v170, buf);
  v7 = *(v6 + 32);
  if (v7)
  {
    if ((*(v7 + 304) & 0x80) != 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v6 + 32);
    }
  }

  else
  {
    v8 = 0;
  }

  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  if (!v164)
  {
    LODWORD(v39) = 0;
    goto LABEL_20;
  }

  v39 = v38 % DWORD2(v165);
  v40 = *(*(&v164 + 1) + 4 * v39);
  if (v40 == 0x7FFFFFFF)
  {
LABEL_20:
    v41 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v164, v39, v38);
    *(v41 + 8) = v8;
    *(v41 + 16) = xmmword_1E3047670;
    *(v41 + 32) = xmmword_1E3047680;
    *(v41 + 48) = xmmword_1E30476A0;
    *(v41 + 64) = xmmword_1E30474D0;
    ++HIDWORD(v167);
    goto LABEL_21;
  }

  while (*(v165 + 96 * v40 + 8) != v8)
  {
    LODWORD(v40) = *(v165 + 96 * v40) & 0x7FFFFFFF;
    if (v40 == 0x7FFFFFFF)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v162.i64[1] = 0;
  v160 = 0u;
  v161 = 0u;
  v162.i32[0] = 0;
  *buf = v6;
  re::Queue<re::internal::AssetLoadItem *>::enqueue(&v160, buf);
  if (v161)
  {
    while (1)
    {
      v43 = re::Queue<re::internal::AssetLoadItem *>::dequeue(&v160, v42);
      v44 = v43;
      v45 = *(v43 + 32);
      if (v45)
      {
        if ((*(v45 + 304) & 0x80) != 0)
        {
          v46 = 0;
        }

        else
        {
          v46 = *(v43 + 32);
        }
      }

      else
      {
        v46 = 0;
      }

      v47 = *(v43 + 256);
      v48 = v164;
      if (v164)
      {
        v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v46 ^ (v46 >> 30))) >> 27));
        v50 = (v49 ^ (v49 >> 31)) % DWORD2(v165);
        v51 = v165;
        v52 = *(*(&v164 + 1) + 4 * v50);
        if (v52 != 0x7FFFFFFF)
        {
          while (*(v165 + 96 * v52 + 8) != v46)
          {
            v52 = *(v165 + 96 * v52) & 0x7FFFFFFF;
            if (v52 == 0x7FFFFFFF)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_34;
        }
      }

      else
      {
        v51 = v165;
      }

LABEL_33:
      LODWORD(v52) = 0x7FFFFFFF;
LABEL_34:
      v54 = xmmword_1E3047680;
      v53 = xmmword_1E3047670;
      v56 = xmmword_1E30474D0;
      v55 = xmmword_1E30476A0;
      if (v6 != v43)
      {
        v54 = xmmword_1E3047680;
        v53 = xmmword_1E3047670;
        v56 = xmmword_1E30474D0;
        v55 = xmmword_1E30476A0;
        if (v47)
        {
          v57 = *(v47 + 48);
          v58 = *(v47 + 52);
          v59 = v57 + v57;
          v60 = v58 + v58;
          v61 = *(v47 + 56);
          v62 = *(v47 + 60);
          v63 = v61 + v61;
          v64 = v57 * (v57 + v57);
          v65 = v58 * (v58 + v58);
          v66 = v61 * (v61 + v61);
          v67 = v59 * v58;
          v68 = v59 * v61;
          v69 = v60 * v61;
          v70 = v59 * v62;
          v71 = v60 * v62;
          v72 = v63 * v62;
          v73.i32[3] = 0;
          v73.f32[0] = 1.0 - (v65 + v66);
          v73.f32[1] = v67 + v72;
          v73.f32[2] = v68 - v71;
          v74.i32[3] = 0;
          v74.f32[0] = v67 - v72;
          v74.f32[1] = 1.0 - (v64 + v66);
          v74.f32[2] = v69 + v70;
          v75.i32[3] = 0;
          v75.f32[0] = v68 + v71;
          v75.f32[1] = v69 - v70;
          v75.f32[2] = 1.0 - (v64 + v65);
          v76 = *(v47 + 32);
          v53 = vmulq_n_f32(v73, v76.f32[0]);
          v55 = vmulq_laneq_f32(v75, v76, 2);
          v54 = vmulq_n_f32(v74, COERCE_FLOAT(HIDWORD(*(v47 + 32))));
          v56 = *(v47 + 64);
          HIDWORD(v56) = 1.0;
        }
      }

      v77 = 0;
      v78 = (v51 + 96 * v52);
      v79 = v78[1];
      v80 = v78[2];
      v81 = v78[3];
      v82 = v78[4];
      v171 = v53;
      v172 = v54;
      v173 = v55;
      v174 = v56;
      do
      {
        *&buf[v77] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v79, COERCE_FLOAT(*(&v171 + v77))), v80, *&v171.f32[v77 / 4], 1), v81, *(&v171 + v77), 2), v82, *(&v171 + v77), 3);
        v77 += 16;
      }

      while (v77 != 64);
      v83 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27));
      v84 = v83 ^ (v83 >> 31);
      if (v48)
      {
        v42 = v84 % DWORD2(v165);
        for (i = *(*(&v164 + 1) + 4 * v42); i != 0x7FFFFFFF; LODWORD(i) = *(v51 + 96 * i) & 0x7FFFFFFF)
        {
          if (*(v51 + 96 * i + 8) == v43)
          {
            goto LABEL_47;
          }
        }

        v152 = v178;
        v153 = v177;
        v154 = v176;
        v155 = *buf;
      }

      else
      {
        v152 = v178;
        v153 = v177;
        v154 = v176;
        v155 = *buf;
        LODWORD(v42) = 0;
      }

      v86 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v164, v42, v84);
      *(v86 + 8) = v44;
      *(v86 + 16) = v155;
      *(v86 + 32) = v154;
      *(v86 + 48) = v153;
      *(v86 + 64) = v152;
      ++HIDWORD(v167);
LABEL_47:
      v87 = *(v44 + 344);
      v88 = v161;
      if (v87)
      {
        v89 = *(v44 + 360);
        v90 = v160.u64[1];
        v91 = 8 * v87;
        do
        {
          v92 = *v89;
          v42 = v88 + 1;
          if (v88 + 1 >= v90)
          {
            re::Queue<re::internal::AssetLoadItem *>::growCapacity(&v160, v42);
            v90 = v160.u64[1];
            v88 = v161;
            v42 = v161 + 1;
          }

          *(v162.i64[1] + 8 * ((*(&v161 + 1) + v88) % v90)) = v92;
          *&v161 = v42;
          ++v162.i32[0];
          ++v89;
          v88 = v42;
          v91 -= 8;
        }

        while (v91);
        if (!v42)
        {
          break;
        }
      }

      else if (!v161)
      {
        break;
      }
    }
  }

  a1 = v160.i64[0];
  if (v160.i64[0] && v162.i64[1])
  {
    a1 = (*(*v160.i64[0] + 40))();
  }

  v5 = v148;
LABEL_59:
  v93 = *(v5 + 24);
  if (!v93)
  {
    goto LABEL_90;
  }

  v94 = *(v5 + 40);
  v95 = &v94[v93];
  v96.i64[0] = 0x7F0000007FLL;
  v96.i64[1] = 0x7F0000007FLL;
  v97.i64[0] = 0x7F0000007FLL;
  v97.i64[1] = 0x7F0000007FLL;
  v159 = v97;
  v98 = 1;
  v157 = v96;
  v158 = vnegq_f32(v96);
  v156 = v158;
  do
  {
    if (v164)
    {
      v99 = *v94;
      v100 = 0xBF58476D1CE4E5B9 * (*v94 ^ (*v94 >> 30));
      v101 = (0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) ^ ((0x94D049BB133111EBLL * (v100 ^ (v100 >> 27))) >> 31);
      v102 = *(*(&v164 + 1) + 4 * (v101 % DWORD2(v165)));
      if (v102 != 0x7FFFFFFF)
      {
        while (*(v165 + 96 * v102 + 8) != v99)
        {
          v102 = *(v165 + 96 * v102) & 0x7FFFFFFF;
          if (v102 == 0x7FFFFFFF)
          {
            goto LABEL_88;
          }
        }

        v103 = v99[24];
        if (v103)
        {
          v104 = *(v103 + 40);
          if (v104 && (v105 = atomic_load((v104 + 896)), v105 == 2))
          {
            v106 = *(*(&v164 + 1) + 4 * (v101 % DWORD2(v165)));
            if (v106 == 0x7FFFFFFF)
            {
LABEL_75:
              LODWORD(v106) = 0x7FFFFFFF;
            }

            else
            {
              while (*(v165 + 96 * v106 + 8) != v99)
              {
                v106 = *(v165 + 96 * v106) & 0x7FFFFFFF;
                if (v106 == 0x7FFFFFFF)
                {
                  goto LABEL_75;
                }
              }
            }

            v108 = v165 + 96 * v106;
            v160 = *(v108 + 16);
            v161 = *(v108 + 32);
            v162 = *(v108 + 48);
            v163 = *(v108 + 64);
            re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper(v170, v99);
            if (a4)
            {
              v109 = re::ecs2::EntityComponentCollection::get((v99 + 6), re::ecs2::ComponentImpl<re::ecs2::ShadowProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v109)
              {
                v169 = v109[4];
                v110 = 0;
                v111 = *a3;
                v112 = a3[1];
                v113 = a3[2];
                v114 = a3[3];
                v171 = v160;
                v172 = v161;
                v173 = v162;
                v174 = v163;
                do
                {
                  *&buf[v110] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v111, COERCE_FLOAT(*(&v171 + v110))), v112, *&v171.f32[v110 / 4], 1), v113, *(&v171 + v110), 2), v114, *(&v171 + v110), 3);
                  v110 += 16;
                }

                while (v110 != 64);
                re::internal::shadows::calcCylShadowProxyLocalTransform(&v169, buf, &v171);
                re::MeshAsset::boundingBoxForModel(v168, a4, 0);
                re::AABB::transform(v168, &v171, v170);
              }
            }

            a1 = re::AABB::transform(v170, &v160, buf);
            v115 = v156;
            v118 = v157;
            v115.i32[3] = 0;
            v116 = *buf;
            v120 = v176;
            v121 = vcgtq_f32(*buf, v176);
            v117 = vsubq_f32(v176, *buf);
            v116.i32[3] = 0;
            v118.i32[3] = 0;
            v119 = vminnmq_f32(v115, v116);
            v120.i32[3] = 0;
            v121.i32[3] = v121.i32[2];
            v122 = vmaxvq_u32(v121);
            v116.i64[0] = 0x3F0000003F000000;
            v116.i64[1] = 0x3F0000003F000000;
            v123 = vmulq_f32(vaddq_f32(*buf, v176), v116);
            v124 = v122 < 0;
            if (v122 >= 0)
            {
              v125 = v123.i32[2];
            }

            else
            {
              v125 = 0;
            }

            if (v124)
            {
              v126 = 0;
            }

            else
            {
              v126 = v123.i64[0];
            }

            v127.i64[0] = v126;
            v127.i32[2] = v125;
            v156 = v119;
            v157 = vmaxnmq_f32(v118, v120);
            v117.i32[3] = 0;
            v128 = vmaxnmq_f32(v117, 0);
            v129 = vmulq_f32(v128, v128);
            v129.f32[0] = v129.f32[2] + vaddv_f32(*v129.f32);
            *v121.i32 = sqrtf(v129.f32[0]) * 0.5;
            v127.i32[3] = v121.i32[0];
            v130 = vdupq_lane_s32(*v121.i8, 0);
            v131 = vsubq_f32(v127, v130);
            v132 = vaddq_f32(v127, v130);
            v134 = v158;
            v133 = v159;
            v134.i32[3] = 0;
            v131.i32[3] = 0;
            v133.i32[3] = 0;
            v132.i32[3] = 0;
            v158 = vminnmq_f32(v134, v131);
            v159 = vmaxnmq_f32(v133, v132);
            v98 &= fabsf(v129.f32[0]) < 1.0e-10;
          }

          else
          {
            v107 = *re::ecsComponentsLogObjects(a1);
            a1 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              _os_log_error_impl(&dword_1E1C61000, v107, OS_LOG_TYPE_ERROR, "MeshShadowSystemHelpers.mm::generateAABBsForCluster(): encountered a null/unloaded mesh", buf, 2u);
            }
          }
        }
      }
    }

LABEL_88:
    ++v94;
  }

  while (v94 != v95);
  if ((v98 & 1) == 0)
  {
    v137 = vabsq_f32(*a2);
    v138 = v137.f32[1];
    v139 = fmaxf(fmaxf(v137.f32[0], v137.f32[2]), v137.f32[1]);
    v141 = v158;
    v140 = v159;
    v142 = vsubq_f32(v156, v158);
    v143 = vaddq_f32(v158, v142);
    v144 = vaddq_f32(v159, v142);
    v145 = vsubq_f32(v144, v157);
    if (v139 == v138)
    {
      v141.i32[1] = v143.i32[1];
      v140.i32[1] = v144.i32[1];
      LODWORD(v146) = 0;
      *(&v146 + 1) = 0;
      DWORD1(v146) = v145.i32[1];
    }

    else
    {
      v141.i32[2] = v143.i32[2];
      v140.i32[2] = v144.i32[2];
      *&v146 = 0;
      *(&v146 + 1) = v145.u32[2];
    }

    *a5 = v156;
    *(a5 + 16) = v157;
    *(a5 + 32) = v141;
    *(a5 + 48) = v140;
    *(a5 + 64) = v146;
  }

  else
  {
LABEL_90:
    v135.i64[0] = 0x7F0000007FLL;
    v135.i64[1] = 0x7F0000007FLL;
    v136 = vnegq_f32(v135);
    *a5 = v136;
    *(a5 + 16) = v135;
    *(a5 + 32) = v136;
    *(a5 + 48) = v135;
    *(a5 + 64) = 0;
    *(a5 + 72) = 0;
  }

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v164);
}

uint64_t re::internal::shadows::isEntityAMeshReceiver(re::internal::shadows *this, re::ecs2::Entity *a2, const re::AssetHandle *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    if (*(v5 + 41) == 1 && (*(v5 + 42) & 3) != 0)
    {
      return 1;
    }
  }

  else
  {
    v8 = *(this + 24);
    v9 = *(v8 + 72);
    if (v9)
    {
      v10 = (*(v8 + 88) + 8);
      v11 = 24 * v9;
      while (*v10 != *(a2 + 1))
      {
        v10 += 3;
        v11 -= 24;
        if (!v11)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 0;
}

uint64_t re::internal::shadows::removeParamsFromMaterialParameterBlock(uint64_t this, re::MaterialManager *a2, re::MaterialManager *a3)
{
  if ((re::internal::shadows::g_enablePatchShadows & 1) == 0)
  {
    v3 = a3;
    v5 = this;
    this = re::MaterialManager::getSystemMaterialParameterBlock(a2, this);
    if (this)
    {
      v6 = this;
      v12 = 0x1658E0C3A20A4B09;
      re::MaterialParameterBlock::removeConstant(this, &v12, 16);
      v12 = 0x7DDA5D55C0FC4FA9;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 4);
      v12 = 0x5FE82A114F627B09;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 4);
      v11 = 0x568E6F2D267C8FA7;
      re::MaterialParameterBlock::removeBinding(v6, &v11);
      v10 = 0xAB2491DDDDEEE62;
      v11 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v10);
      v9 = 0x5FCB768A20041405;
      v10 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v9);
      v8 = 0x5FCB768A200DAF65;
      v9 = 0;
      re::MaterialParameterBlock::removeBinding(v6, &v8);
      v8 = 0;
      v12 = 0x34C6B4FED1749A95;
      re::MaterialParameterBlock::removeConstant(v6, &v12, 1);
      v7 = 0x49245BDA69D27475;
      this = re::MaterialParameterBlock::removeBinding(v6, &v7);
      v7 = 0;
      if (v3)
      {
        this = re::MaterialParameterBlock::isEmpty(v6);
        if (this)
        {
          return re::MaterialManager::removeSystemMaterialParameterBlock(a2, v5);
        }
      }
    }
  }

  return this;
}

double re::internal::shadows::setParamsOnMaterialParameterBlock(uint64_t a1, uint64_t a2, re::RenderManager **this)
{
  v4 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(this, a1);
  v5 = *(a2 + 88);
  v23[0] = *(a2 + 80);
  v23[1] = v5;
  v22 = 0x1658E0C3A20A4B09;
  re::MaterialParameterBlock::setConstant(v4, &v22, 0x10uLL, v23, 33, v21);
  v21[0] = 0;
  v6 = cos(*(a2 + 52) * 3.14159265 / 180.0);
  *&v22 = v6;
  v23[0] = 0x7DDA5D55C0FC4FA9;
  re::MaterialParameterBlock::setConstant(v4, v23, 4uLL, &v22, 1, v20);
  v20[0] = 0;
  LODWORD(v22) = 0;
  v23[0] = 0x5FE82A114F627B09;
  re::MaterialParameterBlock::setConstant(v4, v23, 4uLL, &v22, 7, v19);
  v19[0] = 0;
  v17 = 0x568E6F2D267C8FA7;
  re::MaterialParameterBlock::setBinding(v4, &v17, "rendergraph", "ProjectiveMeshShadowMapTexture", 2, v18);
  v18[0] = 0;
  v15 = 0xAB2491DDDDEEE62;
  re::MaterialParameterBlock::setBinding(v4, &v15, "rendergraph", "TiledShadowDepthPrepassDepthAsColorTexture", 2, v16);
  v16[0] = 0;
  v13 = 0x5FCB768A20041405;
  re::MaterialParameterBlock::setBinding(v4, &v13, "rendergraph", "compositedSceneUnderstandingShadowsColor", 2, v14);
  v14[0] = 0;
  v11 = 0x5FCB768A200DAF65;
  re::MaterialParameterBlock::setBinding(v4, &v11, "rendergraph", "compositedSceneUnderstandingShadowsDepth", 2, v12);
  v12[0] = 0;
  v9 = 0x49245BDA69D27475;
  re::MaterialParameterBlock::setBinding(v4, &v9, "rendergraph", "MeshShadowMipDescriptionBuffer", 3, v10);
  v10[0] = 0;
  LOBYTE(v22) = 1;
  v23[0] = 0x34C6B4FED1749A95;
  return re::MaterialParameterBlock::setConstant(v4, v23, 1uLL, &v22, 2, v8);
}

float32x2_t *re::internal::shadows::buildCylindricalProxyMesh@<X0>(uint64_t a1@<X0>, re::GeomMesh *a2@<X8>)
{
  v3 = *(a1 + 4);
  v20 = *a1 * 0.5;
  v26 = 1;
  v25 = 16843009;
  v21[0] = *(a1 + 12);
  v23 = v20;
  v24 = v20;
  v22 = v3;
  v21[1] = *(a1 + 8);
  v4 = re::GeomMesh::GeomMesh(a2, 0);
  re::buildCylinder(v4, v21);
  v5 = 0;
  v6.i32[0] = 0;
  v6.f32[1] = v20;
  v6.i32[2] = 0;
  v6.i32[3] = 1.0;
  v7 = vrsqrte_f32(1065353216);
  *&v8 = vmul_f32(v7, vrsqrts_f32(1065353216, vmul_f32(v7, v7)));
  v9 = vmulq_n_f32(xmmword_1E30476A0, vmul_f32(*&v8, vrsqrts_f32(1065353216, vmul_f32(*&v8, *&v8))).f32[0]);
  v10 = vmulq_f32(v9, v9).f32[0];
  v11 = vmuls_lane_f32(v9.f32[1], *v9.f32, 1);
  v12 = vmuls_lane_f32(v9.f32[2], v9, 2);
  v13 = vmuls_lane_f32(v9.f32[0], *v9.f32, 1);
  v14 = vmuls_lane_f32(v9.f32[0], v9, 2);
  v15 = vmuls_lane_f32(v9.f32[1], v9, 2);
  v16 = v9.f32[1] + v14;
  *&v8 = v14 - v9.f32[1];
  *&v17 = v10 + ((1.0 - v10) * -0.000000043711);
  *(&v17 + 1) = v9.f32[2] + v13;
  HIDWORD(v18) = 0;
  *(&v17 + 1) = v8;
  HIDWORD(v8) = 0;
  *&v8 = v13 - v9.f32[2];
  *(&v8 + 1) = v11 + ((1.0 - v11) * -0.000000043711);
  *(&v8 + 2) = v9.f32[0] + v15;
  *&v18 = v16;
  *(&v18 + 1) = v15 - v9.f32[0];
  *(&v18 + 2) = v12 + ((1.0 - v12) * -0.000000043711);
  v27[0] = v17;
  v27[1] = v8;
  v27[2] = v18;
  v27[3] = xmmword_1E30474D0;
  do
  {
    *(&v28 + v5 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(v27[v5])), xmmword_1E3047680, *&v27[v5], 1), xmmword_1E30476A0, v27[v5], 2), v6, v27[v5], 3);
    ++v5;
  }

  while (v5 != 4);
  return re::transform(a2, &v28);
}

void re::internal::shadows::regenerateShadowProxy(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, __n128 a6, double a7, __n128 a8)
{
  v129 = *MEMORY[0x1E69E9840];
  if (*(a1 + 45) == 1)
  {
    re::internal::shadows::buildCylindricalProxyMesh(a1, &v116);
    goto LABEL_40;
  }

  v85 = *(a1 + 36) + -0.5;
  v10 = *(a1 + 28);
  a6.n128_f32[0] = *(a1 + 24) * 0.5;
  a4.n128_f32[0] = v10 * 0.5;
  v84 = a4;
  a8.n128_f32[0] = *(a1 + 16) * 0.5;
  *&v81 = *(a1 + 32) + -0.5;
  v83 = *(a1 + 20) * 0.5;
  v115 = 0;
  v113 = 0;
  v112[0] = 0;
  v112[1] = 0;
  v114 = 0;
  a3.n128_f32[0] = -a6.n128_f32[0];
  a3.n128_u32[1] = v81;
  v11 = a3;
  v11.n128_u32[2] = a8.n128_u32[0];
  v79 = a8;
  v80 = a6.n128_f32[0];
  a6.n128_u32[1] = v81;
  v116 = v11;
  v12 = a6;
  v12.n128_u32[2] = a8.n128_u32[0];
  *v86 = v12;
  a6.n128_f32[2] = -a8.n128_f32[0];
  v126[0] = a6;
  a3.n128_f32[2] = -a8.n128_f32[0];
  *v121 = a3;
  re::DynamicArray<re::Vector3<float>>::add(v112, &v116);
  re::DynamicArray<re::Vector3<float>>::add(v112, v86);
  re::DynamicArray<re::Vector3<float>>::add(v112, v126);
  v13 = re::DynamicArray<re::Vector3<float>>::add(v112, v121);
  v13.n128_f32[0] = -(v10 * 0.5);
  v13.n128_f32[1] = v85;
  v14 = v13;
  v14.n128_f32[2] = v83;
  v13.n128_f32[2] = -v83;
  v116 = v14;
  *v86 = v13;
  v15 = v84;
  v15.n128_f32[1] = v85;
  v16 = v15;
  v16.n128_f32[2] = -v83;
  v126[0] = v16;
  v15.n128_f32[2] = v83;
  *v121 = v15;
  re::DynamicArray<re::Vector3<float>>::add(v112, &v116);
  re::DynamicArray<re::Vector3<float>>::add(v112, v86);
  re::DynamicArray<re::Vector3<float>>::add(v112, v126);
  re::DynamicArray<re::Vector3<float>>::add(v112, v121);
  v17 = *(a1 + 12);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = *&v81 - v85;
    v20 = v80 - v84.n128_f32[0];
    v21 = v79.n128_f32[0] - v83;
    do
    {
      v22 = v17;
      v23 = v18 / v17;
      v24 = *(a1 + 40);
      v25.n128_f32[0] = v85 + (powf(v23, v24) * v19);
      v79 = v25;
      v26 = v84;
      v26.n128_f32[0] = v84.n128_f32[0] + (v23 * v20);
      v82 = v26;
      v27 = ++v18 / v22;
      v28 = powf(v27, v24);
      v29 = v82;
      v30.n128_f32[0] = v84.n128_f32[0] + (v27 * v20);
      v31.n128_f32[0] = -(v84.n128_f32[0] + (v23 * v20));
      v31.n128_u32[1] = v79.n128_u32[0];
      v32 = v31;
      v32.n128_f32[2] = v83 + (v23 * v21);
      v116 = v32;
      v29.n128_u32[1] = v79.n128_u32[0];
      v33 = v29;
      v33.n128_f32[2] = v83 + (v23 * v21);
      *v86 = v33;
      v31.n128_f32[2] = -v33.n128_f32[2];
      v126[0] = v31;
      v29.n128_f32[2] = -v33.n128_f32[2];
      v31.n128_f32[0] = -v30.n128_f32[0];
      v31.n128_f32[1] = v85 + (v28 * v19);
      *v121 = v29;
      v34 = v31;
      v34.n128_f32[2] = v83 + (v27 * v21);
      v30.n128_f32[1] = v31.n128_f32[1];
      v35 = v30;
      v35.n128_f32[2] = v34.n128_f32[2];
      v110 = v35;
      v111 = v34;
      v31.n128_f32[2] = -v34.n128_f32[2];
      v30.n128_f32[2] = -v34.n128_f32[2];
      v108 = v30;
      v109 = v31;
      re::DynamicArray<re::Vector3<float>>::add(v112, &v116);
      re::DynamicArray<re::Vector3<float>>::add(v112, v86);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v110);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v111);
      re::DynamicArray<re::Vector3<float>>::add(v112, v86);
      re::DynamicArray<re::Vector3<float>>::add(v112, v121);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v108);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v110);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v116);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v111);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v109);
      re::DynamicArray<re::Vector3<float>>::add(v112, v126);
      re::DynamicArray<re::Vector3<float>>::add(v112, v121);
      re::DynamicArray<re::Vector3<float>>::add(v112, v126);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v109);
      re::DynamicArray<re::Vector3<float>>::add(v112, &v108);
      v17 = *(a1 + 12);
    }

    while (v18 < v17);
  }

  bzero(v86, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v87, 1uLL);
  LODWORD(v90) = v90 + 1;
  re::internal::GeomAttributeManager::GeomAttributeManager(v92);
  re::internal::GeomAttributeManager::addAttribute(v92, "vertexPosition", 1, 7);
  v37 = v113;
  LODWORD(v86[1]) = v113;
  v99 = v113;
  if (v101)
  {
    v38 = v102;
    v39 = 8 * v101;
    do
    {
      v40 = *v38++;
      (*(*v40 + 80))(v40, v99);
      v39 -= 8;
    }

    while (v39);
    v37 = v113;
  }

  if (v89 > (v37 >> 2))
  {
    v41 = v107;
    if (v107)
    {
      v42 = 0;
      do
      {
        v43 = re::internal::GeomAttributeContainer::attributeByIndex(v106, v42);
        re::internal::accessFaceVaryingAttributeSubmesh(v43, v44);
        ++v42;
      }

      while (v41 != v42);
    }
  }

  re::DynamicArray<re::GeomCell4>::resize(&v87, (v37 >> 2));
  v103 = v37 >> 2;
  if (v104)
  {
    v45 = v105;
    v46 = 8 * v104;
    do
    {
      v47 = *v45++;
      (*(*v47 + 80))(v47, v103);
      v46 -= 8;
    }

    while (v46);
  }

  if (v113)
  {
    LODWORD(v48) = 0;
    v49 = v89;
    while (1)
    {
      v50 = v48 >> 2;
      if (v49 <= v50)
      {
        break;
      }

      v51 = (v91 + 16 * v50);
      v52 = *v51;
      v53 = v51[3];
      if (v52 != -1 && v53 != -1)
      {
        v55 = v107;
        if (v107)
        {
          v56 = 0;
          do
          {
            v57 = re::internal::GeomAttributeContainer::attributeByIndex(v106, v56);
            re::internal::accessFaceVaryingAttributeSubmesh(v57, v58);
            ++v56;
          }

          while (v55 != v56);
          v49 = v89;
        }
      }

      if (v49 <= v50)
      {
        goto LABEL_57;
      }

      v59 = v91 + 16 * v50;
      *v59 = v48;
      *(v59 + 4) = vorr_s8(vdup_n_s32(v48), 0x200000001);
      *(v59 + 12) = v48 | 3;
      v48 = (v48 + 4);
      if (v113 <= v48)
      {
        goto LABEL_30;
      }
    }

    *v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    v70 = MEMORY[0x1E69E9C10];
    v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126[0].n128_u32[0] = 136315906;
    *(v126[0].n128_u64 + 4) = "operator[]";
    v126[0].n128_u16[6] = 1024;
    if (v71)
    {
      v72 = 3;
    }

    else
    {
      v72 = 2;
    }

    *(&v126[0].n128_u32[3] + 2) = 797;
    v126[1].n128_u16[1] = 2048;
    *(v126[1].n128_u64 + 4) = v48 >> 2;
    v126[1].n128_u16[6] = 2048;
    *(&v126[1].n128_u64[1] + 6) = v49;
    _os_log_send_and_compose_impl(v72, v121, &v116, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v126, 38, v79.n128_u64[0], v79.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    *v121 = 0;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v116 = 0u;
    v73 = MEMORY[0x1E69E9C10];
    v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126[0].n128_u32[0] = 136315906;
    *(v126[0].n128_u64 + 4) = "operator[]";
    v126[0].n128_u16[6] = 1024;
    if (v74)
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    *(&v126[0].n128_u32[3] + 2) = 789;
    v126[1].n128_u16[1] = 2048;
    *(v126[1].n128_u64 + 4) = v48 >> 2;
    v126[1].n128_u16[6] = 2048;
    *(&v126[1].n128_u64[1] + 6) = v49;
    _os_log_send_and_compose_impl(v75, v121, &v116, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v126, 38, v79.n128_u64[0], v79.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_61:
    v111.n128_u64[0] = 0;
    v127 = 0u;
    v128 = 0u;
    memset(v126, 0, sizeof(v126));
    v76 = MEMORY[0x1E69E9C10];
    v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v121 = 136315906;
    *&v121[4] = "operator[]";
    *&v121[12] = 1024;
    if (v77)
    {
      v78 = 3;
    }

    else
    {
      v78 = 2;
    }

    *&v121[14] = 621;
    v122 = 2048;
    v123 = v49;
    v124 = 2048;
    v125 = v49;
    _os_log_send_and_compose_impl(v78, &v111, v126, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v121, 38, v79.n128_u64[0], v79.n128_u64[1]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_30:
  re::GeomMesh::GeomMesh(&v116, 0);
  re::GeomMesh::operator=(&v116, &v86[1]);
  re::GeomMesh::setName(&v116, v86[0]);
  re::GeomMesh::freeName(v86);
  v60 = re::GeomMesh::modifyVertexPositions(&v116);
  if (v113)
  {
    v62 = 0;
    v49 = v61;
    while (v62 != v61)
    {
      *(v60 + 16 * v62) = *(v115 + 16 * v62);
      if (v113 <= ++v62)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_61;
  }

LABEL_34:
  re::GeomMesh::freeName(v86);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v92);
  if (v87 && v91)
  {
    (*(*v87 + 40))();
  }

  if (v112[0] && v115)
  {
    (*(*v112[0] + 40))();
  }

LABEL_40:
  v126[0].n128_u32[0] = 16842752;
  v126[0].n128_u8[4] = 1;
  *(&v126[0].n128_u32[1] + 1) = 0;
  *(&v126[0].n128_u16[4] + 1) = 0;
  *(&v126[0].n128_u32[2] + 3) = 65793;
  v127 = 0u;
  memset(&v126[1], 0, 32);
  DWORD1(v127) = 0x7FFFFFFF;
  MeshAssetDataWithGeomMeshArray = re::makeMeshAssetDataWithGeomMeshArray(&v116, 1uLL, 0, 0, v86);
  v64 = LOBYTE(v86[0]);
  v65 = re::globalAllocators(MeshAssetDataWithGeomMeshArray);
  v66 = (*(*v65[2] + 32))(v65[2], 1272, 8);
  v67 = v66;
  if (v64 == 1)
  {
    v68 = re::MeshAsset::MeshAsset(v66, &v86[1]);
  }

  else
  {
    re::MeshAsset::MeshAsset(v66);
  }

  v69 = re::MeshAsset::assetType(v68);
  (*(*a2 + 424))(a2, v67, v69, 0, 2, 0);
  if (LOBYTE(v86[0]) == 1)
  {
    re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>::deinit(&v100);
    if (v94)
    {
      if (v98)
      {
        (*(*v94 + 40))();
      }

      v98 = 0;
      v95 = 0;
      v96 = 0;
      v94 = 0;
      ++v97;
    }

    re::DynamicArray<re::MeshAssetSkeleton>::deinit(&v93);
    re::DynamicArray<re::MeshAssetInstance>::deinit(&v91);
    re::DynamicArray<re::MeshAssetModel>::deinit(&v86[1]);
  }

  else if (v88 && (v89 & 1) != 0)
  {
    (*(*v88 + 40))();
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v126[1]);
  re::GeomMesh::~GeomMesh(&v116);
}

double re::internal::shadows::calcCylShadowProxyLocalTransform@<D0>(float32x2_t *a1@<X0>, uint64_t a2@<X1>, float32x4_t *a3@<X8>)
{
  *v6.i32 = re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(a1, a2);
  v7 = 0;
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  v10 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v11 = (v10.f32[2] + vaddv_f32(*v10.f32)) <= 0.0;
  v12 = -1.0;
  if (!v11)
  {
    v12 = 1.0;
  }

  v13 = vmulq_f32(v8, v8);
  v14 = vmulq_f32(v9, v9);
  v15 = vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8));
  v16 = vextq_s8(v13, v13, 8uLL);
  *v16.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v16.i8, *&vextq_s8(v14, v14, 8uLL)), v15));
  v17 = vmulq_n_f32(vextq_s8(v6, v16, 0xCuLL), v12);
  v19.i32[0] = 0;
  v19.f32[1] = a1->f32[1] * -0.5;
  *&v18 = 0;
  v19.i32[2] = 0;
  v19.i32[3] = 1.0;
  LODWORD(v20) = 0;
  HIDWORD(v20) = v6.i32[0];
  *(&v18 + 1) = v6.u32[0];
  v34 = a1->u32[0];
  v35 = v20;
  v36 = v18;
  v37 = xmmword_1E30474D0;
  do
  {
    *(&v38 + v7) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v34 + v7))), xmmword_1E3047680, *(&v34 + v7), 1), xmmword_1E30476A0, *(&v34 + v7), 2), v19, *(&v34 + v7), 3);
    v7 += 16;
  }

  while (v7 != 64);
  v21 = 0;
  v22 = v17.f32[1];
  v23 = v17.f32[2];
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  v28 = v23 / v22;
  LODWORD(v29) = 0;
  *(&v29 + 1) = v28;
  v34 = xmmword_1E3047670;
  v35 = v29;
  v36 = xmmword_1E30476A0;
  v37 = xmmword_1E30474D0;
  do
  {
    *(&v38 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v34 + v21))), v25, *(&v34 + v21), 1), v26, *(&v34 + v21), 2), v27, *(&v34 + v21), 3);
    v21 += 16;
  }

  while (v21 != 64);
  result = *v38.i64;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  *a3 = v38;
  a3[1] = v31;
  a3[2] = v32;
  a3[3] = v33;
  return result;
}

float re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(float32x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL))), vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vextq_s8(vextq_s8(v2, v2, 0xCuLL), v2, 8uLL)));
  v5 = vaddv_f32(*v4.f32);
  v6 = -1.0;
  if ((v4.f32[2] + v5) > 0.0)
  {
    v6 = 1.0;
  }

  v7 = vmulq_f32(*a2, *a2);
  v8 = vmulq_f32(v2, v2);
  v9 = vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8));
  v10 = vextq_s8(v7, v7, 8uLL);
  *v10.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v10.f32, *&vextq_s8(v8, v8, 8uLL)), v9));
  v11 = vmulq_f32(v3, v3);
  v10.i32[2] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  v13 = vmulq_n_f32(v10, v6);
  v12 = v13.f32[2];
  *v13.f32 = vmul_f32(*a1, *v13.f32);
  if (v13.f32[0] < v13.f32[1])
  {
    v13.f32[0] = v13.f32[1];
  }

  v13.f32[0] = (v13.f32[0] * 0.0039062) * 27.0;
  if (fabsf(v13.f32[2]) <= 0.00000011921)
  {
    v12 = 1.0;
  }

  return v13.f32[0] / v12;
}

__n128 re::ecs2::DynamicBoundingBoxComponent::lastKnownBoundsHelper@<Q0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::DynamicBoundingBoxComponent *this@<X0>)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (!v6 || (v7 = *(v6 + 352), *a1 = *(v6 + 336), a1[1] = v7, result = vcgtq_f32(*a1, a1[1]), result.n128_u32[3] = result.n128_u32[2], result.n128_u32[0] = vmaxvq_u32(result), (result.n128_u32[0] & 0x80000000) != 0))
  {
    v9 = *(this + 24);
    if (v9 && (v10 = re::AssetHandle::loadedAsset<re::MeshAsset>((v9 + 32))) != 0 && (v11 = v10, v10[79]))
    {
      v12 = v10[73];
      v13 = v10[71];
      v14 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v14)
      {
        v12 = *(v14 + 208);
        v13 = *(v14 + 192);
      }

      re::ecs2::MeshComponent::updateStaticBoundingBoxData(v9, *(v9 + 16), 0);
      v15 = *(v9 + 304);
      if (v15)
      {
        v16 = v15 + 104;
      }

      else
      {
        v16 = 0;
      }

      v17 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v17)
      {
        v16 = *(v17 + 160) + 48;
      }

      v19 = *(v16 + 24);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21 = vnegq_f32(v20);
      *a1 = v21;
      a1[1] = v20;
      if (v19)
      {
        v22 = 0;
        v23 = v11[79];
        while (v13 != v22)
        {
          v24 = *(v12 + 8 * v22);
          v2 = WORD1(v24);
          v3 = *(v23 + 88);
          if (v3 <= WORD1(v24))
          {
            goto LABEL_25;
          }

          v25 = *(*(v23 + 104) + 16 * WORD1(v24));
          v43 = *v16;
          v2 = *(v16 + 24);
          if (v2 <= v22)
          {
            goto LABEL_29;
          }

          v40 = v21;
          v41 = v20;
          v26 = v16 + 40;
          if ((*(v16 + 32) & 1) == 0)
          {
            v26 = *(v16 + 48);
          }

          re::AABB::transform(*(&v43 & 0xFFFFFFFFFFFFFFF7 | (8 * (*(v26 + 4 * v22) & 1))) + ((16 * *(v26 + 4 * v22)) & 0xFFFFFFFE0), (v25 + 144 * v24 + 32), &v52);
          v28 = v40;
          v27 = v41;
          v28.i32[3] = 0;
          result = v52;
          v29 = v53;
          result.n128_u32[3] = 0;
          v27.i32[3] = 0;
          v29.i32[3] = 0;
          v21 = vminnmq_f32(v28, result);
          v20 = vmaxnmq_f32(v27, v29);
          *a1 = v21;
          a1[1] = v20;
          if (v19 == ++v22)
          {
            return result;
          }
        }

        re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v13);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v36, v37);
        __break(1u);
LABEL_25:
        *&v43 = 0;
        v56 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v44 = 136315906;
        v45 = "operator[]";
        v46 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v47 = 797;
        v48 = 2048;
        v49 = v2;
        v50 = 2048;
        v51 = v3;
        _os_log_send_and_compose_impl(v32, &v43, &v52, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
LABEL_29:
        v42 = 0;
        v56 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v44 = 136315906;
        v45 = "operator[]";
        v46 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v47 = 866;
        v48 = 2048;
        v49 = v22;
        v50 = 2048;
        v51 = v2;
        _os_log_send_and_compose_impl(v35, &v42, &v52, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v44, 38, v38, v39);
        _os_crash_msg();
        __break(1u);
      }
    }

    else
    {
      result.n128_u64[0] = 0x7F0000007FLL;
      result.n128_u64[1] = 0x7F0000007FLL;
      *a1 = vnegq_f32(result);
      a1[1] = result;
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_10;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 96 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + 80) % *(a1 + 24), *(v13 + 80));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 16);
                v19 = *(v13 + 32);
                v20 = *(v13 + 64);
                *(v17 + 48) = *(v13 + 48);
                *(v17 + 64) = v20;
                *(v17 + 16) = v18;
                *(v17 + 32) = v19;
              }

              v13 += 96;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 96 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 96 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 96 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 80) = a3;
  ++*(a1 + 28);
  return v21 + 96 * v5;
}

re::ecs2::PhysicsSystem *re::ecs2::PhysicsSystem::PhysicsSystem(re::ecs2::PhysicsSystem *this)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CD4278;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  *(v2 + 272) = 0;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 256, 8);
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = &unk_1F5CD4308;
  *(v4 + 24) = 1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  *(v4 + 48) = 0;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 144) = 1;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 225) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 200) = 0u;
  v42 = v4;
  *(v4 + 248) = &unk_1F5CF4958;
  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 280, 8);
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = &unk_1F5CD44F0;
  *(v6 + 24) = 1;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 56) = 0;
  *(v6 + 48) = 0;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 144) = 1;
  *(v6 + 168) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 184) = 0;
  *(v6 + 192) = 1;
  *(v6 + 225) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 248) = &unk_1F5CEDE68;
  *(v6 + 256) = 0;
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  *&v49[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v49[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v44 = v49;
  *&v44[8] = 2;
  v7 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v6 + 256), v44);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 304, 8);
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = 0u;
  *(v9 + 120) = 0u;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0u;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 296) = 0;
  *(v9 + 8) = 0u;
  *(v9 + 264) = 0u;
  *(v9 + 280) = 0u;
  *(v9 + 248) = 0u;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 1;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 0u;
  *(v9 + 184) = 0;
  *(v9 + 192) = 1;
  *(v9 + 200) = 0u;
  *(v9 + 216) = 0u;
  *(v9 + 225) = 0u;
  *(v9 + 248) = &unk_1F5CD59F0;
  *v9 = &unk_1F5CD5A58;
  *(v9 + 256) = 0u;
  *(v9 + 272) = 0u;
  *(v9 + 288) = 0x7FFFFFFF00000000;
  v10 = re::globalAllocators(v9);
  v11 = (*(*v10[2] + 32))(v10[2], 280, 8);
  *(v11 + 40) = 0u;
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0u;
  *(v11 + 104) = 0u;
  *(v11 + 120) = 0u;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0u;
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 24) = 0u;
  *(v11 + 248) = 0u;
  *(v11 + 264) = 0u;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = &unk_1F5CD46D8;
  *(v11 + 24) = 1;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 56) = 0;
  *(v11 + 48) = 0;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0u;
  *(v11 + 80) = 0u;
  *(v11 + 96) = 0u;
  *(v11 + 64) = 0u;
  *(v11 + 144) = 1;
  *(v11 + 184) = 0;
  *(v11 + 168) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 192) = 1;
  *(v11 + 225) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  v12 = re::ecs2::RigidBodyComponentStateImpl::RigidBodyComponentStateImpl((v11 + 248));
  v13 = re::globalAllocators(v12);
  v14 = (*(*v13[2] + 32))(v13[2], 256, 8);
  *(v14 + 24) = 0u;
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 216) = 0u;
  *(v14 + 232) = 0u;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = &unk_1F5CD48C0;
  *(v14 + 24) = 1;
  *(v14 + 32) = 0;
  *(v14 + 40) = 0;
  *(v14 + 56) = 0;
  *(v14 + 48) = 0;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0u;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 144) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 184) = 0;
  *(v14 + 192) = 1;
  *(v14 + 225) = 0u;
  *(v14 + 216) = 0u;
  *(v14 + 200) = 0u;
  *(v14 + 248) = &unk_1F5CD6930;
  v15 = re::globalAllocators(v14);
  v16 = (*(*v15[2] + 32))(v15[2], 280, 8);
  *(v16 + 24) = 0u;
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  *(v16 + 136) = 0u;
  *(v16 + 152) = 0u;
  *(v16 + 168) = 0u;
  *(v16 + 184) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 232) = 0u;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = &unk_1F5CD4AA8;
  *(v16 + 24) = 1;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 56) = 0;
  *(v16 + 48) = 0;
  *(v16 + 112) = 0u;
  *(v16 + 128) = 0u;
  *(v16 + 80) = 0u;
  *(v16 + 96) = 0u;
  *(v16 + 64) = 0u;
  *(v16 + 144) = 1;
  *(v16 + 168) = 0u;
  *(v16 + 152) = 0u;
  *(v16 + 184) = 0;
  *(v16 + 192) = 1;
  *(v16 + 225) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 248) = &unk_1F5CD5350;
  *(v16 + 256) = 0;
  *(v16 + 264) = 0;
  *(v16 + 272) = 0;
  *&v49[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v49[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v44 = v49;
  *&v44[8] = 2;
  v17 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v16 + 256), v44);
  v18 = re::globalAllocators(v17);
  v19 = (*(*v18[2] + 32))(v18[2], 280, 8);
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0u;
  *(v19 + 136) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 168) = 0u;
  *(v19 + 184) = 0u;
  *(v19 + 200) = 0u;
  *(v19 + 216) = 0u;
  *(v19 + 232) = 0u;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v19 = &unk_1F5CD4C90;
  *(v19 + 24) = 1;
  *(v19 + 32) = 0;
  *(v19 + 40) = 0;
  *(v19 + 56) = 0;
  *(v19 + 48) = 0;
  *(v19 + 112) = 0u;
  *(v19 + 128) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 144) = 1;
  *(v19 + 168) = 0u;
  *(v19 + 152) = 0u;
  *(v19 + 184) = 0;
  *(v19 + 192) = 1;
  *(v19 + 225) = 0u;
  *(v19 + 216) = 0u;
  *(v19 + 200) = 0u;
  *(v19 + 248) = &unk_1F5CD5390;
  *(v19 + 256) = 0;
  *(v19 + 264) = 0;
  *(v19 + 272) = 0;
  *&v49[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v49[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v44 = v49;
  *&v44[8] = 2;
  v20 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v19 + 256), v44);
  v21 = re::globalAllocators(v20);
  v22 = (*(*v21[2] + 32))(v21[2], 280, 8);
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 0u;
  *(v22 + 72) = 0u;
  *(v22 + 88) = 0u;
  *(v22 + 104) = 0u;
  *(v22 + 120) = 0u;
  *(v22 + 136) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 168) = 0u;
  *(v22 + 184) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 232) = 0u;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *v22 = &unk_1F5CD4E78;
  *(v22 + 24) = 1;
  *(v22 + 32) = 0;
  *(v22 + 40) = 0;
  *(v22 + 56) = 0;
  *(v22 + 48) = 0;
  *(v22 + 112) = 0u;
  *(v22 + 128) = 0u;
  *(v22 + 80) = 0u;
  *(v22 + 96) = 0u;
  *(v22 + 64) = 0u;
  *(v22 + 144) = 1;
  *(v22 + 168) = 0u;
  *(v22 + 152) = 0u;
  *(v22 + 184) = 0;
  *(v22 + 192) = 1;
  *(v22 + 225) = 0u;
  *(v22 + 216) = 0u;
  *(v22 + 200) = 0u;
  *(v22 + 248) = &unk_1F5CD53D0;
  *(v22 + 256) = 0;
  *(v22 + 264) = 0;
  *(v22 + 272) = 0;
  *&v49[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *(&v49[0] + 1) = re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *v44 = v49;
  *&v44[8] = 2;
  v23 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v22 + 256), v44);
  v24 = re::globalAllocators(v23);
  v25 = (*(*v24[2] + 32))(v24[2], 264, 8);
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0u;
  *(v25 + 8) = 0u;
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0u;
  *(v25 + 104) = 0u;
  *(v25 + 120) = 0u;
  *(v25 + 136) = 0u;
  *(v25 + 152) = 0u;
  *(v25 + 168) = 0u;
  *(v25 + 184) = 0u;
  *(v25 + 200) = 0u;
  *(v25 + 216) = 0u;
  *(v25 + 232) = 0u;
  *(v25 + 24) = 1;
  *(v25 + 32) = 0;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 112) = 0u;
  *(v25 + 128) = 0u;
  *(v25 + 80) = 0u;
  *(v25 + 96) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 144) = 1;
  *(v25 + 184) = 0;
  *(v25 + 168) = 0u;
  *(v25 + 152) = 0u;
  *(v25 + 192) = 1;
  *(v25 + 225) = 0u;
  *(v25 + 200) = 0u;
  *(v25 + 216) = 0u;
  *(v25 + 248) = &unk_1F5CFFF98;
  *(v25 + 256) = 0;
  *v25 = &unk_1F5CD2FA8;
  v26 = re::globalAllocators(v25);
  v27 = (*(*v26[2] + 32))(v26[2], 280, 8);
  *(v27 + 24) = 0u;
  *(v27 + 40) = 0u;
  *(v27 + 56) = 0u;
  *(v27 + 72) = 0u;
  *(v27 + 88) = 0u;
  *(v27 + 104) = 0u;
  *(v27 + 120) = 0u;
  *(v27 + 136) = 0u;
  *(v27 + 152) = 0u;
  *(v27 + 168) = 0u;
  *(v27 + 184) = 0u;
  *(v27 + 200) = 0u;
  *(v27 + 216) = 0u;
  *(v27 + 232) = 0u;
  *v27 = &unk_1F5CD5060;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  *(v27 + 24) = 1;
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  *(v27 + 56) = 0;
  *(v27 + 48) = 0;
  *(v27 + 112) = 0u;
  *(v27 + 128) = 0u;
  *(v27 + 80) = 0u;
  *(v27 + 96) = 0u;
  *(v27 + 64) = 0u;
  *(v27 + 144) = 1;
  *(v27 + 184) = 0;
  *(v27 + 168) = 0u;
  *(v27 + 152) = 0u;
  *(v27 + 192) = 1;
  *(v27 + 225) = 0u;
  *(v27 + 200) = 0u;
  *(v27 + 216) = 0u;
  *(v27 + 248) = &unk_1F5CF79D0;
  *(v27 + 256) = 0;
  *(v27 + 264) = 0;
  *(v27 + 272) = 0;
  *v44 = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  *&v49[0] = v44;
  *(&v49[0] + 1) = 1;
  v28 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v27 + 256), v49);
  if (!*(this + 37))
  {
    *(this + 38) = 10;
    *(this + 39) = v28;
    if (!v28)
    {
      goto LABEL_15;
    }

    *(v28 + 3) = 0u;
    *(v28 + 4) = 0u;
    *(v28 + 1) = 0u;
    *(v28 + 2) = 0u;
    *v28 = 0u;
  }

  if (*(this + 38) != 10)
  {
LABEL_14:
    re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
    _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
    __break(1u);
LABEL_15:
    re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
  }

  v30 = *(this + 39);
  *v30 = v42;
  v30[1] = v6;
  v30[2] = v9;
  v30[3] = v11;
  v30[4] = v14;
  v30[5] = v16;
  v30[6] = v19;
  v30[7] = v22;
  v30[8] = v25;
  v30[9] = v27;
  v31 = *(this + 38);
  if (*(this + 38))
  {
    v32 = 0;
    while (1)
    {
      v33 = *(*(this + 39) + 8 * v32);
      v34 = (*(*v33 + 16))(v33);
      v35 = *(this + 41);
      if (v35 <= v32)
      {
        break;
      }

      *(*(this + 42) + 8 * v32++) = v34;
      if (v32 >= *(this + 38))
      {
        return this;
      }
    }

    v43 = 0;
    memset(v49, 0, sizeof(v49));
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v44 = 136315906;
    *&v44[4] = "operator[]";
    *&v44[12] = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    *&v44[14] = 468;
    v45 = 2048;
    v46 = v32;
    v47 = 2048;
    v48 = v35;
    _os_log_send_and_compose_impl(v39, &v43, v49, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v40, v41);
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  return this;
}

void re::ecs2::PhysicsSystem::~PhysicsSystem(re::ecs2::PhysicsSystem *this)
{
  v1 = this;
  v2 = *(this + 38);
  if (v2)
  {
    v3 = *(this + 39);
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = re::globalAllocators(this)[2];
        (**v5)(v5);
        this = (*(*v6 + 40))(v6, v5);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  re::FixedArray<CoreIKTransform>::deinit(v1 + 40);
  v7 = v1[37];
  if (v7)
  {
    if (v1[38])
    {
      (*(*v7 + 40))(v7, v1[39]);
      v1[38] = 0;
      v1[39] = 0;
    }

    v1[37] = 0;
  }

  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v1 + 28);

  re::ecs2::System::~System(v1);
}

{
  re::ecs2::PhysicsSystem::~PhysicsSystem(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PhysicsSystem::ensureSimulationUpdatedWithECS(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2)
{
  v2 = *(this + 7);
  if (v2)
  {
    v4 = (*(*v2 + 32))(*(this + 7), a2);
    if (re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v4))
    {
      (*(*v2 + 248))(v2);
      v5 = (*(*v2 + 40))(v2);
      re::ecs2::SystemRegistry::getSystem<re::ecs2::PhysicsSystem>(v5, &v7);
      v6 = v7;
      if (v7)
      {
        if (!*(v7 + 35) || (re::ecs2::PhysicsSystem::ecsToSim(v7, this, 0), (v6 = v7) != 0))
        {
        }
      }
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info = re::ecs2::introspect_PhysicsSimulationService(0, v6, v7, v8, v9, v10);
  }

  v2 = re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v3 = (*(*a1 + 16))(a1, v2, &v11);
  v4 = v3;
  if (v11)
  {
    if (v11)
    {
    }
  }

  return v4;
}

void *re::ecs2::SystemRegistry::getSystem<re::ecs2::PhysicsSystem>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = &unk_1EE187000;
  {
    v8 = a2;
    v9 = a1;
    v3 = &unk_1EE187000;
    v7 = v6;
    a2 = v8;
    a1 = v9;
    if (v7)
    {
      re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::internal::getOrCreateInfo("PhysicsSystem", re::ecs2::allocInfo_PhysicsSystem, re::ecs2::initInfo_PhysicsSystem, &re::internal::introspectionInfoStorage<re::ecs2::PhysicsSystem>, 0);
      v3 = &unk_1EE187000;
      a2 = v8;
      a1 = v9;
    }
  }

  v4 = (v3[158] + 32);

  return re::ecs2::SystemRegistry::getSystem(a1, v4, a2);
}

uint64_t re::ecs2::PhysicsSystem::ecsToSim(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2, re::PhysicsSimulation *a3)
{
  (*(**(this + 35) + 56))(*(this + 35), 1);
  result = (*(**(this + 35) + 32))(*(this + 35), a2);
  if (result)
  {
    v7 = result;
    result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v16, result, 0);
    if (v7 != v16 || v17 != 0xFFFFFFFFLL)
    {
      do
      {
        v9 = *(re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v16) + 16);
        if (v9)
        {
          re::PhysicsSimulation::deleteConstraintsMarkedForDeletion(v9);
        }

        result = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v16);
      }

      while (v16 != v7 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
    }
  }

  v12 = *(this + 38);
  if (v12)
  {
    v13 = *(this + 39);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      result = (*(*v15 + 56))(v15, a2, a3);
      v14 -= 8;
    }

    while (v14);
  }

  if (!a3)
  {
    return (*(**(this + 35) + 48))(*(this + 35));
  }

  return result;
}

void re::ecs2::PhysicsSystem::willAddSystemToECSService(re::ecs2::PhysicsSystem *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v2);
  *(this + 35) = v3;
  if (v3)
  {
    *(this + 272) = (*(*v3 + 16))(v3);
    v4 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 36) = re::ServiceLocator::service<re::TransformService>(v4);
    v5 = *(this + 38);
    if (v5)
    {
      v6 = *(this + 39);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        (*(*v8 + 24))(v8, this);
        v7 -= 8;
      }

      while (v7);
    }

    v9 = (*(**(this + 5) + 32))(*(this + 5));
    v10 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v9);
    if (v10)
    {
      *&buf = this;
      *(&buf + 1) = re::ecs2::PhysicsSystem::onComponentUpdated;
      v21 = 0;
      v22 = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::ecs2::PhysicsSystem>(re::ecs2::PhysicsSystem *,REEventHandlerResult (re::ecs2::PhysicsSystem::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
      re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v10 + 88, &buf);
    }

    re::Defaults::BOOLValue(v19, "disableNonAuthoritativePhysics", v11);
    if (v19[0] == 1)
    {
      re::ecs2::PhysicsSystem::s_disableNonAuthoritativePhysics = v19[1];
      v14 = *re::physicsLogObjects(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (re::ecs2::PhysicsSystem::s_disableNonAuthoritativePhysics)
        {
          v15 = "true";
        }

        else
        {
          v15 = "false";
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "disableNonAuthoritativePhysics overriden via Defaults (%s)", &buf, 0xCu);
      }
    }

    re::Defaults::floatValue(&v18, "networkPhysicsInterpStep", v13);
    if (v18 == 1)
    {
      re::ecs2::PhysicsSystem::s_networkInterpStep = HIDWORD(v18);
      v17 = *re::physicsLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = *&re::ecs2::PhysicsSystem::s_networkInterpStep;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_INFO, "networkPhysicsInterpStep overriden via Defaults (%f)", &buf, 0xCu);
      }
    }
  }
}

_anonymous_namespace_ *re::ServiceLocator::service<re::TransformService>(re::StringID *a1)
{
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::TransformService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v2, v7);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    v3 = re::introspect<re::TransformService>(0);
    re::StringID::invalid(v7);
    re::internal::missingServiceErrorMessage(&v8, v3, v7);
    if (v9)
    {
      v5 = *&v10[7];
    }

    else
    {
      v5 = v10;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(&v8);
    re::StringID::~StringID(v7);
    result = _os_crash("assertion failure: (service) %s", v6);
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSystem::onComponentUpdated(re::ecs2::PhysicsSystem *this, re::NetworkSystem *a2, re::ecs2::Component *a3)
{
  if (!*(a3 + 2))
  {
    return 0;
  }

  v4 = (*(*a3 + 40))(a3, a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  do
  {
    {
      v35 = v5;
      v6 = &unk_1EE187000;
      v16 = v10;
      v5 = v35;
      if (v16)
      {
        re::introspect<re::ecs2::TransformComponent>(BOOL)::info = re::ecs2::introspect_TransformComponent(0, v11, v12, v13, v14, v15);
        v6 = &unk_1EE187000;
        v5 = v35;
      }
    }

    if (v5 == v6[115])
    {
      v30 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v30)
      {
        v31 = *(a3 + 2);
        v32 = *(a3 + 4);
        *(v30 + 48) = *(a3 + 3);
        *(v30 + 64) = v32;
        *(v30 + 32) = v31;
LABEL_37:
        re::ecs2::Component::markDirty(v30);
        return 0;
      }

      v30 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v30)
      {
        return 0;
      }

      v33 = *(v30 + 124) + 1;
LABEL_36:
      *(v30 + 124) = v33;
      goto LABEL_37;
    }

    v7 = *(v5 + 56);
    if (!v7)
    {
      break;
    }

    v8 = *(v5 + 64);
    while (1)
    {
      v9 = *v8;
      if (**v8 == 1 && v9[10] == 3)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        goto LABEL_15;
      }
    }

    v5 = *(v9 + 2);
  }

  while (v5);
LABEL_15:
  if (*(a3 + 2))
  {
    v17 = (*(*a3 + 40))(a3);
    v18 = (*(*v17 + 48))(v17);
    v19 = &unk_1EE187000;
    while (1)
    {
      {
        v36 = v18;
        v19 = &unk_1EE187000;
        v29 = v23;
        v18 = v36;
        if (v29)
        {
          re::introspect<re::ecs2::MotionStateComponent>(BOOL)::info = re::ecs2::introspect_MotionStateComponent(0, v24, v25, v26, v27, v28);
          v19 = &unk_1EE187000;
          v18 = v36;
        }
      }

      if (v18 == v19[106])
      {
        break;
      }

      v20 = *(v18 + 56);
      if (v20)
      {
        for (i = *(v18 + 64); ; ++i)
        {
          v22 = *i;
          if (**i == 1 && v22[10] == 3)
          {
            break;
          }

          if (!--v20)
          {
            return 0;
          }
        }

        v18 = *(v22 + 2);
        if (v18)
        {
          continue;
        }
      }

      return 0;
    }

    v30 = re::ecs2::EntityComponentCollection::get((*(a3 + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v30)
    {
      v33 = *(a3 + 80);
      if (*(v30 + 124) != v33)
      {
        goto LABEL_36;
      }
    }
  }

  return 0;
}

void re::ecs2::PhysicsSystem::willAddSceneToECSService(re::ecs2::PhysicsSystem *this, unint64_t a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = *(this + 35);
  if (v3)
  {
    v5 = (*(*v3 + 64))(v3);
    v6 = *(this + 38);
    if (v6)
    {
      v7 = *(this + 39);
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        v5 = (*(*v9 + 40))(v9, a2);
        v8 -= 8;
      }

      while (v8);
    }

    v59[0] = 0;
    v59[1] = 0;
    v60 = 1;
    v62 = 0;
    v63 = 0;
    v61 = 0;
    v64 = 0;
    v10 = *(a2 + 288);
    if (v10)
    {
      v88 = re::globalAllocators(v5)[2];
      v11 = (*(*v88 + 32))(v88, 32, 0);
      *v11 = &unk_1F5CD5248;
      v11[1] = this;
      v11[2] = re::ecs2::PhysicsSystem::onPhysicsOriginActivated;
      v11[3] = 0;
      v89 = v11;
      v12 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v87, re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v14 = v13;
      v15 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v15 = v12;
      v15[1] = v14;
      v16 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v87);
      v85 = re::globalAllocators(v16)[2];
      v17 = (*(*v85 + 32))(v85, 32, 0);
      *v17 = &unk_1F5CD52A0;
      v17[1] = this;
      v17[2] = re::ecs2::PhysicsSystem::onPhysicsOriginDeactivated;
      v17[3] = 0;
      v86 = v17;
      v18 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v84, re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
      v20 = v19;
      v21 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v21 = v18;
      v21[1] = v20;
      v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v84);
      v23 = *(this + 41);
      if (v23)
      {
        v24 = *(this + 42);
        v25 = 8 * v23;
        do
        {
          v26 = *v24;
          if (*(this + 272) == 1)
          {
            v82 = re::globalAllocators(v22)[2];
            v83 = 0;
            v27 = (*(*v82 + 32))(v82, 32, 0);
            *v27 = &unk_1F5CD5248;
            v27[1] = this;
            v27[2] = re::ecs2::PhysicsSystem::OnEventEnsurePhysicsSystemActive;
            v27[3] = 0;
            v83 = v27;
            v28 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v81, v26, 0);
            v30 = v29;
            v31 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
            *v31 = v28;
            v31[1] = v30;
            v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v81);
          }

          v79 = re::globalAllocators(v22)[2];
          v80 = 0;
          v32 = (*(*v79 + 32))(v79, 32, 0);
          *v32 = &unk_1F5CD52A0;
          v32[1] = this;
          v32[2] = re::ecs2::PhysicsSystem::onDeactivatePhysicsSubsystemComponent;
          v32[3] = 0;
          v80 = v32;
          v33 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v78, v26, 0);
          v35 = v34;
          v36 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
          *v36 = v33;
          v36[1] = v35;
          v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v78);
          ++v24;
          v25 -= 8;
        }

        while (v25);
      }

      v76 = re::globalAllocators(v22)[2];
      v37 = (*(*v76 + 32))(v76, 32, 0);
      *v37 = &unk_1F5CD52F8;
      v37[1] = this;
      v37[2] = re::ecs2::PhysicsSystem::onEntityReparented;
      v37[3] = 0;
      v77 = v37;
      v38 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v10, 0, v75, 0, 0);
      v40 = v39;
      v41 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
      *v41 = v38;
      v41[1] = v40;
      v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v75);
      v43 = 0;
      v74[0] = re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
      v74[1] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      do
      {
        v44 = v74[v43];
        v72 = re::globalAllocators(v42)[2];
        v73 = 0;
        v45 = (*(*v72 + 32))(v72, 32, 0);
        *v45 = &unk_1F5CD5248;
        v45[1] = this;
        v45[2] = re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentDidActivateEvent>;
        v45[3] = 0;
        v73 = v45;
        v46 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v10, v71, v44, 0);
        v48 = v47;
        v49 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
        *v49 = v46;
        v49[1] = v48;
        v50 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v71);
        v69 = re::globalAllocators(v50)[2];
        v70 = 0;
        v51 = (*(*v69 + 32))(v69, 32, 0);
        *v51 = &unk_1F5CD52A0;
        v51[1] = this;
        v51[2] = re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentWillDeactivateEvent>;
        v51[3] = 0;
        v70 = v51;
        v52 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v10, v68, v44, 0);
        v54 = v53;
        v55 = re::BucketArray<RESubscriptionHandle,16ul>::addUninitialized(v59);
        *v55 = v52;
        v55[1] = v54;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v68);
        ++v43;
      }

      while (v43 != 2);
      v65 = 0;
      v66 = 0;
      v67 = 0;
      v56 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v65, this + 224, a2, v56 ^ (v56 >> 31));
      if (HIDWORD(v66) == 0x7FFFFFFF)
      {
        v57 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(this + 224, v66, v65);
        *(v57 + 16) = 0;
        v57 += 16;
        *(v57 - 8) = a2;
        *(v57 + 8) = 0;
        *(v57 + 16) = 1;
        *(v57 + 32) = 0;
        *(v57 + 40) = 0;
        *(v57 + 24) = 0;
        *(v57 + 48) = 0;
        re::BucketArray<RESubscriptionHandle,8ul>::swap(v57, v59);
        ++*(this + 66);
      }
    }

    re::BucketArray<RESubscriptionHandle,16ul>::deinit(v59);
    if (v59[0] && (v60 & 1) == 0)
    {
      (*(*v59[0] + 40))();
    }

    v58 = *(a2 + 376);
    re::ecs2::System::setTaskEnabled(this, v58, 1);

    re::ecs2::System::queueToRun(this, v58, 0.0);
  }
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsOriginActivated(re::ecs2::PhysicsSystem *a1, uint64_t a2)
{
  do
  {
    v2 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  re::ecs2::PhysicsSystem::onPhysicsOriginChanged(a1, *(v2 + 24), 0);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsOriginDeactivated(re::ecs2::PhysicsSystem *a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsOriginComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::PhysicsSystem::onPhysicsOriginChanged(a1, v5, v6);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::OnEventEnsurePhysicsSystemActive(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    a2 = *(a2 + 32);
  }

  while (a2);
  v4 = *(*(v3 + 24) + 376);
  re::ecs2::System::setTaskEnabled(a1, v4, 1);
  re::ecs2::System::queueToRun(a1, v4, 0.0);
  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onDeactivatePhysicsSubsystemComponent(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1[38];
  if (v3)
  {
    v4 = 0;
    v5 = a1[41];
    while (1)
    {
      if (v5 == v4)
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

        v15 = 468;
        v16 = 2048;
        v17 = v5;
        v18 = 2048;
        v19 = v5;
        _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
        _os_crash_msg();
        __break(1u);
      }

      if (*(a3 + 8) == *(a1[42] + 8 * v4))
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }

    v6 = *(a1[39] + 8 * v4);
    (*(*v6 + 88))(v6, a2);
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onEntityReparented(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((*(a3 + 8) + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    v10 = v5;
    re::ecs2::RigidBodyComponent::teleport(v5, v6, v7, v8, v9);
    re::ecs2::Component::markDirty(v10);
  }

  v11 = *(a1 + 280);
  if (v11)
  {
    (*(*v11 + 56))(v11, 1);
    v12 = *a3;
    v13 = *(a3 + 8);
    v14 = *(v13 + 32);
    v15 = re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(*(a1 + 280), v12);
    if (v15 != re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(*(a1 + 280), v14))
    {
      v16 = *(a1 + 304);
      if (v16)
      {
        v17 = *(a1 + 312);
        v18 = 8 * v16;
        do
        {
          v19 = *v17++;
          (*(*v19 + 80))(v19, v13);
          v18 -= 8;
        }

        while (v18);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 387) & 1) == 0)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      v4 = *(a1 + 312);
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;
        (*(*v6 + 80))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return 0;
}

uint64_t re::ecs2::PhysicsSystem::onPhysicsSimulationRootActivationChanged<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 387) & 1) == 0)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      v4 = *(a1 + 312);
      v5 = 8 * v2;
      do
      {
        v6 = *v4++;
        (*(*v6 + 80))(v6, a2);
        v5 -= 8;
      }

      while (v5);
    }
  }

  return 0;
}

void re::ecs2::PhysicsSystem::willRemoveSystemFromECSService(re::ecs2::PhysicsSystem *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v2);
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 46))
    {
      v5 = 0;
      do
      {
        v6 = (*(v4 + 48) + 32 * v5);
        if (*v6 == this)
        {
          if (!*(v4 + 108))
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(v4 + 44, v5);
            continue;
          }

          v12[0] = 0;
          v7 = *v6;
          v14 = *(v6 + 1);
          v13 = v7;
          re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v4 + 392), v12);
        }

        ++v5;
      }

      while (v5 < *(v4 + 46));
    }
  }

  *(this + 35) = 0;
  v8 = *(this + 38);
  if (v8)
  {
    v9 = *(this + 39);
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      (*(*v11 + 32))(v11);
      v10 -= 8;
    }

    while (v10);
  }
}

uint64_t re::ecs2::PhysicsSystem::willRemoveSceneFromECSService(re::ecs2::PhysicsSystem *this, unint64_t a2)
{
  v4 = *(this + 38);
  if (v4)
  {
    v5 = *(this + 39);
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      (*(*v7 + 48))(v7, a2);
      v6 -= 8;
    }

    while (v6);
  }

  v8 = *(this + 35);
  if (v8)
  {
    (*(*v8 + 72))(v8, a2);
  }

  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v10 = v9 ^ (v9 >> 31);
  result = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v20, this + 224, a2, v10);
  if (v22 != 0x7FFFFFFF)
  {
    v12 = *(a2 + 288);
    if (v12)
    {
      v13 = *(this + 30) + 80 * v22;
      v14 = *(v13 + 56);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v16 = re::BucketArray<RESubscriptionHandle,16ul>::operator[](v13 + 16, i);
          re::EventBus::unsubscribe(v12, *v16, v16[1]);
        }
      }
    }

    result = re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v20, this + 224, a2, v10);
    v17 = v22;
    if (v22 != 0x7FFFFFFF)
    {
      v18 = *(this + 30);
      v19 = *(v18 + 80 * v22) & 0x7FFFFFFF;
      if (v23 == 0x7FFFFFFF)
      {
        *(*(this + 29) + 4 * v21) = v19;
      }

      else
      {
        *(v18 + 80 * v23) = *(v18 + 80 * v23) & 0x80000000 | v19;
      }

      result = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,16ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::free(v18, v17);
      *(*(this + 30) + 80 * v17) = *(*(this + 30) + 80 * v17) & 0x80000000 | *(this + 65);
      *(this + 65) = v17;
      --*(this + 63);
      ++*(this + 66);
    }
  }

  return result;
}

void re::ecs2::PhysicsSystem::onPhysicsOriginChanged(re::ecs2::PhysicsSystem *this, const re::ecs2::Scene *a2, re::ecs2::PhysicsOriginComponent *a3)
{
  v127 = a3;
  (*(**(this + 35) + 56))(*(this + 35), 1);
  v5 = (*(**(this + 35) + 32))(*(this + 35), a2);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  re::StackScratchAllocator::StackScratchAllocator(v126);
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v125 = 0x7FFFFFFFLL;
  if (v127)
  {
    v7 = &v127;
  }

  else
  {
    v7 = 0;
  }

  re::internal::findPhysicsOrigin(a2, v7, v127 != 0, *(this + 36), &v132);
  v121.columns[2] = v134;
  v121.columns[3] = v135;
  v121.columns[0] = v132;
  v121.columns[1] = v133;
  v136.columns[2] = v134;
  v136.columns[3] = v135;
  v136.columns[0] = v132;
  v136.columns[1] = v133;
  v137 = __invert_f4(v136);
  v112 = v137.columns[1];
  v113 = v137.columns[0];
  v120[0] = v137.columns[0];
  v120[1] = v137.columns[1];
  v110 = v137.columns[3];
  v111 = v137.columns[2];
  v120[2] = v137.columns[2];
  v120[3] = v137.columns[3];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v132, v6, 0);
  v118 = v132.i64[0];
  LODWORD(v119) = v132.i32[2];
  if (v6 == v132.i64[0] && v132.u32[2] == 0xFFFFFFFFLL)
  {
    goto LABEL_108;
  }

  v108 = a2;
  v109 = this;
  do
  {
    v8 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v118);
    v9 = v8;
    v10 = *(v8 + 112);
    if (v10 != v121.columns[0].f32[0] && vabds_f32(v10, v121.columns[0].f32[0]) >= (((fabsf(v10) + fabsf(v121.columns[0].f32[0])) + 1.0) * 0.00001) || (v11 = *(v8 + 116), v11 != v121.columns[0].f32[1]) && vabds_f32(v11, v121.columns[0].f32[1]) >= (((fabsf(v11) + fabsf(v121.columns[0].f32[1])) + 1.0) * 0.00001) || (v12 = *(v8 + 120), v12 != v121.columns[0].f32[2]) && vabds_f32(v12, v121.columns[0].f32[2]) >= (((fabsf(v12) + fabsf(v121.columns[0].f32[2])) + 1.0) * 0.00001) || (v13 = *(v8 + 124), v13 != v121.columns[0].f32[3]) && vabds_f32(v13, v121.columns[0].f32[3]) >= (((fabsf(v13) + fabsf(v121.columns[0].f32[3])) + 1.0) * 0.00001) || (v14 = *(v8 + 128), v14 != v121.columns[1].f32[0]) && vabds_f32(v14, v121.columns[1].f32[0]) >= (((fabsf(v14) + fabsf(v121.columns[1].f32[0])) + 1.0) * 0.00001) || (v15 = *(v8 + 132), v15 != v121.columns[1].f32[1]) && vabds_f32(v15, v121.columns[1].f32[1]) >= (((fabsf(v15) + fabsf(v121.columns[1].f32[1])) + 1.0) * 0.00001) || (v16 = *(v8 + 136), v16 != v121.columns[1].f32[2]) && vabds_f32(v16, v121.columns[1].f32[2]) >= (((fabsf(v16) + fabsf(v121.columns[1].f32[2])) + 1.0) * 0.00001) || (v17 = *(v8 + 140), v17 != v121.columns[1].f32[3]) && vabds_f32(v17, v121.columns[1].f32[3]) >= (((fabsf(v17) + fabsf(v121.columns[1].f32[3])) + 1.0) * 0.00001) || (v18 = *(v8 + 144), v18 != v121.columns[2].f32[0]) && vabds_f32(v18, v121.columns[2].f32[0]) >= (((fabsf(v18) + fabsf(v121.columns[2].f32[0])) + 1.0) * 0.00001) || (v19 = *(v8 + 148), v19 != v121.columns[2].f32[1]) && vabds_f32(v19, v121.columns[2].f32[1]) >= (((fabsf(v19) + fabsf(v121.columns[2].f32[1])) + 1.0) * 0.00001) || (v20 = *(v8 + 152), v20 != v121.columns[2].f32[2]) && vabds_f32(v20, v121.columns[2].f32[2]) >= (((fabsf(v20) + fabsf(v121.columns[2].f32[2])) + 1.0) * 0.00001) || (v21 = *(v8 + 156), v21 != v121.columns[2].f32[3]) && vabds_f32(v21, v121.columns[2].f32[3]) >= (((fabsf(v21) + fabsf(v121.columns[2].f32[3])) + 1.0) * 0.00001) || (v22 = *(v8 + 160), v22 != v121.columns[3].f32[0]) && vabds_f32(v22, v121.columns[3].f32[0]) >= (((fabsf(v22) + fabsf(v121.columns[3].f32[0])) + 1.0) * 0.00001) || (v23 = *(v8 + 164), v23 != v121.columns[3].f32[1]) && vabds_f32(v23, v121.columns[3].f32[1]) >= (((fabsf(v23) + fabsf(v121.columns[3].f32[1])) + 1.0) * 0.00001) || (v24 = *(v8 + 168), v24 != v121.columns[3].f32[2]) && vabds_f32(v24, v121.columns[3].f32[2]) >= (((fabsf(v24) + fabsf(v121.columns[3].f32[2])) + 1.0) * 0.00001) || (v25 = *(v8 + 172), v25 != v121.columns[3].f32[3]) && vabds_f32(v25, v121.columns[3].f32[3]) >= (((fabsf(v25) + fabsf(v121.columns[3].f32[3])) + 1.0) * 0.00001))
    {
      v26 = 0;
      v27 = *(v8 + 128);
      v28 = *(v8 + 144);
      v29 = *(v8 + 160);
      v128 = *(v8 + 112);
      v129 = v27;
      v130 = v28;
      v131 = v29;
      do
      {
        *(&v132 + v26) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, COERCE_FLOAT(*(&v128 + v26))), v112, *&v128.i8[v26], 1), v111, *(&v128 + v26), 2), v110, *(&v128 + v26), 3);
        v26 += 16;
      }

      while (v26 != 64);
      v30 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
      v31 = v30 ^ (v30 >> 31);
      if (v122)
      {
        v32 = v31 % DWORD2(v123);
        v33 = *(*(&v122 + 1) + 4 * v32);
        if (v33 != 0x7FFFFFFF)
        {
          while (*(v123 + 96 * v33 + 8) != v8)
          {
            LODWORD(v33) = *(v123 + 96 * v33) & 0x7FFFFFFF;
            if (v33 == 0x7FFFFFFF)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_49;
        }

LABEL_46:
        v114 = v135;
        v115 = v134;
        v116 = v133;
        v117 = v132;
      }

      else
      {
        v114 = v135;
        v115 = v134;
        v116 = v133;
        v117 = v132;
        LODWORD(v32) = 0;
      }

      v34 = re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v122, v32, v31);
      *(v34 + 8) = v9;
      *(v34 + 16) = v117;
      *(v34 + 32) = v116;
      *(v34 + 48) = v115;
      *(v34 + 64) = v114;
      ++HIDWORD(v125);
LABEL_49:
      re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v9, &v121);
    }

    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v118);
  }

  while (v118 != v6 || v119 != 0xFFFF || WORD1(v119) != 0xFFFF);
  if (HIDWORD(v123))
  {
    v35 = *(this + 35);
    v36 = (*(*v35 + 24))(v35);
    v37 = a2;
    v38 = (*(*v35 + 40))(v35, a2);
    v118 = v36;
    v119 = v38;
    v39 = *(re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    v40 = *(a2 + 28);
    if (v40 > v39)
    {
      v41 = *(*(a2 + 30) + 8 * v39);
      if (v41)
      {
        v42 = *(v41 + 384);
        if (v42)
        {
          v43 = *(v41 + 400);
          v44 = &v43[v42];
          v45 = DWORD2(v123);
          v46 = v122;
          v47 = v123;
          do
          {
            v48 = *v43;
            v49 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v43 + 16));
            if (v46)
            {
              v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v49 ^ (v49 >> 30))) >> 27));
              v51 = *(*(&v46 + 1) + 4 * ((v50 ^ (v50 >> 31)) % v45));
              if (v51 != 0x7FFFFFFF)
              {
                while (*(v47 + 96 * v51 + 8) != v49)
                {
                  v51 = *(v47 + 96 * v51) & 0x7FFFFFFF;
                  if (v51 == 0x7FFFFFFF)
                  {
                    goto LABEL_65;
                  }
                }

                v52 = *(v48 + 96);
                if (v52)
                {
                  re::internal::getPhysicsOriginFromTransform(*(v48 + 16), *(v109 + 36), v120, &v132);
                  v53 = *(v52 + 16);
                  v128 = v134;
                  v129 = v133;
                  v54 = v133;
                  v53[1] = v134;
                  v53[2] = v54;
                  (*(*v53 + 64))(v53, &v128);
                  v128 = vdupq_lane_s32(*v132.f32, 0);
                  re::CollisionObject::setScale(v52, &v128);
                }
              }
            }

LABEL_65:
            ++v43;
          }

          while (v43 != v44);
          v37 = v108;
          v40 = *(v108 + 28);
        }
      }
    }

    v55 = *(re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v55)
    {
      v56 = *(*(v37 + 30) + 8 * v55);
      if (v56)
      {
        v57 = *(v56 + 384);
        if (v57)
        {
          v58 = *(v56 + 400);
          v59 = 8 * v57;
          do
          {
            v60 = *v58;
            v61 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v58 + 16));
            v62 = re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(&v122, v61);
            if (v62)
            {
              v63 = *(v60 + 336);
              if (v63)
              {
                v64 = v62;
                v65.i64[0] = (*(*v63 + 216))(v63);
                v65.i64[1] = v66;
                v67.i64[0] = *v64;
                v68.i64[0] = *(v64 + 16);
                v69.i64[0] = *(v64 + 32);
                v67.i32[2] = *(v64 + 8);
                v68.i32[2] = *(v64 + 24);
                v69.i32[2] = *(v64 + 40);
                v132 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v67, v65.f32[0]), v68, *v65.f32, 1), v69, v65, 2);
                (*(*v63 + 224))(v63, &v132);
                v70.i64[0] = (*(*v63 + 232))(v63);
                v70.i64[1] = v71;
                v72.i64[0] = *v64;
                v73.i64[0] = *(v64 + 16);
                v74.i64[0] = *(v64 + 32);
                v72.i32[2] = *(v64 + 8);
                v73.i32[2] = *(v64 + 24);
                v74.i32[2] = *(v64 + 40);
                v132 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v70.f32[0]), v73, *v70.f32, 1), v74, v70, 2);
                (*(*v63 + 240))(v63, &v132);
                (*(*v63 + 312))(v63);
              }
            }

            ++v58;
            v59 -= 8;
          }

          while (v59);
          v40 = *(v37 + 28);
        }
      }
    }

    v75 = *(re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v75)
    {
      v76 = *(*(v37 + 30) + 8 * v75);
      if (v76)
      {
        v77 = *(v76 + 384);
        if (v77)
        {
          v78 = *(v76 + 400);
          v79 = &v78[v77];
          v80 = DWORD2(v123);
          v81 = v122;
          v82 = v123;
          do
          {
            v83 = *v78;
            v84 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *(*v78 + 16));
            if (v81)
            {
              v85 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
              v86 = *(*(&v81 + 1) + 4 * ((v85 ^ (v85 >> 31)) % v80));
              if (v86 != 0x7FFFFFFF)
              {
                while (*(v82 + 96 * v86 + 8) != v84)
                {
                  v86 = *(v82 + 96 * v86) & 0x7FFFFFFF;
                  if (v86 == 0x7FFFFFFF)
                  {
                    goto LABEL_87;
                  }
                }

                v87 = *(v83 + 80);
                if (v87)
                {
                  v88 = *(v83 + 16);
                  v89 = *(v87 + 136);
                  re::internal::getPhysicsOriginFromTransform(v88, *(v109 + 36), v120, &v132);
                  v90 = *(v89 + 16);
                  v128 = v134;
                  v129 = v133;
                  v91 = v133;
                  v90[1] = v134;
                  v90[2] = v91;
                  (*(*v90 + 64))(v90, &v128);
                  v128 = vdupq_lane_s32(*v132.f32, 0);
                  re::CollisionObject::setScale(v89, &v128);
                }
              }
            }

LABEL_87:
            ++v78;
          }

          while (v78 != v79);
          v37 = v108;
          v40 = *(v108 + 28);
        }
      }
    }

    v92 = *(re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
    if (v40 > v92)
    {
      v93 = *(*(v37 + 30) + 8 * v92);
      if (v93)
      {
        v94 = *(v93 + 384);
        if (v94)
        {
          v95 = *(v93 + 400);
          v96 = 8 * v94;
          do
          {
            v97 = *v95;
            v98 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(&v118, *&(*v95)[2]);
            v99 = re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(&v122, v98);
            if (v99)
            {
              v100.i64[0] = *v99;
              v101.i64[0] = *(v99 + 16);
              v102.i64[0] = *(v99 + 32);
              v100.i32[2] = *(v99 + 8);
              v101.i32[2] = *(v99 + 24);
              v102.i32[2] = *(v99 + 40);
              v103 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*v97[16].f32)), v101, v97[16], 1), v102, *v97[16].f32, 2);
              *v97[16].f32 = v103;
              v103.i64[0] = *v99;
              v101.i64[0] = *(v99 + 16);
              v102.i64[0] = *(v99 + 32);
              v103.i32[2] = *(v99 + 8);
              v101.i32[2] = *(v99 + 24);
              v102.i32[2] = *(v99 + 40);
              *v97[20].f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, COERCE_FLOAT(*v97[20].f32)), v101, v97[20], 1), v102, *v97[20].f32, 2);
            }

            ++v95;
            v96 -= 8;
          }

          while (v96);
        }
      }
    }

    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v132, v6, 0);
    if (v6 != v132.i64[0] || v132.u32[2] != 0xFFFFFFFFLL)
    {
      do
      {
        v105 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v132);
        re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(v105, &v121);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v132);
      }

      while (v132.i64[0] != v6 || v132.u16[4] != 0xFFFF || v132.u16[5] != 0xFFFF);
    }
  }

LABEL_108:
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(&v122);
  re::StackScratchAllocator::~StackScratchAllocator(v126);
}

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x1E69E9C10];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    v11 = 797;
    v12 = 2048;
    v13 = v1;
    v14 = 2048;
    v15 = v2;
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(*a1 + 32) + 16 * v1) + 272 * a1[4];
}

uint64_t re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(re::ecs2::PhysicsSimulationMapping *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  result = *this;
  if (result)
  {
    if (*(this + 1))
    {
      result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(result, &v4);
      if (result)
      {
        return re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(*(this + 1), *(result + 24));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::PhysicsSimulationData *,re::Matrix4x4<float>,re::Hash<re::ecs2::PhysicsSimulationData *>,re::EqualTo<re::ecs2::PhysicsSimulationData *>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::Matrix4x4<float>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v6 + 16;
  }
}

uint64_t re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(re::ecs2::PhysicsSimulationService *this, const re::ecs2::Entity *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = (*(*this + 24))(this);
  v8 = (*(*this + 40))(this, v6);
  v10[0] = v7;
  v10[1] = v8;
  return re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v10, a2);
}

void *re::ecs2::PhysicsSystem::update(void *result, uint64_t a2, void *a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = result;
    if (result[35])
    {
      v5 = *&a2;
      re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v72);
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v71, 3043, v3, 0, 0, 0);
      v68 = a3;
      v8 = a3[25];
      if (v8)
      {
        v9 = a3[27];
        v10 = &v9[v8];
        v11 = v5;
        while (1)
        {
          v12 = *(v3 + 328);
          if (v12)
          {
            break;
          }

LABEL_11:
          (*(**(v3 + 280) + 56))(*(v3 + 280), 0);
LABEL_12:
          if (++v9 == v10)
          {
            goto LABEL_47;
          }
        }

        v13 = *v9;
        v14 = *(v3 + 336);
        v15 = 8 * v12;
        while (1)
        {
          v16 = *(*v14 + 16);
          if ((*v9)[28] > v16)
          {
            v17 = *((*v9)[30] + 8 * v16);
            if (v17)
            {
              if (*(v17 + 384))
              {
                break;
              }
            }
          }

          v14 += 8;
          v15 -= 8;
          if (!v15)
          {
            goto LABEL_11;
          }
        }

        v18 = physx::shdfnd::g_isLockingEnabled;
        v70 = physx::shdfnd::g_alwaysUseLocking;
        if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && physx::shdfnd::g_isLockingEnabled)
        {
          physx::shdfnd::g_isLockingEnabled = 0;
        }

        v69 = v18;
        re::ecs2::PhysicsSystem::ecsToSim(v3, v13, 0);
        v19 = *(v3 + 272);
        v20 = (*(**(v3 + 280) + 32))(*(v3 + 280), v13);
        v21 = v20;
        if (v19 == 1)
        {
          if (v20)
          {
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v73, v20, 0);
            v77 = v73;
            v78 = DWORD2(v73);
            if (v21 != v73 || DWORD2(v73) != 0xFFFFFFFFLL)
            {
              do
              {
                v23 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v77);
                v24 = *(v23 + 16);
                if (v24)
                {
                  v25 = v23;
                  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v76, 7000, v3, *(v24 + 13), *(v24 + 21), *(v24 + 34));
                  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v75);
                  v27 = *(v25 + 40);
                  if (v27)
                  {
                    *&v73 = v3;
                    *(&v73 + 1) = v13;
                    v74 = 0;
                    objc_copyWeak(&v74, (v25 + 56));
                    *(v27 + 8) = v73;
                    re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=((v27 + 24), &v74);
                    objc_destroyWeak(&v74);
                  }

                  hasCollisionEventSubscriptions = re::CollisionEventDelegate::hasCollisionEventSubscriptions(v13[36], v26);
                  v29 = *(v24 + 7);
                  LOBYTE(v73) = hasCollisionEventSubscriptions;
                  (*(*v29 + 216))(v29, &v73);
                  re::PhysicsSimulation::update(v24, v11);
                  re::ProfilerTimeGuard<(re::ProfilerStatistic)19>::end(v75);
                  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v76, v30, v31);
                }

                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v77);
              }

              while (v77 != v21 || v78 != 0xFFFF || HIWORD(v78) != 0xFFFF);
            }

            (*(**(v3 + 280) + 48))(*(v3 + 280));
          }
        }

        else if (v20)
        {
          if (*(v20 + 40))
          {
            re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v73, v20, 0);
            v77 = v73;
            v78 = DWORD2(v73);
            v34 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v77);
            v35 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v34);
            if (v35)
            {
              v36 = *(v3 + 304);
              if (!v36)
              {
LABEL_45:
                if (physx::shdfnd::g_isLockingEnabled != ((v70 | v69) & 1))
                {
                  physx::shdfnd::g_isLockingEnabled = (v70 | v69) & 1;
                }

                goto LABEL_12;
              }

              v37 = v35;
              v38 = *(v3 + 312);
              v39 = 8 * v36;
              do
              {
                v40 = *v38++;
                (*(*v40 + 64))(v40, v37, v13);
                v39 -= 8;
              }

              while (v39);
            }
          }
        }

        v41 = *(v3 + 304);
        if (v41)
        {
          v42 = *(v3 + 312);
          v43 = 8 * v41;
          do
          {
            v44 = *v42++;
            (*(*v44 + 72))(v44, v13);
            v43 -= 8;
          }

          while (v43);
        }

        goto LABEL_45;
      }

LABEL_47:
      if (*(v3 + 272))
      {
        v45 = a3[2];
        v46 = (*(**(v3 + 40) + 104))(*(v3 + 40), v68[2]);
        if (v46)
        {
          v47 = v46;
          v48 = re::ecs2::System::taskHandle(v3, v45);
          if (v48 != -1)
          {
            re::DynamicBitset<unsigned long long,64ul>::setBit(v47 + 344, v48);
          }
        }

        v49 = (*(**(v3 + 40) + 304))(*(v3 + 40), v45);
        v50 = *(v49 + 200);
        if (v50)
        {
          v51 = 0;
          v52 = *(v49 + 216);
          v53 = v52 + 8 * v50;
          v54 = 3.4028e38;
          do
          {
            v55 = *(v3 + 328);
            if (v55)
            {
              v56 = *(v3 + 336);
              v57 = 8 * v55;
              while (1)
              {
                v58 = *(*v56 + 16);
                if (*(*v52 + 224) > v58)
                {
                  v59 = *(*(*v52 + 240) + 8 * v58);
                  if (v59)
                  {
                    if (*(v59 + 384))
                    {
                      break;
                    }
                  }
                }

                v56 += 8;
                v57 -= 8;
                if (!v57)
                {
                  goto LABEL_78;
                }
              }

              v60 = (*(**(v3 + 280) + 32))(*(v3 + 280));
              if (v60)
              {
                v61 = v60;
                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v73, v60, 0);
                if (v61 != v73 || DWORD2(v73) != 0xFFFFFFFFLL)
                {
                  do
                  {
                    v63 = re::DataArray<re::ecs2::PhysicsSimulationData>::DataArrayIterator<re::ecs2::PhysicsSimulationData,re::ecs2::PhysicsSimulationData&>::operator*(&v73);
                    v64 = *(v63 + 16);
                    if (v64)
                    {
                      if ((*(*v64 + 104))(*(v63 + 16)))
                      {
                        v65 = *(v64 + 888);
                        if (v54 > (*(v64 + 68) - v65))
                        {
                          v54 = *(v64 + 68) - v65;
                        }
                      }
                    }

                    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v73);
                  }

                  while (v73 != v61 || WORD4(v73) != 0xFFFF || WORD5(v73) != 0xFFFF);
                }
              }

              v51 = 1;
            }

LABEL_78:
            v52 += 8;
          }

          while (v52 != v53);
          re::ecs2::System::setTaskEnabled(v3, v45, v51 & 1);
          if (v54 != 3.4028e38)
          {
            re::ecs2::System::queueToRun(v3, v45, v54);
          }
        }

        else
        {
          re::ecs2::System::setTaskEnabled(v3, v45, 0);
        }
      }

      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v71, v6, v7);
      return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v72);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_PhysicsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_153, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_153))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE19F8D8, "PhysicsSystem");
    __cxa_guard_release(&_MergedGlobals_153);
  }

  return &unk_1EE19F8D8;
}

void re::ecs2::initInfo_PhysicsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x21255BB4348EC66CLL;
  v8[1] = "PhysicsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PhysicsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PhysicsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PhysicsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4308;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4308;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((v3 + 128), 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(a1 + 48);
  *&v51 = 0;
  v15 = *(a1 + 16);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(a1 + 48);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(v24, a1 + 8, v52);
  *&v62[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, v62);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 24; j != 56; j += 8)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + j), v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::PhysicsSimulationComponent,re::ecs2::PhysicsSimulationComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v2);
  }
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD4390;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD43E8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4440;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4498;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD4390;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD43E8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD4440;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD4498;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD43E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD43E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4440;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4440;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4498;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4498;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD44F0;
  a1[31] = &unk_1F5CEDE68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD44F0;
  a1[31] = &unk_1F5CEDE68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((v3 + 128), 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(a1 + 48);
  *&v51 = 0;
  v15 = *(a1 + 16);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(a1 + 48);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(v24, a1 + 8, v52);
  *&v62[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, v62);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 24; j != 56; j += 8)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + j), v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ColliderComponent,re::ecs2::ColliderComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::ColliderComponent::removeFromSimulation(v2);
  }
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD4578;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD45D0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4628;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4680;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD4578;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD45D0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD4628;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD4680;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4578;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4578;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD45D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD45D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD46D8;
  a1[31] = &unk_1F5CF7D80;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD46D8;
  a1[31] = &unk_1F5CF7D80;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((v3 + 128), 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(a1 + 48);
  *&v51 = 0;
  v15 = *(a1 + 16);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(a1 + 48);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(v24, a1 + 8, v52);
  *&v62[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, v62);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a3;
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v9);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v5 + 8));
  v7 = *(v6 + 48);
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v6 + 16) + 8, v7);
  if (*(v8 + 40))
  {
    v9[0] = 0;
    v9[1] = 0;
    re::ecs2::RigidBodyComponentStateImpl::simToECS(a1 + 248, a2, v9, v6, v7, v8);
  }
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 24; j != 56; j += 8)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + j), v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::RigidBodyComponent,re::ecs2::RigidBodyComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v2)
  {

    re::ecs2::RigidBodyComponent::removeFromSimulation(v2);
  }
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD4760;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD47B8;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD4810;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4868;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD4760;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD47B8;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD4810;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD4868;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4760;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4760;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD47B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD47B8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4810;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4810;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4868;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4868;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD48C0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD48C0;
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((v3 + 128), 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::registerScene(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(a1 + 48);
  *&v51 = 0;
  v15 = *(a1 + 16);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(a1 + 48);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(v24, a1 + 8, v52);
  *&v62[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, v62);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::unregisterScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 72) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 128, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, v11[1]);
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 64, &v15);
  }

  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::ecsToSim(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  v17 = a2;
  v5 = *(*(a1 + 72) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v17) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 176, v5);
  v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v5);
  v7 = *(*v6 + 224);
  v8 = v6[3];
  v9 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v8);
  if (*(v9 + 40))
  {
    v10 = (*(*v7 + 24))(v7, v16, v6, v8, v9, a3);
  }

  else
  {
    v10 = 0;
  }

  v11 = v6[5];
  v12 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v11);
  if (*(v12 + 40))
  {
    v10 |= (*(*v7 + 32))(v7, v16, v6, v11, v12, a3);
  }

  v13 = v6[6];
  v14 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v6[2] + 8, v13);
  if (!*(v14 + 40))
  {
    if (!v10)
    {
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
    }

    goto LABEL_8;
  }

  if ((v10 | (*(*v7 + 40))(v7, v16, v6, v13, v14, a3)))
  {
LABEL_8:
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v5);
  }

  return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::simToECS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3;
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), &v7);
  v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v4 + 8));
  return re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](*(v5 + 16) + 8, *(v5 + 48));
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::onPhysicsSimulationRootUpdated(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v28[0] = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 64), v28);
  if (v6 == -1)
  {
    v7 = 0;
  }

  else
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, *(*(a1 + 72) + 16 * v6 + 8));
  }

  re::StackScratchAllocator::StackScratchAllocator(v28);
  v22[0] = 0;
  v22[1] = 0;
  v23 = 1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  re::BucketArray<re::ecs2::Entity const*,32ul>::init(v22, v28, 1uLL);
  *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = a2;
  for (i = v26; v26; i = v26)
  {
    v9 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, i - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v22, --v26);
    ++v27;
    v10 = re::ecs2::EntityComponentCollection::get((v9 + 6), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v10)
    {
      v11 = v10;
      for (j = 24; j != 56; j += 8)
      {
        v13 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + j), v11);
        if (v13 != -1 && (v14 & 0xFFFFFF00000000) != 0)
        {
          v16 = v13;
          v17 = v14;
          goto LABEL_16;
        }
      }

      v16 = -1;
      v17 = 0xFFFFFFFFLL;
LABEL_16:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(v7, v16, v17, 0);
    }

    v18 = v9[43];
    if (v18)
    {
      v19 = v9[45];
      v20 = 8 * v18;
      do
      {
        v21 = *v19++;
        *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v22) = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v22);
  if (v22[0] && (v23 & 1) == 0)
  {
    (*(*v22[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v28);
}

re *re::ecs2::PhysicsSubsystemImpl<re::ecs2::ForceEffectComponent,re::ecs2::ForceEffectComponentStateImpl>::onPhysicsComponentDeactivated(uint64_t a1, uint64_t a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v3 = result;
    for (i = *(result + 18); i; --i)
    {
      result = re::ecs2::ForceEffectComponent::removeDefinitionLast(v3, *(v3 + 80));
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      while (1)
      {
        v4 = *(v3 + 1);
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = *(v3 + 1);
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = (v3 + 24);
          if ((v8 & 1) == 0)
          {
            v15 = *(v3 + 4);
          }

          v16 = *(v3 + 1);
          v15[v16++] = v6;
          *(v3 + 1) = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CD4948;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CD49A0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CD49F8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CD4A50;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CD4948;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CD49A0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CD49F8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CD4A50;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ForceEffectComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::setComponentState(a1, v9, v10, 0);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4948;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4948;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD49A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD49A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD49F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD49F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD4A50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ForceEffectComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD4A50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4AA8;
  a1[31] = &unk_1F5CD5350;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);
  return a1;
}

void re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::~PhysicsSubsystemImpl(void *a1)
{
  *a1 = &unk_1F5CD4AA8;
  a1[31] = &unk_1F5CD5350;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 1);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::init(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((v3 + 128), 0);
  *(v3 + 36) += 2;
  *(v3 + 21) = 0;
  v3 = (v3 + 176);
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, 0);
  *(v3 + 4) += 2;
  *(v3 + 5) = 0;
  *(v3 + 6) = a2;
  *(v3 + 7) = v3 + 72;
  *(v3 + 64) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::deinit(void *a1)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit((a1 + 1));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 8));
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 16));
  a1[21] = 0;
  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 22));
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  return result;
}

unint64_t re::ecs2::PhysicsSubsystemImpl<re::ecs2::BallSocketJointComponent,re::ecs2::ConstraintComponentStateImpl<re::ecs2::BallSocketJointComponent>>::registerScene(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(a1 + 136);
  v5 = *(a1 + 144);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 152);
    }

    else
    {
      v6 = *(a1 + 160);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (a1 + 152);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 160);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 128, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::init(v12, a1 + 8, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 128, v44);
    v13 = v44;
    goto LABEL_49;
  }

LABEL_17:
  v51 = 0u;
  v44 = 0u;
  *&v45 = 0;
  v46 = 0u;
  v47 = 0u;
  *(&v45 + 1) = -1;
  v48 = 0;
  v49 = 1;
  v50 = 0uLL;
  v14 = *(a1 + 48);
  *&v51 = 0;
  v15 = *(a1 + 16);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>,4ul>::setBucketsCapacity((a1 + 8), (v14 + 4) >> 2);
    v15 = *(a1 + 16);
  }

  if (v15 <= v14 >> 2)
  {
    v53 = 0;
    memset(v62, 0, sizeof(v62));
    v40 = MEMORY[0x1E69E9C10];
    v54 = 136315906;
    v55 = "operator[]";
    v56 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    v57 = 858;
    v58 = 2048;
    v59 = v14 >> 2;
    v60 = 2048;
    v61 = v15;
    _os_log_send_and_compose_impl(v41, &v53, v62, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v54, 38, v42, v43);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash("assertion failure: (m_size > 0) Array is empty");
    __break(1u);
  }

  if (*(a1 + 24))
  {
    v16 = a1 + 32;
  }

  else
  {
    v16 = *(a1 + 40);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 48);
  ++*(a1 + 56);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v44;
  v20 = v45;
  v21 = v46;
  *(v18 + 48) = v47;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v47 + 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v44);
  v23 = *(a1 + 48);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 8, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BallSocketJointComponent>::init(v24, a1 + 8, v52);
  *&v62[0] = *(a1 + 48) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 64), &v52, v62);
  v25 = *(a1 + 48);
  v26 = *(a1 + 168);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 168) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 128), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 168) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 144))
    {
      v30 = a1 + 152;
    }

    else
    {
      v30 = *(a1 + 160);
    }

    *(v30 + 8 * *(a1 + 136) - 8) &= v28;
  }

  v31 = *(a1 + 48);
  v32 = *(a1 + 216);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 216) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 176), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 216) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 192))
    {
      v36 = a1 + 200;
    }

    else
    {
      v36 = *(a1 + 208);
    }

    *(v36 + 8 * *(a1 + 184) - 8) &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 176, v13);
  if (*(a1 + 240) == 1)
  {
    v38 = *(a1 + 224);
    v39 = *(v52 + 376);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1 + 8);
  }

  return result;
}