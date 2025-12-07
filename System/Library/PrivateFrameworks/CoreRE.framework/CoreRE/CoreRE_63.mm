void *re::allocInfo_AcousticMeshAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197AE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197B70, "AcousticMeshAsset");
    __cxa_guard_release(&qword_1EE197AE8);
  }

  return &unk_1EE197B70;
}

void re::initInfo_AcousticMeshAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v11[0] = 0x7370B71E3F67FEC0;
  v11[1] = "AcousticMeshAsset";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE197AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197AF8))
  {
    v7 = re::introspectionAllocator();
    re::introspect_AcousticMeshAssetMeshType(v7, v8);
    v9 = (*(*v7 + 32))(v7, 72, 8);
    *v9 = 1;
    *(v9 + 8) = "meshType";
    *(v9 + 16) = &qword_1EE197B28;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0x800000001;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 56) = 0;
    *(v9 + 64) = 0;
    qword_1EE197AF0 = v9;
    __cxa_guard_release(&qword_1EE197AF8);
  }

  *(this + 2) = 0x2F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE197AF0;
  *(this + 9) = re::internal::defaultConstruct<re::AcousticMeshAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AcousticMeshAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AcousticMeshAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AcousticMeshAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v10 = v12;
}

re::GeomMesh *re::internal::defaultConstruct<re::AcousticMeshAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC6700;
  *(a3 + 8) = 0;
  result = re::GeomMesh::GeomMesh((a3 + 16), 0);
  *(a3 + 752) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AcousticMeshAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{

  re::GeomMesh::~GeomMesh((a3 + 16));
}

re::GeomMesh *re::internal::defaultConstructV2<re::AcousticMeshAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CC6700;
  *(a1 + 8) = 0;
  result = re::GeomMesh::GeomMesh((a1 + 16), 0);
  *(a1 + 752) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AcousticMeshAsset>(uint64_t a1)
{

  re::GeomMesh::~GeomMesh((a1 + 16));
}

void re::AcousticMeshAsset::~AcousticMeshAsset(id *this)
{
  re::GeomMesh::~GeomMesh(this + 2);
}

{

  re::GeomMesh::~GeomMesh(this + 2);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AcousticMeshAsset::assetType(re::AcousticMeshAsset *this)
{
  {
    re::AcousticMeshAsset::assetType(void)::type = "AcousticMesh";
    qword_1EE1C6E28 = 0;
    re::AssetType::generateCompiledExtension(&re::AcousticMeshAsset::assetType(void)::type);
  }

  return &re::AcousticMeshAsset::assetType(void)::type;
}

re::DynamicString *re::AcousticMeshAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::AcousticMeshAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::AcousticMeshAsset::assetType(v3);
  v5[0] = re::AcousticMeshAsset::assetType(void)::type;
  v5[1] = strlen(re::AcousticMeshAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::AcousticMeshAssetCompiler::assetIntrospectionType(re::AcousticMeshAssetCompiler *this)
{
  if ((atomic_load_explicit(&qword_1EE197B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197B10))
  {
    qword_1EE197B08 = re::internal::getOrCreateInfo("AcousticMeshAsset", re::allocInfo_AcousticMeshAsset, re::initInfo_AcousticMeshAsset, &unk_1EE197B00, 0);
    __cxa_guard_release(&qword_1EE197B10);
  }

  return qword_1EE197B08;
}

void re::AcousticMeshAssetCompiler::getSupportedExtensions(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

__n128 re::AcousticMeshAssetCompiler::compile@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = 100;
  *(a2 + 16) = re::AssetErrorCategory(void)::instance;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

re *re::internal::destroyPersistent<re::AcousticMeshAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];

    re::GeomMesh::~GeomMesh(v1 + 2);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::AcousticMeshAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return re::internal::writeGeomMeshToStream(a3 + 16, a2);
  }

  return 0;
}

BOOL re::AcousticMeshAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    return 1;
  }

  if (v3 != 1)
  {
    return 0;
  }

  if (a3)
  {
    v9 = &unk_1F5D0AE00;
    v10 = a3;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (*(*a3 + 40))(a3);
    v15 = 0;
    GeomMeshFromStream = re::internal::readGeomMeshFromStream((a2 + 16), &v9, v5);
    if (v12)
    {
      (*(*v10 + 24))(v10);
    }

    if (!GeomMeshFromStream)
    {
      return 0;
    }
  }

  v7 = re::createMDLMeshFromGeomMesh((a2 + 16), re::AcousticMeshAsset::kMaterialAttributeName, a3);
  re::ObjCObject::operator=((a2 + 752), v7);

  return *(a2 + 752) != 0;
}

void sub_1E207E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a13)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(exception_object);
}

re *re::AcousticMeshAssetLoader::unloadAsset(re::AcousticMeshAssetLoader *this, re *a2)
{
  if (a2)
  {
    return re::internal::destroyPersistent<re::AcousticMeshAsset>(a2);
  }

  return result;
}

uint64_t re::AcousticMeshAssetLoader::isSupportedSourceExtension(re::AcousticMeshAssetLoader *this, const char *__s)
{
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v10 = v3;
  if (v3)
  {
    memcpy(__dst, __s, v3);
  }

  *(__dst + v4) = 0;
  v5 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v6 = (__dst + v10);
  }

  else
  {
    v6 = (__dst[0] + __dst[1]);
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v7 != v6)
  {
    do
    {
      *v7 = __tolower(*v7);
      v7 = (v7 + 1);
    }

    while (v7 != v6);
    v5 = v10;
  }

  if ((v5 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

void sub_1E207E5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::AcousticMeshAssetLoader::introspectionType(re::AcousticMeshAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE197B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197B10))
  {
    qword_1EE197B08 = re::internal::getOrCreateInfo("AcousticMeshAsset", re::allocInfo_AcousticMeshAsset, re::initInfo_AcousticMeshAsset, &unk_1EE197B00, 0);
    __cxa_guard_release(&qword_1EE197B10);
  }

  return qword_1EE197B08;
}

semaphore_t *re::LocklessRingBuffer::LocklessRingBuffer(semaphore_t *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CC67B0;
  this[6] = 0;
  *(this + 4) = 0;
  if (!semaphore_create(*MEMORY[0x1E69E9A60], this + 6, 0, 0))
  {
    return this;
  }

  re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Failed to create mach semaphore!", "kr == 0", "LocklessRingBuffer", 22);
  result = _os_crash("assertion failure: (kr == 0) Failed to create mach semaphore!");
  __break(1u);
  return result;
}

void re::LocklessRingBuffer::~LocklessRingBuffer(re::LocklessRingBuffer *this)
{
  *this = &unk_1F5CC67B0;
  v2 = *(this + 6);
  if (v2)
  {
    semaphore_destroy(*MEMORY[0x1E69E9A60], v2);
    *(this + 6) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::LocklessRingBuffer::~LocklessRingBuffer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::LocklessRingBuffer::initializeIntoBuffer(re::LocklessRingBuffer *this, void *a2)
{
  *(this + 4) = a2;
  atomic_fetch_add(re::g_GlobalCounter, 1u);
  v3 = atomic_load(re::g_GlobalCounter);
  result = getpid();
  v5 = 0;
  v6 = *(this + 4);
  *v6 = v3 | (result << 32);
  atomic_store(0, v6 + 3);
  atomic_store(0, (*(this + 4) + 16));
  atomic_store(0, (*(this + 4) + 8));
  do
  {
    atomic_store(0, (*(this + 4) + v5 + 32));
    atomic_store(0, (*(this + 4) + v5 + 40));
    v5 += 16;
  }

  while (v5 != 48);
  return result;
}

BOOL re::LocklessRingBuffer::waitForSemaphoreSignal@<W0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(a4) = vcvtmd_u64_f64(a2);
    v5 = a4 | (((a2 - floor(a2)) * 1000000000.0) << 32);
    do
    {
      v6 = v5;
      v7 = semaphore_timedwait(*(a1 + 24), v6);
    }

    while (v7 == 14);
  }

  else
  {
    do
    {
      v7 = MEMORY[0x1E6907EC0](*(a1 + 24), *&a2);
    }

    while (v7 == 14);
  }

  return v7 == 0;
}

uint64_t re::LocklessRingBuffer::writerAcquireBuffer(uint64_t a1, uint64_t a2, char a3)
{
  v3 = atomic_load((*(a1 + 32) + 8));
  if (v3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v7) = 0;
  v8 = 0;
  v9 = -1;
  v10 = 0xFFFFFFFFLL;
  do
  {
    if (!atomic_load((*(a1 + 32) + v8 + 32)))
    {
      v12 = atomic_load((*(a1 + 32) + v8 + 40));
      if (v12 >= v9)
      {
        v10 = v10;
      }

      else
      {
        v9 = v12;
        v10 = v7;
      }
    }

    v8 += 16;
    v7 = (v7 + 1);
  }

  while (v8 != 48);
  while (1)
  {
    while (v10 == -1)
    {
      if (re::LocklessRingBuffer::waitForSemaphoreSignal(a1, *&a2, a3, v7))
      {
        LODWORD(v7) = 0;
        v18 = 0;
        v19 = -1;
        v10 = 0xFFFFFFFFLL;
        do
        {
          if (!atomic_load((*(a1 + 32) + v18 + 32)))
          {
            v21 = atomic_load((*(a1 + 32) + v18 + 40));
            if (v21 >= v19)
            {
              v10 = v10;
            }

            else
            {
              v19 = v21;
              v10 = v7;
            }
          }

          v18 += 16;
          v7 = (v7 + 1);
        }

        while (v18 != 48);
        if (v10 != -1)
        {
          continue;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v13 = 0;
    atomic_compare_exchange_strong((*(a1 + 32) + 16 * v10 + 32), &v13, 1u);
    if (!v13)
    {
      break;
    }

    LODWORD(v7) = 0;
    v14 = 0;
    v15 = -1;
    v10 = 0xFFFFFFFFLL;
    do
    {
      if (!atomic_load((*(a1 + 32) + v14 + 32)))
      {
        v17 = atomic_load((*(a1 + 32) + v14 + 40));
        if (v17 >= v15)
        {
          v10 = v10;
        }

        else
        {
          v15 = v17;
          v10 = v7;
        }
      }

      v14 += 16;
      v7 = (v7 + 1);
    }

    while (v14 != 48);
  }

  do
  {
    v22 = 0;
  }

  while (semaphore_timedwait(*(a1 + 24), v22) == 14);
  v23 = atomic_load((*(a1 + 32) + 24));
  atomic_store(v23 + 1, (*(a1 + 32) + 16 * v10 + 40));
  v24 = v23;
  atomic_compare_exchange_strong((*(a1 + 32) + 24), &v24, v23 + 1);
  if (v24 != v23)
  {
    v25 = v24;
    do
    {
      atomic_store(v24 + 1, (*(a1 + 32) + 16 * v10 + 40));
      atomic_compare_exchange_strong((*(a1 + 32) + 24), &v25, v24 + 1);
      v26 = v25 == v24;
      v24 = v25;
    }

    while (!v26);
  }

  return v10;
}

uint64_t re::LocklessRingBuffer::writerReleaseBuffer(uint64_t this, uint64_t a2, uint64_t a3)
{
  v5 = atomic_load((*(this + 32) + 16 * a2 + 32));
  if (v5 == 1)
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v7 = 1;
    atomic_compare_exchange_strong((*(this + 32) + 16 * a2 + 32), &v7, v6);
  }

  else
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Trying to release a buffer that is not in writing state!", "currState == BufferState::kWriting", "writerReleaseBuffer", 215, v3, v4);
    this = _os_crash("assertion failure: (currState == BufferState::kWriting) Trying to release a buffer that is not in writing state!");
    __break(1u);
  }

  return this;
}

uint64_t re::LocklessRingBuffer::getLatestReadableBufferIndex(re::LocklessRingBuffer *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0xFFFFFFFFLL;
  do
  {
    v5 = atomic_load((*(this + 4) + v2 + 32));
    if (v5 == 4)
    {
      v6 = atomic_load((*(this + 4) + v2 + 40));
      if (v6 <= v3)
      {
        v4 = v4;
      }

      else
      {
        v3 = v6;
        v4 = v1;
      }
    }

    v2 += 16;
    ++v1;
  }

  while (v2 != 48);
  if (v4 >= 3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v4 = 0xFFFFFFFFLL;
    do
    {
      v10 = atomic_load((*(this + 4) + v8 + 32));
      if ((v10 & 0xFFFFFFFE) == 2)
      {
        v11 = atomic_load((*(this + 4) + v8 + 40));
        v12 = v11 >= v9;
        if (v11 > v9)
        {
          v9 = v11;
        }

        if (v12)
        {
          v4 = v7;
        }

        else
        {
          v4 = v4;
        }
      }

      v8 += 16;
      ++v7;
    }

    while (v8 != 48);
  }

  return v4;
}

uint64_t re::LocklessRingBuffer::readerAcquireBuffer(re::LocklessRingBuffer *this)
{
  v1 = atomic_load((*(this + 4) + 16));
  if (v1)
  {
    if (v1 == this)
    {
      goto LABEL_3;
    }

    return 0xFFFFFFFFLL;
  }

  atomic_compare_exchange_strong((*(this + 4) + 16), &v1, this);
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  do
  {
    v6 = atomic_load((*(this + 4) + v3 + 32));
    if (v6 == 2)
    {
      v7 = atomic_load((*(this + 4) + v3 + 40));
      if (v7 <= v4)
      {
        v5 = v5;
      }

      else
      {
        v4 = v7;
        v5 = v2;
      }
    }

    v3 += 16;
    ++v2;
  }

  while (v3 != 48);
  while (v5 != -1)
  {
    v8 = 2;
    atomic_compare_exchange_strong((*(this + 4) + 16 * v5 + 32), &v8, 4u);
    if (v8 == 2)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v5 = 0xFFFFFFFFLL;
    do
    {
      v12 = atomic_load((*(this + 4) + v10 + 32));
      if (v12 == 2)
      {
        v13 = atomic_load((*(this + 4) + v10 + 40));
        if (v13 <= v11)
        {
          v5 = v5;
        }

        else
        {
          v11 = v13;
          v5 = v9;
        }
      }

      v10 += 16;
      ++v9;
    }

    while (v10 != 48);
  }

  return v5;
}

uint64_t re::LocklessRingBuffer::readerAcquireAnyWrittenBuffer(re::LocklessRingBuffer *this)
{
  v1 = atomic_load((*(this + 4) + 16));
  if (v1)
  {
    if (v1 == this)
    {
      goto LABEL_3;
    }

    return 0xFFFFFFFFLL;
  }

  atomic_compare_exchange_strong((*(this + 4) + 16), &v1, this);
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = atomic_load((*(this + 4) + v3 + 32));
    if ((v7 & 0xFFFFFFFE) == 2)
    {
      v8 = atomic_load((*(this + 4) + v3 + 40));
      if (v8 >= v5)
      {
        v4 = v7;
        v5 = v8;
        v6 = v2;
      }
    }

    v3 += 16;
    v2 = (v2 + 1);
  }

  while (v3 != 48);
  while (v6 != -1)
  {
    v9 = v4;
    if ((v4 & 0xFFFFFFFE) == 2)
    {
      v9 = v4;
      atomic_compare_exchange_strong((*(this + 4) + 16 * v6 + 32), &v9, 4u);
      if (v9 == v4)
      {
        break;
      }
    }

    if (v9 - 4 <= 0xFFFFFFFD)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v6 = 0xFFFFFFFFLL;
      do
      {
        v13 = atomic_load((*(this + 4) + v11 + 32));
        if ((v13 & 0xFFFFFFFE) == 2)
        {
          v14 = atomic_load((*(this + 4) + v11 + 40));
          if (v14 >= v12)
          {
            v4 = v13;
            v12 = v14;
            v6 = v10;
          }
        }

        v11 += 16;
        v10 = (v10 + 1);
      }

      while (v11 != 48);
    }
  }

  return v6;
}

void re::LocklessRingBuffer::readerReleaseBuffer(re::LocklessRingBuffer *this, uint64_t a2)
{
  v4 = atomic_load((*(this + 4) + 16));
  if (v4)
  {
    if (v4 != this)
    {
      return;
    }
  }

  else
  {
    atomic_compare_exchange_strong((*(this + 4) + 16), &v4, this);
    if (v4)
    {
      return;
    }
  }

  v5 = atomic_load((*(this + 4) + 16 * a2 + 32));
  if (v5 != 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Trying to free a buffer that is not in reading state!", "currState == BufferState::kReading", "readerReleaseBuffer", 389, v2, v3);
    _os_crash("assertion failure: (currState == BufferState::kReading) Trying to free a buffer that is not in reading state!");
    __break(1u);
    goto LABEL_12;
  }

  v6 = 4;
  atomic_compare_exchange_strong((*(this + 4) + 16 * a2 + 32), &v6, 0);
  if (v6 == 4)
  {

LABEL_12:
    JUMPOUT(0x1E6907EA0);
  }
}

unint64_t re::LocklessRingBuffer::readerReleaseAnyWrittenBuffer(unint64_t this)
{
  v1 = this;
  v2 = atomic_load((*(this + 32) + 16));
  if (v2)
  {
    if (v2 != this)
    {
      return this;
    }
  }

  else
  {
    atomic_compare_exchange_strong((*(this + 32) + 16), &v2, this);
    if (v2)
    {
      return this;
    }
  }

  for (i = 32; i != 80; i += 16)
  {
    v4 = atomic_load((*(v1 + 32) + i));
    if (v4 == 2)
    {
      v5 = 2;
      atomic_compare_exchange_strong((*(v1 + 32) + i), &v5, 0);
      if (v5 == 2)
      {
        this = MEMORY[0x1E6907EA0](*(v1 + 24));
      }
    }
  }

  return this;
}

uint64_t re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(re::AssetHandle *a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v8 = re::IntrospectionSharedLock::IntrospectionSharedLock(&v33);
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = *(v9 + 280);
    if (v10 == re::SceneAsset::assetType(v8))
    {
      v11 = re::AssetHandle::blockUntilLoaded<re::SceneAsset>(a1);
      LOBYTE(v29) = 0;
      LOBYTE(v32) = 0;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v11 + 32);
        v14 = 112 * v12;
        do
        {
          v13 += 14;
          v14 -= 112;
        }

        while (v14);
        LOBYTE(v12) = v29;
        v15 = v32;
      }

      else
      {
        v15 = 0;
      }

      v25 = (v15 | v12 & a4) ^ 1;
      goto LABEL_20;
    }
  }

  else
  {
    re::SceneAsset::assetType(v8);
  }

  AssetLoader = re::AssetHandle::getAssetLoader(a1);
  v17 = (*(*AssetLoader + 128))(AssetLoader);
  v32 = *(v17 + 32);
  v28 = *(v17 + 32);
  v18 = re::AssetHandle::assetInfo(a1);
  if (v18[17])
  {
    v19 = v18[18];
  }

  else
  {
    v19 = v18 + 137;
  }

  v20 = *(a1 + 1);
  if (v20)
  {
    v21 = *(v20 + 280);
  }

  else
  {
    v21 = 0;
  }

  v22 = re::AssetHandle::assetWithType(a1, v21, 0);
  v27 = v32;
  v25 = v24;
  if (v30 == 1 && (v31 & 1) != 0)
  {
    if (v31)
    {
    }
  }

LABEL_20:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v33);
  return v25 & 1;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::SceneAsset>(re::SceneAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::SceneAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

void anonymous namespace::checkSceneEntityComponentsAreAvailableForMajorVersion(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, re *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = a1[6];
  if (v11)
  {
    v12 = a1[8];
    v13 = v12 + 24 * v11;
    do
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        v15 = (*(*v14 + 40))(v14);
        (*(*v15 + 56))(&v40);
        v36 = v40;
        v35 = v40;
        if ((v17 & 1) == 0)
        {
          *a3 = 1;
          if (a2 <= 5)
          {
            re::IntrospectionSharedLock::IntrospectionSharedLock(&v43);
            v18 = (*(*v15 + 48))(v15);
            v19 = (*(*v18 + 32))(v18);
            v20 = v19;
            if (v19 < 2)
            {
              goto LABEL_17;
            }

            v21 = *re::assetsLogObjects(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v45 = v22;
              _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
            }

            v23 = v20 & 0x7FFFFFFF;
            if (v23)
            {
              v24 = 0;
              while (1)
              {
                if (v24)
                {
                  v25 = *((*(*v18 + 40))(v18, v24) + 16);
                  if (v25 == 10 || v25 == 6)
                  {
                    break;
                  }
                }

                if (v23 == ++v24)
                {
                  goto LABEL_17;
                }
              }

              v28 = re::StringID::StringID(&v41, v27);
              v29 = *re::assetsLogObjects(v28);
              v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
              if (v30)
              {
                *buf = 136315394;
                v45 = v42;
                v46 = 2048;
                v47 = 6;
                _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "%s can't be written for any targeted major versions prior to %lli", buf, 0x16u);
              }

              if (v41)
              {
                if (v41)
                {
                }
              }

              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v43);
              *a4 = 1;
            }

            else
            {
LABEL_17:
              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v43);
            }
          }
        }

        if (v38 == 1 && (v39 & 1) != 0)
        {
          if (v39)
          {
          }
        }
      }

      v12 += 24;
    }

    while (v12 != v13);
  }

  v31 = a1[11];
  if (v31)
  {
    v32 = a1[13];
    v33 = 112 * v31;
    do
    {
      v32 += 14;
      v33 -= 112;
    }

    while (v33);
  }
}

void anonymous namespace::getTypeInitialRelease(re **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a5, a1, &v40);
  *a6 = -1;
  *(a6 + 8) = 0;
  if (v40)
  {
    re::TypeInfo::TypeInfo(v38, &v41);
    v11 = re::TypeInfo::name(v38);
    v12 = v11[1];
    if (a4 == 1)
    {
      v18 = 0;
      v19 = *(v39 + 64);
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      DWORD1(v43) = 0x7FFFFFFF;
      do
      {
        v20 = *(v39 + 72);
        if (v20)
        {
          if (v21 - 1 >= 5)
          {
            v22 = 0;
          }

          else
          {
            v22 = v21;
          }

          v20(&v34, a3, v22);
          v23 = v34;
        }

        else
        {
          LOBYTE(v35) = 0;
          v23 = *(v39 + 64);
          LODWORD(v34) = v23;
        }

        *a6 = v23;
        v24 = re::Optional<re::StringID>::operator=(a6 + 8, &v35);
        if (v35 == 1 && (v36 & 1) != 0)
        {
          if (v36)
          {
          }
        }

        if (*(a6 + 8) == 1)
        {
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(buf, (a6 + 16));
        }

        if (*a6 > v19)
        {
          v19 = *a6;
        }

        ++v18;
      }

      while (v18 != 3);
      if (*&buf[28])
      {
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(v31, buf);
        LOBYTE(v34) = 1;
        v35 = v32;
        v36 = v33;
        v32 = 0;
        v33 = &str_67;
        v25 = re::Optional<re::StringID>::operator=(a6 + 8, &v34);
        if (v34 == 1)
        {
          if (v35)
          {
            if (v35)
            {
            }
          }

          v35 = 0;
          v36 = &str_67;
        }

        if (v32)
        {
          if (v32)
          {
          }
        }

        v32 = 0;
        v33 = &str_67;
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
      }

      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(buf);
    }

    else
    {
      if (!a4)
      {
        v13 = *re::assetsLogObjects(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v15 = v13;
          v16 = 2;
LABEL_52:
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v27 = *(v39 + 72);
      if (v27)
      {
        if (a4 - 2 >= 4)
        {
          v28 = 0;
        }

        else
        {
          v28 = a4;
        }

        v27(buf, a3, v28);
        v29 = *buf;
      }

      else
      {
        buf[8] = 0;
        v29 = *(v39 + 64);
        *buf = v29;
      }

      *a6 = v29;
      v26 = re::Optional<re::StringID>::operator=(a6 + 8, &buf[8]);
      if (buf[8] == 1 && (buf[16] & 1) != 0)
      {
        if (buf[16])
        {
        }
      }

      v19 = *a6;
    }

    if (v19 < 0xFFFFFFFE)
    {
LABEL_50:
      *a6 = v19;
      return;
    }

    v30 = *re::assetsLogObjects(v26);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v19;
      v14 = "%s has unsupported introducedInRelease value of %i";
      v15 = v30;
      v16 = 18;
      goto LABEL_52;
    }

LABEL_49:
    v19 = -1;
    goto LABEL_50;
  }

  v17 = *re::assetsLogObjects(v10);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "%s didn't return a TypeID", buf, 0xCu);
  }

  *a6 = -1;
}

uint64_t anonymous namespace::checkTypeIsAvailableForMajorVersion(re **a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v4 = a3;
  v33 = *MEMORY[0x1E69E9840];
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v27);
  if (v25 != 1)
  {
    v12 = re::StringID::StringID(v32, v11);
    v13 = *re::assetsLogObjects(v12);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v14)
    {
      *buf = 136315138;
      *&buf[4] = *&v32[8];
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Didn't perform availability check because introspection info for type %s isn't available.", buf, 0xCu);
    }

    if (v32[0])
    {
      if (v32[0])
      {
      }
    }

    goto LABEL_19;
  }

  re::TypeInfo::TypeInfo(v24, &v26);
  v7 = re::TypeInfo::name(v24);
  v8 = v7[1];
  if (v4 < 0xFFFFFFFE)
  {
    if (re::TypeAvailabilityUtilities::convertToRealityKitRelease(a2) < v4)
    {
      v15 = re::TypeAvailabilityUtilities::convertToMajorVersion(v4);
      v16 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(v15);
      re::getRequiredDeploymentTargetsForRelease(v16, v32);
      v18 = *&v32[8] >> 1;
      if ((v32[8] & 1) == 0)
      {
        v18 = v32[8] >> 1;
      }

      if (v18)
      {
        if (v32[8])
        {
          v19 = *&v32[16];
        }

        else
        {
          v19 = &v32[9];
        }

        v20 = re::DynamicString::format(buf, "%s is only available for %s or later.", v17, v8, v19);
      }

      else
      {
        v20 = re::DynamicString::format(buf, "%s is not available for any platform.", v17, v8);
      }

      v22 = *re::assetsLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        if (buf[8])
        {
          v23 = v31;
        }

        else
        {
          v23 = &buf[9];
        }

        *v28 = 136315138;
        v29 = v23;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "%s", v28, 0xCu);
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (*v32 && (v32[8] & 1) != 0)
      {
        (*(**v32 + 40))();
      }

      goto LABEL_5;
    }

LABEL_19:
    v10 = 1;
    goto LABEL_20;
  }

  v9 = *re::assetsLogObjects(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v32 = 136315394;
    *&v32[4] = v8;
    *&v32[12] = 1024;
    *&v32[14] = v4;
    _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "%s has unsupported introducedInRelease value of %i", v32, 0x12u);
  }

LABEL_5:
  v10 = 0;
LABEL_20:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v27);
  return v10;
}

_anonymous_namespace_ *re::TypeAvailabilityUtilities::checkComponentIsAvailableForMajorVersion(uint64_t a1, uint64_t a2, unsigned int a3, BOOL a4)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
  v7 = (*(*a1 + 40))(a1);
  (*(*v7 + 56))(&v18);
  v14 = v18;
  v8 = (*(*a1 + 40))(a1);
  v13 = v18;
  v11 = v10;
  if (v16 == 1 && (v17 & 1) != 0)
  {
    if (v17)
    {
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
  return v11;
}

void re::TypeAvailabilityUtilities::isAssetAllowedInRealityFile(re::TypeAvailabilityUtilities *this@<X0>, uint64_t a2@<X8>)
{
  if (re::ShaderLibraryAsset::assetType(this) == this)
  {
    re::WrappedError::make(&v5, @"RERealityFileWriterErrorDomain", 0x13, "ShaderLibraryAsset is not permitted in reality files.");
    v4 = v5;
    v5 = 0;
    *(a2 + 8) = v4;

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  *a2 = v3;
}

void re::TypeAvailabilityUtilities::getComponentInitialRelease(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a4@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v11);
  v7 = (*(*a1 + 40))(a1);
  (*(*v7 + 56))(&v10);
  v9 = v10;
  v8 = (*(*a1 + 40))(a1);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v11);
}

void re::TypeAvailabilityUtilities::getAssetInitialRelease(re::AssetHandle *a1@<X0>, unsigned int a2@<W1>, uint64_t a4@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
  AssetLoader = re::AssetHandle::getAssetLoader(a1);
  v13 = *((*(*AssetLoader + 128))(AssetLoader) + 32);
  v8 = re::AssetHandle::assetInfo(a1);
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = *(v9 + 280);
  }

  else
  {
    v10 = 0;
  }

  if (v8[17])
  {
    v11 = v8[18];
  }

  else
  {
    v11 = v8 + 137;
  }

  v12 = re::AssetHandle::assetWithType(a1, v10, 0);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
}

double re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo@<D0>(re::SceneAsset *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  *(a4 + 8) = 0;
  v5 = a4 + 8;
  v6 = *(a1 + 1);
  if (!v6)
  {
    re::SceneAsset::assetType(a1);
    goto LABEL_20;
  }

  v10 = *(v6 + 280);
  if (v10 != re::SceneAsset::assetType(a1))
  {
LABEL_20:
    *a4 = -1;
    return result;
  }

  v32 = 2;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  DWORD1(v31) = 0x7FFFFFFF;
  re::TypeAvailabilityUtilities::getAssetInitialRelease(a1, a2, &v27);
  v12 = re::AssetHandle::blockUntilLoaded<re::SceneAsset>(a1);
  if (v28 == 1)
  {
    v13 = v27;
    if (v13 >= re::TypeAvailabilityUtilities::convertToRealityKitRelease(a3))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v30, &v29);
    }
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v26);
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *(v12 + 32);
    v16 = 112 * v14;
    do
    {
      v15 = (v15 + 112);
      v16 -= 112;
    }

    while (v16);
  }

  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(v20, v30);
  v23[0] = 1;
  v24 = v21;
  v25 = v22;
  v21 = 0;
  v22 = &str_67;
  v17 = re::Optional<re::StringID>::operator=(v5, v23);
  if (v23[0] == 1)
  {
    if (v24)
    {
      if (v24)
      {
      }
    }

    v24 = 0;
    v25 = &str_67;
  }

  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
  if (v32)
  {
    v18 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(v32);
  }

  else
  {
    v18 = -1;
  }

  *a4 = v18;
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v26);
  if (v28 == 1 && (*&v29.var0 & 1) != 0)
  {
    if (*&v29.var0)
    {
    }
  }

  return re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
}

uint64_t re::TypeAvailabilityUtilities::convertToRealityKitRelease(uint64_t result)
{
  if ((result - 1) < 0xF)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2)
{
  v4 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return (*(a1 + 16) + 24 * v11 + 8);
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = (v9 + 24 * v8 + 8);
    if (re::StringID::operator==(v10, a2))
    {
      return v10;
    }

    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }
}

void anonymous namespace::getRequiredVersionFromComponents(re *a1, uint64_t *a2, uint64_t a3, re *a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    v7 = a6;
    v9 = a4;
    v11 = *(a1 + 6);
    if (v11)
    {
      v12 = *(a1 + 8);
      v13 = v12 + 24 * v11;
      v40 = v13;
      while (1)
      {
        v14 = *(v12 + 8);
        if (v14)
        {
          break;
        }

LABEL_36:
        v12 += 24;
        if (v12 == v13)
        {
          goto LABEL_37;
        }
      }

      v15 = (*(*v14 + 40))(v14);
      (*(*v15 + 56))(&v45);
      v16 = *((*(**(v12 + 8) + 40))(*(v12 + 8)) + 32);
      v41 = v45;
      v17 = v42;
      v18 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(*a2);
      if (v17 <= v18)
      {
        v18 = re::TypeAvailabilityUtilities::convertToMajorVersion(v17);
      }

      else
      {
        if (v17 == -1)
        {
          goto LABEL_32;
        }

        v18 = re::TypeAvailabilityUtilities::convertToMajorVersion(v17);
        *a2 = v18;
      }

      if (v18 >= v7)
      {
        if (v43 == 1)
        {
          re::StringID::StringID(&v46, &v44);
        }

        else
        {
          re::getRequiredDeploymentTargetsForRelease(v17, &v46);
          v19 = __s2 + 1;
          if (__s2[0])
          {
            v19 = __s2[1];
          }

          snprintf(__str, 0x100uLL, "%s is available for %s and later.", v16, v19);
          v20 = v46;
          if (v46 && (__s2[0] & 1) != 0)
          {
            v20 = (*(*v46 + 40))();
          }

          v46 = 0;
          __s2[0] = &str_67;
          v21 = strlen(__str);
        }

        v22 = v46;
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v46 >> 31) ^ (v46 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v46 >> 31) ^ (v46 >> 1))) >> 27));
        v24 = v23 ^ (v23 >> 31);
        v25 = *(a5 + 24);
        if (v25)
        {
          v26 = v24 % v25;
          v27 = *(*(a5 + 8) + 4 * (v24 % v25));
          if (v27 != 0x7FFFFFFF)
          {
            v28 = *(a5 + 16);
            v29 = __s2[0];
            while (1)
            {
              v30 = v28 + 24 * v27;
              v32 = *(v30 + 8);
              v31 = v30 + 8;
              if ((v32 ^ v22) <= 1)
              {
                v18 = *(v31 + 8);
                if (v18 == v29)
                {
                  break;
                }

                v18 = strcmp(v18, v29);
                if (!v18)
                {
                  break;
                }
              }

              v27 = *(v28 + 24 * v27) & 0x7FFFFFFF;
              if (v27 == 0x7FFFFFFF)
              {
                v9 = a4;
                v7 = a6;
                goto LABEL_26;
              }
            }

            v9 = a4;
            v7 = a6;
            v13 = v40;
            if ((v22 & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }

LABEL_26:
          v13 = v40;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        v18 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a5, v26, v24, &v46, &v46);
        ++*(a5 + 40);
        if (v46)
        {
LABEL_29:
          if (v46)
          {
          }
        }
      }

LABEL_32:
      if (v43 == 1 && (*&v44.var0 & 1) != 0)
      {
        if (*&v44.var0)
        {
        }
      }

      goto LABEL_36;
    }

LABEL_37:
    v33 = *(a1 + 11);
    if (v33)
    {
      v34 = *(a1 + 13);
      v35 = 112 * v33;
      do
      {
        v34 = (v34 + 112);
        v35 -= 112;
      }

      while (v35);
    }
  }

  else
  {
    v36 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "No Components initialized", __str, 2u);
    }

    *a2 = 0;
  }
}

uint64_t *anonymous namespace::getFormattedLog@<X0>(uint64_t a1@<X0>, re::StringID *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = 0;
    do
    {
      v9 = strlen(*(*(a1 + 16) + 24 * v5 + 16));
      re::DynamicString::append(&v13, *(*(a1 + 16) + 24 * v5 + 16), v9);
      if (v8 < *(a1 + 28) - 1)
      {
        re::DynamicString::append(&v13, "\n", 1uLL);
      }

      ++v8;
      v10 = *(a1 + 32);
      if (v10 <= v5 + 1)
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(a1 + 32);
      }

      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(a1 + 16) + 24 * v5) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v11;
LABEL_18:
      ;
    }

    while (v5 != v10);
  }

  re::StringID::StringID(a2, &v13);
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

uint64_t re::TypeAvailabilityUtilities::convertToMajorVersion(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 0xF)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      if ((*(v8 + v6) & 0x80000000) != 0)
      {
        v9 = 0xBF58476D1CE4E5B9 * ((*(v8 + v6 + 8) >> 31) ^ (*(v8 + v6 + 8) >> 1));
        v10 = (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31);
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(a1, v10 % *(a1 + 24), v10, v8 + v6 + 8, (v8 + v6 + 8));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_9, 4 * v2);
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, StringID *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  v13 = 24 * v8;
  *(v11 + v13) = v12 | 0x80000000;
  *(*(a1 + 16) + v13) = *(*(a1 + 16) + 24 * v8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  re::StringID::StringID((*(a1 + 16) + 24 * v8 + 8), a5);
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

BOOL re::NetworkAssetSerializationManager::serializeAsset(uint64_t a1, _anonymous_namespace_ *a2, re **a3, const re::IntrospectionBase **a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    re::TypeInfo::TypeInfo(v14, &v13);
    v10 = re::NetworkAssetSerializationManager::internalSerializeAsset(a1, a2, a3, v14, a4, a5);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    return v10;
  }

  else
  {

    return re::NetworkAssetSerializationManager::internalSerializeAsset(a1, a2, a3, 0, a4, a5);
  }
}

BOOL re::NetworkAssetSerializationManager::internalSerializeAsset(uint64_t a1, _anonymous_namespace_ *a2, const re::IntrospectionBase *a3, void *a4, const re::IntrospectionBase **a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    v27 = 0u;
    v26 = 0u;
    v25 = a6;
    if ((v16 & 1) == 0)
    {
      v18 = *re::assetsLogObjects(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21[0]) = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to serialize payload for asset", v21, 2u);
      }

      return 0;
    }

    return 1;
  }

  re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v25, a2);
  v11 = *(a1 + 24);
  *(v11 + 56) = a6;
  v12 = re::serializeObject(v21, v11, &v25, a5, a4);
  *(*(a1 + 24) + 448) = 0;
  v13 = v21[0];
  if ((v21[0] & 1) == 0)
  {
    v14 = *re::assetsLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = re::TypeInfo::name(a4)[1];
      if (v23)
      {
        v20 = *&v24[7];
      }

      else
      {
        v20 = v24;
      }

      *buf = 136315394;
      v34 = v19;
      v35 = 2080;
      v36 = v20;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Failed to serialize payload for asset. Type: %s. Details: %s", buf, 0x16u);
    }
  }

  if (v21[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  re::StreamWriterCopyingOutputStream::Flush(&v25);
  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))();
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v25);
  return (v13 & 1) != 0;
}

re::FixedArrayInputStream *re::NetworkAssetSerializationManager::deserializeAsset(re::NetworkAssetSerializationManager *this, AssetService *a2, const char **a3, re::AssetSerializationScheme *a4, const char *a5, uint64_t a6, unint64_t *a7)
{
  if (*(this + 40) == 1)
  {
    var0 = a2[226].var0;
    v19 = a3;
    v15 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](var0, &v19);
    (*(**v15 + 128))(*v15);
    v16 = (*(**v15 + 128))();
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    re::TypeInfo::TypeInfo(v21, &v20);
    v17 = re::NetworkAssetSerializationManager::internalDeserializeAsset(this, a2, a3, v21, a4, a5, a6, a7);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    return v17;
  }

  else
  {

    return re::NetworkAssetSerializationManager::internalDeserializeAsset(this, a2, a3, 0, a4, a5, a6, a7);
  }
}

re::FixedArrayInputStream *re::NetworkAssetSerializationManager::internalDeserializeAsset(re::NetworkAssetSerializationManager *this, AssetService *a2, const char **a3, re::TypeInfo *a4, re::AssetSerializationScheme *a5, const char *a6, uint64_t a7, unint64_t *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  var0 = a2[226].var0;
  v30 = a3;
  v17 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](var0, &v30);
  (*(**v17 + 128))(*v17);
  v18 = *v17;
  v19 = (*(**v17 + 128))(*v17);
  if (*(this + 40) == 1)
  {
    re::FixedArrayInputStream::FixedArrayInputStream(&v30, a6, a7, -1);
    v20 = (*(*v18 + 136))(v18);
    v21 = *(this + 4);
    *(v21 + 56) = a5;
    v22 = re::deserializeObject(v35, v21, &v30, v20, a4);
    *(*(this + 4) + 448) = 0;
    v23 = v35[0];
    if (v35[0])
    {
      *a8 = v34[4];
    }

    else
    {
      v26 = *re::assetsLogObjects(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = re::TypeInfo::name(a4)[1];
        *buf = 136315138;
        v39 = v28;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to deserialize asset for type %s.", buf, 0xCu);
      }
    }

    if (v35[0] & 1) == 0 && v36 && (v37)
    {
      (*(*v36 + 40))();
    }

    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v30);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v24 = v19;
    v30 = &unk_1F5D0A468;
    v31 = 0;
    v32 = a6;
    v33 = a7;
    re::FixedArrayInputStream::FixedArrayInputStream(v34, a6, a7, -1);
    v25 = a2[226].var0;
    v35[1] = 0;
    v35[2] = 0;
    v35[0] = v25;
    v29[0] = 0;
    v20 = re::AssetUtilities::deserializeIntrospectedAsset(&v30, a3, v35, v24, a5, 2, v29);
    *a8 = v34[12];
    v30 = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v34);
  }

  return v20;
}

void *re::allocInfo_AudioLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_85, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_85))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197C50, "AudioLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_85);
  }

  return &unk_1EE197C50;
}

void re::initInfo_AudioLoadDescriptorParameters(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xB1F2D5B8ED8A952ALL;
  v28[1] = "AudioLoadDescriptorParameters";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE197C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197C08))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "framework";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x5800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197C30 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "resource";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x8000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197C38 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "assetURL";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0xA800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE197C40 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_AudioFileAssetConfiguration(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "configuration";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 12;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE197C48 = v26;
    __cxa_guard_release(&qword_1EE197C08);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE197C30;
  *(this + 9) = re::internal::defaultConstruct<re::AudioLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

double re::internal::defaultConstruct<re::AudioLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a3 + 16) = xmmword_1E3061530;
  *(a3 + 32) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 128) = 0;
  *(a3 + 168) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AudioLoadDescriptorParameters>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[168] == 1)
  {
    re::DynamicString::deinit((a3 + 176));
  }

  if (a3[128] == 1)
  {
    re::DynamicString::deinit((a3 + 136));
  }

  if (a3[88] == 1)
  {
    re::DynamicString::deinit((a3 + 96));
  }

  if (a3[32] == 1)
  {

    re::DynamicString::deinit((a3 + 40));
  }
}

double re::internal::defaultConstructV2<re::AudioLoadDescriptorParameters>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1E3061530;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AudioLoadDescriptorParameters>(_BYTE *result)
{
  if (result[168] == 1)
  {
    v2 = re::DynamicString::deinit((result + 176));
  }

  if (result[128] == 1)
  {
    v2 = re::DynamicString::deinit((result + 136));
  }

  if (result[88] == 1)
  {
    v2 = re::DynamicString::deinit((result + 96));
  }

  if (result[32] == 1)
  {

    return re::DynamicString::deinit((result + 40));
  }

  return v2;
}

re::AudioFileAssetProvider *re::AudioFileAssetProvider::AudioFileAssetProvider(re::AudioFileAssetProvider *this, re::AssetManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CC6850;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE197C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197C28))
  {
    qword_1EE197C20 = re::internal::getOrCreateInfo("AudioLoadDescriptorParameters", re::allocInfo_AudioLoadDescriptorParameters, re::initInfo_AudioLoadDescriptorParameters, &unk_1EE197C10, 0);
    __cxa_guard_release(&qword_1EE197C28);
  }

  qword_1EE197C18 = qword_1EE197C20;
  if (a2)
  {
    *(this + 24) = *(a2 + 113);
    v4 = *(a2 + 252);
    *(this + 5) = *(a2 + 238);
    *(this + 6) = v4;
  }

  return this;
}

void re::AudioFileAssetProvider::~AudioFileAssetProvider(re::AudioFileAssetProvider *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AudioFileAssetProvider::loadAssetWithPath(re::AudioFileAssetProvider *this, re::AudioFileAsset *a2, const re::DynamicString *a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    v7 = *(a4 + 16);
  }

  else
  {
    v7 = (a4 + 9);
  }

  v8 = re::AudioFileAsset::prepareToLoadFrom(a3, v7, 0);
  v9 = *(a2 + 3);
  v20 = re::AudioFileAsset::assetType(v8);
  v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v9, &v20);
  (*(**v10 + 128))(*v10);
  v11 = (*(**v10 + 24))(*v10, a3, 0, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v12 = re::DynamicString::setCapacity(&v20, 0);
  v26 = 0;
  v27 = 0;
  v24 = a3;
  v25 = 0;
  v15 = *re::AudioFileAsset::assetType(v12);
  *&v16 = strlen(v15);
  re::DynamicString::operator=(&v20, &v15);
  re::types::Ok<re::AssetLoadResult>::Ok(&v15, &v20);
  *this = 1;
  *(this + 1) = v15;
  *(this + 4) = v17;
  *(this + 1) = v16;
  v13 = v19;
  *(this + 40) = v18;
  *(this + 56) = v13;
  if (v25)
  {

    v25 = 0;
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

void sub_1E208203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  re::types::Ok<re::AssetLoadResult>::~Ok(va);
  _Unwind_Resume(a1);
}

void re::AudioFileAssetProvider::load(const re::AssetLoadDescriptor *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 8))
  {
    v5 = *(a2 + 2);
  }

  else
  {
    v5 = a2 + 9;
  }

  v6 = strcmp(v5, "AudioOptions");
  v7 = v6;
  v8 = *re::AudioFileAsset::assetType(v6);
  if (*(a2 + 15))
  {
    v9 = *(a2 + 16);
  }

  else
  {
    v9 = a2 + 121;
  }

  v10 = strcmp(v9, v8);
  if (v7 | v10)
  {
    v11 = v22;
    v12 = v23;
    *a3 = 0;
    *(a3 + 8) = v11;
    *(a3 + 24) = v12;
  }

  else
  {
    LOWORD(v22) = 0;
    BYTE2(v22) = 0;
    *(&v22 + 4) = 0;
    v23 = xmmword_1E3061530;
    v24 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v32 = 0;
    v35 = 0;
    Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(a2, &v22);
    if (Descriptor)
    {
      v14 = re::globalAllocators(Descriptor);
      v15 = (*(*v14[2] + 32))(v14[2], 176, 8);
      re::AudioFileAsset::AudioFileAsset(v15);
    }

    v16 = v19;
    v17 = v20;
    v18 = v21;
    *a3 = 0;
    *(a3 + 8) = v16;
    *(a3 + 24) = v17;
    *(a3 + 32) = v18;
    if (v35 == 1 && v36)
    {
      if (BYTE8(v36))
      {
        (*(*v36 + 40))();
      }

      v36 = 0u;
      v37 = 0u;
    }

    if (v32 == 1 && v33)
    {
      if (BYTE8(v33))
      {
        (*(*v33 + 40))();
      }

      v34 = 0u;
      v33 = 0u;
    }

    if (v29 == 1 && v30)
    {
      if (BYTE8(v30))
      {
        (*(*v30 + 40))();
      }

      v30 = 0u;
      v31 = 0u;
    }

    if (v24 == 1 && v25 && (v26 & 1) != 0)
    {
      (*(*v25 + 40))();
    }
  }
}

void sub_1E20824C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a21)
  {
    if (a22)
    {
      (*(*a21 + 40))();
    }
  }

  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);
  _Unwind_Resume(a1);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString ***a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE197C28, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE197C28);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE197C20 = re::internal::getOrCreateInfo("AudioLoadDescriptorParameters", re::allocInfo_AudioLoadDescriptorParameters, re::initInfo_AudioLoadDescriptorParameters, &unk_1EE197C10, 0);
      __cxa_guard_release(&qword_1EE197C28);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE197C20;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(re::AudioLoadDescriptorParameters *this)
{
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::DynamicString::deinit((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::DynamicString::deinit((this + 96));
  }

  if (*(this + 32) == 1)
  {
    re::DynamicString::deinit((this + 40));
  }
}

void re::AudioFileAssetProvider::makeDescriptorWithBundle(void *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  LOWORD(v45) = 0;
  BYTE2(v45) = 0;
  *(&v45 + 4) = 0;
  v46 = xmmword_1E3061530;
  v47[0] = 0;
  v51 = 0;
  v53 = 0;
  v54[0] = 0;
  v57[0] = 0;
  v60 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v9 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v39 = "AudioOptions";
  v40 = 12;
  v10 = re::DynamicString::operator=(a4, &v39);
  v11 = *re::AudioFileAsset::assetType(v10);
  v12 = strlen(v11);
  v39 = v11;
  v40 = v12;
  re::DynamicString::operator=((a4 + 112), &v39);
  v13 = [v7 bundleIdentifier];
  v14 = [v13 UTF8String];

  LOBYTE(v39) = 1;
  re::DynamicString::DynamicString(&v40, &v42);
  re::Optional<re::DynamicString>::operator=(v54, &v39);
  if (v39 == 1 && v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  v15 = [(_anonymous_namespace_ *)v8 UTF8String];
  LOBYTE(v39) = 1;
  re::DynamicString::DynamicString(&v40, &v36);
  re::Optional<re::DynamicString>::operator=(v57, &v39);
  if (v39 == 1 && v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  v16 = a3[1];
  v45 = *a3;
  v46 = v16;
  re::Optional<re::DynamicString>::operator=(v47, a3 + 32);
  v17 = v51;
  if (v51)
  {
    if ((*(a3 + 72) & 1) == 0)
    {
      v17 = 0;
      v51 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(a3 + 72) & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = 1;
    v51 = 1;
  }

  v52 = *(a3 + 19);
LABEL_15:
  v53 = *(a3 + 80);
  v20[0] = v45;
  v20[1] = v46;
  v21 = v47[0];
  if (v47[0] == 1)
  {
    re::DynamicString::DynamicString(&v22, &v48);
    v17 = v51;
  }

  v24 = v17;
  if (v17)
  {
    v25 = v52;
  }

  v26 = v53;
  v27 = v54[0];
  if (v54[0] == 1)
  {
    re::DynamicString::DynamicString(&v28, &v55);
  }

  v30 = v57[0];
  if (v57[0] == 1)
  {
    re::DynamicString::DynamicString(&v31, &v58);
  }

  v33 = v60;
  if (v60 == 1)
  {
    re::DynamicString::DynamicString(&v34, &v61);
  }

  re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE197C18, v20, 0);
  if (v33 == 1 && v34)
  {
    if (BYTE8(v34))
    {
      (*(*v34 + 40))(v34, v35, v18, v19);
    }

    v34 = 0u;
    v35 = 0u;
  }

  if (v30 == 1 && v31)
  {
    if (BYTE8(v31))
    {
      (*(*v31 + 40))(v31, v32, v18, v19);
    }

    v32 = 0u;
    v31 = 0u;
  }

  if (v27 == 1 && v28)
  {
    if (BYTE8(v28))
    {
      (*(*v28 + 40))(v28, v29, v18, v19);
    }

    v28 = 0u;
    v29 = 0u;
  }

  if (v21 == 1 && v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v22, v23, v18, v19);
    }

    v23 = 0u;
    v22 = 0u;
  }

  if (v36 && (v37 & 1) != 0)
  {
    (*(*v36 + 40))(v36, v38, v18, v19);
  }

  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v44, v18, v19);
  }

  if (v60 == 1 && v61)
  {
    if (BYTE8(v61))
    {
      (*(*v61 + 40))(v61, v62, v18, v19);
    }

    v61 = 0u;
    v62 = 0u;
  }

  if (v57[0] == 1 && v58)
  {
    if (BYTE8(v58))
    {
      (*(*v58 + 40))(v58, v59, v18, v19);
    }

    v59 = 0u;
    v58 = 0u;
  }

  if (v54[0] == 1 && v55)
  {
    if (BYTE8(v55))
    {
      (*(*v55 + 40))(v55, v56, v18, v19);
    }

    v55 = 0u;
    v56 = 0u;
  }

  if (v47[0] == 1 && v48 && (v49 & 1) != 0)
  {
    (*(*v48 + 40))(v48, v50, v18, v19);
  }
}

void sub_1E2082CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a9);
  if (a36 && (a37 & 1) != 0)
  {
    (*(*a36 + 40))();
  }

  if (a45)
  {
    if (a46)
    {
      (*(*a45 + 40))();
    }
  }

  re::AssetLoadDescriptor::~AssetLoadDescriptor(v50);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);

  _Unwind_Resume(a1);
}

uint64_t re::AudioFileAssetProvider::makeDescriptorWithURL@<X0>(_anonymous_namespace_ *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  LOWORD(v34) = 0;
  BYTE2(v34) = 0;
  *(&v34 + 4) = 0;
  v35 = xmmword_1E3061530;
  v36[0] = 0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v46 = 0;
  v49[0] = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v31 = "AudioOptions";
  v32 = 12;
  v7 = re::DynamicString::operator=(a3, &v31);
  v8 = *re::AudioFileAsset::assetType(v7);
  v9 = strlen(v8);
  v31 = v8;
  v32 = v9;
  re::DynamicString::operator=((a3 + 112), &v31);
  LOBYTE(v31) = 1;
  re::DynamicString::DynamicString(&v32, a1);
  re::Optional<re::DynamicString>::operator=(v49, &v31);
  if (v31 == 1 && v32 && (v33 & 1) != 0)
  {
    (*(*v32 + 40))();
  }

  v10 = a2[1];
  v34 = *a2;
  v35 = v10;
  re::Optional<re::DynamicString>::operator=(v36, a2 + 32);
  v11 = v40;
  if (v40)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      v11 = 0;
      v40 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = 1;
    v40 = 1;
  }

  v41 = *(a2 + 19);
LABEL_11:
  v42 = *(a2 + 80);
  v15[0] = v34;
  v15[1] = v35;
  v16 = v36[0];
  if (v36[0] == 1)
  {
    re::DynamicString::DynamicString(&v17, &v37);
    v11 = v40;
  }

  v19 = v11;
  if (v11)
  {
    v20 = v41;
  }

  v21 = v42;
  v22 = v43;
  if (v43 == 1)
  {
    re::DynamicString::DynamicString(&v23, &v44);
  }

  v25 = v46;
  if (v46 == 1)
  {
    re::DynamicString::DynamicString(&v26, &v47);
  }

  v28 = v49[0];
  if (v49[0] == 1)
  {
    re::DynamicString::DynamicString(&v29, &v50);
  }

  result = re::AssetLoadDescriptor::setIntrospectableData(a3, qword_1EE197C18, v15, 0);
  if (v28 == 1)
  {
    result = v29;
    if (v29)
    {
      if (BYTE8(v29))
      {
        result = (*(*v29 + 40))(v29, v30, v13, v14);
      }

      v29 = 0u;
      v30 = 0u;
    }
  }

  if (v25 == 1)
  {
    result = v26;
    if (v26)
    {
      if (BYTE8(v26))
      {
        result = (*(*v26 + 40))(v26, v27, v13, v14);
      }

      v27 = 0u;
      v26 = 0u;
    }
  }

  if (v22 == 1)
  {
    result = v23;
    if (v23)
    {
      if (BYTE8(v23))
      {
        result = (*(*v23 + 40))(v23, v24, v13, v14);
      }

      v23 = 0u;
      v24 = 0u;
    }
  }

  if (v16 == 1)
  {
    result = v17;
    if (v17)
    {
      if (BYTE8(v17))
      {
        result = (*(*v17 + 40))(v17, v18, v13, v14);
      }

      v18 = 0u;
      v17 = 0u;
    }
  }

  if (v49[0] == 1)
  {
    result = v50;
    if (v50)
    {
      if (BYTE8(v50))
      {
        result = (*(*v50 + 40))(v50, v51, v13, v14);
      }

      v50 = 0u;
      v51 = 0u;
    }
  }

  if (v46 == 1)
  {
    result = v47;
    if (v47)
    {
      if (BYTE8(v47))
      {
        result = (*(*v47 + 40))(v47, v48, v13, v14);
      }

      v48 = 0u;
      v47 = 0u;
    }
  }

  if (v43 == 1)
  {
    result = v44;
    if (v44)
    {
      if (BYTE8(v44))
      {
        result = (*(*v44 + 40))(v44, v45, v13, v14);
      }

      v44 = 0u;
      v45 = 0u;
    }
  }

  if (v36[0] == 1)
  {
    result = v37;
    if (v37)
    {
      if (v38)
      {
        return (*(*v37 + 40))(v37, v39, v13, v14);
      }
    }
  }

  return result;
}

void sub_1E20832B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a9);
  re::AssetLoadDescriptor::~AssetLoadDescriptor(v40);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);
  _Unwind_Resume(a1);
}

__n128 re::AudioFileAssetProvider::resolveChild@<Q0>(re::AudioFileAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  return result;
}

void *re::AudioFileAssetProvider::getDescription(re::AudioFileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LOWORD(v10) = 0;
  BYTE2(v10) = 0;
  HIDWORD(v10) = 0;
  v11 = 0;
  v12 = xmmword_1E3061530;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v22 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(a2, &v10))
  {
    if (v22 == 1)
    {
      re::DynamicString::operator=(a3, v23);
    }

    else if (v18 == 1 && v20 == 1)
    {
      re::DynamicString::operator+(&v7, v19, "/");
      re::DynamicString::operator+(v9, &v7, v21);
      re::DynamicString::operator=(a3, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      if (v7 && (v8 & 1) != 0)
      {
        (*(*v7 + 40))();
      }
    }

    if (v10)
    {
      v5 = "streamedAsset";
    }

    else
    {
      v5 = "preloadAsset";
    }

    if (v10)
    {
      v6 = 13;
    }

    else
    {
      v6 = 12;
    }

    result = re::DynamicString::append(a3, v5, v6);
  }

  else
  {
    *&v9[0] = "mangled";
    *(&v9[0] + 1) = 7;
    result = re::DynamicString::operator=(a3, v9);
  }

  if (v22 == 1)
  {
    result = v23[0];
    if (v23[0])
    {
      if (v23[1])
      {
        result = (*(*v23[0] + 40))();
      }

      memset(v23, 0, sizeof(v23));
    }
  }

  if (v20 == 1)
  {
    result = *&v21[0];
    if (*&v21[0])
    {
      if (BYTE8(v21[0]))
      {
        result = (*(**&v21[0] + 40))();
      }

      memset(v21, 0, sizeof(v21));
    }
  }

  if (v18 == 1)
  {
    result = v19[0];
    if (v19[0])
    {
      if (v19[1])
      {
        result = (*(*v19[0] + 40))();
      }

      memset(v19, 0, sizeof(v19));
    }
  }

  if (v13 == 1)
  {
    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  return result;
}

void sub_1E208360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);
  _Unwind_Resume(a1);
}

re::ecs2::ECSJSONSerializer *re::ecs2::ECSJSONSerializer::ECSJSONSerializer(re::ecs2::ECSJSONSerializer *this)
{
  *&v4.var0 = 0xE1F66B0F30BD1E9ELL;
  v4.var1 = "ECSJSONSerializer";
  v2 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(this, &v4, 15);
  *v2 = &unk_1F5CC46A8;
  *(v2 + 336) = 1;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0;
  *(v2 + 380) = 0x7FFFFFFFLL;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 392) = 0;
  *(v2 + 416) = 0;
  *(v2 + 504) = 0;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CC68F0;
  return this;
}

re::ecs2::ECSJSONDeserializer *re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(re::ecs2::ECSJSONDeserializer *this, AssetService *a2)
{
  *&v7.var0 = 0x3373FC80C73C66A0;
  v7.var1 = "ECSJSONDeserializer";
  v4 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(this, &v7, 15);
  *v4 = &unk_1F5CBB1E0;
  *(v4 + 336) = 1;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0;
  *(v4 + 380) = 0x7FFFFFFFLL;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  *(v4 + 392) = 0;
  *(v4 + 416) = 0;
  *(v4 + 504) = 0;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0u;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0;
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }

  *this = &unk_1F5CC4600;
  v5 = re::DirectAssetDeserialize::DirectAssetDeserialize((this + 512), a2, 0);
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 77) = v5;
  *(this + 33) = this + 616;
  return this;
}

void *re::ecs2::ECSOPACKSerializer::ECSOPACKSerializer(void *a1, uint64_t a2)
{
  *&v6.var0 = 0x88B8E3BC1E0ECD0ALL;
  v6.var1 = "ECSOPACKSerializer";
  v4 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(a1, &v6);
  if (*&v6.var0)
  {
    if (*&v6.var0)
    {
    }
  }

  *a1 = &unk_1F5CC6958;
  a1[56] = a2;
  return a1;
}

uint64_t re::ecs2::ECSOPACKDeserializer::ECSOPACKDeserializer(uint64_t a1, uint64_t a2)
{
  *&v8.var0 = 0x337AFDA7A6DC2A0CLL;
  v8.var1 = "ECSOPACKDeserializer";
  v4 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(a1, &v8);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  *a1 = &unk_1F5CC69C0;
  *(a1 + 448) = 0;
  v5 = (*(*a2 + 32))(a2);
  v6 = re::ServiceLocator::service<re::AssetService>(v5);
  re::DirectAssetDeserialize::DirectAssetDeserialize((a1 + 456), v6, 0);
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 448) = a2;
  *(a1 + 560) = a1 + 456;
  *(a1 + 200) = a1 + 560;
  return a1;
}

void re::ecs2::ECSJSONSerializer::~ECSJSONSerializer(re::ecs2::ECSJSONSerializer *this)
{
  *this = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);

  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);
}

{
  *this = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSOPACKSerializer::~ECSOPACKSerializer(re::ecs2::ECSOPACKSerializer *this)
{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSOPACKDeserializer::~ECSOPACKDeserializer(re::ecs2::ECSOPACKDeserializer *this)
{
  *this = &unk_1F5CC69C0;
  *(this + 57) = &unk_1F5CB95A0;
  if (*(this + 464) == 1)
  {
    re::DynamicString::deinit((this + 512));
    re::DynamicString::deinit((this + 480));
  }

  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CC69C0;
  *(this + 57) = &unk_1F5CB95A0;
  if (*(this + 464) == 1)
  {
    re::DynamicString::deinit((this + 512));
    re::DynamicString::deinit((this + 480));
  }

  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(uint64_t a1, const StringID *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = &unk_1F5CC4710;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::Encoder(a1 + 24, v3);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 324) = 0x7FFFFFFFLL;
  return a1;
}

uint64_t re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 152) = 1024;
  *(result + 140) = 0;
  if ((atomic_load_explicit(&qword_1EE197CE8, memory_order_acquire) & 1) == 0)
  {
    v5 = result;
    v3 = __cxa_guard_acquire(&qword_1EE197CE8);
    result = v5;
    if (v3)
    {
      re::Defaults::intValue(&v6, "maxSerializationDepth", v2);
      if (v6)
      {
        v4 = SHIDWORD(v6);
      }

      else
      {
        v4 = 0;
      }

      _MergedGlobals_86 = v4;
      __cxa_guard_release(&qword_1EE197CE8);
      result = v5;
    }
  }

  if (_MergedGlobals_86)
  {
    *(result + 152) = _MergedGlobals_86;
  }

  return result;
}

uint64_t re::AssetCompatibility::sceneAssetNeedsCopyForWriting(re::AssetCompatibility *this, unint64_t a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = atomic_load((v4 + 896));
  if (v5 != 2)
  {
    v6 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v6, 0);
  }

  v7 = *(this + 1);
  if (!v7 || (v8 = atomic_load((v7 + 896)), v8 != 2))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "sceneAssetNeedsCopyForWriting", 329);
    _os_crash("assertion failure: (assetHandle.isLoaded()) ");
    __break(1u);
  }

  re::AssetHandle::serializableAsset(v16, this);
  if (a2 >= 5)
  {
    if (a2 >= 9)
    {
      if (a2 >= 0xC)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN2re18AssetCompatibility29sceneAssetNeedsCopyForWritingERKNS_11AssetHandleEx_block_invoke;
  v14[3] = &__block_descriptor_tmp_4;
  v15 = v9;
  v10 = v13;
  if ((v12 & 1) == 0)
  {
  }

  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v16);
  return v10 ^ 1u;
}

uint64_t ___ZN2re18AssetCompatibility29sceneAssetNeedsCopyForWritingERKNS_11AssetHandleEx_block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result;
  if (a2[4])
  {
    v6 = a2[6];
    if (v6)
    {
      v7 = 24 * v6;
      v8 = a2[8] + 8;
      do
      {
        v9 = (*(**v8 + 40))();
        (*(*v9 + 56))(&v22);
        result = (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 56))(&v19);
        if (v22 == v19 && v23 == v20 && v24 == HIWORD(v20) && ((v25 ^ v21) & 0xFFFFFF) == 0)
        {
          goto LABEL_22;
        }

        result = *v8;
        if (*v8)
        {
          result = (*(*result + 56))(result);
          if ((result & 1) == 0)
          {
            result = (*(**v8 + 48))();
            if (result)
            {
              goto LABEL_22;
            }
          }
        }

        v8 += 24;
        v7 -= 24;
      }

      while (v7);
    }
  }

  v10 = *(v4 + 32);
  if (v10)
  {
    v11 = a2[6];
    if (v11)
    {
      v12 = a2[8];
      v13 = 24 * v11;
      while (1)
      {
        v14 = *v12;
        v15 = re::ecs2::ComponentTypeRegistry::instance(result);
        result = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v15, v14);
        if (result)
        {
          v16 = (*(*result + 48))(result);
          re::getDowngradeFunctions(v16, v10, &v22);
          v17 = v26;
          result = v22;
          if (v22 && v27)
          {
            result = (*(*v22 + 40))();
          }

          if (v17)
          {
            break;
          }
        }

        v12 += 3;
        v13 -= 24;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      v18 = 0;
      goto LABEL_23;
    }
  }

LABEL_21:
  v18 = 1;
LABEL_23:
  *a3 = 1;
  a3[8] = v18;
  return result;
}

void anonymous namespace::walkEntityAssetData(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = 112 * v4;
    while (1)
    {
      if (v11 == 1)
      {
        v8 = v12;
        if (v12)
        {
          (*(a2 + 16))(a2, v6);
          v9 = *a3 == 1 ? a3[8] : 0;
        }

        else
        {
          v9 = 0;
          *a3 = v11;
          a3[8] = v8;
        }
      }

      else
      {
        v9 = 0;
        *a3 = v11;
        v10 = v12;
        v12 = 0;
        *(a3 + 1) = v10;
      }

      if ((v11 & 1) == 0)
      {
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      v6 += 112;
      v7 -= 112;
      if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *a3 = 1;
    a3[8] = 1;
  }
}

uint64_t *re::AssetCompatibility::sceneAssetCopyForWriting@<X0>(re::AssetCompatibility *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = *(this + 1);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v7 = atomic_load((v6 + 896));
  if (v7 != 2)
  {
    v8 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v8, 0);
  }

  v9 = *(this + 1);
  if (v9 && (v10 = atomic_load((v9 + 896)), v10 == 2))
  {
    re::AssetHandle::serializableAsset(&v33, this);
    v11 = v33;
    v13 = re::globalAllocators(v12);
    v14 = (*(*v13[2] + 32))(v13[2], 40, 8);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0;
    if (a2 >= 5)
    {
      if (a2 >= 9)
      {
        if (a2 >= 0xC)
        {
          v15 = 0;
        }

        else
        {
          v15 = 3;
        }
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZN2re18AssetCompatibility24sceneAssetCopyForWritingERKNS_11AssetHandleEx_block_invoke;
    v31[3] = &__block_descriptor_tmp_9;
    v32 = v15;
    if (v29[0])
    {
      v22 = *(this + 1);
      if (v22)
      {
        v23 = *(v22 + 24);
      }

      else
      {
        v23 = 0;
      }

      v25 = re::SceneAsset::assetType(v21);
      (*(*v23 + 424))(v28, v23, v14, v25, 0, 2, 0);
      re::AssetHandle::AssetHandle(&v26, v28);
      *a3 = 1;
      *(a3 + 8) = v26;
      v26 = 0uLL;
      *(a3 + 24) = v27;
      v27 = 0;
      re::AssetHandle::~AssetHandle(&v26);
      re::AssetHandle::~AssetHandle(v28);
    }

    else
    {
      v24 = v30;
      *a3 = 0;
      *(a3 + 8) = v24;
    }

    if ((v29[0] & 1) == 0)
    {
    }

    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v33);
  }

  else
  {
    v16 = re::AssetHandle::assetInfo(this);
    if (v16[17])
    {
      v18 = v16[18];
    }

    else
    {
      v18 = v16 + 137;
    }

    re::DynamicString::format(&v33, "Failed to load '%s'.", v17, v18);
    v19 = v28[0];
    v28[0] = 0;
    *a3 = 0;
    *(a3 + 8) = v19;

    result = v33;
    if (v33 && (v34 & 1) != 0)
    {
      return (*(*v33 + 40))();
    }
  }

  return result;
}

void anonymous namespace::makeError(uint64_t *__return_ptr a1@<X8>, __CFString *a2@<X0>, uint64_t a3@<X1>)
{
  v4 = *(a3 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    if (v4)
    {
      v6 = *(a3 + 16);
    }

    else
    {
      v6 = a3 + 9;
    }

    re::WrappedError::make(a1, @"REAssetCompatibilityErrorDomain", a2, v6);
  }

  else
  {
    re::WrappedError::make(a1, @"REAssetCompatibilityErrorDomain", a2, 0);
  }
}

void anonymous namespace::sceneAssetDeepCopy(re *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = *(a2 + 32);
    v7 = 112 * v3;
    do
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::add(a3, v8);
      re::ecs2::EntityAssetData::~EntityAssetData(v8);
      v6 += 112;
      v7 -= 112;
    }

    while (v7);
  }
}

void ___ZN2re18AssetCompatibility24sceneAssetCopyForWritingERKNS_11AssetHandleEx_block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32) && *(a2 + 48) >= 1)
  {
    v7 = *(a2 + 48) & 0x7FFFFFFFLL;
    v8 = v7 + 1;
    v9 = 24 * v7;
    v3 = &unk_1EE187000;
    do
    {
      v10 = v8 - 2;
      v11 = *(a2 + 48);
      if (v11 <= v8 - 2)
      {
        v41 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v34 = MEMORY[0x1E69E9C10];
        v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "operator[]";
        *&v44[12] = 1024;
        if (v35)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        *&v44[14] = 789;
        v45 = 2048;
        *v46 = v8 - 2;
        *&v46[8] = 2048;
        *&v46[10] = v11;
        _os_log_send_and_compose_impl(v36, &v41, &v47, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v40);
        _os_crash_msg();
        __break(1u);
LABEL_50:
        v41 = 0;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        v37 = MEMORY[0x1E69E9C10];
        v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v44 = 136315906;
        *&v44[4] = "removeAt";
        *&v44[12] = 1024;
        if (v38)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        *&v44[14] = 931;
        v45 = 2048;
        *v46 = v8 - 2;
        *&v46[8] = 2048;
        *&v46[10] = v11;
        _os_log_send_and_compose_impl(v39, &v41, &v47, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v44, 38, v40);
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(a2 + 64) + v9;
      v13 = (*(**(v12 - 16) + 40))(*(v12 - 16));
      (*(*v13 + 56))(&v47);
      (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 56))(v44);
      if (v47 == *v44 && WORD4(v47) == *&v44[8] && WORD5(v47) == HIWORD(*&v44[8]) && ((HIDWORD(v47) ^ *&v44[12]) & 0xFFFFFF) == 0)
      {
        re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities::prepareForRealityFileSerialization(a2, *(v12 - 16), v14);
      }

      a1 = *(v12 - 16);
      if (a1)
      {
        a1 = (*(*a1 + 56))(a1);
        if ((a1 & 1) == 0)
        {
          a1 = (*(**(v12 - 16) + 48))(*(v12 - 16));
          if (a1)
          {
            v15 = v12 - 24;
            re::ecs2::ComponentHandleAssetData::release(v15, *(a2 + 32));
            *v15 = 0;
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
            v11 = *(a2 + 48);
            if (v11 <= v10)
            {
              goto LABEL_50;
            }

            v16 = v11 - 1;
            if (v11 - 1 > v10)
            {
              v17 = *(a2 + 64);
              v18 = v17 + 24 * v11;
              v19 = v17 + v9;
              v20 = *(v18 - 24);
              *(v19 - 8) = *(v18 - 8);
              *(v19 - 24) = v20;
              v16 = *(a2 + 48) - 1;
            }

            *(a2 + 48) = v16;
            ++*(a2 + 56);
          }
        }
      }

      --v8;
      v9 -= 24;
    }

    while (v8 > 1);
  }

  v21 = *(v5 + 32);
  if (v21 && (v22 = *(a2 + 48)) != 0)
  {
    v23 = *(a2 + 64);
    v24 = &v23[3 * v22];
    while (1)
    {
      v26 = *v23;
      v25 = v23[1];
      v27 = re::ecs2::ComponentTypeRegistry::instance(a1);
      a1 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v27, v26);
      if (a1)
      {
        v28 = (*(*a1 + 48))(a1);
        re::getDowngradeFunctions(v28, v21, &v47);
        if (v48)
        {
          v29 = v49;
          while (1)
          {
            (*v29)(v44, v25, 0);
            if ((v44[0] & 1) == 0)
            {
              break;
            }

            if (++v29 == (v49 + 8 * v48))
            {
              goto LABEL_26;
            }
          }

          if (v44[16])
          {
            v32 = *&v46[4];
          }

          else
          {
            v32 = &v44[17];
          }

          re::DynamicString::format(&v41, "Downgrade function failed for component. %s", v30, v32);
          v3 = v43;
          v43 = 0;

          if (v41 && (v42 & 1) != 0)
          {
            (*(*v41 + 40))();
          }

          if (v44[0] & 1) == 0 && *&v44[8] && (v44[16])
          {
            (*(**&v44[8] + 40))();
          }

          v31 = 0;
        }

        else
        {
LABEL_26:
          v31 = 1;
        }

        a1 = v47;
        if (v47)
        {
          if (v49)
          {
            a1 = (*(*v47 + 40))();
          }
        }

        if (!v31)
        {
          break;
        }
      }

      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_43;
      }
    }

    v33 = v3;
    *a3 = 0;
    *(a3 + 8) = v33;
  }

  else
  {
LABEL_43:
    *a3 = 1;
    *(a3 + 8) = 1;
  }
}

uint64_t *re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary@<X0>(re::AssetCompatibility *this@<X0>, const re::internal::AssetEntry *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89[5] = *MEMORY[0x1E69E9840];
  if (a3 >= 0xC)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  if (a3 >= 9)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (a3 >= 5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(this + 35);
  if (v10)
  {
    v13 = *(a2 + 226);
    v80 = v10;
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v80);
    (*(**v14 + 128))(*v14);
    v15 = *v14;
    v16 = re::internal::AssetEntry::assetPointer(this);
    (*(*v15 + 272))(v89, v15, v16);
    if (v89[0])
    {
      v18 = (*(*v15 + 128))(v15);
      if (v18)
      {
        v20 = v18;
        if (*(v18 + 16) == 8)
        {
          v73 = 0;
          v70[1] = 0;
          v71 = 0;
          v70[0] = 0;
          v72 = 0;
          if (v9)
          {
            re::getDowngradeFunctions(v18, v9, &v80);
            re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(v70, &v80);
            if (v80)
            {
              if (v83)
              {
                (*(*v80 + 40))();
              }
            }
          }

          v21 = (*(*v15 + 288))(v15, v89[0], a4);
          if (!v71 && (v21 & 1) == 0)
          {
            *a5 = 1;
            *(a5 + 8) = 0;
            goto LABEL_127;
          }

          if (v21)
          {
            v32 = (*(*v15 + 296))(v15, v89[0], a4);
            if (v32)
            {
              v33 = 1;
              goto LABEL_48;
            }
          }

          else
          {
          }

          v34 = (*(*v15 + 136))(v15);
          if (!v34)
          {
            if (*(this + 21))
            {
              v46 = *(this + 22);
            }

            else
            {
              v46 = this + 169;
            }

            re::DynamicString::format(&v80, "Failed to allocate copy of AssetEntry '%s'.", v35, v46);
            v47 = v74;
            v74 = 0;
            *a5 = 0;
            *(a5 + 8) = v47;

            if (v80 && (v81 & 1) != 0)
            {
              (*(*v80 + 40))();
            }

LABEL_127:
            v30 = v70[0];
            if (!v70[0])
            {
              return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v89);
            }

            v31 = v73;
            if (!v73)
            {
              return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v89);
            }

            goto LABEL_129;
          }

          v32 = v34;
          v33 = 0;
LABEL_48:
          v80 = &unk_1F5CC6A90;
          *&v81 = a2;
          *(&v81 + 1) = v10;
          v82 = &v80;
          v88 = &v86;
          v85 = v32;
          v86 = &unk_1F5CC6A90;
          v87 = v81;
          v36 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v80);
          if (v33)
          {
            goto LABEL_49;
          }

          if (v10 == re::SceneAsset::assetType(v36))
          {
          }

          else
          {
            v81 = 0uLL;
            {
              if (*(this + 21))
              {
                v42 = *(this + 22);
              }

              else
              {
                v42 = this + 169;
              }

              re::DynamicString::format(&v80, "Failed to perform introspection copy of AssetEntry '%s'.", v41, v42);
              v43 = v74;
              v74 = 0;
              *a5 = 0;
              *(a5 + 8) = v43;

              v44 = v80;
              if (!v80 || (v81 & 1) == 0)
              {
                goto LABEL_126;
              }

              v45 = *(&v81 + 1);
              goto LABEL_115;
            }
          }

          v78 = 0;
          v75 = 0;
          *v76 = 0;
          v74 = 0;
          v77 = 0;
          v69[0] = &unk_1F5D0A7B0;
          v69[1] = &v74;
          v69[2] = 0;
          if ((*(*v15 + 72))(v15, v69, v89[0], 0))
          {
            v80 = &unk_1F5D0A468;
            LOBYTE(v81) = 0;
            *(&v81 + 1) = v78;
            v82 = *v76;
            re::FixedArrayInputStream::FixedArrayInputStream(&v83, v78, v76[0], -1);
            if (*(this + 14) == -1)
            {
              v49 = 0;
            }

            else
            {
              v49 = *(this + 14);
            }

            re::AssetSignpost::ScopeGuard::ScopeGuard(v68, 2056, v49, *v10);
            if ((*(*v15 + 24))(v15, v85, &v80, 0))
            {
              re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v68, v50, v51);
              v80 = &unk_1F5D0A468;
              re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v83);
              if (v74 && v78)
              {
                (*(*v74 + 40))();
              }

LABEL_49:
              if (v71)
              {
                v37 = v73;
                while (1)
                {
                  (*v37)(&v80, v85, a2);
                  if ((v80 & 1) == 0)
                  {
                    break;
                  }

                  if (++v37 == &v73[v71])
                  {
                    goto LABEL_53;
                  }
                }

                if (*(this + 21))
                {
                  v52 = *(this + 22);
                }

                else
                {
                  v52 = this + 169;
                }

                if (BYTE8(v81))
                {
                  v53 = v82;
                }

                else
                {
                  v53 = (&v81 + 9);
                }

                re::DynamicString::format(&v74, "Downgrade function failed for AssetHandle '%s': %s", v38, v52, v53);
                v54 = v65;
                v65 = 0;
                *a5 = 0;
                *(a5 + 8) = v54;

                if (v74 && (v75 & 1) != 0)
                {
                  (*(*v74 + 40))();
                }

                if (v80)
                {
                  goto LABEL_126;
                }

                v44 = v81;
                if (!v81 || (BYTE8(v81) & 1) == 0)
                {
                  goto LABEL_126;
                }

                v45 = v82;
LABEL_115:
                (*(*v44 + 40))(v44, v45);
LABEL_126:
                std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v85);
                goto LABEL_127;
              }

LABEL_53:
              LOBYTE(v74) = 1;
              v39 = v85;
              v85 = 0;
              v75 = v39;
              if (v88)
              {
                if (v88 == &v86)
                {
                  v79 = v76;
                  (*(*v88 + 3))();
                  v57 = v74;
                  LOBYTE(v80) = v74;
                  if ((v74 & 1) == 0)
                  {
                    goto LABEL_117;
                  }

                  v39 = v75;
LABEL_100:
                  v75 = 0;
                  *&v81 = v39;
                  if (v79)
                  {
                    if (v79 == v76)
                    {
                      v84 = &v81 + 2;
                      (*(*v79 + 24))();
                      v57 = v80;
                    }

                    else
                    {
                      v84 = v79;
                      v79 = 0;
                    }
                  }

                  else
                  {
                    v84 = 0;
                  }

LABEL_117:
                  *a5 = 1;
                  *(a5 + 8) = v57;
                  if ((v57 & 1) == 0)
                  {
                    goto LABEL_124;
                  }

                  v62 = v81;
                  v63 = v84;
                  *&v81 = 0;
                  *(a5 + 16) = v62;
                  if (v63)
                  {
                    if (v63 == (&v81 + 8))
                    {
                      *(a5 + 48) = a5 + 24;
                      (*(*v63 + 24))(v63);
                      if ((v80 & 1) == 0)
                      {
LABEL_124:
                        if (v74 == 1)
                        {
                          std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v75);
                        }

                        goto LABEL_126;
                      }

LABEL_123:
                      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v81);
                      goto LABEL_124;
                    }

                    v64 = &v84;
                    *(a5 + 48) = v63;
                  }

                  else
                  {
                    v64 = (a5 + 48);
                  }

                  *v64 = 0;
                  goto LABEL_123;
                }

                v40 = &v88;
                v79 = v88;
              }

              else
              {
                v40 = &v79;
              }

              *v40 = 0;
              v57 = 1;
              LOBYTE(v80) = 1;
              goto LABEL_100;
            }

            if (*(this + 21))
            {
              v58 = *(this + 22);
            }

            else
            {
              v58 = this + 169;
            }

            re::DynamicString::format(&v65, "Failed to deserialize asset blob of AssetEntry '%s'.", v50, v58);
            v59 = v67;
            v67 = 0;
            *a5 = 0;
            *(a5 + 8) = v59;

            if (v65 && (v66 & 1) != 0)
            {
              (*(*v65 + 40))();
            }

            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v68, v60, v61);
            v80 = &unk_1F5D0A468;
            re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v83);
          }

          else
          {
            if (*(this + 21))
            {
              v55 = *(this + 22);
            }

            else
            {
              v55 = this + 169;
            }

            re::DynamicString::format(&v80, "Failed to serialize asset blob of AssetEntry '%s'.", v48, v55);
            v56 = v65;
            v65 = 0;
            *a5 = 0;
            *(a5 + 8) = v56;

            if (v80 && (v81 & 1) != 0)
            {
              (*(*v80 + 40))();
            }
          }

          v44 = v74;
          if (!v74)
          {
            goto LABEL_126;
          }

          v45 = v78;
          if (!v78)
          {
            goto LABEL_126;
          }

          goto LABEL_115;
        }

        if (*(this + 21))
        {
          v28 = *(this + 22);
        }

        else
        {
          v28 = this + 169;
        }

        re::DynamicString::format(&v80, "Could not make a copy of AssetEntry '%s' because its IntrospectionType is not a structure type.", v19, v28);
        v26 = 3;
      }

      else
      {
        if (*(this + 21))
        {
          v27 = *(this + 22);
        }

        else
        {
          v27 = this + 169;
        }

        re::DynamicString::format(&v80, "Could not make a copy of AssetEntry '%s' because its AssetLoader does not have an IntrospectionBase.", v19, v27);
        v26 = 2;
      }
    }

    else
    {
      if (*(this + 21))
      {
        v25 = *(this + 22);
      }

      else
      {
        v25 = this + 169;
      }

      re::DynamicString::format(&v80, "Could not make a copy of AssetEntry '%s' because it does not have an AssetPointer.", v17, v25);
      v26 = 1;
    }

    v29 = v74;
    v74 = 0;
    *a5 = 0;
    *(a5 + 8) = v29;

    v30 = v80;
    if (!v80 || (v81 & 1) == 0)
    {
      return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v89);
    }

    v31 = *(&v81 + 1);
LABEL_129:
    (*(*v30 + 40))(v30, v31);
    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v89);
  }

  if (*(this + 21))
  {
    v22 = *(this + 22);
  }

  else
  {
    v22 = this + 169;
  }

  re::DynamicString::format(&v80, "Could not make a copy of AssetEntry '%s' because it does not have an AssetType.", a2, v22);
  v23 = v74;
  v74 = 0;
  *a5 = 0;
  *(a5 + 8) = v23;

  result = v80;
  if (v80 && (v81 & 1) != 0)
  {
    return (*(*v80 + 40))();
  }

  return result;
}

uint64_t re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(uint64_t result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = a2[1];
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = *(result + 16);
      *(result + 16) = a2[2];
      a2[2] = v10;
      v11 = *(result + 32);
      *(result + 32) = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

uint64_t *re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessaryFromAssetHandle@<X0>(re::AssetCompatibility *this@<X0>, const re::AssetHandle *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v9 = *(v6 + 3);
    if (v9)
    {

      return re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(v6, v9, a2, a3, a4);
    }

    v12 = re::AssetHandle::assetInfo(this);
    if (v12[17])
    {
      v14 = v12[18];
    }

    else
    {
      v14 = v12 + 137;
    }

    re::DynamicString::format(&v16, "Could not make a copy of AssetHandle '%s' because it does not have an AssetService pointer.", v13, v14);
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  v15 = v18;
  v18 = 0;
  *a4 = 0;
  *(a4 + 8) = v15;

  result = v16;
  if (v16 && (v17 & 1) != 0)
  {
    return (*(*v16 + 40))();
  }

  return result;
}

uint64_t re::AssetCompatibility::isSceneAssetCompatibleWithVersion(re::AssetCompatibility *this, const re::AssetHandle *a2)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = this;
  v5 = *(v2 + 280);
  if (v5 != re::SceneAsset::assetType(this))
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = atomic_load((v7 + 896));
  if (v8 != 2)
  {
    v9 = *(v4 + 1);
LABEL_7:
    re::AssetHandle::loadNow(v9, 0);
  }

  v10 = *(v4 + 1);
  if (!v10 || (v11 = atomic_load((v10 + 896)), v11 != 2))
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "isSceneAssetCompatibleWithVersion", 564);
    this = _os_crash("assertion failure: (assetHandle.isLoaded()) ");
    __break(1u);
LABEL_18:
    re::SceneAsset::assetType(this);
LABEL_19:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.assetType() == SceneAsset::assetType()", "isSceneAssetCompatibleWithVersion", 560);
    _os_crash("assertion failure: (assetHandle.assetType() == SceneAsset::assetType()) ");
    __break(1u);
  }

  re::AssetHandle::serializableAsset(v19, v4);
  v12 = a2 == 2;
  if (a2 >= 2)
  {
    v13 = 1;
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZN2re18AssetCompatibility33isSceneAssetCompatibleWithVersionERKNS_11AssetHandleEx_block_invoke;
      v17[3] = &__block_descriptor_tmp_23;
      v18 = 1;
      v13 = v16;
      if ((v15[0] & 1) == 0)
      {
      }
    }
  }

  else
  {
    v13 = 0;
  }

  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v19);
  return v13;
}

uint64_t ___ZN2re18AssetCompatibility33isSceneAssetCompatibleWithVersionERKNS_11AssetHandleEx_block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = 1;
  if (*(result + 32) == 1)
  {
    result = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(a2);
    if (result && (v5 = *(result + 48)) != 0)
    {
      v6 = *(result + 64);
      v7 = &v6[4 * v5];
      while (1)
      {
        v8 = *v6;
        if (!*v6)
        {
          v8 = v6[1];
        }

        v9 = *(v8 + 336);
        if (v9)
        {
          v10 = 0;
          v11 = *(v8 + 320);
          while ((*v11 & 0x80000000) == 0)
          {
            v11 += 80;
            if (v9 == ++v10)
            {
              LODWORD(v10) = *(v8 + 336);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        if (v10 != v9)
        {
          break;
        }

LABEL_24:
        v6 += 4;
        v4 = 1;
        if (v6 == v7)
        {
          goto LABEL_28;
        }
      }

      v12 = *(v8 + 320);
      while (*(v12 + 320 * v10 + 32) != 192)
      {
        if (v9 <= v10 + 1)
        {
          v13 = v10 + 1;
        }

        else
        {
          v13 = v9;
        }

        while (v13 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v12 + 320 * v10) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v10) = v13;
LABEL_23:
        if (v10 == v9)
        {
          goto LABEL_24;
        }
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_28:
  *a3 = 1;
  a3[8] = v4;
  return result;
}

uint64_t *re::AssetCompatibility::sceneAssetCopyCompatibilityVariant(re::AssetCompatibility *this, uint64_t a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = this;
  v5 = *(v2 + 280);
  if (v5 != re::SceneAsset::assetType(this))
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = atomic_load((v7 + 896));
  if (v8 != 2)
  {
    v9 = *(v4 + 1);
LABEL_7:
    re::AssetHandle::loadNow(v9, 0);
  }

  v10 = *(v4 + 1);
  if (!v10 || (v11 = atomic_load((v10 + 896)), v11 != 2))
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "sceneAssetCopyCompatibilityVariant", 599);
    this = _os_crash("assertion failure: (assetHandle.isLoaded()) ");
    __break(1u);
LABEL_18:
    re::SceneAsset::assetType(this);
LABEL_19:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.assetType() == SceneAsset::assetType()", "sceneAssetCopyCompatibilityVariant", 595);
    _os_crash("assertion failure: (assetHandle.assetType() == SceneAsset::assetType()) ");
    __break(1u);
  }

  re::AssetHandle::serializableAsset(v23, v4);
  v12 = v23[0];
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 40, 8);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  if (a2 <= 2)
  {
    if ((v21[0] & 1) == 0)
    {
    }
  }

  v17 = *(v4 + 1);
  if (v17)
  {
    v18 = *(v17 + 24);
  }

  else
  {
    v18 = 0;
  }

  v19 = re::SceneAsset::assetType(v16);
  (*(*v18 + 424))(v18, v15, v19, 0, 2, 0);
  return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v23);
}

void *___ZN2re18AssetCompatibility34sceneAssetCopyCompatibilityVariantERKNS_11AssetHandleEx_block_invoke@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  result = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(a1);
  if (result)
  {
    v4 = result;
    v5 = result[6];
    if (v5)
    {
      v6 = result[8];
      v7 = v6 + 32 * v5;
      do
      {
        v8 = *v6;
        v9 = *v6;
        if (!*v6)
        {
          v9 = *(v6 + 8);
        }

        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v24 = 0x7FFFFFFFLL;
        v10 = *(v9 + 38);
        if (v10)
        {
          if (*(v9 + 83) <= 3u)
          {
            v11 = 3;
          }

          else
          {
            v11 = *(v9 + 83);
          }

          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v21, v10, v11);
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(&v21, v9 + 304);
          v8 = *v6;
        }

        ++*(v6 + 16);
        re::ecs2::SerializableMaterialParameterBlock::clearParameters(v8);
        ++*(v6 + 16);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v6 + 16);
        ++*(v6 + 16);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v6 + 160);
        v12 = v23;
        if (v23)
        {
          v13 = 0;
          v14 = v22;
          while ((*v14 & 0x80000000) == 0)
          {
            v14 += 80;
            if (v23 == ++v13)
            {
              LODWORD(v13) = v23;
              break;
            }
          }
        }

        else
        {
          LODWORD(v13) = 0;
        }

        if (v13 != v23)
        {
          v15 = v22;
          v16 = v23;
          do
          {
            v17 = v15 + 320 * v13;
            v19 = *(v17 + 32);
            v18 = (v17 + 32);
            if (v19 != 192)
            {
              ++*(v6 + 16);
              re::ecs2::SerializableMaterialParameterBlock::addParameter(*v6, (v15 + 320 * v13 + 8), v18);
              v16 = v23;
              v15 = v22;
            }

            if (v16 <= v13 + 1)
            {
              v20 = v13 + 1;
            }

            else
            {
              v20 = v16;
            }

            while (v20 - 1 != v13)
            {
              LODWORD(v13) = v13 + 1;
              if ((*(v15 + 320 * v13) & 0x80000000) != 0)
              {
                goto LABEL_28;
              }
            }

            LODWORD(v13) = v20;
LABEL_28:
            ;
          }

          while (v13 != v12);
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v21);
        v6 += 32;
      }

      while (v6 != v7);
    }

    result = re::ecs2::Component::markDirty(v4);
  }

  *a2 = 1;
  a2[8] = 1;
  return result;
}

uint64_t re::AssetCompatibility::sceneRequiredVersion(re::SceneAsset *a1, uint64_t a2)
{
  re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo(a1, a2, 2, &v5);
  v3 = v5;
  if (v6 == 1 && (v7 & 1) != 0)
  {
    if (v7)
    {
    }
  }

  return re::TypeAvailabilityUtilities::convertToMajorVersion(v3);
}

void anonymous namespace::entityAssetDataDeepCopy(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  v6 = (a3 + 32);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 104) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = *a2;
  re::StringID::operator=((a3 + 8), (a2 + 8));
  *(a3 + 24) = *(a2 + 24);
  v7 = *(a2 + 48);
  *v6 = a1;
  v8 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v6, 0);
  ++*(a3 + 56);
  if (*(a3 + 40) < v7)
  {
    v8 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v6, v7);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = &v10[3 * v9];
    do
    {
      v12 = v10[1];
      if (v12)
      {
        v13 = *v10;
        v14 = re::ecs2::ComponentTypeRegistry::instance(v8);
        v15 = *(re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v14, v13) + 8);
        if (v15)
        {
          v16 = v15(v12);
          v25.n128_u64[0] = v13;
          v25.n128_u64[1] = v16;
          LOBYTE(v26) = 1;
        }

        else
        {
          v17 = (*(*v12 + 40))(v12);
          v18 = (*(*v17 + 48))(v17);
          v19 = re::introspectionAllocPointer(a1, 0, v18);
          v25 = a1;
          v26 = 0;
          v25.n128_u64[0] = v13;
          v25.n128_u64[1] = v19;
          LOBYTE(v26) = 0;
        }

        re::DynamicArray<re::BufferView>::add(v6, &v25);
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  v20 = *(a2 + 88);
  *(a3 + 72) = a1;
  v21 = a3 + 72;
  re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v21, 0);
  ++*(v21 + 24);
  if (*(v21 + 8) < v20)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v21, v20);
  }

  v22 = *(a2 + 88);
  if (v22)
  {
    v23 = *(a2 + 104);
    v24 = 112 * v22;
    do
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::add(v21, &v25);
      re::ecs2::EntityAssetData::~EntityAssetData(&v25);
      v23 += 112;
      v24 -= 112;
    }

    while (v24);
  }
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 40;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 320 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

re::ecs2::SerializedMaterialParameter *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::ecs2::SerializedMaterialParameter *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        result = re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v10 + 32), (*(a2 + 16) + v5 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 320;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 320 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 320 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 320 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 320 * v4;
}

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

re::ecs2::SerializedMaterialParameter *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(re::ecs2::SerializedMaterialParameter *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        v11 = *(a2 + 16) + v5;
        v12 = *(v11 + 8);
        v10[1] = v10[1] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
        v10[1] = *(v11 + 8) & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
        v10[2] = *(v11 + 16);
        *(v11 + 8) = 0;
        *(v11 + 16) = &str_67;
        result = re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v10 + 4), (*(a2 + 16) + v5 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 320;
    }
  }

  return result;
}

re::ecs2::SerializedMaterialParameter *re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(re::ecs2::SerializedMaterialParameter *this, const re::ecs2::SerializedMaterialParameter *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v6;
  *(this + 1) = v4;
  *(this + 2) = v5;
  re::AssetHandle::AssetHandle((this + 80), (a2 + 80));
  *(this + 104) = *(a2 + 104);
  v7 = *(a2 + 105);
  *(this + 105) = v7;
  if (v7 == 1)
  {
    *(this + 106) = *(a2 + 106);
  }

  v8 = *(a2 + 107);
  *(this + 107) = v8;
  if (v8 == 1)
  {
    *(this + 108) = *(a2 + 108);
  }

  v9 = *(a2 + 112);
  *(this + 112) = v9;
  if (v9 == 1)
  {
    *(this + 29) = *(a2 + 29);
  }

  v10 = *(a2 + 120);
  *(this + 120) = v10;
  if (v10 == 1)
  {
    *(this + 31) = *(a2 + 31);
  }

  v11 = *(a2 + 128);
  *(this + 128) = v11;
  if (v11 == 1)
  {
    *(this + 33) = *(a2 + 33);
  }

  v12 = *(a2 + 136);
  *(this + 136) = v12;
  if (v12 == 1)
  {
    *(this + 35) = *(a2 + 35);
  }

  v13 = *(a2 + 144);
  *(this + 144) = v13;
  if (v13 == 1)
  {
    *(this + 37) = *(a2 + 37);
  }

  v14 = *(a2 + 152);
  *(this + 152) = v14;
  if (v14 == 1)
  {
    *(this + 39) = *(a2 + 39);
  }

  v15 = *(a2 + 160);
  *(this + 160) = v15;
  if (v15 == 1)
  {
    *(this + 41) = *(a2 + 41);
  }

  v16 = *(a2 + 168);
  *(this + 168) = v16;
  if (v16 == 1)
  {
    *(this + 43) = *(a2 + 43);
  }

  v17 = *(a2 + 176);
  *(this + 176) = v17;
  if (v17 == 1)
  {
    *(this + 45) = *(a2 + 45);
  }

  v18 = *(a2 + 184);
  *(this + 184) = v18;
  if (v18 == 1)
  {
    *(this + 47) = *(a2 + 47);
  }

  v19 = *(a2 + 192);
  *(this + 192) = v19;
  if (v19 == 1)
  {
    *(this + 25) = *(a2 + 25);
  }

  re::DynamicArray<BOOL>::DynamicArray(this + 208, a2 + 26);
  *(this + 248) = *(a2 + 248);
  *(this + 32) = *(a2 + 32);
  v20 = *(a2 + 264);
  *(this + 280) = *(a2 + 280);
  *(this + 264) = v20;
  return this;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *result)
{
  if ((*result & 0x80000000) != 0)
  {
    *result &= ~0x80000000;
    v2 = (result + 6);
    re::StringID::destroyString((result + 2));

    re::StringID::destroyString(v2);
  }
}

double re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 320;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::StringID::destroyString((a1 + 8));
    *(a1 + 288) = 0;
    re::DynamicArray<unsigned long>::deinit(a1 + 240);

    re::AssetHandle::~AssetHandle((a1 + 112));
  }
}

__n128 std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC6A90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 8) + 1808);
  v6 = v1;
  v3 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v2, &v6);
  (*(**v3 + 128))(*v3);
  v4 = *(**v3 + 16);

  return v4();
}

uint64_t std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::MeshAssetData::generateMetaData(re::MeshAssetData *this)
{
  v30 = *MEMORY[0x1E69E9840];
  *(this + 17) = 0;
  ++*(this + 36);
  v1 = *(this + 2);
  if (v1)
  {
    for (i = 0; i != v1; ++i)
    {
      v4 = *(this + 2);
      if (v4 <= i)
      {
        v20 = 0;
        memset(v29, 0, sizeof(v29));
        v17 = MEMORY[0x1E69E9C10];
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v18 = 3;
        }

        else
        {
          v18 = 2;
        }

        v24 = 789;
        v25 = 2048;
        v26 = i;
        v27 = 2048;
        v28 = v4;
        _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
        _os_crash_msg();
        __break(1u);
      }

      v5 = *(this + 4);
      LODWORD(v29[0]) = 0;
      v6 = v5 + (i << 9);
      v7 = *(v6 + 168);
      if (v7)
      {
        v8 = 0;
        v9 = *(v6 + 184);
        v10 = v9 + 144 * v7;
        v11 = 0.0;
        do
        {
          v12 = *(v9 + 40);
          if (v12)
          {
            v13 = 0;
            v14 = *(v9 + 48);
            v15 = 4 * v12;
            do
            {
              v16 = *v14++;
              v8 += v16 - v13;
              v13 = v16;
              v15 -= 4;
            }

            while (v15);
          }

          v11 = v11 + v12;
          v9 += 144;
        }

        while (v9 != v10);
        if (v11 > 0.0)
        {
          *v29 = v8 / v11;
        }
      }

      re::DynamicArray<float>::add((this + 120), v29);
    }
  }
}

uint64_t re::MeshAssetBaseInfo::meshModel<re::MeshAsset>(void *a1, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a1[76];
  if (v3 <= a2)
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

    v14 = 797;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(a1[78] + 8 * a2);
  v5 = a1[79] + 8;

  return re::DataArray<re::MeshModel>::tryGet(v5, v4);
}

void *re::allocInfo_MeshAssetBuffer(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1985C8, "MeshAssetBuffer");
    __cxa_guard_release(&qword_1EE197D08);
  }

  return &unk_1EE1985C8;
}

void re::initInfo_MeshAssetBuffer(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0xBBFF8F97F37B7606;
  v24[1] = "MeshAssetBuffer";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE197D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D10))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197FC0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "data";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197FC8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::mtl::introspect_VertexFormat(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "format";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x4800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE197FD0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::mtl::introspect_VertexStepFunction(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "stepFunction";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4900000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE197FD8 = v22;
    __cxa_guard_release(&qword_1EE197D10);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE197FC0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetBuffer>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetBuffer>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetBuffer>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetBuffer>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void *re::internal::defaultConstruct<re::MeshAssetBuffer>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 64) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = 0;
  *(a3 + 56) = 0;
  *(a3 + 72) = 256;
  return result;
}

double re::internal::defaultDestruct<re::MeshAssetBuffer>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 32);

  return re::DynamicString::deinit(a3);
}

void *re::internal::defaultConstructV2<re::MeshAssetBuffer>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 64) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 256;
  return result;
}

double re::internal::defaultDestructV2<re::MeshAssetBuffer>(re::DynamicString *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 32);

  return re::DynamicString::deinit(a1);
}

void *re::allocInfo_MeshAssetPart(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198658, "MeshAssetPart");
    __cxa_guard_release(&qword_1EE197D20);
  }

  return &unk_1EE198658;
}

void re::initInfo_MeshAssetPart(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v61[0] = 0xDD4C740759CEBEECLL;
  v61[1] = "MeshAssetPart";
  if (v61[0])
  {
    if (v61[0])
    {
    }
  }

  *(this + 2) = v62;
  if ((atomic_load_explicit(&qword_1EE197D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D28))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBuffer>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "buffers";
    *(v8 + 16) = &qword_1EE1980C8;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE198508 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_uint32_t(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "indexCount";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x2800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE198510 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::mtl::introspect_IndexType(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "indexType";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2C00000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE198518 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_uint32_t(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "vertexCount";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x3000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE198520 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_uint16_t(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "materialIndex";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x3800000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE198528 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::introspect_uint32_t(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "preSplitVertexCount";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x3C00000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE198530 = v28;
    v29 = re::introspectionAllocator();
    v31 = re::introspect_uint32_t(1, v30);
    v32 = (*(*v29 + 32))(v29, 72, 8);
    *v32 = 1;
    *(v32 + 8) = "patchCount";
    *(v32 + 16) = v31;
    *(v32 + 24) = 0;
    *(v32 + 32) = 0x4000000007;
    *(v32 + 40) = 0;
    *(v32 + 48) = 0;
    *(v32 + 56) = 0;
    *(v32 + 64) = 0;
    qword_1EE198538 = v32;
    v33 = re::introspectionAllocator();
    v35 = re::IntrospectionInfo<re::StringID>::get(1, v34);
    v36 = (*(*v33 + 32))(v33, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "name";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x4800000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE198540 = v36;
    v37 = re::introspectionAllocator();
    v43 = re::introspect_AABB(1, v38, v39, v40, v41, v42);
    v44 = (*(*v37 + 32))(v37, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "boundingBox";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x6000000009;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE198548 = v44;
    v45 = re::introspectionAllocator();
    v46 = re::introspect_Matrix4x4F(1);
    v47 = (*(*v45 + 32))(v45, 72, 8);
    *v47 = 1;
    *(v47 + 8) = "orientedBoundingBox";
    *(v47 + 16) = v46;
    *(v47 + 24) = 0;
    *(v47 + 32) = 0x800000000ALL;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    *(v47 + 64) = 0;
    qword_1EE198550 = v47;
    v48 = re::introspectionAllocator();
    v54 = re::introspect_MeshPartFlags(1, v49, v50, v51, v52, v53);
    v55 = (*(*v48 + 32))(v48, 72, 8);
    *v55 = 1;
    *(v55 + 8) = "renderFlags";
    *(v55 + 16) = v54;
    *(v55 + 24) = 0;
    *(v55 + 32) = 0xC00000000BLL;
    *(v55 + 40) = 0;
    *(v55 + 48) = 0;
    *(v55 + 56) = 0;
    *(v55 + 64) = 0;
    qword_1EE198558 = v55;
    v56 = re::introspectionAllocator();
    v58 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v57);
    v59 = (*(*v56 + 32))(v56, 72, 8);
    *v59 = 1;
    *(v59 + 8) = "bufferAliases";
    *(v59 + 16) = v58;
    *(v59 + 24) = 0;
    *(v59 + 32) = 0xC80000000CLL;
    *(v59 + 40) = 0;
    *(v59 + 48) = 0;
    *(v59 + 56) = 0;
    *(v59 + 64) = 0;
    qword_1EE198560 = v59;
    __cxa_guard_release(&qword_1EE197D28);
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE198508;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetPart>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetPart>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetPart>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetPart>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v60 = v62;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBuffer>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EA8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EA8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1980C8);
      qword_1EE1980C8 = &unk_1F5CC6B10;
      __cxa_guard_release(&qword_1EE197EA8);
    }
  }

  if ((_MergedGlobals_87 & 1) == 0)
  {
    v1 = qword_1EE197D18;
    if (qword_1EE197D18 || (v1 = re::allocInfo_MeshAssetBuffer(a1), qword_1EE197D18 = v1, re::initInfo_MeshAssetBuffer(v1, v2, v3, v4), (_MergedGlobals_87 & 1) == 0))
    {
      _MergedGlobals_87 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1980C8, 0);
      qword_1EE1980D8 = 0x2800000003;
      dword_1EE1980E0 = v5;
      word_1EE1980E4 = 0;
      *&xmmword_1EE1980E8 = 0;
      *(&xmmword_1EE1980E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1980F8 = v1;
      qword_1EE198100 = 0;
      qword_1EE1980C8 = &unk_1F5CC6B10;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1980C8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBuffer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1980E8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    *re::IntrospectionHashTableBase::IntrospectionHashTableBase(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info) = &unk_1F5CC6BA8;
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v19);
    v3 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v19);
    if (v3)
    {
      return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
  v8 = re::IntrospectionInfo<re::DynamicString>::get(1, v7);
  if ((re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v9 = v8;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::isInitialized = 1;
    v10 = *(v8 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info, 0);
    qword_1EE186320 = 0x3000000007;
    dword_1EE186328 = v10;
    word_1EE18632C = 0;
    *&xmmword_1EE186330 = 0;
    *(&xmmword_1EE186330 + 1) = 0xFFFFFFFFLL;
    qword_1EE186340 = v6;
    unk_1EE186348 = 0;
    qword_1EE186350 = v9;
    unk_1EE186358 = 0;
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info = &unk_1F5CC6BA8;
    re::IntrospectionRegistry::add(v11, v12);
    re::getPrettyTypeName(&v19, &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info);
    if (BYTE8(v19))
    {
      v13 = v20;
    }

    else
    {
      v13 = &v19 + 9;
    }

    if (v19 && (BYTE8(v19) & 1) != 0)
    {
      (*(*v19 + 40))();
    }

    v14 = v6[2];
    v18 = *(v9 + 32);
    v19 = v14;
    xmmword_1EE186330 = v17;
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v15 = re::introspectionSharedMutex(v8);
    std::__shared_mutex_base::unlock(v15);
  }

  return &re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(BOOL)::info;
}

double re::internal::defaultConstruct<re::MeshAssetPart>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *(a3 + 44) = 1;
  *(a3 + 52) = 1;
  *(a3 + 56) = -1;
  *(a3 + 60) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = &str_67;
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  *(a3 + 96) = vnegq_f32(v3);
  *(a3 + 112) = v3;
  *(a3 + 194) = 0;
  *(a3 + 196) = 0;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0u;
  *(a3 + 232) = 0;
  *(a3 + 192) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a3 + 236) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetPart>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a3 + 200));
  re::StringID::destroyString((a3 + 72));

  return re::DynamicArray<re::MeshAssetBuffer>::deinit(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetPart>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = 1;
  *(a1 + 52) = 1;
  *(a1 + 56) = -1;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = &str_67;
  v1.i64[0] = 0x7F0000007FLL;
  v1.i64[1] = 0x7F0000007FLL;
  *(a1 + 96) = vnegq_f32(v1);
  *(a1 + 112) = v1;
  *(a1 + 194) = 0;
  *(a1 + 196) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(a1 + 236) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetPart>(uint64_t a1)
{
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((a1 + 200));
  re::StringID::destroyString((a1 + 72));

  return re::DynamicArray<re::MeshAssetBuffer>::deinit(a1);
}

void *re::allocInfo_SkinningInfluence(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1986E8, "SkinningInfluence");
    __cxa_guard_release(&qword_1EE197D38);
  }

  return &unk_1EE1986E8;
}

void re::initInfo_SkinningInfluence(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xA30D63E3F87A3C48;
  v16[1] = "SkinningInfluence";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE197D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D40))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_int(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "jointIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197F30 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "weight";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197F38 = v14;
    __cxa_guard_release(&qword_1EE197D40);
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F30;
  *(this + 9) = re::internal::defaultConstruct<re::SkinningInfluence>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::SkinningInfluence>;
  *(this + 13) = re::internal::defaultConstructV2<re::SkinningInfluence>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkinningInfluence>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::allocInfo_MeshAssetSkinningData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198778, "MeshAssetSkinningData");
    __cxa_guard_release(&qword_1EE197D50);
  }

  return &unk_1EE198778;
}

void re::initInfo_MeshAssetSkinningData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v25[0] = 0x8DB8D5870250C6FCLL;
  v25[1] = "MeshAssetSkinningData";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE197D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D58))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "skeletonIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197FE0 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::FixedArray<re::SkinningInfluence>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "skinningInfluences";
    *(v12 + 16) = &qword_1EE198108;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE197FE8 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::IntrospectionInfo<re::FixedArray<int>>::get(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "influenceEndIndices";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x2000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE197FF0 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::IntrospectionInfo<re::FixedArray<int>>::get(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "remappedJointIndices";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x3800000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE197FF8 = v20;
    v21 = re::introspectionAllocator();
    v22 = re::introspect_Matrix4x4F(1);
    v23 = (*(*v21 + 32))(v21, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "geometryBindTransform";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x5000000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE198000 = v23;
    __cxa_guard_release(&qword_1EE197D58);
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE197FE0;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSkinningData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSkinningData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSkinningData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSkinningData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v24 = v26;
}

void re::IntrospectionInfo<re::FixedArray<re::SkinningInfluence>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EB0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EB0);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE198108);
      qword_1EE198108 = &unk_1F5CC6C48;
      __cxa_guard_release(&qword_1EE197EB0);
    }
  }

  if ((byte_1EE197CF1 & 1) == 0)
  {
    v1 = qword_1EE197D48;
    if (qword_1EE197D48 || (v1 = re::allocInfo_SkinningInfluence(a1), qword_1EE197D48 = v1, re::initInfo_SkinningInfluence(v1, v2, v3, v4), (byte_1EE197CF1 & 1) == 0))
    {
      byte_1EE197CF1 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198108, 0);
      qword_1EE198118 = 0x1800000004;
      dword_1EE198120 = v5;
      word_1EE198124 = 0;
      *&xmmword_1EE198128 = 0;
      *(&xmmword_1EE198128 + 1) = 0xFFFFFFFFLL;
      qword_1EE198138 = v1;
      qword_1EE198140 = 0;
      qword_1EE198108 = &unk_1F5CC6C48;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198108);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x18uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::SkinningInfluence>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198128 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAssetSkinningData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = -1;
  result = 0.0;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAssetSkinningData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 4);

  return re::FixedArray<CoreIKTransform>::deinit(a3 + 1);
}

double re::internal::defaultConstructV2<re::MeshAssetSkinningData>(uint64_t a1)
{
  *a1 = -1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAssetSkinningData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);

  return re::FixedArray<CoreIKTransform>::deinit(a1 + 1);
}

void *re::allocInfo_MeshAssetBlendShapeData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198808, "MeshAssetBlendShapeData");
    __cxa_guard_release(&qword_1EE197D68);
  }

  return &unk_1EE198808;
}

void re::initInfo_MeshAssetBlendShapeData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x14975A1BFCD5F2BALL;
  v20[1] = "MeshAssetBlendShapeData";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE197D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D70))
  {
    v7 = re::introspectionAllocator();
    v13 = re::introspect_BlendShapeGroupDefinition(1, v8, v9, v10, v11, v12);
    v14 = (*(*v7 + 32))(v7, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "blendShapeGroup";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 1;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197F40 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint16_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "meshPartIndex";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE197F48 = v18;
    __cxa_guard_release(&qword_1EE197D70);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F40;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetBlendShapeData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetBlendShapeData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetBlendShapeData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetBlendShapeData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::MeshAssetBlendShapeData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 44) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  *(a3 + 40) = 0;
}

void re::internal::defaultDestruct<re::MeshAssetBlendShapeData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

uint64_t re::internal::defaultConstructV2<re::MeshAssetBlendShapeData>(uint64_t result)
{
  *result = 0;
  *(result + 8) = &str_67;
  *(result + 44) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetBlendShapeData>(re::StringID *a1)
{
  re::FixedArray<re::BlendShapeDefinition>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetWrapDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D80))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198898, "MeshAssetWrapDeformerData");
    __cxa_guard_release(&qword_1EE197D80);
  }

  return &unk_1EE198898;
}

void re::initInfo_MeshAssetWrapDeformerData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x7C3F1F58CCCB5ED2;
  v28[1] = "MeshAssetWrapDeformerData";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE197D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D88))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "targetMeshInstanceName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198008 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "faceIndices";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE198010 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "faceCoordinates";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE198018 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::FixedArray<re::Vector3<float>>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "offsets";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x5000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE198020 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint16_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "meshPartIndex";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x6800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE198028 = v26;
    __cxa_guard_release(&qword_1EE197D88);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198008;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetWrapDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetWrapDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetWrapDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetWrapDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

double re::internal::defaultConstruct<re::MeshAssetWrapDeformerData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  *(a3 + 16) = 0;
  *(a3 + 24) = &str_67;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetWrapDeformerData>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 4);
  re::StringID::destroyString((a3 + 2));

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetWrapDeformerData>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  *(a1 + 16) = 0;
  *(a1 + 24) = &str_67;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetWrapDeformerData>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 10);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 7);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 4);
  re::StringID::destroyString((a1 + 2));

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetContactDeformerTarget(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197D98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198928, "MeshAssetContactDeformerTarget");
    __cxa_guard_release(&qword_1EE197D98);
  }

  return &unk_1EE198928;
}

void re::initInfo_MeshAssetContactDeformerTarget(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x12ECC0F162C64700;
  v20[1] = "MeshAssetContactDeformerTarget";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE197DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DA0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "jointIndex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197F90 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_float(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "radius";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197F98 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::FixedArray<float>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "heightMap";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE197FA0 = v18;
    __cxa_guard_release(&qword_1EE197DA0);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE197F90;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetContactDeformerTarget>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetContactDeformerTarget>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetContactDeformerTarget>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetContactDeformerTarget>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::MeshAssetContactDeformerTarget>(uint64_t a1, uint64_t a2, void *a3)
{
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
}

void *re::internal::defaultConstructV2<re::MeshAssetContactDeformerTarget>(void *result)
{
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *re::allocInfo_MeshAssetContactDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1989B8, "MeshAssetContactDeformerData");
    __cxa_guard_release(&qword_1EE197DB0);
  }

  return &unk_1EE1989B8;
}

void re::initInfo_MeshAssetContactDeformerData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v14[0] = 0x17FEA5E5144AA2B2;
  v14[1] = "MeshAssetContactDeformerData";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE197DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DB8))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::FixedArray<re::MeshAssetContactDeformerTarget>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "targets";
    *(v8 + 16) = &qword_1EE198148;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0x1000000001;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE197F50 = v8;
    v9 = re::introspectionAllocator();
    v11 = re::introspect_uint16_t(1, v10);
    v12 = (*(*v9 + 32))(v9, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "meshPartIndex";
    *(v12 + 16) = v11;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x2800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE197F58 = v12;
    __cxa_guard_release(&qword_1EE197DB8);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F50;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetContactDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetContactDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetContactDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetContactDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v13 = v15;
}

void re::IntrospectionInfo<re::FixedArray<re::MeshAssetContactDeformerTarget>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EB8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EB8);
    if (a1)
    {
      re::IntrospectionFixedArrayBase::IntrospectionFixedArrayBase(&qword_1EE198148);
      qword_1EE198148 = &unk_1F5CC6CE0;
      __cxa_guard_release(&qword_1EE197EB8);
    }
  }

  if ((byte_1EE197CF2 & 1) == 0)
  {
    v1 = qword_1EE197DA8;
    if (qword_1EE197DA8 || (v1 = re::allocInfo_MeshAssetContactDeformerTarget(a1), qword_1EE197DA8 = v1, re::initInfo_MeshAssetContactDeformerTarget(v1, v2, v3, v4), (byte_1EE197CF2 & 1) == 0))
    {
      byte_1EE197CF2 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198148, 0);
      qword_1EE198158 = 0x1800000004;
      dword_1EE198160 = v5;
      word_1EE198164 = 0;
      *&xmmword_1EE198168 = 0;
      *(&xmmword_1EE198168 + 1) = 0xFFFFFFFFLL;
      qword_1EE198178 = v1;
      qword_1EE198180 = 0;
      qword_1EE198148 = &unk_1F5CC6CE0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198148);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x18uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerFixedArray<re::MeshAssetContactDeformerTarget>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198168 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshAssetContactDeformerData>(uint64_t a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  a3[1] = &str_67;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = 0;
}

void re::internal::defaultDestruct<re::MeshAssetContactDeformerData>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

void *re::internal::defaultConstructV2<re::MeshAssetContactDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetContactDeformerData>(re::StringID *a1)
{
  re::FixedArray<re::MeshAssetContactDeformerTarget>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetSmoothDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DC8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198A48, "MeshAssetSmoothDeformerData");
    __cxa_guard_release(&qword_1EE197DC8);
  }

  return &unk_1EE198A48;
}

void re::initInfo_MeshAssetSmoothDeformerData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0xFF33CE7A6A0D541ALL;
  v16[1] = "MeshAssetSmoothDeformerData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE197DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DD0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "envelopeBufferName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197F60 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "meshPartIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197F68 = v14;
    __cxa_guard_release(&qword_1EE197DD0);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F60;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSmoothDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSmoothDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSmoothDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSmoothDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstructV2<re::MeshAssetSmoothDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

void *re::allocInfo_MeshAssetOffsetsDeformerData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DE0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198AD8, "MeshAssetOffsetsDeformerData");
    __cxa_guard_release(&qword_1EE197DE0);
  }

  return &unk_1EE198AD8;
}

void re::initInfo_MeshAssetOffsetsDeformerData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x574CE82AAD8A56F2;
  v16[1] = "MeshAssetOffsetsDeformerData";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE197DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DE8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "envelopeBufferName";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197F70 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "meshPartIndex";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE197F78 = v14;
    __cxa_guard_release(&qword_1EE197DE8);
  }

  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F70;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetOffsetsDeformerData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetOffsetsDeformerData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetOffsetsDeformerData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetOffsetsDeformerData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::internal::defaultConstructV2<re::MeshAssetOffsetsDeformerData>(void *result)
{
  *result = 0;
  result[1] = &str_67;
  return result;
}

void *re::allocInfo_MeshAssetSkeleton(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197DF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197DF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198B68, "MeshAssetSkeleton");
    __cxa_guard_release(&qword_1EE197DF8);
  }

  return &unk_1EE198B68;
}

void re::initInfo_MeshAssetSkeleton(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0xBA5A0A3EA9A0F4A0;
  v28[1] = "MeshAssetSkeleton";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE197E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E00))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198030 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::FixedArray<re::StringID>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "jointNames";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x1000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE198038 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::FixedArray<unsigned int>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "parentIndices";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x2800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE198040 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<re::FixedArray<re::GenericSRT<float>>>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "localBindPoses";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x4000000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE198048 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::FixedArray<re::Matrix4x4<float>>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "inverseBindPoses";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x5800000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE198050 = v26;
    __cxa_guard_release(&qword_1EE197E00);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE198030;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetSkeleton>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetSkeleton>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetSkeleton>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetSkeleton>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v27 = v29;
}

double re::internal::defaultConstruct<re::MeshAssetSkeleton>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetSkeleton>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::FixedArray<CoreIKTransform>::deinit(a3 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 5);
  re::FixedArray<re::StringID>::deinit(a3 + 2);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetSkeleton>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetSkeleton>(uint64_t *a1)
{
  re::FixedArray<CoreIKTransform>::deinit(a1 + 11);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 8);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 5);
  re::FixedArray<re::StringID>::deinit(a1 + 2);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetMetaData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E10))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE198BF8, "MeshAssetMetaData");
    __cxa_guard_release(&qword_1EE197E10);
  }

  return &unk_1EE198BF8;
}

void re::initInfo_MeshAssetMetaData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v12[0] = 0xBA5A09EF8224E2A4;
  v12[1] = "MeshAssetMetaData";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE197E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E20))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "averageSkinningInfluencesPerVertex";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197E18 = v10;
    __cxa_guard_release(&qword_1EE197E20);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE197E18;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetMetaData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetMetaData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetMetaData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetMetaData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v11 = v13;
}

void re::internal::defaultConstruct<re::MeshAssetMetaData>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshAssetMetaData>(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = 0;
  return result;
}

void *re::allocInfo_MeshAssetModel(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&_MergedGlobals_197, "MeshAssetModel");
    __cxa_guard_release(&qword_1EE197E30);
  }

  return &_MergedGlobals_197;
}

void re::initInfo_MeshAssetModel(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0xCC420CE3DFC0E00CLL;
  v46[1] = "MeshAssetModel";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE197E38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E38))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198568 = v10;
    v11 = re::introspectionAllocator();
    v17 = re::introspect_AABB(1, v12, v13, v14, v15, v16);
    v18 = (*(*v11 + 32))(v11, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "boundingBox";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1000000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE198570 = v18;
    v19 = re::introspectionAllocator();
    v20 = re::introspect_Matrix4x4F(1);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "orientedBoundingBox";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x3000000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE198578 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(v22);
    v23 = (*(*v22 + 32))(v22, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "skeletons";
    *(v23 + 16) = &qword_1EE198188;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0xE800000004;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE198580 = v23;
    v24 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBlendShapeData>>::get(v24);
    v25 = (*(*v24 + 32))(v24, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "meshBlendShapeData";
    *(v25 + 16) = &qword_1EE1981C8;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x7000000005;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE198588 = v25;
    v26 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkinningData>>::get(v26);
    v27 = (*(*v26 + 32))(v26, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "meshSkinningData";
    *(v27 + 16) = &qword_1EE198208;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0x9800000006;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE198590 = v27;
    v28 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetPart>>::get(v28);
    v29 = (*(*v28 + 32))(v28, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "meshParts";
    *(v29 + 16) = &qword_1EE198248;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0xC000000007;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE198598 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshLodLevelInfo>>::get(v30, v31, v32, v33, v34, v35);
    v36 = (*(*v30 + 32))(v30, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "lodLevelInfos";
    *(v36 + 16) = &qword_1EE198288;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x11000000008;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1985A0 = v36;
    v37 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetContactDeformerData>>::get(v37);
    v38 = (*(*v37 + 32))(v37, 72, 8);
    *v38 = 1;
    *(v38 + 8) = "contactDeformerData";
    *(v38 + 16) = &qword_1EE1982C8;
    *(v38 + 24) = 0;
    *(v38 + 32) = 0x13800000009;
    *(v38 + 40) = 0;
    *(v38 + 48) = 0;
    *(v38 + 56) = 0;
    *(v38 + 64) = 0;
    qword_1EE1985A8 = v38;
    v39 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSmoothDeformerData>>::get(v39);
    v40 = (*(*v39 + 32))(v39, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "smoothDeformerData";
    *(v40 + 16) = &qword_1EE198308;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1600000000ALL;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1985B0 = v40;
    v41 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetWrapDeformerData>>::get(v41);
    v42 = (*(*v41 + 32))(v41, 72, 8);
    *v42 = 1;
    *(v42 + 8) = "wrapDeformerData";
    *(v42 + 16) = &qword_1EE198348;
    *(v42 + 24) = 0;
    *(v42 + 32) = 0x1880000000BLL;
    *(v42 + 40) = 0;
    *(v42 + 48) = 0;
    *(v42 + 56) = 0;
    *(v42 + 64) = 0;
    qword_1EE1985B8 = v42;
    v43 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetOffsetsDeformerData>>::get(v43);
    v44 = (*(*v43 + 32))(v43, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "offsetsDeformerData";
    *(v44 + 16) = &qword_1EE198388;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1B00000000CLL;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1985C0 = v44;
    __cxa_guard_release(&qword_1EE197E38);
  }

  *(this + 2) = 0x20000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE198568;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetModel>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetModel>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetModel>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetModel>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v45 = v47;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EC0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EC0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198188);
      qword_1EE198188 = &unk_1F5CC6D78;
      __cxa_guard_release(&qword_1EE197EC0);
    }
  }

  if ((byte_1EE197CF3 & 1) == 0)
  {
    v1 = qword_1EE197E08;
    if (qword_1EE197E08 || (v1 = re::allocInfo_MeshAssetSkeleton(a1), qword_1EE197E08 = v1, re::initInfo_MeshAssetSkeleton(v1, v2, v3, v4), (byte_1EE197CF3 & 1) == 0))
    {
      byte_1EE197CF3 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198188, 0);
      qword_1EE198198 = 0x2800000003;
      dword_1EE1981A0 = v5;
      word_1EE1981A4 = 0;
      *&xmmword_1EE1981A8 = 0;
      *(&xmmword_1EE1981A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1981B8 = v1;
      qword_1EE1981C0 = 0;
      qword_1EE198188 = &unk_1F5CC6D78;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198188);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkeleton>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1981A8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetBlendShapeData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EC8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EC8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1981C8);
      qword_1EE1981C8 = &unk_1F5CC6E10;
      __cxa_guard_release(&qword_1EE197EC8);
    }
  }

  if ((byte_1EE197CF4 & 1) == 0)
  {
    v1 = qword_1EE197D78;
    if (qword_1EE197D78 || (v1 = re::allocInfo_MeshAssetBlendShapeData(a1), qword_1EE197D78 = v1, re::initInfo_MeshAssetBlendShapeData(v1, v2, v3, v4), (byte_1EE197CF4 & 1) == 0))
    {
      byte_1EE197CF4 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1981C8, 0);
      qword_1EE1981D8 = 0x2800000003;
      dword_1EE1981E0 = v5;
      word_1EE1981E4 = 0;
      *&xmmword_1EE1981E8 = 0;
      *(&xmmword_1EE1981E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1981F8 = v1;
      qword_1EE198200 = 0;
      qword_1EE1981C8 = &unk_1F5CC6E10;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1981C8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetBlendShapeData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1981E8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkinningData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197ED0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197ED0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198208);
      qword_1EE198208 = &unk_1F5CC6EA8;
      __cxa_guard_release(&qword_1EE197ED0);
    }
  }

  if ((byte_1EE197CF5 & 1) == 0)
  {
    v1 = qword_1EE197D60;
    if (qword_1EE197D60 || (v1 = re::allocInfo_MeshAssetSkinningData(a1), qword_1EE197D60 = v1, re::initInfo_MeshAssetSkinningData(v1, v2, v3, v4), (byte_1EE197CF5 & 1) == 0))
    {
      byte_1EE197CF5 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198208, 0);
      qword_1EE198218 = 0x2800000003;
      dword_1EE198220 = v5;
      word_1EE198224 = 0;
      *&xmmword_1EE198228 = 0;
      *(&xmmword_1EE198228 + 1) = 0xFFFFFFFFLL;
      qword_1EE198238 = v1;
      qword_1EE198240 = 0;
      qword_1EE198208 = &unk_1F5CC6EA8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198208);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSkinningData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198228 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetPart>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197ED8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197ED8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198248);
      qword_1EE198248 = &unk_1F5CC6F40;
      __cxa_guard_release(&qword_1EE197ED8);
    }
  }

  if ((byte_1EE197CF6 & 1) == 0)
  {
    v1 = qword_1EE197D30;
    if (qword_1EE197D30 || (v1 = re::allocInfo_MeshAssetPart(a1), qword_1EE197D30 = v1, re::initInfo_MeshAssetPart(v1, v2, v3, v4), (byte_1EE197CF6 & 1) == 0))
    {
      byte_1EE197CF6 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198248, 0);
      qword_1EE198258 = 0x2800000003;
      dword_1EE198260 = v5;
      word_1EE198264 = 0;
      *&xmmword_1EE198268 = 0;
      *(&xmmword_1EE198268 + 1) = 0xFFFFFFFFLL;
      qword_1EE198278 = v1;
      qword_1EE198280 = 0;
      qword_1EE198248 = &unk_1F5CC6F40;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198248);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetPart>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198268 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshLodLevelInfo>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE197EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197EE0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198288);
    qword_1EE198288 = &unk_1F5CC6FD8;
    __cxa_guard_release(&qword_1EE197EE0);
  }

  if ((byte_1EE197CF7 & 1) == 0)
  {
    v6 = re::introspect_MeshLodLevelInfo(1, a2, a3, a4, a5, a6);
    if ((byte_1EE197CF7 & 1) == 0)
    {
      v7 = v6;
      byte_1EE197CF7 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE198288, 0);
      qword_1EE198298 = 0x2800000003;
      dword_1EE1982A0 = v8;
      word_1EE1982A4 = 0;
      *&xmmword_1EE1982A8 = 0;
      *(&xmmword_1EE1982A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1982B8 = v7;
      qword_1EE1982C0 = 0;
      qword_1EE198288 = &unk_1F5CC6FD8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE198288);
      if (v19)
      {
        v11 = *&v20[7];
      }

      else
      {
        v11 = v20;
      }

      if (v18 && (v19 & 1) != 0)
      {
        (*(*v18 + 40))();
      }

      v15 = *(v7 + 32);
      if (v22)
      {
        v14 = v22;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v21);
        re::TypeBuilder::TypeBuilder(&v18, v21);
        v17 = v15;
        re::TypeBuilder::beginListType(&v18, &v16, 1, 0x28uLL, 8uLL, &v17);
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshLodLevelInfo>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1982A8 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetContactDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EE8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EE8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1982C8);
      qword_1EE1982C8 = &unk_1F5CC7070;
      __cxa_guard_release(&qword_1EE197EE8);
    }
  }

  if ((byte_1EE197CF8 & 1) == 0)
  {
    v1 = qword_1EE197DC0;
    if (qword_1EE197DC0 || (v1 = re::allocInfo_MeshAssetContactDeformerData(a1), qword_1EE197DC0 = v1, re::initInfo_MeshAssetContactDeformerData(v1, v2, v3, v4), (byte_1EE197CF8 & 1) == 0))
    {
      byte_1EE197CF8 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1982C8, 0);
      qword_1EE1982D8 = 0x2800000003;
      dword_1EE1982E0 = v5;
      word_1EE1982E4 = 0;
      *&xmmword_1EE1982E8 = 0;
      *(&xmmword_1EE1982E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1982F8 = v1;
      qword_1EE198300 = 0;
      qword_1EE1982C8 = &unk_1F5CC7070;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1982C8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetContactDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1982E8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSmoothDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EF0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EF0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198308);
      qword_1EE198308 = &unk_1F5CC7108;
      __cxa_guard_release(&qword_1EE197EF0);
    }
  }

  if ((byte_1EE197CF9 & 1) == 0)
  {
    v1 = qword_1EE197DD8;
    if (qword_1EE197DD8 || (v1 = re::allocInfo_MeshAssetSmoothDeformerData(a1), qword_1EE197DD8 = v1, re::initInfo_MeshAssetSmoothDeformerData(v1, v2, v3, v4), (byte_1EE197CF9 & 1) == 0))
    {
      byte_1EE197CF9 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198308, 0);
      qword_1EE198318 = 0x2800000003;
      dword_1EE198320 = v5;
      word_1EE198324 = 0;
      *&xmmword_1EE198328 = 0;
      *(&xmmword_1EE198328 + 1) = 0xFFFFFFFFLL;
      qword_1EE198338 = v1;
      qword_1EE198340 = 0;
      qword_1EE198308 = &unk_1F5CC7108;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198308);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetSmoothDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198328 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetWrapDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197EF8, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197EF8);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198348);
      qword_1EE198348 = &unk_1F5CC71A0;
      __cxa_guard_release(&qword_1EE197EF8);
    }
  }

  if ((byte_1EE197CFA & 1) == 0)
  {
    v1 = qword_1EE197D90;
    if (qword_1EE197D90 || (v1 = re::allocInfo_MeshAssetWrapDeformerData(a1), qword_1EE197D90 = v1, re::initInfo_MeshAssetWrapDeformerData(v1, v2, v3, v4), (byte_1EE197CFA & 1) == 0))
    {
      byte_1EE197CFA = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198348, 0);
      qword_1EE198358 = 0x2800000003;
      dword_1EE198360 = v5;
      word_1EE198364 = 0;
      *&xmmword_1EE198368 = 0;
      *(&xmmword_1EE198368 + 1) = 0xFFFFFFFFLL;
      qword_1EE198378 = v1;
      qword_1EE198380 = 0;
      qword_1EE198348 = &unk_1F5CC71A0;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198348);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetWrapDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198368 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetOffsetsDeformerData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F00, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F00);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198388);
      qword_1EE198388 = &unk_1F5CC7238;
      __cxa_guard_release(&qword_1EE197F00);
    }
  }

  if ((byte_1EE197CFB & 1) == 0)
  {
    v1 = qword_1EE197DF0;
    if (qword_1EE197DF0 || (v1 = re::allocInfo_MeshAssetOffsetsDeformerData(a1), qword_1EE197DF0 = v1, re::initInfo_MeshAssetOffsetsDeformerData(v1, v2, v3, v4), (byte_1EE197CFB & 1) == 0))
    {
      byte_1EE197CFB = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198388, 0);
      qword_1EE198398 = 0x2800000003;
      dword_1EE1983A0 = v5;
      word_1EE1983A4 = 0;
      *&xmmword_1EE1983A8 = 0;
      *(&xmmword_1EE1983A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1983B8 = v1;
      qword_1EE1983C0 = 0;
      qword_1EE198388 = &unk_1F5CC7238;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198388);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetOffsetsDeformerData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1983A8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAssetModel>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  v3.i64[0] = 0x7F0000007FLL;
  v3.i64[1] = 0x7F0000007FLL;
  *(a3 + 16) = vnegq_f32(v3);
  *(a3 + 32) = v3;
  *(a3 + 504) = 0;
  result = 0.0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 124) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0u;
  *(a3 + 200) = 0u;
  *(a3 + 216) = 0;
  *(a3 + 256) = 0;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 296) = 0;
  *(a3 + 264) = 0u;
  *(a3 + 280) = 0u;
  *(a3 + 336) = 0;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 376) = 0;
  *(a3 + 344) = 0u;
  *(a3 + 360) = 0u;
  *(a3 + 416) = 0;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 456) = 0;
  *(a3 + 424) = 0u;
  *(a3 + 440) = 0u;
  *(a3 + 464) = 0u;
  *(a3 + 480) = 0u;
  *(a3 + 496) = 0;
  return result;
}

void re::internal::defaultDestruct<re::MeshAssetModel>(uint64_t a1, uint64_t a2, re::StringID *a3)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a3 + 472);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 432);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a3 + 392);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a3 + 352);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a3 + 312);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a3 + 272);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a3 + 232);
  re::DynamicArray<re::MeshAssetPart>::deinit(a3 + 192);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a3 + 152);
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a3 + 112);

  re::StringID::destroyString(a3);
}

double re::internal::defaultConstructV2<re::MeshAssetModel>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  v1.i64[0] = 0x7F0000007FLL;
  v1.i64[1] = 0x7F0000007FLL;
  *(a1 + 16) = vnegq_f32(v1);
  *(a1 + 32) = v1;
  *(a1 + 504) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::MeshAssetModel>(re::StringID *a1)
{
  re::DynamicArray<re::BlendSpaceAxisDefinition>::deinit(a1 + 472);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 432);
  re::DynamicArray<re::MeshAssetWrapDeformerData>::deinit(a1 + 392);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(a1 + 352);
  re::DynamicArray<re::MeshAssetContactDeformerData>::deinit(a1 + 312);
  re::DynamicArray<re::MeshLodLevelInfo>::deinit(a1 + 272);
  re::DynamicArray<re::MeshAssetSkeleton>::deinit(a1 + 232);
  re::DynamicArray<re::MeshAssetPart>::deinit(a1 + 192);
  re::DynamicArray<re::MeshAssetSkinningData>::deinit(a1 + 152);
  re::DynamicArray<re::MeshAssetBlendShapeData>::deinit(a1 + 112);

  re::StringID::destroyString(a1);
}

void *re::allocInfo_MeshAssetInstance(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DC00, "MeshAssetInstance");
    __cxa_guard_release(&qword_1EE197E48);
  }

  return &unk_1EE18DC00;
}

void re::initInfo_MeshAssetInstance(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xBA5A09BFFA142D30;
  v19[1] = "MeshAssetInstance";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE197E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E50))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197FA8 = v10;
    v11 = re::introspectionAllocator();
    v12 = re::introspect_Matrix4x4F(1);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "transform";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x1000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE197FB0 = v13;
    v14 = re::introspectionAllocator();
    v16 = re::introspect_uint32_t(1, v15);
    v17 = (*(*v14 + 32))(v14, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "modelIndex";
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x5000000003;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE197FB8 = v17;
    __cxa_guard_release(&qword_1EE197E50);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE197FA8;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetInstance>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetInstance>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetInstance>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetInstance>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v18 = v20;
}

double re::internal::defaultConstruct<re::MeshAssetInstance>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = &str_67;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::MeshAssetInstance>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = &str_67;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return result;
}

void *re::allocInfo_MeshAsssetModelVVMTableOfContents(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DC90, "MeshAsssetModelVVMTableOfContents");
    __cxa_guard_release(&qword_1EE197E60);
  }

  return &unk_1EE18DC90;
}

void re::initInfo_MeshAsssetModelVVMTableOfContents(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v29[0] = 0x49F680847A95571ALL;
  v29[1] = "MeshAsssetModelVVMTableOfContents";
  if (v29[0])
  {
    if (v29[0])
    {
    }
  }

  *(this + 2) = v30;
  if ((atomic_load_explicit(&qword_1EE197E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E68))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "mVersion";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198058 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "mOffsetsToVVMData";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE198060 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::IntrospectionInfo<re::DynamicArray<unsigned long>>::get(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "mSizeOfVVMData";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x3000000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE198068 = v18;
    v19 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(v19, v20);
    v21 = (*(*v19 + 32))(v19, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "mEncodedToOriginalVertexIndexMap";
    *(v21 + 16) = &qword_1EE1983C8;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x5800000004;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE198070 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(v22, v23);
    v24 = (*(*v22 + 32))(v22, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "mEncodedToOriginalFaceIndexMap";
    *(v24 + 16) = &qword_1EE1983C8;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x8000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE198078 = v24;
    v25 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned char>>>::get(v25, v26);
    v27 = (*(*v25 + 32))(v25, 72, 8);
    *v27 = 1;
    *(v27 + 8) = "mEncodedFaceVertexShifts";
    *(v27 + 16) = &qword_1EE198408;
    *(v27 + 24) = 0;
    *(v27 + 32) = 0xA800000006;
    *(v27 + 40) = 0;
    *(v27 + 48) = 0;
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    qword_1EE198080 = v27;
    __cxa_guard_release(&qword_1EE197E68);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE198058;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAsssetModelVVMTableOfContents>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v28 = v30;
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned int>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197F08))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1983C8);
    qword_1EE1983C8 = &unk_1F5CC72D0;
    __cxa_guard_release(&qword_1EE197F08);
  }

  if ((byte_1EE197CFC & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, a2);
    if ((byte_1EE197CFC & 1) == 0)
    {
      v3 = v2;
      byte_1EE197CFC = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1983C8, 0);
      qword_1EE1983D8 = 0x2800000003;
      dword_1EE1983E0 = v4;
      word_1EE1983E4 = 0;
      *&xmmword_1EE1983E8 = 0;
      *(&xmmword_1EE1983E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1983F8 = v3;
      qword_1EE198400 = 0;
      qword_1EE1983C8 = &unk_1F5CC72D0;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1983C8);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned int>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1983E8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<unsigned char>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197F10))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198408);
    qword_1EE198408 = &unk_1F5CC7368;
    __cxa_guard_release(&qword_1EE197F10);
  }

  if ((byte_1EE197CFD & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, a2);
    if ((byte_1EE197CFD & 1) == 0)
    {
      v3 = v2;
      byte_1EE197CFD = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198408, 0);
      qword_1EE198418 = 0x2800000003;
      dword_1EE198420 = v4;
      word_1EE198424 = 0;
      *&xmmword_1EE198428 = 0;
      *(&xmmword_1EE198428 + 1) = 0xFFFFFFFFLL;
      qword_1EE198438 = v3;
      qword_1EE198440 = 0;
      qword_1EE198408 = &unk_1F5CC7368;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE198408);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<unsigned char>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE198428 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
  *(a3 + 200) = 0;
  result = 0.0;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0;
  return result;
}

uint64_t re::internal::defaultDestruct<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 168);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 128);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a3 + 88);
  re::DynamicArray<unsigned long>::deinit(a3 + 48);

  return re::DynamicArray<unsigned long>::deinit(a3 + 8);
}

double re::internal::defaultConstructV2<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 200) = 0;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  return result;
}

uint64_t re::internal::defaultDestructV2<re::MeshAsssetModelVVMTableOfContents>(uint64_t a1)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 168);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 128);
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 48);

  return re::DynamicArray<unsigned long>::deinit(a1 + 8);
}

void *re::allocInfo_MeshAsssetDataVVMTableOfContents(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E78))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DD20, "MeshAsssetDataVVMTableOfContents");
    __cxa_guard_release(&qword_1EE197E78);
  }

  return &unk_1EE18DD20;
}

void re::initInfo_MeshAsssetDataVVMTableOfContents(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v14[0] = 0x32DFD8910BDA8154;
  v14[1] = "MeshAsssetDataVVMTableOfContents";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE197E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E80))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "mVersion";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE197F80 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "mModelInfo";
    *(v12 + 16) = &qword_1EE198448;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x800000002;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE197F88 = v12;
    __cxa_guard_release(&qword_1EE197E80);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE197F80;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAsssetDataVVMTableOfContents>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v13 = v15;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAsssetModelVVMTableOfContents>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F18, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F18);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198448);
      qword_1EE198448 = &unk_1F5CC7400;
      __cxa_guard_release(&qword_1EE197F18);
    }
  }

  if ((byte_1EE197CFE & 1) == 0)
  {
    v1 = qword_1EE197E70;
    if (qword_1EE197E70 || (v1 = re::allocInfo_MeshAsssetModelVVMTableOfContents(a1), qword_1EE197E70 = v1, re::initInfo_MeshAsssetModelVVMTableOfContents(v1, v2, v3, v4), (byte_1EE197CFE & 1) == 0))
    {
      byte_1EE197CFE = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198448, 0);
      qword_1EE198458 = 0x2800000003;
      dword_1EE198460 = v5;
      word_1EE198464 = 0;
      *&xmmword_1EE198468 = 0;
      *(&xmmword_1EE198468 + 1) = 0xFFFFFFFFLL;
      qword_1EE198478 = v1;
      qword_1EE198480 = 0;
      qword_1EE198448 = &unk_1F5CC7400;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198448);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAsssetModelVVMTableOfContents>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE198468 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::internal::defaultConstruct<re::MeshAsssetDataVVMTableOfContents>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0;
}

uint64_t re::internal::defaultConstructV2<re::MeshAsssetDataVVMTableOfContents>(uint64_t result)
{
  *result = 0;
  *(result + 40) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 32) = 0;
  return result;
}

void *re::allocInfo_MeshAssetData(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DDB0, "MeshAssetData");
    __cxa_guard_release(&qword_1EE197E90);
  }

  return &unk_1EE18DDB0;
}

void re::initInfo_MeshAssetData(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v49[0] = 0xDD4C740759C3D65ALL;
  v49[1] = "MeshAssetData";
  if (v49[0])
  {
    if (v49[0])
    {
    }
  }

  *(this + 2) = v50;
  if ((atomic_load_explicit(&qword_1EE197E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197E98))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetModel>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "models";
    *(v8 + 16) = &qword_1EE198488;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE198088 = v8;
    v9 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetInstance>>::get(v9);
    v10 = (*(*v9 + 32))(v9, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "instances";
    *(v10 + 16) = &qword_1EE1984C8;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x2800000002;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE198090 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::MeshAssetSkeleton>>::get(v11);
    v12 = (*(*v11 + 32))(v11, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "skeletons";
    *(v12 + 16) = &qword_1EE198188;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x5000000003;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE198098 = v12;
    v13 = re::introspectionAllocator();
    v14 = v13;
    v15 = qword_1EE197E28;
    if (!qword_1EE197E28)
    {
      v15 = re::allocInfo_MeshAssetMetaData(v13);
      qword_1EE197E28 = v15;
      re::initInfo_MeshAssetMetaData(v15, v16, v17, v18);
    }

    v19 = (*(*v14 + 32))(v14, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "meshAssetMetaData";
    *(v19 + 16) = v15;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x7800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1980A0 = v19;
    v20 = re::introspectionAllocator();
    v21 = v20;
    v22 = qword_1EE197E88;
    if (!qword_1EE197E88)
    {
      v22 = re::allocInfo_MeshAsssetDataVVMTableOfContents(v20);
      qword_1EE197E88 = v22;
      re::initInfo_MeshAsssetDataVVMTableOfContents(v22, v23, v24, v25);
    }

    v26 = (*(*v21 + 32))(v21, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "vvmTableOfContents";
    *(v26 + 16) = v22;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0xA000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1980A8 = v26;
    v27 = re::introspectionAllocator();
    v28 = v27;
    v29 = qword_1EE197EA0;
    if (!qword_1EE197EA0)
    {
      v29 = re::allocInfo_MeshAssetData(v27);
      qword_1EE197EA0 = v29;
      re::initInfo_MeshAssetData(v29, v30, v31, v32);
    }

    v33 = (*(*v28 + 32))(v28, 64, 8);
    *v33 = 6;
    *(v33 + 8) = 2;
    *(v33 + 16) = v29;
    *(v33 + 24) = 0;
    *(v33 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)0>;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    qword_1EE1980B0 = v33;
    v34 = re::introspectionAllocator();
    v35 = v34;
    v36 = qword_1EE197EA0;
    if (!qword_1EE197EA0)
    {
      v36 = re::allocInfo_MeshAssetData(v34);
      qword_1EE197EA0 = v36;
      re::initInfo_MeshAssetData(v36, v37, v38, v39);
    }

    v40 = (*(*v35 + 32))(v35, 64, 8);
    *v40 = 6;
    *(v40 + 8) = 3;
    *(v40 + 16) = v36;
    *(v40 + 24) = 0;
    *(v40 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)1>;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    qword_1EE1980B8 = v40;
    v41 = re::introspectionAllocator();
    v42 = v41;
    v43 = qword_1EE197EA0;
    if (!qword_1EE197EA0)
    {
      v43 = re::allocInfo_MeshAssetData(v41);
      qword_1EE197EA0 = v43;
      re::initInfo_MeshAssetData(v43, v44, v45, v46);
    }

    v47 = (*(*v42 + 32))(v42, 64, 8);
    *v47 = 6;
    *(v47 + 8) = 4;
    *(v47 + 16) = v43;
    *(v47 + 24) = 0;
    *(v47 + 32) = re::meshAssetDataUpgrade<(re::MeshAssetDataVersion)2>;
    *(v47 + 40) = 0;
    *(v47 + 48) = 0;
    *(v47 + 56) = 0;
    qword_1EE1980C0 = v47;
    __cxa_guard_release(&qword_1EE197E98);
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE198088;
  *(this + 9) = re::internal::defaultConstruct<re::MeshAssetData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MeshAssetData>;
  *(this + 13) = re::internal::defaultConstructV2<re::MeshAssetData>;
  *(this + 14) = re::internal::defaultDestructV2<re::MeshAssetData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v48 = v50;
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetModel>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F20, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F20);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE198488);
      qword_1EE198488 = &unk_1F5CC7498;
      __cxa_guard_release(&qword_1EE197F20);
    }
  }

  if ((byte_1EE197CFF & 1) == 0)
  {
    v1 = qword_1EE197E40;
    if (qword_1EE197E40 || (v1 = re::allocInfo_MeshAssetModel(a1), qword_1EE197E40 = v1, re::initInfo_MeshAssetModel(v1, v2, v3, v4), (byte_1EE197CFF & 1) == 0))
    {
      byte_1EE197CFF = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE198488, 0);
      qword_1EE198498 = 0x2800000003;
      dword_1EE1984A0 = v5;
      word_1EE1984A4 = 0;
      *&xmmword_1EE1984A8 = 0;
      *(&xmmword_1EE1984A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1984B8 = v1;
      qword_1EE1984C0 = 0;
      qword_1EE198488 = &unk_1F5CC7498;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE198488);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetModel>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1984A8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::MeshAssetInstance>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE197F28, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE197F28);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1984C8);
      qword_1EE1984C8 = &unk_1F5CC7530;
      __cxa_guard_release(&qword_1EE197F28);
    }
  }

  if ((byte_1EE197D00 & 1) == 0)
  {
    v1 = qword_1EE197E58;
    if (qword_1EE197E58 || (v1 = re::allocInfo_MeshAssetInstance(a1), qword_1EE197E58 = v1, re::initInfo_MeshAssetInstance(v1, v2, v3, v4), (byte_1EE197D00 & 1) == 0))
    {
      byte_1EE197D00 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1984C8, 0);
      qword_1EE1984D8 = 0x2800000003;
      dword_1EE1984E0 = v5;
      word_1EE1984E4 = 0;
      *&xmmword_1EE1984E8 = 0;
      *(&xmmword_1EE1984E8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1984F8 = v1;
      qword_1EE198500 = 0;
      qword_1EE1984C8 = &unk_1F5CC7530;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1984C8);
      if (v16)
      {
        v8 = *&v17[7];
      }

      else
      {
        v8 = v17;
      }

      if (v15 && (v16 & 1) != 0)
      {
        (*(*v15 + 40))();
      }

      v12 = *(v1 + 2);
      if (v19)
      {
        v11 = v19;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v18);
        re::TypeBuilder::TypeBuilder(&v15, v18);
        v14 = v12;
        re::TypeBuilder::beginListType(&v15, &v13, 1, 0x28uLL, 8uLL, &v14);
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::MeshAssetInstance>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1984E8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}