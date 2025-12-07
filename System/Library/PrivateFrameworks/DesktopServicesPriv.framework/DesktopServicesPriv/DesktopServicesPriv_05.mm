uint64_t TOperation::IsMigration(uint64_t a1, TDSOperationRecord **a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (TDSOperationRecord::GetRequestedOperation(*a2) == 2)
  {
    goto LABEL_3;
  }

  if (TDSOperationRecord::GetRequestedOperation(*a2) != 3)
  {
    return 0;
  }

  TDSOperationRecord::GetResolvedDestination(&v9, *a2);
  if (!TNodeFromFINode(v9))
  {

    return 0;
  }

  TDSOperationRecord::GetSource(&v8, *a2);
  TDSOperationRecord::GetResolvedDestination(&v7, *a2);
  v5 = TNode::NodesOnSameVolume(&v8, &v7, v4);

  if (v5)
  {
    return 0;
  }

LABEL_3:
  if ((TDSOperationRecord::GetOperationOptions(*a2) & 0x80) != 0)
  {
    return 1;
  }

  TDSOperationRecord::GetSource(&v9, *a2);
  if (TNodeFromFINode(v9))
  {
    TNodeFromFINode(v9);
    v3 = IsRunningInFinder();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TOperation::Finalize(uint64_t this)
{
  v1 = *(this + 128);
  if (v1)
  {
    if (*(v1 + 32))
    {
      *(v1 + 32) = 0;
    }
  }

  return this;
}

double TOperation::CleanupAll(TOperation *this, OperationIterator *a2, __n128 a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    TOperation::GetFirstOperationRecordForIterator(*(this + 10), a2, &v11);
    a3 = v11;
    v11 = 0uLL;
    v5 = *(this + 13);
    *(this + 6) = a3;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (v11.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11.n128_u64[1]);
      }

      for (i = *(this + 12); i; i = *(this + 12))
      {
        while (1)
        {
LABEL_8:
          if (TDSOperationRecord::GetResolution(i) != 1)
          {
            v8 = *(this + 13);
            v11.n128_u64[0] = *(this + 12);
            v11.n128_u64[1] = v8;
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            (*(*this + 176))(this, &v11);
            if (v11.n128_u64[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11.n128_u64[1]);
            }
          }

          TOperation::GetNextOperationRecordForIterator(v3, v7, &v11);
          a3 = v11;
          v11 = 0uLL;
          v9 = *(this + 13);
          *(this + 6) = a3;
          if (v9)
          {
            break;
          }

          i = a3.n128_u64[0];
          if (!a3.n128_u64[0])
          {
            return a3.n128_f64[0];
          }
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (v11.n128_u64[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11.n128_u64[1]);
        }
      }
    }

    else
    {
      i = a3.n128_u64[0];
      if (a3.n128_u64[0])
      {
        goto LABEL_8;
      }
    }
  }

  return a3.n128_f64[0];
}

void sub_1E56CFEB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOperation::ValidateCurrentRecordConflicts(TDSOperationRecord **this)
{
  Conflict = TDSOperationRecord::GetConflict(this[12]);
  Resolution = TDSOperationRecord::GetResolution(this[12]);
  if (Conflict)
  {
    v4 = (Resolution & 0xFFFFFFFB) == 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v6 = Resolution;
  v5 = 0;
  if (Conflict)
  {
    v7 = Resolution == 13 || Resolution == 7;
    if (!v7 && (Resolution & 0xFFFFFFF6) != 2)
    {
      TDSOperationRecord::SetResolution(this[12], 1);
      v5 = 4294959224;
    }
  }

  if (((Conflict & 6) != 0 || (Conflict & 8) != 0) && v6 != 3)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x100) != 0 && v6 != 4)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x200) != 0 && v6 != 4 && v6 != 13 && v6 != 2 && (*(this + 2378) & 1) == 0)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x2000) != 0 && v6 != 6)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x8000) != 0)
  {
    v9 = this[12];
    if (!v6)
    {
      TDSOperationRecord::GetOperationOptions(v9);
      if ((Conflict & 0x800000) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    TDSOperationRecord::SetResolution(v9, 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x800000) != 0)
  {
LABEL_36:
    if (v6 != 13 && v6 != 8 && (v6 - 4) <= 0xFFFFFFFD)
    {
      TDSOperationRecord::SetResolution(this[12], 1);
      v5 = 4294959224;
    }
  }

LABEL_40:
  if ((Conflict & 0x1000000) != 0 && v6 != 9)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    v5 = 4294959224;
  }

  if ((Conflict & 0x1F5CF0) != 0)
  {
    TDSOperationRecord::SetResolution(this[12], 1);
    return 4294959224;
  }

  return v5;
}

void TOperation::ActualTargetName(uint64_t a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v6, *a2);
  v2 = TNodeFromFINode(v6);
  v3 = TNode::InfoLock(v2);
  os_unfair_lock_lock(v3);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v3);
  TFSInfo::LogicalName(v5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1E56D0114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t TOperation::AcquireSourceLock(uint64_t a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v5.fFINode, *a2);
  v3 = TLockManager::AcquireWriteLock((a1 + 2584), &v5);

  return v3;
}

IOPMAssertionID *StPowerAssertion::StPowerAssertion(IOPMAssertionID *a1, uint64_t a2)
{
  *a1 = 0;
  v3 = StPowerAssertion::AssertionName(a2);
  if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v3, a1))
  {
    *a1 = 0;
  }

  return a1;
}

__CFString *StPowerAssertion::AssertionName(int a1)
{
  if ((a1 - 1) > 0x15)
  {
    return @"com.apple.finder.operation";
  }

  else
  {
    return off_1E877ECB0[a1 - 1];
  }
}

void StPowerAssertion::~StPowerAssertion(IOPMAssertionID *this)
{
  v1 = *this;
  if (v1)
  {
    IOPMAssertionRelease(v1);
  }
}

void TLockManager::~TLockManager(TLockManager *this)
{
  TLockManager::ReleaseLocks(this);
  v2 = (this + 24);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void *std::vector<std::pair<TNodePtr,TNodePtr>>::push_back[abi:ne200100](void *a1, id *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<std::pair<TNodePtr,TNodePtr>>::__emplace_back_slow_path<std::pair<TNodePtr,TNodePtr> const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    v4[1] = a2[1];
    result = v4 + 2;
  }

  a1[1] = result;
  return result;
}

uint64_t TLockManager::AcquireWriteLockHoldingLock(TLockManager *this, const TNodePtr *a2)
{
  v4 = TNodeFromFINode(a2->fFINode);
  if (TNode::Writers(v4) && ((v5 = TNodeFromFINode(a2->fFINode), !TNode::GetWriteOperation(v5)) || (v6 = TNodeFromFINode(a2->fFINode), TNode::GetWriteOperation(v6) == this)))
  {
LABEL_15:
    v17 = TNodeFromFINode(a2->fFINode);
    v18 = TNode::ParentLock(v17);
    os_unfair_lock_lock(v18);
    TNodePtr::TNodePtr(&v32, *(v17 + 48));
    os_unfair_lock_unlock(v18);
    while (TNodeFromFINode(v32))
    {
      v19 = TNodeFromFINode(v32);
      v20 = TNode::Readers(v19);
      v21 = TNodeFromFINode(v32);
      v22 = TNode::ParentLock(v21);
      os_unfair_lock_lock(v22);
      TNodePtr::TNodePtr(&v34, *(v21 + 48));
      os_unfair_lock_unlock(v22);
      TNodePtr::operator=(&v32, &v34.fFINode);

      if (v20)
      {
        goto LABEL_18;
      }
    }

    v24 = TNodeFromFINode(a2->fFINode);
    v25 = TNode::ParentLock(v24);
    os_unfair_lock_lock(v25);
    TNodePtr::TNodePtr(&v34, *(v24 + 48));
    os_unfair_lock_unlock(v25);
    v26 = TNodeFromFINode(a2->fFINode);
    v23 = TNode::AddWriter(v26, this);
    if (!v23)
    {
      v32 = a2->fFINode;
      v33 = v34.fFINode;
      std::vector<std::pair<TNodePtr,TNodePtr>>::push_back[abi:ne200100](this, &v32);
      while (TNodeFromFINode(v34.fFINode))
      {
        v27 = TNodeFromFINode(v34.fFINode);
        TNode::IncrementReadersBelowBy(v27, 1);
        v28 = TNodeFromFINode(v34.fFINode);
        v29 = TNode::ParentLock(v28);
        os_unfair_lock_lock(v29);
        TNodePtr::TNodePtr(&v31, *(v28 + 48));
        os_unfair_lock_unlock(v29);
        TNodePtr::operator=(&v34.fFINode, &v31.fFINode);
      }
    }
  }

  else
  {
    v7 = TNodeFromFINode(a2->fFINode);
    if (!TNode::Readers(v7))
    {
      v8 = TNodeFromFINode(a2->fFINode);
      if (!TNode::ReadersBelow(v8))
      {
        v9 = TNodeFromFINode(a2->fFINode);
        if (!TNode::ChildWriters(v9))
        {
          v10 = TNodeFromFINode(a2->fFINode);
          v11 = TNode::ParentLock(v10);
          os_unfair_lock_lock(v11);
          TNodePtr::TNodePtr(&v32, *(v10 + 48));
          os_unfair_lock_unlock(v11);
          do
          {
            if (!TNodeFromFINode(v32))
            {

              goto LABEL_15;
            }

            v12 = TNodeFromFINode(v32);
            if (TNode::Writers(v12))
            {
              v13 = TNodeFromFINode(v32);
              v14 = TNode::GetWriteOperation(v13) == this;
            }

            else
            {
              v14 = 1;
            }

            v15 = TNodeFromFINode(v32);
            v16 = TNode::ParentLock(v15);
            os_unfair_lock_lock(v16);
            TNodePtr::TNodePtr(&v34, *(v15 + 48));
            os_unfair_lock_unlock(v16);
            TNodePtr::operator=(&v32, &v34.fFINode);
          }

          while (v14);
LABEL_18:
        }
      }
    }

    return 4294959221;
  }

  return v23;
}

uint64_t TRefCountPolicy<TOperation *>::Release(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = TRefCount::Release<int>((result + 72));
    if (result)
    {
      v2 = *(*v1 + 8);

      return v2(v1);
    }
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void StOperationReplyWaiter::StOperationReplyWaiter(StOperationReplyWaiter *this, TOperation *a2)
{
  *this = a2;
  *(this + 1) = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = *(this + 1);
  *(this + 1) = v4;

  TNodeEvent::Notify(*(this + 1), v6);
  *(*(a2 + 16) + 32) = v7;
}

void ___ZZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeENK3__0cvU13block_pointerFvP7NSErrorEEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  block[0] = 0;
  block[1] = 0;
  TOperationErrorRecord::Make(v4, 0, 0, block, 1, v3);
}

void sub_1E56D0B5C(_Unwind_Exception *a1, uint64_t a2, char a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, TPropertyValue *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_semaphore_t a20)
{
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v22 + 8));
  StOperationReplyWaiter::~StOperationReplyWaiter(&a20);

  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v23 - 72));
  _Unwind_Resume(a1);
}

void sub_1E56D0C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  JUMPOUT(0x1E56D0C38);
}

uint64_t __copy_helper_block_ea8_32c86_ZTSKZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeE3__0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 32) = v2;
  v3 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c86_ZTSKZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeE3__0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

TOperationErrorRecord *__copy_helper_block_ea8_32c107_ZTSKZZN10TOperation24PreflightFPOperationBulkEP17FPActionOperation13OperationTypeENK3__0clEP7NSErrorEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = result;
  if (result)
  {
    return TOperationErrorRecord::AddPtrReference(result);
  }

  return result;
}

id MutableCopy<NSDictionary<NSString *,objc_object *>>(void *a1)
{
  v1 = [a1 mutableCopy];
  v2 = static_objc_cast<NSString,objc_object * {__strong}>(v1);

  return v2;
}

uint64_t std::vector<std::pair<TNodePtr,TNodePtr>>::__emplace_back_slow_path<std::pair<TNodePtr,TNodePtr> const&>(void *a1, id *a2)
{
  v2 = (a1[1] - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<std::pair<TNodePtr,TNodePtr>>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  v8[1] = a2[1];
  *&v17 = v8 + 2;
  v9 = a1[1];
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(&v15);
  return v14;
}

void sub_1E56D0E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::pair<TNodePtr,TNodePtr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E877EB40, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v7 = a4;
    v8 = a2;
    do
    {
      TNodePtr::TNodePtr(v7, v8);
      TNodePtr::TNodePtr(v7 + 1, v8 + 1);
      v8 += 2;
      v7 = v13 + 2;
      v13 += 2;
    }

    while (v8 != a3);
  }

  v11 = 1;
  std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*,std::pair<TNodePtr,TNodePtr>*>(a1, a2, a3);
  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::pair<TNodePtr,TNodePtr>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>>(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void std::__allocator_destroy[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodePtr>>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>,std::reverse_iterator<std::pair<TNodePtr,TNodePtr>*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {

      v7 = *(v6 - 16);
      v6 -= 16;
    }

    while (v6 != a5);
  }
}

TOperationErrorRecord **TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(TOperationErrorRecord **a1)
{
  v2 = *a1;
  if (v2)
  {
    TOperationErrorRecord::RemovePtrReference(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::pair<std::shared_ptr<TDSOperationRecord> const,TMergeConflictRecord>::~pair(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::pair<std::shared_ptr<TDSOperationRecord> const,TMergeConflictRecord>::~pair(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[8];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,TRecordProgress>>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t TReferenceCounted::TReferenceCounted<TOperation *>(uint64_t a1, int a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 1;
  *(a1 + 24) = &unk_1F5F3CF40;
  *(a1 + 48) = a1 + 24;
  if (a3)
  {
    TRefCount::Retain<int>((a3 + 72));
  }

  return a1;
}

uint64_t std::__function::__func<TReferenceCounted::TReferenceCounted<TOperation *>(RefCountedType,TOperation *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TOperation *>(RefCountedType,TOperation *)::{lambda(void *)#1}>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__invoke_void_return_wrapper<void,true>::__call[abi:ne200100]<TReferenceCounted::TReferenceCounted<TOperation *>(RefCountedType,TOperation *)::{lambda(void *)#1} &,void *>(uint64_t a1, unsigned int **a2)
{
  v2 = *a2;
  if (*a2 && TRefCount::Release<int>(v2 + 18))
  {
    v3 = *(*v2 + 8);

    v3(v2);
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

TReferenceCounted **TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>::operator=(TReferenceCounted **a1, uint64_t a2)
{
  if (a2)
  {
    TRefCount::Retain<int>((a2 + 16));
  }

  if (*a1)
  {
    TReferenceCounted::RemovePtrReference(*a1);
  }

  *a1 = a2;
  return a1;
}

const void **TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::__unordered_map_hasher<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,VolumeKeyHasher,std::equal_to<VolumeKey>,true>,std::__unordered_map_equal<VolumeKey,std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>,std::equal_to<VolumeKey>,VolumeKeyHasher,true>,std::allocator<std::__hash_value_type<VolumeKey,std::shared_ptr<TFSVolumeInfo>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<VolumeKey const,std::shared_ptr<TFSVolumeInfo>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::__destroy_at[abi:ne200100]<std::pair<VolumeKey const,std::shared_ptr<TFSVolumeInfo>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * const {__strong}&>,std::tuple<>>(void *a1, id *a2, uint64_t a3, id **a4)
{
  v6 = [*a2 hash];
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<FPItem * {__strong}>::operator()(a1, v13[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t std::equal_to<FPItem * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = [v4 isEqual:v5];
  }

  return v6;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t **std::__hash_table<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<NSURL * {__strong}>,std::equal_to<NSURL * {__strong}>,true>,std::__unordered_map_equal<NSURL * {__strong},std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<NSURL * {__strong}>,std::hash<NSURL * {__strong}>,true>,std::allocator<std::__hash_value_type<NSURL * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<NSURL * {__strong},std::piecewise_construct_t const&,std::tuple<NSURL * {__strong}&&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, uint64_t **a4)
{
  v6 = Hash(*a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 = (v14 % *&v8);
      }
    }

    else
    {
      v14 = (v14 & (*&v8 - 1));
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<NSURL * {__strong}>::operator()(a1, v13[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t std::equal_to<NSURL * {__strong}>::operator()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = IsEqual(v4, v5);
  }

  return v6;
}

uint64_t **std::__hash_table<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::__unordered_map_hasher<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::hash<FPItem * {__strong}>,std::equal_to<FPItem * {__strong}>,true>,std::__unordered_map_equal<FPItem * {__strong},std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>,std::equal_to<FPItem * {__strong}>,std::hash<FPItem * {__strong}>,true>,std::allocator<std::__hash_value_type<FPItem * {__strong},NSMutableArray<FPItem *> * {__strong}>>>::__emplace_unique_key_args<FPItem * {__strong},std::piecewise_construct_t const&,std::tuple<FPItem * {__strong}&&>,std::tuple<>>(void *a1, id *a2, uint64_t a3, uint64_t **a4)
{
  v6 = [*a2 hash];
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if ((std::equal_to<FPItem * {__strong}>::operator()(a1, v13[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t TReferenceCounted::TReferenceCounted<TOperationErrorRecord *>(uint64_t a1, int a2, TOperationErrorRecord *this)
{
  *a1 = a2;
  *(a1 + 8) = this;
  *(a1 + 16) = 1;
  *(a1 + 24) = &unk_1F5F3D090;
  *(a1 + 48) = a1 + 24;
  if (this)
  {
    TOperationErrorRecord::AddPtrReference(this);
  }

  return a1;
}

TOperationErrorRecord *std::__function::__func<TReferenceCounted::TReferenceCounted<TOperationErrorRecord *>(RefCountedType,TOperationErrorRecord *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TOperationErrorRecord *>(RefCountedType,TOperationErrorRecord *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, TOperationErrorRecord **a2)
{
  result = *a2;
  if (*a2)
  {
    return TOperationErrorRecord::RemovePtrReference(result);
  }

  return result;
}

uint64_t std::__function::__func<TReferenceCounted::TReferenceCounted<TOperationErrorRecord *>(RefCountedType,TOperationErrorRecord *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TOperationErrorRecord *>(RefCountedType,TOperationErrorRecord *)::{lambda(void *)#1}>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<BOOL>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3D110;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::__unordered_map_hasher<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::hash<std::shared_ptr<TDSOperationRecord>>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,true>,std::__unordered_map_equal<std::shared_ptr<TDSOperationRecord>,std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,std::equal_to<std::shared_ptr<TDSOperationRecord>>,std::hash<std::shared_ptr<TDSOperationRecord>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>>>::__emplace_unique_key_args<std::shared_ptr<TDSOperationRecord>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<TDSOperationRecord> const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<TDSOperationRecord>,TMergeConflictRecord>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[12];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v4 = __p[10];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = __p[3];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *_ZNSt3__120__shared_ptr_emplaceI10TCFURLInfoNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D160;
  TCFURLInfo::TCFURLInfo((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<TCFURLInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3D160;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

const void **std::__shared_ptr_emplace<TCFURLInfo>::__on_zero_shared(const void **a1)
{
  TFileDescriptor::~TFileDescriptor((a1 + 7));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(a1 + 6);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(a1 + 5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(a1 + 4);

  return TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(a1 + 3);
}

id DSArchiveServiceXPCInterface()
{
  v13[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F54A60];
  v1 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_archiveItemsWithURLWrappers_toURLWrapper_options_compressionFormat_passphrase_completionHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_archiveItemsWithURLWrappers_passphrase_addToKeychain_compressionFormat_destinationFolderURLWrapper_usePlaceholder_completionHandler_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_itemDescriptorsForItemWithURLWrapper_passphrases_completionHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1E56D28FC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id DSArchiveServiceStreamingXPCInterface()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F4D038];
  v1 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_receiveArchivedItemsDescriptors_placeholderName_placeholderTypeIdentifier_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_1E56D2A68(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E56D2C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void OperationsUpdatedHandler(__CFNotificationCenter *a1, void *a2, const __CFString *a3, const void *a4, const __CFDictionary *a5)
{
  v5 = static_objc_cast<DSFileServiceConnection,void *>(a2);
  [v5 _triggerReloadCurrentOperations];
}

void sub_1E56D2D84(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = DSFileServiceConnection;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1E56D357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id DSFileServiceXPCInterface(void)
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5F54AC0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_inProgressOperationsWithReply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1E56D4144(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

const char *Description(int a1)
{
  if ((a1 - 1) > 0x15)
  {
    return "kNoOperation";
  }

  else
  {
    return off_1E877EE50[a1 - 1];
  }
}

{
  if ((a1 + 1) > 0x18)
  {
    return "kNodeNoSuboperation";
  }

  else
  {
    return off_1E877EF00[a1 + 1];
  }
}

CFIndex FileSysOpUniqueNameProc(TString *a1, void *a2, id *a3, uint64_t *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  v9 = *a3;
  v10 = objc_cast<FISubOperation,objc_object * {__strong}>(v9);

  v11 = [v10 operation];
  if (v11)
  {
    v12 = LogObj(8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v23.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v23, a1);
      v13 = SanitizedStr(&v23);
      *buf = 138544130;
      v25 = v11;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v13;
      v30 = 2114;
      v31 = a2;
      _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_DEFAULT, "uniqueNameProc: %{public}@ %{public}@ - seedDisplayName: %{public}@, seedFileSuffix: %{public}@", buf, 0x2Au);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
    }

    v14 = [v10 nameConflictHandler];
    v15 = a1;
    v16 = a2;
    v22 = 0;
    v17 = (v14)[2](v14, v11, v15, v16, &v22);
    v18 = v22;

    *a4 = v17;
    v20 = TCFURLInfo::TranslateCFError(v18, v19);
  }

  else
  {
    v20 = 4294967168;
  }

  objc_autoreleasePoolPop(v8);
  return v20;
}

void sub_1E56D4AF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

id objc_cast<FISubOperation,objc_object * {__strong}>(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void TDesktopServicesHelperCopyMoveOperation::TDesktopServicesHelperCopyMoveOperation(void *a1, uint64_t *a2, TString *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a5;
  v11 = a6;
  TDSHelperOperation::TDSHelperOperation(a1, a2, a3, a4, v6);
}

void TDesktopServicesHelperCopyMoveOperation::~TDesktopServicesHelperCopyMoveOperation(TDesktopServicesHelperCopyMoveOperation *this)
{
  *this = &unk_1F5F3D210;
  v2 = (this + 3736);
  *(this + 467) = &unk_1F5F3D348;
  v3 = (this + 3944);
  TNodeEventPtrs::SendNotifications(this + 493);

  v4 = v3;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v4);
  TDSHelperContext::~TDSHelperContext(v2);
  TOperation::~TOperation(this);
}

{
  TDesktopServicesHelperCopyMoveOperation::~TDesktopServicesHelperCopyMoveOperation(this);

  JUMPOUT(0x1E692CD30);
}

void non-virtual thunk toTDesktopServicesHelperCopyMoveOperation::~TDesktopServicesHelperCopyMoveOperation(TDesktopServicesHelperCopyMoveOperation *this)
{
  TDesktopServicesHelperCopyMoveOperation::~TDesktopServicesHelperCopyMoveOperation((this - 3736));
}

{
  TDesktopServicesHelperCopyMoveOperation::~TDesktopServicesHelperCopyMoveOperation((this - 3736));

  JUMPOUT(0x1E692CD30);
}

void TDesktopServicesHelperCopyMoveOperation::HandleMsgFromHelper(uint64_t a1, const char *a2, void *a3)
{
  v5 = a3;
  if (!strcmp(a2, "ChildCreateLock_Reply") || !strcmp(a2, "RunCopyMoveOperation_Reply"))
  {
    TDSHelperContext::ReplyReceived(a1 + 3736, v5);
  }

  else
  {
    TDSHelperOperation::HandleMsgFromHelper(a1, a2, v5);
  }
}

int64_t TDesktopServicesHelperCopyMoveOperation::Move(TDesktopServicesHelperCopyMoveOperation *this, const TNodePtr *a2, const TNodePtr *a3, TString **a4, int a5, BOOL a6, char a7, TString *a8, BOOL *a9)
{
  v55 = *MEMORY[0x1E69E9840];
  TNodeFromFINode(a2->fFINode);
  if (IsRunningInFinder())
  {
    TNodeFromFINode(a2->fFINode);
    if (IsRunningInFinder())
    {
      v15 = 0;
    }

    else
    {
      v15 = -8091;
    }
  }

  else
  {
    v15 = 0;
  }

  TNodeFromFINode(a2->fFINode);
  if (IsRunningInFinder())
  {
    int64 = 4294959217;
  }

  else
  {
    int64 = v15;
  }

  *a9 = 0;
  if (int64)
  {
    return int64;
  }

  v17 = TNodeFromFINode(a2->fFINode);
  v18 = TNode::InfoLock(v17);
  os_unfair_lock_lock(v18);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v45 = v19;
  os_unfair_lock_unlock(v18);
  if (TFSInfo::IsLocked(v20))
  {
    int64 = 4294967251;
    goto LABEL_68;
  }

  if (IsRunningInFinder() & 1) != 0 || (TFSInfo::IsNoUnlinkEffective(v20, v21, v22))
  {
    int64 = 4294959217;
    goto LABEL_68;
  }

  v44 = *(this + 971);
  v23 = ((~v44 & 0x21000) != 0) & ~a5;
  if (v23 == 1)
  {
    v24 = TNodeFromFINode(a2->fFINode);
    TNode::GetVolumeInfo(buf, v24);
    v25 = TNodeFromFINode(a3->fFINode);
    v26 = TNode::InfoLock(v25);
    os_unfair_lock_lock(v26);
    v27 = *(v25 + 24);
    __p = *(v25 + 16);
    v49 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v26);
    LOBYTE(v23) = 1;
    int64 = TFSInfo::MoveAndRenameTo(v20, &__p, a4, a8);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (int64 == -54 || int64 == -5000)
    {
      v28 = TNodeFromFINode(a2->fFINode);
      if (TNode::IsContainer(v28))
      {
        TNodeFromFINode(a2->fFINode);
        if (IsRunningInFinder())
        {
          int64 = 4294959217;
        }

        else
        {
          int64 = int64;
        }
      }
    }

    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }

    if (int64 != -5000 && int64 != -54)
    {
      goto LABEL_68;
    }
  }

  v29 = TNodeFromFINode(a2->fFINode);
  TNode::Path(&theString, v29);
  v30 = TNodeFromFINode(a3->fFINode);
  TNode::Path(&v51, v30);
  if (CFStringGetLength(theString) && CFStringGetLength(v51))
  {
    v31 = TDSHelperContext::CreateMessageForHelper((this + 3736), "MoveAndRename");
    std::string::basic_string[abi:ne200100]<0>(buf, "sourcePath");
    v32 = TString::c_str(&theString);
    std::string::basic_string[abi:ne200100]<0>(&__p, v32);
    SetWrappedURL(v31, buf, &__p, 0);
    if (v50 < 0)
    {
      operator delete(__p);
    }

    if (v54 < 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(buf, "destinationPath");
    v33 = TString::c_str(&v51);
    std::string::basic_string[abi:ne200100]<0>(&__p, v33);
    SetWrappedURL(v31, buf, &__p, 1);
    if (v50 < 0)
    {
      operator delete(__p);
    }

    if (v54 < 0)
    {
      operator delete(*buf);
    }

    xpc_dictionary_set_BOOL(v31, "ApplyDoNotTranslocate", (*(this + 594) & 0x10) != 0);
    xpc_dictionary_set_BOOL(v31, "RemoveDoNotTranslocate", (*(this + 594) & 0x20) != 0);
    xpc_dictionary_set_BOOL(v31, "MovingAppWithKEXTs", a5);
    xpc_dictionary_set_BOOL(v31, "MovingToTrash", a6);
    if (a4)
    {
      v34 = TString::c_str(a4);
      xpc_dictionary_set_string(v31, "newName", v34);
    }

    xpc_dictionary_set_int64(v31, "options", (v44 >> 2) & 0x400 | (v44 >> 6) & 0x800);
    v35 = *(this + 496);
    if (v35 && [v35 bytes])
    {
      xpc_dictionary_set_data(v31, "scriptingAuditToken", [*(this + 496) bytes], objc_msgSend(*(this + 496), "length"));
    }

    if (!a4)
    {
      goto LABEL_56;
    }

    TString::Str(buf, a4);
    if ((v54 & 0x80000000) == 0)
    {
      v36 = buf;
      goto LABEL_54;
    }

    v36 = *buf;
    if (*&buf[8] < 0x401uLL)
    {
LABEL_54:
      xpc_dictionary_set_string(v31, "newName", v36);
      if (v54 < 0)
      {
        operator delete(*buf);
      }

LABEL_56:
      xpc_dictionary_set_uint64(v31, "processOptions", *(this + 971));
      int64 = TDSHelperContext::LaunchDesktopServicesHelper((this + 3736), (a5 | a7) | v23);
      if (!int64)
      {
        v39 = TDSHelperContext::SendMessageWithReplySync(this + 3736, v31);
        v40 = v39;
        int64 = 4294959293;
        if (v39 != MEMORY[0x1E69E9E20])
        {
          if (v39)
          {
            if (v39 != MEMORY[0x1E69E9E18])
            {
              int64 = xpc_dictionary_get_int64(v39, "errorStatus");
              if (!int64)
              {
                string = xpc_dictionary_get_string(v40, "resultPath");
                v42 = string;
                if (string && *string)
                {
                  *a9 = xpc_dictionary_get_BOOL(v40, "TranslocationChanged");
                  TString::operator=(a8, v42);
                  int64 = 0;
                }

                else
                {
                  int64 = 4294959236;
                }
              }
            }
          }
        }
      }

      goto LABEL_67;
    }

    operator delete(*buf);
  }

  else
  {
    v31 = LogObj(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v37 = SanitizedPath(&theString);
      v38 = SanitizedPath(&v51);
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      _os_log_impl(&dword_1E5674000, v31, OS_LOG_TYPE_ERROR, "Path is empty for source of move operation src=%{public}@ dst=%{public}@", buf, 0x16u);
    }
  }

  int64 = 4294959236;
LABEL_67:

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v51);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
LABEL_68:
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  return int64;
}

void sub_1E56D59F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a20);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a21);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::ReportRenameConflict(id **a1, TDSOperationRecord **a2)
{
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if ((RequestedOperation - 2) < 2 || RequestedOperation == 22)
  {
    TDSOperationRecord::GetResolvedDestination(&v26, *a2);
    TDSOperationRecord::GetSource(&v25, *a2);
    TUniqueNamer::TUniqueNamer(v24, a1[16][7], 0);
    v6 = TNodeFromFINode(v25);
    TNode::DisplayNameWithoutDirectionalFormatting(&v23, v6);
    v7 = a2[1];
    v20 = *a2;
    v21 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
    }

    ((*a1)[32])(&v22, a1, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    TUniqueNamer::SetSeed(v24, &v23, &v22);
    do
    {
      v19.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      v8 = TUniqueNamer::NextUniqueName(v24, &v19);
      if (!v8)
      {
        v18.fFINode = 0;
        if (!TNodeFromFINode(0))
        {
          v9 = TNodeFromFINode(v26.fFINode);
          TNode::FindChild(&v20, v9, &v19, 0, 0);
          TNodePtr::operator=(&v18.fFINode, &v20);
        }

        if (TNodeFromFINode(v18.fFINode))
        {
          v8 = 4294967248;
        }

        else
        {
          v8 = TNodeFromFINode(v26.fFINode);
          v17 = v25;
          v20 = 0;
          v21 = 0;
          LODWORD(v8) = TNode::CreateNewChildLockItem(v8, a1, a2, &v19, &v17, &v20, &v18);
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (v8)
          {
            if (v8 == -8011)
            {
              v8 = 4294967248;
            }

            else
            {
              v8 = v8;
            }
          }

          else
          {
            TDSOperationRecord::SetTargetName(*a2, &v19);
            TDSOperationRecord::SetTargetNode(*a2, &v18);
            v8 = TOperation::AcquireWriteLock(a1, &v18);
          }
        }
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
    }

    while (v8 == -48);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
    TUniqueNamer::~TUniqueNamer(v24);

    fFINode = v26.fFINode;
  }

  else
  {
    if (RequestedOperation != 1)
    {
      return 0;
    }

    TDSOperationRecord::GetSource(v24, *a2);
    v8 = TDesktopServicesHelperCopyMoveOperation::RenameAndMove(a1, a2);
    TNodeEventPtrs::SendNotifications(a1 + 493);
    fFINode = v24[0];
  }

  if (v8)
  {
    TDSOperationRecord::SetResolution(*a2, 1);
    TDSOperationRecord::GetTargetNode(v24, *a2);
    v11 = TNodeFromFINode(v24[0]);

    if (v11)
    {
      TDSOperationRecord::GetResolvedDestination(v24, *a2);
      TDSOperationRecord::GetTargetNode(&v20, *a2);
      v12 = TNodeFromFINode(v24[0]);
      v16 = v20;
      v13 = TNode::DeleteChildLockItem(v12, a1, a2, &v16, 1);

      if (!v13)
      {
        v14 = *a2;
        TNodePtr::TNodePtr(&v26, 0);
        TDSOperationRecord::SetTargetNode(v14, &v26);
      }
    }
  }

  return v8;
}

uint64_t TDesktopServicesHelperCopyMoveOperation::RenameAndMove(void *a1, CFTypeRef *a2)
{
  TDSOperationRecord::GetResolvedDestination(&v19, *a2);
  TDSOperationRecord::GetSource(&v18, *a2);
  v4 = TNodeFromFINode(v18);
  v5 = TNode::ParentLock(v4);
  os_unfair_lock_lock(v5);
  TNodePtr::TNodePtr(&v17, *(v4 + 48));
  os_unfair_lock_unlock(v5);
  v6 = a2[1];
  cf = *a2;
  v13 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 256))(&v16, a1, &cf);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v15.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (!CFStringGetLength(v15.fString.fRef))
  {
    v7 = TNodeFromFINode(v18);
    TNode::DisplayNameWithoutDirectionalFormatting(&v14, v7);
    SlashesToColons(&cf, &v14);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v15.fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
  }

  TUniqueNamer::TUniqueNamer(&cf, *(a1[16] + 56), 0);
  TUniqueNamer::SetSeed(&cf, &v15, &v16);
  TDSOperationRecord::SetResolution(*a2, 3);
  while (1)
  {
    v14.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v8 = TUniqueNamer::NextUniqueName(&cf, &v14);
    if (!v8)
    {
      TDSOperationRecord::SetTargetName(*a2, &v14);
      TDSOperationRecord::GetSource(&v11, *a2);
      v9 = TNodeFromFINode(v11);
      v8 = TNode::Move(v9, &v19, *a2, a1, (a1 + 493), &v16);

      if (!v8)
      {
        break;
      }
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
    if (v8 != -48)
    {
      goto LABEL_15;
    }
  }

  TDSOperationRecord::SetTargetName(*a2, &v14);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v14.fString.fRef);
  v8 = 0;
LABEL_15:
  TUniqueNamer::~TUniqueNamer(&cf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v15.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);

  return v8;
}

void sub_1E56D6174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v5 - 80));
  TUniqueNamer::~TUniqueNamer(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v5 - 72));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v5 - 64));

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::AllowResumableCopy(TDesktopServicesHelperCopyMoveOperation *this)
{
  result = IsRunningInFinder();
  if (result)
  {
    return *(this + 30) != 3 && (TOperation::Options(this) & 0x40) == 0;
  }

  return result;
}

uint64_t TDesktopServicesHelperCopyMoveOperation::ChildCreateLock(void *a1, char *a2, char *a3, const char *a4, uint64_t a5, uint64_t a6, char *a7, BOOL *a8)
{
  v10 = a6;
  *a8 = 0;
  (*(*a1 + 264))(a1);
  result = TDSHelperContext::LaunchDesktopServicesHelper((a1 + 467), 0);
  if (!result)
  {
    return TDSHelperContext::ChildCreateLock((a1 + 467), a2, a3, a4, a5, v10, a7, a8);
  }

  return result;
}

uint64_t TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(int *a1, uint64_t a2, const TString *a3, FINode **a4, void **a5, __CFString *a6)
{
  LOBYTE(a6->isa) = 0;
  v9 = TNodeFromFINode(*a4);
  v10 = TNode::InfoLock(v9);
  os_unfair_lock_lock(v10);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v10);
    v13 = *(v12 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (v13)
    {
      return 4294959238;
    }
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (*(v12 + 120))
    {
      return 4294959238;
    }
  }

  v15 = *(a2 + 8);
  v20 = *a2;
  v21 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  TOperation::IsMigration(a1, &v20);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  TDSOperationRecord::MaterializeFPItem(&v24, *a2);
  v16 = TNodeFromFINode(v24);
  TNode::Path(&v23, v16);
  if (CFStringGetLength(v23.fString.fRef))
  {
    v17 = TNodeFromFINode(*a4);
    TNode::Path(&v22, v17);
    if (CFStringGetLength(v22.fString.fRef))
    {
      v18 = TNodeFromFINode(*a4);
      TNode::GetVolumeInfo(&v20, v18);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      TNodeFromFINode(v24);
      IsRunningInFinder();
      _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v14 = 4294959236;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v22.fString.fRef);
  }

  else
  {
    v14 = 4294959236;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);

  return v14;
}

void sub_1E56D67FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, TOperation *a28, char a30)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_2::~$_2(&a14);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&a28);
  TFileCoordinationRecord::~TFileCoordinationRecord(&a30, v33);

  TAutoRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>::~TAutoRef((v31 - 160));
  v34 = *(v31 - 144);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(v31 - 120);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v31 - 112));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v31 - 104));

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_1::operator()(TOperation **a1)
{
  v2 = *a1;
  v3 = *(v2 + 30);
  v4 = v3 > 0x16;
  v5 = (1 << v3) & 0x40001A;
  if (!v4 && v5 != 0)
  {
    return TOperation::Options(v2) | 0x4000;
  }

  return TOperation::Options(v2);
}

void TString::TString(TString *this, const TString *a2)
{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(this, a2->fString.fRef);
}

{
  this->fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(this, a2->fString.fRef);
}

id TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_2::operator void({block_pointer})(NSURL *)(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v3[2] = ___ZZN39TDesktopServicesHelperCopyMoveOperation17CreateNewLockItemERKNSt3__110shared_ptrI18TDSOperationRecordEERK7TStringRK8TNodePtrRS9_RbENK3__2cvU13block_pointerFvP5NSURLEEv_block_invoke;
  v3[3] = &__block_descriptor_128_ea8_32c144_ZTSKZN39TDesktopServicesHelperCopyMoveOperation17CreateNewLockItemERKNSt3__110shared_ptrI18TDSOperationRecordEERK7TStringRK8TNodePtrRS9_RbE3__2_e15_v16__0__NSURL_8l;
  TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_2::$_2(v4, a1);
  v1 = MEMORY[0x1E692D6D0](v3);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(v4);

  return v1;
}

id TNode::GetFPItem(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  v5 = TFSInfo::GetFPItem(v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v5;
}

void sub_1E56D6B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

TOperation **TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_2::~$_2(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 48));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 32));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(a1);
}

int64_t TDesktopServicesHelperCopyMoveOperation::DeleteLockItem(void ***a1, TDSOperationRecord **a2, FINode **a3, FINode **a4)
{
  v7 = TNodeFromFINode(*a3);
  v8 = TNode::InfoLock(v7);
  os_unfair_lock_lock(v8);
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (!v9)
  {
    os_unfair_lock_unlock(v8);
    if (!*(v10 + 120))
    {
      goto LABEL_5;
    }

    return 4294959238;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock(v8);
  v11 = *(v10 + 120);
  std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  if (v11)
  {
    return 4294959238;
  }

LABEL_5:
  v12 = TNodeFromFINode(*a4);
  TNode::HandleSync(v12, 268959744, a1 + 493);
  v13 = TNodeFromFINode(*a4);
  if (!TNode::LowLevelIsLockFile(v13))
  {
    return 4294959238;
  }

  if (((*a1)[33])(a1))
  {
    v14 = TNodeFromFINode(*a4);
    v15 = TNode::InfoLock(v14);
    os_unfair_lock_lock(v15);
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v18 = *(v17 + 123);
    os_unfair_lock_unlock((v17 + 108));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if ((v18 & 0x20) != 0)
    {
      v19 = TNodeFromFINode(*a4);
      if ((TNode::IsDeferredForSymlink(v19, TFSInfo::IsPackage, 0) & 1) == 0)
      {
        v20 = TNodeFromFINode(*a4);
        v21 = TNode::InfoLock(v20);
        os_unfair_lock_lock(v21);
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v21);
        os_unfair_lock_lock((v23 + 108));
        v24 = *(v23 + 127);
        os_unfair_lock_unlock((v23 + 108));
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if ((v24 & 0x800) != 0)
        {
          v32 = TNodeFromFINode(*a4);
          v33 = TNode::InfoLock(v32);
          os_unfair_lock_lock(v33);
          v35 = *(v32 + 16);
          v34 = *(v32 + 24);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v33);
          TFSInfo::ResetContainerIncompleteState(v35);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          return 4294959238;
        }
      }
    }
  }

  v25 = TNodeFromFINode(*a4);
  TNode::Path(&theString, v25);
  if (CFStringGetLength(theString))
  {
    v26 = TDSOperationRecord::NeedsAuthentication(*a2);
    IsMigration = TOperation::IsMigration(a1, a2);
    v28 = TString::c_str(&theString);
    v29 = TDSHelperContext::DeletePath((a1 + 467), v28, 1, 1);
    v30 = v29;
    if (v29 == -5000 || v29 == -54)
    {
      if (v26)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (!(v26 & 1 | ((IsMigration & 1) == 0)))
    {
LABEL_25:
      v31 = TString::c_str(&theString);
      v30 = TDSHelperContext::DeletePath((a1 + 467), v31, 1, 1);
    }
  }

  else
  {
    v30 = 4294959236;
  }

LABEL_26:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  return v30;
}

void sub_1E56D6EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void TDesktopServicesHelperCopyMoveOperation::ActualTargetName(uint64_t a1@<X0>, TDSOperationRecord **a2@<X1>, TString *a3@<X8>)
{
  TDSOperationRecord::GetSource(&v14, *a2);
  TDSOperationRecord::TargetName(*a2, a3);
  if (!CFStringGetLength(a3->fString.fRef) && ICloudDriveFPFSEnabled())
  {
    v6 = TNodeFromFINode(v14);
    v7 = TNode::InfoLock(v6);
    os_unfair_lock_lock(v7);
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    IsAppLibrary = TFSInfo::IsAppLibrary(v9);
    v11 = IsAppLibrary;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!IsAppLibrary)
    {
      goto LABEL_14;
    }

    v12 = TNodeFromFINode(v14);
    TNode::DisplayName(&cf, v12);
    if (&cf != a3)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a3->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

LABEL_14:
  if (!CFStringGetLength(a3->fString.fRef))
  {
    TOperation::ActualTargetName(a1, a2);
    if (&cf != a3)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&a3->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }
}

void sub_1E56D7060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v10);

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::CreateLockItem(os_unfair_lock_s *a1, id *a2, FINode **a3, uint64_t a4)
{
  v8 = TNodeFromFINode(*a3);
  v9 = TNode::InfoLock(v8);
  os_unfair_lock_lock(v9);
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v9);
  IsDropBox = TFSInfo::IsDropBox(v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (IsDropBox)
  {
    return 0;
  }

  v14 = *(a4 + 8);
  v19 = *a4;
  v20 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*&a1->_os_unfair_lock_opaque + 256))(&v21, a1, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v18.fFINode = 0;
  v15 = TNodeFromFINode(*a3);
  v17 = *a2;
  v19 = 0;
  v20 = 0;
  v13 = TNode::CreateNewChildLockItem(v15, a1, a4, &v21, &v17, &v19, &v18);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (!v13)
  {
    TDSOperationRecord::SetTargetNode(*a4, &v18);
    v13 = TOperation::AcquireWriteLock(a1, &v18);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
  return v13;
}

void sub_1E56D7234(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, void *a8, void *a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::ReportErrorForNode(id *a1, TDSOperationRecord **a2, uint64_t a3, id *a4, uint64_t RequestedOperation)
{
  if (!TNodeFromFINode(*a4))
  {
    objc_storeStrong(a4, a1[315]);
    if (RequestedOperation)
    {
      goto LABEL_3;
    }

LABEL_11:
    RequestedOperation = TOperation::GetRequestedOperation(a1);
    goto LABEL_3;
  }

  if (!RequestedOperation)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (*a2 && TNodeFromFINode(*a4))
  {
    TDSOperationRecord::GetDestination(&obj, *a2);
    if (a3 <= -8015)
    {
      if (a3 != -8016)
      {
        if (a3 != -8015 || !TNodeFromFINode(obj))
        {
          goto LABEL_46;
        }

        goto LABEL_9;
      }

      v16 = TNodeFromFINode(*a4);
      v17 = TNode::GetFIProvider(v16);
      if (TNodeFromFINode(obj))
      {
        v18 = TNodeFromFINode(obj);
        v19 = TNode::GetFIProvider(v18);
        v20 = v19;
        v21 = v19 != 0;
        if (!v17 && v19)
        {
          v22 = obj;
          v23 = *a4;
          *a4 = v22;
LABEL_40:

LABEL_45:
          goto LABEL_46;
        }
      }

      else
      {
        v21 = 0;
        v20 = 0;
      }

      v33 = TNodeFromFINode(*a4);
      v34 = TNode::GetFIProvider(v33);
      v23 = v34;
      if ((!v34 || [v34 disconnectionState] == 1) && TNodeFromFINode(obj) != 0 && v21 && objc_msgSend(v20, "disconnectionState") != 1)
      {
        objc_storeStrong(a4, obj);
      }

      goto LABEL_40;
    }

    if (a3 != -8014)
    {
      if (a3 != -8013)
      {
        goto LABEL_46;
      }

      v10 = TNodeFromFINode(*a4);
      v11 = TNode::InfoLock(v10);
      os_unfair_lock_lock(v11);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v11);
      if (TFSInfo::IsDataless(v13, v14, v15))
      {
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        goto LABEL_46;
      }

      v28 = TNodeFromFINode(obj);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (!v28)
      {
        goto LABEL_46;
      }

      v29 = TNodeFromFINode(obj);
      TNode::GetFSInfo(&v38, v29);
      IsDataless = TFSInfo::IsDataless(v38, v30, v31);
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (!IsDataless)
      {
        goto LABEL_46;
      }

LABEL_9:
      objc_storeStrong(a4, obj);
LABEL_46:

      goto LABEL_47;
    }

    v24 = TNodeFromFINode(*a4);
    v25 = TNode::GetFIProvider(v24);
    v17 = [v25 domain];

    if (TNodeFromFINode(obj))
    {
      v26 = TNodeFromFINode(obj);
      v27 = TNode::GetFIProvider(v26);
      v20 = [v27 domain];

      if (!v17 && v20)
      {
LABEL_44:
        objc_storeStrong(a4, obj);
        goto LABEL_45;
      }
    }

    else
    {
      v20 = 0;
    }

    if (([v17 needsAuthentication] & 1) != 0 || !objc_msgSend(v20, "needsAuthentication"))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_47:
  v37 = *a4;
  v35 = TOperation::ReportErrorForNode(a1, a2, a3, &v37, RequestedOperation);

  return v35;
}

void sub_1E56D75C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t IsSourceInsideDestination(const TNodePtr *a1, const TNodePtr *a2)
{
  if (!TNodeFromFINode(a2->fFINode) || !TNodeFromFINode(a1->fFINode))
  {
    return 0;
  }

  v15 = a2->fFINode;
  while (1)
  {
    v4 = TNodeFromFINode(v15);
    v5 = TNode::ParentLock(v4);
    os_unfair_lock_lock(v5);
    TNodePtr::TNodePtr(&v14, *(v4 + 48));
    os_unfair_lock_unlock(v5);
    TNodePtr::operator=(&v15, &v14.fFINode);

    if (!TNodeFromFINode(v15))
    {
LABEL_11:
      v12 = 0;
      goto LABEL_14;
    }

    v6 = TNodeFromFINode(v15);
    if (v6 == TNodeFromFINode(a1->fFINode))
    {
      break;
    }

    v7 = TNodeFromFINode(v15);
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock((v10 + 108));
    v11 = *(v10 + 123);
    os_unfair_lock_unlock((v10 + 108));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if ((v11 & 0x100) != 0)
    {
      goto LABEL_11;
    }
  }

  v12 = 1;
LABEL_14:

  return v12;
}

void sub_1E56D7798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v10);

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::ResolveConflict(uint64_t a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v64.fFINode, *a2);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if (RequestedOperation != 5)
  {
    TDSOperationRecord::GetResolvedDestination(&v63, *a2);
    TDSOperationRecord::GetOriginalSourceParent(&v62, *a2);
    if (TNodeFromFINode(v64.fFINode) && TNodeFromFINode(v63.fFINode))
    {
      v6 = *a2;
      TNodePtr::TNodePtr(&v60, 0);
      TDSOperationRecord::SetTargetNode(v6, &v60);

      TDesktopServicesHelperCopyMoveOperation::CheckPermissions(a1, a2);
      v7 = TNodeFromFINode(v64.fFINode);
      v8 = TNode::InfoLock(v7);
      os_unfair_lock_lock(v8);
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v8);
      os_unfair_lock_lock((v10 + 108));
      v11 = *(v10 + 123);
      os_unfair_lock_unlock((v10 + 108));
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      if ((v11 & 0x8000) == 0)
      {
        if (RequestedOperation == 2 && (*(a1 + 3884) & 0x40) != 0)
        {
          if ((TDSOperationRecord::GetOperationOptions(*a2) & 4) == 0)
          {
            goto LABEL_26;
          }

          v12 = a2[1];
          v60.fFINode = *a2;
          v61 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          if (TOperation::CanAuthenticate(a1, &v60))
          {
            TDSOperationRecord::GetSource(&v56, *a2);
            if (TNodeFromFINode(v56))
            {
              TDSOperationRecord::GetSource(&v54, *a2);
              v13 = TNodeFromFINode(v54);
              IsLocalVolume = TNode::IsLocalVolume(v13);
            }

            else
            {
              IsLocalVolume = 0;
            }
          }

          else
          {
            IsLocalVolume = 0;
          }

          if (v61)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v61);
          }

          if ((IsLocalVolume & 1) == 0)
          {
LABEL_26:
            TDSOperationRecord::AddConflict(*a2, 2048);
            ++*(a1 + 88);
          }
        }

        v15 = TNodeFromFINode(v62);
        v16 = TNodeFromFINode(v63.fFINode);
        if (v15 == v16 && RequestedOperation != 22 && (*(a1 + 2376) & 0x10000) == 0)
        {
          if (RequestedOperation == 4)
          {
            TDesktopServicesHelperCopyMoveOperation::PerformMoveInSameParent(v16, a2);
            LockItem = 0;
          }

          else
          {
            TDSOperationRecord::AddConflict(*a2, 4);
            LockItem = 0;
            ++*(a1 + 88);
          }

          goto LABEL_138;
        }

        if (RequestedOperation == 22 || RequestedOperation == 1)
        {
          v17 = TNodeFromFINode(v64.fFINode);
          v18 = TNode::InfoLock(v17);
          os_unfair_lock_lock(v18);
          v20 = *(v17 + 16);
          v19 = *(v17 + 24);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v18);
          Type = TFSInfo::GetType(v20);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          if (Type == 1651666795 || (Type & 0xFFFFFFE0) == 0x627A7920)
          {
            TDSOperationRecord::AddConflict(*a2, 0x80000);
            ++*(a1 + 88);
          }

          if (IsSourceInsideDestination(&v64, &v63))
          {
            TDSOperationRecord::AddConflict(*a2, 16);
            ++*(a1 + 88);
            LockItem = 4294967174;
          }

          else
          {
            LockItem = 0;
          }

          if (!TDSOperationRecord::GetConflict(*a2))
          {
            LockItem = TDesktopServicesHelperCopyMoveOperation::PerformMove(a1, a2);
          }

          v22 = 1;
        }

        else
        {
          LockItem = TDesktopServicesHelperCopyMoveOperation::CreateLockItem(a1, &v64.fFINode, &v63.fFINode, a2);
          v22 = 0;
        }

        v23 = TNodeFromFINode(v64.fFINode);
        v24 = TNode::InfoLock(v23);
        os_unfair_lock_lock(v24);
        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v24);
        TFSInfo::Name(v26, &v60);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        TOperation::UpdateStatusCurrentItem(a1, &v60);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v60.fFINode);
        TOperation::ReportStatus(a1, 0);
        if (LockItem > -55)
        {
          if (LockItem > -46)
          {
            switch(LockItem)
            {
              case 0xFFFFFFD3:
                LODWORD(v60.fFINode) = 32;
                v34 = TNodeFromFINode(v64.fFINode);
                LockItem = 4294967251;
                if (!TNode::GetPermissions(v34, &v60) && LODWORD(v60.fFINode) == 32)
                {
                  TDSOperationRecord::AddConflict(*a2, 0x1000000);
                  ++*(a1 + 88);
                  TDSOperationRecord::SetResolution(*a2, 0);
                  LockItem = 0;
                }

                goto LABEL_135;
              case 0xFFFFFFDB:
                v27 = 0x10000;
                goto LABEL_87;
              case 0xFFFFFFDE:
                TDSOperationRecord::AddConflict(*a2, 64);
                ++*(a1 + 88);
                TDSOperationRecord::SetResolution(*a2, 0);
                goto LABEL_131;
            }

            goto LABEL_135;
          }

          if (LockItem == -54)
          {
LABEL_75:
            if ((TDSOperationRecord::GetOperationOptions(*a2) & 4) == 0)
            {
              goto LABEL_132;
            }

            v31 = a2[1];
            v60.fFINode = *a2;
            v61 = v31;
            if (v31)
            {
              atomic_fetch_add_explicit(v31 + 1, 1uLL, memory_order_relaxed);
            }

            if (TOperation::CanAuthenticate(a1, &v60))
            {
              TDSOperationRecord::GetSource(&v56, *a2);
              if (TNodeFromFINode(v56))
              {
                TDSOperationRecord::GetSource(&v54, *a2);
                v32 = TNodeFromFINode(v54);
                v33 = TNode::IsLocalVolume(v32);
              }

              else
              {
                v33 = 0;
              }
            }

            else
            {
              v33 = 0;
            }

            if (v61)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
            }

            if ((v33 & 1) == 0)
            {
LABEL_132:
              TDSOperationRecord::AddConflict(*a2, 2048);
              goto LABEL_133;
            }

LABEL_131:
            LockItem = 0;
            goto LABEL_137;
          }

          if (LockItem != -48)
          {
            goto LABEL_135;
          }
        }

        else
        {
          if (LockItem > -8008)
          {
            if (LockItem == -8007)
            {
              v27 = 2048;
              goto LABEL_87;
            }

            if (LockItem != -5000)
            {
              if (LockItem == -1410)
              {
                v27 = 0x20000;
LABEL_87:
                TDSOperationRecord::AddConflict(*a2, v27);
LABEL_133:
                LockItem = 0;
                ++*(a1 + 88);
                goto LABEL_137;
              }

              goto LABEL_135;
            }

            goto LABEL_75;
          }

          if (LockItem == -8012)
          {
            v27 = 1;
            goto LABEL_87;
          }

          if (LockItem != -8011)
          {
LABEL_135:
            if (LockItem)
            {
              TDSOperationRecord::SetResolution(*a2, 1);
            }

LABEL_137:
            if (v22)
            {
LABEL_140:
              if (!LockItem)
              {
                if (TOperation::CancelRequested(a1))
                {
                  LockItem = 4294967168;
                }

                else
                {
                  LockItem = 0;
                }
              }

              goto LABEL_144;
            }

LABEL_138:
            if (IsSourceInsideDestination(&v64, &v63))
            {
              TDSOperationRecord::AddConflict(*a2, 16);
              ++*(a1 + 88);
            }

            goto LABEL_140;
          }
        }

        v28 = a2[1];
        v60.fFINode = *a2;
        v61 = v28;
        if (v28)
        {
          atomic_fetch_add_explicit(v28 + 1, 1uLL, memory_order_relaxed);
        }

        (*(*a1 + 256))(&v59, a1, &v60);
        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        v29 = TNodeFromFINode(v63.fFINode);
        TNode::FindChild(&v58, v29, &v59, 0, 0);
        if (LockItem == -8011)
        {
          v30 = 0;
        }

        else if (TNodeFromFINode(v58))
        {
          v35 = TNodeFromFINode(v58);
          TNode::Name(v35, &v60);
          v30 = CFEqual(v59.fString.fRef, v60.fFINode) == 0;
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v60.fFINode);
        }

        else
        {
          v30 = 1;
        }

        if (TNodeFromFINode(v58))
        {
          v36 = TNodeFromFINode(v58);
          if ((TNode::IsVisible(v36) & 1) == 0)
          {
            TNodeFromFINode(v64.fFINode);
            if ((IsRunningInFinder() & 1) == 0 && (*(a1 + 2377) & 0x80) == 0)
            {
              LockItem = 4294959214;
              goto LABEL_134;
            }
          }
        }

        if (!TNodeFromFINode(v58))
        {
          goto LABEL_148;
        }

        v37 = TNodeFromFINode(v64.fFINode);
        TNode::GetVolumeInfo(&v60, v37);
        if (TFSVolumeInfo::CaseSensitive(v60.fFINode))
        {
          v38 = TNodeFromFINode(v63.fFINode);
          TNode::GetVolumeInfo(&v56, v38);
          v39 = (TFSVolumeInfo::CaseSensitive(v56) ^ 1) & v30;
          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }
        }

        else
        {
          v39 = 0;
        }

        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        if (v39)
        {
          TDSOperationRecord::AddConflict(*a2, 0x40000);
        }

        else
        {
LABEL_148:
          if (TNodeFromFINode(v58))
          {
            v40 = TNodeFromFINode(v64.fFINode);
            IsContainer = TNode::IsContainer(v40);
            v42 = TNodeFromFINode(v58);
            if (IsContainer == TNode::IsContainer(v42))
            {
              v43 = TNodeFromFINode(v64.fFINode);
              TNode::IsAlias(v43);
              v44 = TNodeFromFINode(v58);
              TNode::IsAlias(v44);
            }

            v45 = TNodeFromFINode(v64.fFINode);
            TNode::GetParent(&v55, v45);
            while (1)
            {
              if (!TNodeFromFINode(v55))
              {
                _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
              }

              v46 = TNodeFromFINode(v55);
              if (v46 == TNodeFromFINode(v58))
              {
                break;
              }

              v47 = TNodeFromFINode(v55);
              v48 = TNode::InfoLock(v47);
              os_unfair_lock_lock(v48);
              v50 = *(v47 + 16);
              v49 = *(v47 + 24);
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              os_unfair_lock_unlock(v48);
              os_unfair_lock_lock((v50 + 108));
              v51 = *(v50 + 123);
              os_unfair_lock_unlock((v50 + 108));
              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              if ((v51 & 0x100) != 0)
              {
                TNodePtr::TNodePtr(&v60, 0);
              }

              else
              {
                v52 = TNodeFromFINode(v55);
                TNode::GetParent(&v60, v52);
              }

              TNodePtr::operator=(&v55, &v60.fFINode);
            }

            TDSOperationRecord::AddConflict(*a2, 8);
            ++*(a1 + 88);

            LockItem = 0;
            goto LABEL_134;
          }

          if ((LockItem & 0xFFFFFFF4) != 0xFFFFE0B4)
          {
LABEL_134:

            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v59.fString.fRef);
            goto LABEL_135;
          }

          TDSOperationRecord::AddConflict(*a2, 1);
        }

        LockItem = 0;
        ++*(a1 + 88);
        goto LABEL_134;
      }

      LockItem = 4294962296;
    }

    else
    {
      LockItem = 4294959224;
    }

LABEL_144:

    goto LABEL_145;
  }

  LockItem = 0;
LABEL_145:

  return LockItem;
}

void sub_1E56D8318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, const void *a19, uint64_t a20, std::__shared_weak_count *a21, id a22)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a19);
  _Unwind_Resume(a1);
}

void TDesktopServicesHelperCopyMoveOperation::CheckPermissions(uint64_t a1, uint64_t *a2)
{
  TDSOperationRecord::GetSource(&v29, *a2);
  TDSOperationRecord::GetResolvedDestination(&v28, *a2);
  v27 = 0;
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if (RequestedOperation > 0x16)
  {
    goto LABEL_18;
  }

  if (((1 << RequestedOperation) & 0x40001A) == 0)
  {
    if (RequestedOperation != 2)
    {
      goto LABEL_18;
    }

    v9 = TNodeFromFINode(v28);
    TNode::GetVolumeInfo(&v25, v9);
    v8 = v26;
    v10 = *(v25 + 104) ? 0 : 0x10000;
    v27 = v10;
    if (!v26)
    {
      goto LABEL_18;
    }

LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    goto LABEL_18;
  }

  v5 = TNodeFromFINode(v29);
  TNode::GetVolumeInfo(&v25, v5);
  if (*(v25 + 104))
  {
    v27 = 0;
  }

  else
  {
    v6 = TNodeFromFINode(v28);
    TNode::GetVolumeInfo(&v23, v6);
    if (LOBYTE(v23[13].super.isa))
    {
      v7 = 0;
    }

    else
    {
      v7 = 2;
    }

    v27 = v7;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  v8 = v26;
  if (v26)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (!v27)
  {
    v16 = TDSOperationRecord::GetRequestedOperation(*a2);
    v17 = 2048;
    if (v16 <= 0x16)
    {
      if (((1 << v16) & 0x40001A) != 0)
      {
        v18 = TNodeFromFINode(v29);
        TNode::GetVolumeInfo(&v25, v18);
        v19 = *(v25 + 104);
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        }

        if (v19)
        {
          v17 = 256;
          goto LABEL_39;
        }
      }

      else if (v16 != 2)
      {
        goto LABEL_39;
      }

      v20 = TNodeFromFINode(v28);
      TNode::GetVolumeInfo(&v25, v20);
      v21 = *(v25 + 104);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (v21)
      {
        v17 = 512;
      }

      else
      {
        v17 = 2048;
      }
    }

LABEL_39:
    TDSOperationRecord::AddConflict(*a2, v17);
LABEL_40:
    ++*(a1 + 88);
    goto LABEL_41;
  }

  v11 = TNodeFromFINode(v29);
  Permissions = TNode::GetPermissions(v11, &v27);
  if (!(Permissions | v27) && (TDSOperationRecord::GetOperationOptions(*a2) & 4) == 0)
  {
    v13 = a2[1];
    v25 = *a2;
    v26 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (TOperation::CanAuthenticate(a1, &v25))
    {
      TDSOperationRecord::GetSource(&v23, *a2);
      if (TNodeFromFINode(v23))
      {
        TDSOperationRecord::GetSource(&v22, *a2);
        v14 = TNodeFromFINode(v22);
        IsLocalVolume = TNode::IsLocalVolume(v14);
      }

      else
      {
        IsLocalVolume = 0;
      }
    }

    else
    {
      IsLocalVolume = 0;
    }

    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if ((IsLocalVolume & 1) == 0)
    {
      TDSOperationRecord::AddConflict(*a2, 2048);
      goto LABEL_40;
    }
  }

LABEL_41:
}

void sub_1E56D87A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15)
{
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::PerformMoveInSameParent(uint64_t a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v9.fFINode, *a2);
  if (TNodeFromFINode(v9.fFINode))
  {
    v3 = TNodeFromFINode(v9.fFINode);
    v4 = TNode::InfoLock(v3);
    os_unfair_lock_lock(v4);
    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v4);
      v7 = *(v6 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      os_unfair_lock_unlock(v4);
      if (!*(v6 + 120))
      {
LABEL_6:
        TDSOperationRecord::SetCompletedOperation(*a2, 4);
        TDSOperationRecord::SetResolution(*a2, 1);
        TDSOperationRecord::SetTargetNode(*a2, &v9);
      }
    }
  }

  return 0;
}

uint64_t TDesktopServicesHelperCopyMoveOperation::PerformMove(uint64_t a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v37, *a2);
  if (!TNodeFromFINode(v37))
  {
    v10 = 4294959238;
    goto LABEL_42;
  }

  TDSOperationRecord::GetResolvedDestination(&v36, *a2);
  v4 = TNodeFromFINode(v37);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (!v6)
  {
    os_unfair_lock_unlock(v5);
    if (*(v7 + 120))
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = TNodeFromFINode(v37);
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    os_unfair_lock_lock((v14 + 108));
    v15 = *(v14 + 123);
    os_unfair_lock_unlock((v14 + 108));
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (v15 < 0 || !TNodeFromFINode(v36.fFINode))
    {
      goto LABEL_37;
    }

    v16 = TNodeFromFINode(v36.fFINode);
    v17 = TNode::InfoLock(v16);
    os_unfair_lock_lock(v17);
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v17);
      v20 = *(v19 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (v20)
      {
        goto LABEL_37;
      }
    }

    else
    {
      os_unfair_lock_unlock(v17);
      if (*(v19 + 120))
      {
        goto LABEL_37;
      }
    }

    v21 = TNodeFromFINode(v37);
    v22 = TNode::ParentLock(v21);
    os_unfair_lock_lock(v22);
    TNodePtr::TNodePtr(&v35, *(v21 + 48));
    os_unfair_lock_unlock(v22);
    Resolution = TDSOperationRecord::GetResolution(*a2);
    if (Resolution == 9)
    {
      v24 = TNodeFromFINode(v37);
      v25 = TNode::InfoLock(v24);
      os_unfair_lock_lock(v25);
      v27 = *(v24 + 16);
      v26 = *(v24 + 24);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v25);
      TFSInfo::SetIsUserLocked(v27, 0);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      TDSOperationRecord::SetResolution(*a2, 0);
      TDSOperationRecord::SetNoConflict(*a2);
    }

    v28 = TNodeFromFINode(v37);
    v29 = TNode::Move(v28, &v36, *a2, a1, (a1 + 3944), 0);
    v9 = v29;
    if (v29 > -49)
    {
      if (v29 != -48 && v29 != -45)
      {
LABEL_29:
        if (Resolution == 9)
        {
          v30 = TNodeFromFINode(v37);
          TNode::GetFSInfo(&v33, v30);
          TFSInfo::SetIsUserLocked(v33, 1);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }
        }
      }
    }

    else if ((v29 + 8012) >= 2)
    {
      if (v29 == -128)
      {
        (*(*a1 + 200))(a1);

        v9 = -128;
        goto LABEL_38;
      }

      goto LABEL_29;
    }

    if (v9 == -48 || v9 == -8011)
    {
      if ((TDSOperationRecord::GetOperationOptions(*a2) & 8) == 0)
      {
        goto LABEL_38;
      }

      v9 = TDesktopServicesHelperCopyMoveOperation::RenameAndMove(a1, a2);
    }

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_37:
    TOperation::UpdateStatusItemsCompletedIncrementally(a1, 1, 1);
    TDSOperationRecord::SetCompletedOperation(*a2, 1);
    TDSOperationRecord::SetResolution(*a2, 1);
    TOperation::ReportStatus(a1, 0);
    v9 = 0;
    goto LABEL_38;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock(v5);
  v8 = *(v7 + 120);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = -8058;
LABEL_38:
  v31 = TOperation::CancelRequested(a1);
  TNodeEventPtrs::SendNotifications((a1 + 3944));
  if (v31)
  {
    v10 = 4294967168;
  }

  else
  {
    v10 = v9;
  }

LABEL_42:
  return v10;
}

void sub_1E56D8C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, void *a13, void *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void TNode::Name(TNode *this@<X0>, TString *a2@<X8>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  TFSInfo::Name(v6, a2);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E56D8D98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::IsAlias(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  IsAlias = TFSInfo::IsAlias(v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return IsAlias;
}

void sub_1E56D8E1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::TransformDestinationLocks(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v12);
  v3 = v12[0];
  if (v12[0])
  {
    while (TDSOperationRecord::GetRequestedOperation(v3))
    {
      if (TDSOperationRecord::GetRequestedOperation(v12[0]) != 5)
      {
        TDSOperationRecord::GetResolvedDestination(v10, v12[0]);
        v5 = TNodeFromFINode(v10[0]);
        v6 = TNode::ParentLock(v5);
        os_unfair_lock_lock(v6);
        TNodePtr::TNodePtr(&v11, *(v5 + 48));
        os_unfair_lock_unlock(v6);
        TOperation::ReleaseLock(this, v10, &v11);
      }

      TOperation::GetNextOperationRecordForIterator(this[10], v4, v10);
      v7 = *v10;
      v10[0] = 0;
      v10[1] = 0;
      v8 = v12[1];
      *v12 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        if (v10[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10[1]);
        }

        v3 = v12[0];
        if (!v12[0])
        {
          break;
        }
      }

      else
      {
        v3 = v7;
        if (!v7)
        {
          break;
        }
      }
    }
  }

  if (v12[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12[1]);
  }

  return 0;
}

void sub_1E56D8F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::AcquireDestinationLocks(TOperation **this, OperationIterator *a2)
{
  v23.fFINode = 0;
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, v22);
  v3 = v22[0];
  if (v22[0])
  {
    while (1)
    {
      if (!TDSOperationRecord::GetRequestedOperation(v3))
      {
        goto LABEL_19;
      }

      if (TDSOperationRecord::GetRequestedOperation(v22[0]) != 5)
      {
        break;
      }

LABEL_11:
      TOperation::GetNextOperationRecordForIterator(this[10], v4, &v21);
      v8 = v21;
      v21 = 0uLL;
      v9 = v22[1];
      *v22 = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (*(&v21 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
        }

        v3 = v22[0];
      }

      else
      {
        v3 = v8;
      }

      if (!v3)
      {
        goto LABEL_19;
      }
    }

    TDSOperationRecord::GetResolvedDestination(&v21, v22[0]);
    TNodePtr::operator=(&v23.fFINode, &v21);

    LODWORD(v21) = 0;
    RequestedOperation = TDSOperationRecord::GetRequestedOperation(v22[0]);
    if ((RequestedOperation - 1) < 3)
    {
      goto LABEL_7;
    }

    if (RequestedOperation == 4)
    {
      LODWORD(v21) = 2141183991;
      goto LABEL_8;
    }

    if (RequestedOperation == 22)
    {
LABEL_7:
      LODWORD(v21) = 4096;
    }

LABEL_8:
    if (!TNodeFromFINode(v23.fFINode))
    {
      Permissions = -8072;
      goto LABEL_20;
    }

    v6 = TNodeFromFINode(v23.fFINode);
    Permissions = TNode::GetPermissions(v6, &v21);
    if (Permissions)
    {
      goto LABEL_20;
    }

    Permissions = TOperation::AcquireChildWriteLock(this, &v23, 0);
    if (Permissions)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

LABEL_19:
  Permissions = 0;
  if (!TNodeFromFINode(v23.fFINode))
  {
    goto LABEL_33;
  }

LABEL_20:
  v10 = TNodeFromFINode(v23.fFINode);
  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  IsLocked = TFSInfo::IsLocked(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (IsLocked)
  {
    v15 = 4294959292;
    goto LABEL_36;
  }

  v16 = TNodeFromFINode(v23.fFINode);
  v17 = TNode::InfoLock(v16);
  os_unfair_lock_lock(v17);
  v18 = *(v16 + 24);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v17);
  v19 = IsRunningInFinder();
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v19)
  {
    v15 = 4294959217;
  }

  else
  {
LABEL_33:
    if (Permissions == -8075)
    {
      v15 = 4294959219;
    }

    else
    {
      v15 = Permissions;
    }
  }

LABEL_36:
  if (v22[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22[1]);
  }

  return v15;
}

void sub_1E56D91BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *a14)
{
  v15 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void TDesktopServicesHelperCopyMoveOperation::DeleteLockFilesIfNeeded(void ***a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetTargetNode(&v40, *a2);
  v4 = TNodeFromFINode(v40);
  if (TNode::WeakValidate(v4, v5) || TDSOperationRecord::CompletedOperation(*a2) == 3)
  {
    goto LABEL_38;
  }

  TDSOperationRecord::GetSource(&v39, *a2);
  v6 = TNodeFromFINode(v39);
  if (!TNode::WeakValidate(v6, v7))
  {
    v9 = TNodeFromFINode(v39);
    v10 = TNode::InfoLock(v9);
    os_unfair_lock_lock(v10);
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v10);
    os_unfair_lock_lock((v12 + 108));
    v13 = *(v12 + 123);
    os_unfair_lock_unlock((v12 + 108));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if ((v13 & 0x20) != 0)
    {
      v14 = TNodeFromFINode(v40);
      if (TNode::LowLevelIsLockFile(v14))
      {
        v15 = TNodeFromFINode(v40);
        if (!TNode::GetChildrenCount(v15) && TDSOperationRecord::GetRequestedOperation(*a2) == 2)
        {
          v16 = TNodeFromFINode(v40);
          TNode::HandleSync(v16, 0x1000000);
        }
      }
    }

    v17 = TNodeFromFINode(v39);
    if (TNode::IsDeferredForSymlink(v17, TFSInfo::IsPackage, 0))
    {
      v8 = 1;
      goto LABEL_22;
    }

    v18 = TNodeFromFINode(v39);
    v19 = TNode::InfoLock(v18);
    os_unfair_lock_lock(v19);
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v19);
    os_unfair_lock_lock((v21 + 108));
    v22 = *(v21 + 123);
    os_unfair_lock_unlock((v21 + 108));
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if ((v22 & 0x20) != 0)
    {
      v23 = TNodeFromFINode(v40);
      v8 = TNode::GetChildrenCount(v23) == 0;
      goto LABEL_22;
    }
  }

  v8 = 0;
LABEL_22:
  v24 = TNodeFromFINode(v40);
  if (v24 != TNodeFromFINode(v39))
  {
    RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
    if (RequestedOperation > 0x16 || (v26 = 1, ((1 << RequestedOperation) & 0x40001A) == 0) && (RequestedOperation != 2 || !v8))
    {
      v26 = 0;
    }

    TDSOperationRecord::GetResolvedDestination(&v38, *a2);
    v27 = TNodeFromFINode(v38);
    v37 = v40;
    v28 = TNode::DeleteChildLockItem(v27, a1, a2, &v37, v26);

    if (v28)
    {
      v29 = TNodeFromFINode(v40);
      v30 = TNode::InfoLock(v29);
      os_unfair_lock_lock(v30);
      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v30);
      os_unfair_lock_lock((v32 + 108));
      v33 = *(v32 + 127);
      os_unfair_lock_unlock((v32 + 108));
      if ((v33 & 0x800) != 0)
      {
        v34 = TNodeFromFINode(v40);
        TNode::SendNotification(v34, 2, &v40, 1920167267, 0);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }

    else
    {
      v35 = *a2;
      TNodePtr::TNodePtr(&v36, 0);
      TDSOperationRecord::SetTargetNode(v35, &v36);
    }
  }

LABEL_38:
}

uint64_t TDesktopServicesHelperCopyMoveOperation::CheckDestination(uint64_t a1, TDSOperationRecord **a2)
{
  if (TDSOperationRecord::GetRequestedOperation(*a2) != 5)
  {
    TDSOperationRecord::GetDestination(&v18, *a2);
    if (TNodeFromFINode(v18))
    {
      v4 = TNodeFromFINode(v18);
      v5 = TNode::InfoLock(v4);
      os_unfair_lock_lock(v5);
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v5);
        v8 = *(v7 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        os_unfair_lock_unlock(v5);
        if (*(v7 + 120))
        {
          goto LABEL_6;
        }
      }

      v17.fFINode = v18;
      v9 = TNodeFromFINode(v17.fFINode);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      IsAlias = TFSInfo::IsAlias(v12);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (!IsAlias || (v14 = TNodeFromFINode(v18), v16 = 0, v3 = TNode::FollowAlias(v14, &v17, &v16, 9), !v3))
      {
        TDSOperationRecord::SetResolvedDestination(*a2, &v17);
        TNodeFromFINode(v17.fFINode);
        if (IsRunningInFinder())
        {
          v3 = 4294959205;
        }

        else
        {
          v3 = 0;
        }
      }

      goto LABEL_18;
    }

LABEL_6:
    v3 = 4294959238;
LABEL_18:

    return v3;
  }

  return 0;
}

void TDesktopServicesHelperCopyMoveOperation::Cleanup(uint64_t a1, TDSOperationRecord **a2)
{
  if (TDSOperationRecord::GetRequestedOperation(*a2) == 5)
  {
    TDSOperationRecord::GetSource(&v13, *a2);
    v3 = TNodeFromFINode(v13);
    v4 = TNode::InfoLock(v3);
    os_unfair_lock_lock(v4);
    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v4);
    os_unfair_lock_lock((v6 + 108));
    v7 = *(v6 + 123);
    os_unfair_lock_unlock((v6 + 108));
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if ((v7 & 0x100) == 0)
    {
      TDSOperationRecord::GetOriginalSourceParent(&v12, *a2);
      if (TNodeFromFINode(v12))
      {
        v8 = TNodeFromFINode(v12);
        TNode::RecalculateFreeSpaceAndCapacity(v8, 1);
      }
    }
  }

  else
  {
    TDSOperationRecord::GetTargetNode(&v13, *a2);
    v9 = TNodeFromFINode(v13);
    if (!TNode::WeakValidate(v9, v10))
    {
      v11 = TNodeFromFINode(v13);
      TNode::HandleSync(v11, 0x10000000);
    }
  }
}

uint64_t TDesktopServicesHelperCopyMoveOperation::PerformOperation(uint64_t a1, FINode **a2)
{
  if (TDSOperationRecord::GetRequestedOperation(*a2) == 5)
  {
    TDSOperationRecord::GetSource(&obj, *a2);
    if (TNodeFromFINode(obj))
    {
      v4 = TNodeFromFINode(obj);
      v5 = TNode::InfoLock(v4);
      os_unfair_lock_lock(v5);
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v5);
      os_unfair_lock_lock((v7 + 108));
      v8 = *(v7 + 123);
      os_unfair_lock_unlock((v7 + 108));
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      if ((v8 & 0x100) != 0)
      {
        v13 = 4294959224;
      }

      else
      {
        v9 = TNodeFromFINode(obj);
        v10 = TNode::ParentLock(v9);
        os_unfair_lock_lock(v10);
        TNodePtr::TNodePtr(&v29, *(v9 + 48));
        os_unfair_lock_unlock(v10);
        if (TNodeFromFINode(v29.fFINode))
        {
          v11 = TNodeFromFINode(obj);
          v38 = a1;
          if (a1)
          {
            TOperation::AddPtrReference(a1);
          }

          v12 = a2[1];
          v35.fFINode = *a2;
          v36 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = TNode::Delete(v11, &v38, &v35, 0, 1, 1, 1, 0, *(a1 + 3968));
          if (v36)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
          }

          TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v38);
          if (v13)
          {
            if (!TNodeFromFINode(*(a1 + 2520)))
            {
              objc_storeStrong((a1 + 2520), obj);
            }
          }

          else
          {
            v19 = *a2;
            TNodePtr::TNodePtr(&v35, 0);
            TDSOperationRecord::SetTargetNode(v19, &v35);

            v13 = 0;
          }
        }

        else
        {
          v13 = 4294959224;
        }
      }
    }

    else
    {
      v13 = 4294959238;
    }

    v20 = obj;
    goto LABEL_69;
  }

  if (!*a2)
  {
    return 4294959238;
  }

  if (TDSOperationRecord::GetResolution(*a2) != 1)
  {
    TDSOperationRecord::GetSource(&v38, *a2);
    if (!TNodeFromFINode(v38))
    {
      v13 = 4294959238;
      goto LABEL_68;
    }

    if (TDSOperationRecord::GetRequestedOperation(*a2) == 4)
    {
      TDSOperationRecord::SetCompletedOperation(*a2, 4);
      v13 = 0;
LABEL_68:
      v20 = v38;
LABEL_69:

      return v13;
    }

    TDSOperationRecord::GetResolvedDestination(&v37, *a2);
    if (!TNodeFromFINode(v37))
    {
      v13 = 4294959238;
LABEL_67:

      goto LABEL_68;
    }

    TFileCoordinationRecord::TFileCoordinationRecord(&v35, *(a1 + 2632));
    Resolution = TDSOperationRecord::GetResolution(*a2);
    if (Resolution <= 0xD)
    {
      if (((1 << Resolution) & 0xC80) != 0)
      {
        TDSOperationRecord::SetShouldMerge(*a2);
        TDSOperationRecord::SetNoConflict(*a2);
        goto LABEL_59;
      }

      if (((1 << Resolution) & 0x2004) != 0)
      {
        v16 = TNodeFromFINode(v38);
        TNode::Name(v16, &v34);
        v17 = TNodeFromFINode(v37);
        TNode::FindChild(&v33, v17, &v34, 0, 0);
        if (TNodeFromFINode(v33))
        {
          obj = 0;
          v32 = 0;
          v18 = TNodeFromFINode(v33);
          TNode::GetFSInfo(&v29, v18);
          v13 = TFileCoordinationRecord::CoordinateWriting(&v35, &v29, 4, &obj);
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if (v13)
          {
            if (v32)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v32);
            }

LABEL_56:
            v25 = 0;
            goto LABEL_58;
          }

          v21 = TNodeFromFINode(v33);
          TNode::GetFSInfo(&v29, v21);
          v22 = obj;
          fFINode = v29.fFINode;
          if (v30)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
          }

          if (v22 != fFINode)
          {
            v24 = TNodeFromFINode(v33);
            TNode::SetFSInfo(v24, &obj, 1);
          }

          if (v32)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v32);
          }

          v13 = TDesktopServicesHelperCopyMoveOperation::HandleOverwrite(a1, a2, &v33);
          TDSOperationRecord::SetResolution(*a2, 0);
          TDSOperationRecord::SetNoConflict(*a2);
          if (v13)
          {
            goto LABEL_56;
          }
        }

        v13 = 0;
        v25 = 1;
LABEL_58:

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
        if (v25)
        {
          goto LABEL_59;
        }

LABEL_66:
        TFileCoordinationRecord::~TFileCoordinationRecord(&v35, v15);
        goto LABEL_67;
      }

      if (Resolution == 8)
      {
        v13 = TDesktopServicesHelperCopyMoveOperation::HandleRenameConflictedItem(a1, a2);
        TDSOperationRecord::SetResolution(*a2, 0);
        TDSOperationRecord::SetNoConflict(*a2);
        if (!v13)
        {
          goto LABEL_59;
        }

        goto LABEL_66;
      }
    }

    if (Resolution == 1)
    {
LABEL_63:
      v13 = 0;
      goto LABEL_66;
    }

LABEL_59:
    RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
    if ((RequestedOperation - 2) < 2)
    {
      goto LABEL_62;
    }

    if (RequestedOperation == 1)
    {
      v27 = TDesktopServicesHelperCopyMoveOperation::PerformMove(a1, a2);
      goto LABEL_65;
    }

    if (RequestedOperation == 22)
    {
LABEL_62:
      v27 = TDesktopServicesHelperCopyMoveOperation::PerformCopyOrForceMove(a1, a2, 0);
LABEL_65:
      v13 = v27;
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  return 0;
}

void sub_1E56D9D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, const void *);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TFileCoordinationRecord::~TFileCoordinationRecord(va1, v17);

  _Unwind_Resume(a1);
}

void TDSOperationRecord::SetShouldMerge(TDSOperationRecord *this)
{
  std::mutex::lock(this);
  *(this + 184) |= 4u;

  std::mutex::unlock(this);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::HandleOverwrite(TOperation *a1, TDSOperationRecord **a2, FINode **a3)
{
  TDSOperationRecord::GetResolution(*a2);
  TDSOperationRecord::GetSource(&v31, *a2);
  if (!TNodeFromFINode(v31) || !TNodeFromFINode(*a3))
  {
    goto LABEL_12;
  }

  v6 = TNodeFromFINode(v31);
  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  v10 = TNodeFromFINode(*a3);
  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v12 = *(v10 + 24);
  v29 = *(v10 + 16);
  v30 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  v13 = TFSInfo::Equal(v9, &v29);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v13 & 1) == 0)
  {
    v16 = TNodeFromFINode(*a3);
    v17 = TNode::InfoLock(v16);
    os_unfair_lock_lock(v17);
    v18 = *(v16 + 24);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v17);
    v19 = IsRunningInFinder();
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v19)
    {
      v20 = a2[1];
      v29 = *a2;
      v30 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
      }

      v28 = *a3;
      RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
      v22 = (*(*a1 + 48))(a1, &v29, 4294959209, &v28, RequestedOperation);

      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (v22)
      {
        LockItem = 4294959209;
      }

      else
      {
        LockItem = 0;
      }

      TDSOperationRecord::SetResolution(*a2, 1);
    }

    else
    {
      LockItem = TNodeFromFINode(*a3);
      v27 = a1;
      if (a1)
      {
        TOperation::AddPtrReference(a1);
      }

      v23 = a2[1];
      v29 = *a2;
      v30 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
      }

      LODWORD(LockItem) = TNode::Delete(LockItem, &v27, &v29, 1, 1, 0, 0, 1, *(a1 + 496));
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v27);
      if (LockItem == -43)
      {
        LockItem = 0;
      }

      else
      {
        LockItem = LockItem;
      }

      if (LockItem)
      {
        v24 = a2[1];
        v29 = *a2;
        v30 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
        }

        v26 = *a3;
        v25 = TDSOperationRecord::GetRequestedOperation(*a2);
        (*(*a1 + 48))(a1, &v29, LockItem, &v26, v25);

        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      else if (TDSOperationRecord::GetRequestedOperation(*a2) != 1)
      {
        TDSOperationRecord::GetResolvedDestination(&v29, *a2);
        LockItem = TDesktopServicesHelperCopyMoveOperation::CreateLockItem(a1, &v31, &v29, a2);
      }
    }
  }

  else
  {
LABEL_12:
    LockItem = 0;
  }

  return LockItem;
}

uint64_t TDesktopServicesHelperCopyMoveOperation::HandleRenameConflictedItem(os_unfair_lock_s *a1, uint64_t a2)
{
  TDSOperationRecord::GetSource(&v25, *a2);
  TDSOperationRecord::GetResolvedDestination(&v24, *a2);
  v4 = *(a2 + 8);
  v19.fString.fRef = *a2;
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*&a1->_os_unfair_lock_opaque + 256))(&v23, a1, &v19);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v5 = TNodeFromFINode(v24);
  TNode::FindChild(&v22, v5, &v23, 0, 0);
  v6 = TNodeFromFINode(v22);
  if (v6 == TNodeFromFINode(0))
  {
    v8 = 0;
  }

  else
  {
    v21.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TUniqueNamer::TUniqueNamer(&v19, *(*&a1[32]._os_unfair_lock_opaque + 56), 0);
    v7 = TNodeFromFINode(v25);
    TNode::DisplayNameWithoutDirectionalFormatting(&v18, v7);
    TUniqueNamer::SetSeed(&v19, &v18, &v23);
    do
    {
      v8 = TUniqueNamer::NextUniqueName(&v19, &v21);
      if (!v8)
      {
        v17.fFINode = 0;
        v9 = TNodeFromFINode(v24);
        v10 = v25;
        v15 = 0;
        v16 = v10;
        v14 = 0;
        v8 = TNode::CreateNewChildLockItem(v9, a1, a2, &v21, &v16, &v14, &v17);
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (!v8)
        {
          TDSOperationRecord::SetTargetName(*a2, &v21);
          if (TDSOperationRecord::GetRequestedOperation(*a2) == 1)
          {
            v11 = TNodeFromFINode(v24);
            v13 = v17.fFINode;
            v8 = TNode::DeleteChildLockItem(v11, a1, a2, &v13, 1);
          }

          else
          {
            TDSOperationRecord::SetTargetNode(*a2, &v17);
            v8 = 0;
          }
        }
      }
    }

    while (v8 == -48);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
    TUniqueNamer::~TUniqueNamer(&v19);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21.fString.fRef);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v23.fString.fRef);
  return v8;
}

void sub_1E56DA48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TUniqueNamer::~TUniqueNamer(va1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v13 - 72));

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v13 - 56));
  _Unwind_Resume(a1);
}

int64_t TDesktopServicesHelperCopyMoveOperation::PerformCopyOrForceMove(uint64_t a1, FINode **a2, int a3)
{
  if (TDSOperationRecord::CompletedOperation(*a2) && TDSOperationRecord::CompletedOperation(*a2) != 21)
  {
    return 0;
  }

  TDSOperationRecord::GetSource(&v58, *a2);
  TDSOperationRecord::GetResolvedDestination(&v57, *a2);
  v6 = TNodeFromFINode(v58);
  v7 = TNode::ParentLock(v6);
  os_unfair_lock_lock(v7);
  TNodePtr::TNodePtr(&v56, *(v6 + 48));
  os_unfair_lock_unlock(v7);
  if (!TNodeFromFINode(v58) || !TNodeFromFINode(v57))
  {
    v12 = 4294959234;
LABEL_8:
    v11 = v12;
    goto LABEL_9;
  }

  v8 = TNodeFromFINode(v57);
  IsLocalVolume = TNode::IsLocalVolume(v8);
  v10 = TNodeFromFINode(v58);
  TNode::GetPath(&v54, v10);
  v11 = v55;
  if (!v55)
  {
    v14 = TNodeFromFINode(v57);
    TNode::GetPath(&v52, v14);
    v11 = v53;
    if (v53)
    {
      v15 = 0;
      v12 = 4294959234;
      goto LABEL_68;
    }

    v16 = *(a1 + 2576);
    v17 = a2[1];
    v48 = *a2;
    v49 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsMigration = TOperation::IsMigration(a1, &v48);
    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
    v19 = IsLocalVolume & 0xFFFFFFFD | (2 * (TDSOperationRecord::GetOperationOptions(*a2) & 1));
    if ((TDSOperationRecord::GetOperationOptions(*a2) & 0x40) != 0 || (*(a1 + 3884) & 0x40) != 0)
    {
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsCopyExactly"];
      v19 |= 0x84u;
    }

    if ((TDSOperationRecord::GetOperationOptions(*a2) & 0x200) != 0 || (*(a1 + 3885) & 2) != 0)
    {
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsSystemRestore"];
      v19 |= 0xA0u;
    }

    v20 = *a2;
    std::mutex::lock(*a2);
    isa = v20[23].super.isa;
    std::mutex::unlock(v20);
    if ((isa & 8) != 0 && ((TDSOperationRecord::GetOperationOptions(*a2) & 0x800) != 0 || (*(a1 + 3885) & 8) != 0))
    {
      [v16 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsVolumeRestore"];
      v19 |= 0xC0u;
    }

    v22 = *a2;
    std::mutex::lock(*a2);
    isa_low = LOBYTE(v22[23].super.isa);
    std::mutex::unlock(v22);
    MergeResolution = TDSOperationRecord::GetMergeResolution(*a2);
    if (IsMigration)
    {
      v25 = v19 | (4 * isa_low) & 0x10 | 0xC;
    }

    else
    {
      v25 = v19 | (4 * isa_low) & 0x10;
    }

    if (TDSOperationRecord::GetRequestedOperation(*a2) == 3)
    {
      if (!IsLocalVolume)
      {
        goto LABEL_34;
      }
    }

    else if (((TDSOperationRecord::GetRequestedOperation(*a2) == 22) & IsLocalVolume) == 0)
    {
LABEL_34:
      if ((TDSOperationRecord::GetOperationOptions(*a2) & 0x1000) != 0 || (*(a1 + 3885) & 0x10) != 0)
      {
        v25 |= 0x400u;
      }

      if ((TDSOperationRecord::GetOperationOptions(*a2) & 0x20000) != 0 || (*(a1 + 3886) & 2) != 0)
      {
        v25 |= 0x800u;
      }

      v11 = TDSHelperContext::LaunchDesktopServicesHelper((a1 + 3736), 0);
      v15 = v11 == 0;
      v12 = v11;
      if (!v11)
      {
        v26 = a2[1];
        v48 = *a2;
        v49 = v26;
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v43 = v16;
        (*(*a1 + 256))(&theString, a1, &v48);
        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        TFileCoordinationRecord::TFileCoordinationRecord(&v48, *(a1 + 2632));
        v42 = MergeResolution;
        v47.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        if (a3)
        {
          if (CFStringGetLength(theString))
          {
            AppendPath(&v44, &v52, &theString);
            TString::operator=(&v47.fString.fRef, &v44.fString.fRef);
            v27 = &v44;
          }

          else
          {
            v28 = TNodeFromFINode(v58);
            TNode::Name(v28, &v46);
            AppendPath(&v44, &v52, &v46);
            TString::operator=(&v47.fString.fRef, &v44.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
            v27 = &v46;
          }

          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v27->fString.fRef);
          TFileCoordinationRecord::CoordinatedWriting(&v48, &v47);
        }

        Resolution = TDSOperationRecord::GetResolution(*a2);
        v30 = v25 | 0x100;
        if (Resolution != 14)
        {
          v30 = v25;
        }

        v41 = v30;
        v31 = *(*(a1 + 128) + 28);
        if (TDSOperationRecord::CompletedOperation(*a2) == 21)
        {
          v32 = 21;
        }

        else
        {
          v32 = RequestedOperation;
        }

        value = *(a1 + 2384);
        v34 = *(a1 + 2376);
        v35 = *a2;
        std::mutex::lock(*a2);
        v36 = v35[23].super.isa;
        std::mutex::unlock(v35);
        v37 = a2[1];
        v44.fString.fRef = *a2;
        v45 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = v43;
        (*(*a1 + 112))(a1, &v44);
        v12 = TDSHelperContext::PerformCopyMove(a1 + 3736, &v54, &v52, &theString, v31, v32, v42, v41, value, (v34 & 0x10) != 0, (v36 & 8) != 0, *(a1 + 3968), &RequestedOperation);
        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v47.fString.fRef);
        TFileCoordinationRecord::~TFileCoordinationRecord(&v48, v38);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        if (!v12)
        {
          v12 = *(a1 + 112);
          if (!v12)
          {
            if (TDSOperationRecord::GetRequestedOperation(*a2) == 3 || TDSOperationRecord::GetRequestedOperation(*a2) == 22)
            {
              v39 = TNodeFromFINode(v57);
              v40 = TNodeFromFINode(v58);
              TNode::Name(v40, &v44);
              TNode::FindChild(&v48, v39, &v44, 0, 0);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
              TNodeFromFINode(v48);
            }

            TDSOperationRecord::SetCompletedOperation(*a2, RequestedOperation);
            v12 = 0;
          }
        }
      }

LABEL_68:
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v52.fString.fRef);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v54.fString.fRef);
      if (!v15)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v25 |= 4u;
    goto LABEL_34;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v54.fString.fRef);
LABEL_9:

  return v11;
}

void sub_1E56DAB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a27);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v27 - 128));

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::AcquireSourceLock(TOperation *a1, TDSOperationRecord **a2)
{
  TDSOperationRecord::GetSource(&v9.fFINode, *a2);
  TDSOperationRecord::GetResolvedDestination(&v8, *a2);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  v5 = 0;
  if (RequestedOperation > 0x16)
  {
    goto LABEL_12;
  }

  if (((1 << RequestedOperation) & 0x40001A) != 0)
  {
    TDSOperationRecord::GetOriginalSourceParent(&v7, *a2);
    v5 = TOperation::AcquireChildWriteLock(a1, &v9, 1);

    goto LABEL_8;
  }

  if (RequestedOperation == 2)
  {
    v5 = TOperation::AcquireReadLock(a1, &v9);
LABEL_8:
    if (v5 == -8075)
    {
      if (IsSourceInsideDestination(&v9, &v8))
      {
        v5 = 4294967174;
      }

      else
      {
        v5 = 4294959221;
      }
    }

    goto LABEL_12;
  }

  if (RequestedOperation == 5)
  {
    v5 = TOperation::AcquireSourceLock(a1, a2);
  }

LABEL_12:

  return v5;
}

uint64_t GetAnalyticsFSType(int a1)
{
  if (a1 > 7)
  {
    if (a1 > 20)
    {
      if (a1 == 21)
      {
        return 6;
      }

      if (a1 == 22)
      {
        return 8;
      }
    }

    else
    {
      if (a1 == 8)
      {
        return 5;
      }

      if (a1 == 20)
      {
        return 3;
      }
    }
  }

  else
  {
    if ((a1 - 1) < 3)
    {
      return 4;
    }

    if (a1 == 5)
    {
      return 7;
    }
  }

  return 2;
}

void TDesktopServicesHelperCopyMoveOperation::AddAnalyticsPostOperation(id *this)
{
  v7[136] = *MEMORY[0x1E69E9840];
  v2 = this[322];
  if (v2)
  {
    TOperation::Status(v7, this);
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v7[130]];
    [v2 setObject:v3 forKeyedSubscript:@"TotalVisibleItems"];

    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:v7[134]];
    [v2 setObject:v4 forKeyedSubscript:@"TotalFSItems"];

    v5 = [v2 objectForKeyedSubscript:@"SubKind"];
    if ([v5 unsignedIntegerValue] != 3)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithLongLong:v7[132]];
      [v2 setObject:v6 forKeyedSubscript:@"TotalBytes"];
    }
  }
}

void sub_1E56DAF48(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void TDesktopServicesHelperCopyMoveOperation::AddAnalyticsForRecord(uint64_t a1, TDSOperationRecord **a2)
{
  v3 = *(a1 + 2576);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if (RequestedOperation > 2)
  {
    if (RequestedOperation == 3)
    {
      v5 = 5;
    }

    else
    {
      if (RequestedOperation != 22)
      {
        goto LABEL_86;
      }

      v5 = 4;
    }
  }

  else if (RequestedOperation == 1)
  {
    v5 = 3;
  }

  else
  {
    if (RequestedOperation != 2)
    {
      goto LABEL_86;
    }

    v5 = 2;
  }

  v6 = [v3 objectForKeyedSubscript:@"SubKind"];
  v7 = v6;
  if (v6 && v5 != [v6 unsignedIntegerValue])
  {
    [v3 setObject:&unk_1F5F4A340 forKeyedSubscript:@"SubKind"];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];
    [v3 setObject:v8 forKeyedSubscript:@"SubKind"];
  }

  TDSOperationRecord::GetSource(&v64, *a2);
  TDSOperationRecord::GetResolvedDestination(&v63, *a2);
  v9 = TNodeFromFINode(v64);
  v10 = TNode::InfoLock(v9);
  os_unfair_lock_lock(v10);
  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v10);
  os_unfair_lock_lock((v12 + 108));
  v13 = *(v12 + 123);
  os_unfair_lock_unlock((v12 + 108));
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v13 & 0x400) != 0)
  {
    v24 = 2;
  }

  else
  {
    v14 = TNodeFromFINode(v64);
    v15 = TNode::InfoLock(v14);
    os_unfair_lock_lock(v15);
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v18 = *(v17 + 123);
    os_unfair_lock_unlock((v17 + 108));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if ((v18 & 0x20) != 0)
    {
      v24 = 3;
    }

    else
    {
      v19 = TNodeFromFINode(v64);
      v20 = TNode::InfoLock(v19);
      os_unfair_lock_lock(v20);
      v22 = *(v19 + 16);
      v21 = *(v19 + 24);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v20);
      os_unfair_lock_lock((v22 + 108));
      v23 = *(v22 + 123) & 0x40;
      os_unfair_lock_unlock((v22 + 108));
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (!v23)
      {
        goto LABEL_36;
      }

      v24 = v23 >> 4;
    }
  }

  v25 = [v3 objectForKeyedSubscript:@"ItemType"];
  v26 = v25;
  if (v25 && v24 != [v25 unsignedIntValue])
  {
    v24 = 1;
  }

  [v3 setItemType:v24];

LABEL_36:
  v27 = TNodeFromFINode(v64);
  TNode::GetVolumeInfo(&v61, v27);
  v28 = TNodeFromFINode(v63);
  TNode::GetVolumeInfo(&v59, v28);
  VolumeFormat = TFSVolumeInfo::GetVolumeFormat(v61);
  AnalyticsFSType = GetAnalyticsFSType(VolumeFormat);
  v31 = TFSVolumeInfo::GetVolumeFormat(v59);
  v32 = GetAnalyticsFSType(v31);
  v33 = [v3 objectForKeyedSubscript:@"SrcFS"];
  v34 = v33;
  if (v33 && AnalyticsFSType != [v33 unsignedIntValue])
  {
    AnalyticsFSType = 1;
  }

  [v3 setFileSystem:AnalyticsFSType forKey:@"SrcFS"];
  v35 = [v3 objectForKeyedSubscript:@"DstFS"];
  v36 = v35;
  if (v35 && v32 != [v35 unsignedIntValue])
  {
    v32 = 1;
  }

  [v3 setFileSystem:v32 forKey:@"DstFS"];
  v37 = TNodeFromFINode(v64);
  v38 = TNode::InfoLock(v37);
  os_unfair_lock_lock(v38);
  v40 = *(v37 + 16);
  v39 = *(v37 + 24);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v38);
  TFSInfo::Name(v40, &theString);
  Length = CFStringGetLength(theString);
  if (Length < 1)
  {
    v43 = 0;
  }

  else
  {
    v42 = 0;
    v43 = 1;
    do
    {
      if (CFStringGetLength(theString) > v42 && CFStringGetCharacterAtIndex(theString, v42) > 0x7Fu)
      {
        break;
      }

      v43 = Length > ++v42;
    }

    while (Length != v42);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  if (v43)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SrcNameMultiByteChars"];
  }

  v44 = TNodeFromFINode(v64);
  v45 = TNode::InfoLock(v44);
  os_unfair_lock_lock(v45);
  v47 = *(v44 + 16);
  v46 = *(v44 + 24);
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v45);
  TFSInfo::Path(&theString, v47);
  v48 = CFStringGetLength(theString);
  if (v48 < 1)
  {
    v50 = 0;
  }

  else
  {
    v49 = 0;
    v50 = 1;
    do
    {
      if (CFStringGetLength(theString) > v49 && CFStringGetCharacterAtIndex(theString, v49) > 0x7Fu)
      {
        break;
      }

      v50 = v48 > ++v49;
    }

    while (v48 != v49);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }

  if (v50)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"SrcPathMultiByteChars"];
  }

  v51 = TNodeFromFINode(v63);
  v52 = TNode::InfoLock(v51);
  os_unfair_lock_lock(v52);
  v54 = *(v51 + 16);
  v53 = *(v51 + 24);
  if (v53)
  {
    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v52);
  TFSInfo::Path(&theString, v54);
  v55 = CFStringGetLength(theString);
  if (v55 < 1)
  {
    v57 = 0;
  }

  else
  {
    v56 = 0;
    v57 = 1;
    do
    {
      if (CFStringGetLength(theString) > v56 && CFStringGetCharacterAtIndex(theString, v56) > 0x7Fu)
      {
        break;
      }

      v57 = v55 > ++v56;
    }

    while (v55 != v56);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  if (v57)
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"DstPathMultiByteChars"];
  }

  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

LABEL_86:
}

uint64_t TDesktopServicesHelperCopyMoveOperation::TransformOperations(TDesktopServicesHelperCopyMoveOperation *this, OperationIterator *a2)
{
  v4 = TOperation::ValidateOperations(this, a2);
  if (!v4)
  {
    TOperation::GetFirstOperationRecordForIterator(*(this + 10), v3, v47);
    v5 = v47[0];
    if (v47[0])
    {
      LODWORD(v6) = 0;
      while (TDSOperationRecord::GetRequestedOperation(v5) == 5)
      {
LABEL_40:
        TOperation::GetNextOperationRecordForIterator(*(this + 10), v7, &v43);
        v34 = v43;
        v43 = 0uLL;
        v35 = v47[1];
        *v47 = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
          if (*(&v43 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
          }

          v5 = v47[0];
        }

        else
        {
          v5 = v34;
        }

        v6 = (v6 + 1);
        if (!v5)
        {
          goto LABEL_52;
        }
      }

      TDSOperationRecord::GetSource(&v46, v47[0]);
      TDSOperationRecord::GetResolvedDestination(&v45, v47[0]);
      TDSOperationRecord::GetOriginalSourceParent(&v44, v47[0]);
      TDSOperationRecord::SetResolvedDestination(v47[0], &v45);
      if (TDSOperationRecord::GetRequestedOperation(v47[0]) == 3 || TDSOperationRecord::GetRequestedOperation(v47[0]) == 22)
      {
        v8 = TNodeFromFINode(v46);
        v9 = TNode::InfoLock(v8);
        os_unfair_lock_lock(v9);
        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v9);
        os_unfair_lock_lock((v11 + 108));
        v12 = *(v11 + 123);
        os_unfair_lock_unlock((v11 + 108));
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if ((v12 & 0x100) == 0)
        {
          v13 = TNodeFromFINode(v45.fFINode);
          if (v13 != TNodeFromFINode(v44) || TDSOperationRecord::GetRequestedOperation(v47[0]) == 22)
          {
            v14 = TNodeFromFINode(v46);
            v15 = TNode::InfoLock(v14);
            os_unfair_lock_lock(v15);
            v17 = *(v14 + 16);
            v16 = *(v14 + 24);
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              os_unfair_lock_unlock(v15);
              v18 = *(v17 + 120);
              std::__shared_weak_count::__release_shared[abi:ne200100](v16);
            }

            else
            {
              os_unfair_lock_unlock(v15);
              v18 = *(v17 + 120);
            }

            v32 = v47[0];
            if (!v18)
            {
              if ((TDSOperationRecord::GetOperationOptions(v47[0]) & 8) != 0 || TNode::NodesOnSameVolume(&v46, &v45, v36))
              {
                TDSOperationRecord::SetRequestedOperation(v47[0], 1);
                TDSOperationRecord::AddOperationOptions(v47[0], 4);
              }

              goto LABEL_35;
            }

            v31 = 1;
            goto LABEL_34;
          }

          goto LABEL_50;
        }
      }

      else
      {
        if (TDSOperationRecord::GetRequestedOperation(v47[0]) != 1)
        {
LABEL_35:
          v33 = v47[1];
          v43 = *v47;
          if (v47[1])
          {
            atomic_fetch_add_explicit(v47[1] + 1, 1uLL, memory_order_relaxed);
          }

          TDesktopServicesHelperCopyMoveOperation::AddAnalyticsForRecord(this, &v43);
          if (v33)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          }

          goto LABEL_40;
        }

        v19 = TNodeFromFINode(v46);
        v20 = TNode::InfoLock(v19);
        os_unfair_lock_lock(v20);
        v22 = *(v19 + 16);
        v21 = *(v19 + 24);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v20);
        os_unfair_lock_lock((v22 + 108));
        v23 = *(v22 + 123);
        os_unfair_lock_unlock((v22 + 108));
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        if ((v23 & 0x100) == 0 && TNode::NodesOnSameVolume(&v46, &v45, v24))
        {
          v25 = TNodeFromFINode(v45.fFINode);
          if (v25 == TNodeFromFINode(v44))
          {
LABEL_50:
            v31 = 4;
            goto LABEL_30;
          }

          v26 = TNodeFromFINode(v45.fFINode);
          v27 = TNode::InfoLock(v26);
          os_unfair_lock_lock(v27);
          v29 = *(v26 + 16);
          v28 = *(v26 + 24);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v27);
          IsDropBox = TFSInfo::IsDropBox(v29);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          if (!IsDropBox)
          {
            goto LABEL_35;
          }
        }
      }

      v31 = 2;
LABEL_30:
      v32 = v47[0];
LABEL_34:
      TDSOperationRecord::SetRequestedOperation(v32, v31);
      goto LABEL_35;
    }

    v6 = 0;
LABEL_52:
    *(this + 116) = v6 == 1;
    v37 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [*(this + 322) setObject:v37 forKeyedSubscript:@"NumRootItems"];

    TOperation::GetFirstOperationRecordForIterator(*(this + 10), v38, &v43);
    v39 = *(&v43 + 1);
    v40 = v43;
    v43 = 0uLL;
    v41 = v47[1];
    *v47 = __PAIR128__(v39, v40);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      if (*(&v43 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v43 + 1));
      }

      v39 = v47[1];
    }

    if (v47[0])
    {
      v4 = 0;
    }

    else
    {
      v4 = 4294959213;
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }
  }

  return v4;
}

void sub_1E56DBA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::NeedsSizeCheck(TOperation **this, OperationIterator *a2)
{
  TOperation::GetFirstOperationRecordForIterator(this[10], a2, &v4);
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return (RequestedOperation > 5) | (0xDu >> RequestedOperation) & 1;
}

void sub_1E56DBB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TDesktopServicesHelperCopyMoveOperation::NeedsAuthentication(uint64_t a1, TDSOperationRecord **a2)
{
  if (!*a2 || !TDSOperationRecord::NeedsAuthentication(*a2))
  {
    return 0;
  }

  return TOperation::CanAuthenticate(a1, a2);
}

const char *TDesktopServicesHelperCopyMoveOperation::LogOperationName(uint64_t a1, TDSOperationRecord **a2)
{
  RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
  if (RequestedOperation > 3)
  {
    if (RequestedOperation == 4)
    {
      return "RENAME";
    }

    if (RequestedOperation != 5)
    {
      if (RequestedOperation == 22)
      {
        return "PUTBACK";
      }

      return "TDesktopServicesHelperCopyMoveOperation";
    }

    return "DELETE_IMMEDIATELY";
  }

  else
  {
    if (RequestedOperation == 1)
    {
      return "MOVE";
    }

    if (RequestedOperation != 2)
    {
      if (RequestedOperation == 3)
      {
        return "FORCEMOVE";
      }

      return "TDesktopServicesHelperCopyMoveOperation";
    }

    return "COPY";
  }
}

void ___ZZN39TDesktopServicesHelperCopyMoveOperation17CreateNewLockItemERKNSt3__110shared_ptrI18TDSOperationRecordEERK7TStringRK8TNodePtrRS9_RbENK3__2cvU13block_pointerFvP5NSURLEEv_block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = TString::c_str((a1 + 56));
  v6 = TString::c_str((a1 + 64));
  v7 = TString::c_str((a1 + 80));
  v8 = (*(*v4 + 288))(v4, v5, v6, v7, 0, *(a1 + 72), __s, *(a1 + 112));
  **(a1 + 120) = v8;
  if (v8 == -54 || v8 == -5000)
  {
    if (!TCFURLInfo::IsSystemRestrictionEffective(*(a1 + 88), v9, v10))
    {
      v12 = TString::c_str((a1 + 56));
      v13 = TString::c_str((a1 + 64));
      v14 = TString::c_str((a1 + 80));
      v15 = (*(*v4 + 288))(v4, v12, v13, v14, 1, *(a1 + 72), __s, *(a1 + 112));
      **(a1 + 120) = v15;
      if (!v15)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v8 = **(a1 + 120);
  }

  if (!v8)
  {
LABEL_11:
    _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

LABEL_12:
}

uint64_t TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(std::shared_ptr<TDSOperationRecord> const&,TString const&,TNodePtr const&,TNodePtr&,BOOL &)::$_2::$_2(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  if (v4)
  {
    TOperation::AddPtrReference(v4);
  }

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 24), *(a2 + 24));
  *(a1 + 32) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 32), *(a2 + 32));
  v6 = *(a2 + 40);
  *(a1 + 48) = &stru_1F5F42870;
  *(a1 + 40) = v6;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 48), *(a2 + 48));
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v8;
  return a1;
}

void sub_1E56DBF8C(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);
  v6 = *(v1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(v1);
  _Unwind_Resume(a1);
}

TOperation **__destroy_helper_block_ea8_32c144_ZTSKZN39TDesktopServicesHelperCopyMoveOperation17CreateNewLockItemERKNSt3__110shared_ptrI18TDSOperationRecordEERK7TStringRK8TNodePtrRS9_RbE3__2(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 80));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 64));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 56));
  v3 = *(a1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef((a1 + 32));
}

void std::__shared_ptr_emplace<TFSInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3D3B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

TOperation **TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(TOperation **a1)
{
  v2 = *a1;
  if (v2)
  {
    TOperation::RemovePtrReference(v2);
  }

  return a1;
}

void sub_1E56DC404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, id a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](va);

  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void make_nsweak<FIRenameOperation>(void *a1@<X0>, id *a2@<X8>)
{
  v3 = a1;
  *a2 = 0;
  objc_storeWeak(a2, v3);
}

void sub_1E56DC674(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1E56DC794(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void ___ZZ29__FIRenameOperation_schedule_ENK3__1cvU13block_pointerFvP11FIOperation16NodeSuboperationP6FINodeEEv_block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v13 = v7;
  v9 = v8;
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v13, a3, v9);
  }

  v11 = static_objc_cast<NSString,objc_object * {__strong}>(v13);
  v12 = [v11 subOperation];
  [v12 done];
}

void sub_1E56DCF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c42_ZTSKZ29__FIRenameOperation_schedule_E3__1(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E692D6D0](*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void sub_1E56DD29C(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

id TNSWeakPtr<FIRenameOperation>::Lock(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained isTornDown])
  {

    WeakRetained = 0;
  }

  return WeakRetained;
}

uint64_t std::__function::__value_func<void ()(std::vector<std::optional<FINode * {__strong}>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void sub_1E56DDA1C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void TOperationSizer::TOperationSizer(TOperationSizer *this, const TOperationSizer::TOperationSizerParams *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 2) = *(a2 + 2);
  v5 = *(a2 + 3);
  *(this + 3) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 6) = MEMORY[0x1E692D6D0](*(a2 + 6));
  v6 = MEMORY[0x1E692D6D0](*(a2 + 7));
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = v6;
  *(this + 10) = *(a2 + 4);
  *(this + 88) = *(a2 + 4);
  *(this + 104) = *(a2 + 5);
  *(this + 15) = 0;
  v7 = *(a2 + 12);
  *(this + 159) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 16) = v7;
  *(this + 17) = 0;
  *(this + 167) = *(a2 + 121);
  *(this + 168) = 0;
  *(this + 169) = *(a2 + 152);
  *(this + 170) = *(a2 + 42);
  *(this + 171) = *(a2 + 104);
  if (*(a2 + 105) == 1 && (v8 = *a2, TCFURLInfo::CheckPrefetchState(*a2, 1), (*(v8 + 52) & 1) != 0))
  {
    v10 = *a2;
    TCFURLInfo::CheckPrefetchState(*a2, 1);
    v9 = (*(v10 + 52) & 4) == 0;
  }

  else
  {
    v9 = 0;
  }

  *(this + 172) = v9;
  *(this + 173) = *(a2 + 106);
  *(this + 87) = *(a2 + 155);
  v11 = *(a2 + 10);
  *(this + 26) = &stru_1F5F42870;
  *(this + 11) = v11;
  *(this + 24) = 0;
  *(this + 200) = *(a2 + 120);
  *(this + 201) = *(a2 + 154);
  CFRetain(&stru_1F5F42870);
  *(this + 27) = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 62) = 0;
  *(this + 268) = *(this + 172);
  *(this + 269) = *(a2 + 153);
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 38) = 0;
  if (*(a2 + 40) == 1)
  {
    operator new();
  }

  *(this + 39) = 0;
  if (*(a2 + 41) == 1)
  {
    operator new();
  }

  *(this + 40) = 0;
  *(this + 328) = *(a2 + 8);
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0;
  v12 = *(a2 + 18);
  if (v12)
  {
    v13 = *v12;
    *(this + 43) = *v12;
    v14 = *(v12 + 1);
    *(this + 22) = v14;
    if (v13 && v14)
    {
      (v14)();
    }
  }

  else
  {
    *(this + 43) = 0;
    *(this + 44) = 0;
    *(this + 45) = 0;
  }

  if (*(this + 172) == 1)
  {
    TCFURLInfo::FileSystemRepresentation(&cf, **this, 1);
    if ((this + 208) != &cf)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(this + 26, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  TCFURLInfo::Name(&cf, *this);
  if ((this + 216) != &cf)
  {
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(this + 27, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
}

void sub_1E56DE308(_Unwind_Exception *a1)
{
  v6 = *(v1 + 376);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<TCloneCache>::~unique_ptr[abi:ne200100]((v1 + 320));
  std::unique_ptr<std::unordered_set<unsigned long long>>::~unique_ptr[abi:ne200100]((v1 + 312));
  v7 = *(v1 + 304);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v1 + 288);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v3);
  v9 = *(v1 + 72);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::unique_ptr<TDeepCFURLIterator>::reset[abi:ne200100](v2, 0);
  v10 = *(v1 + 24);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(v1 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<TCloneCache>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(v2 + 48);
    std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>>>::~__hash_table((v2 + 8));
    MEMORY[0x1E692CD30](v2, 0x10A0C40FFD1CC79);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::unordered_set<unsigned long long>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(v2);
    MEMORY[0x1E692CD30](v3, 0x10A0C408EF24B1CLL);
  }

  return a1;
}

void TOperationSizer::~TOperationSizer(TOperationSizer *this)
{
  if (*(this + 43))
  {
    v2 = *(this + 45);
    if (v2)
    {
      v2();
    }
  }

  v3 = *(this + 47);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::unique_ptr<TCloneCache>::~unique_ptr[abi:ne200100](this + 40);
  std::unique_ptr<std::unordered_set<unsigned long long>>::~unique_ptr[abi:ne200100](this + 39);
  v4 = *(this + 38);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 36);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 27);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this + 26);
  v6 = *(this + 9);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::unique_ptr<TDeepCFURLIterator>::reset[abi:ne200100](this + 4, 0);
  v7 = *(this + 3);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void TOperationSizer::ComputeSizeWithTimeout(TOperationSizer *this, unint64_t a2)
{
  v4 = *this;
  v3 = *(this + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 9);
  *(this + 8) = v4;
  *(this + 9) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TOperationSizer::UpdateSizingStats(this, 0);
  v6 = IsRunningInFinder();
  if (v6)
  {
    *(this + 165) = 1;
  }

  else
  {
    *(this + 164) = 1;
  }

  if (*(this + 169) == 1)
  {
    BasicInfoPropertyKeys = TCFURLInfo::GetBasicInfoPropertyKeys(v6);
  }

  else
  {
    BasicInfoPropertyKeys = TCFURLInfo::GetSizerPropertyKeys(v6);
  }

  v17 = BasicInfoPropertyKeys;
  v16 = 0;
  v8 = *(this + 40);
  v15 = *(this + 39);
  v13 = 0;
  v14 = v8;
  v12 = 1;
  v11 = 0;
  v10 = 0;
  v9 = 6;
  std::make_unique[abi:ne200100]<TDeepCFURLIterator,std::shared_ptr<TCFURLInfo> &,BOOL &,BOOL &,__CFArray const*,BOOL,std::unordered_set<unsigned long long> *,TCloneCache *,decltype(nullptr),BOOL,BOOL &,BOOL,BOOL,std::shared_ptr<TCFURLInfo> &,TCFURLInfo::CopyOperationKind,0>(this, this + 169, this + 172, &v17, &v16, &v15, &v14, &v13, &v12, this + 169, &v11, &v10, this + 2, &v9);
}

uint64_t TOperationSizer::UpdateSizingStats(TOperationSizer *this, uint64_t a2)
{
  result = *(this + 6);
  if (result)
  {
    v4 = *(this + 13);
    if (*(this + 173) == 1)
    {
      v4 -= *(this + 29) + *(this + 32);
      v5 = *(this + 12);
      v6 = *(this + 11) - (*(this + 57) + *(this + 62));
    }

    else
    {
      v6 = *(this + 11);
      v5 = *(this + 12);
    }

    return (*(result + 16))(result, this + 64, v4, v6, v5, a2);
  }

  return result;
}

void sub_1E56DE8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  MEMORY[0x1E692CD30](v20, 0x10E0C4061BD4492, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void TOperationSizer::StartSizing(TString *this)
{
  v2 = 0;
  v9 = 0;
  v10 = 0;
  if (BYTE4(this[21].fString.fRef) == 1)
  {
    TOperationSizer::MapSourceToDestination(this, this, &v7);
    v3 = v7;
    v2 = v8;
    v9 = v7;
    v10 = v8;
    if (v7)
    {
      fRef = this[1].fString.fRef;
      v7 = this->fString.fRef;
      v8 = fRef;
      if (fRef)
      {
        atomic_fetch_add_explicit(&fRef->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BYTE5(this[21].fString.fRef) = TCFURLInfo::IsSuspendedCopyOfSource(v3, &v7, &this[24].fString.fRef);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    else
    {
      BYTE5(this[21].fString.fRef) = 0;
    }
  }

  v5.fString.fRef = this->fString.fRef;
  TCFURLInfo::CheckPrefetchState(this->fString.fRef, 1);
  if (WORD2(v5.fString.fRef[1].data))
  {
    v6 = this[46].fString.fRef;
    if (v6)
    {
      (*v6->isa)(v6, this);
    }
  }

  TOperationSizer::AccumulateSize(this, this, 0, 0, &v9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1E56DEA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void TOperationSizer::ResumeSizing(TDeepCFURLIterator **this, uint64_t a2)
{
  TTime::MicrosecondsSinceStartup(this);
  v2 = objc_autoreleasePoolPush();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  v5 = 0;
  v6 = 0;
  v3 = 0;
  v4 = 0;
  _ZNSt3__115allocate_sharedB8ne200100I10TCFURLInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E56DEEC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOperationSizer::CheckMaxFileSize(uint64_t this, uint64_t a2, const __CFString *a3)
{
  if (*(this + 169) == 1)
  {
    v3 = this;
    this = TCFURLInfo::GetNumericalProperty(*(this + 16), *MEMORY[0x1E695ED68], a3);
    if (this >= 1 && *(v3 + 136) > this)
    {
      *(v3 + 160) |= 0x100000u;
    }
  }

  return this;
}

const void **TOperationSizer::MapSourceToDestination@<X0>(const TString *a1@<X0>, TCFURLInfo ***a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v7.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  if (TCFURLInfo::FileSystemRepresentationRelativeToSource(*a2, a1 + 26, &v7))
  {
    TCFURLInfo::CreateCFURLInfoWithFileSystemRepresentationRelativeToBase(a1[2].fString.fRef, &v7, &a1[27].fString.fRef, a3);
  }

  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
}

void sub_1E56DEFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

uint64_t TOperationSizer::AccumulateSize(uint64_t a1, id **a2, char a3, int a4, CFURLRef **a5)
{
  v99 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  if ((*(v10 + 50) & 1) == 0 && (*(v10 + 51) & 1) == 0)
  {
    v11 = *a2;
    TCFURLInfo::CheckPrefetchState(*a2, 1);
    if ((*(v11 + 26) & 0x20) != 0)
    {
      ++*(a1 + 88);
    }
  }

  ++*(a1 + 96);
  if (!TCFURLInfo::IsTrash(*a2))
  {
    v12 = *a2;
    TCFURLInfo::CheckPrefetchState(*a2, 1);
    if ((*(v12 + 26) & 1) != 0 || (a3 & 1) != 0 || *(a1 + 169) == 1 && a4 && (*(a1 + 170) & 1) == 0)
    {
      goto LABEL_33;
    }

    NumericalProperty = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695EAF0], v13);
    v16 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695E2B8], v15);
    *(a1 + 104) += v16 + NumericalProperty;
    v17 = *a2;
    TCFURLInfo::CheckPrefetchState(*a2, 1);
    v19 = NumericalProperty;
    if (*(v17 + 26) < 0)
    {
      v19 = NumericalProperty * 0.48;
    }

    v20 = (*(a1 + 120) + v16 + NumericalProperty);
    *(a1 + 112) = (v19 + v16 + *(a1 + 112));
    *(a1 + 120) = v20;
    if (NumericalProperty < 1)
    {
LABEL_26:
      if (v16 < 1)
      {
        goto LABEL_33;
      }

      v26 = *(a1 + 80);
      v27 = v16;
      if (!__CFADD__(v16, v26))
      {
        if (!v26)
        {
          goto LABEL_31;
        }

        v27 = v16 + v26 - 1;
      }

      v26 *= v27 / v26;
LABEL_31:
      v28 = *(a1 + 136);
      *(a1 + 128) += v26;
      if (v16 > v28)
      {
        *(a1 + 136) = v16;
      }

LABEL_33:
      v29 = *a2;
      TCFURLInfo::CheckPrefetchState(*a2, 1);
      if ((*(v29 + 26) & 1) != 0 && (a3 & 1) == 0)
      {
        ++*(a1 + 152);
      }

      if (TCFURLInfo::GetType(*a2) == 1651666795 && (*(*(a1 + 32) + 50) & 1) == 0 && (*(a1 + 171) & 1) == 0)
      {
        *(a1 + 160) |= 0x1000u;
      }

      if (*(a1 + 169) != 1)
      {
        goto LABEL_107;
      }

      v97 = 1;
      if ((TCFURLInfo::EffectiveUserCanRead(*a2, &v97) & 1) == 0)
      {
        *(a1 + 160) |= 0x400u;
      }

      if (*(a1 + 174) == 1 && TCFURLInfo::IsDataless(*a2, v30, v31))
      {
        IsLocalVolume = TCFURLInfo::IsLocalVolume(*a1, v30, v31);
        v33 = LogObj(2);
        v34 = v33;
        if (IsLocalVolume)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v96 = **a2;
            v35 = TString::operator NSString *(&v96);
            v36 = SanitizedURL(v35);
            *buf = 138543362;
            *&buf[4] = v36;
            _os_log_impl(&dword_1E5674000, v34, OS_LOG_TYPE_ERROR, "Sizer found dataless item %{public}@ on local volume - marking as conflict", buf, 0xCu);
          }

          *(a1 + 160) |= 0x40000000u;
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v96 = **a2;
            v37 = TString::operator NSString *(&v96);
            v38 = SanitizedURL(v37);
            *buf = 138543362;
            *&buf[4] = v38;
            _os_log_impl(&dword_1E5674000, v34, OS_LOG_TYPE_DEFAULT, "Sizer found dataless item %{public}@ on non-local volume - skipping conflict", buf, 0xCu);
          }
        }
      }

      if (*(a1 + 200) == 1 && TCFURLInfo::IsLocalVolume(*a1, v30, v31))
      {
        *buf = 0uLL;
        v39 = *a2;
        TCFURLInfo::CheckPrefetchState(*a2, 2);
        if ((*(v39 + 26) & 0x2000) != 0 && IsEqual(**a2, **a1))
        {
          TCFURLInfo::GetParent(*a2, buf);
        }

        v40 = *a2;
        TCFURLInfo::CheckPrefetchState(*a2, 2);
        if ((*(v40 + 26) & 0x2000) == 0 || (v41 = *buf) != 0 && (TCFURLInfo::CheckPrefetchState(*buf, 2), (*(v41 + 52) & 0x2000) == 0))
        {
          *(a1 + 160) |= 0x400u;
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }
      }

      if (!v97 || (v42 = *a2, TCFURLInfo::CheckPrefetchState(*a2, 2), (*(v42 + 26) & 0x1000) == 0) || (v43 = *a2, v44 = TCFURLInfo::CheckPrefetchState(*a2, 1), (*(v43 + 26) & 1) != 0) && (v45 = *a2, v44 = TCFURLInfo::CheckPrefetchState(*a2, 2), (*(v45 + 26) & 0x4000) == 0) || (v46 = TCFURLInfo::GetgidToUse(v44), v46 != TCFURLInfo::GetUserGroups(*a2)))
      {
        *(a1 + 160) |= 0x80000000;
      }

      if (*(a1 + 167) == 1)
      {
        v47 = *a2;
        TCFURLInfo::CheckPrefetchState(*a2, 1);
        if ((*(v47 + 26) & 0x10) != 0)
        {
          *(a1 + 160) |= 0x200u;
        }
      }

      if (*(a1 + 167) == 1)
      {
        v48 = *a2;
        TCFURLInfo::CheckPrefetchState(*a2, 1);
        if ((*(v48 + 54) & 2) != 0)
        {
          *(a1 + 160) |= 0x400u;
        }
      }

      if (*(a1 + 167) == 1 && TCFURLInfo::IsSystemRestrictionEffective(*a2, v30, v31))
      {
        *(a1 + 160) |= 0x200u;
      }

      if (*(a1 + 172) != 1 || *(a1 + 268) != 1)
      {
        goto LABEL_107;
      }

      v49 = *a2;
      if (*a5)
      {
        TCFURLInfo::CheckPrefetchState(*a2, 1);
        v50 = *(v49 + 26);
        v51 = *a5;
        TCFURLInfo::CheckPrefetchState(*a5, 1);
        if ((v50 & 1) != (*(v51 + 26) & 1))
        {
          *(a1 + 268) = 0;
        }

        if (TCFURLInfo::IsDataless(*a5, v52, v53))
        {
          *(a1 + 268) = 0;
          goto LABEL_107;
        }

        if ((*(a1 + 268) & 1) == 0 || (v59 = *a2, TCFURLInfo::CheckPrefetchState(*a2, 1), (*(v59 + 26) & 0x20) == 0))
        {
LABEL_107:
          v66 = *a2;
          TCFURLInfo::CheckPrefetchState(*a2, 1);
          if ((*(v66 + 26) & 2) != 0)
          {
            *(a1 + 160) |= 0x4000u;
          }

          goto LABEL_109;
        }

        v60 = *a2;
        TCFURLInfo::CheckPrefetchState(*a2, 1);
        if (*(v60 + 26))
        {
          v62 = *a2;
          TCFURLInfo::CheckPrefetchState(*a2, 1);
          if ((*(v62 + 26) & 4) == 0)
          {
            ++*(a1 + 248);
            goto LABEL_107;
          }
        }

        v72 = *MEMORY[0x1E695EAF0];
        v73 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695EAF0], v61);
        v74 = *MEMORY[0x1E695E2B8];
        v76 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695E2B8], v75);
        if (v73 >= 1)
        {
          v78 = *(a1 + 80);
          if (__CFADD__(v73, v78))
          {
LABEL_120:
            v79 = v73 / v78 * v78;
            goto LABEL_122;
          }

          if (v78)
          {
            v73 = v73 + v78 - 1;
            goto LABEL_120;
          }
        }

        v79 = 0;
LABEL_122:
        if (v76 < 1)
        {
          goto LABEL_128;
        }

        v80 = *(a1 + 80);
        if (!__CFADD__(v76, v80))
        {
          if (!v80)
          {
LABEL_127:
            v79 += v80;
LABEL_128:
            if (*(*(a1 + 32) + 50))
            {
              v81 = TCFURLInfo::GetNumericalProperty(*a5, v72, v77);
              v83 = v81 + TCFURLInfo::GetNumericalProperty(*a5, v74, v82);
            }

            else
            {
              v96 = 0;
              if (IsRunningInFinder())
              {
                v84 = *(a1 + 171) ^ 1;
              }

              else
              {
                v84 = 0;
              }

              v85 = *a2;
              v86 = a5[1];
              *buf = *a5;
              *&buf[8] = v86;
              if (v86)
              {
                atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
              }

              v87 = TCFURLInfo::CompareForMerge(v85, buf, &v96, v84 & 1, *(a1 + 175), (a1 + 176));
              if (*&buf[8])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
              }

              buf[0] = 0;
              v88 = TCFURLInfo::ModifiedAfterCheckPoint(*a5, *(a1 + 192), buf);
              v90 = v88;
              if (v87)
              {
                if (*(a1 + 173) == 1)
                {
                  if (v88)
                  {
                    v83 = 0;
                  }

                  else
                  {
                    ++*(a1 + 248);
                    v93 = TCFURLInfo::GetNumericalProperty(*a5, v72, v89);
                    v95 = TCFURLInfo::GetNumericalProperty(*a5, v74, v94);
                    v83 = 0;
                    *(a1 + 256) += v93 + v95;
                  }
                }

                else
                {
                  v83 = 0;
                  ++*(a1 + 248);
                }

                goto LABEL_130;
              }

              v91 = TCFURLInfo::GetNumericalProperty(*a5, v72, v89);
              v83 = v91 + TCFURLInfo::GetNumericalProperty(*a5, v74, v92);
              if (v96 == -1)
              {
                if (*(a1 + 173) != 1)
                {
                  TOperationSizer::SetFirstMergeDestinationConflict(a1, a5);
                  ++*(a1 + 228);
                  goto LABEL_130;
                }

                if ((buf[0] & v90 & 1) == 0)
                {
                  TOperationSizer::SetFirstMergeDestinationConflict(a1, a5);
                  ++*(a1 + 228);
                  *(a1 + 232) += v83;
                  goto LABEL_130;
                }
              }

              else if (v96 != 1)
              {
                TOperationSizer::SetFirstMergeSourceConflict(a1, a2);
                ++*(a1 + 264);
                goto LABEL_130;
              }

              TOperationSizer::SetFirstMergeSourceConflict(a1, a2);
              ++*(a1 + 224);
            }

LABEL_130:
            v65 = v79 - v83 + *(a1 + 272);
LABEL_106:
            *(a1 + 272) = v65;
            goto LABEL_107;
          }

          v76 = v76 + v80 - 1;
        }

        v80 *= v76 / v80;
        goto LABEL_127;
      }

      v54 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695EAF0], v31);
      v56 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695E2B8], v55);
      if (v54 >= 1)
      {
        v57 = *(a1 + 80);
        if (__CFADD__(v54, v57))
        {
LABEL_89:
          v58 = v54 / v57 * v57;
          goto LABEL_96;
        }

        if (v57)
        {
          v54 = v54 + v57 - 1;
          goto LABEL_89;
        }
      }

      v58 = 0;
LABEL_96:
      if (v56 < 1)
      {
        goto LABEL_102;
      }

      v63 = *(a1 + 80);
      if (!__CFADD__(v56, v63))
      {
        if (!v63)
        {
LABEL_101:
          v58 += v63;
LABEL_102:
          v64 = *a2;
          TCFURLInfo::CheckPrefetchState(*a2, 1);
          if ((*(v64 + 26) & 0x20) != 0 && (*(*(a1 + 32) + 50) & 1) == 0)
          {
            TOperationSizer::SetFirstMergeSourceConflict(a1, a2);
            ++*(a1 + 240);
          }

          v65 = *(a1 + 272) + v58;
          goto LABEL_106;
        }

        v56 = v56 + v63 - 1;
      }

      v63 *= v56 / v63;
      goto LABEL_101;
    }

    if (*(a1 + 169) == 1)
    {
      v21 = *(a1 + 80);
      v22 = NumericalProperty;
      if (!__CFADD__(NumericalProperty, v21))
      {
        if (!v21)
        {
          goto LABEL_24;
        }

        v22 = NumericalProperty + v21 - 1;
      }

      v23 = v22 / v21;
    }

    else
    {
      v24 = TCFURLInfo::GetNumericalProperty(*a2, *MEMORY[0x1E695EC18], v18);
      v21 = *(a1 + 80);
      if (!__CFADD__(v24, v21))
      {
        if (!v21)
        {
          goto LABEL_24;
        }

        v24 = (v24 + v21 - 1);
      }

      v23 = v24 / v21;
    }

    v21 *= v23;
LABEL_24:
    v25 = *(a1 + 136);
    *(a1 + 128) += v21;
    if (NumericalProperty > v25)
    {
      *(a1 + 136) = NumericalProperty;
    }

    goto LABEL_26;
  }

LABEL_109:
  if ((*(*(a1 + 32) + 50) & 1) == 0)
  {
    v67 = *a2;
    TCFURLInfo::CheckPrefetchState(*a2, 1);
    if ((*(v67 + 26) & 0x20) != 0)
    {
      v69 = *a2;
      v68 = a2[1];
      if (v68)
      {
        atomic_fetch_add_explicit(v68 + 1, 1uLL, memory_order_relaxed);
      }

      v70 = *(a1 + 72);
      *(a1 + 64) = v69;
      *(a1 + 72) = v68;
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      }
    }
  }

  return TOperationSizer::UpdateSizingStats(a1, 0);
}

void sub_1E56DFA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TOperationSizer::ShouldSkip(void *a1, TCFURLInfo **a2)
{
  if (!a1[41])
  {
    return 0;
  }

  v4 = a1[4];
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 && ((a1[41])(**a2, *v5, a1[43]) & 1) == 0 && !TCFURLInfo::IsTrash(*a2))
  {
    v7 = 0;
    if (!v6)
    {
      return v7;
    }

    goto LABEL_8;
  }

  ++a1[18];
  v7 = 1;
  if (v6)
  {
LABEL_8:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v7;
}

void sub_1E56DFB7C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TOperationSizer::SetFirstMergeDestinationConflict(uint64_t a1, void *a2)
{
  if (!*(a1 + 296))
  {
    std::allocate_shared[abi:ne200100]<TCFURLInfo,std::allocator<TCFURLInfo>,TCFURLInfo&,0>();
  }
}

void TOperationSizer::SetFirstMergeSourceConflict(uint64_t a1, void *a2)
{
  if (!*(a1 + 280))
  {
    std::allocate_shared[abi:ne200100]<TCFURLInfo,std::allocator<TCFURLInfo>,TCFURLInfo&,0>();
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TCFURLInfo const>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

const void **std::unique_ptr<TDeepCFURLIterator>::reset[abi:ne200100](const void ***a1, const void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TDeepCFURLIterator::~TDeepCFURLIterator(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void *std::__shared_ptr_emplace<TCFURLInfo>::__shared_ptr_emplace[abi:ne200100]<TCFURLInfo&,std::allocator<TCFURLInfo>,0>(void *a1, const TCFURLInfo *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F3D160;
  TCFURLInfo::TCFURLInfo((a1 + 3), a2);
  return a1;
}

NSObject *CopyDeepHelper(NSObject *a1, int a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = static_objc_cast<NSString,objc_object * {__strong}>(v3);
    v5 = v4;
    if (a2)
    {
      MutableCopyDeep(v4);
    }

    else
    {
      CopyDeep(v4);
    }

    v8 = LABEL_11:;
    v10 = v8;

    v11 = v3;
    v3 = v10;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = static_objc_cast<NSString,objc_object * {__strong}>(v3);
    v5 = v6;
    if (a2)
    {
      MutableCopyDeep(v6);
    }

    else
    {
      CopyDeep(v6);
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = static_objc_cast<NSString,objc_object * {__strong}>(v3);
    v5 = v7;
    if (a2)
    {
      MutableCopyDeep(v7);
    }

    else
    {
      CopyDeep(v7);
    }

    goto LABEL_11;
  }

  if (a2 && [v3 conformsToProtocol:&unk_1F5F4F5A0])
  {
    v9 = [v3 mutableCopy];
LABEL_18:
    v11 = v3;
    v3 = v9;
    goto LABEL_20;
  }

  if ([v3 conformsToProtocol:&unk_1F5F4B9C8])
  {
    v9 = [v3 copy];
    goto LABEL_18;
  }

  v11 = 0;
LABEL_20:

  return v3;
}

void TDesktopServicesHelperNewFileSystemObjectOperation::ResolveConflict(__CFString *this, TDSOperationRecord **a2)
{
  if (!this[1].length)
  {
    TReferenceCounted::Make<TDesktopServicesHelperNewFileSystemObjectOperation *>();
  }

  length = this[74].length;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN50TDesktopServicesHelperNewFileSystemObjectOperation15ResolveConflictERKNSt3__110shared_ptrI18TDSOperationRecordEE_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c126_ZTSKZN50TDesktopServicesHelperNewFileSystemObjectOperation15ResolveConflictERKNSt3__110shared_ptrI18TDSOperationRecordEEE3__0_e5_v8__0l;
  cf = this;
  TOperation::AddPtrReference(this);
  v53 = cf;
  if (cf)
  {
    TOperation::AddPtrReference(cf);
  }

  dispatch_async(length, block);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&cf);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v53);
  v50.fString.fRef = &stru_1F5F42870;
  v51 = 0;
  CFRetain(&stru_1F5F42870);
  info = this[123].info;
  if (!info)
  {
    goto LABEL_81;
  }

  if (*info != 20)
  {
    if (*info == 21)
    {
      v6 = *(info + 16);
      if (v50.fString.fRef != v6)
      {
        TString::SetStringRefAsImmutable(&v50, v6);
        info = this[123].info;
      }

      if (*(info + 24))
      {
        operator new();
      }

      v51 = 0;
      if (v50.fString.fRef && (v9 = CFRetain(v50.fString.fRef), (v10 = static_cf_cast<__CFString const*,void const*>(v9)) != 0))
      {
        v11 = CFAutorelease(v10);
        v12 = static_cf_cast<__CFString const*,void const*>(v11);
      }

      else
      {
        v12 = 0;
      }

      v13 = TOperation::Options(this) >> 2;
      v14 = this[123].info;
      v16 = *(v14 + 48);
      v15 = *(v14 + 56);
      v48.fString.fRef = v16;
      v49 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TChildCreator::TChildCreator(&cf, v12, 0, TNode::CreateChildContainer, 0, v13 & 0x400, &v48);
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      v48.fString.fRef = this;
      TOperation::AddPtrReference(this);
      TChildCreator::SetOperation(&cf, &v48);
      TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v48);
      v40.fFINode = 0;
      TDSOperationRecord::GetDestination(&theString, *a2);
      if (TNodeFromFINode(theString))
      {
        v17 = TNodeFromFINode(theString);
        v18 = TNode::CreateNewChild(v17, &cf, &v40);
        if (v18)
        {
          v19 = 0;
        }

        else
        {
          TDSOperationRecord::SetTargetNode(*a2, &v40);
          v19 = 11;
        }

        TDSOperationRecord::SetCompletedOperation(*a2, v19);
        if (!v18)
        {
          if (TNodeFromFINode(v40.fFINode))
          {
            v35 = TNodeFromFINode(v40.fFINode);
            TNode::DisplayName(&v48, v35);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v50.fString.fRef, &v48.fString.fRef);
            CFRetain(&stru_1F5F42870);
            if (v48.fString.fRef)
            {
              CFRelease(v48.fString.fRef);
            }

            v48.fString.fRef = &stru_1F5F42870;
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v48.fString.fRef);
            goto LABEL_64;
          }

          v18 = 0;
        }
      }

      else
      {
        v18 = 4294959234;
      }

      v33 = a2[1];
      v48.fString.fRef = *a2;
      v49 = v33;
      if (v33)
      {
        atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
      }

      v44 = theString;
      RequestedOperation = TDSOperationRecord::GetRequestedOperation(*a2);
      (*(this->isa + 6))(this, &v48, v18, &v44, RequestedOperation);

      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

LABEL_64:

      TChildCreator::~TChildCreator(&cf);
    }

LABEL_81:
    TOperation::UpdateStatusCurrentItem(this, &v50);
    TOperation::UpdateStatusItemsCompletedIncrementally(this, 1, 1);
    TOperation::ReportStatus(this, 1);
    TReferenceCounted::Make<TDesktopServicesHelperNewFileSystemObjectOperation *>();
  }

  if (*(info + 24))
  {
    operator new();
  }

  v51 = 0;
  TDSOperationRecord::GetPropertyMapPtr(&v48, *a2);
  theString = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v43 = 0;
  if (v48.fString.fRef)
  {
    LODWORD(cf) = 1886282093;
    v7 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(v48.fString.fRef, &cf);
    if (v7)
    {
      cf = 0;
      v8 = TPropertyValue::As<__CFString const*>(v7 + 3, &cf);
    }

    else
    {
      v8 = 0;
    }

    if (theString != v8)
    {
      TString::SetStringRefAsImmutable(&theString, v8);
    }

    LODWORD(cf) = 1751480436;
    v21 = std::__hash_table<std::__hash_value_type<Property,TPropertyValue>,std::__unordered_map_hasher<Property,std::__hash_value_type<Property,TPropertyValue>,std::hash<Property>,std::equal_to<Property>,true>,std::__unordered_map_equal<Property,std::__hash_value_type<Property,TPropertyValue>,std::equal_to<Property>,std::hash<Property>,true>,std::allocator<std::__hash_value_type<Property,TPropertyValue>>>::find<Property>(v48.fString.fRef, &cf);
    if (v21)
    {
      LOBYTE(cf) = 0;
      v43 = TPropertyValue::As<BOOL>(v21 + 24, &cf);
      v22 = 1;
LABEL_39:
      TDSOperationRecord::GetSource(&v42.fFINode, *a2);
      if (!TNodeFromFINode(v42.fFINode) || CFStringGetLength(theString) < 1)
      {
        v31 = 4294959224;
LABEL_70:
        if (TNodeFromFINode(v42.fFINode))
        {
          v36 = TNodeFromFINode(v42.fFINode);
          TNode::DisplayName(&cf, v36);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v50.fString.fRef, &cf);
          CFRetain(&stru_1F5F42870);
          if (cf)
          {
            CFRelease(cf);
          }

          cf = &stru_1F5F42870;
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
        }

        v37 = a2[1];
        cf = *a2;
        v46 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
        }

        v39 = v42.fFINode;
        v38 = TDSOperationRecord::GetRequestedOperation(*a2);
        (*(this->isa + 6))(this, &cf, v31, &v39, v38);

        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }

        goto LABEL_79;
      }

      if (UseFileProviderFramework())
      {
        v23 = TNodeFromFINode(v42.fFINode);
        v24 = TNode::InfoLock(v23);
        os_unfair_lock_lock(v24);
        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v24);
        v27 = TFSInfo::GetFPItem(v26);
        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        if (v27)
        {
          v28 = objc_alloc(MEMORY[0x1E69673F8]);
          TOperation::PreflightFPOperationBulk(this, [v28 initWithItem:v27 newFileName:theString], 11);
        }
      }

      v41 = 1;
      v40.fFINode = &v43;
      TNodePropertySetterContext::TNodePropertySetterContext(&cf, &v42.fFINode, 1751480436, &v40);
      v29 = TNodeFromFINode(v42.fFINode);
      v30 = TNode::SetNameAndExtension(v29, &theString, v22, v43, this);
      v31 = v30;
      if (v30 == -8057)
      {
        TDSOperationRecord::SetResolution(*a2, 1);
        v31 = 0;
      }

      TNodePropertySetterContext::SetStatus(&cf, v31);
      TNodePropertySetterContext::~TNodePropertySetterContext(&cf);
      if (v31)
      {
        v32 = 0;
      }

      else
      {
        TDSOperationRecord::SetTargetNode(*a2, &v42);
        if (v30 == -8057)
        {
          TDSOperationRecord::SetCompletedOperation(*a2, 0);
          goto LABEL_78;
        }

        v31 = 0;
        v32 = 11;
      }

      TDSOperationRecord::SetCompletedOperation(*a2, v32);
      if (v31)
      {
        goto LABEL_70;
      }

LABEL_78:
      TString::SetStringRefAsImmutable(&v50, theString);
LABEL_79:

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      goto LABEL_81;
    }
  }

  else
  {
    v20 = *(this[123].info + 16);
    if (theString != v20)
    {
      TString::SetStringRefAsImmutable(&theString, v20);
    }
  }

  v22 = 0;
  goto LABEL_39;
}

void sub_1E56E0E4C(_Unwind_Exception *a1, TPropertyValue *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  v32 = *(v30 - 144);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v30 - 136));
  std::unique_ptr<TUniqueNamer>::reset[abi:ne200100]((v30 - 128), 0);
  _Unwind_Resume(a1);
}

uint64_t ___ZN50TDesktopServicesHelperNewFileSystemObjectOperation15ResolveConflictERKNSt3__110shared_ptrI18TDSOperationRecordEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[7];
  v3 = (*(*v1 + 232))(v1);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

TOperation *__copy_helper_block_ea8_32c126_ZTSKZN50TDesktopServicesHelperNewFileSystemObjectOperation15ResolveConflictERKNSt3__110shared_ptrI18TDSOperationRecordEEE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return TOperation::AddPtrReference(result);
  }

  return result;
}

void *std::vector<TNodeEventPtr>::push_back[abi:ne200100](void *a1, id *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TNodeEventPtr>::__emplace_back_slow_path<TNodeEventPtr const&>(a1, a2);
    v5 = result;
  }

  else
  {
    result = *a2;
    *v3 = result;
    v5 = v3 + 1;
  }

  a1[1] = v5;
  return result;
}

uint64_t TDesktopServicesHelperNewFileSystemObjectOperation::Perform(FINode *this)
{
  v2 = TOperation::Perform(this);
  isa = this[495].super.isa;
  v4 = this[496].super.isa;
  if (isa != v4)
  {
    do
    {
      v15 = *isa;
      if (*TNodeEventPtr::operator->(&v15) == 111 && this[8].super.isa)
      {
        v5 = TNodeEventPtr::operator->(&v15);
        TNodeEvent::GetNode(&v10, v5);
        v6 = TNodePtr::CopyAsNodeRef(&v10);

        v7 = this[299].super.isa;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN50TDesktopServicesHelperNewFileSystemObjectOperation7PerformEv_block_invoke;
        block[3] = &__block_descriptor_56_ea8_32c74_ZTSKZN50TDesktopServicesHelperNewFileSystemObjectOperation7PerformEvE3__0_e5_v8__0l;
        v10.fFINode = this;
        TOperation::AddPtrReference(this);
        LODWORD(v11) = *this[493].super.isa;
        *(&v11 + 1) = v6;
        fFINode = v10.fFINode;
        if (v10.fFINode)
        {
          TOperation::AddPtrReference(v10.fFINode);
        }

        v14 = v11;
        dispatch_async(v7, block);
        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v10);
        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&fFINode);
      }

      else
      {
        v8 = TNodeEventPtr::operator->(&v15);
        TNodeEvent::Notify(v8, 0);
      }

      TNodeEventPtr::~TNodeEventPtr(&v15);
      ++isa;
    }

    while (isa != v4);
    v4 = this[496].super.isa;
    isa = this[495].super.isa;
  }

  while (v4 != isa)
  {
    TNodeEventPtr::~TNodeEventPtr(--v4);
  }

  this[496].super.isa = isa;
  return v2;
}

void sub_1E56E13D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, TOperation *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(va);
  TNodeEventPtr::~TNodeEventPtr(va1);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c74_ZTSKZN50TDesktopServicesHelperNewFileSystemObjectOperation7PerformEvE3__0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    TOperation::AddPtrReference(v4);
  }

  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

int64_t TDesktopServicesHelperNewFileSystemObjectOperation::Rename(xpc_connection_t *this, const TNodePtr *a2, TString *a3, BOOL a4, BOOL a5)
{
  v10 = TDSHelperContext::LaunchDesktopServicesHelper((this + 467), 1);
  if (!v10)
  {
    v11 = TNodeFromFINode(a2->fFINode);
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    TFSInfo::Path(&v17, v14);
    v15 = TString::c_str(&v17);
    v10 = TDSHelperContext::RenamePath(this + 467, v15, a3, a4, a5);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return v10;
}

void sub_1E56E1558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TDesktopServicesHelperNewFileSystemObjectOperation::GetSuboperation(TDesktopServicesHelperNewFileSystemObjectOperation *this)
{
  v1 = *(this + 493);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void TDesktopServicesHelperNewFileSystemObjectOperation::SetRequest(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 3944) = v2;
  v4 = *(a1 + 3952);
  *(a1 + 3952) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void TDesktopServicesHelperNewFileSystemObjectOperation::~TDesktopServicesHelperNewFileSystemObjectOperation(TDesktopServicesHelperNewFileSystemObjectOperation *this)
{
  *this = &unk_1F5F3D4C8;
  v2 = (this + 3736);
  *(this + 467) = &unk_1F5F3D600;
  v4 = (this + 3960);
  std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 494);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TDSHelperContext::~TDSHelperContext(v2);
  TOperation::~TOperation(this);
}

{
  *this = &unk_1F5F3D4C8;
  v2 = (this + 3736);
  *(this + 467) = &unk_1F5F3D600;
  v4 = (this + 3960);
  std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 494);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TDSHelperContext::~TDSHelperContext(v2);
  TOperation::~TOperation(this);
  MEMORY[0x1E692CD30]();
}

void non-virtual thunk toTDesktopServicesHelperNewFileSystemObjectOperation::~TDesktopServicesHelperNewFileSystemObjectOperation(TDesktopServicesHelperNewFileSystemObjectOperation *this)
{
  v2 = (this - 3736);
  *(this - 467) = &unk_1F5F3D4C8;
  *this = &unk_1F5F3D600;
  v4 = (this + 224);
  std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TDSHelperContext::~TDSHelperContext(this);
  TOperation::~TOperation(v2);
}

{
  v2 = (this - 3736);
  *(this - 467) = &unk_1F5F3D4C8;
  *this = &unk_1F5F3D600;
  v4 = (this + 224);
  std::vector<TNodeEventPtr>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TDSHelperContext::~TDSHelperContext(this);
  TOperation::~TOperation(v2);
  MEMORY[0x1E692CD30]();
}

TUniqueNamer *std::unique_ptr<TUniqueNamer>::reset[abi:ne200100](TUniqueNamer **a1, TUniqueNamer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    TUniqueNamer::~TUniqueNamer(result);

    JUMPOUT(0x1E692CD30);
  }

  return result;
}

void TChildCreator::~TChildCreator(TChildCreator *this)
{
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(this + 10);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(this + 9);
  TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>::~TRef(this + 8);

  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<TUniqueNamer>::reset[abi:ne200100](this + 1, 0);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(this);
}

uint64_t std::vector<TNodeEventPtr>::__emplace_back_slow_path<TNodeEventPtr const&>(void *a1, id *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::allocator<TNodePtr>::allocate_at_least[abi:ne200100](a1, v7);
  }

  v8 = (8 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *&v17 = v8 + 1;
  v9 = a1[1];
  v10 = (v8 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodeEventPtr>,TNodeEventPtr*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<TNodeEventPtr>::~__split_buffer(&v15);
  return v14;
}

void sub_1E56E1A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<TNodeEventPtr>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TNodeEventPtr>,TNodeEventPtr*>(uint64_t a1, id *a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = *v7++;
      *a4++ = v8;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      TNodeEventPtr::~TNodeEventPtr(v6++);
    }
  }
}

uint64_t std::__split_buffer<TNodeEventPtr>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    TNodeEventPtr::~TNodeEventPtr((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **TPropertyValue::As<__CFString const*>(const void **result, const void ***a2)
{
  v2 = *(result + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_19;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 8:
      if (v2 == 8)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    case 9:
      goto LABEL_17;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_19;
      }

      result = RetainCF<__CFString const*>(result);
      if (result)
      {
        v3 = CFAutorelease(result);
        result = static_cf_cast<__CFString const*,void const*>(v3);
      }

      break;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_19;
      }

      result = *result;
      break;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    case 23:
      if (v2 != 23)
      {
LABEL_19:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_17:
      result = *a2;
      break;
    default:
      return result;
  }

  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

uint64_t TReferenceCounted::TReferenceCounted<TDesktopServicesHelperNewFileSystemObjectOperation *>(uint64_t a1, int a2, TOperation *this)
{
  *a1 = a2;
  *(a1 + 8) = this;
  *(a1 + 16) = 1;
  *(a1 + 24) = &unk_1F5F3D6A0;
  *(a1 + 48) = a1 + 24;
  if (this)
  {
    TOperation::AddPtrReference(this);
  }

  return a1;
}

TOperation *std::__function::__func<TReferenceCounted::TReferenceCounted<TDesktopServicesHelperNewFileSystemObjectOperation *>(RefCountedType,TDesktopServicesHelperNewFileSystemObjectOperation *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TDesktopServicesHelperNewFileSystemObjectOperation *>(RefCountedType,TDesktopServicesHelperNewFileSystemObjectOperation *)::{lambda(void *)#1}>,void ()(void *)>::operator()(uint64_t a1, TOperation **a2)
{
  result = *a2;
  if (*a2)
  {
    return TOperation::RemovePtrReference(result);
  }

  return result;
}

uint64_t std::__function::__func<TReferenceCounted::TReferenceCounted<TDesktopServicesHelperNewFileSystemObjectOperation *>(RefCountedType,TDesktopServicesHelperNewFileSystemObjectOperation *)::{lambda(void *)#1},std::allocator<TReferenceCounted::TReferenceCounted<TDesktopServicesHelperNewFileSystemObjectOperation *>(RefCountedType,TDesktopServicesHelperNewFileSystemObjectOperation *)::{lambda(void *)#1}>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t TPropertyValue::As<BOOL>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_30;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_30;
      }

      v4 = 0;
      v3 = *a1;
      break;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 9:
      goto LABEL_25;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 17:
      if (v2 == 17)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    case 23:
      if (v2 != 23)
      {
LABEL_30:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_25:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v3 = 0;
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

uint64_t *TNodeEvent::Clone@<X0>(uint64_t *__return_ptr a1@<X8>, TNodeEvent *this@<X0>)
{
  result = [[FINodeEvent alloc] init:this];
  *a1 = result;
  return result;
}

void TNodeEvent::GetNode(TNodePtr *__return_ptr a1@<X8>, TNodeEvent *this@<X0>)
{
  v3 = [this->fFINode nodeRef];
  v5 = TNode::NodeFromNodeRef(v3, v4);

  TNodePtr::TNodePtr(a1, v5);
}

uint64_t TNodeEvent::Notify(TNode *a1, TDSNotifier **a2, int a3)
{
  if (TNode::IsContextOpen(a1))
  {
    TNodeEvent::NotifyCommon(a1, a2, a3);
    TNodeEvent::ForwardEventToParent(a1);
  }

  return 0;
}

void TBlockingEventQueue::~TBlockingEventQueue(TBlockingEventQueue *this)
{
  std::__function::__value_func<void ()(OpaqueEventQueue *)>::~__value_func[abi:ne200100](this + 184);
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::condition_variable::~condition_variable((this + 112));
  std::mutex::~mutex((this + 48));

  std::deque<TNodeEventPtr>::~deque[abi:ne200100](this);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 2;
      std::allocator_traits<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>>::destroy[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr>,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

id *std::pair<TNodePtr,TNodeEventPtr>::~pair(id *a1)
{
  v2 = a1[1];
  a1[1] = 0;

  return a1;
}

uint64_t std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      TNodePtr::TNodePtr(v8, v10);
      v8[1] = *(v10 + 8);
      v10 += 16;
      v8 += 2;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr> *,std::pair<TNodePtr,TNodeEventPtr> *,std::pair<TNodePtr,TNodeEventPtr> *>(&v12, a2, v7, v6);
}

void *std::__split_buffer<std::pair<TNodePtr,TNodeEventPtr>>::__construct_at_end_with_size<std::__wrap_iter<std::pair<TNodePtr,TNodeEventPtr> const*>>(void *result, id *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = &v4[2 * a3];
    do
    {
      *v4 = *a2;
      result = a2[1];
      v4[1] = result;
      v4 += 2;
      a2 += 2;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__swap_out_circular_buffer(void ***a1, uint64_t a2, void **a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr>*>(uint64_t a1, id *a2, id *a3, void *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v7 = a4;
  }

  else
  {
    v6 = a2;
    v7 = v12;
    do
    {
      *v4 = *v6;
      v4[1] = v6[1];
      v6 += 2;
      v7 += 2;
      v4 = v7;
    }

    while (v6 != a3);
    v12 = v7;
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<TNodePtr,TNodeEventPtr>>,std::pair<TNodePtr,TNodeEventPtr>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v7;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr> *,std::pair<TNodePtr,TNodeEventPtr> *,std::pair<TNodePtr,TNodeEventPtr> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      TNodePtr::operator=((a4 - 16), (v7 - 16));
      objc_storeStrong((a4 - 8), *(v7 - 8));
      a4 -= 16;
      v7 -= 16;
    }

    while (v7 != a2);
  }

  return a3;
}

id *std::__copy_impl::operator()[abi:ne200100]<std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr> const*,std::pair<TNodePtr,TNodeEventPtr>*>(int a1, id *a2, id *a3, id *location)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    objc_storeStrong(location, *v5);
    objc_storeStrong(location + 1, v5[1]);
    v5 += 2;
    location += 2;
  }

  while (v5 != v6);
  return v6;
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3D750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t std::deque<TNodeEventPtr>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 9];
    v7 = (*v6 + 8 * (v5 & 0x1FF));
    v8 = *(v2 + (((a1[5] + v5) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[5] + v5) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        *v7 = 0;

        v10 = *v7++;
        if (v7 - *v6 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 256;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_16;
    }

    v13 = 512;
  }

  a1[4] = v13;
LABEL_16:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<TNodeEventPtr *>::~__split_buffer(a1);
}

uint64_t *TPropertyValue::As<__CFData const*>(uint64_t *result, uint64_t **a2)
{
  v2 = *(result + 4);
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_17;
      }

      result = *a2;
      break;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 9:
      goto LABEL_9;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 11:
      if (v2 == 11)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_17;
      }

      result = *result;
      break;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    case 23:
      if (v2 != 23)
      {
LABEL_17:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_9:
      result = *a2;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t TPropertyValue::As<int>(unsigned int *a1, unsigned int *a2)
{
  v2 = a1[4];
  v3 = v2;
  switch(v2)
  {
    case 0:
      if (v2)
      {
        goto LABEL_48;
      }

      v3 = *a2;
      v4 = 0xFFFFE07800000000;
      return v4 | v3;
    case 1:
      if (v2 != 1)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 9:
      goto LABEL_45;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 19:
      if (v2 == 19)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    case 20:
      if (v2 != 20)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_48;
      }

LABEL_43:
      v4 = 0;
      v3 = *a1;
      break;
    case 23:
      if (v2 != 23)
      {
LABEL_48:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_45:
      v4 = 0xFFFFE08E00000000;
      v3 = *a2;
      break;
    default:
      v4 = 0xFFFFFFFF00000000;
      break;
  }

  return v4 | v3;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_ptr_emplace<TBlockingEventQueue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F3D7A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void std::__split_buffer<TNodeEventPtr *>::emplace_back<TNodeEventPtr *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<TNodeEventPtr *>::emplace_front<TNodeEventPtr *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<TNodeEventPtr *>::emplace_front<TNodeEventPtr *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::allocator<TNodeEventPtr *>::allocate_at_least[abi:ne200100](a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::__deallocate_node(uint64_t a1, TDSNotifier **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::__emplace_unique_key_args<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>> const&>(void *a1, void *a2)
{
  v2 = *a2 >> 4;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2 >> 4;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::equal_to<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>,std::allocator<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>>>::__construct_node_hash<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>> const&>();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != *a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E56E3154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::~__func(uint64_t a1)
{

  JUMPOUT(0x1E692CD30);
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5F3D7F0;
  result = MEMORY[0x1E692D6D0](*(a1 + 8));
  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer} {__strong})(OpaqueEventQueue *),std::allocator<void({block_pointer} {__strong})(OpaqueEventQueue *)>,void ()(OpaqueEventQueue *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E877EB48, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

unint64_t FormatOneDetails<std::string>(const std::string::value_type **a1, std::string *this, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
    v12 = 0;
    v9 = 1;
    return v12 | v9;
  }

  v7 = *a1;
  v8 = &(*a1)[v3];
  v9 = 1;
  v10 = *a1;
LABEL_3:
  v11 = 0;
  while (*v10 != asc_1E57B78C0[v11])
  {
    if (++v11 == 3)
    {
      if (++v10 == v8)
      {
        v12 = 0;
        return v12 | v9;
      }

      goto LABEL_3;
    }
  }

  v12 = 0;
  v9 = 1;
  if (v10 != v8)
  {
    v13 = v10 - v7;
    if (v10 - v7 != -1)
    {
      std::string::append(this, v7, v10 - v7);
      v14 = a1[1];
      v15 = v14 >= v13;
      v16 = v14 - v13;
      if (!v15)
      {
        goto LABEL_102;
      }

      *a1 += v13;
      a1[1] = v16;
      ParseFormat(&v36, a1);
      v17 = v37;
      if (!v37)
      {
        v12 = 0;
        v9 = 2;
        return v12 | v9;
      }

      if (v38 <= 4)
      {
        if ((v38 - 1) < 3)
        {
          goto LABEL_99;
        }

        if (v38 == 4)
        {
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            if (v37 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v37;
            memmove(&__dst, v36, v37);
            __dst.__r_.__value_.__s.__data_[v17] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v35, "??? (hex)");
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = &v35;
            }

            else
            {
              v23 = v35.__r_.__value_.__r.__words[0];
            }

            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            goto LABEL_94;
          }

LABEL_103:
          std::string::__throw_length_error[abi:ne200100]();
        }

        goto LABEL_39;
      }

      if (v38 <= 6)
      {
        if (v38 == 5)
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }
        }

        else
        {
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }
        }

LABEL_94:
        std::string::append(this, v23, size);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_99:
          v28 = a1[1];
          v29 = v28 - v37;
          if (v28 >= v37)
          {
            v9 = 0;
            *a1 += v37;
            a1[1] = v29;
            v12 = v38 << 32;
            return v12 | v9;
          }

LABEL_102:
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        v27 = __dst.__r_.__value_.__r.__words[0];
LABEL_98:
        operator delete(v27);
        goto LABEL_99;
      }

      if (v38 == 8)
      {
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_103;
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v37;
        memmove(&__dst, v36, v37);
        __dst.__r_.__value_.__s.__data_[v17] = 0;
        ExtractEmbeddedFormat(&v35, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        v20 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        v21 = &v35;
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v20 = v35.__r_.__value_.__l.__size_;
          v21 = v35.__r_.__value_.__r.__words[0];
        }

        __p.__r_.__value_.__r.__words[0] = v21;
        __p.__r_.__value_.__l.__size_ = v20;
        FormatDetails<std::string>(&__p, a3, &__dst);
        v22 = v37;
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v37 >= 0x17)
        {
          operator new();
        }

        v32 = v37;
        if (v37)
        {
          memmove(&v31, v36, v37);
        }

        *(&v31 + v22) = 0;
        ExtendedFormatAdaptor(&v31, &__dst, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v26 = __p.__r_.__value_.__l.__size_;
        }

        std::string::append(this, p_p, v26);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v38 != 7)
        {
LABEL_39:
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__dst, *a3, *(a3 + 8));
          }

          else
          {
            __dst = *a3;
          }

          RedactForPrivacy(&v36, &__dst, &v35);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = &v35;
          }

          else
          {
            v23 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          goto LABEL_94;
        }

        DeEscapeFormatFragment(&v36, &v35);
        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v35;
        }

        else
        {
          v18 = v35.__r_.__value_.__r.__words[0];
        }

        if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = v35.__r_.__value_.__l.__size_;
        }

        std::string::append(this, v18, v19);
      }

      if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_99;
      }

      v27 = v35.__r_.__value_.__r.__words[0];
      goto LABEL_98;
    }
  }

  return v12 | v9;
}