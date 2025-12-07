void re::StackScratchAllocator::FreePersistentBlocks(re::StackScratchAllocator *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = re::globalAllocators(v1);
        v1 = (*(*v6[2] + 40))(v6[2], v5);
        v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      }

      *(v4 + 8) = 0;
      v7 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
    }
  }

  atomic_store(0, &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

re::StackScratchAllocator *re::StackScratchAllocator::StackScratchAllocator(re::StackScratchAllocator *this)
{
  *(this + 16) = 0;
  *this = &unk_2873F3A70;
  *(this + 1) = "Thread-local Scratch Allocator";
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 108) = 0x7FFFFFFFLL;
  {
    v7 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
    _tlv_atexit(re::StackScratchAllocator::Root::~Root, v7);
  }

  v3 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
  v4 = *v3;
  if (*v3)
  {
    *(this + 6) = v4;
    *(this + 24) = *(v4 + 24);
    v5 = v3[1];
  }

  else
  {
    v5 = v3[1];
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = v5 + *(v5 + 8);
    *(this + 3) = v5 + 16;
    *(this + 4) = v8;
  }

  *(this + 5) = v5;
LABEL_6:
  *v3 = this;
  *(this + 7) = v3;
  return this;
}

void re::StackScratchAllocator::Root::~Root(re::StackScratchAllocator::Root *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = re::globalAllocators(v2);
    (*(*v4[2] + 40))(v4[2], v3);
    v6 = &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount;
    if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
    {
      v8 = 0;
      v9 = re::StackScratchAllocator::s_rootsWithPersistentBlocks;
      while (re::StackScratchAllocator::s_rootsWithPersistentBlocks[v8] != this)
      {
        ++v8;
        v10 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
        if (v8 >= v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Can't find allocated block", "!Unreachable code", "~Root", 193);
      _os_crash("assertion failure: (!Unreachable code) Can't find allocated block");
      __break(1u);
    }

    atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = atomic_load(v6);
    v12 = v9[v8];
    v9[v8] = v9[v11];
    v9[v11] = v12;
  }

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

void re::StackScratchAllocator::~StackScratchAllocator(re::StackScratchAllocator *this)
{
  v1 = this;
  *this = &unk_2873F3A70;
  v2 = *(this + 7);
  v3 = v2 + 1;
  v4 = v2[1];
  for (i = *(this + 5); v4 != i && *v4; i = *(v1 + 5))
  {
    *v3 = *v4;
    v6 = re::globalAllocators(this);
    this = (*(*v6[2] + 40))(v6[2], v4);
    v2 = *(v1 + 7);
    v3 = v2 + 1;
    v4 = v2[1];
  }

  *v2 = *(v1 + 6);
  re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v1 + 9);

  re::Allocator::~Allocator(v1);
}

{
  re::StackScratchAllocator::~StackScratchAllocator(this);

  JUMPOUT(0x266708EC0);
}

re::StackScratchAllocator **re::StackScratchAllocator::alloc(re::StackScratchAllocator ***this, uint64_t a2, uint64_t a3)
{
  if (*this[7] != this)
  {
    re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Attempting to allocate from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "alloc", 93);
    _os_crash("assertion failure: (m_root->m_top == this) Attempting to allocate from a StackScratchAlloc object that is not top of stack");
    __break(1u);
LABEL_7:
    re::StackScratchAllocator::growAndAlign(v3, v4, a3);
    result = v3[3];
    goto LABEL_5;
  }

  v4 = a2;
  v3 = this;
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v5 = this[4];
  result = ((this[3] + a3 - 1) & -a3);
  v3[3] = result;
  if ((result + a2) > v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v3[3] = (result + v4);
  return result;
}

void re::StackScratchAllocator::growAndAlign(re::StackScratchAllocator *this, uint64_t a2, uint64_t a3)
{
  if ((a3 + a2) <= 0x2000)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = a3 + a2 + 0x4000;
  }

  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], v5, 0);
  v8 = *(this + 7);
  *v7 = *(v8 + 8);
  v7[1] = v5;
  if (*(this + 3))
  {
    goto LABEL_7;
  }

  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  add = atomic_fetch_add(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount, 1uLL);
  if (add < 0x100)
  {
    re::StackScratchAllocator::s_rootsWithPersistentBlocks[add] = *(this + 7);
    std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
    v8 = *(this + 7);
LABEL_7:
    *(v8 + 8) = v7;
    *(this + 3) = (v7 + a3 + 15) & -a3;
    *(this + 4) = v7 + v5;
    return;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < MAX_THREADS", "growAndAlign", 161);
  _os_crash("assertion failure: (index < MAX_THREADS) ");
  __break(1u);
}

uint64_t re::StackScratchAllocator::free(uint64_t this, uint64_t a2)
{
  if (**(this + 56) != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to free from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "free", 124, v2, v3);
    this = _os_crash("assertion failure: (m_root->m_top == this) Attempting to free from a StackScratchAlloc object that is not top of stack");
    __break(1u);
  }

  return this;
}

double re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 6;
        --v3;
      }

      while (v3);
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

uint64_t *re::globalAllocators(re *this)
{
  {
    if (v2)
    {
      re::globalAllocators(void)::s_instance = &unk_2873F3B10;
      byte_2810C54A0 = 0;
      unk_2810C54B0 = 0u;
      unk_2810C54C0 = 0u;
      re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
    }
  }

  return &re::globalAllocators(void)::s_instance;
}

void anonymous namespace::internalSystemAllocator(_anonymous_namespace_ *this)
{
  {
    byte_2810C54E0 = 0;
    *algn_2810C54D8 = "System allocator";
  }
}

uint64_t *re::initGlobalAllocators(re *this)
{
  result = re::globalAllocators(this);
  if ((byte_2810C54A0 & 1) == 0)
  {
    re::globalAllocators(result);

    return re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
  }

  return result;
}

_anonymous_namespace_ *re::GlobalAllocators::init(_anonymous_namespace_ *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    re::globalMemoryTracker(this);
    if ((re::globalMemoryTracker(void)::s_instance & 1) == 0)
    {
      qword_2810C5460 = *(v1 + 2);
      re::DynamicArray<re::Allocator const*>::setCapacity(&qword_2810C5460, 0x400uLL);
      ++dword_2810C5478;
      re::globalMemoryTracker(void)::s_instance = 1;
    }

    re::MemoryTracker::track(&re::globalMemoryTracker(void)::s_instance, *(v1 + 2));
    v2 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v3 = re::Allocator::Allocator(v2, "SIMD-aligned allocator", 1);
    *v3 = &unk_2873F3BB0;
    *(v3 + 3) = 16;
    *(v1 + 3) = v3;
    v4 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v5 = re::Allocator::Allocator(v4, "Cache-aligned allocator", 1);
    *v5 = &unk_2873F3BB0;
    *(v5 + 3) = 128;
    *(v1 + 4) = v5;
    v6 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v7 = re::Allocator::Allocator(v6, "TLB-aligned allocator", 1);
    *v7 = &unk_2873F3BB0;
    *(v7 + 3) = 0x4000;
    *(v1 + 5) = v7;
    v8 = (*(**(v1 + 2) + 32))(*(v1 + 2), 5304, 8);
    *v8 = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 68) = 0u;
    *(v8 + 108) = 0x1FFFFFFFFLL;
    *(v8 + 120) = 0;
    *(v8 + 136) = 0;
    *(v8 + 144) = 0;
    *(v8 + 128) = 0;
    *(v8 + 152) = 0;
    bzero((v8 + 160), 0x1418uLL);
    *(v1 + 6) = v8;
    this = re::PerFrameAllocatorManager::init(v8);
    *(v1 + 8) = 1;
  }

  return this;
}

void re::deinitGlobalAllocators(re *this)
{
  v1 = re::globalAllocators(this);
  if (byte_2810C54A0 == 1)
  {
    re::globalAllocators(v1);

    re::GlobalAllocators::deinit(&re::globalAllocators(void)::s_instance);
  }
}

void re::GlobalAllocators::deinit(re::PerFrameAllocatorManager **this)
{
  if (*(this + 8) == 1)
  {
    re::StackScratchAllocator::FreePersistentBlocks(this);
    re::globalMemoryTracker(v2);
    re::PerFrameAllocatorManager::deinit(this[6]);
    v3 = this[2];
    v4 = this[6];
    if (v4)
    {
      v5 = 5120;
      do
      {
        *(v4 + v5 + 128) = 0;
        v5 -= 40;
      }

      while (v5);
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = *(v4 + 20);
        if (v7)
        {
          v8 = *(v4 + 18);
          if (v8)
          {
            v9 = 88 * v8;
            v10 = v7 + 48;
            do
            {
              re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10);
              re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10 - 40);
              v10 += 88;
              v9 -= 88;
            }

            while (v9);
            v6 = *(v4 + 16);
            v7 = *(v4 + 20);
          }

          (*(*v6 + 40))(v6, v7);
        }

        *(v4 + 20) = 0;
        *(v4 + 17) = 0;
        *(v4 + 18) = 0;
        *(v4 + 16) = 0;
        ++*(v4 + 38);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::deinit(v4 + 56);
      re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v4 + 56);
      v11 = *(v4 + 4);
      if (v11)
      {
        if (*(v4 + 5))
        {
          (*(*v11 + 40))(v11, *(v4 + 6));
          *(v4 + 5) = 0;
          *(v4 + 6) = 0;
        }

        *(v4 + 4) = 0;
      }

      v12 = *(v4 + 1);
      if (v12)
      {
        if (*(v4 + 2))
        {
          (*(*v12 + 40))(v12, *(v4 + 3));
          *(v4 + 2) = 0;
          *(v4 + 3) = 0;
        }

        *(v4 + 1) = 0;
      }

      (*(*v3 + 40))(v3, v4);
      v3 = this[2];
    }

    this[6] = 0;
    v13 = this[5];
    if (v13)
    {
      (**v13)(this[5]);
      (*(*v3 + 40))(v3, v13);
      v3 = this[2];
    }

    this[5] = 0;
    v14 = this[4];
    if (v14)
    {
      (**v14)(this[4]);
      (*(*v3 + 40))(v3, v14);
      v3 = this[2];
    }

    this[4] = 0;
    v15 = this[3];
    if (v15)
    {
      (**v15)(this[3]);
      (*(*v3 + 40))(v3, v15);
      v3 = this[2];
    }

    this[3] = 0;
    re::MemoryTracker::untrack(&re::globalMemoryTracker(void)::s_instance, v3);
    if (re::globalMemoryTracker(void)::s_instance == 1)
    {
      v16 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(&qword_2810C5460);
      re::globalMemoryTracker(void)::s_instance = 0;
    }

    *(this + 8) = 0;
  }
}

void re::GlobalAllocators::~GlobalAllocators(re::PerFrameAllocatorManager **this)
{
  *this = &unk_2873F3B10;
  re::GlobalAllocators::deinit(this);
}

{
  *this = &unk_2873F3B10;
  re::GlobalAllocators::deinit(this);

  JUMPOUT(0x266708EC0);
}

char *re::globalMemoryTracker(re *this)
{
  {
    if (v2)
    {
      re::globalMemoryTracker(void)::s_instance = 0;
      qword_2810C5480 = 0;
      *&algn_2810C5459[3] = 0u;
      unk_2810C546C = 0u;
      re::DynamicArray<re::Allocator const*>::setCapacity(&qword_2810C5460, 0x400uLL);
      ++dword_2810C5478;
      re::globalMemoryTracker(void)::s_instance = 1;
    }
  }

  return &re::globalMemoryTracker(void)::s_instance;
}

uint64_t re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    if (*(a1 + 32))
    {
      result = (*(*result + 40))(result);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::PerFrameAllocatorImpl>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x277D86220];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_26168F000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::PerFrameAllocatorImpl>::clear(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(v24);
      re::DataArray<re::PerFrameAllocatorImpl>::destroy(a1, v3);
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x277D86220];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_26168F000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t (***re::DataArray<re::PerFrameAllocatorImpl>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 16;
  result = re::DataArray<re::PerFrameAllocatorImpl>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
    {
      v11 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = MEMORY[0x277D86220];
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_26168F000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

unint64_t re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::handle(unsigned __int16 *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1[5];
  v2 = *(*a1 + 16);
  if (v2 <= v1)
  {
    v7 = 0;
    memset(v16, 0, sizeof(v16));
    v4 = MEMORY[0x277D86220];
    v8 = 136315906;
    v9 = "operator[]";
    v10 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
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
    _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_26168F000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
    _os_crash_msg();
    __break(1u);
  }

  return (v1 << 16) | ((*(*(*(*a1 + 32) + 16 * v1 + 8) + 4 * a1[4]) & 0xFFFFFF) << 32) | a1[4];
}

uint64_t re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::removeAt(uint64_t result, unint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (v3 <= a2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "removeAt";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 931;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  v4 = v3 - 1;
  if (v3 - 1 > a2)
  {
    *(*(result + 32) + 16 * a2) = *(*(result + 32) + 16 * v3 - 16);
    v4 = *(result + 16) - 1;
  }

  *(result + 16) = v4;
  ++*(result + 24);
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      v8 = 0;
      memset(v17, 0, sizeof(v17));
      v5 = MEMORY[0x277D86220];
      v9 = 136315906;
      v10 = "operator[]";
      v11 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      v12 = 797;
      v13 = 2048;
      v14 = 0;
      v15 = 2048;
      v16 = 0;
      _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(a1);
    }
  }

  return a1;
}

_WORD *re::DataArray<re::PerFrameAllocatorImpl>::DataArrayIterator<re::PerFrameAllocatorImpl,re::PerFrameAllocatorImpl&>::increment(_WORD *result)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    v6 = v5;
    if (v2 <= v5)
    {
      result[4] = v4;
      v10 = 0;
      memset(v19, 0, sizeof(v19));
      v7 = MEMORY[0x277D86220];
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v14 = 797;
      v15 = 2048;
      v16 = v6;
      v17 = 2048;
      v18 = v2;
      _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_26168F000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      return result;
    }
  }

  *(result + 2) = -1;
  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 184 * a2;
  }

  else
  {
    return 0;
  }
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *a3, size_t a4)
{
  if (!a3)
  {
    re::StringID::invalid(v14);
    v12 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    if ((v14[0] & 1) == 0)
    {
      return;
    }

LABEL_12:
    return;
  }

  if (!a4)
  {
    v14[0] = 0;
    v14[1] = "";
    v13 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a3;
  v8 = a4 - 1;
  if (a4 != 1)
  {
    v9 = a3 + 1;
    do
    {
      v10 = *v9++;
      v7 = v10 - v7 + 32 * v7;
      --v8;
    }

    while (v8);
  }

  *this = *this & 1 | (2 * v7);
  v11 = (*(*a2 + 32))(a2, a4 + 1, 0);
  memcpy(v11, a3, a4);
  *(v11 + a4) = 0;
  *this |= 1uLL;
  *(this + 1) = v11;
}

unint64_t *re::StringID::StringID(unint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  if (*a2)
  {
    v5 = a2[1];
    v6 = strlen(v5);
    memcpy(v7, v5, v6);
    *(v7 + v6) = 0;
    v8 = *a1 | 1;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v7 = a2[1];
  }

  *a1 = v8;
  a1[1] = v7;
  return a1;
}

void re::StringID::destroyString(re::StringID *this)
{
  if (*this)
  {
    if (*this)
    {
    }
  }

  *this = 0;
  *(this + 1) = "";
}

unint64_t *re::StringID::operator=(unint64_t *a1, uint64_t *a2)
{
  re::StringID::destroyString(a1);
  v5 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  v6 = *a2;
  *a1 = v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (v6)
  {
    v7 = a2[1];
    v8 = strlen(v7);
    memcpy(v9, v7, v8);
    *(v9 + v8) = 0;
  }

  else
  {
    v9 = a2[1];
  }

  a1[1] = v9;
  return a1;
}

_anonymous_namespace_ *re::StringID::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = "";
  v5 = *a1;
  *a1 = v3;
  *(a1 + 1) = v4;
  if (v5)
  {
  }

  return a1;
}

unint64_t *re::StringID::invalid@<X0>(unint64_t *__return_ptr a1@<X8>)
{
  v2 = a1;
  {
    v2 = a1;
    if (v4)
    {
      re::StringID::invalid(void)::invalid = -2;
      *algn_27FEB7A08 = "";
      v2 = a1;
    }
  }

  return re::StringID::StringID(v2, &re::StringID::invalid(void)::invalid);
}

BOOL re::StringID::operator==(void *a1, void *a2)
{
  if ((*a2 ^ *a1) > 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

re::MallocZoneAllocator *re::MallocZoneAllocator::MallocZoneAllocator(re::MallocZoneAllocator *this, const char *a2, BOOL a3)
{
  *re::Allocator::Allocator(this, a2, a3) = &unk_2873F3B40;
  zone = malloc_create_zone(0, 0);
  *(this + 3) = zone;
  malloc_set_zone_name(zone, a2);
  return this;
}

void re::MallocZoneAllocator::~MallocZoneAllocator(malloc_zone_t **this)
{
  *this = &unk_2873F3B40;
  malloc_destroy_zone(this[3]);
  this[3] = 0;

  re::Allocator::~Allocator(this);
}

{
  *this = &unk_2873F3B40;
  malloc_destroy_zone(this[3]);
  this[3] = 0;
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::MallocZoneAllocator::alloc(malloc_zone_t **this, size_t size, unint64_t a3)
{
  v3 = 16;
  if (a3 > 0x10)
  {
    v3 = a3;
  }

  return malloc_type_zone_memalign(this[3], (v3 + 7) & 0xFFFFFFFFFFFFFFF8, size, 0xCBDF958BuLL);
}

void re::MallocZoneAllocator::free(malloc_zone_t **this, void *a2)
{
  if (a2)
  {
    malloc_zone_free(this[3], a2);
  }
}

void re::MemoryTracker::track(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::add(&this[2], &v3);
  os_unfair_lock_unlock(this + 1);
}

_anonymous_namespace_ *re::DynamicArray<re::Allocator const*>::add(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::Allocator const*>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 8 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::MemoryTracker::untrack(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::removeStable(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

uint64_t re::DynamicArray<re::Allocator const*>::removeStable(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v3)
  {
    v4 = 8 * v3;
    for (i = a1[4]; *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = a1[4];
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::Allocator const*>::removeStableAt(a1, (i - v2) >> 3);
  return 1;
}

void *re::DynamicArray<re::Allocator const*>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
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
            memcpy(v7, v5[4], 8 * v5[2]);
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
        result = re::DynamicArray<re::Allocator const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Allocator const*>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::Allocator const*>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Allocator const*>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Allocator const*>::removeStableAt(void *result, unint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = result[2];
  if (v3 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x277D86220];
    v12 = 136315906;
    v13 = "removeStableAt";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 969;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_26168F000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = result[4];
    result = (v6 + 8 * a2);
    v7 = (v6 + 8 * v3);
    if (v7 != (result + 1))
    {
      result = memmove(result, result + 1, v7 - (result + 1));
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

id *re::ObjCObject::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    objc_storeStrong(location, *a2);
  }

  return location;
}

void **re::ObjCObject::operator=(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (*a1 != v3)
  {
    *a1 = v3;

    v3 = 0;
  }

  return a1;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *__s, re::Allocator *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  v6 = strlen(__s);
  if (v6)
  {
    v7 = v6;
    *this = a3;
    re::DynamicString::setCapacity(this, v6 + 1);
    re::DynamicString::assign(this, __s, v7);
  }

  else
  {
    *this = a3;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::assign(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 23;
  }

  if (v7 <= __len)
  {
    re::DynamicString::growCapacity(this, __len + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v8 = *(this + 2);
  }

  else
  {
    v8 = this + 9;
  }

  result = memmove(v8, __src, __len);
  if (*(this + 8))
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  v10[__len] = 0;
  if (*(this + 8))
  {
    *(this + 1) = (2 * __len) | 1;
  }

  else
  {
    *(this + 8) = 2 * __len;
  }

  return result;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *this = *a2;
    re::DynamicString::setCapacity(this, v5 + 1);
    re::DynamicString::copy(this, a2);
  }

  else
  {
    v6 = *a2;
    if (!*a2)
    {
    }

    *this = v6;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::copy(void *this, const re::DynamicString *a2)
{
  v2 = this;
  v3 = *(a2 + 1);
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    v4 = v3 >> 1;
  }

  v5 = this[1];
  if (v4)
  {
    if (v5)
    {
      v7 = this[3];
    }

    else
    {
      v7 = 23;
    }

    if (v4 >= v7)
    {
      re::DynamicString::setCapacity(this, v4 + 1);
      v5 = v2[1];
    }

    if (v5)
    {
      v9 = v2[2];
    }

    else
    {
      v9 = v2 + 9;
    }

    v10 = *(a2 + 1);
    if (v10)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12 = v10 >> 1;
    v13 = v10 >> 1;
    if (*(a2 + 1))
    {
      v13 = v12;
    }

    this = memmove(v9, v11, v13 + 1);
    v14 = *(a2 + 1);
    if (v2[1])
    {
      v15 = 254;
      if (v14)
      {
        v15 = -2;
      }

      v2[1] = v15 & v14 | 1;
    }

    else
    {
      *(v2 + 8) = v14 & 0xFE;
    }
  }

  else
  {
    if (v5)
    {
      this[1] = 1;
      v8 = this[2];
    }

    else
    {
      *(this + 8) = 0;
      v8 = this + 9;
    }

    *v8 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    if (!*this)
    {
      re::DynamicString::setCapacity(this, v3 + 1);
    }

    re::DynamicString::assign(this, *a2, v3);
  }

  else
  {
    if (*(this + 8))
    {
      *(this + 1) = 1;
      v5 = *(this + 2);
    }

    else
    {
      *(this + 8) = 0;
      v5 = this + 9;
    }

    *v5 = 0;
  }

  return this;
}

void *re::DynamicString::setCapacity(void *this, size_t __n)
{
  v3 = this;
  v4 = this[1];
  if (__n <= 0x17)
  {
    if ((v4 & 1) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v5 = 0;
    v6 = this[3];
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 23;
LABEL_7:
  if (v6 != __n)
  {
    v7 = v5 ? v4 >> 1 : v4 >> 1;
    if (v7 < __n)
    {
      if (__n > 0x16)
      {
        this = (*(**this + 32))();
        if (!this)
        {
          re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "newBuffer", "setCapacity", 455);
          this = _os_crash("assertion failure: (newBuffer) Out of memory.");
          __break(1u);
          return this;
        }

        v11 = this;
        *this = 0;
        v12 = v3[1];
        v13 = v12 >> 1;
        if ((v12 & 1) == 0)
        {
          v13 = v12 >> 1;
        }

        if (v13)
        {
          if (v12)
          {
            v14 = v3[2];
          }

          else
          {
            v14 = v3 + 9;
          }

          this = memcpy(this, v14, v13 + 1);
          v12 = v3[1];
        }

        if (v12)
        {
          this = (*(**v3 + 40))(*v3, v3[2]);
          v15 = v3[1];
        }

        else
        {
          v15 = v12 & 0xFE;
        }

        v3[2] = v11;
        v3[3] = __n;
        v9 = v15 | 1;
      }

      else
      {
        v8 = this[2];
        *(this + 8) = v4;
        memcpy(this + 9, v8, __n);
        this = (*(**v3 + 40))(*v3, v8);
        v9 = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      }

      v3[1] = v9;
    }
  }

  return this;
}

double re::DynamicString::deinit(re::DynamicString *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8))
    {
      (*(*v2 + 40))(v2, *(this + 2));
    }

    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, re::DynamicString *a2)
{
  if (this == a2)
  {
    return this;
  }

  v4 = *a2;
  if (!*this)
  {
    if (!v4)
    {
      return this;
    }

    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 >> 1;
    }

    *this = v4;
    re::DynamicString::setCapacity(this, v7 + 1);
LABEL_11:
    re::DynamicString::copy(this, a2);
    return this;
  }

  if (v4)
  {
    goto LABEL_11;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v5 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v5 = this + 9;
  }

  *v5 = 0;
  return this;
}

{
  if (this != a2)
  {
    v3 = *this;
    v4 = *a2;
    if (*this)
    {
      v5 = v3 == v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *this = v4;
      *a2 = v3;
      v6 = *(this + 3);
      *(this + 3) = *(a2 + 3);
      *(a2 + 3) = v6;
      v8 = *(this + 1);
      v7 = *(this + 2);
      v9 = *(a2 + 2);
      *(this + 1) = *(a2 + 1);
      *(this + 2) = v9;
      *(a2 + 1) = v8;
      *(a2 + 2) = v7;
    }

    else if (v4)
    {
      re::DynamicString::copy(this, a2);
    }

    else
    {
      if (*(this + 8))
      {
        *(this + 1) = 1;
        v10 = *(this + 2);
      }

      else
      {
        *(this + 8) = 0;
        v10 = this + 9;
      }

      *v10 = 0;
    }
  }

  return this;
}

BOOL re::DynamicString::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) == 0;
}

void *re::DynamicString::append(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  v8 = v7 + __len;
  if (v6)
  {
    v9 = *(this + 3);
  }

  else
  {
    v9 = 23;
  }

  if (v8 >= v9)
  {
    re::DynamicString::growCapacity(this, v8 + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  if (v6)
  {
    v11 = v6 >> 1;
  }

  else
  {
    v11 = v6 >> 1;
  }

  result = memmove(&v10[v11], __src, __len);
  v13 = *(this + 1);
  if (v13)
  {
    v14 = v13 + 2 * __len;
    *(this + 1) = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 8) = v13 + 2 * __len;
    v14 = *(this + 1);
    if (v14)
    {
LABEL_16:
      v15 = *(this + 2);
      goto LABEL_19;
    }
  }

  v15 = this + 9;
LABEL_19:
  if (v14)
  {
    v16 = v14 >> 1;
  }

  else
  {
    v16 = v14 >> 1;
  }

  v15[v16] = 0;
  return result;
}

void *re::DynamicString::growCapacity(void *this, size_t a2)
{
  if (this[1])
  {
    v3 = this[3];
    if (v3 >= a2)
    {
      return this;
    }

    v2 = 2 * v3;
  }

  else
  {
    if (a2 <= 0x17)
    {
      return this;
    }

    v2 = 64;
  }

  if (v2 > a2)
  {
    a2 = v2;
  }

  return re::DynamicString::setCapacity(this, a2);
}

uint64_t re::DynamicString::vappendf(re::DynamicString *this, const char *__format, va_list a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 >> 1;
    v8 = *(this + 3);
    v7 = (*(this + 2) + (v5 >> 1));
  }

  else
  {
    v6 = v5 >> 1;
    v7 = this + v6 + 9;
    v8 = 23;
  }

  result = vsnprintf(v7, v8 - v6, __format, a3);
  v10 = *(this + 1);
  if ((result & 0x80000000) == 0)
  {
    v11 = v10 >> 1;
    v12 = v10 >> 1;
    if (v10)
    {
      v12 = v10 >> 1;
    }

    v13 = v12 + result;
    if (v10)
    {
      if (v13 >= *(this + 3))
      {
        v14 = *(this + 2);
        if (!v14)
        {
LABEL_16:
          re::DynamicString::growCapacity(this, result + v11 + 1);
          v17 = *(this + 1);
          if (v17)
          {
            v18 = v17 >> 1;
            v20 = *(this + 3);
            v19 = (*(this + 2) + (v17 >> 1));
          }

          else
          {
            v18 = v17 >> 1;
            v19 = this + v18 + 9;
            v20 = 23;
          }

          result = vsnprintf(v19, v20 - v18, __format, a3);
          goto LABEL_25;
        }

LABEL_14:
        v14[v12] = 0;
        v16 = *(this + 1);
        v11 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v11 = v16 >> 1;
        }

        goto LABEL_16;
      }
    }

    else if (v13 >= 0x17)
    {
      v14 = this + 9;
      goto LABEL_14;
    }

LABEL_25:
    v22 = *(this + 1);
    if (v22)
    {
      *(this + 1) = v22 + 2 * result;
    }

    else
    {
      *(this + 8) = v22 + 2 * result;
    }

    return result;
  }

  if (v10)
  {
    v15 = *(this + 2);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = this + 9;
  }

  if (v10)
  {
    v21 = v10 >> 1;
  }

  else
  {
    v21 = v10 >> 1;
  }

  v15[v21] = 0;
  return result;
}

uint64_t re::DynamicString::vassignf(re::DynamicString *this, const char *__format, va_list a3)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  return re::DynamicString::vappendf(this, __format, a3);
}

void *re::DynamicString::resize(void *this, unint64_t a2, int a3)
{
  v3 = this[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 != a2)
  {
    v7 = this;
    this = re::DynamicString::growCapacity(this, a2 + 1);
    v8 = v7[1];
    v9 = v8 >> 1;
    if ((v8 & 1) == 0)
    {
      v9 = v8 >> 1;
    }

    if (a2 > v9)
    {
      if (v8)
      {
        v10 = v7[2];
      }

      else
      {
        v10 = v7 + 9;
      }

      this = memset(&v10[v9], a3, a2 - v9);
      v8 = v7[1];
    }

    if (v8)
    {
      v11 = v7[2];
    }

    else
    {
      v11 = v7 + 9;
    }

    v11[a2] = 0;
    if (v7[1])
    {
      v7[1] = (2 * a2) | 1;
    }

    else
    {
      *(v7 + 8) = 2 * a2;
    }
  }

  return this;
}

void *re::DynamicString::substr@<X0>(re::DynamicString *this@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, re::DynamicString *a4@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (v7 < a2)
  {
    re::internal::assertLog(6, a2, a3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "substr", 610, a2, v7);
    result = _os_crash("assertion failure: (index <= size()) Index out of range. index = %zu, size = %zu", v12, v13);
    __break(1u);
  }

  else
  {
    if (v7 - a2 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v7 - a2;
    }

    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    re::DynamicString::setCapacity(a4, 0);
    *a4 = *this;
    re::DynamicString::setCapacity(a4, v9);
    if (*(this + 8))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = this + 9;
    }

    return re::DynamicString::assign(a4, &v10[a2], v9);
  }

  return result;
}

re::DynamicString *re::DynamicString::rfind@<X0>(re::DynamicString *this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return re::DynamicString::rfind(this, a2, v4 - 1, a3);
  }

  *a3 = 0;
  return this;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 <= a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < size()", "rfind", 667, a3, v5);
    this = _os_crash("assertion failure: (offset < size()) offset out of range. offset = %zu, size = %zu", v12, v13);
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(this + 16);
    }

    else
    {
      v6 = this + 9;
    }

    v7 = this + 9;
    v8 = a3 + v6;
    v9 = -(a3 + v6);
    v10 = v8 + 1;
    while (*(v10 - 1) != a2)
    {
      v11 = this + 9;
      if (v4)
      {
        v11 = *(this + 16);
      }

      ++v9;
      if (--v10 == v11)
      {
        *a4 = 0;
        return this;
      }
    }

    if (v4)
    {
      v7 = *(this + 16);
    }

    *a4 = 1;
    *(a4 + 8) = -(v7 + v9);
  }

  return this;
}

uint64_t re::DynamicString::format@<X0>(re::DynamicString *this@<X0>, re::DynamicString *a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  return re::DynamicString::vassignf(a2, this, va);
}

uint64_t *re::foundationCoreLogObjects(re *this)
{
  {
    re::foundationCoreLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Core");
  }

  return &re::foundationCoreLogObjects(void)::logObjects;
}

uint64_t re::internal::enableSignposts(re::internal *this, unsigned int a2)
{
  {
    v4 = a2;
    v5 = this;
    LOBYTE(a2) = v4;
    LOBYTE(this) = v5;
    if (v3)
    {
      re::Defaults::intValue(&v6, "enableSignposts", v4);
      re::internal::enableSignposts(BOOL,BOOL)::value = v6 ^ 1 | (HIDWORD(v6) != 0);
      LOBYTE(a2) = v4;
      LOBYTE(this) = v5;
    }
  }

  if (this)
  {
    re::internal::enableSignposts(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableSignposts(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

uint64_t re::internal::enableHighFrequencyNetworkTracing(re::internal *this, unsigned int a2)
{
  {
    v5 = a2;
    v6 = this;
    LOBYTE(a2) = v5;
    LOBYTE(this) = v6;
    if (v3)
    {
      re::Defaults::intValue(&v7, "enableHighFrequencyNetworkTracing", v5);
      v4 = v7;
      if (!HIDWORD(v7))
      {
        v4 = 0;
      }

      re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = v4;
      LOBYTE(a2) = v5;
      LOBYTE(this) = v6;
    }
  }

  if (this)
  {
    re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value = a2;
  }

  else
  {
    LOBYTE(a2) = re::internal::enableHighFrequencyNetworkTracing(BOOL,BOOL)::value;
  }

  return a2 & 1;
}

void re::Defaults::intValue(uint64_t *__return_ptr a1@<X8>, re::Defaults *this@<X0>, const char *a3@<X1>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a1 + 1) = [v4 intValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

re *anonymous namespace::getValue(_anonymous_namespace_ *this, const char *a2)
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s.%s", "com.apple.re", this];
  v5 = [v3 objectForKey:v4];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
    v7 = [v3 objectForKey:v6];
    if (v7)
    {
      v5 = v7;
    }

    else
    {
      v8 = [v4 rangeOfString:@"." options:4];
      v9 = [v4 substringToIndex:v8];
      v10 = [v4 substringFromIndex:v8 + 1];

      if ([(__CFString *)v9 isEqualToString:@"com.apple.re.network.multipeerservice"])
      {

        v9 = @"com.apple.renetwork.multipeerservice";
      }

      v11 = [v3 dictionaryForKey:v9];
      v5 = [v11 objectForKey:v10];

      if (!v5)
      {
        goto LABEL_11;
      }

      v6 = v10;
    }

    v12 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
    }

    v10 = v6;
LABEL_11:
  }

  return v5;
}

void re::Defaults::BOOLValue(re::Defaults *this@<X0>, const char *a2@<X1>, char *a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    a3[1] = [v4 BOOLValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

void re::Defaults::uintValue(re::Defaults *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
  v4 = {;
  if (v4)
  {
    v6 = v4;
    *(a3 + 4) = [v4 unsignedIntValue];
    v4 = v6;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
}

void re::AlignedAllocator::~AlignedAllocator(re::AlignedAllocator *this)
{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);
}

{
  *(this + 3) = 0;
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::AlignedAllocator::alloc(re::AlignedAllocator *this, size_t size)
{
  v2 = *(this + 3) + 7;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, v2 & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  result = memptr;
  __dmb(0xBu);
  return result;
}

re::Allocator *re::Allocator::Allocator(re::Allocator *this, const char *a2, int a3)
{
  *this = &unk_2873F3C20;
  *(this + 1) = a2;
  *(this + 16) = a3;
  if (a3)
  {
    v4 = re::globalMemoryTracker(this);
    if (*v4 == 1)
    {
      v5 = re::globalMemoryTracker(v4);
      re::MemoryTracker::track(v5, this);
    }
  }

  return this;
}

void re::Allocator::~Allocator(re::Allocator *this)
{
  *this = &unk_2873F3C20;
  if (*(this + 16) == 1)
  {
    v2 = re::globalMemoryTracker(this);
    if (*v2 == 1)
    {
      v3 = re::globalMemoryTracker(v2);
      re::MemoryTracker::untrack(v3, this);
    }
  }
}

_anonymous_namespace_ *re::PerFrameAllocatorManager::init(_anonymous_namespace_ *this)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*this)
  {
    return this;
  }

  v1 = this;
  *(v1 + 2) = 16;
  *(v1 + 3) = v2;
  if (!v2)
  {
    goto LABEL_36;
  }

  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v1 + 5) = 16;
  *(v1 + 6) = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

  v6 = 0;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *v1 = 1;
  do
  {
    v7 = *(v1 + 5);
    if (v7 <= v6)
    {
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v22 = MEMORY[0x277D86220];
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v33 = 468;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v7;
      _os_log_send_and_compose_impl(v23, &v29, &v38, 80, &dword_26168F000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
      _os_crash_msg();
      __break(1u);
LABEL_32:
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v24 = MEMORY[0x277D86220];
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v30 = 136315906;
      v31 = "operator[]";
      v32 = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v33 = 468;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v7;
      _os_log_send_and_compose_impl(v26, &v29, &v38, 80, &dword_26168F000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v27, v28);
      _os_crash_msg();
      __break(1u);
LABEL_36:
      re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_37:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    *(*(v1 + 6) + 8 * v6) = 0;
    v7 = *(v1 + 2);
    if (v7 <= v6)
    {
      goto LABEL_32;
    }

    *(*(v1 + 3) + 8 * v6++) = 0;
  }

  while (v6 != 16);
  v8 = *(v1 + 18);
  if (v8 > 0xE)
  {
    if (v8 != 15)
    {
      v13 = 15;
      v14 = 1328;
      do
      {
        v15 = *(v1 + 20) + v14;
        re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v15 + 40);
        v4 = re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v15);
        ++v13;
        v14 += 88;
      }

      while (v13 < *(v1 + 18));
      goto LABEL_18;
    }
  }

  else
  {
    if (*(v1 + 17) > 0xEuLL || (v4 = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v1 + 16), v8 = *(v1 + 18), v8 <= 0xE))
    {
      v9 = v8 - 15;
      v10 = 88 * v8;
      do
      {
        v11 = *(v1 + 20) + v10;
        *(v11 + 80) = 0;
        *v11 = 0uLL;
        *(v11 + 16) = 0uLL;
        *(v11 + 32) = 0;
        *(v11 + 40) = 0uLL;
        *(v11 + 56) = 0uLL;
        *(v11 + 72) = 0;
        v10 += 88;
      }

      while (!__CFADD__(v9++, 1));
    }

LABEL_18:
    *(v1 + 18) = 15;
    ++*(v1 + 38);
  }

  v16 = 0;
  v17 = xmmword_261710400;
  v18 = vdupq_n_s64(0xFuLL);
  v19 = *(v1 + 20);
  v20 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v18, v17)).u8[0])
    {
      *v19 = 0x10000 << v16;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v17)).i32[1])
    {
      v19[11] = 0x20000 << v16;
    }

    v16 += 2;
    v17 = vaddq_s64(v17, v20);
    v19 += 22;
  }

  while (v16 != 16);
  v21 = v1 + 56;
  re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(v21, 0);
  ++*(v21 + 6);
  *(v21 + 11) = 16;

  return re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(v21);
}

re *re::PerFrameAllocatorManager::deinit(re *this)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*this == 1)
  {
    v1 = this;
    this = re::DataArray<re::PerFrameAllocatorImpl>::deinit(this + 56);
    v2 = *(v1 + 18);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(v1 + 20) + 88 * i;
        v5 = *(v4 + 64);
        if (v5)
        {
          for (j = 0; j < v5; ++j)
          {
            k = **(*(v4 + 80) + 8 * j);
            if (k)
            {
              v8 = re::globalAllocators(this);
              (*(*v8[2] + 40))(v8[2], k);
              v5 = *(v4 + 64);
            }

            if (v5 <= j)
            {
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v9 = MEMORY[0x277D86220];
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v10 = 3;
              }

              else
              {
                v10 = 2;
              }

              v25 = 789;
              v26 = 2048;
              v27 = j;
              v28 = 2048;
              v29 = v5;
              _os_log_send_and_compose_impl(v10, &v21, &v30, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_23:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v11 = MEMORY[0x277D86220];
              v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v12)
              {
                v13 = 3;
              }

              else
              {
                v13 = 2;
              }

              v25 = 789;
              v26 = 2048;
              v27 = j;
              v28 = 2048;
              v29 = v5;
              _os_log_send_and_compose_impl(v13, &v21, &v30, 80, &dword_26168F000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_27:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v14 = MEMORY[0x277D86220];
              v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v15)
              {
                v16 = 3;
              }

              else
              {
                v16 = 2;
              }

              v25 = 468;
              v26 = 2048;
              v27 = k;
              v28 = 2048;
              v29 = j;
              _os_log_send_and_compose_impl(v16, &v21, &v30, 80, &dword_26168F000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
LABEL_31:
              v21 = 0;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v30 = 0u;
              v17 = MEMORY[0x277D86220];
              v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              v22 = 136315906;
              v23 = "operator[]";
              v24 = 1024;
              if (v18)
              {
                v19 = 3;
              }

              else
              {
                v19 = 2;
              }

              v25 = 468;
              v26 = 2048;
              v27 = k;
              v28 = 2048;
              v29 = j;
              _os_log_send_and_compose_impl(v19, &v21, &v30, 80, &dword_26168F000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v20);
              _os_crash_msg();
              __break(1u);
            }

            this = re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(*(*(v4 + 80) + 8 * j));
            v5 = *(v4 + 64);
            if (v5 <= j)
            {
              goto LABEL_23;
            }

            *(*(v4 + 80) + 8 * j) = 0;
          }

          v2 = *(v1 + 18);
        }

        *(v4 + 64) = 0;
        ++*(v4 + 72);
        *(v4 + 24) = 0;
        ++*(v4 + 32);
      }
    }

    for (k = 0; k != 16; ++k)
    {
      j = *(v1 + 5);
      if (j <= k)
      {
        goto LABEL_27;
      }

      *(*(v1 + 6) + 8 * k) = 0;
      j = *(v1 + 2);
      if (j <= k)
      {
        goto LABEL_31;
      }

      *(*(v1 + 3) + 8 * k) = 0;
    }

    *v1 = 0;
  }

  return this;
}

re *re::internal::destroyPersistent<re::internal::PerFrameAllocatorChunk>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v1 + 10);
    re::Allocator::~Allocator((v1 + 16));
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void *re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(void *result)
{
  if (result[1] != 15)
  {
    v1 = result;
    if (result[2] <= 0xFuLL)
    {
      v2 = *result;
      if (*v1)
      {
        result = (*(*v2 + 32))(v2, 1320, 8);
        if (result)
        {
          v4 = result;
          if (v1[1])
          {
            v5 = v1[4];
            v6 = v1[2];
            if (v6)
            {
              v7 = v5 + 88 * v6;
              v8 = result;
              do
              {
                v9 = *v5;
                v8[5] = 0;
                *v8 = v9;
                v8[1] = 0;
                *(v8 + 8) = 0;
                v8[2] = 0;
                v8[3] = 0;
                v10 = v5 + 8;
                v11 = *(v5 + 16);
                v8[1] = *(v5 + 8);
                *(v5 + 8) = 0;
                v8[2] = v11;
                *(v5 + 16) = 0;
                v12 = v8[3];
                v8[3] = *(v5 + 24);
                *(v5 + 24) = v12;
                v13 = v8[5];
                v8[5] = *(v5 + 40);
                *(v5 + 40) = v13;
                ++*(v5 + 32);
                ++*(v8 + 8);
                v8[10] = 0;
                v8[7] = 0;
                v8[8] = 0;
                v8[6] = 0;
                *(v8 + 18) = 0;
                v14 = *(v5 + 48);
                v15 = *(v5 + 56);
                v16 = v5 + 48;
                v8[6] = v14;
                v8[7] = v15;
                *v16 = 0;
                *(v16 + 8) = 0;
                v17 = v8[8];
                v8[8] = *(v16 + 16);
                *(v16 + 16) = v17;
                v18 = v8[10];
                v8[10] = *(v16 + 32);
                *(v16 + 32) = v18;
                ++*(v16 + 24);
                ++*(v8 + 18);
                re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v16);
                re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(v10);
                v8 += 11;
                v5 = v16 + 40;
              }

              while (v5 != v7);
              v5 = v1[4];
            }

            result = (*(**v1 + 40))(*v1, v5);
          }

          v1[4] = v4;
          v1[1] = 15;
        }

        else
        {
          re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 1320, *(*v1 + 8));
          result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v20);
          __break(1u);
        }
      }

      else
      {
        result = re::DynamicArray<re::PerFrameAllocatorManager::ChunkGroup>::setCapacity(v1);
        ++*(v1 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DataArray<re::PerFrameAllocatorImpl>::allocBlock(void *a1)
{
  v3 = 184 * *(a1 + 11);
  v4 = (*(**a1 + 32))(*a1, v3, 0);
  if (!v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v3, *(*a1 + 8));
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
    __break(1u);
    goto LABEL_16;
  }

  v6 = v4;
  v1 = 4 * *(a1 + 11);
  result = (*(**a1 + 32))(*a1, v1, 0);
  if (!result)
  {
LABEL_16:
    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v1, *(*a1 + 8));
    result = _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
    __break(1u);
    return result;
  }

  v9 = result;
  v11 = a1[1];
  v10 = a1[2];
  if (v10 >= v11)
  {
    v12 = v10 + 1;
    if (v11 < v10 + 1)
    {
      if (*a1)
      {
        v13 = 2 * v11;
        if (!v11)
        {
          v13 = 8;
        }

        if (v13 <= v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(a1, v12);
        ++*(a1 + 6);
      }
    }

    v10 = a1[2];
  }

  v15 = (a1[4] + 16 * v10);
  *v15 = v6;
  v15[1] = v9;
  a1[2] = v10 + 1;
  ++*(a1 + 6);
  *(a1 + 12) = 0;
  return result;
}

void *re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
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
            memcpy(v7, v5[4], 16 * v5[2]);
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
        result = re::DynamicArray<re::DataArray<re::PerFrameAllocatorImpl>::ElementBlock>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::InlineString<32ul>::vappendf(char *a1, char *__format, va_list a3)
{
  v4 = (a1 + 8);
  result = vsnprintf(&a1[*a1 + 8], 32 - *a1, __format, a3);
  if ((result & 0x80000000) != 0)
  {
    *(v4 + *a1) = 0;
  }

  else
  {
    v7 = *a1 + result;
    if (v7 >= 0x20)
    {
      re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "m_length + result < m_capacity", "vappendf", 446, a3, a3);
      result = _os_crash("assertion failure: (m_length + result < m_capacity) ");
      __break(1u);
    }

    else
    {
      *a1 = v7;
    }
  }

  return result;
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(result + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(result + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(result, 2 * *(result + 28));
      LODWORD(v8) = v6 % *(result + 24);
      v12 = *(result + 32);
      v4 = *a2;
    }

    *(result + 32) = v12 + 1;
    v13 = *(result + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(result + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(result + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  *(*(result + 16) + 24 * v11 + 8) = *(*(result + 16) + 24 * v11 + 8) & 0x80000000 | *(*(result + 8) + 4 * v8);
  *(*(result + 16) + 24 * v11) = v6;
  *(*(result + 16) + 24 * v11 + 16) = v4;
  *(*(result + 8) + 4 * v8) = v11;
  ++*(result + 28);
  ++*(result + 40);
}

uint64_t re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(uint64_t result, unint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = (v3 ^ (v3 >> 31)) % v2;
    v5 = *(result + 8);
    v6 = *(v5 + 4 * v4);
    if (v6 != 0x7FFFFFFF)
    {
      v7 = *(result + 16);
      if (*(v7 + 24 * v6 + 16) == a2)
      {
        *(v5 + 4 * v4) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
LABEL_8:
        v9 = *(result + 16);
        v10 = v9 + 24 * v6;
        v13 = *(v10 + 8);
        v12 = (v10 + 8);
        v11 = v13;
        if (v13 < 0)
        {
          *v12 = v11 & 0x7FFFFFFF;
          v9 = *(result + 16);
          v11 = *(v9 + 24 * v6 + 8);
        }

        v14 = *(result + 40);
        *(v9 + 24 * v6 + 8) = *(result + 36) | v11 & 0x80000000;
        --*(result + 28);
        *(result + 36) = v6;
        *(result + 40) = v14 + 1;
      }

      else
      {
        while (1)
        {
          v8 = v6;
          LODWORD(v6) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
          if (v6 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v7 + 24 * v6 + 16) == a2)
          {
            *(v7 + 24 * v8 + 8) = *(v7 + 24 * v8 + 8) & 0x80000000 | *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
            goto LABEL_8;
          }
        }
      }
    }
  }

  return result;
}

re::ThreadSafeAutoFreeAllocator *re::ThreadSafeAutoFreeAllocator::ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this, const char *a2, re::Allocator *a3)
{
  *(this + 16) = 0;
  *this = &unk_2873F3C88;
  *(this + 1) = a2;
  *(this + 3) = a3;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 2) = 0u;
  *(this + 68) = 0x7FFFFFFFLL;
  *(this + 20) = 0;
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(this + 32, a3, 3);
  return this;
}

void re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(re::ThreadSafeAutoFreeAllocator *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 6) + 8);
    while (1)
    {
      v5 = *v4;
      v4 += 6;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 16);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v2)
  {
    re::ThreadSafeAutoFreeAllocator::free(this, *(*(this + 6) + 24 * v3 + 16));
    v6 = *(this + 16);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 6) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 32);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 4);

  re::Allocator::~Allocator(this);
}

{
  re::ThreadSafeAutoFreeAllocator::~ThreadSafeAutoFreeAllocator(this);

  JUMPOUT(0x266708EC0);
}

uint64_t re::ThreadSafeAutoFreeAllocator::free(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::remove(&this[8], a2);
  os_unfair_lock_unlock(this + 20);
  v4 = *(**&this[6]._os_unfair_lock_opaque + 40);

  return v4();
}

uint64_t re::ThreadSafeAutoFreeAllocator::alloc(re::ThreadSafeAutoFreeAllocator *this, uint64_t a2)
{
  v3 = (*(**(this + 3) + 32))(*(this + 3), a2, 0);
  v5 = v3;
  os_unfair_lock_lock(this + 20);
  re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::add(this + 32, &v5);
  os_unfair_lock_unlock(this + 20);
  return v3;
}

double re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
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

void re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v24, 0, 36);
      *&v24[36] = 0x7FFFFFFFLL;
      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::init(v24, v4, a2);
      v5 = *a1;
      *a1 = *v24;
      v6 = *(a1 + 2);
      v7 = *&v24[8];
      *v24 = v5;
      *&v24[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v24[24];
      *&v24[24] = *(a1 + 24);
      v8 = *&v24[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = 0;
        v13 = v7;
        v14 = DWORD1(v9);
        do
        {
          v15 = (*&v24[16] + v11);
          if ((*(*&v24[16] + v11 + 8) & 0x80000000) != 0)
          {
            v16 = *v15;
            v17 = *(a1 + 6);
            v18 = *v15 % v17;
            v19 = *(a1 + 9);
            if (v19 == 0x7FFFFFFF)
            {
              v19 = *(a1 + 8);
              v20 = v19;
              if (v19 == v17)
              {
                re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, 2 * v14);
                v18 = v16 % *(a1 + 6);
                v20 = *(a1 + 8);
                v13 = *(a1 + 1);
              }

              *(a1 + 8) = v20 + 1;
              v21 = *(a1 + 2);
              v22 = *(v21 + 24 * v19 + 8);
            }

            else
            {
              v21 = *(a1 + 2);
              v22 = *(v21 + 24 * v19 + 8);
              *(a1 + 9) = v22 & 0x7FFFFFFF;
            }

            *(v21 + 24 * v19 + 8) = v22 | 0x80000000;
            *(*(a1 + 2) + 24 * v19 + 8) = *(*(a1 + 2) + 24 * v19 + 8) & 0x80000000 | *(v13 + 4 * v18);
            *(*(a1 + 2) + 24 * v19) = v16;
            *(*(a1 + 2) + 24 * v19 + 16) = v15[2];
            v13 = *(a1 + 1);
            *(v13 + 4 * v18) = v19;
            v14 = *(a1 + 7) + 1;
            *(a1 + 7) = v14;
            v10 = *&v24[32];
          }

          ++v12;
          v11 += 24;
        }

        while (v12 < v10);
      }

      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v24);
    }
  }

  else
  {
    if (a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = 3;
    }
  }
}

uint64_t MurmurHash3_x64_128(uint64_t result, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = a3;
  v5 = a3;
  while (2)
  {
    v8 = (result + (a2 & 0xFFFFFFFFFFFFFFF0));
    v9 = 0;
    switch(a2)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v9 = v8[14] << 48;
LABEL_6:
        v9 |= v8[13] << 40;
LABEL_7:
        v9 ^= v8[12] << 32;
LABEL_8:
        v9 ^= v8[11] << 24;
LABEL_9:
        v9 ^= v8[10] << 16;
LABEL_10:
        v9 ^= v8[9] << 8;
LABEL_11:
        v5 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v9 ^ v8[8])) | ((0x4CF5AD432745937FLL * (v9 ^ v8[8])) >> 31));
LABEL_12:
        v9 = v8[7] << 56;
LABEL_13:
        v9 |= v8[6] << 48;
LABEL_14:
        v9 ^= v8[5] << 40;
LABEL_15:
        v9 ^= v8[4] << 32;
LABEL_16:
        v9 ^= v8[3] << 24;
LABEL_17:
        v9 ^= v8[2] << 16;
LABEL_18:
        v9 ^= v8[1] << 8;
LABEL_19:
        v4 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v9 ^ *v8)) | ((0x87C37B91114253D5 * (v9 ^ *v8)) >> 33));
LABEL_20:
        v10 = (v4 ^ a2) + (v5 ^ a2);
        v11 = v10 + (v5 ^ a2);
        v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
        v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v14 = v13 ^ (v13 >> 33);
        v15 = v14 + (v12 ^ (v12 >> 33));
        *a4 = v15;
        a4[1] = v15 + v14;
        return result;
      default:
        v6 = a2 >> 4;
        v7 = (result + 8);
        v5 = v4;
        do
        {
          v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v7 - 1)) | ((0x87C37B91114253D5 * *(v7 - 1)) >> 33))) ^ v4, 37) + v5) + 1390208809;
          v5 = 5 * (v4 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v7) | ((0x4CF5AD432745937FLL * *v7) >> 31))) ^ v5, 33)) + 944331445;
          v7 += 2;
          --v6;
        }

        while (v6);
        continue;
    }
  }
}

uint64_t re::SharedObjectBase::dispose(re::SharedObjectBase *this)
{
  v2 = (*(*this + 24))(this);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

uint64_t re::SharedObject::dispose(re::SharedObject *this)
{
  v2 = *(this + 2);
  (**this)(this);
  v3 = *(*v2 + 40);

  return v3(v2, this);
}

void re::MallocAllocator::~MallocAllocator(re::MallocAllocator *this)
{
  re::Allocator::~Allocator(this);

  JUMPOUT(0x266708EC0);
}

void *re::MallocAllocator::alloc(re::MallocAllocator *this, size_t size, unint64_t a3)
{
  v3 = 16;
  if (a3 > 0x10)
  {
    v3 = a3;
  }

  memptr = 0;
  malloc_type_posix_memalign(&memptr, (v3 + 7) & 0xFFFFFFFFFFFFFFF8, size, 0xAE8B065EuLL);
  return memptr;
}

uint64_t ArcObjectDestroy(char *a1, objc_selector *a2)
{
  if (a1)
  {
    v2 = a1 - 8;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 16))();
}

void ArcSharedObject::ArcSharedObject(ArcSharedObject *this, Class cls)
{
  v2 = cls;
  *this = &unk_2873F3D98;
  if (!cls)
  {
    v4 = 0x2810C5000uLL;
    {
      v4 = 0x2810C5000;
      if (v5)
      {
        ArcObjectClass(void)::cls = ArcObjectClass(void)::$_0::operator()();
        v4 = 0x2810C5000;
      }
    }

    v2 = *(v4 + 1256);
  }

  *(this + 1) = 0;
  objc_constructInstance(v2, this + 8);
}

void ArcSharedObject::~ArcSharedObject(ArcSharedObject *this)
{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

void ArcSharedObject::dispose(ArcSharedObject *this)
{
  (**this)(this);

  free(this);
}

Class ArcObjectClass(void)::$_0::operator()()
{
  v0 = objc_opt_class();
  ClassPair = objc_allocateClassPair(v0, "_REArcObject", 0);
  if (ClassPair)
  {
    v2 = ClassPair;
    class_addMethod(ClassPair, sel_dealloc, ArcObjectDestroy, "");
    objc_registerClassPair(v2);
    return v2;
  }

  else
  {

    return objc_getClass("_REArcObject");
  }
}

re::TypeBuilder *re::TypeBuilder::TypeBuilder(re::TypeBuilder *this, re::Allocator *a2)
{
  *this = 0;
  re::StringID::invalid(this + 1);
  *(this + 6) = -1;
  *(this + 28) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 50) = 0;
  *(this + 408) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 122) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 0;
  *(this + 98) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 492) = 0x7FFFFFFFLL;
  *(this + 26) = a2;
  re::DynamicArray<re::EnumConstant>::setCapacity(this + 26, 0);
  ++*(this + 58);
  *(this + 31) = a2;
  re::DynamicArray<re::EnumConstant>::setCapacity(this + 31, 0);
  ++*(this + 68);
  *(this + 36) = a2;
  re::DynamicArray<re::Allocator const*>::setCapacity(this + 36, 0);
  ++*(this + 78);
  *(this + 41) = a2;
  re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this + 41, 0);
  ++*(this + 88);
  *(this + 46) = a2;
  re::DynamicArray<re::RenamedObjectMember>::setCapacity(this + 46, 0);
  ++*(this + 98);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(this + 456, a2, 3);
  return this;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_0, 4 * v10);
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

void re::TypeBuilder::~TypeBuilder(re::TypeBuilder *this, uint64_t a2)
{
  re::TypeBuilder::reset(this, a2);
  re::DynamicArray<re::EnumConstant>::deinit(this + 208);
  re::DynamicArray<re::EnumConstant>::deinit(this + 248);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 328);
  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 368);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 57);
  re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(this + 57);
  if (*(this + 408) == 1)
  {
    re::StringID::destroyString((this + 424));
  }

  re::DynamicArray<re::RenamedObjectMember>::deinit(this + 368);
  re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(this + 328);
  re::DynamicArray<re::internal::PerFrameAllocatorChunk *>::deinit(this + 288);
  re::DynamicArray<re::EnumConstant>::deinit(this + 248);
  re::DynamicArray<re::EnumConstant>::deinit(this + 208);
  re::StringID::destroyString((this + 8));
}

void re::TypeBuilder::reset(re::TypeBuilder *this, uint64_t a2)
{
  v3 = *this;
  if (v3 <= 2)
  {
    if (!*this)
    {
      return;
    }

    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v8 = *(this + 28);
        *(this + 28) = 0;
        if (v8)
        {
          v9 = 24 * v8;
          v10 = (*(this + 30) + 8);
          do
          {
            re::StringID::destroyString(v10);
            v10 = (v10 + 24);
            v9 -= 24;
          }

          while (v9);
        }

        ++*(this + 58);
        v11 = *(this + 33);
        *(this + 33) = 0;
        if (v11)
        {
          v12 = 24 * v11;
          v13 = (*(this + 35) + 8);
          do
          {
            re::StringID::destroyString(v13);
            v13 = (v13 + 24);
            v12 -= 24;
          }

          while (v12);
        }

        ++*(this + 68);
        goto LABEL_3;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (*this < 7u)
    {
      goto LABEL_3;
    }

    switch(v3)
    {
      case 7u:
        *(this + 38) = 0;
        ++*(this + 78);
        break;
      case 8u:
LABEL_32:
        re::StringID::destroyString((this + 144));
        v14 = *(this + 43);
        *(this + 43) = 0;
        if (v14)
        {
          v15 = 40 * v14;
          v16 = (*(this + 45) + 8);
          do
          {
            re::StringID::destroyString(v16);
            v16 = (v16 + 40);
            v15 -= 40;
          }

          while (v15);
        }

        ++*(this + 88);
        v17 = *(this + 48);
        *(this + 48) = 0;
        if (v17)
        {
          v18 = *(this + 50);
          v19 = 24 * v17;
          do
          {
            re::StringID::destroyString(v18);
            v18 = (v18 + 24);
            v19 -= 24;
          }

          while (v19);
        }

        ++*(this + 98);
        LOBYTE(v21) = 0;
        v20 = re::Optional<re::internal::ObjectMemberInfo>::operator=(this + 408, &v21);
        if (v21 == 1 && (v22 & 1) != 0)
        {
        }

        break;
      case 9u:
        break;
      default:
LABEL_31:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "reset", 77);
        _os_crash("assertion failure: (!Unreachable code) Unknown type category.");
        __break(1u);
        goto LABEL_32;
    }
  }

LABEL_3:
  *this = 0;
  re::StringID::invalid(&v21);
  v4 = re::StringID::operator=((this + 8), &v21);
  if (v21)
  {
    if (v21)
    {
    }
  }

  *(this + 6) = -1;
  if (*(this + 28) == 1)
  {
    *(this + 28) = 0;
  }

  if (*(this + 121))
  {
    v5 = *(this + 120);
    if (v5)
    {
      memset_pattern16(*(this + 58), &memset_pattern_0, 4 * v5);
    }

    v6 = *(this + 122);
    if (v6)
    {
      v7 = *(this + 59);
      do
      {
        if ((*v7 & 0x80000000) != 0)
        {
          *v7 &= ~0x80000000;
        }

        v7 += 14;
        --v6;
      }

      while (v6);
    }

    *(this + 123) = 0x7FFFFFFF;
    *(this + 484) = 0;
    ++*(this + 124);
  }
}

uint64_t re::DynamicArray<re::EnumConstant>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::ObjectMemberInfo>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 40 * v4;
        v6 = (v3 + 8);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 40);
          v5 -= 40;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::DynamicArray<re::RenamedObjectMember>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 24 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 24);
          v5 -= 24;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 14;
        --v3;
      }

      while (v3);
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

uint64_t re::Optional<re::internal::ObjectMemberInfo>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::StringID::destroyString((a1 + 16));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    re::StringID::operator=((a1 + 16), (a2 + 16));
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 16) = *(a2 + 16) & 0xFFFFFFFFFFFFFFFELL | v4 & 1;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = "";
LABEL_6:
    v5 = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 32) = v5;
  }

  return a1;
}

void re::TypeBuilder::commitTo(re::TypeBuilder *this@<X0>, re::TypeRegistry *a2@<X1>, __int128 *a3@<X8>)
{
  if (*this)
  {
    re::TypeRegistry::declareType((this + 8), a2, *this, *(this + 6), 0, a3);
    if (*a3)
    {
      v5 = *a3;
      re::TypeBuilder::commitTo(this, &v5);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "commitTo", 102);
    _os_crash("assertion failure: (isBuilding()) beginXxxType() needs to be called before calling this function.");
    __break(1u);
  }
}

void re::TypeBuilder::commitTo(unsigned __int8 *a1, uint64_t *a2)
{
  v310 = *MEMORY[0x277D85DE8];
  if (!*a1)
  {
LABEL_332:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling commitTo().", "isBuilding()", "commitTo", 118);
    _os_crash("assertion failure: (isBuilding()) beginXxxType() needs to be called before calling commitTo().");
    __break(1u);
    goto LABEL_333;
  }

  v4 = a2;
  v2 = *a2;
  if (!*a2)
  {
LABEL_333:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type ID.", "typeID.isValid()", "commitTo", 119);
    _os_crash("assertion failure: (typeID.isValid()) Invalid type ID.");
    __break(1u);
LABEL_334:
    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Type version mismatch.", "m_version == registry->typeVersion(typeID)", "commitTo", 124);
    _os_crash("assertion failure: (m_version == registry->typeVersion(typeID)) Type version mismatch.");
    __break(1u);
LABEL_335:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 345);
    _os_crash("assertion failure: (memberType) Invalid member type.");
    __break(1u);
LABEL_336:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid member type.", "memberType", "commitTo", 316);
    _os_crash("assertion failure: (memberType) Invalid member type.");
    __break(1u);
LABEL_337:
    v296 = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    *buf = 0u;
    v9 = MEMORY[0x277D86220];
    v252 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v297 = 136315906;
    v298 = "operator[]";
    v299 = 1024;
    if (v252)
    {
      v253 = 3;
    }

    else
    {
      v253 = 2;
    }

    v300 = 789;
    v301 = 2048;
    v302 = v5;
    v303 = 2048;
    v304 = v4;
    _os_log_send_and_compose_impl(v253, &v296, buf, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
    _os_crash_msg();
    __break(1u);
LABEL_341:
    re::TypeRegistry::typeName(v2, *v6);
    v254 = re::TypeRegistry::typeName(v2, *v6);
    re::internal::assertLog(6, v255, "assertion failure: '%s' (%s:line %i) Duplicate custom class IDs in inheritance tree. Classes %s and %s.", "objectType.customClassID.value() != m_objectTypeInfo.customClassID.value()", "commitTo", 375, v254[1], *(v9 + 2));
    _os_crash("assertion failure: (objectType.customClassID.value() != m_objectTypeInfo.customClassID.value()) Duplicate custom class IDs in inheritance tree. Classes %s and %s.", v275, v281);
    __break(1u);
    goto LABEL_342;
  }

  v9 = a1;
  v3 = *(a1 + 6);
  v10 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(v2 + 96, a2[1]);
  if (v10)
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = -1;
  }

  if (v3 != v12)
  {
    goto LABEL_334;
  }

  v13 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v4 + 8));
  v15 = *v9;
  if (v15 > 9)
  {
    goto LABEL_377;
  }

  v3 = v13;
  if (((1 << v15) & 0x2FA) != 0)
  {
    goto LABEL_9;
  }

  if (v15 != 2)
  {
    if (v15 == 8)
    {
      re::TypeRegistry::makeStringID(buf, v2, v9 + 18);
      v13 = re::StringID::operator=((v9 + 144), buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v40 = *(v9 + 43);
      if (v40)
      {
        v7 = 40 * v40;
        v6 = *(v9 + 45) + 8;
        do
        {
          re::TypeRegistry::makeStringID(buf, v2, v6);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 40;
          v7 -= 40;
        }

        while (v7);
      }

      v41 = *(v9 + 48);
      if (v41)
      {
        v6 = *(v9 + 50);
        v7 = 24 * v41;
        do
        {
          re::TypeRegistry::makeStringID(buf, v2, v6);
          v13 = re::StringID::operator=(v6, buf);
          if (buf[0])
          {
            if (buf[0])
            {
            }
          }

          v6 += 24;
          v7 -= 24;
        }

        while (v7);
      }

      goto LABEL_9;
    }

LABEL_377:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unexpected type category.", "!Unreachable code", "internStrings", 1125);
    _os_crash("assertion failure: (!Unreachable code) Unexpected type category.");
    __break(1u);
    return;
  }

  v50 = *(v9 + 28);
  if (v50)
  {
    v7 = 24 * v50;
    v51 = (*(v9 + 30) + 8);
    do
    {
      re::TypeRegistry::makeStringID(buf, v2, v51);
      v13 = re::StringID::operator=(v51, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v51 += 3;
      v7 -= 24;
    }

    while (v7);
  }

  v52 = *(v9 + 33);
  if (v52)
  {
    v7 = 24 * v52;
    v53 = (*(v9 + 35) + 8);
    do
    {
      re::TypeRegistry::makeStringID(buf, v2, v53);
      v13 = re::StringID::operator=(v53, buf);
      if (buf[0])
      {
        if (buf[0])
        {
        }
      }

      v53 += 3;
      v7 -= 24;
    }

    while (v7);
  }

LABEL_9:
  if (*(v9 + 6))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v9 + 7) == 0;
  }

  *(v9 + 4) = *(v4 + 8);
  v16 = *v9;
  if (v16 <= 4)
  {
    if (*v9 <= 2u)
    {
      if (v16 == 1)
      {
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 264) & 0xFFFFFF | (*(v3 + 3) << 24);
        v54 = *(v2 + 256);
        v55 = *(v2 + 264);
        if (v55 >= v54)
        {
          v56 = v55 + 1;
          if (v54 < v55 + 1)
          {
            if (*(v2 + 248))
            {
              v57 = 2 * v54;
              v21 = v54 == 0;
              v58 = 8;
              if (!v21)
              {
                v58 = v57;
              }

              if (v58 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v58;
              }

              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v59);
            }

            else
            {
              re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity((v2 + 248), v56);
              ++*(v2 + 272);
            }
          }

          v55 = *(v2 + 264);
        }

        v175 = *(v2 + 280) + 88 * v55;
        v176 = *(v9 + 3);
        *v175 = *(v9 + 2);
        *(v175 + 16) = v176;
        v177 = *(v9 + 4);
        v178 = *(v9 + 5);
        v179 = *(v9 + 6);
        *(v175 + 80) = *(v9 + 14);
        *(v175 + 48) = v178;
        *(v175 + 64) = v179;
        *(v175 + 32) = v177;
        ++*(v2 + 264);
        ++*(v2 + 272);
        goto LABEL_301;
      }

      if (v16 == 2)
      {
        if (!*(v9 + 28))
        {
          v4 = *re::foundationIntrospectionLogObjects(v13);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(v9 + 2);
            *buf = 136315138;
            *&buf[4] = v24;
            _os_log_impl(&dword_26168F000, v4, OS_LOG_TYPE_DEFAULT, "Creating enum type %s without values.", buf, 0xCu);
          }
        }

        v25 = *(v9 + 33);
        if (v25)
        {
          v26 = *(v9 + 35);
          v27 = *(v9 + 28);
          if (!v27)
          {
LABEL_342:
            re::internal::assertLog(5, v14, "assertion failure: '%s' (%s:line %i) New value of renamed enum constant (old name = %s) is missing.", "found", "commitTo", 168, v26[2]);
            _os_crash("assertion failure: (found) New value of renamed enum constant (old name = %s) is missing.", v276);
            __break(1u);
            goto LABEL_343;
          }

          v28 = &v26[3 * v25];
          v29 = 24 * v27;
          do
          {
            v30 = v29;
            v31 = *(v9 + 30);
            while (*v26 != *v31)
            {
              v31 += 3;
              v30 -= 24;
              if (!v30)
              {
                goto LABEL_342;
              }
            }

            v26 += 3;
          }

          while (v26 != v28);
        }

        v32 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
        *(v9 + 20) |= v5 | 2;
        *v3 = *(v2 + 304) & 0xFFFFFF | (*(v3 + 3) << 24);
        v33 = *(v9 + 28);
        *(v9 + 30) = *(v2 + 344);
        *(v9 + 31) = v33;
        *(v9 + 32) = *(v9 + 33);
        v34 = *(v2 + 296);
        v35 = *(v2 + 304);
        if (v35 >= v34)
        {
          v36 = v35 + 1;
          if (v34 < v35 + 1)
          {
            if (*(v2 + 288))
            {
              v37 = 2 * v34;
              v21 = v34 == 0;
              v38 = 8;
              if (!v21)
              {
                v38 = v37;
              }

              if (v38 <= v36)
              {
                v39 = v36;
              }

              else
              {
                v39 = v38;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v39);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 288), v36);
              ++*(v2 + 312);
            }
          }

          v35 = *(v2 + 304);
        }

        v214 = *(v2 + 320) + 104 * v35;
        v215 = *(v9 + 2);
        v216 = *(v9 + 4);
        *(v214 + 16) = *(v9 + 3);
        *(v214 + 32) = v216;
        *v214 = v215;
        v217 = *(v9 + 5);
        v218 = *(v9 + 6);
        v219 = *(v9 + 7);
        *(v214 + 96) = *(v9 + 16);
        *(v214 + 64) = v218;
        *(v214 + 80) = v219;
        *(v214 + 48) = v217;
        ++*(v2 + 304);
        ++*(v2 + 312);
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 30), *(v9 + 30), *(v9 + 28));
        re::DynamicArray<re::EnumConstant>::copy((v2 + 328), *(v9 + 28) + *(v9 + 30), *(v9 + 35), *(v9 + 33));
        goto LABEL_301;
      }

LABEL_376:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Unknown type category.", "!Unreachable code", "commitTo", 462);
      _os_crash("assertion failure: (!Unreachable code) Unknown type category.");
      __break(1u);
      goto LABEL_377;
    }

    if (v16 == 3)
    {
      v60 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      *v3 = *(v2 + 384) & 0xFFFFFF | (*(v3 + 3) << 24);
      v61 = *(v2 + 376);
      v62 = *(v2 + 384);
      if (v62 >= v61)
      {
        v63 = v62 + 1;
        if (v61 < v62 + 1)
        {
          if (*(v2 + 368))
          {
            v64 = 2 * v61;
            v21 = v61 == 0;
            v65 = 8;
            if (!v21)
            {
              v65 = v64;
            }

            if (v65 <= v63)
            {
              v66 = v63;
            }

            else
            {
              v66 = v65;
            }

            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v66);
          }

          else
          {
            re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 368), v63);
            ++*(v2 + 392);
          }
        }

        v62 = *(v2 + 384);
      }

      v180 = *(v2 + 400) + 104 * v62;
      v181 = *(v9 + 2);
      v182 = *(v9 + 4);
      *(v180 + 16) = *(v9 + 3);
      *(v180 + 32) = v182;
      *v180 = v181;
      v183 = *(v9 + 5);
      v184 = *(v9 + 6);
      v185 = *(v9 + 7);
      *(v180 + 96) = *(v9 + 16);
      *(v180 + 64) = v184;
      *(v180 + 80) = v185;
      *(v180 + 48) = v183;
      ++*(v2 + 384);
      ++*(v2 + 392);
      goto LABEL_301;
    }

    if (v16 != 4)
    {
      goto LABEL_376;
    }

    v42 = v5 ^ 1;
    if ((*(v9 + 31) & 0xFFFFFF) != 0)
    {
      v42 = 1;
    }

    if (v42)
    {
      if ((*(v9 + 31) & 0xFFFFFF) != 0)
      {
LABEL_146:
        *v3 = *(v2 + 424) & 0xFFFFFF | (*(v3 + 3) << 24);
        v83 = *(v2 + 416);
        v84 = *(v2 + 424);
        if (v84 >= v83)
        {
          v85 = v84 + 1;
          if (v83 < v84 + 1)
          {
            if (*(v2 + 408))
            {
              v86 = 2 * v83;
              v21 = v83 == 0;
              v87 = 8;
              if (!v21)
              {
                v87 = v86;
              }

              if (v87 <= v85)
              {
                v88 = v85;
              }

              else
              {
                v88 = v87;
              }

              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v88);
            }

            else
            {
              re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 408), v85);
              ++*(v2 + 432);
            }
          }

          v84 = *(v2 + 424);
        }

        v208 = *(v2 + 440) + 104 * v84;
        v209 = *(v9 + 2);
        v210 = *(v9 + 4);
        *(v208 + 16) = *(v9 + 3);
        *(v208 + 32) = v210;
        *v208 = v209;
        v211 = *(v9 + 5);
        v212 = *(v9 + 6);
        v213 = *(v9 + 7);
        *(v208 + 96) = *(v9 + 16);
        *(v208 + 64) = v212;
        *(v208 + 80) = v213;
        *(v208 + 48) = v211;
        ++*(v2 + 424);
        ++*(v2 + 432);
        goto LABEL_301;
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
      if ((buf[0] & 1) == 0)
      {
LABEL_374:
        re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) Element type must be registered before the array type.", "elementType", "commitTo", 221);
        _os_crash("assertion failure: (elementType) Element type must be registered before the array type.");
        __break(1u);
LABEL_375:
        re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v99, v8, v7);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v279, v284, v288);
        __break(1u);
      }

      if (*(*(&v306 + 1) + 48))
      {
        *(v9 + 20) |= 1u;
      }
    }

    v13 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    if ((*(*(&v306 + 1) + 48) & 3) != 0)
    {
      *(v9 + 20) |= 2u;
    }

    goto LABEL_146;
  }

  if (*v9 <= 6u)
  {
    if (v16 == 5)
    {
      *v3 = *(v2 + 464) & 0xFFFFFF | (*(v3 + 3) << 24);
      v67 = *(v2 + 456);
      v68 = *(v2 + 464);
      if (v68 >= v67)
      {
        v69 = v68 + 1;
        if (v67 < v68 + 1)
        {
          if (*(v2 + 448))
          {
            v70 = 2 * v67;
            v21 = v67 == 0;
            v71 = 8;
            if (!v21)
            {
              v71 = v70;
            }

            if (v71 <= v69)
            {
              v72 = v69;
            }

            else
            {
              v72 = v71;
            }

            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v72);
          }

          else
          {
            re::DynamicArray<re::internal::ListTypeInfo>::setCapacity((v2 + 448), v69);
            ++*(v2 + 472);
          }
        }

        v68 = *(v2 + 464);
      }

      v186 = *(v2 + 480) + 136 * v68;
      *v186 = *(v9 + 2);
      v187 = *(v9 + 3);
      v188 = *(v9 + 4);
      v189 = *(v9 + 6);
      *(v186 + 48) = *(v9 + 5);
      *(v186 + 64) = v189;
      *(v186 + 16) = v187;
      *(v186 + 32) = v188;
      v190 = *(v9 + 7);
      v191 = *(v9 + 8);
      v192 = *(v9 + 9);
      *(v186 + 128) = *(v9 + 20);
      *(v186 + 96) = v191;
      *(v186 + 112) = v192;
      *(v186 + 80) = v190;
      ++*(v2 + 464);
      ++*(v2 + 472);
      goto LABEL_301;
    }

    if (v16 == 6)
    {
      *v3 = *(v2 + 504) & 0xFFFFFF | (*(v3 + 3) << 24);
      v44 = *(v2 + 496);
      v45 = *(v2 + 504);
      if (v45 >= v44)
      {
        v46 = v45 + 1;
        if (v44 < v45 + 1)
        {
          if (*(v2 + 488))
          {
            v47 = 2 * v44;
            v21 = v44 == 0;
            v48 = 8;
            if (!v21)
            {
              v48 = v47;
            }

            if (v48 <= v46)
            {
              v49 = v46;
            }

            else
            {
              v49 = v48;
            }

            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v49);
          }

          else
          {
            re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity((v2 + 488), v46);
            ++*(v2 + 512);
          }
        }

        v45 = *(v2 + 504);
      }

      v193 = *(v2 + 520) + 168 * v45;
      v194 = *(v9 + 2);
      v195 = *(v9 + 4);
      *(v193 + 16) = *(v9 + 3);
      *(v193 + 32) = v195;
      *v193 = v194;
      v196 = *(v9 + 5);
      v197 = *(v9 + 6);
      v198 = *(v9 + 8);
      *(v193 + 80) = *(v9 + 7);
      *(v193 + 96) = v198;
      *(v193 + 48) = v196;
      *(v193 + 64) = v197;
      v199 = *(v9 + 9);
      v200 = *(v9 + 10);
      v201 = *(v9 + 11);
      *(v193 + 160) = *(v9 + 24);
      *(v193 + 128) = v200;
      *(v193 + 144) = v201;
      *(v193 + 112) = v199;
      ++*(v2 + 504);
      ++*(v2 + 512);
      goto LABEL_301;
    }

    goto LABEL_376;
  }

  if (v16 == 7)
  {
    v73 = re::TypeRegistry::typeInfo(v2, *(v9 + 14), &v293);
    if (v293)
    {
      if (BYTE4(v294) == 2)
      {
        if (!*(v9 + 6))
        {
          if (!*(v9 + 7))
          {
            v74 = *(v9 + 38);
            *(v9 + 31) = *(v2 + 584);
            *(v9 + 32) = v74;
            *v3 = *(v2 + 544) & 0xFFFFFF | (*(v3 + 3) << 24);
            v75 = *(v2 + 544);
            v76 = *(v2 + 536);
            if (v75 >= v76)
            {
              v77 = v75 + 1;
              if (v76 < v75 + 1)
              {
                v4 = v2 + 528;
                if (*(v2 + 528))
                {
                  v78 = 2 * v76;
                  v21 = v76 == 0;
                  v79 = 8;
                  if (!v21)
                  {
                    v79 = v78;
                  }

                  if (v79 <= v77)
                  {
                    v80 = v77;
                  }

                  else
                  {
                    v80 = v79;
                  }

                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v80);
                }

                else
                {
                  v73 = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity((v2 + 528), v77);
                  ++*(v2 + 552);
                }
              }

              v75 = *(v2 + 544);
            }

            v220 = *(v2 + 560) + 104 * v75;
            v221 = *(v9 + 2);
            v222 = *(v9 + 4);
            *(v220 + 16) = *(v9 + 3);
            *(v220 + 32) = v222;
            *v220 = v221;
            v223 = *(v9 + 5);
            v224 = *(v9 + 6);
            v225 = *(v9 + 7);
            *(v220 + 96) = *(v9 + 16);
            *(v220 + 64) = v224;
            *(v220 + 80) = v225;
            *(v220 + 48) = v223;
            ++*(v2 + 544);
            ++*(v2 + 552);
            v7 = *(v9 + 38);
            if (!v7)
            {
              goto LABEL_301;
            }

            v6 = *(v9 + 31);
            v226 = *(v2 + 584);
            v3 = v226 + 1;
            if (v226 + 1 > v6)
            {
              v3 = v6 + v7;
              if (!__CFADD__(v6, v7))
              {
                v227 = *(v9 + 40);
                if (v226 >= v3)
                {
                  memmove((*(v2 + 600) + 8 * v6), *(v9 + 40), 8 * v7);
                }

                else
                {
                  v228 = *(v2 + 576);
                  if (v228 < v3)
                  {
                    if (*(v2 + 568))
                    {
                      v229 = 2 * v228;
                      v21 = v228 == 0;
                      v230 = 8;
                      if (!v21)
                      {
                        v230 = v229;
                      }

                      if (v230 <= v3)
                      {
                        v231 = v6 + v7;
                      }

                      else
                      {
                        v231 = v230;
                      }

                      re::DynamicArray<re::Allocator const*>::setCapacity((v2 + 568), v231);
                    }

                    else
                    {
                      re::DynamicArray<re::Allocator const*>::setCapacity((v2 + 568), v6 + v7);
                      ++*(v2 + 592);
                    }
                  }

                  v232 = *(v2 + 584);
                  v233 = v232 - v6;
                  v234 = &v227[8 * (v232 - v6)];
                  if (v232 != v6)
                  {
                    memmove((*(v2 + 600) + 8 * v6), v227, 8 * v233);
                    v6 = *(v2 + 584);
                  }

                  memcpy((*(v2 + 600) + 8 * v6), v234, 8 * (v7 - v233));
                  *(v2 + 584) = v3;
                }

                ++*(v2 + 592);
                goto LABEL_301;
              }

              goto LABEL_352;
            }

LABEL_348:
            v291[0] = 0;
            v308 = 0u;
            v309 = 0u;
            v306 = 0u;
            v307 = 0u;
            *buf = 0u;
            v256 = MEMORY[0x277D86220];
            v257 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            v297 = 136315906;
            v298 = "copy";
            v299 = 1024;
            if (v257)
            {
              v258 = 3;
            }

            else
            {
              v258 = 2;
            }

            v300 = 643;
            v301 = 2048;
            v302 = v6;
            v303 = 2048;
            v304 = v3;
            _os_log_send_and_compose_impl(v258, v291, buf, 80, &dword_26168F000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
            _os_crash_msg();
            __break(1u);
LABEL_352:
            re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v226, v6, v7);
            _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v277, v282, v286);
            __break(1u);
            goto LABEL_353;
          }

          goto LABEL_346;
        }

LABEL_345:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom constructors.", "!sharedTypeInfo().constructor", "commitTo", 265);
        _os_crash("assertion failure: (!sharedTypeInfo().constructor) Tagged unions don't support custom constructors.");
        __break(1u);
LABEL_346:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Tagged unions don't support custom destructors.", "!sharedTypeInfo().destructor", "commitTo", 266);
        _os_crash("assertion failure: (!sharedTypeInfo().destructor) Tagged unions don't support custom destructors.");
        __break(1u);
LABEL_347:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Invalid super class type.", "superClass", "commitTo", 303);
        _os_crash("assertion failure: (superClass) Invalid super class type.");
        __break(1u);
        goto LABEL_348;
      }

LABEL_344:
      re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be an enum type.", "tagType.value().isEnum()", "commitTo", 264);
      _os_crash("assertion failure: (tagType.value().isEnum()) Union tag type must be an enum type.");
      __break(1u);
      goto LABEL_345;
    }

LABEL_343:
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Union tag type must be registered before the union type.", "tagType", "commitTo", 263);
    _os_crash("assertion failure: (tagType) Union tag type must be registered before the union type.");
    __break(1u);
    goto LABEL_344;
  }

  if (v16 != 8)
  {
    if (v16 == 9)
    {
      *v3 = *(v2 + 744) & 0xFFFFFF | (*(v3 + 3) << 24);
      v17 = *(v2 + 744);
      v18 = *(v2 + 736);
      if (v17 >= v18)
      {
        v19 = v17 + 1;
        if (v18 < v17 + 1)
        {
          if (*(v2 + 728))
          {
            v20 = 2 * v18;
            v21 = v18 == 0;
            v22 = 8;
            if (!v21)
            {
              v22 = v20;
            }

            if (v22 <= v19)
            {
              v23 = v19;
            }

            else
            {
              v23 = v22;
            }

            re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity((v2 + 728), v23);
          }

          else
          {
            re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity((v2 + 728), v19);
            ++*(v2 + 752);
          }
        }

        v17 = *(v2 + 744);
      }

      v202 = (*(v2 + 760) + 112 * v17);
      v203 = *(v9 + 2);
      v204 = *(v9 + 4);
      v202[1] = *(v9 + 3);
      v202[2] = v204;
      *v202 = v203;
      v205 = *(v9 + 5);
      v206 = *(v9 + 6);
      v207 = *(v9 + 8);
      v202[5] = *(v9 + 7);
      v202[6] = v207;
      v202[3] = v205;
      v202[4] = v206;
      ++*(v2 + 744);
      ++*(v2 + 752);
      goto LABEL_301;
    }

    goto LABEL_376;
  }

  LOBYTE(v293) = 0;
  v81 = *(v9 + 29);
  v4 = v81 & 0xFFFFFF;
  if ((v81 & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(v2, *(v9 + 14), buf);
    re::Optional<re::TypeInfo>::operator=(&v293, buf);
    if ((v293 & 1) == 0)
    {
      goto LABEL_347;
    }
  }

  if (v4)
  {
    v82 = *(v295 + 48) & 1;
  }

  else
  {
    v82 = 1;
  }

  if ((v5 & (*(v9 + 23) == 0) & ((v9[408] | v9[160]) ^ 1) & v82) == 1)
  {
    v89 = *(v9 + 43);
    if (v89)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v89;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_336;
        }

        if ((*(*(&v306 + 1) + 48) & 1) == 0)
        {
          goto LABEL_163;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 1u;
  }

LABEL_163:
  if ((v293 != 1 || (*(v295 + 48) & 2) != 0) && (v9[28] != 1 || v9[29] == 1))
  {
    v90 = *(v9 + 43);
    if (v90)
    {
      v4 = *(v9 + 45);
      v5 = 40 * v90;
      do
      {
        re::TypeRegistry::typeInfo(v2, *v4, buf);
        if ((buf[0] & 1) == 0)
        {
          goto LABEL_335;
        }

        if ((*(*(&v306 + 1) + 48) & 2) == 0)
        {
          goto LABEL_173;
        }

        v4 += 40;
        v5 -= 40;
      }

      while (v5);
    }

    *(v9 + 20) |= 2u;
  }

LABEL_173:
  if (v9[160] == 1 && v293 == 1)
  {
    re::TypeInfo::rootClass(v291, (&v293 + 8));
    v91 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *v292);
    v92 = *(v292 + 88);
    if (v92)
    {
      v93 = *v91 & 0xFFFFFF;
      v4 = *(v2 + 624);
      do
      {
        v5 = v93;
        if (v4 <= v93)
        {
          goto LABEL_337;
        }

        v6 = *(v2 + 640) + 176 * v93;
        if (*(v6 + 128) == 1 && *(v6 + 136) == *(v9 + 21))
        {
          goto LABEL_341;
        }

        ++v93;
      }

      while (--v92);
    }
  }

  if (v9[408] == 1)
  {
    *(v9 + 44) = *(v2 + 664);
    re::DynamicArray<re::internal::ObjectMemberInfo>::add((v2 + 648), (v9 + 416));
  }

  v94 = *(v2 + 664);
  v7 = *(v9 + 43);
  *(v9 + 31) = v94;
  *(v9 + 32) = v7;
  v6 = *(v9 + 45);
  if ((v9[80] & 0x10) != 0)
  {
LABEL_188:
    if (v7)
    {
      v8 = v94;
      v99 = *(v2 + 664);
      v4 = v99 + 1;
      if (v99 + 1 <= v8)
      {
LABEL_370:
        v291[0] = 0;
        v308 = 0u;
        v309 = 0u;
        v306 = 0u;
        v307 = 0u;
        *buf = 0u;
        v271 = MEMORY[0x277D86220];
        v272 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        v297 = 136315906;
        v298 = "copy";
        v299 = 1024;
        if (v272)
        {
          v273 = 3;
        }

        else
        {
          v273 = 2;
        }

        v300 = 643;
        v301 = 2048;
        v302 = v8;
        v303 = 2048;
        v304 = v4;
        _os_log_send_and_compose_impl(v273, v291, buf, 80, &dword_26168F000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
        _os_crash_msg();
        __break(1u);
        goto LABEL_374;
      }

      v100 = v8 + v7;
      if (__CFADD__(v8, v7))
      {
        goto LABEL_375;
      }

      if (v99 >= v100)
      {
        v5 = v6 + 40 * v7;
        v113 = (*(v2 + 680) + 40 * v8 + 8);
        v114 = v6 + 8;
        do
        {
          *(v113 - 1) = *(v114 - 8);
          v115 = re::StringID::operator=(v113, v114);
          v116 = *(v114 + 16);
          *(v115 + 6) = *(v114 + 24);
          v115[2] = v116;
          v113 = v115 + 5;
          v117 = v114 + 32;
          v114 += 40;
        }

        while (v117 != v5);
      }

      else
      {
        re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity((v2 + 648), v8 + v7);
        v101 = *(v2 + 664);
        v102 = *(v2 + 680);
        v103 = v8;
        v104 = v101 - v8;
        if (v101 != v8)
        {
          v290 = *(v2 + 664);
          v105 = (v102 + 40 * v8 + 8);
          v5 = v6 + 8;
          do
          {
            *(v105 - 1) = *(v5 - 8);
            v106 = re::StringID::operator=(v105, v5);
            v107 = *(v5 + 16);
            *(v106 + 6) = *(v5 + 24);
            v106[2] = v107;
            v105 = v106 + 5;
            v108 = v5 + 32;
            v5 += 40;
          }

          while (v108 != v6 + 40 * v104);
          v102 = *(v2 + 680);
          v103 = *(v2 + 664);
          v101 = v290;
        }

        if (v104 != v7)
        {
          v7 = v6 + 40 * v7;
          v5 = 40 * v101 - 40 * v8 + v6 + 8;
          v109 = (v102 + 40 * v103 + 8);
          do
          {
            *(v109 - 1) = *(v5 - 8);
            v110 = re::StringID::StringID(v109, v5);
            v111 = *(v5 + 16);
            *(v110 + 6) = *(v5 + 24);
            v110[2] = v111;
            v112 = v5 + 32;
            v5 += 40;
            v109 = v110 + 5;
          }

          while (v112 != v7);
        }

        *(v2 + 664) = v100;
      }

      ++*(v2 + 672);
    }
  }

  else if (v7)
  {
    v95 = 0;
    v96 = (v6 + 32);
    v97 = 40 * v7;
    while (1)
    {
      v98 = *v96;
      if (v98 <= v95)
      {
        goto LABEL_327;
      }

      v96 += 10;
      v95 = v98;
      v97 -= 40;
      if (!v97)
      {
        goto LABEL_188;
      }
    }
  }

  v118 = *(v2 + 704);
  v8 = *(v9 + 48);
  *(v9 + 33) = v118;
  *(v9 + 34) = v8;
  if (v8)
  {
    v7 = v118;
    v119 = *(v2 + 704);
    v4 = v119 + 1;
    if (v119 + 1 <= v7)
    {
LABEL_353:
      v291[0] = 0;
      v308 = 0u;
      v309 = 0u;
      v306 = 0u;
      v307 = 0u;
      *buf = 0u;
      v259 = MEMORY[0x277D86220];
      v260 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v297 = 136315906;
      v298 = "copy";
      v299 = 1024;
      if (v260)
      {
        v261 = 3;
      }

      else
      {
        v261 = 2;
      }

      v300 = 643;
      v301 = 2048;
      v302 = v7;
      v303 = 2048;
      v304 = v4;
      _os_log_send_and_compose_impl(v261, v291, buf, 80, &dword_26168F000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
      _os_crash_msg();
      __break(1u);
      goto LABEL_357;
    }

    v4 = v7 + v8;
    if (__CFADD__(v7, v8))
    {
LABEL_357:
      re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v119, v7, v8);
      _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v278, v283, v287);
      __break(1u);
LABEL_358:
      v291[0] = 0;
      v308 = 0u;
      v309 = 0u;
      v306 = 0u;
      v307 = 0u;
      *buf = 0u;
      v262 = MEMORY[0x277D86220];
      v263 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      v297 = 136315906;
      v298 = "operator[]";
      v299 = 1024;
      if (v263)
      {
        v264 = 3;
      }

      else
      {
        v264 = 2;
      }

      v300 = 789;
      v301 = 2048;
      v302 = v4;
      v303 = 2048;
      v304 = v5;
      _os_log_send_and_compose_impl(v264, v291, buf, 80, &dword_26168F000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
      _os_crash_msg();
      __break(1u);
      goto LABEL_362;
    }

    v120 = *(v9 + 50);
    if (v119 >= v4)
    {
      v131 = (*(v2 + 720) + 24 * v7);
      v132 = 24 * v8;
      do
      {
        v133 = re::StringID::operator=(v131, v120);
        *(v133 + 4) = *(v120 + 16);
        v120 += 24;
        v131 = v133 + 3;
        v132 -= 24;
      }

      while (v132);
    }

    else
    {
      re::DynamicArray<re::RenamedObjectMember>::growCapacity((v2 + 688), v7 + v8);
      v121 = *(v2 + 704);
      v122 = *(v2 + 720);
      v123 = v7;
      v124 = v121 - v7;
      if (v121 != v7)
      {
        v125 = (v122 + 24 * v7);
        v126 = 24 * v121 - 24 * v7;
        v6 = v120;
        do
        {
          v127 = re::StringID::operator=(v125, v6);
          *(v127 + 4) = *(v6 + 16);
          v6 += 24;
          v125 = v127 + 3;
          v126 -= 24;
        }

        while (v126);
        v122 = *(v2 + 720);
        v123 = *(v2 + 704);
        v124 = v121 - v7;
      }

      if (v124 != v8)
      {
        v128 = v120 + 24 * v124;
        v129 = (v122 + 24 * v123);
        v6 = 24 * v8 + 24 * v7 - 24 * v121;
        do
        {
          v130 = re::StringID::StringID(v129, v128);
          *(v130 + 4) = *(v128 + 16);
          v128 += 24;
          v129 = v130 + 3;
          v6 -= 24;
        }

        while (v6);
      }

      *(v2 + 704) = v4;
    }

    ++*(v2 + 712);
  }

  if ((*(v9 + 29) & 0xFFFFFF) == 0)
  {
    *v3 = *(v2 + 624) & 0xFFFFFF | (*(v3 + 3) << 24);
    v157 = *(v2 + 624);
    if (v157 >= *(v2 + 616))
    {
      re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v157 + 1);
      v157 = *(v2 + 624);
    }

    v158 = *(v2 + 640) + 176 * v157;
    *v158 = *(v9 + 2);
    v159 = *(v9 + 3);
    v160 = *(v9 + 4);
    v161 = *(v9 + 6);
    *(v158 + 48) = *(v9 + 5);
    *(v158 + 64) = v161;
    *(v158 + 16) = v159;
    *(v158 + 32) = v160;
    v162 = *(v9 + 7);
    *(v158 + 92) = *(v9 + 124);
    *(v158 + 80) = v162;
    re::StringID::StringID((v158 + 112), v9 + 18);
    v163 = v9[160];
    *(v158 + 128) = v163;
    if (v163 == 1)
    {
      *(v158 + 136) = *(v9 + 21);
    }

    v164 = *(v9 + 12);
    *(v158 + 144) = *(v9 + 11);
    *(v158 + 160) = v164;
    ++*(v2 + 624);
    ++*(v2 + 632);
    goto LABEL_301;
  }

  v4 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v9 + 14)) & 0xFFFFFFLL;
  v5 = *(v2 + 624);
  if (v5 <= v4)
  {
    goto LABEL_358;
  }

  v5 = (*(*(v2 + 640) + 176 * v4 + 88) + v4);
  *v3 = (*(*(v2 + 640) + 176 * v4 + 88) + v4) & 0xFFFFFF | (*(v3 + 3) << 24);
  v134 = *(v2 + 624);
  v3 = v134 + 1;
  if (v134 + 1 <= v5)
  {
LABEL_362:
    v291[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    *buf = 0u;
    v265 = MEMORY[0x277D86220];
    v266 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v297 = 136315906;
    v298 = "insert";
    v299 = 1024;
    if (v266)
    {
      v267 = 3;
    }

    else
    {
      v267 = 2;
    }

    v300 = 855;
    v301 = 2048;
    v302 = v5;
    v303 = 2048;
    v304 = v3;
    _os_log_send_and_compose_impl(v267, v291, buf, 80, &dword_26168F000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
    _os_crash_msg();
    __break(1u);
LABEL_366:
    v291[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    *buf = 0u;
    v268 = MEMORY[0x277D86220];
    v269 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v297 = 136315906;
    v298 = "operator[]";
    v299 = 1024;
    if (v269)
    {
      v270 = 3;
    }

    else
    {
      v270 = 2;
    }

    v300 = 789;
    v301 = 2048;
    v302 = v4;
    v303 = 2048;
    v304 = v6;
    _os_log_send_and_compose_impl(v270, v291, buf, 80, &dword_26168F000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
    _os_crash_msg();
    __break(1u);
    goto LABEL_370;
  }

  if (v134 >= *(v2 + 616))
  {
    re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity((v2 + 608), v134 + 1);
    v134 = *(v2 + 624);
  }

  v135 = *(v2 + 640) + 176 * v134;
  if (v134 > v5)
  {
    v136 = *(v135 - 128);
    *(v135 + 32) = *(v135 - 144);
    *(v135 + 48) = v136;
    v137 = *(v135 - 160);
    *v135 = *(v135 - 176);
    *(v135 + 16) = v137;
    v138 = *(v135 - 96);
    *(v135 + 64) = *(v135 - 112);
    *(v135 + 80) = v138;
    v139 = *(v135 - 84);
    v140 = *(v135 - 56);
    *(v135 + 112) = *(v135 - 64);
    *(v135 + 120) = v140;
    *(v135 + 92) = v139;
    *(v135 - 64) = 0;
    *(v135 - 56) = "";
    v141 = *(v135 - 48);
    *(v135 + 128) = v141;
    if (v141 == 1)
    {
      *(v135 + 136) = *(v135 - 40);
    }

    v142 = *(v135 - 16);
    *(v135 + 144) = *(v135 - 32);
    *(v135 + 160) = v142;
    v143 = *(v2 + 640);
    v144 = *(v2 + 624);
    if (v143 + 176 * v144 - 176 != v143 + 176 * v5)
    {
      v145 = 176 * v144;
      v7 = 176 * v5 + 176;
      v8 = 1;
      while (1)
      {
        v146 = v143 + v145;
        v147 = *(v143 + v145 - 304);
        *(v146 - 144) = *(v143 + v145 - 320);
        *(v146 - 128) = v147;
        v148 = *(v143 + v145 - 288);
        v149 = *(v143 + v145 - 336);
        *(v146 - 176) = *(v143 + v145 - 352);
        *(v146 - 160) = v149;
        v150 = *(v143 + v145 - 272);
        *(v146 - 112) = v148;
        *(v146 - 96) = v150;
        *(v146 - 84) = *(v143 + v145 - 260);
        re::StringID::operator=((v143 + v145 - 64), (v143 + v145 - 240));
        if (*(v143 + v145 - 48))
        {
          if (*(v143 + v145 - 224))
          {
            goto LABEL_233;
          }

          *(v146 - 48) = 0;
        }

        else if (*(v143 + v145 - 224))
        {
          *(v146 - 48) = 1;
LABEL_233:
          *(v143 + v145 - 40) = *(v143 + v145 - 216);
        }

        v151 = v143 + v145;
        v152 = *(v143 + v145 - 192);
        *(v151 - 32) = *(v143 + v145 - 208);
        *(v151 - 16) = v152;
        v143 -= 176;
        v7 += 176;
        if (v145 == v7)
        {
          v143 = *(v2 + 640);
          break;
        }
      }
    }

    v135 = v143 + 176 * v5;
    *v135 = *(v9 + 2);
    v153 = *(v9 + 3);
    v154 = *(v9 + 4);
    v155 = *(v9 + 6);
    *(v135 + 48) = *(v9 + 5);
    *(v135 + 64) = v155;
    *(v135 + 16) = v153;
    *(v135 + 32) = v154;
    v156 = *(v9 + 7);
    *(v135 + 92) = *(v9 + 124);
    *(v135 + 80) = v156;
    re::StringID::operator=((v135 + 112), v9 + 18);
    if (*(v135 + 128))
    {
      if ((v9[160] & 1) == 0)
      {
        *(v135 + 128) = 0;
        goto LABEL_249;
      }
    }

    else
    {
      if ((v9[160] & 1) == 0)
      {
        goto LABEL_249;
      }

      *(v135 + 128) = 1;
    }

    goto LABEL_248;
  }

  *v135 = *(v9 + 2);
  v165 = *(v9 + 3);
  v166 = *(v9 + 4);
  v167 = *(v9 + 6);
  *(v135 + 48) = *(v9 + 5);
  *(v135 + 64) = v167;
  *(v135 + 16) = v165;
  *(v135 + 32) = v166;
  v168 = *(v9 + 7);
  *(v135 + 92) = *(v9 + 124);
  *(v135 + 80) = v168;
  re::StringID::StringID((v135 + 112), v9 + 18);
  v169 = v9[160];
  *(v135 + 128) = v169;
  if (v169 == 1)
  {
LABEL_248:
    *(v135 + 136) = *(v9 + 21);
  }

LABEL_249:
  v170 = *(v9 + 12);
  *(v135 + 144) = *(v9 + 11);
  *(v135 + 160) = v170;
  v6 = *(v2 + 624) + 1;
  *(v2 + 624) = v6;
  ++*(v2 + 632);
  v3 = (v5 + 1);
  if (v3 < v6)
  {
    v6 = v6;
    v7 = 176 * v3;
    do
    {
      v5 = *(v2 + 624);
      if (v5 <= v3)
      {
        goto LABEL_328;
      }

      v171 = re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(*(v2 + 640) + v7));
      *v171 = v3++ & 0xFFFFFF | (*(v171 + 3) << 24);
      v7 += 176;
    }

    while (v3 < v6);
    v6 = *(v2 + 624);
  }

  if (v6 <= v4)
  {
    goto LABEL_366;
  }

  v172 = *(v2 + 640) + 176 * v4;
  v173 = *(v172 + 84);
  ++*(v172 + 88);
  if ((v173 & 0xFFFFFF) != 0)
  {
    v5 = 176;
    while (1)
    {
      v3 = *re::DataArray<re::internal::TypeInfoIndex>::get(v2 + 32, *(v172 + 80)) & 0xFFFFFFLL;
      v4 = *(v2 + 624);
      if (v4 <= v3)
      {
        break;
      }

      v172 = *(v2 + 640) + 176 * v3;
      v174 = *(v172 + 84);
      ++*(v172 + 88);
      if ((v174 & 0xFFFFFF) == 0)
      {
        goto LABEL_301;
      }
    }

    v291[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    *buf = 0u;
    v246 = MEMORY[0x277D86220];
    v247 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v297 = 136315906;
    v298 = "operator[]";
    v299 = 1024;
    if (v247)
    {
      v248 = 3;
    }

    else
    {
      v248 = 2;
    }

    v300 = 789;
    v301 = 2048;
    v302 = v3;
    v303 = 2048;
    v304 = v4;
    _os_log_send_and_compose_impl(v248, v291, buf, 80, &dword_26168F000, v246, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
    _os_crash_msg();
    __break(1u);
LABEL_327:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Object member %s has invalid numeric tag %d. Tags need to be unique and greater than 1. Object members need to be sorted by tag.", "member.serializationTag > tag", "commitTo", 395, *(v96 - 2), v98);
    _os_crash("assertion failure: (member.serializationTag > tag) Object member %s has invalid numeric tag %d. Tags need to be unique and greater than 1. Object members need to be sorted by tag.", v274, v280);
    __break(1u);
LABEL_328:
    v291[0] = 0;
    v308 = 0u;
    v309 = 0u;
    v306 = 0u;
    v307 = 0u;
    *buf = 0u;
    v249 = MEMORY[0x277D86220];
    v250 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    v297 = 136315906;
    v298 = "operator[]";
    v299 = 1024;
    if (v250)
    {
      v251 = 3;
    }

    else
    {
      v251 = 2;
    }

    v300 = 789;
    v301 = 2048;
    v302 = v3;
    v303 = 2048;
    v304 = v5;
    _os_log_send_and_compose_impl(v251, v291, buf, 80, &dword_26168F000, v249, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v297, 38, v285, v289);
    _os_crash_msg();
    __break(1u);
    goto LABEL_332;
  }

LABEL_301:
  if (v9[28] == 1)
  {
    if (v9[29])
    {
      v235 = 2;
    }

    else
    {
      v235 = 0;
    }

    *(v9 + 20) = *(v9 + 20) & 0xFFFFFFFD | v235;
  }

  v236 = *(v9 + 122);
  if (v236)
  {
    v237 = 0;
    v238 = *(v9 + 59);
    while (1)
    {
      v239 = *v238;
      v238 += 14;
      if (v239 < 0)
      {
        break;
      }

      if (v236 == ++v237)
      {
        LODWORD(v237) = *(v9 + 122);
        break;
      }
    }
  }

  else
  {
    LODWORD(v237) = 0;
  }

  while (v237 != v236)
  {
    v240 = *(v9 + 59);
    v241 = v240 + 56 * v237;
    v242 = *(v241 + 24);
    v293 = *(v241 + 8);
    *(&v293 + 1) = *(v9 + 4);
    v294 = v242;
    memset(buf, 0, sizeof(buf));
    *&v306 = 0;
    v243 = re::Hash<re::internal::TypeAttributeKey>::operator()(&v297, &v293);
    re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>(v2 + 768, v243, buf, &v293);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v244 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v2 + 768, *&buf[8], *buf);
      *(v244 + 8) = v293;
      *(v244 + 24) = v294;
      *(v244 + 32) = *(v240 + 56 * v237 + 32);
      ++*(v2 + 808);
    }

    v245 = *(v9 + 122);
    if (v245 <= v237 + 1)
    {
      v245 = v237 + 1;
    }

    while (v245 - 1 != v237)
    {
      LODWORD(v237) = v237 + 1;
      if ((*(*(v9 + 59) + 56 * v237) & 0x80000000) != 0)
      {
        goto LABEL_321;
      }
    }

    LODWORD(v237) = v245;
LABEL_321:
    ;
  }

  ++*(v2 + 24);
  re::TypeBuilder::reset(v9, v14);
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::get(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = HIWORD(a2);
  v3 = *(a1 + 16);
  if (v3 <= HIWORD(a2))
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + 4 * a2;
}

unint64_t *re::DynamicArray<re::EnumConstant>::copy(unint64_t *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = v7 + 1;
  if (v7 + 1 <= a2)
  {
    v34 = 0;
    memset(v40, 0, sizeof(v40));
    v27 = MEMORY[0x277D86220];
    *v35 = 136315906;
    *&v35[4] = "copy";
    *&v35[12] = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    *&v35[14] = 643;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v8;
    _os_log_send_and_compose_impl(v28, &v34, v40, 80, &dword_26168F000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v31, v33);
    _os_crash_msg();
    __break(1u);
LABEL_31:
    re::internal::assertLog(7, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", "!overflow", "copy", 647, v7, v5, v4, v34, *v35);
    _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::copy(). size = %zu, pos = %zu, count = %zu", v29, v30, v32);
    __break(1u);
  }

  v4 = a4;
  v9 = a2 + a4;
  if (__CFADD__(a2, a4))
  {
    goto LABEL_31;
  }

  if (v7 >= v9)
  {
    result = (result[4] + 24 * a2 + 8);
    v16 = 24 * a4;
    v17 = (a3 + 8);
    do
    {
      *(result - 1) = *(v17 - 1);
      result = re::StringID::operator=(result, v17) + 3;
      v17 += 3;
      v16 -= 24;
    }

    while (v16);
  }

  else
  {
    v11 = result[1];
    if (v11 < v9)
    {
      if (*result)
      {
        v12 = 2 * v11;
        v13 = v11 == 0;
        v14 = 8;
        if (!v13)
        {
          v14 = v12;
        }

        if (v14 <= v9)
        {
          v15 = a2 + a4;
        }

        else
        {
          v15 = v14;
        }

        result = re::DynamicArray<re::EnumConstant>::setCapacity(result, v15);
      }

      else
      {
        result = re::DynamicArray<re::EnumConstant>::setCapacity(v6, v9);
        ++*(v6 + 6);
      }
    }

    v18 = v6[2];
    v19 = v6[4];
    v20 = 3 * v5;
    v21 = v18 - v5;
    if (v18 != v5)
    {
      result = (v19 + 24 * v5 + 8);
      v22 = 24 * v18 - 24 * v5;
      v23 = (a3 + 8);
      do
      {
        *(result - 1) = *(v23 - 1);
        result = re::StringID::operator=(result, v23) + 3;
        v23 += 3;
        v22 -= 24;
      }

      while (v22);
      v19 = v6[4];
      v5 = v6[2];
    }

    if (v21 != v4)
    {
      v24 = 24 * v4 + 8 * v20 - 24 * v18;
      v25 = (24 * v18 - 8 * v20 + a3 + 8);
      result = (v19 + 24 * v5 + 8);
      do
      {
        *(result - 1) = *(v25 - 1);
        v26 = re::StringID::StringID(result, v25);
        v25 += 3;
        result = v26 + 3;
        v24 -= 24;
      }

      while (v24);
    }

    v6[2] = v9;
  }

  ++*(v6 + 6);
  return result;
}

_BYTE *re::Optional<re::TypeInfo>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::TypeInfo::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::TypeInfo::TypeInfo((a1 + 8), (a2 + 8));
  }

  return a1;
}

unint64_t *re::DynamicArray<re::internal::ObjectMemberInfo>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 40 * v4;
  *v5 = *a2;
  result = re::StringID::StringID((v5 + 8), (a2 + 8));
  v7 = *(a2 + 24);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 24) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

unint64_t *re::TypeBuilder::setSharedInfo(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v8 = a6;
  if (HIDWORD(a6))
  {
    re::internal::assertLog(5, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) Size (%zu) exceeds limit.", "size <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 493, a6);
    _os_crash("assertion failure: (size <= std::numeric_limits<uint32_t>::max()) Size (%zu) exceeds limit.", v13);
    __break(1u);
  }

  else
  {
    v7 = a7;
    if (!HIDWORD(a7))
    {
      v9 = a5;
      v10 = a4;
      *a1 = a2;
      result = re::StringID::operator=((a1 + 8), a3);
      *(a1 + 24) = v10;
      *(a1 + 40) = v8;
      *(a1 + 44) = v7;
      *(a1 + 72) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 96) = v9;
      return result;
    }
  }

  re::internal::assertLog(5, a2, a3, a4, a5, "assertion failure: '%s' (%s:line %i) Alignment (%zu) exceeds limit.", "alignment <= std::numeric_limits<uint32_t>::max()", "setSharedInfo", 494, v7);
  result = _os_crash("assertion failure: (alignment <= std::numeric_limits<uint32_t>::max()) Alignment (%zu) exceeds limit.", v14);
  __break(1u);
  return result;
}

_BYTE *re::TypeBuilder::setHasKnownSize(_BYTE *this, uint64_t a2)
{
  if (*this)
  {
    if ((this[28] & 1) == 0)
    {
      this[28] = 1;
    }

    this[29] = a2;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) beginXxxType() needs to be called before calling this function.", "isBuilding()", "setHasKnownSize", 570, v2, v3);
    this = _os_crash("assertion failure: (isBuilding()) beginXxxType() needs to be called before calling this function.");
    __break(1u);
  }

  return this;
}

unint64_t *re::TypeBuilder::beginObjectType(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, re **a7)
{
  if (*a7 && (re::TypeRegistry::typeInfo(*a7, a7, v17), (v17[0] & 1) == 0))
  {
    re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Super class type is missing in type registry. Super classes need to be registered before their sub-classes.", "typeRegistry->typeInfo(superClass)", "beginObjectType", 889);
    result = _os_crash("assertion failure: (typeRegistry->typeInfo(superClass)) Super class type is missing in type registry. Super classes need to be registered before their sub-classes.");
    __break(1u);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
    *(a1 + 32) = -1;
    *(a1 + 36) = 0u;
    *(a1 + 52) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 88) = 0xFFFFFFFFLL;
    *(a1 + 96) = 1;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0;
    re::StringID::invalid((a1 + 144));
    *(a1 + 160) = 0;
    *(a1 + 176) = -1;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    result = re::TypeBuilder::setSharedInfo(a1, 8, a2, a3, a4, a5, a6);
    if (*a7)
    {
      v15 = a7[1];
    }

    *(a1 + 112) = v15;
    *(a1 + 120) = 1;
  }

  return result;
}

void *re::DynamicArray<re::EnumConstant>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::EnumConstant>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v14, v16);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v15, v17);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = "";
          re::StringID::destroyString(v12);
          v11 += 3;
          v8 = v12 + 2;
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

void *re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = &v8[5 * v9];
        v11 = v7;
        do
        {
          *v11 = *v8;
          v13 = v8[1];
          v12 = v8 + 1;
          v11[1] = v11[1] & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[1] = *v12 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v11[2] = v12[1];
          *v12 = 0;
          v12[1] = "";
          v14 = v12[2];
          *(v11 + 8) = *(v12 + 6);
          v11[3] = v14;
          re::StringID::destroyString(v12);
          v11 += 5;
          v8 = v12 + 4;
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

void *re::DynamicArray<re::RenamedObjectMember>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenamedObjectMember>::setCapacity(v5, a2);
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
        v10 = &v8[3 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = "";
          *(v11 + 4) = *(v8 + 4);
          re::StringID::destroyString(v8);
          v8 += 3;
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

void *re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
            memcpy(v7, v5[4], 88 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::BasicTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x68uLL))
        {
          v2 = 104 * a2;
          result = (*(*result + 32))(result, 104 * a2, 8);
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
            memcpy(v7, v5[4], 104 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 104, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::EnumTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
            memcpy(v7, v5[4], 136 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::ListTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0xA8uLL))
        {
          v2 = 168 * a2;
          result = (*(*result + 32))(result, 168 * a2, 8);
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
            memcpy(v7, v5[4], 168 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 168, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::DictionaryTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::ObjectMemberInfo>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectMemberInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::RenamedObjectMember>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenamedObjectMember>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenamedObjectMember>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::ObjectTypeInfo>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::ObjectTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xB0uLL))
        {
          v2 = 176 * a2;
          result = (*(*result + 32))(result, 176 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 176, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v19, v21);
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_18:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + 176 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 64);
          *(v11 + 3) = *(v8 + 48);
          *(v11 + 4) = v14;
          *(v11 + 1) = v12;
          *(v11 + 2) = v13;
          v15 = *(v8 + 80);
          *(v11 + 92) = *(v8 + 92);
          *(v11 + 5) = v15;
          v16 = *(v8 + 112);
          v11[14] = v11[14] & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[14] = *(v8 + 112) & 0xFFFFFFFFFFFFFFFELL | v16 & 1;
          v11[15] = *(v8 + 120);
          *(v8 + 112) = 0;
          *(v8 + 120) = "";
          LODWORD(v16) = *(v8 + 128);
          *(v11 + 128) = v16;
          if (v16 == 1)
          {
            v11[17] = *(v8 + 136);
          }

          v17 = *(v8 + 160);
          *(v11 + 9) = *(v8 + 144);
          *(v11 + 10) = v17;
          re::StringID::destroyString((v8 + 112));
          v11 += 22;
          v8 += 176;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
            memcpy(v7, v5[4], 112 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::PointerTypeInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::findEntry<re::internal::TypeAttributeKey>@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X1>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v8) = 0;
    goto LABEL_6;
  }

  v7 = result;
  v8 = a2 % *(result + 24);
  v9 = *(*(result + 8) + 4 * v8);
  if (v9 == 0x7FFFFFFF)
  {
LABEL_6:
    v9 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  result = re::internal::TypeAttributeKey::operator==((*(result + 16) + 56 * v9 + 8), a4);
  if (result)
  {
    v6 = v9;
    goto LABEL_6;
  }

  v11 = *(v7 + 16);
  v12 = *(v11 + 56 * v9) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v13 = v12;
      result = re::internal::TypeAttributeKey::operator==((v11 + 56 * v12 + 8), a4);
      if (result)
      {
        break;
      }

      v11 = *(v7 + 16);
      v12 = *(v11 + 56 * v13) & 0x7FFFFFFF;
      v9 = v13;
      if (v12 == 0x7FFFFFFF)
      {
        v9 = v13;
        goto LABEL_7;
      }
    }

    v6 = v13;
  }

LABEL_7:
  *a3 = a2;
  *(a3 + 8) = v8;
  *(a3 + 12) = v6;
  *(a3 + 16) = v9;
  return result;
}

BOOL re::internal::TypeAttributeKey::operator==(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1 == *a2 && a1[1] == WORD1(v2) && ((*(a1 + 1) ^ HIDWORD(v2)) & 0xFFFFFF) == 0 && (v3 = a2[1], __PAIR64__(a1[5], a1[4]) == __PAIR64__(WORD1(v3), v3)) && ((*(a1 + 3) ^ HIDWORD(v3)) & 0xFFFFFF) == 0)
  {
    return *(a1 + 4) == *(a2 + 4);
  }

  else
  {
    return 0;
  }
}

unint64_t re::Hash<re::internal::TypeAttributeKey>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = 73244475 * (*(a2 + 16) ^ HIWORD(*(a2 + 16)));
  return ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (((v5 << 6) + (v5 >> 2) + ((73244475 * (v6 ^ HIWORD(v6))) ^ ((73244475 * (v6 ^ HIWORD(v6))) >> 16)) - 0x61C8864680B583E9) ^ v5)) ^ v3;
}

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(a1, v9);
      re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 24);
        *(result + 8) = *(v8 + 8);
        *(result + 24) = v9;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

void re::internal::typeRegistryAllocator(re::internal *this)
{
  if ((atomic_load_explicit(&qword_27FEB83F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27FEB83F8))
  {
    byte_27FEB8420 = 0;
    qword_27FEB8410 = &unk_2873F3D28;
    unk_27FEB8418 = "TypeInfo allocator";

    __cxa_guard_release(&qword_27FEB83F8);
  }
}

void anonymous namespace::getOrCreateGlobalTypeRegistry(_anonymous_namespace_ *this, const re::IntrospectionBase *a2, char a3)
{
  v4 = a2;
  v5 = this;
  if ((atomic_load_explicit(&qword_27FEB8400, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_52;
  }

  while (1)
  {
    if ((v5 & 1) != 0 || v4)
    {
      if (_MergedGlobals_0)
      {
        return;
      }
    }

    else
    {
      re::IntrospectionSharedLock::IntrospectionSharedLock(&v38);
      v6 = _MergedGlobals_0;
      re::IntrospectionSharedLock::~IntrospectionSharedLock(&v38);
      if (v6)
      {
        return;
      }
    }

    if ((a3 & 1) == 0)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to create the global type registry when it cannot be created.", "canCreateRegistry", "getOrCreateGlobalTypeRegistry", 44);
      _os_crash("assertion failure: (canCreateRegistry) Attempting to create the global type registry when it cannot be created.");
      __break(1u);
      goto LABEL_51;
    }

    if (v5)
    {
      goto LABEL_11;
    }

    if (!v4)
    {
      break;
    }

LABEL_51:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to lock introspectionSharedMutex when it is already locked. Forcing a crash because this would hang otherwise.", "!threadOwnsSharedLock", "getOrCreateGlobalTypeRegistry", 49);
    _os_crash("assertion failure: (!threadOwnsSharedLock) Attempting to lock introspectionSharedMutex when it is already locked. Forcing a crash because this would hang otherwise.");
    __break(1u);
LABEL_52:
    this = __cxa_guard_acquire(&qword_27FEB8400);
    if (this)
    {
      re::internal::typeRegistryAllocator(this);
      __cxa_guard_release(&qword_27FEB8400);
    }
  }

  v7 = re::introspectionSharedMutex(this);
  std::__shared_mutex_base::lock(v7);
LABEL_11:
  if ((_MergedGlobals_0 & 1) == 0)
  {
    _MergedGlobals_0 = 1;
    re::introspect_BOOL(1, a2);
    re::introspect_char(1, v8);
    re::introspect_double(1, v9);
    re::introspect_float(1, v10);
    re::introspect_short(1, v11);
    re::introspect_int(1, v12);
    re::introspect_long(1, v13);
    re::introspect_size_t(1, v14);
    re::introspect_int64_t(1, v15);
    re::introspect_uint8_t(1, v16);
    re::introspect_uint16_t(1, v17);
    re::introspect_uint32_t(1, v18);
    re::introspect_uint64_t(1, v19);
    if ((atomic_load_explicit(&qword_27FEB8408, memory_order_acquire) & 1) == 0)
    {
      v33 = __cxa_guard_acquire(&qword_27FEB8408);
      if (v33)
      {
        re::IntrospectionPointer::IntrospectionPointer(v33);
        __cxa_guard_release(&qword_27FEB8408);
      }
    }

    if ((byte_27FEB83F1 & 1) == 0)
    {
      byte_27FEB83F1 = 1;
      v21 = re::introspect_char(1, v20);
      ArcSharedObject::ArcSharedObject(qword_27FEB8428, 0);
      qword_27FEB8428[2] = 0x800000001;
      LODWORD(qword_27FEB8428[3]) = 8;
      WORD2(qword_27FEB8428[3]) = 0;
      *&xmmword_27FEB8448 = 0;
      *(&xmmword_27FEB8448 + 1) = 0xFFFFFFFFLL;
      qword_27FEB8428[0] = &unk_2873F3DD0;
      unk_27FEB8458 = v21;
      unk_27FEB8460 = 0;
      re::IntrospectionRegistry::add(v22, v23);
      re::getPrettyTypeName(qword_27FEB8428, &v38);
      if (BYTE8(v38))
      {
        v24 = v39;
      }

      else
      {
        v24 = &v38 + 9;
      }

      if (v38 && (BYTE8(v38) & 1) != 0)
      {
        (*(*v38 + 40))();
      }

      if (v40 >> 1 == 94623636 && (v41 == "char*" || !strcmp(v41, "char*")))
      {
        v26 = v38;
      }

      else
      {
        v38 = v21[2];
        v26 = v42;
      }

      xmmword_27FEB8448 = v26;
      if (v40)
      {
        if (v40)
        {
        }
      }
    }

    v40 = 218827000;
    v41 = "short";
    *&v42 = 0x2CE93A4A92;
    *(&v42 + 1) = "int16_t";
    if (v42)
    {
      if (v42)
      {
      }
    }

    if (v40)
    {
      if (v40)
      {
      }
    }

    v40 = 208862;
    v41 = "int";
    *&v42 = 0x2CE93BFE06;
    *(&v42 + 1) = "int32_t";
    if (v42)
    {
      if (v42)
      {
      }
    }

    if (v40)
    {
      if (v40)
      {
      }
    }

    re::StackScratchAllocator::StackScratchAllocator(&v40);
    re::TypeBuilder::TypeBuilder(&v38, &v40);
    *&v42 = 0x258C98EAAF29A10ALL;
    *(&v42 + 1) = "CallbackSerializerAttribute";
    v37[0] = 0;
    v37[1] = 0xFFFFFFFFLL;
    v29 = re::TypeBuilder::beginObjectType(&v38, &v42, 1, 1, 8uLL, 8uLL, v37);
    if (v42)
    {
      if (v42)
      {
      }
    }

    *&v42 = 0xAE8345F9D646D604;
    *(&v42 + 1) = "ComplexVersioningAttribute";
    v35[0] = 0;
    v35[1] = 0xFFFFFFFFLL;
    v30 = re::TypeBuilder::beginObjectType(&v38, &v42, 1, 1, 8uLL, 8uLL, v35);
    if (v42)
    {
      if (v42)
      {
      }
    }

    re::TypeBuilder::~TypeBuilder(&v38, v31);
    re::StackScratchAllocator::~StackScratchAllocator(&v40);
  }

  if ((v5 & 1) == 0)
  {
    v32 = re::introspectionSharedMutex(this);
    std::__shared_mutex_base::unlock(v32);
  }
}

re::IntrospectionSharedLock *re::IntrospectionSharedLock::IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v2 = re::IntrospectionSharedLock::m_sharedLockLevel();
  v3 = v2;
  v4 = *v2;
  if (!*v2)
  {
    v5 = re::introspectionSharedMutex(v2);
    std::__shared_mutex_base::lock_shared(v5);
    v4 = *v3;
  }

  *v3 = v4 + 1;
  return this;
}

void re::IntrospectionSharedLock::~IntrospectionSharedLock(re::IntrospectionSharedLock *this)
{
  v1 = re::IntrospectionSharedLock::m_sharedLockLevel();
  if ((*v1)-- == 1)
  {
    v3 = re::introspectionSharedMutex(v1);
    std::__shared_mutex_base::unlock_shared(v3);
  }
}

uint64_t re::IntrospectionPointer::IntrospectionPointer(re::IntrospectionPointer *this)
{
  ArcSharedObject::ArcSharedObject(qword_27FEB8428, 0);
  *(v1 + 22) = 0;
  v1[2] = 0;
  v1[4] = 0;
  v1[5] = 0xFFFFFFFFLL;
  *v1 = &unk_2873F3DD0;
  v1[7] = 0;
  v2 = (v1 + 6);

  return re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
}

void re::IntrospectionPointer::~IntrospectionPointer(re::IntrospectionPointer *this)
{
  *this = &unk_2873F3DD0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_2873F3DD0;
  re::SerializedReference<re::IntrospectionBase const*>::reset(this + 48);
  *this = &unk_2873F3D98;
  objc_destructInstance(this + 8);

  JUMPOUT(0x266708EC0);
}

uint64_t re::IntrospectionPointer::childInfo(re::IntrospectionPointer *this, uint64_t a2)
{
  if (!a2)
  {
    return *(this + 6);
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Index out of range.", "index == 0", "childInfo", 976, v2, v3);
  result = _os_crash("assertion failure: (index == 0) Index out of range.");
  __break(1u);
  return result;
}

uint64_t re::SerializedReference<re::IntrospectionBase const*>::reset(uint64_t result)
{
  *result = 0;
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    v4 = re::DynamicString::deinit(*(result + 8));
    result = (*(*v3 + 40))(v3, v1, v4);
    *(v2 + 8) = 0;
  }

  return result;
}

uint64_t *re::foundationIntrospectionLogObjects(re *this)
{
  {
    re::foundationIntrospectionLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Introspection");
  }

  return &re::foundationIntrospectionLogObjects(void)::logObjects;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = a2;
  *(result + 12) = a3;
  *(result + 8) = *(a2 + 24);
  if ((a3 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 46, v4, v5);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
    __break(1u);
  }

  else
  {
    *(result + 16) = a4;
  }

  return result;
}

uint64_t re::TypeInfo::TypeInfo(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  v4 = *(a2 + 12);
  *(result + 12) = v4;
  if ((v4 - 1) >= 9)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "TypeInfo", 66, v2, v3);
    result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
    __break(1u);
  }

  else
  {
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t re::TypeInfo::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *result = *a2;
    *(result + 8) = *(a2 + 8);
    v4 = *(a2 + 12);
    *(result + 12) = v4;
    if ((v4 - 1) >= 9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "operator=", 91, v2, v3);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
      __break(1u);
    }

    else
    {
      *(result + 16) = *(a2 + 16);
    }
  }

  return result;
}

void re::TypeInfo::construct(re::TypeInfo *this, void *a2, re::Allocator *a3, void *a4)
{
  *&v28[9] = *MEMORY[0x277D85DE8];
  v8 = *(this + 2);
  v9 = *(v8 + 16);
  if (v9)
  {

    v9(a2, this);
    return;
  }

  v10 = *(this + 12);
  if (v10 > 4)
  {
    if (*(this + 12) <= 7u)
    {
      if (v10 - 5 < 2)
      {
        v11 = *re::foundationIntrospectionLogObjects(this);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(*this + 96, **(this + 2));
          if (!v12)
          {
          }

          v13 = v12[1];
          *buf = 136315138;
          *v28 = v13;
          _os_log_impl(&dword_26168F000, v11, OS_LOG_TYPE_DEFAULT, "No explicit constructor set for %s.", buf, 0xCu);
        }

        bzero(a2, *(*(this + 2) + 8));
        return;
      }

      if (v10 == 7)
      {
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "construct", 375);
        _os_crash("assertion failure: (!Unreachable code) Tagged unions can't be created directly. They need to be embedded in a class/struct.");
        __break(1u);
      }

LABEL_40:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "construct", 385);
      _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
      __break(1u);
      return;
    }

    if (v10 != 8 && v10 != 9)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  if (*(this + 12) <= 2u)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        goto LABEL_40;
      }

      v14 = re::TypeInfo::enumConstants(this);
      if (v15)
      {
        v16 = v14;
        v17 = 0;
        while (*(v14 + v17))
        {
          v17 += 24;
          if (24 * v15 == v17)
          {
            re::Slice<re::EnumConstant>::first(v15, v15);
            v18 = *(*(this + 2) + 8);

            memcpy(a2, v16, v18);
            return;
          }
        }
      }

      v8 = *(this + 2);
    }

    goto LABEL_31;
  }

  if (v10 == 3)
  {
LABEL_31:
    v19 = *(v8 + 8);

    bzero(a2, v19);
    return;
  }

  if (v10 != 4)
  {
    goto LABEL_40;
  }

  re::TypeInfo::TypeInfo(v25, this);
  re::TypeRegistry::typeInfo(v25[0], *(v26 + 80), buf);
  re::TypeInfo::TypeInfo(v24, &v28[1]);
  if ((*(v26 + 92) & 0xFFFFFF) != 0)
  {
    re::ArrayAccessor::reset(v25, a2, a3, 0);
  }

  else
  {
    v20 = re::ArrayAccessor::size(v25, a2);
    if (v20)
    {
      v21 = v20;
      for (i = 0; i != v21; ++i)
      {
        v23 = re::ArrayAccessor::elementAtUnchecked(v25, a2, i);
        re::TypeInfo::construct(v24, v23, a3, a4);
      }
    }
  }
}

void re::TypeInfo::releaseInstance(re::TypeInfo *this, void ***a2, re::Allocator *a3, void *a4)
{
  v5 = *(this + 2);
  if ((*(v5 + 49) & 2) != 0)
  {
    v9 = *(v5 + 40);
    if (v9)
    {

      v9(a2);
    }
  }

  else
  {
    re::TypeInfo::destruct(this, a2, a3, a4);
    if ((*(*(this + 2) + 48) & 0x20) != 0)
    {

      free(a2);
    }

    else
    {
      v8 = *(*a3 + 40);

      v8(a3, a2);
    }
  }
}

void re::TypeInfo::destruct(re::TypeInfo *this, void ***a2, re::Allocator *a3, void *a4)
{
  *&v21[9] = *MEMORY[0x277D85DE8];
  v8 = *(*(this + 2) + 24);
  if (v8)
  {

    v8(a2, this);
    return;
  }

  v9 = *(this + 12);
  if (v9 <= 4)
  {
    goto LABEL_10;
  }

  if (v9 - 5 >= 2)
  {
    if (v9 - 8 < 2)
    {
      return;
    }

    if (v9 != 7)
    {
      goto LABEL_25;
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Tagged unions can't be created directly. They need to be embedded in a class/struct.", "!Unreachable code", "destruct", 471);
    _os_crash("assertion failure: (!Unreachable code) Tagged unions can't be created directly. They need to be embedded in a class/struct.");
    __break(1u);
LABEL_10:
    if (v9 - 1 < 2)
    {
      return;
    }

    if (v9 == 3)
    {
      re::TypeInfo::TypeInfo(buf, this);
      (*(*&v21[3] + 96))(a2, 0);
      return;
    }

    if (v9 == 4)
    {
      re::TypeInfo::TypeInfo(v18, this);
      re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), buf);
      re::TypeInfo::TypeInfo(v17, &v21[1]);
      if ((*(v19 + 92) & 0xFFFFFF) != 0)
      {
        re::ArrayAccessor::reset(v18, a2, a3, 0);
      }

      else
      {
        v13 = re::ArrayAccessor::size(v18, a2);
        if (v13)
        {
          v14 = v13;
          for (i = 0; i != v14; ++i)
          {
            v16 = re::ArrayAccessor::elementAtUnchecked(v18, a2, i);
            re::TypeInfo::destruct(v17, v16, a3, a4);
          }
        }
      }

      return;
    }

LABEL_25:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid type category.", "!Unreachable code", "destruct", 481);
    _os_crash("assertion failure: (!Unreachable code) Invalid type category.");
    __break(1u);
    return;
  }

  v10 = *re::foundationIntrospectionLogObjects(this);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = re::DataArray<re::TypeRegistry::TypeNameAndVersion>::tryGet(*this + 96, **(this + 2));
    if (!v11)
    {
    }

    v12 = v11[1];
    *buf = 136315138;
    *v21 = v12;
    _os_log_impl(&dword_26168F000, v10, OS_LOG_TYPE_DEFAULT, "No explicit destructor set for %s.", buf, 0xCu);
  }
}

uint64_t re::TypeInfo::enumConstants(re::TypeInfo *this)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!*(v1 + 92))
  {
    return 0;
  }

  v2 = *(v1 + 88);
  v3 = *(*this + 344);
  if (v3 <= v2)
  {
    v8 = 0;
    memset(v17, 0, sizeof(v17));
    v5 = MEMORY[0x277D86220];
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v12 = 797;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_26168F000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*this + 360) + 24 * v2;
}

uint64_t re::Slice<re::EnumConstant>::first(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty.", "!isEmpty()", "first", 232, v2, v3);
    result = _os_crash("assertion failure: (!isEmpty()) Array is empty.");
    __break(1u);
  }

  return result;
}

uint64_t *re::TypeInfo::rootClass@<X0>(uint64_t *__return_ptr a1@<X8>, re::TypeInfo *this@<X0>)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  for (i = *this; (*(v4 + 84) & 0xFFFFFF) != 0; v4 = i[80] + 176 * v6)
  {
    v6 = *re::DataArray<re::internal::TypeInfoIndex>::get((i + 4), *(v4 + 80)) & 0xFFFFFFLL;
    i = *this;
    v7 = *(*this + 624);
    if (v7 <= v6)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x277D86220];
      v13 = 136315906;
      v14 = "operator[]";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 797;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_26168F000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }
  }

  re::TypeRegistry::typeInfo(i, *v4, v21);
  return re::TypeInfo::TypeInfo(a1, v21 + 8);
}

uint64_t re::FixedArray<re::DataArrayHandle<re::internal::TypeInfoIndex>>::deinit(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    if (a1[1])
    {
      result = (*(*result + 40))(result, a1[2]);
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
  }

  return result;
}

uint64_t re::DataArray<re::internal::TypeInfoIndex>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 4 * a2;
  }

  else
  {
    return 0;
  }
}

void globalIntrospectionTable(void)
{
  {
    if (v0)
    {
    }
  }
}

BOOL re::IntrospectionRegistry::add(re::IntrospectionRegistry *this, const re::IntrospectionBase *a2)
{
  globalIntrospectionTable();
  v14 = 0;
  v15 = 0;
  v12 = re::introspectionAllocator(v3);
  v13 = 0;
  re::DynamicString::setCapacity(&v12, 0);
  re::appendPrettyTypeName(this, &v12, v4);
  os_unfair_lock_lock(&dword_27FEB7E18);
  v5 = re::Hash<re::DynamicString>::operator()(&v16, &v12);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&globalIntrospectionTable(void)::table, &v12, v5, &v16);
  v6 = v17;
  if (v17 != 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v16 = this;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(&globalIntrospectionTable(void)::table, &v12, &v16);
  v16 = this;
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) ^ ((0xBF58476D1CE4E5B9 * (this ^ (this >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  if (!dword_27FEB7E00)
  {
    LODWORD(v9) = 0;
    goto LABEL_9;
  }

  v9 = v8 % dword_27FEB7E00;
  v10 = *(qword_27FEB7DF0 + 4 * v9);
  if (v10 == 0x7FFFFFFF)
  {
LABEL_9:
    re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(&unk_27FEB7DE8, v9, v8, &v16, &v16);
    ++dword_27FEB7E10;
    goto LABEL_10;
  }

  while (*(qword_27FEB7DF8 + 24 * v10 + 16) != this)
  {
    LODWORD(v10) = *(qword_27FEB7DF8 + 24 * v10 + 8) & 0x7FFFFFFF;
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  os_unfair_lock_unlock(&dword_27FEB7E18);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  return v6 == 0x7FFFFFFF;
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::emplace<re::IntrospectionBase const*>(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 56 * HIDWORD(v11) + 40;
  }

  v7 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
  re::DynamicString::DynamicString((v7 + 8), a2);
  *(v7 + 40) = *a3;
  v8 = v7 + 40;
  ++*(a1 + 40);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void anonymous namespace::IntrospectionRegistryTable::IntrospectionRegistryTable(_anonymous_namespace_::IntrospectionRegistryTable *this)
{
  v1 = re::introspectionAllocator(this);
  globalIntrospectionTable(void)::table = 0u;
  unk_27FEB7DC8 = 0u;
  dword_27FEB7DD8 = 0;
  unk_27FEB7DDC = 0x7FFFFFFFLL;
  re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&globalIntrospectionTable(void)::table, v1, 3);
  v3 = re::introspectionAllocator(v2);
  unk_27FEB7DE8 = 0u;
  *&qword_27FEB7DF8 = 0u;
  dword_27FEB7E08 = 0;
  *algn_27FEB7E0C = 0x7FFFFFFFLL;
  re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(&unk_27FEB7DE8, v3, 3);
  dword_27FEB7E18 = 0;
}

void re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_261710510, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = 0x7FFFFFFF;
  if (!*result)
  {
    LODWORD(v7) = 0;
    goto LABEL_6;
  }

  v7 = a3 % *(result + 24);
  v8 = *(*(result + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_6:
    v8 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v10 = *(result + 16);
  result = re::DynamicString::operator==(v10 + 56 * v8 + 8, a2);
  if (result)
  {
    v6 = v8;
    goto LABEL_6;
  }

  v11 = *(v10 + 56 * v8) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v12 = v11;
      result = re::DynamicString::operator==(v10 + 56 * v11 + 8, a2);
      if (result)
      {
        break;
      }

      v11 = *(v10 + 56 * v12) & 0x7FFFFFFF;
      v8 = v12;
      if (v11 == 0x7FFFFFFF)
      {
        v8 = v12;
        goto LABEL_7;
      }
    }

    v6 = v12;
  }

LABEL_7:
  *a4 = a3;
  *(a4 + 8) = v7;
  *(a4 + 12) = v6;
  *(a4 + 16) = v8;
  return result;
}

unint64_t re::Hash<re::DynamicString>::operator()(uint64_t a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = a2 + 9;
  v6 = *(a2 + 16);
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  MurmurHash3_x64_128(v7, v4, 0, v9);
  return (v9[1] + (v9[0] << 6) + (v9[0] >> 2) - 0x61C8864680B583E9) ^ v9[0];
}

uint64_t re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(__int128 *a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 9);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    v6 = v5;
    if (v5 != *(a1 + 6))
    {
LABEL_29:
      *(a1 + 8) = v6 + 1;
      v30 = *(a1 + 2);
      v31 = *(v30 + 56 * v5);
      goto LABEL_30;
    }

    v7 = *(a1 + 7);
    v8 = 2 * v7;
    v9 = *a1;
    if (!*a1)
    {
      if (v8)
      {
        v32 = 2 * v7;
      }

      else
      {
        v32 = 3;
      }

      goto LABEL_28;
    }

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
      memset(v36, 0, 36);
      *&v36[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v36, v9, v8);
      v11 = *a1;
      v12 = *v36;
      *v36 = *a1;
      *a1 = v12;
      v13 = *&v36[16];
      v14 = *(a1 + 2);
      *&v36[16] = v14;
      *(a1 + 2) = v13;
      v15 = *&v36[24];
      *&v36[24] = *(a1 + 24);
      DWORD2(v12) = *&v36[32];
      *(a1 + 24) = v15;
      ++*&v36[40];
      v16 = DWORD2(v12);
      if (DWORD2(v12))
      {
        v17 = 0;
        v18 = 0;
        do
        {
          if ((*(v14 + v17) & 0x80000000) != 0)
          {
            v19 = re::HashTable<re::DynamicString,re::IntrospectionBase const*,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v14 + v17 + 48) % *(a1 + 6), *(v14 + v17 + 48));
            v20 = (*&v36[16] + v17);
            *(v19 + 24) = 0u;
            *(v19 + 8) = 0u;
            *(v19 + 32) = v20[4];
            v21 = v20[2];
            *(v19 + 8) = v20[1];
            v20[1] = 0;
            v22 = v20[3];
            v20[4] = 0;
            v24 = *(v19 + 16);
            v23 = *(v19 + 24);
            *(v19 + 16) = v21;
            *(v19 + 24) = v22;
            v20[2] = v24;
            v20[3] = v23;
            v14 = *&v36[16];
            *(v19 + 40) = *(*&v36[16] + v17 + 40);
            v16 = *&v36[32];
          }

          ++v18;
          v17 += 56;
        }

        while (v18 < v16);
        v25 = *v36;
        if (!*v36)
        {
          goto LABEL_28;
        }

        if (v16)
        {
          v26 = 0;
          for (i = 0; i < v16; ++i)
          {
            v28 = *&v36[16];
            v29 = *(*&v36[16] + v26);
            if (v29 < 0)
            {
              *(*&v36[16] + v26) = v29 & 0x7FFFFFFF;
              re::DynamicString::deinit((v28 + v26 + 8));
              v16 = *&v36[32];
            }

            v26 += 56;
          }

          v25 = *v36;
        }

        goto LABEL_27;
      }

      v25 = v11;
      if (v11)
      {
LABEL_27:
        (*(*v25 + 40))(v25, *&v36[8]);
      }
    }

LABEL_28:
    a2 = a3 % *(a1 + 6);
    v6 = *(a1 + 8);
    goto LABEL_29;
  }

  v30 = *(a1 + 2);
  v31 = *(v30 + 56 * v5);
  *(a1 + 9) = v31 & 0x7FFFFFFF;
LABEL_30:
  v33 = v30 + 56 * v5;
  *v33 = v31 | 0x80000000;
  v34 = *(a1 + 1);
  *v33 = *(v34 + 4 * a2) | 0x80000000;
  *(v34 + 4 * a2) = v5;
  *(v33 + 48) = a3;
  ++*(a1 + 7);
  return v30 + 56 * v5;
}

uint64_t re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::IntrospectionBase const*,re::IntrospectionBase const*,re::internal::ValueAsKey<re::IntrospectionBase const*>,re::Hash<re::IntrospectionBase const*>,re::EqualTo<re::IntrospectionBase const*>,true,false>::addAsMove(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<void *,void *,re::internal::ValueAsKey<void *>,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

re::IntrospectionBasic *re::IntrospectionBasic::IntrospectionBasic(re::IntrospectionBasic *this, const char *a2, int a3, int a4, char a5, char a6)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v12 + 16) = 0;
  *(v12 + 20) = a3;
  *(v12 + 24) = a4;
  *(v12 + 28) = a5;
  *(v12 + 29) = a5 & a6;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0xFFFFFFFFLL;
  *v12 = &unk_2873F3E40;
  *(v12 + 48) = a2;
  *(v12 + 56) = 0;
  if (!strcmp(a2, "BOOL"))
  {
    v14 = 1;
    goto LABEL_26;
  }

  if (!strcmp(a2, "char"))
  {
    v14 = 2;
    goto LABEL_26;
  }

  if (!strcmp(a2, "short"))
  {
    v14 = 3;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int"))
  {
    v14 = 4;
    goto LABEL_26;
  }

  if (!strcmp(a2, "int64_t"))
  {
    v14 = 5;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint8_t"))
  {
    v14 = 6;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint16_t"))
  {
    v14 = 7;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint32_t"))
  {
    v14 = 8;
    goto LABEL_26;
  }

  if (!strcmp(a2, "uint64_t"))
  {
    v14 = 9;
    goto LABEL_26;
  }

  if (!strcmp(a2, "float"))
  {
    v14 = 10;
    goto LABEL_26;
  }

  if (!strcmp(a2, "double"))
  {
    v14 = 11;
    goto LABEL_26;
  }

  v13 = a3 - 1;
  if (a3 - 1) <= 7 && ((0x8Bu >> v13))
  {
    v14 = dword_261710680[v13];
LABEL_26:
    *(this + 14) = v14;
  }

  return this;
}

void *re::introspect_BOOL(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_BOOL(BOOL)::info, "BOOL", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_BOOL(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_BOOL(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_BOOL(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_BOOL(BOOL)::info;
    }
  }

  re::introspect_BOOL(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_BOOL(BOOL)::info, a2);
  v7[0] = 6059476;
  v7[1] = "BOOL";
  xmmword_27FEB7E48 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_BOOL(BOOL)::info;
}

std::__shared_mutex_base *re::introspectionSharedMutex(re *this)
{
  {
    std::__shared_mutex_base::__shared_mutex_base(&re::introspectionSharedMutex(void)::mutex);
  }

  return &re::introspectionSharedMutex(void)::mutex;
}

void re::TypeBuilderHelper::registerBasic<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x100000001uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_char(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_char(BOOL)::info, "char", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_char(BOOL)::isInitialized)
    {
      return &re::introspect_char(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_char(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_char(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_char(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_char(BOOL)::info;
    }
  }

  re::introspect_char(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_char(BOOL)::info, a2);
  v7[0] = 6104748;
  v7[1] = "char";
  xmmword_27FEB7E98 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_char(BOOL)::info;
}

void *re::introspect_float(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_float(BOOL)::info, "float", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_float(BOOL)::isInitialized)
    {
      return &re::introspect_float(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_float(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_float(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_float(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_float(BOOL)::info;
    }
  }

  re::introspect_float(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_float(BOOL)::info, a2);
  v7[0] = 195052728;
  v7[1] = "float";
  xmmword_27FEB7EE8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_float(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<float>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_double(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_double(BOOL)::info, "double", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_double(BOOL)::isInitialized)
    {
      return &re::introspect_double(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_double(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_double(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_double(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_double(BOOL)::info;
    }
  }

  re::introspect_double(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_double(BOOL)::info, a2);
  v7[0] = 0x161EEF7A2;
  v7[1] = "double";
  xmmword_27FEB7F38 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_double(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<double>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 2;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_short(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_short(BOOL)::info, "short", 2, 2, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_short(BOOL)::isInitialized)
    {
      return &re::introspect_short(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_short(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_short(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_short(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_short(BOOL)::info;
    }
  }

  re::introspect_short(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_short(BOOL)::info, a2);
  v7[0] = 218827000;
  v7[1] = "short";
  xmmword_27FEB7F88 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_short(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<short>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x200000002uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_int(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int(BOOL)::info, "int", 4, 4, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int(BOOL)::isInitialized)
    {
      return &re::introspect_int(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_int(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_int(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int(BOOL)::info;
    }
  }

  re::introspect_int(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int(BOOL)::info, a2);
  v7[0] = 208862;
  v7[1] = "int";
  xmmword_27FEB7FD8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<int>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x400000004uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_long(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_long(BOOL)::info, "long", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_long(BOOL)::isInitialized)
    {
      return &re::introspect_long(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_long(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_long(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_long(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_long(BOOL)::info;
    }
  }

  re::introspect_long(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_long(BOOL)::info, a2);
  v7[0] = 6655224;
  v7[1] = "long";
  xmmword_27FEB8028 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_long(BOOL)::info;
}

void re::TypeBuilderHelper::registerBasic<long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X8>)
{
  re::TypeRegistry::typeID(&v18, a1, a2);
  if (v18)
  {
    *a3 = v18;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v17);
    re::TypeBuilder::TypeBuilder(v7, v17);
    v10 = -1;
    memset(v11, 0, sizeof(v11));
    v12 = 0u;
    v13 = 0xFFFFFFFFLL;
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v7[0] = 1;
    re::StringID::operator=(&v8, a2);
    v9 = 1;
    *(v11 + 4) = 0x800000008uLL;
    *(&v12 + 4) = 0;
    *(&v11[1] + 4) = 0;
    v14 = 1;
    v16 = 1;
    re::TypeBuilder::commitTo(v7, a1, a3);
    re::TypeBuilder::~TypeBuilder(v7, v6);
    re::StackScratchAllocator::~StackScratchAllocator(v17);
  }
}

void *re::introspect_size_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_size_t(BOOL)::info, "size_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_size_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_size_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_size_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_size_t(BOOL)::info;
    }
  }

  re::introspect_size_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_size_t(BOOL)::info, a2);
  v7[0] = 0x1947BDF6CLL;
  v7[1] = "size_t";
  xmmword_27FEB8078 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_size_t(BOOL)::info;
}

void *re::introspect_int64_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_int64_t(BOOL)::info, "int64_t", 8, 8, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_int64_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_int64_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_int64_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_int64_t(BOOL)::info;
    }
  }

  re::introspect_int64_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_int64_t(BOOL)::info, a2);
  v7[0] = 0x2CE93EC744;
  v7[1] = "int64_t";
  xmmword_27FEB80C8 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_int64_t(BOOL)::info;
}

void *re::introspect_uint8_t(re *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    re::IntrospectionBasic::IntrospectionBasic(&re::introspect_uint8_t(BOOL)::info, "uint8_t", 1, 1, 1, 1);
  }

  if (v2)
  {
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v8);
    v3 = re::introspect_uint8_t(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v8);
    if (v3)
    {
      return &re::introspect_uint8_t(BOOL)::info;
    }

    re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(&re::introspectionSharedMutex(void)::mutex);
    if (re::introspect_uint8_t(BOOL)::isInitialized)
    {
LABEL_11:
      re::introspectionSharedMutex(v5);
      std::__shared_mutex_base::unlock(&re::introspectionSharedMutex(void)::mutex);
      return &re::introspect_uint8_t(BOOL)::info;
    }
  }

  re::introspect_uint8_t(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::introspect_uint8_t(BOOL)::info, a2);
  v7[0] = 0x31CD534126;
  v7[1] = "uint8_t";
  xmmword_27FEB8118 = v8;
  if (v7[0])
  {
    if (v7[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_11;
  }

  return &re::introspect_uint8_t(BOOL)::info;
}