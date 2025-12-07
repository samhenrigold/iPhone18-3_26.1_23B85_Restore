uint64_t std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DataArray<re::BackgroundTask>::allocBlock(void *a1)
{
  v3 = 216 * *(a1 + 11);
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

        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v14);
      }

      else
      {
        result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
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

uint64_t re::DataArray<re::BackgroundTask>::deinit(uint64_t result)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(result + 44))
  {
    return result;
  }

  v2 = result;
  v25 = result;
  if (*(result + 40))
  {
    LODWORD(v26) = 0;
    if (!*(result + 16))
    {
      goto LABEL_41;
    }

    v3 = result;
    if (!**(*(result + 32) + 8))
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
    }
  }

  else
  {
    LODWORD(v26) = -1;
    v3 = result;
  }

  v25 = v3;
  if (v3 != v2 || v26 != 0xFFFFFFFFLL)
  {
    v4 = v26;
    v5 = WORD1(v26);
    do
    {
      v6 = *(v3 + 16);
      if (v6 <= v5)
      {
        goto LABEL_37;
      }

      re::DataArray<re::BackgroundTask>::destroy(v2, ((*(*(*(v3 + 32) + 16 * v5 + 8) + 4 * v4) & 0xFFFFFF) << 32) | (v5 << 16) | v4);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
      v3 = v25;
      v4 = v26;
      v5 = WORD1(v26);
    }

    while (v25 != v2 || v26 != 0xFFFFLL || WORD1(v26) != 0xFFFFLL);
  }

  v7 = v2[2];
  v5 = v7 - 1;
  if (v7 == 1)
  {
    goto LABEL_26;
  }

  v6 = 16 * v7 - 16;
  do
  {
    if (v7 <= v5)
    {
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v12 = MEMORY[0x1E69E9C10];
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v13)
      {
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      v31 = 789;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v7;
      _os_log_send_and_compose_impl(v14, &v25, &v36, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_33:
      v25 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "removeAt";
      v30 = 1024;
      if (v16)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v31 = 931;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v1;
      _os_log_send_and_compose_impl(v17, &v25, &v36, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v19)
      {
        v20 = 3;
      }

      else
      {
        v20 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = v5;
      v34 = 2048;
      v35 = v6;
      _os_log_send_and_compose_impl(v20, &v27, &v36, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v27 = 0;
      v40 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v28 = 136315906;
      v29 = "operator[]";
      v30 = 1024;
      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v31 = 797;
      v32 = 2048;
      v33 = 0;
      v34 = 2048;
      v35 = 0;
      _os_log_send_and_compose_impl(v23, &v27, &v36, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24, v25);
      _os_crash_msg();
      __break(1u);
    }

    v8 = (v2[4] + v6);
    (*(**v2 + 40))(*v2, *v8);
    (*(**v2 + 40))(*v2, v8[1]);
    v1 = v2[2];
    if (v1 <= v5)
    {
      goto LABEL_33;
    }

    v7 = v1 - 1;
    if (v1 - 1 > v5)
    {
      *(v2[4] + v6) = *(v2[4] + 16 * v1 - 16);
      v7 = v2[2] - 1;
    }

    v2[2] = v7;
    ++*(v2 + 6);
    v6 -= 16;
    --v5;
  }

  while (v5);
  v2[6] = 0xFFFFFFFF00000000;
  if (!v7)
  {
    v25 = 0;
    v40 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v28 = 136315906;
    v29 = "operator[]";
    v30 = 1024;
    if (v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v31 = 789;
    v32 = 2048;
    v33 = 0;
    v34 = 2048;
    v35 = 0;
    _os_log_send_and_compose_impl(v10, &v25, &v36, 80, &dword_1E1C61000, v2, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v28, 38, v24);
    _os_crash_msg();
    __break(1u);
LABEL_26:
    v2[6] = 0xFFFFFFFF00000000;
  }

  v11 = v2[4];
  (*(**v2 + 40))(*v2, *v11);
  (*(**v2 + 40))(*v2, v11[1]);
  result = re::DynamicArray<unsigned long>::deinit(v2);
  *(v2 + 11) = 0;
  return result;
}

void re::FiberJobManager::~FiberJobManager(re::FiberJobManager *this)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = (this + 8);
  if (*(this + 1))
  {
    atomic_store(1u, this + 32);
    v4 = *(this + 9);
    if (v4)
    {
      v5 = *(this + 10);
      v6 = 8 * v4;
      do
      {
        v7 = *v5++;
        re::internal::AutoResetEvent::set((v7 + 648));
        v6 -= 8;
      }

      while (v6);
      v8 = *(this + 9);
      if (v8)
      {
        v9 = 0;
        while (1)
        {
          v10 = *(this + 9);
          if (v10 <= v9)
          {
            break;
          }

          std::thread::join((*(*(this + 10) + 8 * v9++) + 8));
          if (v8 == v9)
          {
            v1 = 0;
            while (1)
            {
              v9 = *(this + 9);
              if (v9 <= v1)
              {
                break;
              }

              v11 = *(this + 10);
              v12 = *(v11 + 8 * v1);
              if (v12)
              {
                v13 = *(this + 2);
                re::internal::WorkerThread::~WorkerThread(*(v11 + 8 * v1));
                (*(*v13 + 40))(v13, v12);
              }

              if (v8 == ++v1)
              {
                goto LABEL_14;
              }
            }

LABEL_22:
            v22 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v18 = MEMORY[0x1E69E9C10];
            v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v23 = 136315906;
            v24 = "operator[]";
            v25 = 1024;
            if (v19)
            {
              v20 = 3;
            }

            else
            {
              v20 = 2;
            }

            v26 = 468;
            v27 = 2048;
            v28 = v1;
            v29 = 2048;
            v30 = v9;
            _os_log_send_and_compose_impl(v20, &v22, &v31, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
            _os_crash_msg();
            __break(1u);
          }
        }

        v22 = 0;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v16 = MEMORY[0x1E69E9C10];
        v23 = 136315906;
        v24 = "operator[]";
        v25 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v26 = 468;
        v27 = 2048;
        v28 = v9;
        v29 = 2048;
        v30 = v10;
        _os_log_send_and_compose_impl(v17, &v22, &v31, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v23, 38, v21);
        _os_crash_msg();
        __break(1u);
        goto LABEL_22;
      }
    }

LABEL_14:
    re::FixedArray<CoreIKTransform>::deinit(this + 8);
    re::FixedArray<CoreIKTransform>::deinit(this + 5);
    re::DynamicArray<unsigned long>::deinit(this + 776);
    atomic_store(0xFFFFFFFFuLL, this + 80);
    re::FixedArray<re::FiberJobManager::FiberNode>::deinit(this + 65);
    re::JobProfiler::deinit(*(this + 3));
    v14 = *(this + 3);
    if (v14)
    {
      v15 = *v3;
      re::JobProfiler::~JobProfiler(*(this + 3));
      (*(*v15 + 40))(v15, v14);
    }

    *(this + 3) = 0;
    re::WorkStealingQueue<re::Job *>::deinit(this + 128);
    *v3 = 0;
    v3[1] = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 776);
  re::FixedArray<re::FiberJobManager::FiberNode>::deinit(this + 65);
  re::WorkStealingQueue<re::Job *>::deinit(this + 128);
  re::FixedArray<CoreIKTransform>::deinit(this + 8);
  re::FixedArray<CoreIKTransform>::deinit(this + 5);
}

{
  re::FiberJobManager::~FiberJobManager(this);

  JUMPOUT(0x1E6906510);
}

uint64_t re::FiberJobManager::fiberFunction(os_unfair_lock_s *this, void *a2)
{
  v3 = re::FiberJobManager::currentWorkerThread(this);
  re::internal::WorkerThread::postFiberSwitch(v3, v4);
  if (this[8]._os_unfair_lock_opaque)
  {
LABEL_2:
    *(v3 + 80) = *(v3 + 96);
    *(v3 + 84) = 5;
    *(v3 + 88) = 0;
    re::internal::WorkerThread::switchToThreadFiber(v3);
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Cannot resume dead fiber.", "!Unreachable code", "fiberFunction", 373);
    _os_crash("assertion failure: (!Unreachable code) Cannot resume dead fiber.");
    __break(1u);
  }

  while (1)
  {
    v32 = 0;
    WaitingFiber = re::internal::WorkerThread::getWaitingFiber(v3, &v32);
    if (WaitingFiber != 2)
    {
      break;
    }

LABEL_4:
    *(v3 + 80) = *(v3 + 96);
    *(v3 + 84) = 2;
    *(v3 + 88) = 0;
    re::internal::WorkerThread::switchToCustomFiber(v3, v32);
    v3 = re::FiberJobManager::currentWorkerThread(this);
    re::internal::WorkerThread::postFiberSwitch(v3, v7);
LABEL_28:
    if (this[8]._os_unfair_lock_opaque)
    {
      goto LABEL_2;
    }
  }

  v8 = WaitingFiber == 1;
  if (!os_unfair_lock_trylock(this + 192))
  {
    v8 = 1;
    goto LABEL_14;
  }

  v9 = *&this[198]._os_unfair_lock_opaque;
  if (!v9)
  {
LABEL_12:
    os_unfair_lock_unlock(this + 192);
LABEL_14:
    v41[0] = 0;
    Job = re::internal::WorkerThread::getJob(v3, v41);
    if (Job == 2)
    {
      v16 = v41[0];
      *(re::FiberJobManager::getFiber(*v3, *(v3 + 96)) + 16) = v16;
      (*v41[0])();
      v17 = *(v41[0] + 1);
      if (v17)
      {
        atomic_fetch_add_explicit(v17, 0xFFFFFFFF, memory_order_release);
      }

      else
      {
        v18 = *(v41[0] + 2);
        if (v18)
        {
          v19 = v18;
          v20 = *(v41[0] + 2);
          *(v41[0] + 2) = 0;

          dispatch_semaphore_signal(v19);
        }
      }

      v21 = *&this[18]._os_unfair_lock_opaque;
      if (v21)
      {
        v22 = *&this[20]._os_unfair_lock_opaque;
        v23 = 8 * v21;
        do
        {
          v24 = *v22++;
          re::internal::AutoResetEvent::set((v24 + 648));
          v23 -= 8;
        }

        while (v23);
      }

      v3 = re::FiberJobManager::currentWorkerThread(this);
      *(re::FiberJobManager::getFiber(*v3, *(v3 + 96)) + 16) = 0;
    }

    v25 = (Job - 1) < 2 || v8;
    if ((v25 & 1) == 0)
    {
      re::internal::AutoResetEvent::waitOne((v3 + 648));
    }

    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *&this[198]._os_unfair_lock_opaque;
    if (v12 <= v11)
    {
      break;
    }

    v13 = *&this[202]._os_unfair_lock_opaque;
    v14 = **(v13 + v10 + 8);
    if (v14 <= 0)
    {
      __dmb(9u);
      if (!v14)
      {
        v32 = *(v13 + v10);
        re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(&this[194]._os_unfair_lock_opaque, v11);
        os_unfair_lock_unlock(this + 192);
        goto LABEL_4;
      }
    }

    ++v11;
    v10 += 16;
    if (v9 == v11)
    {
      goto LABEL_12;
    }
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v41 = 0u;
  v26 = MEMORY[0x1E69E9C10];
  v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v33 = 136315906;
  v34 = "operator[]";
  v35 = 1024;
  if (v27)
  {
    v28 = 3;
  }

  else
  {
    v28 = 2;
  }

  v36 = 789;
  v37 = 2048;
  v38 = v11;
  v39 = 2048;
  v40 = v12;
  _os_log_send_and_compose_impl(v28, &v46, v41, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v30, v31);
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void *re::FixedArray<re::FiberJobManager::FiberNode>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2] + 168;
      v5 = v2 << 8;
      do
      {
        *(v4 - 40) = 0;
        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        if (*v4)
        {
          free(*v4);
          *v4 = 0;
          *(v4 + 8) = 0;
        }

        v4 += 256;
        v5 -= 256;
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

void re::FiberJobManager::run(os_unfair_lock_s *this, id *a2)
{
  dsema = dispatch_semaphore_create(0);

  re::ObjCObject::operator=(a2 + 2, &dsema);
  os_unfair_lock_lock(this + 22);
  v9 = a2;
  re::WorkStealingQueue<re::Job *>::push(&this[32]._os_unfair_lock_opaque, &v9);
  os_unfair_lock_unlock(this + 22);
  v4 = *&this[18]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = *&this[20]._os_unfair_lock_opaque;
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      re::internal::AutoResetEvent::set((v7 + 648));
      v6 -= 8;
    }

    while (v6);
  }

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v8 = a2[2];
  a2[2] = 0;
}

uint64_t re::FiberJobManager::currentWorkerThread(re::FiberJobManager *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = re::FiberJobManager::currentWorkerThreadIndex(this);
  v3 = v2;
  v4 = *(this + 9);
  if (v4 <= v2)
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

    v13 = 476;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 10) + 8 * v2);
}

unint64_t re::FiberJobManager::currentWorkerThreadIndex(re::FiberJobManager *this)
{
  v2 = pthread_self();
  v4 = *(this + 6);
  if (v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      if (*(*(this + 7) + 8 * v5) == v2)
      {
        goto LABEL_6;
      }

      v5 = v6;
    }

    while (v4 > v6++);
  }

  do
  {
    re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Trying to get the index of a non-worker thread", "isWorkerThread()", "currentWorkerThreadIndex", 383);
    _os_crash("assertion failure: (isWorkerThread()) Trying to get the index of a non-worker thread");
    __break(1u);
LABEL_6:
    ;
  }

  while (!v6);
  v8 = pthread_self();
  v9 = *(this + 6);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v8;
  v11 = 0;
  result = 0;
  while (*(*(this + 7) + 8 * v11) != v10)
  {
    v11 = (result + 1);
    result = v11;
    if (v9 <= v11)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void re::FiberJobManager::runAsync(re::FiberJobManager *a1, uint64_t a2, unsigned int a3, unsigned int *a4, char a5)
{
  v9 = re::FiberJobManager::currentWorkerThread(a1);

  re::internal::WorkerThread::runAsync(v9, a2, a3, a4, a5);
}

void re::FiberJobManager::waitFor(re::FiberJobManager *a1, atomic_uint *a2, int a3)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v6 = re::FiberJobManager::currentWorkerThread(a1);
    v7 = v6;
    if (a3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    *(v6 + 80) = *(v6 + 96);
    *(v6 + 84) = v8;
    *(v6 + 88) = a2;
    FreeFiberIndex = re::FiberJobManager::getFreeFiberIndex(a1);
    re::internal::WorkerThread::switchToCustomFiber(v7, FreeFiberIndex);
    if ((a3 & 1) == 0)
    {
      v7 = re::FiberJobManager::currentWorkerThread(a1);
    }

    re::internal::WorkerThread::postFiberSwitch(v7, v10);
  }
}

unint64_t re::FiberJobManager::getFreeFiberIndex(re::FiberJobManager *this)
{
  v1 = *(this + 67);
  explicit = atomic_load_explicit(this + 80, memory_order_acquire);
  if (explicit == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = explicit;
  atomic_compare_exchange_strong(this + 80, &v3, (explicit & 0xFFFFFFFF00000000 | *(v1 + (explicit << 8))) + 0x100000000);
  if (v3 != explicit)
  {
    while (v3 != -1)
    {
      explicit = v3;
      v4 = v3;
      atomic_compare_exchange_strong(this + 80, &v4, (v3 & 0xFFFFFFFF00000000 | *(v1 + (v3 << 8))) + 0x100000000);
      v5 = v4 == v3;
      v3 = v4;
      if (v5)
      {
        return explicit;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return explicit;
}

void re::FiberJobManager::addFiberToWaitList(os_unfair_lock_s *a1, unsigned __int32 a2, unint64_t a3)
{
  os_unfair_lock_lock(a1 + 192);
  v6.n128_u32[0] = a2;
  v6.n128_u64[1] = a3;
  re::DynamicArray<re::RigNodeConstraint>::add(&a1[194], &v6);
  os_unfair_lock_unlock(a1 + 192);
}

void re::sharedJobServiceInit(re *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, re::Allocator *a6, re::AlignedAllocator *a7)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a1 == 3)
  {
    v21 = re::globalAllocators(a1);
    v20 = (*(*v21[2] + 32))(v21[2], 16, 8);
    *v20 = &unk_1F5D19820;
    *(v20 + 8) = dispatch_get_global_queue(0, 0);
    goto LABEL_44;
  }

  v10 = a2;
  if (a1 == 2)
  {
    v19 = re::globalAllocators(a1);
    v20 = (*(*v19[2] + 32))(v19[2], 208, 8);
    *v20 = &unk_1F5D199F0;
    *(v20 + 8) = 1018212795;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0;
    *(v20 + 56) = 850045863;
    *(v20 + 160) = 0;
    *(v20 + 64) = 0u;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 112) = 0u;
    *(v20 + 128) = 0u;
    *(v20 + 140) = 0u;
    *(v20 + 168) = 1;
    *(v20 + 176) = 0u;
    *(v20 + 192) = 0u;
    re::ThreadJobManager::init(v20, v10, a5, a6, a7);
LABEL_44:
    g_jobService = v20;
    return;
  }

  if (a1 == 1)
  {
    v11 = a4;
    v12 = a3;
    v13 = re::globalAllocators(a1);
    v14 = (*(*v13[2] + 32))(v13[2], 896, 128);
    v15 = v14;
    *v14 = &unk_1F5D19980;
    v14[1] = 0;
    v16 = (v14 + 1);
    v14[48] = 0;
    v14[2] = 0;
    v14[3] = 0;
    *(v14 + 5) = 0u;
    *(v14 + 7) = 0u;
    *(v14 + 9) = 0u;
    *(v14 + 22) = 0;
    *(v14 + 512) = 1;
    v14[65] = 0;
    v14[67] = 0;
    v14[66] = 0;
    atomic_store(0xFFFFFFFFuLL, v14 + 80);
    *(v14 + 192) = 0;
    v14[101] = 0;
    v14[97] = 0;
    v14[99] = 0;
    v14[98] = 0;
    *(v14 + 200) = 0;
    if (!v10)
    {
      v17 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Thread count %d is too small, jobservice will create one thread", buf, 8u);
      }

      v10 = 1;
    }

    if (v10 >= v12)
    {
      v18 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        *buf = 67109376;
        *&buf[4] = v12;
        *&buf[8] = 1024;
        *&buf[10] = v10 + 1;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Fiber count %d is too small, jobservice will create %d fibers", buf, 0xEu);
      }

      v12 = v10 + 1;
    }

    if (v11 <= 0x3FF)
    {
      v22 = *re::foundationThreadingLogObjects(v14);
      v14 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (!v14)
      {
        v11 = 1024;
        if (a6)
        {
LABEL_20:
          *v16 = a6;
          if (!a7)
          {
            a7 = re::globalAllocators(v14)[4];
            a6 = *v16;
          }

          v15[2] = a7;
          atomic_store(1uLL, v15 + 16);
          atomic_store(1uLL, v15 + 32);
          v23 = (*(*a6 + 32))(a6, 32, 8);
          *v23 = 0u;
          *(v23 + 16) = 0u;
          re::FixedArray<unsigned long>::init<>(v23, a6, 0x80uLL);
          v15[48] = v23;
          v24 = (*(*v15[1] + 32))(v15[1], 224, 8);
          *v24 = 0;
          *(v24 + 8) = 0;
          *(v24 + 16) = &str_67;
          *(v24 + 24) = -1;
          *(v24 + 36) = 0;
          *(v24 + 28) = 0;
          *(v24 + 48) = 0u;
          *(v24 + 64) = 0u;
          *(v24 + 80) = 0u;
          *(v24 + 96) = 0u;
          *(v24 + 112) = 0u;
          *(v24 + 128) = 0u;
          *(v24 + 144) = 0u;
          *(v24 + 160) = 0u;
          *(v24 + 176) = 0u;
          *(v24 + 192) = 0;
          *(v24 + 196) = 0x7FFFFFFFLL;
          *(v24 + 208) = 0;
          *(v24 + 216) = 0;
          *(v24 + 220) = 0;
          v15[3] = v24;
          v25 = v15[1];
          v15[65] = v25;
          v15[66] = v12;
          if (v12)
          {
            v26 = (*(*v25 + 32))(v25, v12 << 8, 128);
            v15[67] = v26;
            if (!v26)
            {
              goto LABEL_59;
            }

            v28 = v12 - 1;
            if (v12 != 1)
            {
              do
              {
                *v26 = -1;
                *(v26 + 128) = 0uLL;
                *(v26 + 144) = 0uLL;
                *(v26 + 160) = 0uLL;
                *(v26 + 176) = 0;
                v26 += 256;
                --v28;
              }

              while (v28);
            }

            *v26 = -1;
            *(v26 + 128) = 0u;
            *(v26 + 144) = 0u;
            *(v26 + 160) = 0u;
            *(v26 + 176) = 0;
            v29 = v15[66];
            if (v29)
            {
              v30 = v29 << 8;
              v31 = (v15[67] + 128);
              do
              {
                re::internal::Fiber::init(v31, re::FiberJobManager::fiberFunction, v15, v11);
                v31 = (v31 + 256);
                v30 -= 256;
              }

              while (v30);
            }

            v32 = v12 - 1;
            if ((v12 - 1) >= 0)
            {
              do
              {
                v33 = v15[67];
                explicit = atomic_load_explicit(v15 + 80, memory_order_acquire);
                v35 = (v33 + (v32 << 8));
                *v35 = explicit;
                v36 = explicit;
                atomic_compare_exchange_strong(v15 + 80, &v36, explicit & 0xFFFFFFFF00000000 | v32);
                if (v36 != explicit)
                {
                  v37 = v36;
                  do
                  {
                    *v35 = v36;
                    atomic_compare_exchange_strong(v15 + 80, &v37, v36 & 0xFFFFFFFF00000000 | v32);
                    v38 = v37 == v36;
                    v36 = v37;
                  }

                  while (!v38);
                }
              }

              while (v32-- > 0);
            }
          }

          v15[97] = v15[1];
          re::DynamicArray<re::RigNodeConstraint>::setCapacity(v15 + 97, v12);
          ++*(v15 + 200);
          atomic_store(0, v15 + 32);
          v40 = v15[1];
          v15[5] = v40;
          v15[6] = v10;
          v41 = 8 * v10;
          v42 = (*(*v40 + 32))(v40, v41, 8);
          v15[7] = v42;
          if (v42)
          {
            v44 = v42;
            if (v10 != 1)
            {
              bzero(v42, v41 - 8);
              v44 = (v44 + v41 - 8);
            }

            *v44 = 0;
            v45 = v15[1];
            v15[8] = v45;
            v15[9] = v10;
            v46 = (*(*v45 + 32))(v45, 8 * v10, 8);
            v15[10] = v46;
            if (!v46)
            {
              goto LABEL_58;
            }

            v48 = v46;
            if (v10 != 1)
            {
              bzero(v46, v41 - 8);
              v48 = (v48 + v41 - 8);
            }

            *v48 = 0;
            *(v15 + 512) = a5;
            v49 = (*(*v15[2] + 32))(v15[2], 768, 128);
            *v49 = 0;
            *(v49 + 8) = 0;
            *(v49 + 24) = 0u;
            *(v49 + 40) = 0u;
            *(v49 + 56) = 0u;
            *(v49 + 72) = 0;
            *(v49 + 80) = 0xFFFFFFFFLL;
            *(v49 + 88) = 0;
            *(v49 + 96) = -1;
            *(v49 + 136) = 0;
            *(v49 + 112) = 0;
            *(v49 + 120) = 0;
            *(v49 + 104) = 0;
            *(v49 + 128) = 0;
            *(v49 + 512) = 0;
            *(v49 + 640) = -1;
            *(v49 + 648) = 0;
            *(v49 + 656) = 850045863;
            *(v49 + 712) = 0;
            *(v49 + 680) = 0u;
            *(v49 + 696) = 0u;
            *(v49 + 664) = 0u;
            *(v49 + 720) = 1018212795;
            *(v49 + 728) = 0u;
            *(v49 + 744) = 0u;
            *(v49 + 760) = 0;
            if (v15[9])
            {
              *v15[10] = v49;
              re::internal::WorkerThread::init(*v15[10], v15, a5, 0, v15[2]);
            }

            v64 = 0;
            v75 = 0uLL;
            v76 = 0uLL;
            v74 = 0uLL;
            memset(buf, 0, sizeof(buf));
            v50 = MEMORY[0x1E69E9C10];
            v65 = 136315906;
            v66 = "operator[]";
            v67 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v51 = 3;
            }

            else
            {
              v51 = 2;
            }

            v68 = 468;
            v69 = 2048;
            v70 = 0;
            v71 = 2048;
            v72 = 0;
            _os_log_send_and_compose_impl(v51, &v64, buf, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v58, v61);
            _os_crash_msg();
            __break(1u);
            v64 = 0;
            v75 = 0u;
            v76 = 0u;
            v74 = 0u;
            memset(buf, 0, sizeof(buf));
            v52 = MEMORY[0x1E69E9C10];
            v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v65 = 136315906;
            v66 = "operator[]";
            v67 = 1024;
            if (v53)
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            v68 = 468;
            v69 = 2048;
            v70 = 0;
            v71 = 2048;
            v72 = 0;
            _os_log_send_and_compose_impl(v54, &v64, buf, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v59, v62);
            _os_crash_msg();
            __break(1u);
            v64 = 0;
            v75 = 0u;
            v76 = 0u;
            v74 = 0u;
            memset(buf, 0, sizeof(buf));
            v55 = MEMORY[0x1E69E9C10];
            v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v65 = 136315906;
            v66 = "operator[]";
            v67 = 1024;
            if (v56)
            {
              v57 = 3;
            }

            else
            {
              v57 = 2;
            }

            v68 = 468;
            v69 = 2048;
            v70 = 0;
            v71 = 2048;
            v72 = 0;
            _os_log_send_and_compose_impl(v57, &v64, buf, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v65, 38, v60, v63);
            _os_crash_msg();
            __break(1u);
          }

          re::internal::assertLog(4, v43, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
LABEL_58:
          re::internal::assertLog(4, v47, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
LABEL_59:
          re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
        }

LABEL_19:
        v14 = re::globalAllocators(v14);
        a6 = v14[2];
        goto LABEL_20;
      }

      *buf = 134218240;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      v11 = 1024;
      *&buf[14] = 1024;
      _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Fiber stack size %zu is too small, jobservice will create fibers stasks of size %zu", buf, 0x16u);
    }

    if (a6)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  g_jobService = 0;
  re::internal::assertLog(4, a2, a3, a4, "assertion failure: '%s' (%s:line %i) Must select job service type", "!Unreachable code", "sharedJobServiceInit", 580);
  _os_crash("assertion failure: (!Unreachable code) Must select job service type");
  __break(1u);
}

re *re::internal::destroyPersistent<re::JobService>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void *re::allocInfo_JobService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_562, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_562))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3E50, "JobService");
    __cxa_guard_release(&_MergedGlobals_562);
  }

  return &unk_1EE1C3E50;
}

void re::initInfo_JobService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE9829092CC0B0;
  v6[1] = "JobService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_JobService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::AutoResetEvent::set(re::internal::AutoResetEvent *this)
{
  if ((atomic_load_explicit(this, memory_order_acquire) & 1) == 0)
  {
    std::mutex::lock((this + 8));
    *this = 1;
    std::condition_variable::notify_one((this + 72));

    std::mutex::unlock((this + 8));
  }
}

void re::internal::AutoResetEvent::waitOne(re::internal::AutoResetEvent *this)
{
  m = (this + 8);
  v4.__m_ = (this + 8);
  v4.__owns_ = 1;
  std::mutex::lock((this + 8));
  if (*this)
  {
    *this = 0;
LABEL_6:
    std::mutex::unlock(m);
    return;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v4);
  }

  while ((*this & 1) == 0);
  owns = v4.__owns_;
  *this = 0;
  if (owns)
  {
    m = v4.__m_;
    goto LABEL_6;
  }
}

void re::ThreadJobManager::threadFunction(re::ThreadJobManager *this)
{
  pthread_setname_np("Job Service worker");
  v2 = 0;
  while (1)
  {
    v6.__m_ = (this + 56);
    v6.__owns_ = 1;
    std::mutex::lock((this + 56));
    while (!*(this + 17) && (*(this + 169) & 1) == 0)
    {
      std::condition_variable::wait((this + 8), &v6);
    }

    v4 = *(this + 169);
    if ((v4 & 1) == 0)
    {
      v2 = re::Queue<re::internal::AssetLoadItem *>::dequeue(this + 120, v3);
    }

    if (v6.__owns_)
    {
      std::mutex::unlock(v6.__m_);
    }

    if (v4)
    {
      break;
    }

    (*v2)(v2);
    v5 = *(v2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 0xFFFFFFFF, memory_order_release);
    }
  }
}

void re::ThreadJobManager::init(re::ThreadJobManager *this, int a2, char a3, re::Allocator *a4, re::AlignedAllocator *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    a4 = re::globalAllocators(this)[2];
  }

  *(this + 25) = a4;
  v8 = (a2 - 1);
  *(this + 22) = a4;
  *(this + 23) = v8;
  if (a2 != 1)
  {
    v9 = (*(*a4 + 32))(a4, 8 * v8, 8);
    *(this + 24) = v9;
    if (v9)
    {
      v11 = v9;
      if (v8 != 1)
      {
        bzero(v9, 8 * v8 - 8);
        v11 += v8 - 1;
      }

      *v11 = 0;
      *(this + 168) = a3;
      operator new();
    }

    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    v12 = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    std::__throw_system_error(v12, "thread constructor failed");
    std::terminate();
  }

  *(this + 168) = a3;
}

void re::ThreadJobManager::~ThreadJobManager(re::ThreadJobManager *this)
{
  std::mutex::lock((this + 56));
  *(this + 169) = 1;
  std::condition_variable::notify_all((this + 8));
  std::mutex::unlock((this + 56));
  if (*(this + 23))
  {
    v2 = 0;
    v3 = 1;
    do
    {
      std::thread::join((*(this + 24) + 8 * v2));
      v2 = v3;
    }

    while (*(this + 23) > v3++);
  }

  re::FixedArray<std::thread>::deinit(this + 22);
  v6 = (this + 120);
  v5 = *(this + 15);
  if (v5)
  {
    if (*(this + 20))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 20) = 0;
    *v6 = 0u;
    *(this + 136) = 0u;
    *(this + 38) = 0;
  }

  re::FixedArray<std::thread>::deinit(this + 22);
  if (*v6)
  {
    if (*(this + 20))
    {
      (*(**v6 + 40))(*v6);
    }

    *(this + 20) = 0;
    *v6 = 0u;
    *(this + 136) = 0u;
    *(this + 38) = 0;
  }

  std::mutex::~mutex((this + 56));
  std::condition_variable::~condition_variable((this + 8));
}

{
  re::ThreadJobManager::~ThreadJobManager(this);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<std::thread>::deinit(void *result)
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
        std::thread::~thread(v4);
        v4 = v6 + 1;
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

void re::ThreadJobManager::currentWorkerThreadIndex(re::ThreadJobManager *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not Implemented", "!Unreachable code", "currentWorkerThreadIndex", 88);
  _os_crash("assertion failure: (!Unreachable code) Not Implemented");
  __break(1u);
}

void re::ThreadJobManager::runAsync(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v5 = a2;
  if (a4)
  {
    *a4 = a3;
    if (a3)
    {
      v7 = (a3 + 1) & 0x1FFFFFFFELL;
      v8 = vdupq_n_s64(a3 - 1);
      v9 = xmmword_1E3049620;
      v10 = (a2 + 72);
      v11 = vdupq_n_s64(2uLL);
      do
      {
        v12 = vmovn_s64(vcgeq_u64(v8, v9));
        if (v12.i8[0])
        {
          *(v10 - 8) = a4;
        }

        if (v12.i8[4])
        {
          *v10 = a4;
        }

        v9 = vaddq_s64(v9, v11);
        v10 += 16;
        v7 -= 2;
      }

      while (v7);
    }
  }

  v13 = a3;
  v14 = *(a1 + 184);
  std::mutex::lock((a1 + 56));
  if (v14 <= a3)
  {
    if (a3)
    {
      do
      {
        v15 = v5;
        re::Queue<re::Job *>::enqueue((a1 + 120), &v15);
        v5 += 64;
        --v13;
      }

      while (v13);
    }

    std::condition_variable::notify_all((a1 + 8));
  }

  else if (a3)
  {
    do
    {
      v15 = v5;
      re::Queue<re::Job *>::enqueue((a1 + 120), &v15);
      std::condition_variable::notify_one((a1 + 8));
      v5 += 64;
      --v13;
    }

    while (v13);
  }

  std::mutex::unlock((a1 + 56));
}

_anonymous_namespace_ *re::Queue<re::Job *>::enqueue(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v5 = result + 16;
  v4 = *(result + 2);
  v6 = v4 + 1;
  v7 = *(result + 1);
  if (v4 + 1 >= v7)
  {
    if (v7 < v6)
    {
      if (*result)
      {
        v8 = 2 * v7;
        if (!v7)
        {
          v8 = 8;
        }

        if (v8 <= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(result, v9);
        v4 = *(v3 + 2);
      }

      else
      {
        result = re::Queue<re::internal::AssetLoadItem *>::setCapacity(v3, v6);
        v4 = 0;
        *v5 = 0;
        *(v5 + 1) = 0;
        *(v5 + 4) = 0;
      }
    }

    v7 = *(v3 + 1);
    v6 = v4 + 1;
  }

  *(*(v3 + 5) + 8 * ((*(v3 + 3) + v4) % v7)) = *a2;
  *(v3 + 2) = v6;
  ++*(v3 + 8);
  return result;
}

uint64_t re::ThreadJobManager::waitFor(uint64_t result, atomic_uint *a2)
{
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    v3 = result;
    do
    {
      std::mutex::lock((v3 + 56));
      if (*(v3 + 136))
      {
        v5 = re::Queue<re::internal::AssetLoadItem *>::dequeue(v3 + 120, v4);
        std::mutex::unlock((v3 + 56));
        if (v5)
        {
          result = (*v5)(v5);
          v6 = *(v5 + 8);
          if (v6)
          {
            atomic_fetch_add_explicit(v6, 0xFFFFFFFF, memory_order_release);
          }

          continue;
        }
      }

      else
      {
        std::mutex::unlock((v3 + 56));
      }

      result = usleep(1u);
    }

    while (atomic_load_explicit(a2, memory_order_acquire));
  }

  return result;
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::ThreadJobManager::*)(void),re::ThreadJobManager*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

void *re::allocInfo_BackgroundTaskService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_563, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_563))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3EE8, "BackgroundTaskService");
    __cxa_guard_release(&_MergedGlobals_563);
  }

  return &unk_1EE1C3EE8;
}

void re::initInfo_BackgroundTaskService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2D7BF0572AA82684;
  v6[1] = "BackgroundTaskService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_BackgroundTaskService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::allocInfo_SharedClockService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_564, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_564))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3F90, "SharedClockService");
    __cxa_guard_release(&_MergedGlobals_564);
  }

  return &unk_1EE1C3F90;
}

void re::initInfo_SharedClockService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA811E48D3DB587D8;
  v6[1] = "SharedClockService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::SharedClockService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SharedClockService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_SharedClockService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::SharedClockManager::TimeSyncClockStateDidChange(_anonymous_namespace_ *a1, uint64_t a2, int a3)
{
  v5 = v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    v7 = a1;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "TimeSyncClock %p lock state did change to %d", &v6, 0x12u);
  }
}

id anonymous namespace::SharedClockLog(_anonymous_namespace_ *this)
{
  if (qword_1EE1C3F88 != -1)
  {
    dispatch_once(&qword_1EE1C3F88, &__block_literal_global_52);
  }

  v2 = qword_1EE1C3F80;

  return v2;
}

void re::SharedClockManager::TimeSyncClockMasterDidChange(re::SharedClockManager *this, void *a2, void *a3)
{
  v4 = v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = this;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "TimeSyncClock %p master did change", &v5, 0xCu);
  }
}

void re::SharedClockManager::TimeSyncClockGrandmasterIdentityDidChange(re::SharedClockManager *this, char *a2, unint64_t a3)
{
  v6 = v17 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v14 = 134218240;
    *&v14[4] = this;
    *&v14[12] = 2048;
    *&v14[14] = a3;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_INFO, "TimeSyncClock %p grandmaster identity did change to %llu", v14, 0x16u);
  }

  atomic_store(a3, a2 + 26);
  os_unfair_lock_lock(a2 + 26);
  v7 = *(a2 + 4);
  HostTimeClock = CMClockGetHostTimeClock();
  v10 = re::ManualCMClockCreateWithReference(HostTimeClock, (a2 + 32), v9);
  if (v10)
  {
    v12 = v11 = v10;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "changeGrandmasterID";
      *&v14[12] = 1024;
      *&v14[14] = 237;
      *&v14[18] = 1024;
      *&v14[20] = v11;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v14, 0x18u);
    }
  }

  CFRelease(v7);
  os_unfair_lock_unlock(a2 + 26);
  re::SharedClockManager::update(a2);
  re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise((a2 + 120), a2, *(a2 + 3), *(a2 + 4), a3);
  v13 = *(a2 + 14);
  *v14 = MEMORY[0x1E69E9820];
  *&v14[8] = 3221225472;
  *&v14[16] = ___ZN2re18SharedClockManager19changeGrandmasterIDEy_block_invoke;
  v15 = &__block_descriptor_40_e5_v8__0l;
  v16 = a2;
  dispatch_async(v13, v14);
}

void re::SharedClockManager::TimeSyncClockGrandmasterIdentityAndLocalPortDidChange(re::SharedClockManager *this, void *a2, void *a3, int a4)
{
  v7 = v14 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134218496;
    v9 = this;
    v10 = 2048;
    v11 = a3;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "TimeSyncClock %p grandmaster identity did change to %llu and local port to %d", &v8, 0x1Cu);
  }
}

void re::SharedClockManager::~SharedClockManager(id *this)
{
  re::SharedClockManager::setSession(this, 0);
  re::SharedClockManager::tearDownClocks(this);
  if (this[15])
  {
    re::DynamicArray<unsigned long>::deinit((this + 15));
  }

  if (this[6])
  {
    RESyncRelease();
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 30));
  v2 = this[27];
  if (v2)
  {

    this[27] = 0;
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 15);

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table((this + 8));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

void re::SharedClockManager::setSession(re::SharedClockManager *this, uint64_t a2)
{
  v3 = *(this + 5);
  if (v3 != a2)
  {
    if (v3)
    {
      if (RESyncNetSessionParticipantsCount())
      {
        v5 = 0;
        do
        {
          ParticipantAtIndex = RESyncNetSessionGetParticipantAtIndex();
          re::SharedClockManager::participantDidLeave(this, ParticipantAtIndex);
          ++v5;
        }

        while (v5 < RESyncNetSessionParticipantsCount());
      }

      os_unfair_lock_lock(this + 26);
      v7 = *(this + 11);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      if (v7)
      {
        if (!(v7 >> 61))
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(&v13, v7);
        }

        std::string::__throw_length_error[abi:nn200100]();
      }

      v8 = *(this + 10);
      if (v8)
      {
        v9 = 0;
        do
        {
          *v9++ = v8[2];
          v8 = *v8;
        }

        while (v8);
      }

      os_unfair_lock_unlock(this + 26);
      if (RESyncNetSessionIsInitialized())
      {
        RESyncNetSessionRemoveObserver();
      }

      RESyncRelease();
      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }
    }

    *(this + 5) = a2;
    if (!a2)
    {
      goto LABEL_25;
    }

    RESyncRetain();
    if (RESyncNetSessionIsInitialized())
    {
      if (!*(this + 6))
      {
        *(this + 6) = RESyncNetSessionObserverCreate();
      }

      RESyncNetSessionObserverOnParticipantJoin();
      RESyncNetSessionObserverOnParticipantLeave();
      RESyncNetSessionObserverOnReceiveData();
      RESyncNetSessionAddObserver();
      if (RESyncNetSessionParticipantsCount())
      {
        v10 = 0;
        do
        {
          v11 = *(this + 5);
          v12 = RESyncNetSessionGetParticipantAtIndex();
          re::SharedClockManager::participantDidJoin(this, v11, v12);
          ++v10;
        }

        while (v10 < RESyncNetSessionParticipantsCount());
      }
    }

    if (!*(this + 5) || RESyncNetSessionParticipantsCount() <= 1)
    {
LABEL_25:
      re::SharedClockManager::tearDownClocks(this);
    }
  }
}

void re::SharedClockManager::tearDownClocks(re::SharedClockManager *this)
{
  if (*(this + 232) == 1)
  {
    if (*(this + 7))
    {
      TimeSyncClockDispose();
      *(this + 7) = 0;
    }

    v2 = *(this + 4);
    if (v2)
    {
      CFRelease(v2);
      *(this + 4) = 0;
    }

    v3 = *(this + 3);
    if (v3)
    {
      CFRelease(v3);
      *(this + 3) = 0;
    }

    atomic_store(0, this + 26);
    re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(this + 120, this, 0, 0, 0);
    *(this + 232) = 0;
  }
}

void re::SharedClockManager::setUpClocks(re::SharedClockManager *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if ((*(this + 232) & 1) == 0)
  {
    os_unfair_lock_lock(this + 26);
    HostTimeClock = CMClockGetHostTimeClock();
    v4 = re::ManualCMClockCreateWithReference(HostTimeClock, (this + 24), v3);
    if (v4)
    {
      v6 = v5 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v20 = 136315650;
        v21 = "setUpClocks";
        v22 = 1024;
        v23 = 168;
        v24 = 1024;
        v25 = v5;
        _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v20, 0x18u);
      }
    }

    v7 = TimeSyncAddgPTPServices();
    if (v7)
    {
      v8 = TimeSyncSystemDomainClockIdentifier();
      v9 = MEMORY[0x1E6905C10](v8);
      *(this + 7) = v9;
      if (v9)
      {
        v10 = CMClockGetHostTimeClock();
        v12 = re::ManualCMClockCreateWithReference(v10, (this + 32), v11);
        if (v12)
        {
          v14 = v13 = v12;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v20 = 136315650;
            v21 = "setUpClocks";
            v22 = 1024;
            v23 = 176;
            v24 = 1024;
            v25 = v13;
            _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v20, 0x18u);
          }
        }

        TimeSyncClockSetLockStateChangeCallback();
        TimeSyncClockSetMasterChangeCallback();
        TimeSyncClockSetgPTPGrandmasterChangeCallback();
        TimeSyncClockSetgPTPGrandmasterAndPortChangeCallback();
        TimeSyncClockSetgPTPLocalPortChangeCallback();
        atomic_store(TimeSyncClockGetgPTPGrandmasterIdentity(), this + 26);
        goto LABEL_17;
      }
      v15 = ;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_16:

LABEL_17:
        os_unfair_lock_unlock(this + 26);
        re::SharedClockManager::update(this);
        v17 = *(this + 3);
        v18 = *(this + 4);
        v19 = atomic_load(this + 26);
        re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(this + 120, this, v17, v18, v19);
        *(this + 232) = 1;
        return;
      }

      LOWORD(v20) = 0;
      v16 = "Failed to create time sync clock";
    }

    else
      v15 = {;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      LOWORD(v20) = 0;
      v16 = "Failed to add time sync services";
    }

    _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v16, &v20, 2u);
    goto LABEL_16;
  }
}

void re::SharedClockManager::participantDidJoin(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v38[13] = *MEMORY[0x1E69E9840];
  RESyncParticipantGetPeerID();
  IsLocalPeer = RESyncNetSessionGetIsLocalPeer();
  if ((IsLocalPeer & 1) == 0)
  {
    if (atomic_load((a1 + 236)))
      v6 = {;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        PeerID = RESyncParticipantGetPeerID();
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_INFO, "Participant joined with peer ID %llu ", buf, 0xCu);
      }

      if ((*(a1 + 232) & 1) == 0)
      {
        re::SharedClockManager::setUpClocks(a1);
      }

      v7 = *(a1 + 224);
      if (v7)
      {
        v8 = CFRetain(v7);
      }

      else
      {
        v34 = 0;
        v15 = getifaddrs(&v34);
        if ((v15 & 0x80000000) != 0)
          v26 = {;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v33 = *__error();
            *buf = 67109120;
            LODWORD(PeerID) = v33;
            _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "SharedClockManager: unable to list network adapters(errno=%d).", buf, 8u);
          }

          goto LABEL_36;
        }

        v16 = v34;
        if (!v34)
        {
          MEMORY[0x1E6906FA0](0);
LABEL_36:
          v27 = RESyncParticipantGetPeerID();
          v28 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((a1 + 240), v27);
          if (v28)
          {
            v29 = CFRetain(v28[3]);
            v30 = RESyncParticipantGetPeerID();
            BytePtr = CFDataGetBytePtr(v29);
            Length = CFDataGetLength(v29);
            re::SharedClockManager::didReceiveData(a1, v30, BytePtr, Length);
            CFRelease(v29);
          }

          return;
        }

        v17 = 0;
        do
        {
          ifa_addr = v16->ifa_addr;
          if (ifa_addr)
          {
            ifa_name = v16->ifa_name;
            if ((!strcmp(ifa_name, "en0") || !strcmp(ifa_name, "awdl0")) && (v16->ifa_flags & 0xB) == 3 && ifa_addr->sa_family == 2)
            {
              *&v38[1] = *&ifa_addr->sa_data[2];
              v20 = v16->ifa_name;
              *buf = 0;
              strcpy(&PeerID, v20);
              if (((v17 >> 5) + 1) >> 59)
              {
                std::string::__throw_length_error[abi:nn200100]();
              }

              if (v17 >> 5 != -1)
              {
                if (!(((v17 >> 5) + 1) >> 59))
                {
                  operator new();
                }

                std::string::__throw_length_error[abi:nn200100]();
              }

              v21 = 32 * (v17 >> 5);
              *v21 = 0;
              strcpy((v21 + 4), &PeerID);
              *(v21 + 16) = *&v38[1];
              if (v17)
              {
                v22 = 4;
                v23 = 4;
                do
                {
                  *(v23 - 4) = *(v22 - 4);
                  v24 = strcpy(v23, v22);
                  *(v24 + 12) = *(v22 + 12);
                  v25 = v22 + 28;
                  v22 += 32;
                  v23 = (v24 + 32);
                }

                while (v25 != v17);
              }

              v17 = v21 + 32;
            }
          }

          v16 = v16->ifa_next;
        }

        while (v16);
        MEMORY[0x1E6906FA0](v34);
        if (v17)
        {
          v8 = CFDataCreate(*MEMORY[0x1E695E480], 0, v17);
        }

        else
        {
          v8 = 0;
        }
      }

      if (v8)
      {
        RESyncParticipantGetPeerID();
        CFDataGetBytePtr(v8);
        CFDataGetLength(v8);
        v10 = v9 = RESyncNetSessionSendData();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = RESyncParticipantGetPeerID();
          v12 = CFDataGetLength(v8);
          *buf = 134218240;
          PeerID = v11;
          v37 = 2048;
          *v38 = v12 >> 5;
          _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_INFO, "Sent %llu %lu addresses:", buf, 0x16u);
        }

        v13 = CFDataGetBytePtr(v8);
        v14 = CFDataGetLength(v8);
        CFRelease(v8);
      }

      goto LABEL_36;
    }
  }
}

void re::SharedClockManager::update(os_unfair_lock_s *this)
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 26);
  if (*&this[14]._os_unfair_lock_opaque)
  {
    v12 = 0;
    hostTime = 0;
    v17 = 0;
    value = 0;
    ClockRateAndAnchors = TimeSyncClockGetClockRateAndAnchors();
    if (ClockRateAndAnchors)
    {
      v4 = v3 = ClockRateAndAnchors;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18.value) = 136315650;
        *(&v18.value + 4) = "update";
        LOWORD(v18.flags) = 1024;
        *(&v18.flags + 2) = 308;
        WORD1(v18.epoch) = 1024;
        HIDWORD(v18.epoch) = v3;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v18, 0x18u);
      }
    }

    else
    {
      v5 = *&this[8]._os_unfair_lock_opaque;
      CMTimeMake(&v18, value, 1000000000);
      CMClockMakeHostTimeFromSystemUnits(&v14, hostTime);
      re::ManualCMClockUpdateRateAndAnchor(v5, &v18, 1.0, &v14, v6);
    }
  }

  if (*&this[6]._os_unfair_lock_opaque)
  {
    hostTime = 0;
    v17 = 0;
    times = mach_get_times();
    if (times)
    {
      v9 = v8 = times;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v18.value) = 136315650;
        *(&v18.value + 4) = "update";
        LOWORD(v18.flags) = 1024;
        *(&v18.flags + 2) = 332;
        WORD1(v18.epoch) = 1024;
        HIDWORD(v18.epoch) = v8;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v18, 0x18u);
      }
    }

    else
    {
      v10 = *&this[6]._os_unfair_lock_opaque;
      CMTimeMake(&v18, v13 + 1000000000 * v12, 1000000000);
      CMClockMakeHostTimeFromSystemUnits(&v14, hostTime);
      re::ManualCMClockUpdateRateAndAnchor(v10, &v18, 1.0, &v14, v11);
    }
  }

  os_unfair_lock_unlock(this + 26);
}

uint64_t ___ZN2re18SharedClockManager19changeGrandmasterIDEy_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 104));
  v12 = 0u;
  v13 = 0u;
  v14 = 1065353216;
  v3 = *(v1 + 80);
  if (!v3)
  {
    goto LABEL_13;
  }

  do
  {
    if (*(v3 + 6))
      v4 = {;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Non-IPv4 not yet supported", buf, 2u);
      }
    }

    else
    {
      inet_ntop(2, v3 + 5, v17, 0x10u);
      v2 = (*(**(v1 + 216) + 32))(*(v1 + 216), v17, 1500000);
      if (v2)
      {
        goto LABEL_8;
      }
    }

    v2 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v12, v3 + 2, v3 + 2);
LABEL_8:
    v3 = *v3;
  }

  while (v3);
  for (i = v13; i; i = *i)
    v6 = {;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = i[2];
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_INFO, "Disconnecting from peer %llu after failing to ping", buf, 0xCu);
    }

    re::SharedClockManager::peerDidLeave(v1, i[2]);
  }

LABEL_13:
  os_unfair_lock_unlock((v1 + 104));
  if (*(&v13 + 1) && *(v1 + 40) && RESyncNetSessionParticipantsCount())
  {
    v8 = 0;
    do
    {
      v9 = *(v1 + 40);
      ParticipantAtIndex = RESyncNetSessionGetParticipantAtIndex();
      re::SharedClockManager::participantDidJoin(v1, v9, ParticipantAtIndex);
      ++v8;
    }

    while (v8 < RESyncNetSessionParticipantsCount());
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v12);
}

void re::SharedClockManager::peerDidLeave(int8x8_t *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[8], a2);
  if (v4)
  {
    if (!*&this[7])
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4 + 28, 0x8000100u);
    v7 = *(v5 + 6);
    if (v7 == 2)
    {
      v13 = TimeSyncClockRemoveAWDLPort();
      if (v13)
      {
        v10 = v14 = v13;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315650;
          v27 = "peerDidLeave";
          v28 = 1024;
          v29 = 513;
          v30 = 1024;
          v31 = v14;
          goto LABEL_47;
        }

LABEL_14:
      }
    }

    else
    {
      if (v7 != 1)
      {
        if (v7)
        {
          goto LABEL_15;
        }

        v8 = TimeSyncClockRemoveUDPv4EndToEndPort();
        if (!v8)
        {
          goto LABEL_15;
        }

        v10 = v9 = v8;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_14;
        }

        v26 = 136315650;
        v27 = "peerDidLeave";
        v28 = 1024;
        v29 = 505;
        v30 = 1024;
        v31 = v9;
        goto LABEL_47;
      }

      v11 = TimeSyncClockRemoveUDPv6EndToEndPort();
      if (v11)
      {
        v10 = v12 = v11;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v26 = 136315650;
          v27 = "peerDidLeave";
          v28 = 1024;
          v29 = 509;
          v30 = 1024;
          v31 = v12;
LABEL_47:
          _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "%s:%d error: %d", &v26, 0x18u);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

LABEL_15:
    CFRelease(v6);
LABEL_16:
    v15 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(&this[8], a2);
    if (!v15)
    {
      return;
    }

    v16 = this[9];
    v17 = *v15;
    v18 = v15[1];
    v19 = vcnt_s8(v16);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      if (*&v18 >= *&v16)
      {
        *&v18 %= *&v16;
      }
    }

    else
    {
      *&v18 &= *&v16 - 1;
    }

    v20 = this[8];
    v21 = *(*&v20 + 8 * *&v18);
    do
    {
      v22 = v21;
      v21 = *v21;
    }

    while (v21 != v15);
    if (v22 == &this[10])
    {
      goto LABEL_34;
    }

    v23 = v22[1];
    if (v19.u32[0] > 1uLL)
    {
      if (*&v23 >= *&v16)
      {
        *&v23 %= *&v16;
      }
    }

    else
    {
      *&v23 &= *&v16 - 1;
    }

    if (*&v23 != *&v18)
    {
LABEL_34:
      if (v17)
      {
        v24 = *(*&v17 + 8);
        if (v19.u32[0] > 1uLL)
        {
          v25 = *(*&v17 + 8);
          if (v24 >= *&v16)
          {
            v25 = v24 % *&v16;
          }
        }

        else
        {
          v25 = v24 & (*&v16 - 1);
        }

        if (v25 == *&v18)
        {
          goto LABEL_38;
        }
      }

      *(*&v20 + 8 * *&v18) = 0;
      v17 = *v15;
    }

    if (!*&v17)
    {
LABEL_44:
      *v22 = v17;
      *v15 = 0;
      --*&this[11];
      operator delete(v15);
      return;
    }

    v24 = *(*&v17 + 8);
LABEL_38:
    if (v19.u32[0] > 1uLL)
    {
      if (v24 >= *&v16)
      {
        v24 %= *&v16;
      }
    }

    else
    {
      v24 &= *&v16 - 1;
    }

    if (v24 != *&v18)
    {
      *(*&this[8] + 8 * v24) = v22;
      v17 = *v15;
    }

    goto LABEL_44;
  }
}

void re::SharedClockManager::participantDidLeave(uint64_t a1, uint64_t a2)
{
  v3 = v7 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    PeerID = RESyncParticipantGetPeerID();
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_INFO, "Participant left with peer ID %llu", &v5, 0xCu);
  }

  os_unfair_lock_lock((a1 + 104));
  v4 = RESyncParticipantGetPeerID();
  re::SharedClockManager::peerDidLeave(a1, v4);
  os_unfair_lock_unlock((a1 + 104));
  if (RESyncNetSessionParticipantsCount() <= 1 && *(a1 + 232) == 1)
  {
    re::SharedClockManager::tearDownClocks(a1);
  }
}

void re::SharedClockManager::didReceiveData(_anonymous_namespace_ *a1, unint64_t a2, const UInt8 *a3, unint64_t a4)
{
  v4 = a4;
  *&v42[13] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v10 = v9 = a4 >> 5;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v40 = v9;
    v41 = 2048;
    *v42 = a2;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_INFO, "Received %lu addresses from %llu:", buf, 0x16u);
  }

  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 30, a2);
  if (v11)
  {
    CFRelease(v11[3]);
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>(a1 + 30, a2);
    if (v12)
    {
      v13 = *(a1 + 248);
      v14 = *v12;
      v15 = v12[1];
      v16 = vcnt_s8(v13);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        if (v15 >= *&v13)
        {
          v15 %= *&v13;
        }
      }

      else
      {
        v15 &= *&v13 - 1;
      }

      v17 = *(a1 + 30);
      v18 = *(v17 + 8 * v15);
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18 != v12);
      if (v19 == (a1 + 256))
      {
        goto LABEL_22;
      }

      v20 = v19[1];
      if (v16.u32[0] > 1uLL)
      {
        if (v20 >= *&v13)
        {
          v20 %= *&v13;
        }
      }

      else
      {
        v20 &= *&v13 - 1;
      }

      if (v20 != v15)
      {
LABEL_22:
        if (v14)
        {
          v21 = *(v14 + 8);
          if (v16.u32[0] > 1uLL)
          {
            v22 = *(v14 + 8);
            if (v21 >= *&v13)
            {
              v22 = v21 % *&v13;
            }
          }

          else
          {
            v22 = v21 & (*&v13 - 1);
          }

          if (v22 == v15)
          {
            goto LABEL_26;
          }
        }

        *(v17 + 8 * v15) = 0;
        v14 = *v12;
      }

      if (!v14)
      {
LABEL_32:
        *v19 = v14;
        *v12 = 0;
        --*(a1 + 33);
        operator delete(v12);
        goto LABEL_33;
      }

      v21 = *(v14 + 8);
LABEL_26:
      if (v16.u32[0] > 1uLL)
      {
        if (v21 >= *&v13)
        {
          v21 %= *&v13;
        }
      }

      else
      {
        v21 &= *&v13 - 1;
      }

      if (v21 != v15)
      {
        *(*(a1 + 30) + 8 * v21) = v19;
        v14 = *v12;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  if (!*(a1 + 7))
  {
    v28 = CFDataCreate(*MEMORY[0x1E695E480], a3, v8);
    v29 = *(a1 + 248);
    if (!*&v29)
    {
      goto LABEL_55;
    }

    v30 = vcnt_s8(v29);
    v30.i16[0] = vaddlv_u8(v30);
    if (v30.u32[0] > 1uLL)
    {
      v31 = a2;
      if (*&v29 <= a2)
      {
        v31 = a2 % *&v29;
      }
    }

    else
    {
      v31 = (*&v29 - 1) & a2;
    }

    v32 = *(*(a1 + 30) + 8 * v31);
    if (!v32 || (v33 = *v32) == 0)
    {
LABEL_55:
      operator new();
    }

    while (1)
    {
      v34 = v33[1];
      if (v34 == a2)
      {
        if (v33[2] == a2)
        {
          v33[3] = v28;
          return;
        }
      }

      else
      {
        if (v30.u32[0] > 1uLL)
        {
          if (v34 >= *&v29)
          {
            v34 %= *&v29;
          }
        }

        else
        {
          v34 &= *&v29 - 1;
        }

        if (v34 != v31)
        {
          goto LABEL_55;
        }
      }

      v33 = *v33;
      if (!v33)
      {
        goto LABEL_55;
      }
    }
  }

  if (v4 >= 0x20)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = a3 + 16;
    do
    {
      *buf = *(v24 - 4);
      v25 = *buf;
      strcpy(&v40, v24 - 12);
      *&v42[1] = *v24;
      v26 = *(a1 + 14);
      v35[0] = v23;
      v35[1] = 3321888768;
      v35[2] = ___ZN2re18SharedClockManager14didReceiveDataEP16RESyncNetSessionyPKvj_block_invoke;
      v35[3] = &__block_descriptor_80_a8_48c54_ZTSN2re18SharedClockManager23TimeSyncPeerInformationE_e5_v8__0l;
      v35[4] = a1;
      v35[5] = a2;
      v36 = v25;
      strcpy(v37, &v40);
      v27 = *v24;
      v24 += 32;
      v38 = v27;
      dispatch_async(v26, v35);
      --v9;
    }

    while (v9);
  }
}

void anonymous namespace::LogPeerInformationArray(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 4;
    for (i = (a1 + 16); ; i += 8)
    {
      v5 = *(i - 4);
      if (v5 == 1)
      {
        break;
      }

      if (!v5)
      {
        v7 = v6 = inet_ntop(2, i, buf, 0x10u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v16 = 136315394;
          v17 = v3;
          v18 = 2080;
          v19 = buf;
          v8 = v16;
          v9 = v7;
          v10 = "   %s udpv4 %s";
          goto LABEL_9;
        }

        goto LABEL_10;
      }

LABEL_11:
      v3 += 32;
      if (!--v2)
      {
        return;
      }
    }

    v7 = v11 = inet_ntop(30, i, v16, 0x2Eu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = v3;
      v14 = 2080;
      v15 = v16;
      v8 = buf;
      v9 = v7;
      v10 = "   %s udpv6 %s";
LABEL_9:
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_INFO, v10, v8, 0x16u);
    }

LABEL_10:

    goto LABEL_11;
  }
}

void ___ZN2re18SharedClockManager14didReceiveDataEP16RESyncNetSessionyPKvj_block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v20 = *(a1 + 48);
  strcpy(v21, (a1 + 52));
  v22 = *(a1 + 64);
  if (*(v3 + 56))
  {
    os_unfair_lock_lock((v3 + 104));
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PhaseShapeAndMesh>>>::find<unsigned long long>((v3 + 64), v2);
    if (v4)
      v5 = {;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v28 = v2;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "Already connected to peer %llu", buf, 0xCu);
      }

LABEL_8:

      goto LABEL_9;
    }

    if (v20)
      v5 = {;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Non-IPv4 not yet supported", buf, 2u);
      }

      goto LABEL_8;
    }

    inet_ntop(2, &v22, buf, 0x10u);
    v6 = (*(**(v3 + 216) + 32))(*(v3 + 216), buf, 1500000);
    v8 = v7 = v6;
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        *v23 = 136315394;
        v24 = buf;
        v25 = 2080;
        v26[0] = v21;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Successfully pinged peer at %s on %s", v23, 0x16u);
      }

      v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v21, 0x8000100u);
      v11 = TimeSyncClockAddUDPv4EndToEndPort();
      if (v11)
      {
        v13 = v12 = v11;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v23 = 136315650;
          v24 = "attemptToReachPeerAtAddress";
          v25 = 1024;
          LODWORD(v26[0]) = 565;
          WORD2(v26[0]) = 1024;
          *(v26 + 6) = v12;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "%s:%d error: %d", v23, 0x18u);
        }
      }

      v14 = *(v3 + 72);
      if (!*&v14)
      {
        goto LABEL_38;
      }

      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = v2;
        if (*&v14 <= v2)
        {
          v16 = v2 % *&v14;
        }
      }

      else
      {
        v16 = (*&v14 - 1) & v2;
      }

      v17 = *(*(v3 + 64) + 8 * v16);
      if (!v17 || (v18 = *v17) == 0)
      {
LABEL_38:
        operator new();
      }

      while (1)
      {
        v19 = v18[1];
        if (v19 == v2)
        {
          if (v18[2] == v2)
          {
            *(v18 + 6) = v20;
            strcpy(v18 + 28, v21);
            *(v18 + 5) = v22;
            if (v10)
            {
              CFRelease(v10);
            }

            goto LABEL_9;
          }
        }

        else
        {
          if (v15.u32[0] > 1uLL)
          {
            if (v19 >= *&v14)
            {
              v19 %= *&v14;
            }
          }

          else
          {
            v19 &= *&v14 - 1;
          }

          if (v19 != v16)
          {
            goto LABEL_38;
          }
        }

        v18 = *v18;
        if (!v18)
        {
          goto LABEL_38;
        }
      }
    }

    if (v9)
    {
      *v23 = 136315138;
      v24 = buf;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Failed to ping peer at %s", v23, 0xCu);
    }

LABEL_9:
    os_unfair_lock_unlock((v3 + 104));
  }
}

__n128 __copy_helper_block_a8_48c54_ZTSN2re18SharedClockManager23TimeSyncPeerInformationE(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  strcpy(&a1[3].n128_i8[4], &a2[3].n128_i8[4]);
  result = a2[4];
  a1[4] = result;
  return result;
}

void ___ZN12_GLOBAL__N_114SharedClockLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "SharedClock");
  v1 = qword_1EE1C3F80;
  qword_1EE1C3F80 = v0;
}

uint64_t *re::foundationTimingLogObjects(re *this)
{
  {
    re::foundationTimingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Timing");
  }

  return &re::foundationTimingLogObjects(void)::logObjects;
}

void *re::allocInfo_SimulationClock(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_565, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_565))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4028, "SimulationClock");
    __cxa_guard_release(&_MergedGlobals_565);
  }

  return &unk_1EE1C4028;
}

void re::initInfo_SimulationClock(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4256CCBB645C544ELL;
  v6[1] = "SimulationClock";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_SimulationClock(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

_anonymous_namespace_ *re::Scheduler::configure(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v133 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  {
    re::FixedArray<re::StringID>::deinit(v3 + 1);
    re::FixedArray<re::StringID>::deinit(v3 + 4);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 56);
    *(v3 + 15) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 128);
    *(v3 + 24) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 200);
    *(v3 + 33) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 272);
    *(v3 + 42) = 0;
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3 + 344);
    *(v3 + 51) = 0;
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(v3 + 52);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 55);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 58);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 61);
    re::FixedArray<re::Function<void ()(float)>>::deinit(v3 + 64);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 67);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 70);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 73);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 76);
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(v3 + 79);
    re::FixedArray<CoreIKTransform>::deinit(v3 + 82);
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(v3 + 85);
    re::DynamicArray<unsigned long>::deinit(v3 + 704);
    *(v3 + 93) = 0;
    *(v3 + 94) = vneg_f32(0x80000000800000);
    re::Scheduler::ExecutionContext::deinit((v3 + 760));
  }

  *v3 = v4;
  if ((atomic_load_explicit(&qword_1EE1C40C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_168;
  }

  while (1)
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 16);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a2 + 16);
    }

    v8 = *(a2 + 72);
    a2 = *(a2 + 56);
    v128 = 0uLL;
    *&v129 = 0;
    re::FixedArray<re::StringID>::init<>(&v128, v4, v7);
    re::FixedArray<float>::operator=(v3 + 1, &v128);
    re::FixedArray<re::StringID>::deinit(&v128);
    re::FixedArray<re::StringID>::init<>(v3 + 4, v4, a2);
    *(v3 + 7) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 56), 0);
    *(v3 + 18) += 2;
    if ((a2 & 0x3F) != 0)
    {
      v9 = (a2 >> 6) + 1;
    }

    else
    {
      v9 = a2 >> 6;
    }

    *(v3 + 15) = a2;
    *&v128 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 56), v9, &v128);
    *(v3 + 16) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 128), 0);
    *(v3 + 36) += 2;
    *(v3 + 24) = a2;
    *&v128 = 0;
    v117 = v3 + 128;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 128), v9, &v128);
    *(v3 + 25) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 200), 0);
    *(v3 + 54) += 2;
    *(v3 + 33) = a2;
    *&v128 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 200), v9, &v128);
    *(v3 + 34) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 272), 0);
    *(v3 + 72) += 2;
    *(v3 + 42) = a2;
    *&v128 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 272), v9, &v128);
    *(v3 + 43) = v4;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity((v3 + 344), 0);
    *(v3 + 90) += 2;
    *(v3 + 51) = a2;
    *&v128 = 0;
    v120 = v9;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v3 + 344), v9, &v128);
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 416, v4, v7);
    *(v3 + 55) = v4;
    *(v3 + 56) = a2;
    if (!a2)
    {
      goto LABEL_22;
    }

    v10 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 57) = v10;
    if (!v10)
    {
LABEL_164:
      re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_165:
      re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
LABEL_166:
      re::internal::assertLog(4, v18, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
      goto LABEL_167;
    }

    v12 = v10;
    v13 = v6;
    v6 = a2 - 1;
    if (a2 != 1)
    {
      memset(v10, 1, a2 - 1);
      v12 += v6;
    }

    *v12 = 1;
    *(v3 + 58) = v4;
    *(v3 + 59) = a2;
    v14 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 60) = v14;
    if (!v14)
    {
      goto LABEL_165;
    }

    v16 = v14;
    if (a2 != 1)
    {
      memset(v14, 1, a2 - 1);
      v16 += v6;
    }

    *v16 = 1;
    *(v3 + 61) = v4;
    *(v3 + 62) = a2;
    v17 = (*(*v4 + 32))(v4, a2, 1);
    *(v3 + 63) = v17;
    if (!v17)
    {
      goto LABEL_166;
    }

    v19 = v17;
    if (a2 == 1)
    {
      *v17 = 0;
      *(v3 + 64) = v4;
      *(v3 + 65) = 1;
    }

    else
    {
      bzero(v17, a2 - 1);
      v19[v6] = 0;
      *(v3 + 64) = v4;
      *(v3 + 65) = a2;
      if (a2 >= 0x666666666666667)
      {
        re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v111, v112);
        __break(1u);
LABEL_22:
        *(v3 + 58) = v4;
        *(v3 + 59) = 0;
        *(v3 + 61) = v4;
        *(v3 + 62) = 0;
        *(v3 + 64) = v4;
        *(v3 + 65) = 0;
        goto LABEL_28;
      }
    }

    v21 = (*(*v4 + 32))(v4, 40 * a2, 8);
    *(v3 + 66) = v21;
    if (v21)
    {
      break;
    }

LABEL_167:
    v113 = "init";
    v114 = 327;
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data");
    _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
LABEL_168:
    if (__cxa_guard_acquire(&qword_1EE1C40C0))
    {
      qword_1EE1C40D0 = 0x32549179C460AFB4;
      unk_1EE1C40D8 = "DefaultPhase";
      __cxa_guard_release(&qword_1EE1C40C0);
    }
  }

  v23 = v21;
  if (a2 != 1)
  {
    do
    {
      v23[4] = 0;
      *v23 = 0u;
      *(v23 + 1) = 0u;
      v21 = re::globalAllocators(v21);
      v23[3] = v21[2];
      v23[4] = 0;
      v23 += 5;
      --v6;
    }

    while (v6);
  }

  v23[4] = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v23[3] = re::globalAllocators(v21)[2];
  v23[4] = 0;
  v6 = v13;
LABEL_28:
  re::FixedArray<int>::init<>(v3 + 67, v4, a2);
  re::FixedArray<double>::init<>(v3 + 70, v4, a2);
  re::FixedArray<unsigned long>::init<>(v3 + 73, v4, a2);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 632, v4, a2);
  re::FixedArray<double>::init<>(v3 + 82, v4, a2);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(v3 + 680, v4, v7);
  *(v3 + 88) = v4;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v3 + 88, 0);
  ++*(v3 + 182);
  *(v3 + 93) = 0;
  *(v3 + 94) = vneg_f32(0x80000000800000);
  re::StackScratchAllocator::StackScratchAllocator(&v128);
  *&v127[2] = 0;
  memset(&v125[8], 0, 20);
  *v125 = &v128;
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v125, v7);
  ++*&v125[24];
  v122 = 0;
  do
  {
    re::DynamicArray<unsigned long>::add(v125, &v122);
    ++v122;
  }

  while (v122 < v7);
  if (v6)
  {
    v24 = v5;
  }

  else
  {
    v24 = &qword_1EE1C40D0;
  }

  v121[0] = *&v127[2];
  v121[1] = *&v125[16];
  v123 = 0;
  v124 = 0;
  v122 = 0;
  re::FixedArray<unsigned long>::init<>(&v122, v4, *&v125[16]);
  re::FixedArray<unsigned long>::copy(&v122, v121);
  re::FixedArray<unsigned long>::operator=(v3 + 76, &v122);
  if (v122 && v123)
  {
    (*(*v122 + 40))();
  }

  v115 = v8;
  if (*v125 && *&v127[2])
  {
    (*(**v125 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(&v128);
  v25 = 0;
  v26 = 0;
  v27 = 32;
  v119 = v7;
  do
  {
    v28 = *(v3 + 2);
    if (v28 <= v26)
    {
LABEL_112:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v73 = MEMORY[0x1E69E9C10];
      v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v74)
      {
        v75 = 3;
      }

      else
      {
        v75 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v26;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v75, &v122, &v128, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_116:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v76 = MEMORY[0x1E69E9C10];
      v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v77)
      {
        v78 = 3;
      }

      else
      {
        v78 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v26;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v78, &v122, &v128, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v79 = MEMORY[0x1E69E9C10];
      v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v80)
      {
        v81 = 3;
      }

      else
      {
        v81 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v26;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v81, &v122, &v128, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_124:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v82 = MEMORY[0x1E69E9C10];
      v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v83)
      {
        v84 = 3;
      }

      else
      {
        v84 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v26;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v84, &v122, &v128, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_128:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v85 = MEMORY[0x1E69E9C10];
      v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v86)
      {
        v87 = 3;
      }

      else
      {
        v87 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v26;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v87, &v122, &v128, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_132:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v88 = MEMORY[0x1E69E9C10];
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v89)
      {
        v90 = 3;
      }

      else
      {
        v90 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v90, &v122, &v128, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_136:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v91 = MEMORY[0x1E69E9C10];
      v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v92)
      {
        v93 = 3;
      }

      else
      {
        v93 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v93, &v122, &v128, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_140:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v94 = MEMORY[0x1E69E9C10];
      v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v95)
      {
        v96 = 3;
      }

      else
      {
        v96 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v96, &v122, &v128, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_144:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v97 = MEMORY[0x1E69E9C10];
      v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v98)
      {
        v99 = 3;
      }

      else
      {
        v99 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v99, &v122, &v128, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_148:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v100 = MEMORY[0x1E69E9C10];
      v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v101)
      {
        v102 = 3;
      }

      else
      {
        v102 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v102, &v122, &v128, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_152:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v103 = MEMORY[0x1E69E9C10];
      v104 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v104)
      {
        v105 = 3;
      }

      else
      {
        v105 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v105, &v122, &v128, 80, &dword_1E1C61000, v103, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_156:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v106 = MEMORY[0x1E69E9C10];
      v107 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v107)
      {
        v108 = 3;
      }

      else
      {
        v108 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v108, &v122, &v128, 80, &dword_1E1C61000, v106, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
LABEL_160:
      v122 = 0;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v3 = MEMORY[0x1E69E9C10];
      v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v125 = 136315906;
      *&v125[4] = "operator[]";
      *&v125[12] = 1024;
      if (v109)
      {
        v110 = 3;
      }

      else
      {
        v110 = 2;
      }

      *&v125[14] = 468;
      *&v125[18] = 2048;
      *&v125[20] = v24;
      v126 = 2048;
      *v127 = v28;
      _os_log_send_and_compose_impl(v110, &v122, &v128, 80, &dword_1E1C61000, v3, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
      _os_crash_msg();
      __break(1u);
      goto LABEL_164;
    }

    re::StringID::operator=((*(v3 + 3) + v25), v24);
    v28 = *(v3 + 53);
    if (v28 <= v26)
    {
      goto LABEL_116;
    }

    v29 = *(v3 + 54);
    *(v29 + v27 - 32) = v4;
    v30 = v29 + v27 - 32;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v30, 0);
    *(v30 + 16) += 2;
    *(v30 + 64) = 0;
    v28 = *(v3 + 53);
    if (v28 <= v26)
    {
      goto LABEL_120;
    }

    v31 = *(v3 + 54);
    v32 = *(v31 + v27 + 32);
    *(v31 + v27 + 32) = a2;
    *&v128 = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize((v31 + v27 - 32), v120, &v128);
    if (a2 && v32 > a2)
    {
      v33 = *(v31 + v27 + 32) & 0x3FLL;
      if (v33)
      {
        v34 = v33 == 63;
        v35 = -1 << v33;
        if (v34)
        {
          v36 = 63;
        }

        else
        {
          v36 = ~v35;
        }
      }

      else
      {
        v36 = 63;
      }

      if (*(v31 + v27 - 16))
      {
        v37 = v31 + v27 - 8;
      }

      else
      {
        v37 = *(v31 + v27);
      }

      v38 = v37 + 8 * *(v31 + v27 - 24);
      *(v38 - 8) &= v36;
    }

    v28 = *(v3 + 86);
    if (v28 <= v26)
    {
      goto LABEL_124;
    }

    v39 = *(v3 + 87);
    *(v39 + v27 - 32) = v4;
    v40 = v39 + v27 - 32;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v40, 0);
    *(v40 + 16) += 2;
    *(v40 + 64) = 0;
    v28 = *(v3 + 86);
    if (v28 <= v26)
    {
      goto LABEL_128;
    }

    v41 = *(v3 + 87);
    v42 = *(v41 + v27 + 32);
    *(v41 + v27 + 32) = a2;
    *&v128 = 0;
    result = re::DynamicOverflowArray<unsigned long long,5ul>::resize((v41 + v27 - 32), v120, &v128);
    if (a2 && v42 > a2)
    {
      v44 = *(v41 + v27 + 32) & 0x3FLL;
      if (v44)
      {
        v34 = v44 == 63;
        v45 = -1 << v44;
        if (v34)
        {
          v46 = 63;
        }

        else
        {
          v46 = ~v45;
        }
      }

      else
      {
        v46 = 63;
      }

      if (*(v41 + v27 - 16))
      {
        v47 = v41 + v27 - 8;
      }

      else
      {
        v47 = *(v41 + v27);
      }

      v48 = v47 + 8 * *(v41 + v27 - 24);
      *(v48 - 8) &= v46;
    }

    ++v26;
    v27 += 72;
    v24 += 16;
    v25 += 16;
  }

  while (v7 != v26);
  if (a2)
  {
    v118 = a2;
    v26 = 0;
    v49 = 0;
    v24 = 0;
    v50 = (v115 + 80);
    v51 = 32;
    v116 = v4;
    while (1)
    {
      v28 = *(v3 + 5);
      if (v28 <= v24)
      {
        goto LABEL_132;
      }

      re::StringID::operator=((*(v3 + 6) + v26), v50 - 10);
      if (*(v50 - 64) == 1)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(v117, v24);
      }

      else
      {
        re::DynamicBitset<unsigned long long,64ul>::clearBit(v117, v24);
      }

      if (*(v50 - 56) == 1)
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 344, v24);
      }

      else
      {
        re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 344, v24);
      }

      v28 = *(v3 + 65);
      if (v28 <= v24)
      {
        goto LABEL_136;
      }

      re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(*(v3 + 66) + v49, (v50 - 5));
      v28 = *(v3 + 68);
      if (v28 <= v24)
      {
        goto LABEL_140;
      }

      *(*(v3 + 69) + 4 * v24) = *(v50 - 12);
      v28 = *(v3 + 59);
      if (v28 <= v24)
      {
        goto LABEL_144;
      }

      *(*(v3 + 60) + v24) = *(v50 - 51);
      v28 = *(v3 + 62);
      if (v28 <= v24)
      {
        goto LABEL_148;
      }

      *(*(v3 + 63) + v24) = *(v50 - 44);
      v28 = *(v3 + 74);
      if (v28 <= v24)
      {
        goto LABEL_152;
      }

      v52 = *v50;
      if (*v50 >= v119)
      {
        v52 = 0;
      }

      *(*(v3 + 75) + 8 * v24) = v52;
      v28 = *(v3 + 80);
      if (v28 <= v24)
      {
        goto LABEL_156;
      }

      v53 = *(v3 + 81);
      *(v53 + v51 - 32) = v4;
      v54 = v53 + v51 - 32;
      re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v54, 0);
      *(v54 + 16) += 2;
      *(v54 + 64) = 0;
      v28 = *(v3 + 80);
      if (v28 <= v24)
      {
        goto LABEL_160;
      }

      v55 = *(v3 + 81);
      v56 = *(v55 + v51 + 32);
      a2 = v118;
      *(v55 + v51 + 32) = v118;
      *&v128 = 0;
      re::DynamicOverflowArray<unsigned long long,5ul>::resize((v55 + v51 - 32), v120, &v128);
      if (v56 > v118)
      {
        v57 = *(v55 + v51 + 32) & 0x3FLL;
        if (v57)
        {
          v34 = v57 == 63;
          v58 = -1 << v57;
          if (v34)
          {
            v59 = 63;
          }

          else
          {
            v59 = ~v58;
          }
        }

        else
        {
          v59 = 63;
        }

        if (*(v55 + v51 - 16))
        {
          v60 = v55 + v51 - 8;
        }

        else
        {
          v60 = *(v55 + v51);
        }

        v61 = v60 + 8 * *(v55 + v51 - 24);
        *(v61 - 8) &= v59;
      }

      if (*(v50 - 63) == 1)
      {
        re::Scheduler::enqueueTaskWithDeadline(v3, v24, *(v50 - 15));
      }

      ++v24;
      v51 += 72;
      v49 += 40;
      v26 += 16;
      v50 += 16;
      v4 = v116;
      if (v118 == v24)
      {
        v4 = 0;
        a2 = v118;
        v28 = v115;
        while (1)
        {
          v62 = v115 + (v4 << 7);
          v63 = *(v62 + 104);
          if (v63)
          {
            break;
          }

LABEL_104:
          if (++v4 == v118)
          {
            v67 = 0;
            v68 = (v115 + 28);
            do
            {
              v69 = *v68;
              v68 += 128;
              result = re::Scheduler::updateTaskSchedule(v3, v67++, v69);
            }

            while (v118 != v67);
            return result;
          }
        }

        v64 = *(v62 + 120);
        v24 = 8 * v63;
        while (1)
        {
          v65 = *v64;
          v66 = *(v3 + 80);
          if (v66 <= *v64)
          {
            break;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(*(v3 + 81) + 72 * v65, v4);
          ++v64;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_104;
          }
        }

        v122 = 0;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v128 = 0u;
        v70 = MEMORY[0x1E69E9C10];
        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v125 = 136315906;
        *&v125[4] = "operator[]";
        *&v125[12] = 1024;
        if (v71)
        {
          v72 = 3;
        }

        else
        {
          v72 = 2;
        }

        *&v125[14] = 468;
        *&v125[18] = 2048;
        *&v125[20] = v65;
        v126 = 2048;
        *v127 = v66;
        _os_log_send_and_compose_impl(v72, &v122, &v128, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v125, 38, v113, v114);
        _os_crash_msg();
        __break(1u);
        goto LABEL_112;
      }
    }
  }

  return result;
}

uint64_t re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x38E38E38E38E38FLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 72, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 72 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 1;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 64) = 0;
      result += 72;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 64) = 0;
  return result;
}

unint64_t re::FixedArray<re::StringID>::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
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

    v12 = 468;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 16) + 16 * a2;
}

void re::Scheduler::enqueueTaskWithDeadline(re::Scheduler *this, unint64_t a2, float a3)
{
  FirstBitSet = a2;
  v71 = *MEMORY[0x1E69E9840];
  if (*(this + 5) <= a2)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid task handle: %zu", "task < m_taskNames.size()", "enqueueTaskWithDeadline", 301, a2);
    _os_crash("assertion failure: (task < m_taskNames.size()) Invalid task handle: %zu", v52);
    __break(1u);
    goto LABEL_58;
  }

  v8 = this;
  v4 = v63;
  if (*(this + 210) >= a3)
  {
    v3 = *(this + 74);
    if (v3 <= a2)
    {
LABEL_66:
      v55 = 0;
      v69 = 0u;
      v70 = 0u;
      v68 = 0u;
      memset(buf, 0, sizeof(buf));
      v45 = MEMORY[0x1E69E9C10];
      v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v60 = 136315906;
      *&v60[4] = "operator[]";
      *&v60[12] = 1024;
      if (v46)
      {
        v47 = 3;
      }

      else
      {
        v47 = 2;
      }

      *&v60[14] = 468;
      *&v60[18] = 2048;
      *v61 = FirstBitSet;
      *&v61[8] = 2048;
      *&v61[10] = v3;
      _os_log_send_and_compose_impl(v47, &v55, buf, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v53, v54);
      _os_crash_msg();
      __break(1u);
      goto LABEL_70;
    }

    v9 = *(*(this + 75) + 8 * a2);
    this = re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, a2);
    if (!this)
    {
      goto LABEL_18;
    }

    v10 = *(v8 + 106);
    if (v9 <= v10 && (v9 != v10 || *(v8 + 107) >= FirstBitSet))
    {
      goto LABEL_18;
    }

    *v60 = 0;
    *&v60[8] = 0;
    *&v60[16] = 1;
    *&v61[4] = 0;
    *&v61[12] = 0;
    v11 = *(v8 + 5);
    if ((v11 & 0x3F) != 0)
    {
      v12 = (v11 >> 6) + 1;
    }

    else
    {
      v12 = v11 >> 6;
    }

    v62 = *(v8 + 5);
    *buf = 0;
    re::DynamicOverflowArray<unsigned long long,5ul>::resize(v60, v12, buf);
    re::DynamicBitset<unsigned long long,64ul>::setBit(v60, FirstBitSet);
    re::Scheduler::resolveEnabledTaskSetDependencies(&v55, v8, v60);
    v13 = v58;
    if ((v57 & 1) == 0)
    {
      v13 = v58[1];
    }

    v14 = v56;
    if ((v56 & 0x3FFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_49;
    }

    v15 = 0;
    while (1)
    {
      v17 = *v13++;
      v16 = v17;
      if (v17)
      {
        break;
      }

      v15 -= 64;
      if (!--v14)
      {
        goto LABEL_49;
      }
    }

    v35 = __clz(__rbit64(v16));
    if (v35 + 1 == v15)
    {
LABEL_49:
      if (v55 && (v57 & 1) == 0)
      {
        (*(*v55 + 40))();
      }

      if (*v60)
      {
        if ((v60[16] & 1) == 0)
        {
          (*(**v60 + 40))();
        }
      }

      return;
    }

    FirstBitSet = v35 - v15;
    while (1)
    {
      v3 = *(v8 + 74);
      if (v3 <= FirstBitSet)
      {
        break;
      }

      v3 = *(*(v8 + 75) + 8 * FirstBitSet);
      v5 = *(v8 + 96);
      if (v5 <= v3)
      {
        goto LABEL_62;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(*(v8 + 97) + 72 * v3, FirstBitSet);
      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v55, FirstBitSet + 1);
      if (FirstBitSet == -1)
      {
        goto LABEL_49;
      }
    }

LABEL_58:
    v59 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(buf, 0, sizeof(buf));
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *(v4 + 4) = "operator[]";
    v64 = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *(v4 + 14) = 468;
    v65 = 2048;
    *(v4 + 20) = FirstBitSet;
    v66 = 2048;
    *(v4 + 30) = v3;
    _os_log_send_and_compose_impl(v41, &v59, buf, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
LABEL_62:
    v59 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(buf, 0, sizeof(buf));
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v63 = 136315906;
    *(v4 + 4) = "operator[]";
    v64 = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    *(v4 + 14) = 468;
    v65 = 2048;
    *(v4 + 20) = v3;
    v66 = 2048;
    *(v4 + 30) = v5;
    _os_log_send_and_compose_impl(v44, &v59, buf, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v63, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
    goto LABEL_66;
  }

LABEL_18:
  v18 = *(v8 + 90);
  if (v18)
  {
    v19 = (*(v8 + 92) + 8);
    v20 = 16 * v18;
    while (*(v19 - 1) != FirstBitSet)
    {
      v19 += 4;
      v20 -= 16;
      if (!v20)
      {
        goto LABEL_22;
      }
    }

    if (!isDebugLoggingEnabled)
    {
      goto LABEL_37;
    }

    if (*v19 <= a3)
    {
      goto LABEL_37;
    }

    v31 = *re::foundationTimingLogObjects(isDebugLoggingEnabled);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    v37 = *(v8 + 5);
    if (v37 > FirstBitSet)
    {
      v38 = *(*(v8 + 6) + 16 * FirstBitSet + 8);
      *buf = 136315394;
      *&buf[4] = v38;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEBUG, "Rescheduling task [%s] with deadline: %f", buf, 0x16u);
LABEL_37:
      v32 = fminf(*v19, a3);
      *v19 = v32;
      v33 = fminf(*(v8 + 188), v32);
LABEL_42:
      *(v8 + 188) = v33;
      return;
    }

LABEL_70:
    v55 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0u;
    memset(buf, 0, sizeof(buf));
    v48 = MEMORY[0x1E69E9C10];
    v49 = v37;
    v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v60 = 136315906;
    *&v60[4] = "operator[]";
    *&v60[12] = 1024;
    if (v50)
    {
      v51 = 3;
    }

    else
    {
      v51 = 2;
    }

    *&v60[14] = 468;
    *&v60[18] = 2048;
    *v61 = FirstBitSet;
    *&v61[8] = 2048;
    *&v61[10] = v49;
    _os_log_send_and_compose_impl(v51, &v55, buf, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v60, 38, v53, v54);
    _os_crash_msg();
    __break(1u);
  }

LABEL_22:
  if (v21)
  {
    v22 = *re::foundationTimingLogObjects(v21);
    v21 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
    if (v21)
    {
      v36 = *(re::FixedArray<re::StringID>::operator[](v8 + 32, FirstBitSet) + 8);
      *buf = 136315394;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "Scheduling task [%s] with deadline: %f", buf, 0x16u);
    }
  }

  v23 = *(v8 + 90);
  v24 = *(v8 + 89);
  if (v23 >= v24)
  {
    v25 = v23 + 1;
    if (v24 < v23 + 1)
    {
      if (*(v8 + 88))
      {
        v26 = 2 * v24;
        v27 = v24 == 0;
        v28 = 8;
        if (!v27)
        {
          v28 = v26;
        }

        if (v28 <= v25)
        {
          v29 = v25;
        }

        else
        {
          v29 = v28;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8 + 88, v29);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v8 + 88, v25);
        ++*(v8 + 182);
      }
    }

    v23 = *(v8 + 90);
  }

  v34 = *(v8 + 92) + 16 * v23;
  *v34 = FirstBitSet;
  *(v34 + 8) = a3;
  ++*(v8 + 90);
  ++*(v8 + 182);
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(v8 + 128, FirstBitSet))
  {
    v33 = fminf(*(v8 + 188), a3);
    goto LABEL_42;
  }
}

uint64_t re::Scheduler::ExecutionContext::deinit(re::Scheduler::ExecutionContext *this)
{
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 3);
  result = re::FixedArray<CoreIKTransform>::deinit(this + 6);
  *(this + 9) = 0;
  *(this + 84) = 0;
  return result;
}

void re::Scheduler::setEnabled(re::Scheduler *this, unint64_t a2, int a3)
{
  v3 = a3;
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, a2) != a3)
  {
    v6 = this + 128;
    if (v3)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v6, a2);
      re::Scheduler::recalculateNextScheduledDelta(this);
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2))
      {
        re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);
      }

      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 344, a2))
      {

        re::Scheduler::resetTaskCurrentTime(this, a2);
      }
    }

    else
    {
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v6, a2);

      re::Scheduler::recalculateNextScheduledDelta(this);
    }
  }
}

uint64_t re::Scheduler::recalculateNextScheduledDelta(re::Scheduler *this)
{
  v42 = *MEMORY[0x1E69E9840];
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v28, this + 34);
  v31[5] = *(this + 42);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v28, this + 128);
  v2 = v31;
  if ((v30 & 1) == 0)
  {
    v2 = v31[1];
  }

  if (v29 >= 0xB)
  {
    v3 = 8 * v29;
    while (!*v2)
    {
      ++v2;
      v3 -= 8;
      if (!v3)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  if (v29)
  {
    v4 = 0;
    v5 = 8 * v29;
    do
    {
      v6 = *v2++;
      v4 |= v6;
      v5 -= 8;
    }

    while (v5);
    if (v4)
    {
LABEL_12:
      *(this + 188) = 0;
      goto LABEL_32;
    }
  }

LABEL_13:
  *(this + 188) = *(this + 189);
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v24, this + 25);
  v27[5] = *(this + 33);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v24, this + 128);
  v7 = v27[1];
  if (v26)
  {
    v7 = v27;
  }

  v8 = v25;
  if ((v25 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v9 = 0;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      if (v11)
      {
        break;
      }

      v9 -= 64;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }

    v12 = __clz(__rbit64(v10));
    if (v12 + 1 != v9)
    {
      FirstBitSet = v12 - v9;
      v14 = *(this + 71);
      do
      {
        if (v14 <= FirstBitSet)
        {
          v32 = 0;
          memset(v41, 0, 80);
          v20 = MEMORY[0x1E69E9C10];
          v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v33 = 136315906;
          v34 = "operator[]";
          v35 = 1024;
          if (v21)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          v36 = 468;
          v37 = 2048;
          v38 = FirstBitSet;
          v39 = 2048;
          v40 = v14;
          _os_log_send_and_compose_impl(v22, &v32, v41, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v23, v24);
          _os_crash_msg();
          __break(1u);
        }

        v15 = *(*(this + 72) + 8 * FirstBitSet) - *(this + 93);
        *(this + 188) = fminf(*(this + 188), v15);
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v24, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_24:
  v16 = *(this + 90);
  if (v16)
  {
    v17 = 16 * v16;
    v18 = (*(this + 92) + 8);
    do
    {
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 128, *(v18 - 1)))
      {
        *(this + 188) = fminf(*(this + 188), *v18);
      }

      v18 += 4;
      v17 -= 16;
    }

    while (v17);
  }

  if (v24 && (v26 & 1) == 0)
  {
    (*(*v24 + 40))();
  }

LABEL_32:
  result = v28;
  if (v28)
  {
    if ((v30 & 1) == 0)
    {
      return (*(*v28 + 40))();
    }
  }

  return result;
}

double re::Scheduler::recalculateNextUpdateIntervalUpdate(re::Scheduler *this, unint64_t a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = *(this + 68);
  if (v3 <= a2)
  {
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v8 = MEMORY[0x1E69E9C10];
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v3;
    _os_log_send_and_compose_impl(v9, &v17, &v26, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(this + 71);
  if (v3 <= a2)
  {
LABEL_11:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
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

    v21 = 468;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v3;
    _os_log_send_and_compose_impl(v12, &v17, &v26, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(this + 93);
  v5 = *(*(this + 69) + 4 * a2);
  v6 = (floor(v4 / v5 + 0.001) + 1.0) * v5;
  if (v4 == 0.0)
  {
    v6 = 0.0;
  }

  *(*(this + 72) + 8 * a2) = v6;
  v3 = *(this + 83);
  if (v3 <= a2)
  {
LABEL_15:
    v17 = 0;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v13 = MEMORY[0x1E69E9C10];
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 468;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v3;
    _os_log_send_and_compose_impl(v15, &v17, &v26, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v18, 38, v16);
    _os_crash_msg();
    __break(1u);
  }

  result = *(this + 93);
  *(*(this + 84) + 8 * a2) = result;
  return result;
}

double re::Scheduler::resetTaskCurrentTime(re::Scheduler *this, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2))
  {

    return re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);
  }

  else
  {
    v5 = *(this + 83);
    if (v5 <= a2)
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

      v13 = 468;
      v14 = 2048;
      v15 = a2;
      v16 = 2048;
      v17 = v5;
      _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
      _os_crash_msg();
      __break(1u);
    }

    result = *(this + 93);
    *(*(this + 84) + 8 * a2) = result;
  }

  return result;
}

uint64_t re::Scheduler::setEnabled(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  v5 = *(a2 + 8);
  v6 = *(result + 136);
  if (v5 >= v6)
  {
    v7 = *(result + 136);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (!a3)
  {
    if (v7)
    {
      v15 = 0;
      v16 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v16 = *(a2 + 32);
      }

      v17 = 1;
      do
      {
        v18 = result + 152;
        if ((*(result + 144) & 1) == 0)
        {
          v18 = *(result + 160);
        }

        if ((*(v18 + 8 * v15) & *(v16 + 8 * v15)) != 0)
        {
          break;
        }

        v17 = ++v15 < v7;
      }

      while (v7 != v15);
      if (v17)
      {
        re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(result + 128, a2);

        return re::Scheduler::recalculateNextScheduledDelta(v4);
      }
    }

    return result;
  }

  if (v7)
  {
    v8 = 0;
    v9 = *(a2 + 32);
    if (*(a2 + 16))
    {
      v9 = a2 + 24;
    }

    LOBYTE(v10) = 1;
    while (1)
    {
      v11 = result + 152;
      if ((*(result + 144) & 1) == 0)
      {
        v11 = *(result + 160);
      }

      v12 = *(v11 + 8 * v8);
      v13 = *(v9 + 8 * v8);
      if ((v13 & ~v12) != 0)
      {
        goto LABEL_40;
      }

      v10 = (v12 == v13) & v10;
      if (v7 == ++v8)
      {
        if (v6 < v5)
        {
          v14 = v10 ^ 1;
          goto LABEL_29;
        }

        if (v10)
        {
          goto LABEL_40;
        }

        return result;
      }
    }
  }

  if (v6 >= v5)
  {
    goto LABEL_40;
  }

  v14 = 0;
LABEL_29:
  v19 = a2 + 24;
  if ((*(a2 + 16) & 1) == 0)
  {
    v19 = *(a2 + 32);
  }

  if (*(v19 + 8 * v6))
  {
    goto LABEL_40;
  }

  v20 = v19 + 8;
  while (v5 - 1 != v6)
  {
    if (*(v20 + 8 * v6++))
    {
      goto LABEL_39;
    }
  }

  v6 = *(a2 + 8);
LABEL_39:
  if (((v6 >= v5) & v14) == 0)
  {
LABEL_40:
    re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v40, (result + 200));
    v44 = *(v4 + 33);
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v40, a2);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(&v40, v4 + 128);
    re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v4 + 128, a2);
    re::Scheduler::recalculateNextScheduledDelta(v4);
    v22 = v43;
    if ((v42 & 1) == 0)
    {
      v22 = v43[1];
    }

    v23 = v41;
    if ((v41 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v24 = 0;
      while (1)
      {
        v26 = *v22++;
        v25 = v26;
        if (v26)
        {
          break;
        }

        v24 -= 64;
        if (!--v23)
        {
          goto LABEL_50;
        }
      }

      v27 = __clz(__rbit64(v25));
      if (v27 + 1 != v24)
      {
        FirstBitSet = v27 - v24;
        do
        {
          re::Scheduler::recalculateNextUpdateIntervalUpdate(v4, FirstBitSet);
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v40, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_50:
    re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v36, &v40);
    v39[5] = v44;
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, v4 + 344);
    v29 = v39;
    if ((v38 & 1) == 0)
    {
      v29 = v39[1];
    }

    v30 = v37;
    if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v31 = 0;
      while (1)
      {
        v33 = *v29++;
        v32 = v33;
        if (v33)
        {
          break;
        }

        v31 -= 64;
        if (!--v30)
        {
          goto LABEL_60;
        }
      }

      v34 = __clz(__rbit64(v32));
      if (v34 + 1 != v31)
      {
        v35 = v34 - v31;
        do
        {
          re::Scheduler::resetTaskCurrentTime(v4, v35);
          v35 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, v35 + 1);
        }

        while (v35 != -1);
      }
    }

LABEL_60:
    if (v36 && (v38 & 1) == 0)
    {
      (*(*v36 + 40))();
    }

    result = v40;
    if (v40)
    {
      if ((v42 & 1) == 0)
      {
        return (*(*v40 + 40))();
      }
    }
  }

  return result;
}

re::Scheduler *re::Scheduler::updateTaskSchedule(re::Scheduler *result, unint64_t a2, int a3)
{
  v3 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(result + 56);
  if (v4 <= a2)
  {
LABEL_59:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v4;
    _os_log_send_and_compose_impl(v28, &v34, &v43, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
LABEL_63:
    v34 = 0;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v29 = MEMORY[0x1E69E9C10];
    v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v35 = 136315906;
    v36 = "operator[]";
    v37 = 1024;
    if (v30)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v38 = 468;
    v39 = 2048;
    v40 = v3;
    v41 = 2048;
    v42 = v4;
    _os_log_send_and_compose_impl(v31, &v34, &v43, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
    _os_crash_msg();
    __break(1u);
  }

  v6 = result;
  v7 = *(*(result + 57) + a2);
  if (v7 != a3)
  {
    if (*(*(result + 57) + a2) <= 2u)
    {
      v9 = 0;
      if (v7 == 1)
      {
        v12 = 0;
LABEL_15:
        if (v4 <= v3)
        {
          goto LABEL_63;
        }

        *(*(v6 + 57) + v3) = a3;
        if (a3 > 2)
        {
          switch(a3)
          {
            case 3:
              re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 272, v3);
              v9 = 1;
              break;
            case 4:
              break;
            case 5:
LABEL_20:
              re::Scheduler::recalculateNextUpdateIntervalUpdate(v6, v3);
              result = re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 200, v3);
              v9 = 1;
              if (a3 == 5)
              {
                break;
              }

LABEL_25:
              if ((v12 & 1) == 0)
              {
LABEL_46:
                if (v9)
                {

                  return re::Scheduler::recalculateNextScheduledDelta(v6);
                }

                return result;
              }

LABEL_30:
              v13 = *(v6 + 53);
              if (v13)
              {
                v14 = *(v6 + 54);
                v15 = v14 + 72 * v13;
                do
                {
                  v16 = *(v14 + 16);
                  if (v16)
                  {
                    v17 = (v14 + 24);
                  }

                  else
                  {
                    v17 = *(v14 + 32);
                  }

                  v18 = *(v14 + 8);
                  while (1)
                  {
                    v19 = v14 + 24;
                    if ((v16 & 1) == 0)
                    {
                      v19 = *(v14 + 32);
                    }

                    if (v17 == (v19 + 8 * v18))
                    {
                      break;
                    }

                    *v17++ = 0;
                    v16 = *(v14 + 16);
                  }

                  v14 += 72;
                }

                while (v14 != v15);
              }

              result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v6 + 56, 0);
              if (result != -1)
              {
                v3 = result;
                while (1)
                {
                  v20 = *(v6 + 74);
                  if (v20 <= v3)
                  {
                    break;
                  }

                  v20 = *(*(v6 + 75) + 8 * v3);
                  v4 = *(v6 + 53);
                  if (v4 <= v20)
                  {
                    goto LABEL_55;
                  }

                  re::DynamicBitset<unsigned long long,64ul>::setBit(*(v6 + 54) + 72 * v20, v3);
                  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v6 + 56, v3 + 1);
                  v3 = result;
                  if (result == -1)
                  {
                    goto LABEL_46;
                  }
                }

                v34 = 0;
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v43 = 0u;
                v21 = MEMORY[0x1E69E9C10];
                v35 = 136315906;
                v36 = "operator[]";
                v37 = 1024;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v22 = 3;
                }

                else
                {
                  v22 = 2;
                }

                v38 = 468;
                v39 = 2048;
                v40 = v3;
                v41 = 2048;
                v42 = v20;
                _os_log_send_and_compose_impl(v22, &v34, &v43, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
                _os_crash_msg();
                __break(1u);
LABEL_55:
                v34 = 0;
                v46 = 0u;
                v47 = 0u;
                v44 = 0u;
                v45 = 0u;
                v43 = 0u;
                v23 = MEMORY[0x1E69E9C10];
                v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v35 = 136315906;
                v36 = "operator[]";
                v37 = 1024;
                if (v24)
                {
                  v25 = 3;
                }

                else
                {
                  v25 = 2;
                }

                v38 = 468;
                v39 = 2048;
                v40 = v20;
                v41 = 2048;
                v42 = v4;
                _os_log_send_and_compose_impl(v25, &v34, &v43, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v35, 38, v32, v33);
                _os_crash_msg();
                __break(1u);
                goto LABEL_59;
              }

              goto LABEL_46;
            default:
LABEL_24:
              re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected previous task schedule type.", "!Unreachable code", "updateTaskSchedule", 717);
              result = _os_crash("assertion failure: (!Unreachable code) Unexpected previous task schedule type.");
              __break(1u);
              goto LABEL_25;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 56, v3);
          goto LABEL_30;
        }

        if (a3 == 1)
        {
          goto LABEL_25;
        }

        if (a3 == 2)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }

      if (v7 == 2)
      {
        v10 = 1;
        v11 = 200;
LABEL_14:
        v12 = v9;
        result = re::DynamicBitset<unsigned long long,64ul>::clearBit(v6 + v11, v3);
        v4 = *(v6 + 56);
        v9 = v10;
        goto LABEL_15;
      }
    }

    else
    {
      switch(v7)
      {
        case 5:
          v8 = result + 200;
          goto LABEL_12;
        case 4:
          v10 = 0;
          LOBYTE(v9) = 1;
          v11 = 56;
          goto LABEL_14;
        case 3:
          v8 = result + 272;
LABEL_12:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v8, a2);
          v10 = 1;
          v11 = 56;
          LOBYTE(v9) = 1;
          goto LABEL_14;
      }
    }

    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected previous task schedule type.", "!Unreachable code", "updateTaskSchedule", 675);
    result = _os_crash("assertion failure: (!Unreachable code) Unexpected previous task schedule type.");
    __break(1u);
  }

  return result;
}

uint64_t re::Scheduler::setTaskUpdateInterval(re::Scheduler *this, unint64_t a2, float a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(this + 68);
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

    v14 = 468;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v4;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 69) + 4 * a2) = a3;
  result = re::DynamicBitset<unsigned long long,64ul>::getBit(this + 200, a2);
  if (result)
  {
    re::Scheduler::recalculateNextUpdateIntervalUpdate(this, a2);

    return re::Scheduler::recalculateNextScheduledDelta(this);
  }

  return result;
}

uint64_t re::Scheduler::resolveEnabledTaskSetDependencies(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  *(re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(a1, a3) + 64) = a3[8];
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(&v25, a3);
  v28[5] = a3[8];
  while (1)
  {
    v6 = v26;
    v7 = (v27 & 1) != 0 ? v28 : v28[1];
    if (v26 < 0xB)
    {
      break;
    }

    v8 = 8 * v26;
    v9 = v7;
    while (!*v9)
    {
      ++v9;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_24;
      }
    }

LABEL_14:
    if ((v26 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v14 = 0;
      while (1)
      {
        v16 = *v7++;
        v15 = v16;
        if (v16)
        {
          break;
        }

        v14 -= 64;
        if (!--v6)
        {
          goto LABEL_23;
        }
      }

      v17 = __clz(__rbit64(v15));
      if (v17 + 1 != v14)
      {
        FirstBitSet = v17 - v14;
        do
        {
          v19 = *(a2 + 640);
          if (v19 <= FirstBitSet)
          {
            v29 = 0;
            memset(v38, 0, sizeof(v38));
            v22 = MEMORY[0x1E69E9C10];
            v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v30 = 136315906;
            v31 = "operator[]";
            v32 = 1024;
            if (v23)
            {
              v24 = 3;
            }

            else
            {
              v24 = 2;
            }

            v33 = 476;
            v34 = 2048;
            v35 = FirstBitSet;
            v36 = 2048;
            v37 = v19;
            _os_log_send_and_compose_impl(v24, &v29, v38, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v30, 38, v25, v26);
            _os_crash_msg();
            __break(1u);
          }

          re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(&v25, *(a2 + 648) + 72 * FirstBitSet);
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v25, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_23:
    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v25, a2 + 128);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(&v25, a1);
    re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(a1, &v25);
  }

  if (v26)
  {
    v10 = 0;
    v11 = 8 * v26;
    v12 = v7;
    do
    {
      v13 = *v12++;
      v10 |= v13;
      v11 -= 8;
    }

    while (v11);
    if (v10)
    {
      goto LABEL_14;
    }
  }

LABEL_24:
  result = v25;
  if (v25)
  {
    v21 = (v27 & 1) == 0;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    return (*(*v25 + 40))();
  }

  return result;
}

uint64_t re::anonymous namespace::SchedulerUtil::isDebugLoggingEnabled(re::_anonymous_namespace_::SchedulerUtil *this)
{
  if ((atomic_load_explicit(&qword_1EE1C40C8, memory_order_acquire) & 1) == 0)
  {
    v7 = v1;
    v8 = v2;
    if (__cxa_guard_acquire(&qword_1EE1C40C8))
    {
      re::Defaults::BOOLValue(v6, "enableSchedulerLogging", v4);
      if (v6[0])
      {
        v5 = v6[1];
      }

      else
      {
        v5 = 0;
      }

      _MergedGlobals_566 = v5;
      __cxa_guard_release(&qword_1EE1C40C8);
    }
  }

  return _MergedGlobals_566;
}

float re::Scheduler::nextScheduledDelta(re::Scheduler *this)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *(this + 106);
  v2 = *(this + 99);
  if (v1 >= v2)
  {
    return *(this + 188);
  }

  v3 = *(this + 100);
  v4 = v3 + 72 * v1;
  v5 = *(this + 107) + 1;
  if (v5 >= *(v4 + 64))
  {
    v8 = 0;
    goto LABEL_23;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = (v4 + 24);
  }

  else
  {
    v7 = *(v4 + 32);
  }

  v9 = 0;
  v10 = *(v4 + 8);
  v11 = v4 + 24;
  while (1)
  {
    v12 = v4 + 24;
    if ((v6 & 1) == 0)
    {
      v12 = *(v4 + 32);
    }

    if (v7 == (v12 + 8 * v10))
    {
      break;
    }

    v13 = *v7++;
    v14 = vcnt_s8(v13);
    v14.i16[0] = vaddlv_u8(v14);
    v9 += v14.u32[0];
  }

  v15 = v5 >> 6;
  if (v5 >= 0x40)
  {
    if (v10 <= v15 - 1)
    {
      goto LABEL_50;
    }

    v17 = 0;
    v16 = 0;
    do
    {
      v18 = v4 + 24;
      if ((v6 & 1) == 0)
      {
        v18 = *(v4 + 32);
      }

      v19 = vcnt_s8(*(v18 + v17));
      v19.i16[0] = vaddlv_u8(v19);
      v16 += v19.u32[0];
      v17 += 8;
    }

    while (8 * v15 != v17);
  }

  else
  {
    v16 = 0;
  }

  if (v10 <= v15)
  {
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v34 = MEMORY[0x1E69E9C10];
    v35 = v5 >> 6;
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    v45 = 866;
    v46 = 2048;
    v47 = v35;
    v48 = 2048;
    v49 = v10;
    _os_log_send_and_compose_impl(v36, &v41, &v50, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v40);
    _os_crash_msg();
    __break(1u);
LABEL_50:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v45 = 866;
    v46 = 2048;
    v47 = v10;
    v48 = 2048;
    v49 = v10;
    _os_log_send_and_compose_impl(v39, &v41, &v50, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v40);
    _os_crash_msg();
    __break(1u);
  }

  if ((v6 & 1) == 0)
  {
    v11 = *(v4 + 32);
  }

  v20 = vcnt_s8((*(v11 + 8 * v15) & ~(-1 << v5)));
  v20.i16[0] = vaddlv_u8(v20);
  v8 = v9 != v20.u32[0] + v16;
LABEL_23:
  v21 = v1 + 1;
  if (v21 < v2)
  {
    do
    {
      v22 = v3 + 72 * v21;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      if (v23 >= 0xB)
      {
        if (v24)
        {
          v25 = (v22 + 24);
        }

        else
        {
          v25 = *(v22 + 32);
        }

        v27 = 8 * v23 - 8;
        do
        {
          v28 = *v25++;
          LOBYTE(v23) = v28 != 0;
          if (v28)
          {
            v29 = 1;
          }

          else
          {
            v29 = v27 == 0;
          }

          v27 -= 8;
        }

        while (!v29);
        goto LABEL_42;
      }

      if (v24)
      {
        v26 = (v22 + 24);
        if (v23)
        {
LABEL_39:
          v30 = 0;
          v31 = 8 * v23;
          do
          {
            v32 = *v26++;
            v30 |= v32;
            v31 -= 8;
          }

          while (v31);
          v23 = v30 != 0;
        }
      }

      else
      {
        v26 = *(v22 + 32);
        if (v23)
        {
          goto LABEL_39;
        }
      }

LABEL_42:
      v8 |= v23;
      ++v21;
    }

    while (v21 != v2);
  }

  result = 0.0;
  if ((v8 & 1) == 0)
  {
    return *(this + 188);
  }

  return result;
}

void *re::Scheduler::beginPhaseExecution(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = a2;
  v265 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 744) + a3;
  *(a1 + 744) = v12;
  v13 = *(a2 + 40);
  v14 = *(a1 + 16);
  if (v13)
  {
    if (v14 != v13)
    {
      v15 = (v14 & 0x3F) != 0 ? (v14 >> 6) + 1 : v14 >> 6;
      *(v8 + 40) = v14;
      *&v231 = 0;
      re::DynamicOverflowArray<unsigned long long,2ul>::resize(v8, v15, &v231);
      if (v14)
      {
        if (v13 > v14)
        {
          v16 = 63;
          v17 = *(v8 + 40) & 0x3FLL;
          if (v17)
          {
            v18 = v17 == 63;
            v19 = -1 << v17;
            if (!v18)
            {
              v16 = ~v19;
            }
          }

          if (*(v8 + 16))
          {
            v20 = v8 + 24;
          }

          else
          {
            v20 = *(v8 + 32);
          }

          *(v20 + 8 * *(v8 + 8) - 8) &= v16;
        }
      }
    }
  }

  else
  {
    if ((v14 & 0x3F) != 0)
    {
      v21 = (v14 >> 6) + 1;
    }

    else
    {
      v21 = v14 >> 6;
    }

    *(v8 + 40) = v14;
    *&v231 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v8, v21, &v231);
    v22 = *(v8 + 8);
    if (v22)
    {
      v23 = *(v8 + 16);
      if (v23)
      {
        v24 = (v8 + 24);
      }

      else
      {
        v24 = *(v8 + 32);
      }

      v25 = v8 + 24;
      while (1)
      {
        v26 = v8 + 24;
        if ((v23 & 1) == 0)
        {
          v26 = *(v8 + 32);
        }

        if (v24 == (v26 + 8 * v22 - 8))
        {
          break;
        }

        *v24++ = -1;
        v23 = *(v8 + 16);
      }

      v27 = 63;
      v28 = *(v8 + 40) & 0x3FLL;
      if (v28)
      {
        v18 = v28 == 63;
        v29 = -1 << v28;
        if (!v18)
        {
          v27 = ~v29;
        }
      }

      if ((v23 & 1) == 0)
      {
        v25 = *(v8 + 32);
      }

      *(v25 + 8 * v22 - 8) = v27;
    }
  }

  *&v235[13] = 0;
  v234 = 0u;
  *v235 = 0u;
  v232 = 0u;
  v233 = 0u;
  v231 = 0u;
  *&v236 = -1;
  *(&v236 + 1) = -1;
  *&v235[8] = *(a1 + 744);
  v30 = a4;
  v31 = (a1 + 416);
  *&v235[16] = v30;
  if (&v231 != (a1 + 416) && *v31)
  {
    re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(&v231, *v31, *(a1 + 424));
    if (*(&v231 + 1) != *(a1 + 424))
    {
LABEL_312:
      re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
      _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
      __break(1u);
LABEL_313:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v182 = MEMORY[0x1E69E9C10];
      v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v183)
      {
        v184 = 3;
      }

      else
      {
        v184 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v184, v223, buf, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_317:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v185 = MEMORY[0x1E69E9C10];
      v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v186)
      {
        v187 = 3;
      }

      else
      {
        v187 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v187, v223, buf, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_321:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v188 = MEMORY[0x1E69E9C10];
      v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v189)
      {
        v190 = 3;
      }

      else
      {
        v190 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v190, v223, buf, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_325:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v191 = MEMORY[0x1E69E9C10];
      v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v192)
      {
        v193 = 3;
      }

      else
      {
        v193 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v193, v223, buf, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_329:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v194 = MEMORY[0x1E69E9C10];
      v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v195)
      {
        v196 = 3;
      }

      else
      {
        v196 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v196, v223, buf, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_333:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v197 = MEMORY[0x1E69E9C10];
      v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v198)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v199, v223, buf, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_337:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v200 = MEMORY[0x1E69E9C10];
      v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v201)
      {
        v202 = 3;
      }

      else
      {
        v202 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v202, v223, buf, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_341:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v203 = MEMORY[0x1E69E9C10];
      v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v204)
      {
        v205 = 3;
      }

      else
      {
        v205 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v205, v223, buf, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_345:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v206 = MEMORY[0x1E69E9C10];
      v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v207)
      {
        v208 = 3;
      }

      else
      {
        v208 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v13;
      _os_log_send_and_compose_impl(v208, v223, buf, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_349:
      *v238 = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v209 = MEMORY[0x1E69E9C10];
      v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v241 = 136315906;
      *&v241[4] = "operator[]";
      *&v241[12] = 1024;
      if (v210)
      {
        v211 = 3;
      }

      else
      {
        v211 = 2;
      }

      *&v241[14] = 468;
      v242 = 2048;
      v243 = v14;
      v244 = 2048;
      *v245 = v5;
      _os_log_send_and_compose_impl(v211, v238, buf, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v241, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_353:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v212 = MEMORY[0x1E69E9C10];
      v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v213)
      {
        v214 = 3;
      }

      else
      {
        v214 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v214, v223, buf, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_357:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v215 = MEMORY[0x1E69E9C10];
      v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v216)
      {
        v217 = 3;
      }

      else
      {
        v217 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v217, v223, buf, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_361:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v218 = MEMORY[0x1E69E9C10];
      v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v219)
      {
        v220 = 3;
      }

      else
      {
        v220 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v220, v223, buf, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
    }

    if (*(&v231 + 1))
    {
      v33 = *(a1 + 432);
      v34 = v232;
      v35 = 72 * *(&v231 + 1);
      do
      {
        if (v33 != v34)
        {
          v36 = *v33;
          if (*v34)
          {
            if (v36)
            {
              re::DynamicOverflowArray<unsigned long long,5ul>::copy(v34, v33);
            }

            else
            {
              *(v34 + 8) = 0;
            }

            *(v34 + 16) += 2;
          }

          else if (v36)
          {
            v37 = v33[1];
            *v34 = v36;
            re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v34, v37);
            *(v34 + 16) += 2;
            re::DynamicOverflowArray<unsigned long long,5ul>::copy(v34, v33);
          }

          *(v34 + 64) = v33[8];
        }

        v33 += 9;
        v34 += 72;
        v35 -= 72;
      }

      while (v35);
    }
  }

  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::init<>(&v232 + 8, *a1, *(a1 + 16));
  if (v233)
  {
    v38 = *(&v233 + 1);
    v39 = 72 * v233;
    v4 = -1;
    do
    {
      v5 = *(a1 + 40);
      v6 = *(v38 + 64);
      if ((v5 & 0x3F) != 0)
      {
        v40 = (v5 >> 6) + 1;
      }

      else
      {
        v40 = v5 >> 6;
      }

      *(v38 + 64) = v5;
      *buf = 0;
      re::DynamicOverflowArray<unsigned long long,5ul>::resize(v38, v40, buf);
      if (v5)
      {
        v41 = v6 > v5;
      }

      else
      {
        v41 = 0;
      }

      if (v41)
      {
        v42 = *(v38 + 64) & 0x3FLL;
        if (v42)
        {
          v18 = v42 == 63;
          v43 = -1 << v42;
          if (v18)
          {
            v44 = 63;
          }

          else
          {
            v44 = ~v43;
          }
        }

        else
        {
          v44 = 63;
        }

        if (*(v38 + 16))
        {
          v45 = v38 + 24;
        }

        else
        {
          v45 = *(v38 + 32);
        }

        *(v45 + 8 * *(v38 + 8) - 8) &= v44;
      }

      v38 += 72;
      v39 -= 72;
    }

    while (v39);
  }

  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v8, 0);
  if (FirstBitSet != -1)
  {
    v14 = FirstBitSet;
    while (1)
    {
      v47 = *(&v231 + 1);
      if (*(&v231 + 1) <= v14)
      {
        break;
      }

      v47 = *(a1 + 688);
      if (v47 <= v14)
      {
        goto LABEL_248;
      }

      re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v232 + 72 * v14, *(a1 + 696) + 72 * v14);
      v47 = *(&v231 + 1);
      if (*(&v231 + 1) <= v14)
      {
        goto LABEL_252;
      }

      re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v232 + 72 * v14, a1 + 128);
      v47 = *(a1 + 688);
      if (v47 <= v14)
      {
        goto LABEL_256;
      }

      re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(*(a1 + 696) + 72 * v14, a1 + 128);
      v14 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v8, v14 + 1);
      if (v14 == -1)
      {
        goto LABEL_75;
      }
    }

    *v241 = 0;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v131 = MEMORY[0x1E69E9C10];
    v132 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v247 = 136315906;
    *&v247[4] = "operator[]";
    *&v247[12] = 1024;
    if (v132)
    {
      v133 = 3;
    }

    else
    {
      v133 = 2;
    }

    *&v247[14] = 468;
    v248 = 2048;
    v249 = v14;
    v250 = 2048;
    *v251 = v47;
    _os_log_send_and_compose_impl(v133, v241, buf, 80, &dword_1E1C61000, v131, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_248:
    *v241 = 0;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v134 = MEMORY[0x1E69E9C10];
    v135 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v247 = 136315906;
    *&v247[4] = "operator[]";
    *&v247[12] = 1024;
    if (v135)
    {
      v136 = 3;
    }

    else
    {
      v136 = 2;
    }

    *&v247[14] = 468;
    v248 = 2048;
    v249 = v14;
    v250 = 2048;
    *v251 = v47;
    _os_log_send_and_compose_impl(v136, v241, buf, 80, &dword_1E1C61000, v134, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_252:
    *v241 = 0;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v137 = MEMORY[0x1E69E9C10];
    v138 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v247 = 136315906;
    *&v247[4] = "operator[]";
    *&v247[12] = 1024;
    if (v138)
    {
      v139 = 3;
    }

    else
    {
      v139 = 2;
    }

    *&v247[14] = 468;
    v248 = 2048;
    v249 = v14;
    v250 = 2048;
    *v251 = v47;
    _os_log_send_and_compose_impl(v139, v241, buf, 80, &dword_1E1C61000, v137, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_256:
    *v241 = 0;
    v8 = v247;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v140 = MEMORY[0x1E69E9C10];
    v141 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v247 = 136315906;
    *&v247[4] = "operator[]";
    *&v247[12] = 1024;
    if (v141)
    {
      v142 = 3;
    }

    else
    {
      v142 = 2;
    }

    *&v247[14] = 468;
    v248 = 2048;
    v249 = v14;
    v250 = 2048;
    *v251 = v47;
    _os_log_send_and_compose_impl(v142, v241, buf, 80, &dword_1E1C61000, v140, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_260:
    v223[0] = 0;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v143 = MEMORY[0x1E69E9C10];
    v144 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v238 = 136315906;
    *&v238[4] = "operator[]";
    *&v238[12] = 1024;
    if (v144)
    {
      v145 = 3;
    }

    else
    {
      v145 = 2;
    }

    *&v238[14] = 468;
    *&v238[18] = 2048;
    *v239 = v14;
    *&v239[8] = 2048;
    *&v239[10] = v4;
    _os_log_send_and_compose_impl(v145, v223, buf, 80, &dword_1E1C61000, v143, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
    goto LABEL_264;
  }

LABEL_75:
  *(a1 + 756) = 2139095039;
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(v247, (a1 + 272));
  v252 = *(a1 + 336);
  v48 = re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v247, a1 + 128);
  v49 = *&v251[2];
  if (v247[16])
  {
    v49 = (&v249 + 4);
  }

  if (*&v247[8] < 0xBuLL)
  {
    if (!*&v247[8])
    {
      goto LABEL_94;
    }

    v51 = 0;
    v52 = 8 * *&v247[8];
    do
    {
      v53 = *v49++;
      v51 |= v53;
      v52 -= 8;
    }

    while (v52);
    if (!v51)
    {
LABEL_94:
      v54 = 2139095039;
      goto LABEL_95;
    }
  }

  else
  {
    v50 = 8 * *&v247[8];
    while (!*v49)
    {
      ++v49;
      v50 -= 8;
      if (!v50)
      {
        goto LABEL_94;
      }
    }
  }

  v54 = 0;
  if (isDebugLoggingEnabled)
  {
    v56 = *&v251[2];
    if (v247[16])
    {
      v56 = (&v249 + 4);
    }

    v57 = *&v247[8];
    if ((*&v247[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v58 = 0;
      while (1)
      {
        v60 = *v56++;
        v59 = v60;
        if (v60)
        {
          break;
        }

        v58 -= 64;
        if (!--v57)
        {
          goto LABEL_95;
        }
      }

      v129 = __clz(__rbit64(v59));
      if (v129 + 1 != v58)
      {
        v14 = v129 - v58;
        do
        {
          v4 = *re::foundationTimingLogObjects(isDebugLoggingEnabled);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
          {
            v5 = *(a1 + 40);
            if (v5 <= v14)
            {
              goto LABEL_349;
            }

            v130 = *(*(a1 + 48) + 16 * v14 + 8);
            *buf = 136315138;
            *&buf[4] = v130;
            _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "Scheduling continuous task [%s]", buf, 0xCu);
          }

          isDebugLoggingEnabled = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v247, v14 + 1);
          v14 = isDebugLoggingEnabled;
        }

        while (isDebugLoggingEnabled != -1);
      }
    }
  }

LABEL_95:
  *(a1 + 752) = v54;
  re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(v241, (a1 + 200));
  v246 = *(a1 + 264);
  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(v241, a1 + 128);
  v61 = *&v245[2];
  if (v241[16])
  {
    v61 = (&v243 + 4);
  }

  v62 = *&v241[8];
  if ((*&v241[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v63 = 0;
    v64 = v12 + a4;
    while (1)
    {
      v66 = *v61++;
      v65 = v66;
      if (v66)
      {
        break;
      }

      v63 -= 64;
      if (!--v62)
      {
        goto LABEL_103;
      }
    }

    v67 = __clz(__rbit64(v65));
    if (v67 + 1 != v63)
    {
      v14 = v67 - v63;
      v4 = 72;
      v5 = 2048;
      v13 = &dword_1E1C61000;
      while (1)
      {
        v6 = *(a1 + 592);
        if (v6 <= v14)
        {
          goto LABEL_276;
        }

        v6 = *(*(a1 + 600) + 8 * v14);
        if (re::DynamicBitset<unsigned long long,64ul>::getBit(v8, v6))
        {
          break;
        }

LABEL_229:
        v14 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v241, v14 + 1);
        if (v14 == -1)
        {
          goto LABEL_103;
        }
      }

      v7 = *(a1 + 568);
      if (v7 <= v14)
      {
        goto LABEL_292;
      }

      v107 = *(*(a1 + 576) + 8 * v14);
      if (v107 > v64)
      {
LABEL_228:
        v124 = v107 - *(a1 + 744);
        *(a1 + 752) = fminf(*(a1 + 752), v124);
        goto LABEL_229;
      }

      v7 = *(&v231 + 1);
      if (*(&v231 + 1) <= v6)
      {
        goto LABEL_296;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v232 + 72 * v6, v14);
      v7 = v233;
      if (v233 <= v6)
      {
        goto LABEL_300;
      }

      v108 = re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v233 + 1) + 72 * v6, v14);
      v6 = *(a1 + 544);
      if (v6 <= v14)
      {
        goto LABEL_304;
      }

      v6 = *(a1 + 472);
      if (v6 <= v14)
      {
        goto LABEL_308;
      }

      v110 = *(*(a1 + 552) + 4 * v14);
      v111 = *(*(a1 + 480) + v14);
      switch(v111)
      {
        case 3:
          if (v117)
          {
            v118 = *re::foundationTimingLogObjects(v117);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_353;
              }

              v127 = *(*(a1 + 48) + 16 * v14 + 8);
              *buf = 136315394;
              *&buf[4] = v127;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              _os_log_debug_impl(&dword_1E1C61000, v118, OS_LOG_TYPE_DEBUG, "Scheduling substep interval task [%s] with interval: %f", buf, 0x16u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_321;
          }

          v119 = *(*(a1 + 576) + 8 * v14);
          v6 = *(&v234 + 1);
          if (!*(&v234 + 1))
          {
            re::FixedArray<unsigned long>::init<>(&v234, *a1, *(a1 + 40));
            v6 = *(&v234 + 1);
          }

          if (v6 <= v14)
          {
            goto LABEL_325;
          }

          v120 = floor(v64 / v110 + 0.001);
          v121 = (v120 + 0.5 + 1.0) - (v119 / v110 + 0.5);
          v122 = *v235;
          *(*v235 + 8 * v14) = v121;
          v6 = *(a1 + 496);
          if (v6 <= v14)
          {
            goto LABEL_329;
          }

          v123 = *(*(a1 + 504) + v14);
          if (*(*(a1 + 504) + v14))
          {
            v6 = *(a1 + 664);
            if (v6 <= v14)
            {
              goto LABEL_337;
            }

            if (*(*(a1 + 672) + 8 * v14) != 0.0 || (++v123, (v123 & 0x100) == 0))
            {
              v6 = *(&v234 + 1);
              if (*(&v234 + 1) <= v14)
              {
                goto LABEL_341;
              }

              if (v121 > v123)
              {
                *(v122 + 8 * v14) = v123;
              }
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_333;
          }

          v107 = (v120 + 1.0) * v110;
          break;
        case 2:
          v107 = (floor(v64 / v110 + 0.001) + 1.0) * v110;
          if (v115)
          {
            v116 = *re::foundationTimingLogObjects(v115);
            if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_361;
              }

              v125 = *(*(a1 + 48) + 16 * v14 + 8);
              v126 = v107 - *(a1 + 744);
              *buf = 136315650;
              *&buf[4] = v125;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              *&buf[22] = 2048;
              *&buf[24] = v126;
              _os_log_debug_impl(&dword_1E1C61000, v116, OS_LOG_TYPE_DEBUG, "Scheduling combined interval task [%s] with interval: %f (deadline: %f)", buf, 0x20u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_313;
          }

          break;
        case 1:
          if (v112)
          {
            v113 = *re::foundationTimingLogObjects(v112);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
            {
              v7 = *(a1 + 40);
              if (v7 <= v14)
              {
                goto LABEL_357;
              }

              v128 = *(*(a1 + 48) + 16 * v14 + 8);
              *buf = 136315394;
              *&buf[4] = v128;
              *&buf[12] = 2048;
              *&buf[14] = v110;
              _os_log_debug_impl(&dword_1E1C61000, v113, OS_LOG_TYPE_DEBUG, "Scheduling continuous interval task [%s] with interval: %f", buf, 0x16u);
            }
          }

          v6 = *(a1 + 568);
          if (v6 <= v14)
          {
            goto LABEL_317;
          }

          v114 = *(a1 + 576);
          v107 = *(v114 + 8 * v14) + v110;
          goto LABEL_227;
        default:
          re::internal::assertLog(4, v109, "assertion failure: '%s' (%s:line %i) Unknown over schedule strategy.", "!Unreachable code", "beginPhaseExecution", 529);
          result = _os_crash("assertion failure: (!Unreachable code) Unknown over schedule strategy.");
          __break(1u);
          return result;
      }

      v114 = *(a1 + 576);
LABEL_227:
      *(v114 + 8 * v14) = v107;
      goto LABEL_228;
    }
  }

LABEL_103:
  if (*(a1 + 720))
  {
    v6 = 0;
    v7 = 72;
    while (1)
    {
      v5 = *(a1 + 736) + 16 * v6;
      v14 = *v5;
      v4 = *(a1 + 592);
      if (v4 <= *v5)
      {
        goto LABEL_260;
      }

      v4 = *(*(a1 + 600) + 8 * v14);
      v68 = *(v5 + 8) - a3;
      *(v5 + 8) = v68;
      if ((re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 128, v14) & 1) == 0)
      {
        goto LABEL_119;
      }

      v69 = *(v5 + 8);
      if (v69 > a4)
      {
        goto LABEL_118;
      }

      Bit = re::DynamicBitset<unsigned long long,64ul>::getBit(v8, v4);
      if ((Bit & 1) == 0)
      {
        break;
      }

      if (v71)
      {
        v5 = *re::foundationTimingLogObjects(v71);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v13 = *(a1 + 40);
          if (v13 <= v14)
          {
            goto LABEL_345;
          }

          v77 = *(*(a1 + 48) + 16 * v14 + 8);
          *buf = 136315138;
          *&buf[4] = v77;
          _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "Scheduling enqueued task [%s]", buf, 0xCu);
        }
      }

      v13 = *(&v231 + 1);
      if (*(&v231 + 1) <= v4)
      {
        goto LABEL_280;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v232 + 72 * v4, v14);
      v13 = v233;
      if (v233 <= v4)
      {
        goto LABEL_284;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(*(&v233 + 1) + 72 * v4, v14);
      v14 = *(a1 + 720);
      if (v14 <= v6)
      {
        goto LABEL_288;
      }

      v72 = v14 - 1;
      if (v14 - 1 > v6)
      {
        v73 = *(a1 + 736);
        v74 = v73 + 16 * v14;
        v75 = v73 + 16 * v6;
        v76 = *(v74 - 16);
        *(v75 + 8) = *(v74 - 8);
        *v75 = v76;
        v72 = *(a1 + 720) - 1;
      }

      *(a1 + 720) = v72;
      ++*(a1 + 728);
LABEL_120:
      if (v6 >= *(a1 + 720))
      {
        goto LABEL_124;
      }
    }

    v69 = *(v5 + 8);
LABEL_118:
    *(a1 + 752) = fminf(*(a1 + 752), v69);
LABEL_119:
    ++v6;
    goto LABEL_120;
  }

LABEL_124:
  re::DynamicOverflowArray<unsigned long long,2ul>::DynamicOverflowArray(&v225, v8);
  v78 = *(v8 + 40);
  v230 = v78;
  v79 = v226;
  if (v226)
  {
    v80 = (v227 & 1) == 0;
    v81 = &v228;
    v82 = v229;
    if (v227)
    {
      v83 = &v228;
    }

    else
    {
      v83 = v229;
    }

    for (i = &v83[v226]; v83 != i - 1; i = &v85[v79])
    {
      *v83 = ~*v83;
      ++v83;
      v80 = (v227 & 1) == 0;
      v82 = v229;
      if (v227)
      {
        v85 = &v228;
      }

      else
      {
        v85 = v229;
      }
    }

    v86 = 63;
    v87 = v78 & 0x3F;
    if (v87)
    {
      v18 = v87 == 63;
      v88 = -1 << v87;
      if (!v18)
      {
        v86 = ~v88;
      }
    }

    if (v80)
    {
      v81 = v82;
    }

    v81[v79 - 1] ^= v86;
  }

  v89 = &v228;
  if ((v227 & 1) == 0)
  {
    v89 = v229;
  }

  if ((v79 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v90 = 0;
    while (1)
    {
      v92 = *v89++;
      v91 = v92;
      if (v92)
      {
        break;
      }

      v90 -= 64;
      if (!--v79)
      {
        goto LABEL_159;
      }
    }

    v93 = __clz(__rbit64(v91));
    if (v93 + 1 != v90)
    {
      v94 = v93 - v90;
      v14 = 72;
      while (1)
      {
        v13 = *(&v231 + 1);
        if (*(&v231 + 1) <= v94)
        {
          break;
        }

        v95 = v232 + 72 * v94;
        v96 = *(v95 + 16);
        if (v96)
        {
          v97 = (v95 + 24);
        }

        else
        {
          v97 = *(v95 + 32);
        }

        v98 = *(v95 + 8);
        while (1)
        {
          v99 = v95 + 24;
          if ((v96 & 1) == 0)
          {
            v99 = *(v95 + 32);
          }

          if (v97 == (v99 + 8 * v98))
          {
            break;
          }

          *v97++ = 0;
          v96 = *(v95 + 16);
        }

        v94 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v225, v94 + 1);
        if (v94 == -1)
        {
          goto LABEL_159;
        }
      }

LABEL_272:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v152 = MEMORY[0x1E69E9C10];
      v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v153)
      {
        v154 = 3;
      }

      else
      {
        v154 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v94;
      *&v239[8] = 2048;
      *&v239[10] = v13;
      _os_log_send_and_compose_impl(v154, v223, buf, 80, &dword_1E1C61000, v152, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_276:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v155 = MEMORY[0x1E69E9C10];
      v156 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v156)
      {
        v157 = 3;
      }

      else
      {
        v157 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v157, v223, buf, 80, &dword_1E1C61000, v155, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_280:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v158 = MEMORY[0x1E69E9C10];
      v159 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v159)
      {
        v160 = 3;
      }

      else
      {
        v160 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v4;
      *&v239[8] = 2048;
      *&v239[10] = v13;
      _os_log_send_and_compose_impl(v160, v223, buf, 80, &dword_1E1C61000, v158, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_284:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v161 = MEMORY[0x1E69E9C10];
      v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v162)
      {
        v163 = 3;
      }

      else
      {
        v163 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v4;
      *&v239[8] = 2048;
      *&v239[10] = v13;
      _os_log_send_and_compose_impl(v163, v223, buf, 80, &dword_1E1C61000, v161, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_288:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v164 = MEMORY[0x1E69E9C10];
      v165 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "removeAt";
      *&v238[12] = 1024;
      if (v165)
      {
        v166 = 3;
      }

      else
      {
        v166 = 2;
      }

      *&v238[14] = 931;
      *&v238[18] = 2048;
      *v239 = v6;
      *&v239[8] = 2048;
      *&v239[10] = v14;
      _os_log_send_and_compose_impl(v166, v223, buf, 80, &dword_1E1C61000, v164, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_292:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v167 = MEMORY[0x1E69E9C10];
      v168 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v168)
      {
        v169 = 3;
      }

      else
      {
        v169 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v169, v223, buf, 80, &dword_1E1C61000, v167, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_296:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v170 = MEMORY[0x1E69E9C10];
      v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v171)
      {
        v172 = 3;
      }

      else
      {
        v172 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v6;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v172, v223, buf, 80, &dword_1E1C61000, v170, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_300:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v173 = MEMORY[0x1E69E9C10];
      v174 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v174)
      {
        v175 = 3;
      }

      else
      {
        v175 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v6;
      *&v239[8] = 2048;
      *&v239[10] = v7;
      _os_log_send_and_compose_impl(v175, v223, buf, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_304:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v176 = MEMORY[0x1E69E9C10];
      v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v177)
      {
        v178 = 3;
      }

      else
      {
        v178 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v178, v223, buf, 80, &dword_1E1C61000, v176, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
LABEL_308:
      v223[0] = 0;
      v263 = 0u;
      v264 = 0u;
      v262 = 0u;
      memset(buf, 0, sizeof(buf));
      v179 = MEMORY[0x1E69E9C10];
      v180 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v238 = 136315906;
      *&v238[4] = "operator[]";
      *&v238[12] = 1024;
      if (v180)
      {
        v181 = 3;
      }

      else
      {
        v181 = 2;
      }

      *&v238[14] = 468;
      *&v238[18] = 2048;
      *v239 = v14;
      *&v239[8] = 2048;
      *&v239[10] = v6;
      _os_log_send_and_compose_impl(v181, v223, buf, 80, &dword_1E1C61000, v179, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v238, 38, v221, v222);
      _os_crash_msg();
      __break(1u);
      goto LABEL_312;
    }
  }

LABEL_159:
  *v238 = 0;
  *&v238[8] = 0;
  *&v238[16] = 1;
  *&v239[4] = 0;
  *&v239[12] = 0;
  v100 = *(a1 + 40);
  if ((v100 & 0x3F) != 0)
  {
    v101 = (v100 >> 6) + 1;
  }

  else
  {
    v101 = v100 >> 6;
  }

  v240 = *(a1 + 40);
  *buf = 0;
  re::DynamicOverflowArray<unsigned long long,5ul>::resize(v238, v101, buf);
  if (*(&v231 + 1))
  {
    v102 = v232;
    v103 = 72 * *(&v231 + 1);
    do
    {
      re::DynamicBitset<unsigned long long,256ul>::orWithBitSet(v238, v102);
      v102 += 72;
      v103 -= 72;
    }

    while (v103);
  }

  re::Scheduler::resolveEnabledTaskSetDependencies(v223, a1, v238);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet(v223, v238);
  v104 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v223, 0);
  if (v104 != -1)
  {
    v8 = v104;
    while (1)
    {
      v14 = *(a1 + 592);
      if (v14 <= v8)
      {
        break;
      }

      v14 = *(*(a1 + 600) + 8 * v8);
      v13 = *(&v231 + 1);
      if (*(&v231 + 1) <= v14)
      {
        goto LABEL_268;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v232 + 72 * v14, v8);
      v8 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v223, v8 + 1);
      if (v8 == -1)
      {
        goto LABEL_170;
      }
    }

LABEL_264:
    v237 = 0;
    v13 = v247;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v146 = MEMORY[0x1E69E9C10];
    v147 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v253 = 136315906;
    v254 = "operator[]";
    v255 = 1024;
    if (v147)
    {
      v148 = 3;
    }

    else
    {
      v148 = 2;
    }

    v256 = 468;
    v257 = 2048;
    v258 = v8;
    v259 = 2048;
    v260 = v14;
    _os_log_send_and_compose_impl(v148, &v237, buf, 80, &dword_1E1C61000, v146, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v253, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
LABEL_268:
    v237 = 0;
    v94 = v247;
    v263 = 0u;
    v264 = 0u;
    v262 = 0u;
    memset(buf, 0, sizeof(buf));
    v149 = MEMORY[0x1E69E9C10];
    v150 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v253 = 136315906;
    v254 = "operator[]";
    v255 = 1024;
    if (v150)
    {
      v151 = 3;
    }

    else
    {
      v151 = 2;
    }

    v256 = 468;
    v257 = 2048;
    v258 = v14;
    v259 = 2048;
    v260 = v13;
    _os_log_send_and_compose_impl(v151, &v237, buf, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v253, 38, v221, v222);
    _os_crash_msg();
    __break(1u);
    goto LABEL_272;
  }

LABEL_170:
  re::Scheduler::ExecutionContext::deinit((a1 + 760));
  re::FixedArray<float>::operator=((a1 + 760), &v231);
  re::FixedArray<float>::operator=((a1 + 784), &v232 + 1);
  re::FixedArray<unsigned long>::operator=((a1 + 808), &v234);
  v105 = v236;
  *(a1 + 832) = *&v235[8];
  *(a1 + 848) = v105;
  if (v223[0] && (v224 & 1) == 0)
  {
    (*(*v223[0] + 40))();
  }

  if (*v238 && (v238[16] & 1) == 0)
  {
    (*(**v238 + 40))();
  }

  if (v225 && (v227 & 1) == 0)
  {
    (*(*v225 + 40))();
  }

  if (*v241 && (v241[16] & 1) == 0)
  {
    (*(**v241 + 40))();
  }

  if (*v247 && (v247[16] & 1) == 0)
  {
    (*(**v247 + 40))();
  }

  if (v234)
  {
    if (*(&v234 + 1))
    {
      (*(*v234 + 40))();
      *(&v234 + 1) = 0;
      *v235 = 0;
    }

    *&v234 = 0;
  }

  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(&v232 + 1);
  return re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(&v231);
}

unint64_t re::Scheduler::executePhase(re::Scheduler *this, unint64_t a2)
{
  v2 = a2;
  v65 = *MEMORY[0x1E69E9840];
  *(this + 844) = 1;
  *(this + 106) = a2;
  v3 = *(this + 96);
  if (v3 <= a2)
  {
    goto LABEL_69;
  }

  v3 = *(this + 97) + 72 * a2;
  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3, 0);
  if (result != -1)
  {
    v2 = result;
    while (1)
    {
      *(this + 107) = v2;
      v6 = *(this + 56);
      if (v6 <= v2)
      {
        goto LABEL_37;
      }

      v7 = *(*(this + 57) + v2);
      if (v7 == 5 || v7 == 2)
      {
        v6 = *(this + 59);
        if (v6 <= v2)
        {
          goto LABEL_41;
        }

        if (*(*(this + 60) + v2) == 3)
        {
          break;
        }
      }

      v6 = *(this + 83);
      if (v6 <= v2)
      {
        goto LABEL_45;
      }

      v16 = *(this + 104);
      v17 = *(this + 84);
      v18 = *(v17 + 8 * v2);
      *(v17 + 8 * v2) = v16;
      v6 = *(this + 65);
      if (v6 <= v2)
      {
        goto LABEL_49;
      }

      v19 = v16 - v18;
      v20 = *(this + 66);
      *&v60 = v19;
      (*(**(v20 + 40 * v2 + 32) + 16))(*(v20 + 40 * v2 + 32), &v60);
LABEL_31:
      result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3, v2 + 1);
      v2 = result;
      if (result == -1)
      {
        goto LABEL_32;
      }
    }

    v6 = *(this + 68);
    if (v6 > v2)
    {
      v6 = *(this + 102);
      if (v6 <= v2)
      {
LABEL_57:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v38 = MEMORY[0x1E69E9C10];
        v39 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v52 = 136315906;
        v53 = "operator[]";
        v54 = 1024;
        if (v39)
        {
          v40 = 3;
        }

        else
        {
          v40 = 2;
        }

        v55 = 468;
        v56 = 2048;
        v57 = v2;
        v58 = 2048;
        v59 = v6;
        _os_log_send_and_compose_impl(v40, &v51, &v60, 80, &dword_1E1C61000, v38, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
        goto LABEL_61;
      }

      v6 = *(this + 83);
      if (v6 <= v2)
      {
LABEL_61:
        v51 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        v41 = MEMORY[0x1E69E9C10];
        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v52 = 136315906;
        v53 = "operator[]";
        v54 = 1024;
        if (v42)
        {
          v43 = 3;
        }

        else
        {
          v43 = 2;
        }

        v55 = 468;
        v56 = 2048;
        v57 = v2;
        v58 = 2048;
        v59 = v6;
        _os_log_send_and_compose_impl(v43, &v51, &v60, 80, &dword_1E1C61000, v41, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
        _os_crash_msg();
        __break(1u);
        goto LABEL_65;
      }

      v9 = *(*(this + 103) + 8 * v2);
      if (!v9)
      {
        goto LABEL_26;
      }

      v10 = 0;
      v11 = *(*(this + 69) + 4 * v2);
      v12 = *(*(this + 84) + 8 * v2);
      while (1)
      {
        v6 = *(this + 65);
        if (v6 <= v2)
        {
          break;
        }

        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12 == 0.0;
        }

        if (v13)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v11;
        }

        v15 = *(this + 66);
        *&v60 = v14;
        (*(**(v15 + 40 * v2 + 32) + 16))(*(v15 + 40 * v2 + 32), &v60);
        if (v9 == ++v10)
        {
          v6 = *(this + 83);
LABEL_26:
          if (v6 > v2)
          {
            *(*(this + 84) + 8 * v2) = *(this + 104);
            goto LABEL_31;
          }

LABEL_65:
          v51 = 0;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          v44 = MEMORY[0x1E69E9C10];
          v45 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v52 = 136315906;
          v53 = "operator[]";
          v54 = 1024;
          if (v45)
          {
            v46 = 3;
          }

          else
          {
            v46 = 2;
          }

          v55 = 468;
          v56 = 2048;
          v57 = v2;
          v58 = 2048;
          v59 = v6;
          _os_log_send_and_compose_impl(v46, &v51, &v60, 80, &dword_1E1C61000, v44, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
          _os_crash_msg();
          __break(1u);
LABEL_69:
          v51 = 0;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v60 = 0u;
          v47 = MEMORY[0x1E69E9C10];
          v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v52 = 136315906;
          v53 = "operator[]";
          v54 = 1024;
          if (v48)
          {
            v49 = 3;
          }

          else
          {
            v49 = 2;
          }

          v55 = 468;
          v56 = 2048;
          v57 = v2;
          v58 = 2048;
          v59 = v3;
          _os_log_send_and_compose_impl(v49, &v51, &v60, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
          _os_crash_msg();
          __break(1u);
        }
      }

      v51 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v21 = MEMORY[0x1E69E9C10];
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = 3;
      }

      else
      {
        v22 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v2;
      v58 = 2048;
      v59 = v6;
      _os_log_send_and_compose_impl(v22, &v51, &v60, 80, &dword_1E1C61000, v21, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v51 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v24)
      {
        v25 = 3;
      }

      else
      {
        v25 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v2;
      v58 = 2048;
      v59 = v6;
      _os_log_send_and_compose_impl(v25, &v51, &v60, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
      _os_crash_msg();
      __break(1u);
LABEL_41:
      v51 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v26 = MEMORY[0x1E69E9C10];
      v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v27)
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v2;
      v58 = 2048;
      v59 = v6;
      _os_log_send_and_compose_impl(v28, &v51, &v60, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v51 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v29 = MEMORY[0x1E69E9C10];
      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v30)
      {
        v31 = 3;
      }

      else
      {
        v31 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v2;
      v58 = 2048;
      v59 = v6;
      _os_log_send_and_compose_impl(v31, &v51, &v60, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
      _os_crash_msg();
      __break(1u);
LABEL_49:
      v51 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v32 = MEMORY[0x1E69E9C10];
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v52 = 136315906;
      v53 = "operator[]";
      v54 = 1024;
      if (v33)
      {
        v34 = 3;
      }

      else
      {
        v34 = 2;
      }

      v55 = 468;
      v56 = 2048;
      v57 = v2;
      v58 = 2048;
      v59 = v6;
      _os_log_send_and_compose_impl(v34, &v51, &v60, 80, &dword_1E1C61000, v32, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
      _os_crash_msg();
      __break(1u);
    }

    v51 = 0;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v60 = 0u;
    v35 = MEMORY[0x1E69E9C10];
    v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v52 = 136315906;
    v53 = "operator[]";
    v54 = 1024;
    if (v36)
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    v55 = 468;
    v56 = 2048;
    v57 = v2;
    v58 = 2048;
    v59 = v6;
    _os_log_send_and_compose_impl(v37, &v51, &v60, 80, &dword_1E1C61000, v35, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v52, 38, v50);
    _os_crash_msg();
    __break(1u);
    goto LABEL_57;
  }

LABEL_32:
  *(this + 844) = 0;
  return result;
}

uint64_t re::DynamicOverflowArray<unsigned long long,5ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<unsigned long long,5ul>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned long long,5ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

re::ManualClock *re::ManualClock::ManualClock(re::ManualClock *this)
{
  *this = &unk_1F5D19AB0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x7F80000000000000;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 5, 0);
  ++*(this + 16);
  re::Defaults::floatValue(&v4, re::SimulationClock::kDefaultMaxDeltaTimeKey, v2);
  if (v4 == 1 && *(&v4 + 1) > 0.0)
  {
    *(this + 9) = HIDWORD(v4);
  }

  return this;
}

uint64_t re::ManualClock::reset(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void re::ManualClock::resetDeltaTime(re::ManualClock *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ManualClock does not support resetDeltaTime.", "!Unreachable code", "resetDeltaTime", 39);
  _os_crash("assertion failure: (!Unreachable code) ManualClock does not support resetDeltaTime.");
  __break(1u);
}

uint64_t re::ManualClock::update(uint64_t this, float a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 8) != 1)
  {
    return this;
  }

  v3 = a2;
  if (a2 < 0.0)
  {
    re::internal::assertLog(5, a3, "assertion failure: '%s' (%s:line %i) Negative time step: %g s", "deltaTime >= 0.0f", "update", 49, a2);
    _os_crash("assertion failure: (deltaTime >= 0.0f) Negative time step: %g s", v11);
    __break(1u);
LABEL_14:
    re::internal::assertLog(5, a3, "assertion failure: '%s' (%s:line %i) Time step exceeds 10 years: %g s", "deltaTime < 10 * 365 * 24 * 3600.0f", "update", 50, v3);
    _os_crash("assertion failure: (deltaTime < 10 * 365 * 24 * 3600.0f) Time step exceeds 10 years: %g s", v12);
    __break(1u);
  }

  if (a2 >= 315360000.0)
  {
    goto LABEL_14;
  }

  v4 = this;
  if (a2 > 3600.0)
  {
    v5 = *re::foundationTimingLogObjects(this);
    this = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      buf = 134217984;
      *buf_4 = v3;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Large time step: %g s", &buf, 0xCu);
    }
  }

  v6 = v3;
  v7 = *(v4 + 16) + v3;
  *(v4 + 16) = v7;
  if (*(v4 + 36) < v3)
  {
    v8 = *re::foundationTimingLogObjects(this);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v4 + 36);
      buf = 134218240;
      *buf_4 = v3;
      *&buf_4[8] = 2048;
      *&buf_4[10] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Clamping time step %g s to %g s", &buf, 0x16u);
    }

    v3 = *(v4 + 36);
    v7 = *(v4 + 16);
    v6 = v3;
  }

  v10 = v6 + *(v4 + 24);
  *(v4 + 24) = v10;
  *(v4 + 32) = v3;
  *buf_4 = 0;
  buf = LODWORD(v3);
  *&buf_4[4] = v10;
  *&buf_4[12] = v7;
  return (*(*v4 + 96))(v4, &buf);
}

void re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {

    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void re::ManualClock::~ManualClock(re::ManualClock *this)
{
  *this = &unk_1F5D19AB0;
  re::Event<re::GeometricObjectBase>::~Event(this + 5);
}

{
  *this = &unk_1F5D19AB0;
  re::Event<re::GeometricObjectBase>::~Event(this + 5);

  JUMPOUT(0x1E6906520);
}

void re::DisplayLinkClock::update(re::DisplayLinkClock *this)
{
  v2 = CACurrentMediaTime();
  v3 = *(this + 20);
  *(this + 20) = v2;
  if (*(this + 9) == 1)
  {
    v4 = v2 - v3;
    v5 = *(this + 3);
    v6 = *(this + 2) + v4;
    if (*(this + 9) < v4)
    {
      v4 = *(this + 9);
    }

    *(this + 2) = v6;
    *(this + 3) = v5 + v4;
    *(this + 8) = v4;
    v7[0] = LODWORD(v4);
    *&v7[1] = v5 + v4;
    *&v7[2] = v6;
    (*(*this + 96))(this, v7);
  }
}

uint64_t re::DisplayLinkClock::DisplayLinkClock(uint64_t a1, id *a2)
{
  *a1 = &unk_1F5D19B50;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0x427000007F800000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 48), 0);
  ++*(a1 + 72);
  *(a1 + 136) = *a2;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  return a1;
}

void re::DisplayLinkClock::~DisplayLinkClock(re::DisplayLinkClock *this)
{
  *this = &unk_1F5D19B50;
  if (*(this + 8) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      [v2 invalidate];
      *(this + 19) = 0;
    }

    v3 = *(this + 18);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(this + 18);
      *(this + 18) = 0;
    }

    *(this + 8) = 0;
  }

  re::Event<re::GeometricObjectBase>::~Event(this + 6);
}

{
  re::DisplayLinkClock::~DisplayLinkClock(this);

  JUMPOUT(0x1E6906520);
}

void re::DisplayLinkClock::init(re::DisplayLinkClock *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    re::DisplayLinkClock::initDisplayLink(this);
    *(this + 8) = 1;
    re::Defaults::floatValue(&v3, re::SimulationClock::kDefaultMaxDeltaTimeKey, v2);
    if (v3 == 1 && *(&v3 + 1) > 0.0)
    {
      *(this + 9) = HIDWORD(v3);
    }
  }
}

void re::DisplayLinkClock::initDisplayLink(re::DisplayLinkClock *this)
{
  v2 = [[REDisplayLinkTarget alloc] initWithClock:this];
  v8 = v2;
  if (*(this + 17) == MEMORY[0x1E69E96A0])
  {
    v3 = &selRef_update;
  }

  else
  {
    v3 = &selRef_updateOnQueue;
  }

  v4 = [MEMORY[0x1E6979338] displayLinkWithTarget:v2 selector:*v3];
  v5 = *(this + 18);
  *(this + 18) = v4;

  *(this + 19) = v8;
  [*(this + 18) setPreferredFramesPerSecond:llroundf(*(this + 10))];
  v6 = *(this + 18);
  v7 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];
}

CFTimeInterval *re::DisplayLinkClock::start(CFTimeInterval *this)
{
  if ((*(this + 9) & 1) == 0)
  {
    v1 = this;
    re::DisplayLinkClock::init(this);
    v1[20] = CACurrentMediaTime();
    this = *(v1 + 18);
    if (this)
    {
      this = [(CFTimeInterval *)this setPaused:0];
    }

    *(v1 + 9) = 1;
  }

  return this;
}

_BYTE *re::DisplayLinkClock::stop(_BYTE *this)
{
  if (this[9] == 1)
  {
    v1 = this;
    this = *(this + 18);
    if (this)
    {
      this = [this setPaused:1];
    }

    v1[9] = 0;
  }

  return this;
}

void re::DisplayLinkClock::reset(re::DisplayLinkClock *this)
{
  if (*(this + 9) == 1)
  {
    v2 = *(this + 18);
    if (v2)
    {
      [v2 setPaused:1];
    }

    *(this + 9) = 0;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 20) = CACurrentMediaTime();
}

re::VariableStepTimer *re::VariableStepTimer::VariableStepTimer(re::VariableStepTimer *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5D19BE0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 7) = 1065353216;
  *(this + 16) = 2139095040;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 34) = 0;
  v2 = re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 9, 0);
  ++*(this + 24);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 56) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(this + 20, 0);
  ++*(this + 46);
  return this;
}

void re::VariableStepTimer::~VariableStepTimer(re::VariableStepTimer *this)
{
  re::VariableStepTimer::setClock(this, 0);
  re::Event<re::GeometricObjectBase>::~Event(this + 20);
  re::Event<re::GeometricObjectBase>::~Event(this + 9);
}

{
  re::VariableStepTimer::~VariableStepTimer(this);

  JUMPOUT(0x1E6906520);
}

double re::VariableStepTimer::setClock(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  if (v3 != a2)
  {
    if (v3)
    {
      v5 = (*(*v3 + 56))(v3);
      *&v8 = a1;
      *(&v8 + 1) = re::VariableStepTimer::onClockDidChange;
      *&v9 = 0;
      *(&v9 + 1) = re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke;
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v5, &v8, v10);
      if (v10[0] == 1)
      {
        if (*(v5 + 80))
        {
          v10[0] = 0;
          v11 = v8;
          v12 = v9;
          *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v5 + 40, v10).n128_u64[0];
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(v5, &v8);
        }
      }
    }

    *(a1 + 8) = a2;
    if (a2)
    {
      v7 = (*(*a2 + 56))(a2);
      *&v8 = a1;
      *(&v8 + 1) = re::VariableStepTimer::onClockDidChange;
      *&v9 = 0;
      *(&v9 + 1) = re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke;
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(v7, &v8, v10);
      if ((v10[0] & 1) == 0)
      {
        if (*(v7 + 20))
        {
          v10[0] = 1;
          v11 = v8;
          v12 = v9;
          *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(v7 + 40, v10).n128_u64[0];
        }

        else
        {
          *&result = re::DynamicArray<re::EvaluationRegister>::add(v7, &v8).n128_u64[0];
        }
      }
    }
  }

  return result;
}

uint64_t re::VariableStepTimer::onClockDidChange(uint64_t a1, uint64_t a2, float *a3)
{
  if (*(a1 + 24) == 1)
  {
    v4 = *(a1 + 52) + (*a3 * *(a1 + 56));
    *(a1 + 52) = v4;
    v5 = fabsf(v4);
    v6 = *(a1 + 60);
    if (v5 >= v6)
    {
      ++*(a1 + 16);
      v8 = *(a1 + 64);
      v9 = v5 - v8;
      v10 = -v8;
      if (v4 >= 0.0)
      {
        v10 = *(a1 + 64);
      }

      v11 = v5 <= v8;
      v12 = 0.0;
      if (!v11)
      {
        v12 = v9;
        v4 = v10;
      }

      *(a1 + 48) = v12;
      *(a1 + 40) = v4;
      *(a1 + 52) = 0;
      *(a1 + 44) = 0;
      *(a1 + 32) = *(a1 + 32) + v4;
      v7 = a1 + 160;
    }

    else
    {
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 44) = v6 - v5;
      v7 = a1 + 72;
    }

    re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::raise(v7, a1);
  }

  return 0;
}

uint64_t re::VariableStepTimer::stop(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  return this;
}

uint64_t re::VariableStepTimer::reset(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  return this;
}

void re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::raise(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          v17 = 0;
          memset(v28, 0, sizeof(v28));
          v13 = MEMORY[0x1E69E9C10];
          v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v20 = 136315906;
          v21 = "operator[]";
          v22 = 1024;
          if (v14)
          {
            v15 = 3;
          }

          else
          {
            v15 = 2;
          }

          v23 = 789;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl(v15, &v17, v28, 80, &dword_1E1C61000, v13, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v16);
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v18[0] = *v10;
        v18[1] = v12;
        v19 = v11;
        if (LOBYTE(v18[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v18 + 1, v28);
          if ((v28[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v18 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v18 + 1);
        }

        v7 += 40;
      }
    }
  }
}

uint64_t re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::createSubscription<re::VariableStepTimer>(re::VariableStepTimer *,REEventHandlerResult (re::VariableStepTimer::*)(re::SimulationClock*,re::SimulationClockEventArgs const&))::{lambda(re::SimulationClock*,re::Event<re::SimulationClock,re::SimulationClockEventArgs const&>::Subscription const&,re::SimulationClockEventArgs const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

id ManualClockLog(void)
{
  if (qword_1EE1C40E8 != -1)
  {
    dispatch_once(&qword_1EE1C40E8, &__block_literal_global_53);
  }

  v1 = _MergedGlobals_567;

  return v1;
}

void ___Z14ManualClockLogv_block_invoke()
{
  v0 = os_log_create("com.apple.re", "ManualClock");
  v1 = _MergedGlobals_567;
  _MergedGlobals_567 = v0;
}

uint64_t re::ManualCMClockCreateWithReference(re *this, OpaqueCMClock *a2, OpaqueCMClock **a3)
{
  if (!this)
  {
    return 4294954543;
  }

  result = FigDerivedClockCreateWithGetTimeCallback();
  if (!result)
  {
    CFRetain(this);
    DerivedStorage = FigDerivedClockGetDerivedStorage();
    result = 0;
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = this;
    *(DerivedStorage + 16) = 0x3FF0000000000000;
    v6 = MEMORY[0x1E6960CC0];
    v7 = *MEMORY[0x1E6960CC0];
    *(DerivedStorage + 24) = *MEMORY[0x1E6960CC0];
    v8 = *(v6 + 16);
    *(DerivedStorage + 40) = v8;
    *(DerivedStorage + 48) = v7;
    *(DerivedStorage + 64) = v8;
  }

  return result;
}

void re::ManualCMClockUpdateRateAndAnchor(re *this, CMTime *a2, double a3, CMTime *a4, CMTime *a5)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v13, 0, sizeof(v13));
  if (*(DerivedStorage + 16) != a3 || (time1 = *a2, v11 = v13, CMTimeCompare(&time1, &v11)))
  {
    os_unfair_lock_lock(DerivedStorage);
    *(DerivedStorage + 16) = a3;
    v9 = *&a2->value;
    *(DerivedStorage + 40) = a2->epoch;
    *(DerivedStorage + 24) = v9;
    v10 = *&a4->value;
    *(DerivedStorage + 64) = a4->epoch;
    *(DerivedStorage + 48) = v10;
    os_unfair_lock_unlock(DerivedStorage);
  }
}

CMTime *anonymous namespace::REManualCMClock_ConvertReferenceTimeToLocalTime@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v6 = *(a1 + 48);
  CMTimeSubtract(&time, &lhs, &v6);
  CMTimeMultiplyByFloat64(&v9, &time, *(a1 + 16));
  time = *(a1 + 24);
  lhs = v9;
  return CMTimeAdd(a3, &time, &lhs);
}

uint64_t re::ProxyAudioClockCreate(re *this, OpaqueCMClock **a2)
{
  HostTimeClock = CMClockGetHostTimeClock();
  v8 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
  if (!TimeCallback)
  {
    CFRetain(HostTimeClock);
    DerivedStorage = FigDerivedClockGetDerivedStorage();
    *DerivedStorage = 0;
    *(DerivedStorage + 8) = HostTimeClock;
    v6 = [REProxyAudioClockManager sharedInstance:v8];
    [v6 addClock:*this];
  }

  return TimeCallback;
}

CFStringRef anonymous namespace::REManualCMClock_CopyDebugDesc(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage);
  v4 = CFGetAllocator(this);
  time = *(DerivedStorage + 24);
  v5 = CMTimeCopyDescription(v4, &time);
  v6 = CFGetAllocator(this);
  time = *(DerivedStorage + 48);
  v7 = CMTimeCopyDescription(v6, &time);
  v8 = *(DerivedStorage + 16);
  os_unfair_lock_unlock(DerivedStorage);
  v9 = CFGetAllocator(this);
  v10 = CFStringCreateWithFormat(v9, 0, @"REManualCMClock rate %0.2f, own anchor %@, reference anchor %@", v8, v5, v7);
  CFRelease(v5);
  CFRelease(v7);
  return v10;
}

void anonymous namespace::REManualCMClock_Finalize(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  v2 = *(FigDerivedClockGetDerivedStorage() + 8);

  CFRelease(v2);
}

double anonymous namespace::REManualCMClock_GetRate(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  os_unfair_lock_lock(DerivedStorage);
  v3 = *(DerivedStorage + 16);
  os_unfair_lock_unlock(DerivedStorage);
  return v3;
}

uint64_t anonymous namespace::REManualCMClock_GetAnchorTime(_anonymous_namespace_ *this, CMTime *a2, CMTime *a3, CMTime *a4)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v9, 0, sizeof(v9));
  CMClockGetTime(&v9, *(DerivedStorage + 8));
  if (a2)
  {
    os_unfair_lock_lock(DerivedStorage);
    *a2 = v8;
    os_unfair_lock_unlock(DerivedStorage);
  }

  if (a3)
  {
    *a3 = v9;
  }

  return 0;
}

void anonymous namespace::REProxyAudioClock_Finalize(_anonymous_namespace_ *this, OpaqueCMClock *a2)
{
  v3 = +[REProxyAudioClockManager sharedInstance];
  [v3 removeClock:this];

  v4 = *(FigDerivedClockGetDerivedStorage() + 8);

  CFRelease(v4);
}

BOOL anonymous namespace::REProxyAudioClock_MightDrift(_anonymous_namespace_ *this, OpaqueCMClock *a2, OpaqueCMClock *a3)
{
  if (this == a2)
  {
    return 0;
  }

  return !FigDerivedClockVerifyCallbacksMatch() || !FigDerivedClockVerifyCallbacksMatch();
}

void *re::allocInfo_SimulationTimer(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_568))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C4108, "SimulationTimer");
    __cxa_guard_release(&_MergedGlobals_568);
  }

  return &unk_1EE1C4108;
}

void re::initInfo_SimulationTimer(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4256CCBB6638AABCLL;
  v6[1] = "SimulationTimer";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_SimulationTimer(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::introspect_ClockOrTimebaseType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1C41A0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1C41A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41A8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1C42D0, "ClockOrTimebaseType", 4, 4, 1, 1);
      qword_1EE1C42D0 = &unk_1F5D0C658;
      qword_1EE1C4310 = &re::introspect_ClockOrTimebaseType(BOOL)::enumTable;
      dword_1EE1C42E0 = 9;
      __cxa_guard_release(&qword_1EE1C41A8);
    }

    if (_MergedGlobals_569)
    {
      break;
    }

    _MergedGlobals_569 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1C42D0, a2);
    v39 = 0x5C6F678444E6A912;
    v40 = "ClockOrTimebaseType";
    v43 = 208862;
    v44 = "int";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1C4310;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1C42F0 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash("assertion failure: (valueID.isValid()) Failed to determine underlying type of enum %s.", v38);
    __break(1u);
LABEL_43:
    if (__cxa_guard_acquire(&qword_1EE1C41A0))
    {
      v28 = re::introspectionAllocator();
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 1;
      *(v29 + 8) = 0;
      *(v29 + 16) = "Timebase";
      qword_1EE1C4250 = v29;
      v30 = re::introspectionAllocator();
      v31 = (*(*v30 + 32))(v30, 24, 8);
      *v31 = 1;
      *(v31 + 8) = 1;
      *(v31 + 16) = "AudioClock";
      qword_1EE1C4258 = v31;
      v32 = re::introspectionAllocator();
      v33 = (*(*v32 + 32))(v32, 24, 8);
      *v33 = 1;
      *(v33 + 8) = 2;
      *(v33 + 16) = "HostClock";
      qword_1EE1C4260 = v33;
      v34 = re::introspectionAllocator();
      v35 = (*(*v34 + 32))(v34, 24, 8);
      *v35 = 1;
      *(v35 + 8) = 3;
      *(v35 + 16) = "SharedClock";
      qword_1EE1C4268 = v35;
      v36 = re::introspectionAllocator();
      v37 = (*(*v36 + 32))(v36, 24, 8);
      *v37 = 1;
      *(v37 + 8) = 4;
      *(v37 + 16) = "CustomClock";
      qword_1EE1C4270 = v37;
      __cxa_guard_release(&qword_1EE1C41A0);
    }
  }
}

void *re::allocInfo_ClockOrTimebase(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1C41B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C43C8, "ClockOrTimebase");
    __cxa_guard_release(&qword_1EE1C41B0);
  }

  return &unk_1EE1C43C8;
}

void re::initInfo_ClockOrTimebase(re *this, re::IntrospectionBase *a2)
{
  v48[0] = 0x3BDE3B02BE92815ELL;
  v48[1] = "ClockOrTimebase";
  if (v48[0])
  {
    if (v48[0])
    {
    }
  }

  *(this + 2) = v49;
  if ((atomic_load_explicit(&qword_1EE1C41B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C41B8))
  {
    v5 = re::introspectionAllocator();
    re::introspect_ClockOrTimebaseType(v5, v6);
    v7 = (*(*v5 + 32))(v5, 72, 8);
    *v7 = 1;
    *(v7 + 8) = "type";
    *(v7 + 16) = &qword_1EE1C42D0;
    *(v7 + 24) = 0;
    *(v7 + 32) = 1;
    *(v7 + 40) = 0;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    qword_1EE1C4368 = v7;
    v8 = re::introspectionAllocator();
    v10 = re::introspect_uint64_t(1, v9);
    v11 = (*(*v8 + 32))(v8, 72, 8);
    *v11 = 1;
    *(v11 + 8) = "identifier";
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x800000002;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
    qword_1EE1C4370 = v11;
    v12 = re::introspectionAllocator();
    v14 = re::introspect_BOOL(1, v13);
    v15 = (*(*v12 + 32))(v12, 72, 8);
    *v15 = 1;
    *(v15 + 8) = "locallyControlled";
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0x1000000003;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    qword_1EE1C4378 = v15;
    v16 = re::introspectionAllocator();
    v18 = re::introspect_uint64_t(1, v17);
    v19 = (*(*v16 + 32))(v16, 72, 8);
    *v19 = 1;
    *(v19 + 8) = "master";
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x1800000004;
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    *(v19 + 56) = 0;
    *(v19 + 64) = 0;
    qword_1EE1C4380 = v19;
    v20 = re::introspectionAllocator();
    v22 = re::introspect_double(1, v21);
    v23 = (*(*v20 + 32))(v20, 72, 8);
    *v23 = 1;
    *(v23 + 8) = "rate";
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    *(v23 + 32) = 0x2000000005;
    *(v23 + 40) = 0;
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *(v23 + 64) = 0;
    qword_1EE1C4388 = v23;
    v24 = re::introspectionAllocator();
    v25 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v25 = allocInfo_CMTime();
      qword_1EE1C4200 = v25;
      initInfo_CMTime(v25);
    }

    v26 = (*(*v24 + 32))(v24, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "ownTime";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2800000006;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1C4390 = v26;
    v27 = re::introspectionAllocator();
    v28 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v28 = allocInfo_CMTime();
      qword_1EE1C4200 = v28;
      initInfo_CMTime(v28);
    }

    v29 = (*(*v27 + 32))(v27, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "masterTime";
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x4000000007;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1C4398 = v29;
    v30 = re::introspectionAllocator();
    v32 = re::introspect_double(1, v31);
    v33 = (*(*v30 + 32))(v30, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "rateToTOD";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x5800000008;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1C43A0 = v33;
    v34 = re::introspectionAllocator();
    v35 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v35 = allocInfo_CMTime();
      qword_1EE1C4200 = v35;
      initInfo_CMTime(v35);
    }

    v36 = (*(*v34 + 32))(v34, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "ownTimeToTOD";
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x6000000009;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1C43A8 = v36;
    v37 = re::introspectionAllocator();
    v38 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v38 = allocInfo_CMTime();
      qword_1EE1C4200 = v38;
      initInfo_CMTime(v38);
    }

    v39 = (*(*v37 + 32))(v37, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "masterTimeToTOD";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x780000000ALL;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1C43B0 = v39;
    v40 = re::introspectionAllocator();
    v42 = re::introspect_BOOL(1, v41);
    v43 = (*(*v40 + 32))(v40, 72, 8);
    *v43 = 1;
    *(v43 + 8) = "ignoreClockSourceAnchor";
    *(v43 + 16) = v42;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0x900000000BLL;
    *(v43 + 40) = 0;
    *(v43 + 48) = 0;
    *(v43 + 56) = 0;
    *(v43 + 64) = 0;
    qword_1EE1C43B8 = v43;
    v44 = re::introspectionAllocator();
    v45 = qword_1EE1C4200;
    if (!qword_1EE1C4200)
    {
      v45 = allocInfo_CMTime();
      qword_1EE1C4200 = v45;
      initInfo_CMTime(v45);
    }

    v46 = (*(*v44 + 32))(v44, 72, 8);
    *v46 = 1;
    *(v46 + 8) = "latestSeekTarget";
    *(v46 + 16) = v45;
    *(v46 + 24) = 0;
    *(v46 + 32) = 0x940000000CLL;
    *(v46 + 40) = 0;
    *(v46 + 48) = 0;
    *(v46 + 56) = 0;
    *(v46 + 64) = 0;
    qword_1EE1C43C0 = v46;
    __cxa_guard_release(&qword_1EE1C41B8);
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE1C4368;
  *(this + 9) = re::internal::defaultConstruct<re::ClockOrTimebase>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ClockOrTimebase>;
  *(this + 13) = re::internal::defaultConstructV2<re::ClockOrTimebase>;
  *(this + 14) = re::internal::defaultDestructV2<re::ClockOrTimebase>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v47 = v49;
}