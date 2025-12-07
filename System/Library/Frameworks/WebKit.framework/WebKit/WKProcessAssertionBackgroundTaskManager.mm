@interface WKProcessAssertionBackgroundTaskManager
+ (id)shared;
- (WKProcessAssertionBackgroundTaskManager)init;
- (id).cxx_construct;
- (uint64_t)_handleBackgroundTaskExpirationOnMainThread;
- (uint64_t)_scheduleReleaseTask;
- (uint64_t)_updateBackgroundTask;
- (uint64_t)setProcessStateMonitorEnabled:(uint64_t)enabled;
- (void)_cancelPendingReleaseTask;
- (void)_handleBackgroundTaskExpiration;
- (void)_handleBackgroundTaskExpirationOnMainThread;
- (void)_notifyAssertionsOfImminentSuspension;
- (void)_releaseBackgroundTask;
- (void)_scheduleReleaseTask;
- (void)_updateBackgroundTask;
- (void)addAssertionNeedingBackgroundTask:(void *)task;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)dealloc;
- (void)removeAssertionNeedingBackgroundTask:(void *)task;
- (void)setProcessStateMonitorEnabled:(BOOL)enabled;
@end

@implementation WKProcessAssertionBackgroundTaskManager

+ (id)shared
{
  if (_MergedGlobals_72 == 1)
  {
    return qword_1ED642578;
  }

  result = objc_opt_new();
  qword_1ED642578 = result;
  _MergedGlobals_72 = 1;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 40) = 0;
  *(self + 7) = 0;
  return self;
}

- (WKProcessAssertionBackgroundTaskManager)init
{
  v12.receiver = self;
  v12.super_class = WKProcessAssertionBackgroundTaskManager;
  v2 = [(WKProcessAssertionBackgroundTaskManager *)&v12 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v4 = *MEMORY[0x1E69DDBC0];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke;
    v11[3] = &unk_1E7632398;
    v11[4] = v2;
    [defaultCenter addObserverForName:v4 object:mEMORY[0x1E69DC668] queue:0 usingBlock:v11];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = *MEMORY[0x1E69DDAC8];
    mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke_2;
    v10[3] = &unk_1E7632398;
    v10[4] = v2;
    [defaultCenter2 addObserverForName:v7 object:mEMORY[0x1E69DC668]2 queue:0 usingBlock:v10];
  }

  return v2;
}

- (void)_updateBackgroundTask
{
  *self = &unk_1F1100BA8;
  v2 = self[2];
  self[2] = 0;
  if (v2)
  {
  }

  return self;
}

uint64_t __47__WKProcessAssertionBackgroundTaskManager_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelPendingReleaseTask];
  v2 = *(a1 + 32);

  return [v2 _updateBackgroundTask];
}

WebKit::WebProcessPool *__47__WKProcessAssertionBackgroundTaskManager_init__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _hasBackgroundTask];
  if ((result & 1) == 0)
  {

    return WebKit::WebProcessPool::notifyProcessPoolsApplicationIsAboutToSuspend(result, v2);
  }

  return result;
}

- (void)dealloc
{
  [(WKProcessAssertionBackgroundTaskManager *)self _releaseBackgroundTask];
  v3.receiver = self;
  v3.super_class = WKProcessAssertionBackgroundTaskManager;
  [(WKProcessAssertionBackgroundTaskManager *)&v3 dealloc];
}

- (void)addAssertionNeedingBackgroundTask:(void *)task
{
  v6 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(task + 1, v3);
  if (WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(v6))
  {
    __break(0xC471u);
    return;
  }

  v7 = 0;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock);
  }

  v8 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(task + 1, v7);
  v9 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v8);
  m_maxOperationCountWithoutCleanup = self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup;
  v11 = self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup + 1;
  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = v11;
  m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (v11 > m_maxOperationCountWithoutCleanup)
  {
    if (m_table)
    {
      v13 = *(m_table - 1);
      if (!v13)
      {
LABEL_18:
        v19 = *(m_table - 1);
        if (6 * *(m_table - 3) < v19 && v19 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
          if (!m_table)
          {
            v21 = 0;
            goto LABEL_28;
          }
        }

        else
        {
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
        }

        v21 = *(m_table - 3);
        if (v21 > 0x7FFFFFFE)
        {
          v22 = -2;
LABEL_29:
          self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v22;
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          goto LABEL_30;
        }

LABEL_28:
        v22 = 2 * v21;
        goto LABEL_29;
      }

      v14 = 0;
      v15 = &m_table[4 * v13 - 4];
      do
      {
        if (*v15 != -1 && *v15 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v15))
        {
          v17 = *v15;
          *v15 = 0;
          if (v17)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v17, v16);
          }

          *v15 = -1;
          ++v14;
        }

        v15 -= 2;
        --v13;
      }

      while (v13);
      m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      if (v14)
      {
        v18 = *(m_table - 3) - v14;
        *(m_table - 4) += v14;
        *(m_table - 3) = v18;
        goto LABEL_18;
      }

      if (m_table)
      {
        goto LABEL_18;
      }
    }

    v21 = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_28;
  }

LABEL_30:
  if (!m_table)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(&self->_assertionsNeedingBackgroundTask);
    m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  }

  v23 = *(m_table - 2);
  v24 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v9, task) & v23;
  v25 = &m_table[4 * v24];
  v26 = *v25;
  v27 = v25[1];
  if (*v25 != 0)
  {
    v28 = 0;
    v29 = 1;
    while (v26 != v9 || v27 != task)
    {
      if (v26 == -1)
      {
        v28 = v25;
      }

      v24 = (v24 + v29) & v23;
      v25 = &m_table[4 * v24];
      v26 = *v25;
      v27 = v25[1];
      ++v29;
      if (*v25 == 0)
      {
        if (v28)
        {
          *v28 = 0;
          v28[1] = 0;
          --*(self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table - 4);
          v25 = v28;
        }

        goto LABEL_41;
      }
    }

    if (v9)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v9, v25);
    }

    goto LABEL_49;
  }

LABEL_41:
  *v25 = v9;
  v30 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  v25[1] = task;
  if (v30)
  {
    v31 = *(v30 - 3) + 1;
  }

  else
  {
    v31 = 1;
  }

  *(v30 - 3) = v31;
  v32 = (*(v30 - 4) + v31);
  v33 = *(v30 - 1);
  if (v33 > 0x400)
  {
    if (v33 > 2 * v32)
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (3 * v33 <= 4 * v32)
  {
LABEL_46:
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::expand(&self->_assertionsNeedingBackgroundTask);
  }

LABEL_49:
  v34 = 1;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v34, 0, memory_order_release, memory_order_relaxed);
  if (v34 != 1)
  {
    WTF::Lock::unlockSlow(&self->_assertionsNeedingBackgroundTask.m_lock);
  }

  [(WKProcessAssertionBackgroundTaskManager *)self _updateBackgroundTask];
}

- (void)removeAssertionNeedingBackgroundTask:(void *)task
{
  v5 = 0;
  p_m_lock = &self->_assertionsNeedingBackgroundTask.m_lock;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v5, 1u, memory_order_acquire, memory_order_acquire);
  if (v5)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock, a2);
  }

  m_maxOperationCountWithoutCleanup = self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup;
  v8 = self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup + 1;
  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = v8;
  if (v8 > m_maxOperationCountWithoutCleanup)
  {
    m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    if (m_table)
    {
      v10 = *(m_table - 1);
      if (!v10)
      {
LABEL_17:
        v16 = *(m_table - 1);
        if (6 * *(m_table - 3) < v16 && v16 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
          m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
          if (!m_table)
          {
            goto LABEL_25;
          }
        }

        else
        {
          self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
        }

        LODWORD(m_table) = *(m_table - 3);
        if (m_table > 0x7FFFFFFE)
        {
          v18 = -2;
          goto LABEL_27;
        }

LABEL_25:
        v18 = 2 * m_table;
LABEL_27:
        self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v18;
        goto LABEL_28;
      }

      v11 = 0;
      v12 = &m_table[4 * v10 - 4];
      do
      {
        if (*v12 != -1 && *v12 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v12))
        {
          v14 = *v12;
          *v12 = 0;
          if (v14)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v14, v13);
          }

          *v12 = -1;
          ++v11;
        }

        v12 -= 2;
        --v10;
      }

      while (v10);
      m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      if (v11)
      {
        v15 = *(m_table - 3) - v11;
        *(m_table - 4) += v11;
        *(m_table - 3) = v15;
        goto LABEL_17;
      }

      if (m_table)
      {
        goto LABEL_17;
      }
    }

    LODWORD(m_table) = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_25;
  }

LABEL_28:
  v19 = *(task + 1);
  if (v19)
  {
    goto LABEL_64;
  }

  v20 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(task + 1, v19);
  if (!WTF::ThreadSafeWeakPtrControlBlock::weakRefCount(v20))
  {
    goto LABEL_64;
  }

  v22 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(task + 1, v21);
  v23 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v22);
  v25 = v23;
  v26 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (!v26)
  {
    v29 = 0;
    goto LABEL_44;
  }

  v27 = *(v26 - 2);
  v28 = WTF::PairHash<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>::hash(v23, task) & v27;
  v29 = &v26[4 * v28];
  v30 = *v29;
  v31 = *(v29 + 1);
  if (*v29 == v25 && v31 == task)
  {
LABEL_44:
    if (!v25)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v33 = 1;
  while (v30 | v31)
  {
    v28 = (v28 + v33) & v27;
    v29 = &v26[4 * v28];
    v30 = *v29;
    v31 = *(v29 + 1);
    ++v33;
    if (*v29 == v25 && v31 == task)
    {
      goto LABEL_44;
    }
  }

  v29 = &v26[4 * *(v26 - 1)];
  if (v25)
  {
LABEL_45:
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v25, v24);
    v26 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  }

LABEL_46:
  if (v26)
  {
    v35 = &v26[4 * *(v26 - 1)];
  }

  else
  {
    v35 = 0;
  }

  if (v35 != v29)
  {
    WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v29);
    v37 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    if (v37)
    {
      v38 = &v37[16 * *(v37 - 1)];
      if (v38 == v29)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (!v29)
      {
        goto LABEL_64;
      }

      v38 = 0;
    }

    if (v38 != v29)
    {
      v39 = *v29;
      *v29 = 0;
      if (v39)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v39, v36);
      }

      *v29 = -1;
      v40 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
      v41 = vadd_s32(v40[-2], 0xFFFFFFFF00000001);
      v40[-2] = v41;
      v42 = v40[-1].u32[1];
      if (6 * v41.i32[1] < v42 && v42 >= 9)
      {
        WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::rehash(&self->_assertionsNeedingBackgroundTask, v42 >> 1);
      }
    }
  }

LABEL_64:
  v44 = 1;
  atomic_compare_exchange_strong_explicit(p_m_lock, &v44, 0, memory_order_release, memory_order_relaxed);
  if (v44 != 1)
  {

    WTF::Lock::unlockSlow(p_m_lock);
  }
}

- (void)_notifyAssertionsOfImminentSuspension
{
  v3 = 0;
  v40 = 0;
  v41 = 0;
  p_m_lock = &self->_assertionsNeedingBackgroundTask.m_lock;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](&self->_assertionsNeedingBackgroundTask.m_lock, a2);
  }

  v42 = 0;
  v43 = 0;
  m_table = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (!m_table)
  {
    goto LABEL_11;
  }

  v6 = *(m_table - 3);
  if (v6)
  {
    v7 = (v6 >> 29);
    if (v7)
    {
      __break(0xC471u);
      return;
    }

    v8 = WTF::fastMalloc(v7, (8 * v6));
    LODWORD(v43) = v6;
    v42 = v8;
    v9 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    v10 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(v9);
    v11 = v10;
    v12 = a2;
    if (v9)
    {
      v13 = &v9[2 * *(v9 - 1)];
      if (v13 == v10)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (!v10)
      {
LABEL_32:
        v15 = 0;
LABEL_34:
        v42 = 0;
        LODWORD(v43) = 0;
        WTF::fastFree(v8, a2);
        goto LABEL_35;
      }

      v13 = 0;
    }

    goto LABEL_14;
  }

  v14 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table);
  v13 = &m_table[4 * *(m_table - 1)];
  if (v13 == v14)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_35;
  }

  v11 = v14;
  v12 = a2;
  v8 = 0;
LABEL_14:
  v15 = 0;
  LODWORD(v16) = 0;
  do
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(&v45, *v11, *(v11 + 1));
    if (v45)
    {
      v44 = v45;
      if (v16 == v43)
      {
        v17 = WTF::Vector<WTF::Ref<WebCore::ApplePayError,WTF::RawPtrTraits<WebCore::ApplePayError>,WTF::DefaultRefDerefTraits<WebCore::ApplePayError>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v42, v16 + 1, &v44);
        v16 = HIDWORD(v43);
        v8 = v42;
        v18 = *v17;
        *v17 = 0;
        v8[v16] = v18;
      }

      else
      {
        v44 = 0;
        v8[v16] = v45;
      }

      LODWORD(v16) = v16 + 1;
      HIDWORD(v43) = v16;
      v19 = v44;
      v44 = 0;
      if (v19)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v19 + 8), a2);
      }
    }

    else
    {
      v15 = 1;
    }

    do
    {
      v11 += 4;
      if (v11 == v12)
      {
        break;
      }
    }

    while (*v11 == -1 || *v11 == 0);
  }

  while (v11 != v13);
  if (v43 <= v16)
  {
    goto LABEL_35;
  }

  if (v16)
  {
    LODWORD(v43) = v16;
    v42 = WTF::fastRealloc(v8, (8 * v16));
  }

  else if (v8)
  {
    goto LABEL_34;
  }

LABEL_35:
  v21 = v40;
  if (HIDWORD(v41))
  {
    v22 = 8 * HIDWORD(v41);
    v23 = v40;
    do
    {
      v24 = *v23;
      *v23 = 0;
      if (v24)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v24 + 8), a2);
      }

      v23 = (v23 + 8);
      v22 -= 8;
    }

    while (v22);
  }

  if (v21)
  {
    v40 = 0;
    LODWORD(v41) = 0;
    WTF::fastFree(v21, a2);
  }

  v40 = v42;
  v25 = v43;
  v42 = 0;
  v43 = 0;
  v41 = v25;
  WTF::Vector<WTF::Ref<WebKit::ProcessAndUIAssertion,WTF::RawPtrTraits<WebKit::ProcessAndUIAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAndUIAssertion>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v42, a2);
  v27 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if ((v15 & 1) == 0)
  {
LABEL_63:
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    if (!v27)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (!v27)
  {
    goto LABEL_61;
  }

  v28 = *(v27 - 1);
  if (!v28)
  {
    goto LABEL_56;
  }

  v29 = 0;
  v30 = &v27[4 * v28 - 4];
  do
  {
    if (*v30 != -1 && *v30 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v30))
    {
      v31 = *v30;
      *v30 = 0;
      if (v31)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v31, v26);
      }

      *v30 = -1;
      ++v29;
    }

    v30 -= 2;
    --v28;
  }

  while (v28);
  v27 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
  if (v29)
  {
    v32 = *(v27 - 3) - v29;
    *(v27 - 4) += v29;
    *(v27 - 3) = v32;
    goto LABEL_56;
  }

  if (!v27)
  {
LABEL_61:
    LODWORD(v27) = 0;
    self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
    goto LABEL_65;
  }

LABEL_56:
  v33 = *(v27 - 1);
  if (6 * *(v27 - 3) < v33 && v33 > 8)
  {
    WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(&self->_assertionsNeedingBackgroundTask);
    v27 = self->_assertionsNeedingBackgroundTask.m_set.m_impl.m_table;
    goto LABEL_63;
  }

  self->_assertionsNeedingBackgroundTask.m_operationCountSinceLastCleanup = 0;
LABEL_64:
  LODWORD(v27) = *(v27 - 3);
  if (v27 > 0x7FFFFFFE)
  {
    v35 = -2;
    goto LABEL_67;
  }

LABEL_65:
  v35 = 2 * v27;
LABEL_67:
  self->_assertionsNeedingBackgroundTask.m_maxOperationCountWithoutCleanup = v35;
  v36 = 1;
  atomic_compare_exchange_strong_explicit(&self->_assertionsNeedingBackgroundTask.m_lock, &v36, 0, memory_order_release, memory_order_relaxed);
  if (v36 != 1)
  {
    WTF::Lock::unlockSlow(p_m_lock);
  }

  if (HIDWORD(v41))
  {
    v37 = v40;
    v38 = 8 * HIDWORD(v41);
    do
    {
      v39 = *(*v37 + 176);
      if (v39)
      {
        (*(*v39 + 16))(v39);
      }

      v37 = (v37 + 8);
      v38 -= 8;
    }

    while (v38);
  }

  WTF::Vector<WTF::Ref<WebKit::ProcessAndUIAssertion,WTF::RawPtrTraits<WebKit::ProcessAndUIAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessAndUIAssertion>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v26);
}

- (void)_scheduleReleaseTask
{
  *self = &unk_1F1100B80;
  v2 = self[2];
  self[2] = 0;
  if (v2)
  {
  }

  return self;
}

- (void)_cancelPendingReleaseTask
{
  v7 = *MEMORY[0x1E69E9840];
  pendingTaskReleaseTask = self->_pendingTaskReleaseTask;
  if (pendingTaskReleaseTask)
  {
    v4 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - WKProcessAssertionBackgroundTaskManager: _cancelPendingReleaseTask because the application is foreground again", &v5, 0xCu);
      pendingTaskReleaseTask = self->_pendingTaskReleaseTask;
    }

    dispatch_block_cancel(pendingTaskReleaseTask);
    self->_pendingTaskReleaseTask = 0;
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    errorCopy = error;
    _os_log_error_impl(&dword_19D52D000, v6, OS_LOG_TYPE_ERROR, "WKProcessAssertionBackgroundTaskManager: FinishTaskInterruptable assertion was invalidated, error: %{public}@", &v7, 0xCu);
  }

  atomic_store(1u, &self->_backgroundTaskWasInvalidated);
}

- (void)_handleBackgroundTaskExpiration
{
  v13 = *MEMORY[0x1E69E9840];
  [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
  v4 = v3;
  v5 = qword_1ED641030;
  v6 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v8 = WTF::RunLoop::mainSingleton(v6);
    LODWORD(v10) = 67109376;
    HIDWORD(v10) = WTF::RunLoop::isCurrent(v8);
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_19D52D000, v5, OS_LOG_TYPE_DEFAULT, "WKProcessAssertionBackgroundTaskManager: Background task expired while holding WebKit ProcessAssertion (isMainThread=%d, remainingTime=%g).", &v10, 0x12u);
  }

  v9 = WTF::fastMalloc(v7, 0x10);
  *v9 = &unk_1F1100BD0;
  v9[1] = self;
  v10 = v9;
  WTF::callOnMainRunLoopAndWait();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }
}

- (void)_handleBackgroundTaskExpirationOnMainThread
{
  *self = &unk_1F1100BF8;
  v2 = self[2];
  self[2] = 0;
  if (v2)
  {
  }

  return self;
}

- (void)_releaseBackgroundTask
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(WKProcessAssertionBackgroundTaskManager *)self _hasBackgroundTask])
  {
    v3 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - WKProcessAssertionBackgroundTaskManager: endBackgroundTask", &v10, 0xCu);
    }

    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
    if (v6 != *MEMORY[0x1E69C7698])
    {
      WebKit::WebProcessPool::notifyProcessPoolsApplicationIsAboutToSuspend(v4, v5);
      m_ptr = self->m_processStateMonitor.m_ptr;
      if (m_ptr)
      {
        v8 = (m_ptr + 8);
        ++*(m_ptr + 2);
        WebKit::ProcessStateMonitor::processWillBeSuspendedImmediately(m_ptr);
        WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(v8);
      }
    }

    [(RBSAssertion *)self->_backgroundTask.m_ptr removeObserver:self];
    [(RBSAssertion *)self->_backgroundTask.m_ptr invalidate];
    v9 = self->_backgroundTask.m_ptr;
    self->_backgroundTask.m_ptr = 0;
    if (v9)
    {
    }
  }
}

- (void)setProcessStateMonitorEnabled:(BOOL)enabled
{
  m_ptr = self->m_processStateMonitor.m_ptr;
  if (enabled)
  {
    if (!m_ptr)
    {
      v5 = WTF::fastMalloc(0, 0x10);
      *v5 = &unk_1F1100C20;
      v10 = v5;
      if (WebKit::ProcessStateMonitor::s_heapRef)
      {
        NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessStateMonitor::s_heapRef, v6);
      }

      else
      {
        NonCompact = WebKit::ProcessStateMonitor::operatorNewSlow(0x50);
      }

      v8 = NonCompact;
      WebKit::ProcessStateMonitor::ProcessStateMonitor(NonCompact, &v10);
      v9 = self->m_processStateMonitor.m_ptr;
      self->m_processStateMonitor.m_ptr = v8;
      if (v9)
      {
        WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(v9 + 1);
      }

      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }
  }

  else
  {
    self->m_processStateMonitor.m_ptr = 0;
    if (m_ptr)
    {

      WTF::RefCounted<WebKit::ProcessStateMonitor>::deref(m_ptr + 1);
    }
  }
}

- (uint64_t)_scheduleReleaseTask
{
  *this = &unk_1F1100B80;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)_updateBackgroundTask
{
  result = WTF::ThreadSafeWeakHashSet<WebKit::ProcessAndUIAssertion>::isEmptyIgnoringNullReferences((*(self + 8) + 24));
  if (result)
  {
    v3 = *(self + 8);

    return [v3 _releaseBackgroundTask];
  }

  return result;
}

- (uint64_t)_handleBackgroundTaskExpirationOnMainThread
{
  *this = &unk_1F1100BF8;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
  }

  return WTF::fastFree(this, a2);
}

- (uint64_t)setProcessStateMonitorEnabled:(uint64_t)enabled
{
  v2 = a2;
  WebKit::WebProcessPool::allProcessPools(&v7);
  if (v8)
  {
    v4 = v7;
    v5 = 8 * v8;
    do
    {
      WebKit::WebProcessPool::setProcessesShouldSuspend(*v4++, v2);
      v5 -= 8;
    }

    while (v5);
  }

  return WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v3);
}

@end