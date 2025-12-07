void llvm::StdThreadPool::wait(llvm::StdThreadPool *this)
{
  v2.__m_ = (this + 96);
  v2.__owns_ = 1;
  std::mutex::lock((this + 96));
  while (*(this + 64) || *(this + 11))
  {
    std::condition_variable::wait((this + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void llvm::StdThreadPool::wait(uint64_t a1, uint64_t a2)
{
  llvm::sys::RWMutexImpl::lock_shared((a1 + 32));
  current_id_impl = llvm::llvm_thread_get_current_id_impl();
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 == v6)
  {
LABEL_5:
    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));
    v24.__m_ = (a1 + 96);
    v24.__owns_ = 1;
    std::mutex::lock((a1 + 96));
    v9 = (a2 >> 4) ^ (a2 >> 9);
    v10 = *(a1 + 280);
    if (v10)
    {
      while (1)
      {
        v11 = *(a1 + 264);
        v12 = v10 - 1;
        v13 = v12 & v9;
        v14 = *(v11 + 16 * (v12 & v9));
        if (v14 != a2)
        {
          break;
        }

LABEL_7:
        std::condition_variable::wait((a1 + 208), &v24);
        v10 = *(a1 + 280);
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v15 = 1;
      while (v14 != -4096)
      {
        v16 = v13 + v15++;
        v13 = v16 & v12;
        v14 = *(v11 + 16 * v13);
        if (v14 == a2)
        {
          goto LABEL_7;
        }
      }
    }

LABEL_13:
    v17 = *(a1 + 56);
    if (*(a1 + 64) != v17)
    {
      v18 = *(a1 + 80);
      v19 = (v17 + 8 * (v18 / 0x66));
      v20 = *v19;
      v21 = *v19 + 40 * (v18 % 0x66);
      v22 = *(v17 + 8 * ((*(a1 + 88) + v18) / 0x66)) + 40 * ((*(a1 + 88) + v18) % 0x66);
      while (v21 != v22)
      {
        if (*(v21 + 32) == a2)
        {
          goto LABEL_7;
        }

        v21 += 40;
        if (v21 - v20 == 4080)
        {
          v23 = v19[1];
          ++v19;
          v20 = v23;
          v21 = v23;
        }
      }
    }

    if (v24.__owns_)
    {
      std::mutex::unlock(v24.__m_);
    }
  }

  else
  {
    v7 = current_id_impl;
    while (1)
    {
      ZinIrHalH13g::~ZinIrHalH13g(*v5);
      if (v7 == v8)
      {
        break;
      }

      if (++v5 == v6)
      {
        goto LABEL_5;
      }
    }

    llvm::sys::RWMutexImpl::unlock_shared((a1 + 32));

    llvm::StdThreadPool::processTasks(a1, a2);
  }
}

void llvm::StdThreadPool::~StdThreadPool(llvm::StdThreadPool *this)
{
  *this = &unk_1F1A360D8;
  std::mutex::lock((this + 96));
  *(this + 288) = 0;
  std::mutex::unlock((this + 96));
  std::condition_variable::notify_all((this + 160));
  llvm::sys::RWMutexImpl::lock_shared(this + 4);
  v3 = *(this + 1);
  for (i = *(this + 2); v3 != i; ++v3)
  {
    llvm::llvm_thread_join_impl(*v3, v2);
    *v3 = 0;
  }

  llvm::sys::RWMutexImpl::unlock_shared(this + 4);
  llvm::deallocate_buffer(*(this + 33), (16 * *(this + 70)));
}

{
  llvm::StdThreadPool::~StdThreadPool(this);
}

void sub_1A73F1564()
{

  JUMPOUT(0x1AC55A070);
}

BOOL llvm::StdThreadPool::asyncEnqueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v11 = v10;
      (*(*v6 + 24))(v6, v10);
    }

    else
    {
      v11 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = a3;
  std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>((a1 + 48), v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  return llvm::StdThreadPool::grow(a1, v7 + v8);
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::emplace_back<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
    v9 = *(a2 + 24);
    if (v9)
    {
LABEL_7:
      if (v9 == a2)
      {
        *(v8 + 24) = v8;
        (*(**(a2 + 24) + 24))(*(a2 + 24), v8);
        v4 = a1[1];
        v5 = a1[2];
      }

      else
      {
        *(v8 + 24) = v9;
        *(a2 + 24) = 0;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
    v9 = *(a2 + 24);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  *(v8 + 24) = 0;
LABEL_12:
  *(v8 + 32) = *(a2 + 32);
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = (v4 + 8 * (v12 / 0x66));
  v14 = *v13 + 40 * (v12 % 0x66);
  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v15 == *v13)
  {
    return *(v13 - 1) + 4040;
  }

  else
  {
    return v15 - 40;
  }
}

void std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
}

void std::__split_buffer<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *,std::allocator<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>>::emplace_front<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

uint64_t std::deque<std::pair<std::function<void ()(void)>,llvm::ThreadPoolTaskGroup *>>::~deque[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
    goto LABEL_15;
  }

  v4 = *(a1 + 32);
  v5 = &v2[v4 / 0x66];
  v6 = *v5 + 40 * (v4 % 0x66);
  v7 = v2[(*(a1 + 40) + v4) / 0x66] + 40 * ((*(a1 + 40) + v4) % 0x66);
  if (v6 == v7)
  {
    goto LABEL_13;
  }

  do
  {
    v8 = *(v6 + 24);
    if (v8 == v6)
    {
      (*(*v8 + 32))(v8);
      v6 += 40;
      if (v6 - *v5 != 4080)
      {
        continue;
      }

LABEL_11:
      v9 = v5[1];
      ++v5;
      v6 = v9;
      continue;
    }

    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v6 += 40;
    if (v6 - *v5 == 4080)
    {
      goto LABEL_11;
    }
  }

  while (v6 != v7);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
LABEL_13:
  *(a1 + 40) = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v10 = v3 - v2;
    }

    while (v10 > 2);
  }

LABEL_15:
  if (v10 == 1)
  {
    v11 = 51;
LABEL_20:
    *(a1 + 32) = v11;
  }

  else if (v10 == 2)
  {
    v11 = 102;
    goto LABEL_20;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t llvm::thread::ThreadProxy<std::tuple<llvm::StdThreadPool::grow(int)::$_0>>(uint64_t *a1, const llvm::Twine *a2)
{
  v3 = *a1;
  v5[0] = "llvm-worker-{0}";
  v5[1] = 15;
  v5[2] = &v8;
  v5[3] = 1;
  v6 = 1;
  v7[0] = &unk_1F1A36140;
  v7[1] = a1 + 1;
  v8 = v7;
  v10 = 263;
  v9 = v5;
  llvm::set_thread_name(&v9, a2);
  ZinIrHalH13g::~ZinIrHalH13g((v3 + 292));
  llvm::StdThreadPool::processTasks(v3, 0);
  MEMORY[0x1AC55A070](a1, 0x1020C403A5D3213);
  return 0;
}

void llvm::CreateInfoOutputFile()
{
  if (!atomic_load_explicit(qword_1ED4408E8, memory_order_acquire))
  {
    llvm::ManagedStaticBase::RegisterManagedStatic(qword_1ED4408E8, llvm::object_creator<std::string>::call, llvm::object_deleter<std::string>::call);
  }

  if (*(qword_1ED4408E8[0] + 23) < 0)
  {
    v1 = *(qword_1ED4408E8[0] + 8);
    if (!v1)
    {
      goto LABEL_11;
    }

    if (v1 != 1 || **qword_1ED4408E8[0] != 45)
    {
LABEL_10:
      std::system_category();
      operator new();
    }
  }

  else
  {
    if (*(qword_1ED4408E8[0] + 23) != 1)
    {
      if (*(qword_1ED4408E8[0] + 23))
      {
        goto LABEL_10;
      }

LABEL_11:
      operator new();
    }

    if (*qword_1ED4408E8[0] != 45)
    {
      goto LABEL_10;
    }
  }

  operator new();
}

uint64_t llvm::object_deleter<std::string>::call(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

void llvm::CleanupInstaller::~CleanupInstaller(llvm::CleanupInstaller *this, uint64_t a2, BOOL a3)
{
  v4 = *(this + 23);
  v5 = v4;
  v6 = *(this + 1);
  if ((v4 & 0x80u) == 0)
  {
    v7 = *(this + 23);
  }

  else
  {
    v7 = *(this + 1);
  }

  if (v7 == 1)
  {
    v8 = *this;
    if ((v4 & 0x80u) == 0)
    {
      v8 = this;
    }

    if (*v8 == 45)
    {
      if ((v4 & 0x80) == 0)
      {
        return;
      }

LABEL_19:
      operator delete(*this);
      return;
    }
  }

  if ((*(this + 24) & 1) == 0)
  {
    v12 = 260;
    v11 = this;
    llvm::sys::fs::remove(&v11, 1);
    v4 = *(this + 23);
    v6 = *(this + 1);
    v5 = *(this + 23);
  }

  if (v5 >= 0)
  {
    v9 = this;
  }

  else
  {
    v9 = *this;
  }

  if (v5 >= 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  llvm::sys::DontRemoveFileOnSignal(v9, v10);
  if ((*(this + 23) & 0x80) != 0)
  {
    goto LABEL_19;
  }
}

void *llvm::ToolOutputFile::ToolOutputFile(void *__dst, _BYTE *__src, size_t __len, uint64_t a4, uint64_t a5)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (!__len)
  {
    *__dst = 0;
    *(__dst + 24) = 0;
    goto LABEL_9;
  }

  memmove(__dst, __src, __len);
  *(__dst + __len) = 0;
  *(__dst + 24) = 0;
  if (__len != 1 || *__src != 45)
  {
LABEL_9:
    llvm::sys::RemoveFileOnSignal(__src, __len);
  }

  *(__dst + 32) = 0;
  v10 = (__dst + 4);
  *(__dst + 128) = 0;
  if (*__src == 45)
  {
    __dst[17] = llvm::outs(v10);
    v11 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v11;
  }

  else
  {
    v12 = llvm::raw_fd_ostream::raw_fd_ostream(v10, __src, 1, a4, a5);
    *(__dst + 128) = 1;
    __dst[17] = v12;
    if (*a4)
    {
      *(__dst + 24) = 1;
    }
  }

  return __dst;
}

void llvm::Twine::str(llvm::formatv_object_base **this@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (v3 == 7)
  {
    if (*(this + 33) == 1)
    {
      v6 = *this;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      LODWORD(v14) = 0;
      v17 = 0;
      v18 = 1;
      v15 = 0;
      v16 = 0;
      *(&v14 + 1) = 0;
      v13 = &unk_1F1A362A8;
      v19 = a2;
      llvm::raw_ostream::SetBufferAndMode(&v13, 0, 0, 0);
      llvm::raw_ostream::operator<<(&v13, v6);
      if (v16 != *(&v14 + 1))
      {
        llvm::raw_ostream::flush_nonempty(&v13);
      }

      llvm::raw_ostream::~raw_ostream(&v13);
      return;
    }
  }

  else if (v3 == 4 && *(this + 33) == 1)
  {
    v4 = *this;
    if (*(*this + 23) < 0)
    {
      v11 = *v4;
      v12 = *(v4 + 1);

      std::string::__init_copy_ctor_external(a2, v11, v12);
    }

    else
    {
      v5 = *v4;
      *(a2 + 16) = *(v4 + 2);
      *a2 = v5;
    }

    return;
  }

  v13 = &v15;
  v14 = xmmword_1A75A2970;
  v7 = llvm::Twine::toStringRef(this, &v13);
  if (!v7)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v10 = v13;
    if (v13 == &v15)
    {
      return;
    }

    goto LABEL_20;
  }

  v9 = v8;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<mlir::Operation *>::__throw_length_error[abi:nn200100]();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v8;
  if (v8)
  {
    memmove(a2, v7, v8);
  }

  *(a2 + v9) = 0;
  v10 = v13;
  if (v13 != &v15)
  {
LABEL_20:
    free(v10);
  }
}

const char *llvm::Twine::toStringRef(void *a1, uint64_t a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_12;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      return *a1;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    return 0;
  }

  if (v3 == 3)
  {
    v8 = *a1;
    if (*a1)
    {
      strlen(v8);
      return v8;
    }

    return 0;
  }

  if (v3 != 4)
  {
LABEL_12:
    v10 = 2;
    v14 = 0;
    v15 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v9 = &unk_1F1A36338;
    v16 = a2;
    v6 = llvm::raw_ostream::SetBufferAndMode(&v9, 0, 0, 0);
    v7 = llvm::Twine::printOneChild(v6, &v9, *a1, a1[1], *(a1 + 32));
    llvm::Twine::printOneChild(v7, &v9, a1[2], a1[3], *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v9);
    return *a2;
  }

  if (*(*a1 + 23) >= 0)
  {
    return *a1;
  }

  else
  {
    return **a1;
  }
}

void llvm::Twine::toVector(uint64_t a1, uint64_t a2)
{
  v6 = 2;
  v10 = 0;
  v11 = 1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = &unk_1F1A36338;
  v12 = a2;
  v3 = llvm::raw_ostream::SetBufferAndMode(&v5, 0, 0, 0);
  v4 = llvm::Twine::printOneChild(v3, &v5, *a1, *(a1 + 8), *(a1 + 32));
  llvm::Twine::printOneChild(v4, &v5, *(a1 + 16), *(a1 + 24), *(a1 + 33));
  llvm::raw_ostream::~raw_ostream(&v5);
}

llvm::raw_ostream *llvm::Twine::print(llvm::Twine *this, llvm::raw_ostream **a2)
{
  v4 = llvm::Twine::printOneChild(this, a2, *this, *(this + 1), *(this + 32));
  v5 = *(this + 2);
  v6 = *(this + 3);
  v7 = *(this + 33);

  return llvm::Twine::printOneChild(v4, a2, v5, v6, v7);
}

const char *llvm::Twine::toNullTerminatedStringRef(const char **a1, void *a2)
{
  if (*(a1 + 33) != 1 || (v4 = *(a1 + 32), v4 < 2))
  {
LABEL_9:
    v11 = 2;
    v15 = 0;
    v16 = 1;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v10 = &unk_1F1A36338;
    v17 = a2;
    v7 = llvm::raw_ostream::SetBufferAndMode(&v10, 0, 0, 0);
    v8 = llvm::Twine::printOneChild(v7, &v10, *a1, a1[1], *(a1 + 32));
    llvm::Twine::printOneChild(v8, &v10, a1[2], a1[3], *(a1 + 33));
    llvm::raw_ostream::~raw_ostream(&v10);
    v9 = a2[1];
    if ((v9 + 1) > a2[2])
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod(a2, a2 + 3, v9 + 1, 1);
      v9 = a2[1];
    }

    *(*a2 + v9) = 0;
    return *a2;
  }

  if (v4 == 6)
  {
    return *a1;
  }

  if (v4 != 4)
  {
    if (v4 == 3)
    {
      v5 = *a1;
      if (!*a1)
      {
        return 0;
      }

      strlen(*a1);
      return v5;
    }

    goto LABEL_9;
  }

  result = *a1;
  if (((*a1)[23] & 0x8000000000000000) != 0)
  {
    return *result;
  }

  return result;
}

llvm::raw_ostream *llvm::Twine::printOneChild(llvm::raw_ostream *result, llvm::raw_ostream **a2, uint64_t a3, size_t a4, unsigned __int8 a5)
{
  v7 = a5;
  if (a5 == 2)
  {
    do
    {
      result = llvm::Twine::printOneChild(result, a2, *a3, *(a3 + 8), *(a3 + 32));
      v8 = *(a3 + 33);
      v9 = a3 + 16;
      a3 = *(a3 + 16);
      a4 = *(v9 + 8);
      v7 = v8;
    }

    while (v8 == 2);
  }

  if (v7 > 9)
  {
    if (v7 > 12)
    {
      if (v7 == 13)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      if (v7 != 14)
      {
        if (v7 == 15)
        {
          v16 = *a3;

          return llvm::raw_ostream::write_hex(a2, v16);
        }

        return result;
      }

      v14 = *a3;
      v15 = a2;
    }

    else if (v7 == 10)
    {
      v14 = a3;
      v15 = a2;
    }

    else
    {
      if (v7 == 11)
      {
        v17 = *a3;
        v18 = a2;

        return llvm::raw_ostream::operator<<(v18, v17);
      }

      v14 = *a3;
      v15 = a2;
    }

    return llvm::raw_ostream::operator<<(v15, v14);
  }

  if (v7 > 6)
  {
    if (v7 == 7)
    {

      return llvm::raw_ostream::operator<<(a2, a3);
    }

    if (v7 == 8)
    {
      v20 = a2[4];
      if (v20 >= a2[3])
      {

        return llvm::raw_ostream::write(a2, a3);
      }

      else
      {
        a2[4] = (v20 + 1);
        *v20 = a3;
      }

      return result;
    }

    v17 = a3;
    v18 = a2;

    return llvm::raw_ostream::operator<<(v18, v17);
  }

  if ((v7 - 5) < 2)
  {
    result = a2[4];
    if (a4 > a2[3] - result)
    {
      v13 = a2;
      v11 = a3;
      v12 = a4;

      return llvm::raw_ostream::write(v13, v11, v12);
    }

    if (a4)
    {
      v21 = a3;
      v22 = a4;
      result = memcpy(result, v21, a4);
      a2[4] = (a2[4] + v22);
    }
  }

  else if (v7 == 3)
  {
    if (a3)
    {
      v19 = strlen(a3);
      result = a2[4];
      if (v19 > a2[3] - result)
      {
        v13 = a2;
        v11 = a3;
        v12 = v19;

        return llvm::raw_ostream::write(v13, v11, v12);
      }

      if (v19)
      {
        result = memcpy(result, a3, v19);
        a2[4] = (a2[4] + v19);
      }
    }
  }

  else if (v7 == 4)
  {
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    v13 = a2;

    return llvm::raw_ostream::write(v13, v11, v12);
  }

  return result;
}

void llvm::raw_ostream::~raw_ostream(llvm::raw_ostream *this)
{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x1AC55A040](v1, 0x1000C8077774924);
    }
  }
}

uint64_t llvm::raw_ostream::SetBuffered(llvm::raw_ostream *this)
{
  result = (*(*this + 88))(this);
  v4 = (this + 16);
  v3 = *(this + 2);
  v5 = *(this + 4);
  if (result)
  {
    if (v5 != v3)
    {
      *(this + 4) = v3;
      (*(*this + 72))(this);
    }

    operator new[]();
  }

  v6 = v5 - v3;
  if (v5 != v3)
  {
    *(this + 4) = v3;
    result = (*(*this + 72))(this);
  }

  if (*(this + 11) == 1)
  {
    result = *v4;
    if (*v4)
    {
      result = MEMORY[0x1AC55A040](result, 0x1000C8077774924, v6);
    }
  }

  *(this + 11) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *v4 = 0;
  return result;
}

uint64_t llvm::raw_ostream::SetBufferAndMode(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 44) == 1)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      v8 = a3;
      MEMORY[0x1AC55A040](v4, 0x1000C8077774924);
      a3 = v8;
      a2 = v6;
      result = v5;
      a4 = v7;
    }
  }

  *(result + 16) = a2;
  *(result + 24) = a2 + a3;
  *(result + 32) = a2;
  *(result + 44) = a4;
  return result;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, unint64_t a2)
{
  llvm::write_integer(a1, a2, 0, 0);
  return a1;
}

{
  llvm::write_hex(a1, a2, 3, 0, 0);
  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *a1, uint64_t a2)
{
  v16[16] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 3) - *(a1 + 4);
  if (v4 <= 3)
  {
    v7 = 127;
  }

  else
  {
    v5 = (*(*a2 + 8))(a2);
    if (v5 < v4)
    {
      v6 = v5;
    }

    else
    {
      v6 = v5 + 1;
    }

    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = (2 * v4);
    }

    if (v4 >= v7)
    {
      *(a1 + 4) += v7;
      return a1;
    }
  }

  v14 = v16;
  v15 = xmmword_1A75DA7F0;
  do
  {
    v12 = v15;
    if (v15 != v7)
    {
      if (v15 <= v7)
      {
        if (*(&v15 + 1) < v7)
        {
          llvm::SmallVectorBase<unsigned long long>::grow_pod(&v14, v16, v7, 1);
          v12 = v15;
        }

        if (v7 != v12)
        {
          bzero(&v14[v12], v7 - v12);
        }
      }

      *&v15 = v7;
    }

    v8 = (*(*a2 + 8))(a2, v14, v7);
    if (v8 < v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v8 + 1;
    }

    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = (2 * v7);
    }

    v11 = v7 >= v10;
    v7 = v10;
  }

  while (!v11);
  llvm::raw_ostream::write(a1, v14, v10);
  if (v14 != v16)
  {
    free(v14);
  }

  return a1;
}

{
  v21[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 20) == 1)
  {
    if (*(a2 + 22))
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (*(a2 + 22))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if (*(a2 + 21))
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    llvm::write_hex(a1, *a2, v5, *(a2 + 16), 1);
  }

  else
  {
    v18 = &v19;
    v19 = v21;
    v20 = xmmword_1A75DA800;
    v12 = 2;
    v16 = 0;
    v17 = 0;
    v11 = &unk_1F1A36338;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    llvm::write_integer(&v11, *(a2 + 8), 0, 0);
    v7 = *(a2 + 16);
    if (v20 < v7)
    {
      v8 = v7 - v20;
      if ((v7 - v20) >= 0x50)
      {
        do
        {
          if (v8 >= 0x4F)
          {
            v9 = 79;
          }

          else
          {
            v9 = v8;
          }

          llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v9);
          v8 -= v9;
        }

        while (v8);
      }

      else
      {
        llvm::raw_ostream::write(a1, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, (v7 - v20));
      }
    }

    llvm::raw_ostream::write(a1, v19, v20);
    v11 = &unk_1F1A36188;
    if (v17 == 1 && v13)
    {
      MEMORY[0x1AC55A040](v13, 0x1000C8077774924);
    }

    if (v19 != v21)
    {
      free(v19);
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::write(llvm::raw_ostream *this, char a2)
{
  v2 = *(this + 4);
  if (v2 < *(this + 3))
  {
LABEL_2:
    *(this + 4) = v2 + 1;
    *v2 = a2;
    return this;
  }

  v3 = a2;
  v4 = *(this + 2);
  if (v4)
  {
LABEL_4:
    *(this + 4) = v4;
    v5 = this;
    (*(*this + 72))();
    this = v5;
    v2 = *(v5 + 4);
LABEL_5:
    a2 = v3;
    goto LABEL_2;
  }

  while (1)
  {
    v6 = this;
    if (!*(this + 11))
    {
      break;
    }

    llvm::raw_ostream::SetBuffered(this);
    v2 = *(v6 + 4);
    if (v2 < *(v6 + 3))
    {
      this = v6;
      goto LABEL_5;
    }

    this = v6;
    v4 = *(v6 + 2);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  v7 = v3;
  (*(*this + 72))(this, &v7, 1);
  return v6;
}

void *llvm::raw_ostream::write(void *this, const char *a2, size_t a3)
{
  v3 = this[4];
  v4 = this[3] - v3;
  if (v4 < a3)
  {
    while (1)
    {
      v6 = this[2];
      if (!v6)
      {
        break;
      }

LABEL_16:
      v11 = a3;
      if (v3 == v6)
      {
        v4 *= a3 / v4;
        v7 = a3 - v4;
        v8 = this;
        v9 = a2;
        (*(*this + 72))();
        v3 = v8[4];
        this = v8;
        v10 = v8[3] - v3;
        a3 = v7;
        if (v7 <= v10)
        {
          llvm::raw_ostream::copy_to_buffer(v8, &v9[v4], v7);
          return v8;
        }
      }

      else
      {
        v12 = this;
        v9 = a2;
        llvm::raw_ostream::copy_to_buffer(this, a2, v4);
        v12[4] = v12[2];
        (*(*v12 + 72))(v12);
        this = v12;
        a3 = v11 - v4;
        v3 = v12[4];
        v10 = v12[3] - v3;
      }

      a2 = &v9[v4];
      v4 = v10;
      if (v10 >= a3)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v15 = a2;
      v16 = a3;
      v5 = this;
      if (!*(this + 11))
      {
        (*(*this + 72))(this, a2, a3);
        return v5;
      }

      llvm::raw_ostream::SetBuffered(this);
      v3 = v5[4];
      v4 = v5[3] - v3;
      if (v4 >= v16)
      {
        break;
      }

      this = v5;
      v6 = v5[2];
      a2 = v15;
      a3 = v16;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    this = v5;
    a2 = v15;
    a3 = v16;
    if (v16 > 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_2:
    if (a3 > 1)
    {
LABEL_3:
      switch(a3)
      {
        case 2uLL:
LABEL_8:
          v3[1] = a2[1];
          v3 = this[4];
LABEL_23:
          *v3 = *a2;
          goto LABEL_24;
        case 3uLL:
LABEL_7:
          v3[2] = a2[2];
          v3 = this[4];
          goto LABEL_8;
        case 4uLL:
          v3[3] = a2[3];
          v3 = this[4];
          goto LABEL_7;
      }

LABEL_25:
      v13 = this;
      v14 = a3;
      memcpy(v3, a2, a3);
      a3 = v14;
      this = v13;
      goto LABEL_24;
    }
  }

  if (a3)
  {
    if (a3 == 1)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_24:
  this[4] += a3;
  return this;
}

uint64_t llvm::raw_ostream::copy_to_buffer(uint64_t this, const char *a2, int64_t a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
LABEL_11:
      *(this + 32) += a3;
      return this;
    }

    if (a3 == 1)
    {
LABEL_10:
      **(this + 32) = *a2;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
LABEL_7:
        *(*(this + 32) + 1) = a2[1];
        goto LABEL_10;
      case 3:
LABEL_6:
        *(*(this + 32) + 2) = a2[2];
        goto LABEL_7;
      case 4:
        *(*(this + 32) + 3) = a2[3];
        goto LABEL_6;
    }
  }

  v3 = this;
  memcpy(*(this + 32), a2, a3);
  this = v3;
  *(v3 + 32) += a3;
  return this;
}

void llvm::formatv_object_base::format(llvm::formatv_object_base *this, llvm::raw_ostream *a2)
{
  v17[14] = *MEMORY[0x1E69E9840];
  llvm::formatv_object_base::parseFormatString(*this, *(this + 1), &v15);
  v4 = v15;
  if (v16)
  {
    v5 = 56 * v16;
    v6 = (v15 + 24);
    do
    {
      if (*(v6 - 6) == 1 || (v7 = *v6, *(this + 3) <= v7))
      {
        v9 = *(v6 - 2);
        v10 = *(v6 - 1);
        v11 = *(a2 + 4);
        if (v10 > *(a2 + 3) - v11)
        {
          llvm::raw_ostream::write(a2, v9, v10);
        }

        else if (v10)
        {
          v12 = *(v6 - 1);
          memcpy(v11, v9, v10);
          *(a2 + 4) += v12;
        }
      }

      else
      {
        v8 = *(v6 + 12);
        v13[0] = *(*(this + 2) + 8 * v7);
        v13[1] = vrev64_s32(*(v6 + 1));
        v14 = v8;
        llvm::FmtAlign::format(v13, a2);
      }

      v6 += 14;
      v5 -= 56;
    }

    while (v5);
    v4 = v15;
  }

  if (v4 != v17)
  {
    free(v4);
  }
}

llvm::raw_ostream *llvm::raw_ostream::operator<<(llvm::raw_ostream *this, uint64_t a2)
{
  v4 = *(a2 + 16) - *(a2 + 8);
  if (v4 < 1)
  {
    LODWORD(v4) = 0;
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(a2 + 20);
  if (v5 == 3)
  {
    v6 = v4 - (v4 >> 1);
    v4 = v4 >> 1;
    if (v4 < 0x50)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 != 2)
    {
      if (v5 == 1)
      {
        v6 = *(a2 + 16) - *(a2 + 8);
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v4) = 0;
      goto LABEL_10;
    }

    v6 = 0;
    if (v4 < 0x50)
    {
LABEL_10:
      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v4);
      goto LABEL_11;
    }
  }

  do
  {
    if (v4 >= 0x4F)
    {
      v13 = 79;
    }

    else
    {
      v13 = v4;
    }

    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v13);
    LODWORD(v4) = v4 - v13;
  }

  while (v4);
LABEL_11:
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(this + 4);
  if (v8 <= *(this + 3) - v9)
  {
    if (v8)
    {
      v10 = *(a2 + 8);
      memcpy(v9, v7, v8);
      *(this + 4) += v10;
    }
  }

  else
  {
    llvm::raw_ostream::write(this, v7, v8);
  }

  if (v6 >= 0x50)
  {
    do
    {
      if (v6 >= 0x4F)
      {
        v11 = 79;
      }

      else
      {
        v11 = v6;
      }

      llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v11);
      v6 -= v11;
    }

    while (v6);
  }

  else
  {
    llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v6);
  }

  return this;
}

void *llvm::raw_ostream::indent(void *this, unsigned int a2)
{
  v2 = a2;
  if (a2 < 0x50)
  {
    return llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, a2);
  }

  do
  {
    if (v2 >= 0x4F)
    {
      v3 = 79;
    }

    else
    {
      v3 = v2;
    }

    this = llvm::raw_ostream::write(this, write_padding<(char)32>(llvm::raw_ostream &,unsigned int)::Chars, v3);
    v2 -= v3;
  }

  while (v2);
  return this;
}

void llvm::raw_svector_ostream::~raw_svector_ostream(llvm::raw_svector_ostream *this)
{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x1AC55A040](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x1AC55A040](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::raw_ostream::changeColor(uint64_t a1, int a2, int a3, llvm::sys::Process *a4)
{
  if (*(a1 + 40) == 1)
  {
    IsGraphInitialization = Layer2TDMapper::SourceLayer::IsGraphInitialization(a1);
    if (!IsGraphInitialization || (IsGraphInitialization = (*(*a1 + 48))(a1), IsGraphInitialization))
    {
      if (Layer2TDMapper::SourceLayer::IsGraphInitialization(IsGraphInitialization))
      {
        v9 = *(a1 + 16);
        if (*(a1 + 32) != v9)
        {
          *(a1 + 32) = v9;
          (*(*a1 + 72))(a1);
        }
      }

      if (a2 == 16)
      {
        v10 = llvm::sys::Process::OutputBold(a4);
        if (!v10)
        {
          return a1;
        }

        goto LABEL_11;
      }

      v10 = llvm::sys::Process::OutputColor(a2, a3, a4);
      if (v10)
      {
LABEL_11:
        v11 = v10;
        v12 = strlen(v10);
        llvm::raw_ostream::write(a1, v11, v12);
      }
    }
  }

  return a1;
}

llvm::raw_ostream *llvm::raw_ostream::resetColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    IsGraphInitialization = Layer2TDMapper::SourceLayer::IsGraphInitialization(this);
    if (!IsGraphInitialization || (IsGraphInitialization = (*(*this + 48))(this), IsGraphInitialization))
    {
      v3 = Layer2TDMapper::SourceLayer::IsGraphInitialization(IsGraphInitialization);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::ResetColor(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

llvm::raw_ostream *llvm::raw_ostream::reverseColor(llvm::raw_ostream *this)
{
  if (*(this + 40) == 1)
  {
    IsGraphInitialization = Layer2TDMapper::SourceLayer::IsGraphInitialization(this);
    if (!IsGraphInitialization || (IsGraphInitialization = (*(*this + 48))(this), IsGraphInitialization))
    {
      v3 = Layer2TDMapper::SourceLayer::IsGraphInitialization(IsGraphInitialization);
      if (v3)
      {
        v4 = *(this + 2);
        if (*(this + 4) != v4)
        {
          *(this + 4) = v4;
          v3 = (*(*this + 72))(this);
        }
      }

      v5 = llvm::sys::Process::OutputReverse(v3);
      if (v5)
      {
        v6 = v5;
        v7 = strlen(v5);
        llvm::raw_ostream::write(this, v6, v7);
      }
    }
  }

  return this;
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a3 == 1 && *a2 == 45)
  {
    v7 = std::system_category();
    *a4 = 0;
    *(a4 + 8) = v7;
    llvm::sys::ChangeStdoutMode();
    v8 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 261;
    v12[0] = a2;
    v12[1] = a3;
    v9 = llvm::sys::fs::openFile(v12, &v14, 0, 2, a5, 438);
    *a4 = v9;
    *(a4 + 8) = v10;
    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = v14;
    }
  }

  return llvm::raw_fd_ostream::raw_fd_ostream(a1, v8, 1, 0, 0);
}

uint64_t llvm::raw_fd_ostream::raw_fd_ostream(uint64_t a1, unsigned int a2, char a3, int a4, int a5)
{
  *(a1 + 8) = a5;
  *(a1 + 40) = 0;
  *(a1 + 44) = a4 ^ 1;
  *(a1 + 48) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F1A36200;
  *(a1 + 52) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = std::system_category();
  *(a1 + 53) = 0;
  *(a1 + 80) = v7;
  *(a1 + 88) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 52) = 0;
    return a1;
  }

  else
  {
    *(a1 + 40) = 1;
    if (a2 <= 2)
    {
      *(a1 + 52) = 0;
    }

    v8 = lseek(a2, 0, 1);
    memset(v12, 0, sizeof(v12));
    v13 = 0xFFFFLL;
    v14 = 0;
    v15 = 0;
    v9 = llvm::sys::fs::status(*(a1 + 48), v12);
    *(a1 + 54) = *&v12[40] == 2;
    *(a1 + 53) = v9 == 0 && v8 != -1;
    if (v9 == 0 && v8 != -1)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 88) = v10;
    return a1;
  }
}

void llvm::raw_fd_ostream::~raw_fd_ostream(llvm::raw_fd_ostream *this)
{
  *this = &unk_1F1A36200;
  if ((*(this + 12) & 0x80000000) == 0)
  {
    v2 = *(this + 4);
    v3 = *(this + 2);
    if (v2 != v3)
    {
      *(this + 4) = v3;
      llvm::raw_fd_ostream::write_impl(this, v3, v2 - v3);
    }

    if (*(this + 52) == 1)
    {
      v4 = llvm::sys::Process::SafelyCloseFileDescriptor(*(this + 12));
      if (v4)
      {
        *(this + 9) = v4;
        *(this + 10) = v5;
      }
    }
  }

  if (*(this + 18))
  {
    v11 = "IO failure on output stream: ";
    v12 = 259;
    v7 = *(this + 72);
    std::error_code::message(&v8, &v7);
    v10 = 260;
    v9 = &v8;
    llvm::operator+(&v11, &v9, v13);
    llvm::report_fatal_error(v13, 0);
  }

  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v6 = *(this + 2);
    if (v6)
    {
      MEMORY[0x1AC55A040](v6, 0x1000C8077774924);
    }
  }
}

{
  llvm::raw_fd_ostream::~raw_fd_ostream(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t llvm::raw_fd_ostream::write_impl(llvm::raw_fd_ostream *this, const char *__buf, unint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    v7 = v6[2];
    if (v6[4] != v7)
    {
      v6[4] = v7;
      (*(*v6 + 72))(v6);
    }
  }

  *(this + 11) += a3;
  while (1)
  {
    v8 = a3 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : a3;
    result = write(*(this + 12), __buf, v8);
    if (result < 0)
    {
      break;
    }

    __buf += result;
    a3 -= result;
LABEL_6:
    if (!a3)
    {
      return result;
    }
  }

  result = __error();
  if (*result == 4)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  result = __error();
  if (*result == 35)
  {
    goto LABEL_6;
  }

  v10 = *__error();
  result = std::generic_category();
  *(this + 9) = v10;
  *(this + 10) = result;
  return result;
}

uint64_t llvm::raw_fd_ostream::pwrite_impl(llvm::raw_fd_ostream *this, const char *a2, size_t a3, off_t a4)
{
  v8 = (*(*this + 80))(this);
  v9 = *(this + 4);
  v10 = *(this + 2);
  v11 = v8 + v9;
  if (v9 != v10)
  {
    *(this + 4) = v10;
    (*(*this + 72))(this, v10, v9 - v10);
  }

  v12 = v11 - v10;
  v13 = lseek(*(this + 12), a4, 0);
  *(this + 11) = v13;
  if (v13 == -1)
  {
    v14 = *__error();
    v15 = std::generic_category();
    *(this + 9) = v14;
    *(this + 10) = v15;
  }

  llvm::raw_ostream::write(this, a2, a3);
  v16 = *(this + 2);
  if (*(this + 4) != v16)
  {
    *(this + 4) = v16;
    (*(*this + 72))(this);
  }

  result = lseek(*(this + 12), v12, 0);
  *(this + 11) = result;
  if (result == -1)
  {
    v18 = *__error();
    result = std::generic_category();
    *(this + 9) = v18;
    *(this + 10) = result;
  }

  return result;
}

uint64_t llvm::raw_fd_ostream::preferred_buffer_size(llvm::raw_fd_ostream *this)
{
  if (fstat(*(this + 12), &v3))
  {
    return 0;
  }

  if (v3.st_mode & 0xF000) == 0x2000 && ((*(*this + 48))(this))
  {
    return 0;
  }

  return v3.st_blksize;
}

uint64_t llvm::raw_fd_ostream::has_colors(llvm::raw_fd_ostream *this, int a2)
{
  if (*(this + 56) == 1)
  {
    return *(this + 55) & 1;
  }

  HasColors = llvm::sys::Process::FileDescriptorHasColors(*(this + 12));
  *(this + 55) = HasColors | 0x100;
  return HasColors & 1;
}

void *llvm::outs(llvm *this)
{
  std::system_category();
  if ((atomic_load_explicit(_MergedGlobals_11, memory_order_acquire) & 1) == 0)
  {
    llvm::outs();
  }

  return &unk_1ED4409A8;
}

void *llvm::errs(llvm *this)
{
  if ((atomic_load_explicit(byte_1ED440968, memory_order_acquire) & 1) == 0)
  {
    llvm::errs();
  }

  return &unk_1ED440A08;
}

void llvm::raw_null_ostream::~raw_null_ostream(llvm::raw_null_ostream *this)
{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      MEMORY[0x1AC55A040](v1, 0x1000C8077774924);
    }
  }
}

{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x1AC55A040](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x1AC55A070);
}

void llvm::raw_svector_ostream::write_impl(llvm::raw_svector_ostream *this, const char *a2, size_t __n)
{
  v4 = *(this + 6);
  v5 = v4[1];
  v6 = v5 + __n;
  if (v4[2] < v6)
  {
    v7 = a2;
    llvm::SmallVectorBase<unsigned long long>::grow_pod(*(this + 6), v4 + 3, v6, 1);
    a2 = v7;
    v5 = v4[1];
  }

  if (__n)
  {
    memcpy((*v4 + v5), a2, __n);
    v5 = v4[1];
  }

  v4[1] = v5 + __n;
}

void llvm::raw_string_ostream::~raw_string_ostream(llvm::raw_string_ostream *this)
{
  *this = &unk_1F1A36188;
  if (*(this + 11) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      MEMORY[0x1AC55A040](v2, 0x1000C8077774924);
    }
  }

  JUMPOUT(0x1AC55A070);
}

void llvm::raw_string_ostream::reserveExtraSpace(llvm::raw_string_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);

  std::string::reserve(v2, v3);
}

uint64_t llvm::raw_string_ostream::current_pos(llvm::raw_string_ostream *this)
{
  v1 = *(this + 6);
  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void llvm::raw_svector_ostream::reserveExtraSpace(llvm::raw_svector_ostream *this, uint64_t a2)
{
  v2 = *(this + 6);
  v3 = (*(*this + 80))(this) + a2 + *(this + 4) - *(this + 2);
  if (*(v2 + 16) < v3)
  {

    llvm::SmallVectorBase<unsigned long long>::grow_pod(v2, (v2 + 24), v3, 1);
  }
}

void llvm::FmtAlign::format(void *a1, uint64_t a2)
{
  v39[8] = *MEMORY[0x1E69E9840];
  if (*(a1 + 3))
  {
    v37 = v39;
    *v38 = xmmword_1A75DA830;
    v29 = 2;
    v33 = 0;
    v35 = &v37;
    v34 = 0;
    v28 = &unk_1F1A36338;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    (*(**a1 + 24))(*a1, &v28);
    v4 = *(a1 + 3);
    v5 = v38[0];
    if (v38[0] < v4)
    {
      v6 = v4 - LODWORD(v38[0]);
      v7 = *(a1 + 2);
      if (v7 == 1)
      {
        v13 = v6 >> 1;
        v14 = v38[0];
        if (v6 >= 2)
        {
          v15 = 0;
          do
          {
            while (1)
            {
              v16 = *(a1 + 16);
              v17 = *(a2 + 32);
              if (v17 >= *(a2 + 24))
              {
                break;
              }

LABEL_28:
              *(a2 + 32) = v17 + 1;
              *v17 = v16;
              if (++v15 == v13)
              {
                goto LABEL_31;
              }
            }

            while (1)
            {
              v18 = *(a2 + 16);
              if (v18)
              {
                *(a2 + 32) = v18;
                (*(*a2 + 72))(a2);
                v17 = *(a2 + 32);
                goto LABEL_28;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v17 = *(a2 + 32);
              if (v17 < *(a2 + 24))
              {
                goto LABEL_28;
              }
            }

            v36 = v16;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v15;
          }

          while (v15 != v13);
LABEL_31:
          v14 = v38[0];
        }

        llvm::raw_ostream::write(a2, v37, v14);
        if (v4 != v5)
        {
          v19 = 0;
          v20 = v6 - v13;
          do
          {
            while (1)
            {
              v21 = *(a1 + 16);
              v22 = *(a2 + 32);
              if (v22 >= *(a2 + 24))
              {
                break;
              }

LABEL_40:
              *(a2 + 32) = v22 + 1;
              *v22 = v21;
              if (++v19 == v20)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v23 = *(a2 + 16);
              if (v23)
              {
                *(a2 + 32) = v23;
                (*(*a2 + 72))(a2);
                v22 = *(a2 + 32);
                goto LABEL_40;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v22 = *(a2 + 32);
              if (v22 < *(a2 + 24))
              {
                goto LABEL_40;
              }
            }

            v36 = v21;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v19;
          }

          while (v19 != v20);
        }

        goto LABEL_57;
      }

      if (!v7)
      {
        llvm::raw_ostream::write(a2, v37, v38[0]);
        if (v4 != v5)
        {
          v8 = 0;
          do
          {
            while (1)
            {
              v9 = *(a1 + 16);
              v10 = *(a2 + 32);
              if (v10 >= *(a2 + 24))
              {
                break;
              }

LABEL_13:
              *(a2 + 32) = v10 + 1;
              *v10 = v9;
              if (++v8 == v6)
              {
                goto LABEL_57;
              }
            }

            while (1)
            {
              v11 = *(a2 + 16);
              if (v11)
              {
                *(a2 + 32) = v11;
                (*(*a2 + 72))(a2);
                v10 = *(a2 + 32);
                goto LABEL_13;
              }

              if (!*(a2 + 44))
              {
                break;
              }

              llvm::raw_ostream::SetBuffered(a2);
              v10 = *(a2 + 32);
              if (v10 < *(a2 + 24))
              {
                goto LABEL_13;
              }
            }

            v36 = v9;
            (*(*a2 + 72))(a2, &v36, 1);
            ++v8;
          }

          while (v8 != v6);
        }

        goto LABEL_57;
      }

      if (v4 != LODWORD(v38[0]))
      {
        v24 = 0;
        do
        {
          while (1)
          {
            v25 = *(a1 + 16);
            v26 = *(a2 + 32);
            if (v26 >= *(a2 + 24))
            {
              break;
            }

LABEL_52:
            *(a2 + 32) = v26 + 1;
            *v26 = v25;
            if (++v24 == v6)
            {
              goto LABEL_55;
            }
          }

          while (1)
          {
            v27 = *(a2 + 16);
            if (v27)
            {
              *(a2 + 32) = v27;
              (*(*a2 + 72))(a2);
              v26 = *(a2 + 32);
              goto LABEL_52;
            }

            if (!*(a2 + 44))
            {
              break;
            }

            llvm::raw_ostream::SetBuffered(a2);
            v26 = *(a2 + 32);
            if (v26 < *(a2 + 24))
            {
              goto LABEL_52;
            }
          }

          v36 = v25;
          (*(*a2 + 72))(a2, &v36, 1);
          ++v24;
        }

        while (v24 != v6);
LABEL_55:
        v5 = v38[0];
      }
    }

    llvm::raw_ostream::write(a2, v37, v5);
LABEL_57:
    v28 = &unk_1F1A36188;
    if (v34 == 1 && v30)
    {
      MEMORY[0x1AC55A040](v30, 0x1000C8077774924);
    }

    if (v37 != v39)
    {
      free(v37);
    }

    return;
  }

  v12 = *(**a1 + 24);

  v12();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1, const char *a2)
{

  return llvm::raw_fd_ostream::raw_fd_ostream(v2 + 72, a2, 1, v3, 0);
}

uint64_t llvm_regcomp(uint64_t a1, char *__s, int a3)
{
  if ((~a3 & 0x11) == 0)
  {
    return 16;
  }

  v86 = v3;
  v87 = v4;
  if ((a3 & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v9 = v10 - __s;
    if (v10 < __s)
    {
      return 16;
    }

    v6 = a3;
    v8 = __s;
    v7 = a1;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = __s;
    v9 = strlen(__s);
  }

  v11 = malloc_type_malloc(0x18FuLL, 0x10300409EB0E935uLL);
  if (!v11)
  {
    return 12;
  }

  v12 = v11;
  v74 = 0;
  ptr[0] = 0;
  v73 = 0u;
  v13 = 3 * (v9 >> 1);
  v14 = v13 + 1;
  *&v73 = v13 + 1;
  v15 = malloc_type_calloc(v13 + 1, 8uLL, 0x100004000313F17uLL);
  ptr[1] = v15;
  if (!v15)
  {
    free(v12);
    return 12;
  }

  v19 = v6;
  v75 = v12;
  v20 = v8;
  v21 = &v8[v9];
  v70 = v20;
  v71 = v21;
  LODWORD(ptr[0]) = 0;
  LODWORD(v74) = 0;
  v22 = 0uLL;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v12[4] = 256;
  *(v12 + 5) = 0;
  v23 = v12 + 5;
  *(v12 + 7) = 0;
  v12[9] = 0;
  *(v12 + 34) = 0u;
  *(v12 + 66) = 0u;
  v12[10] = v6 & 0xFFFFFF7F;
  *(v12 + 11) = v12 + 66;
  *(v12 + 12) = 0;
  v12[26] = 0;
  *(v12 + 14) = 0;
  *(v12 + 9) = 0;
  *(v12 + 10) = 0x100000000;
  *(v12 + 38) = 0u;
  *(v12 + 42) = 0u;
  *(v12 + 46) = 0u;
  *(v12 + 50) = 0u;
  *(v12 + 54) = 0u;
  *(v12 + 58) = 0u;
  *(v12 + 62) = 0u;
  *(v12 + 70) = 0u;
  *(v12 + 74) = 0u;
  *(v12 + 78) = 0u;
  *(v12 + 82) = 0u;
  *(v12 + 86) = 0u;
  *(v12 + 90) = 0u;
  *(v12 + 94) = 0u;
  v12[30] = 0;
  if (v13 < 0x7FFFFFFFFFFFFFFFLL || (v24 = (v13 + 2) / 2, v25 = ((v13 + 2 + ((v13 + 2) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v24, v14 >= v25))
  {
    v26 = 1;
  }

  else if (v25 >> 61)
  {
    v26 = 0;
    LODWORD(ptr[0]) = 12;
    v20 = &nuls;
    v70 = &nuls;
    v71 = &nuls;
    v21 = &nuls;
  }

  else
  {
    v54 = v6;
    v55 = v20;
    v56 = v15;
    v15 = malloc_type_realloc(v15, 24 * v24, 0x100004000313F17uLL);
    if (v15)
    {
      ptr[1] = v15;
      *&v73 = v25;
      v26 = 1;
      v20 = v55;
      v19 = v54;
    }

    else
    {
      v26 = 0;
      LODWORD(ptr[0]) = 12;
      v20 = &nuls;
      v70 = &nuls;
      v71 = &nuls;
      v21 = &nuls;
      v19 = v54;
      v15 = v56;
    }
  }

  *(&v73 + 1) = 1;
  *v15 = 0x8000000;
  *(v12 + 7) = *(&v73 + 1) - 1;
  if (v19)
  {
    p_ere(&v70, 128, v22, v16, v17, v18);
  }

  else if ((v19 & 0x10) != 0)
  {
    if (v21 - v20 <= 0)
    {
      if (v26)
      {
        LODWORD(ptr[0]) = 14;
      }

      v20 = &nuls;
      v70 = &nuls;
      v71 = &nuls;
      v21 = &nuls;
    }

    if (v21 - v20 >= 1)
    {
      do
      {
        v70 = v20 + 1;
        v22.n128_u64[0] = ordinary(&v70, *v20, v22.n128_f64[0], v16, v17, v18).n128_u64[0];
        v20 = v70;
      }

      while (v71 - v70 > 0);
    }
  }

  else
  {
    p_bre(&v70, 128, 128, v22, v16, v17, v18);
  }

  v27 = *(&v73 + 1);
  if (!LODWORD(ptr[0]))
  {
    if (*(&v73 + 1) < v73 || (v28 = (v73 + 1) / 2, v29 = ((v73 + 1 + ((v73 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28, v73 >= v29))
    {
      v30 = 1;
    }

    else
    {
      if (v29 >> 61)
      {
        v30 = 0;
        LODWORD(ptr[0]) = 12;
        v70 = &nuls;
        v71 = &nuls;
        goto LABEL_35;
      }

      v57 = malloc_type_realloc(ptr[1], 24 * v28, 0x100004000313F17uLL);
      if (v57)
      {
        ptr[1] = v57;
        *&v73 = v29;
        v30 = LODWORD(ptr[0]) == 0;
      }

      else
      {
        if (!LODWORD(ptr[0]))
        {
          LODWORD(ptr[0]) = 12;
        }

        v30 = 0;
        v70 = &nuls;
        v71 = &nuls;
      }
    }

    v27 = *(&v73 + 1);
LABEL_35:
    *(&v73 + 1) = v27 + 1;
    *(ptr[1] + v27) = 0x8000000;
    v27 = *(&v73 + 1);
    *(v12 + 8) = *(&v73 + 1) - 1;
    if (v30)
    {
      v31 = *(v12 + 11);
      for (i = -128; i != 128; ++i)
      {
        if (!*(v31 + i) && *v23 >= 1)
        {
          v33 = (*v23 + 7) >> 3;
          v34 = *(v12 + 4);
          while (!*(v34 + i))
          {
            v34 += v12[4];
            if (!--v33)
            {
              goto LABEL_37;
            }
          }

          v35 = v12[21];
          v12[21] = v35 + 1;
          *(v31 + i) = v35;
          if (i <= 126)
          {
            v36 = i;
            do
            {
              ++v36;
              if (!*(v31 + v36))
              {
                if (*v23 < 1)
                {
LABEL_46:
                  *(v31 + v36) = v35;
                }

                else
                {
                  v37 = (*v23 + 7) >> 3;
                  v38 = *(v12 + 4);
                  while (*(v38 + i) == *(v38 + v36))
                  {
                    v38 += v12[4];
                    if (!--v37)
                    {
                      goto LABEL_46;
                    }
                  }
                }
              }
            }

            while (v36 != 127);
          }
        }

LABEL_37:
        ;
      }

      v27 = *(&v73 + 1);
    }

    goto LABEL_55;
  }

  *(v12 + 8) = *(&v73 + 1) - 1;
LABEL_55:
  *(v12 + 6) = v27;
  if (v27 >> 61)
  {
    *(v12 + 1) = ptr[1];
    LODWORD(v39) = ptr[0];
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &nuls;
    v71 = &nuls;
    goto LABEL_86;
  }

  v43 = malloc_type_realloc(ptr[1], 8 * v27, 0x100004000313F17uLL);
  *(v12 + 1) = v43;
  LODWORD(v39) = ptr[0];
  if (!v43)
  {
    v40 = v7;
    if (!LODWORD(ptr[0]))
    {
      LODWORD(v39) = 12;
      LODWORD(ptr[0]) = 12;
    }

    v41 = 0;
    v42 = 0;
    v70 = &nuls;
    v71 = &nuls;
    *(v12 + 1) = ptr[1];
    goto LABEL_86;
  }

  v44 = v43;
  v40 = v7;
  if (LODWORD(ptr[0]))
  {
    goto LABEL_85;
  }

  v45 = 0;
  v46 = 0;
  v47 = 0;
  v48 = (v44 + 8);
  v49 = (v44 + 8);
  do
  {
    v51 = *v49++;
    LODWORD(v50) = v51;
    v52 = ((v51 & 0xF8000000) - 0x10000000) >> 27;
    if (v52 > 0xD)
    {
      goto LABEL_76;
    }

    if (((1 << v52) & 0x1880) != 0)
    {
      goto LABEL_63;
    }

    if (((1 << v52) & 0x2200) != 0)
    {
      v49 = v48;
      while (1)
      {
        v49 += v50 & 0x7FFFFFF;
        v50 = *v49;
        v53 = *v49 & 0xF8000000;
        if (v53 == 1610612736)
        {
          break;
        }

        if (v53 != -2013265920)
        {
          if (v53 == -1879048192)
          {
            break;
          }

          v12[18] |= 4u;
          goto LABEL_84;
        }
      }

LABEL_76:
      if (v47 > v12[26])
      {
        v12[26] = v47;
        v45 = v46;
      }

      v47 = 0;
      goto LABEL_63;
    }

    if (v52)
    {
      goto LABEL_76;
    }

    if (!v47)
    {
      v46 = v48;
    }

    ++v47;
LABEL_63:
    v48 = v49;
  }

  while ((v50 & 0xF8000000) != 0x8000000);
  v63 = v12[26];
  if (v63)
  {
    v64 = malloc_type_malloc(v63 + 1, 0xAAABC376uLL);
    *(v12 + 12) = v64;
    if (v64)
    {
      v65 = v64;
      v66 = v12[26];
      if (v66 < 1)
      {
        v40 = v7;
      }

      else
      {
        v40 = v7;
        do
        {
          do
          {
            v68 = *v45++;
            v67 = v68;
          }

          while ((v68 & 0xF8000000) != 0x10000000);
          *v65++ = v67;
        }

        while (v66-- > 1);
      }

      *v65 = 0;
    }

    else
    {
      v12[26] = 0;
      v40 = v7;
    }
  }

LABEL_84:
  LODWORD(v39) = ptr[0];
  if (LODWORD(ptr[0]))
  {
LABEL_85:
    v41 = 0;
    v42 = 0;
  }

  else
  {
    v39 = 0;
    v42 = 0;
    v58 = (*(v12 + 1) + 8);
    do
    {
      v59 = *v58++;
      v60 = v59 & 0xF8000000;
      if (v39 <= v42)
      {
        v61 = v42;
      }

      else
      {
        v61 = v39;
      }

      v62 = v39 - 1;
      if (v60 == 1207959552)
      {
        ++v39;
      }

      if (v60 == 1342177280)
      {
        v39 = v62;
        v42 = v61;
      }
    }

    while (v60 != 0x8000000);
    if (v39)
    {
      LODWORD(v39) = 0;
      v12[18] |= 4u;
    }

    v41 = 1;
  }

LABEL_86:
  *(v12 + 16) = v42;
  *v12 = 53829;
  *(v40 + 8) = *(v12 + 14);
  *(v40 + 24) = v12;
  *v40 = 62053;
  if ((v12[18] & 4) != 0)
  {
    if (v41)
    {
      LODWORD(v39) = 15;
      LODWORD(ptr[0]) = 15;
    }

    v70 = &nuls;
    v71 = &nuls;
  }

  if (!v39)
  {
    return 0;
  }

  llvm_regfree(v40);
  return LODWORD(ptr[0]);
}

void p_ere(void *result, int a2, __n128 a3, int32x4_t a4, int32x4_t a5, int32x4_t a6)
{
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v158 = result + 8;
  v159 = result + 18;
  while (2)
  {
    v10 = result[5];
    v11 = *result;
    v12 = result[1];
    v8 = v10;
    if (&v12[-*result] < 1)
    {
LABEL_314:
      if (!*(result + 4))
      {
        *(result + 4) = 14;
      }

      *result = &nuls;
      result[1] = &nuls;
      v11 = &nuls;
      v12 = &nuls;
      goto LABEL_317;
    }

    while (1)
    {
      v13 = *v11;
      v8 = result[5];
      if (v13 == 124 || v13 == a2)
      {
        break;
      }

      v15 = v11 + 1;
      *result = v11 + 1;
      v16 = *v11;
      if (v16 > 62)
      {
        if (v16 > 93)
        {
          if (v16 != 94)
          {
            if (v16 == 123)
            {
              if (v12 - v15 >= 1 && *v15 - 48 <= 9)
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 13;
                }

                *result = &nuls;
                result[1] = &nuls;
              }
            }

            else if (v16 == 124)
            {
              if (*(result + 4))
              {
                goto LABEL_142;
              }

              v18 = 14;
              goto LABEL_141;
            }

            goto LABEL_71;
          }

          if (!*(result + 4))
          {
            v25 = result[4];
            if (v8 >= v25)
            {
              v26 = (v25 + 1) / 2;
              v27 = ((v25 + 1 + ((v25 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v26;
              if (v25 < v27)
              {
                if (v27 >> 61)
                {
                  goto LABEL_55;
                }

                v48 = malloc_type_realloc(result[3], 24 * v26, 0x100004000313F17uLL);
                if (v48)
                {
                  result[3] = v48;
                  result[4] = v27;
                }

                else
                {
                  if (!*(result + 4))
                  {
LABEL_55:
                    *(result + 4) = 12;
                  }

                  *result = &nuls;
                  result[1] = &nuls;
                }
              }
            }

            v49 = result[3];
            v50 = result[5];
            result[5] = v50 + 1;
            *(v49 + 8 * v50) = 402653184;
          }

          v33 = 0;
          v51 = result[7];
          v52 = v51[9];
          *a4.i8 = vadd_s32(v52, 0x100000001);
          a3.n128_u32[0] = v52.i32[0] | 1;
          a3.n128_u32[1] = a4.u32[1];
          v51[9] = a3.n128_u64[0];
          v11 = *result;
          v12 = result[1];
          v34 = &v12[-*result];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 == 63)
        {
          goto LABEL_30;
        }

        if (v16 == 91)
        {
          p_bracket(result, a3, a4, a5, a6);
          v33 = 1;
          v11 = *result;
          v12 = result[1];
          v34 = &v12[-*result];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (v16 != 92)
        {
          goto LABEL_71;
        }

        if (v12 - v15 <= 0)
        {
          if (!*(result + 4))
          {
            *(result + 4) = 5;
          }

          *result = &byte_1EB29F4A1;
          result[1] = &nuls;
          v17 = nuls;
          if ((nuls - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        else
        {
          *result = v15 + 1;
          v17 = *v15;
          if ((v17 - 49) > 8)
          {
            goto LABEL_72;
          }
        }

        v35 = (v17 - 48);
        v36 = v159[v35];
        v37 = *(result + 4);
        if (!v36)
        {
          if (v37)
          {
            goto LABEL_142;
          }

          v18 = 6;
          goto LABEL_141;
        }

        if (v37)
        {
          v38 = v158[v35] + 1;
          v39 = v36 - v38;
          if (v36 == v38)
          {
            goto LABEL_82;
          }

LABEL_270:
          if (v39 >= 1)
          {
            v127 = result[4] + v39;
            if (v127 >> 61 || (v128 = malloc_type_realloc(result[3], 8 * v127, 0x100004000313F17uLL)) == 0)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
            }

            else
            {
              result[3] = v128;
              result[4] = v127;
            }
          }

          memmove((result[3] + 8 * result[5]), (result[3] + 8 * v38), 8 * v39);
          result[5] += v39;
          if (!*(result + 4))
          {
            goto LABEL_278;
          }

LABEL_286:
          v33 = 1;
          *(result[7] + 120) = 1;
          v11 = *result;
          v12 = result[1];
          v34 = &v12[-*result];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        v41 = result[4];
        if (v8 >= v41)
        {
          v42 = (v41 + 1) / 2;
          v43 = ((v41 + 1 + ((v41 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v42;
          if (v41 < v43)
          {
            if (v43 >> 61)
            {
              goto LABEL_95;
            }

            v123 = malloc_type_realloc(result[3], 24 * v42, 0x100004000313F17uLL);
            if (v123)
            {
              result[3] = v123;
              result[4] = v43;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_95:
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
            }
          }
        }

        v124 = result[3];
        v125 = result[5];
        result[5] = v125 + 1;
        *(v124 + 8 * v125) = v35 | 0x38000000;
        v126 = v159[v35];
        v38 = v158[v35] + 1;
        v39 = v126 - v38;
        if (v126 != v38)
        {
          goto LABEL_270;
        }

LABEL_82:
        if (*(result + 4))
        {
          goto LABEL_286;
        }

LABEL_278:
        v129 = result[4];
        if (result[5] >= v129)
        {
          v130 = (v129 + 1) / 2;
          v131 = ((v129 + 1 + ((v129 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v130;
          if (v129 < v131)
          {
            if (v131 >> 61)
            {
              goto LABEL_281;
            }

            v132 = malloc_type_realloc(result[3], 24 * v130, 0x100004000313F17uLL);
            if (v132)
            {
              result[3] = v132;
              result[4] = v131;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_281:
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
            }
          }
        }

        v133 = result[3];
        v134 = result[5];
        result[5] = v134 + 1;
        *(v133 + 8 * v134) = v35 | 0x40000000;
        goto LABEL_286;
      }

      if (v16 > 41)
      {
        if ((v16 - 42) < 2)
        {
LABEL_30:
          if (!*(result + 4))
          {
            *(result + 4) = 13;
          }

          goto LABEL_142;
        }

        if (v16 != 46)
        {
          goto LABEL_71;
        }

        if ((*(result[7] + 40) & 8) != 0)
        {
          *result = &nonnewline_bracket;
          result[1] = &unk_1A7601C6D;
          p_bracket(result, a3, a4, a5, a6);
          *result = v15;
          result[1] = v12;
          v33 = 1;
          v11 = *result;
          v12 = result[1];
          v34 = &v12[-*result];
          if (v34 < 1)
          {
            goto LABEL_10;
          }

          goto LABEL_144;
        }

        if (*(result + 4))
        {
          goto LABEL_143;
        }

        v19 = result[4];
        if (v8 >= v19)
        {
          v20 = (v19 + 1) / 2;
          v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20;
          if (v19 < v21)
          {
            if (v21 >> 61)
            {
              goto LABEL_43;
            }

            v54 = malloc_type_realloc(result[3], 24 * v20, 0x100004000313F17uLL);
            if (v54)
            {
              result[3] = v54;
              result[4] = v21;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_43:
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
            }
          }
        }

        v55 = result[3];
        v56 = result[5];
        result[5] = v56 + 1;
        *(v55 + 8 * v56) = 671088640;
        v33 = 1;
        v11 = *result;
        v12 = result[1];
        v34 = &v12[-*result];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 == 36)
      {
        if (!*(result + 4))
        {
          v22 = result[4];
          if (v8 >= v22)
          {
            v23 = (v22 + 1) / 2;
            v24 = ((v22 + 1 + ((v22 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v23;
            if (v22 < v24)
            {
              if (v24 >> 61)
              {
                goto LABEL_49;
              }

              v44 = malloc_type_realloc(result[3], 24 * v23, 0x100004000313F17uLL);
              if (v44)
              {
                result[3] = v44;
                result[4] = v24;
              }

              else
              {
                if (!*(result + 4))
                {
LABEL_49:
                  *(result + 4) = 12;
                }

                *result = &nuls;
                result[1] = &nuls;
              }
            }
          }

          v45 = result[3];
          v46 = result[5];
          result[5] = v46 + 1;
          *(v45 + 8 * v46) = 0x20000000;
        }

        v47 = result[7];
        *(v47 + 72) |= 2u;
        ++*(v47 + 80);
        v33 = 1;
        v11 = *result;
        v12 = result[1];
        v34 = &v12[-*result];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v16 != 40)
      {
        if (v16 == 41)
        {
          if (*(result + 4))
          {
            goto LABEL_142;
          }

LABEL_140:
          v18 = 8;
LABEL_141:
          *(result + 4) = v18;
          goto LABEL_142;
        }

LABEL_71:
        v17 = v16;
LABEL_72:
        a3 = ordinary(result, v17, a3.n128_f64[0], a4, a5, a6);
        v33 = 1;
        v11 = *result;
        v12 = result[1];
        v34 = &v12[-*result];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      if (v12 - v15 <= 0)
      {
        if (!*(result + 4))
        {
          *(result + 4) = 8;
        }

        *result = &nuls;
        result[1] = &nuls;
        v15 = &nuls;
        v12 = &nuls;
        v40 = result[7];
        v29 = *(v40 + 112) + 1;
        *(v40 + 112) = v29;
        if (v29 <= 9)
        {
LABEL_59:
          v158[v29] = v8;
          if (!*(result + 4))
          {
            goto LABEL_60;
          }

          goto LABEL_88;
        }
      }

      else
      {
        v28 = result[7];
        v29 = *(v28 + 112) + 1;
        *(v28 + 112) = v29;
        if (v29 <= 9)
        {
          goto LABEL_59;
        }
      }

      if (!*(result + 4))
      {
LABEL_60:
        v30 = result[4];
        if (result[5] >= v30)
        {
          v31 = (v30 + 1) / 2;
          v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
          if (v30 < v32)
          {
            if (v32 >> 61)
            {
              *(result + 4) = 12;
              v15 = &nuls;
              v12 = &nuls;
              *result = &nuls;
              result[1] = &nuls;
            }

            else
            {
              v53 = malloc_type_realloc(result[3], 24 * v31, 0x100004000313F17uLL);
              if (v53)
              {
                result[3] = v53;
                result[4] = v32;
                v15 = *result;
                v12 = result[1];
              }

              else
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 12;
                }

                *result = &nuls;
                result[1] = &nuls;
                v15 = &nuls;
                v12 = &nuls;
              }
            }
          }
        }

        v57 = result[3];
        v58 = result[5];
        result[5] = v58 + 1;
        *(v57 + 8 * v58) = v29 | 0x68000000;
        if (v12 - v15 < 1)
        {
          goto LABEL_129;
        }

        goto LABEL_121;
      }

LABEL_88:
      if (v12 - v15 < 1)
      {
        goto LABEL_129;
      }

LABEL_121:
      if (*v15 == 41)
      {
        if (v29 <= 9)
        {
          goto LABEL_123;
        }

        goto LABEL_130;
      }

LABEL_129:
      p_ere(result, 41);
      if (v29 <= 9)
      {
LABEL_123:
        v159[v29] = result[5];
        if (!*(result + 4))
        {
          goto LABEL_124;
        }

        goto LABEL_131;
      }

LABEL_130:
      if (!*(result + 4))
      {
LABEL_124:
        v59 = result[4];
        if (result[5] >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              goto LABEL_127;
            }

            v63 = malloc_type_realloc(result[3], 24 * v60, 0x100004000313F17uLL);
            if (v63)
            {
              result[3] = v63;
              result[4] = v61;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_127:
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
            }
          }
        }

        v64 = result[3];
        v65 = result[5];
        result[5] = v65 + 1;
        *(v64 + 8 * v65) = v29 | 0x70000000;
        v62 = *result;
        if ((result[1] - *result) < 1)
        {
          goto LABEL_139;
        }

        goto LABEL_136;
      }

LABEL_131:
      v62 = *result;
      if ((result[1] - *result) < 1)
      {
        goto LABEL_139;
      }

LABEL_136:
      *result = v62 + 1;
      if (*v62 != 41)
      {
LABEL_139:
        if (!*(result + 4))
        {
          goto LABEL_140;
        }

LABEL_142:
        *result = &nuls;
        result[1] = &nuls;
LABEL_143:
        v33 = 1;
        v11 = *result;
        v12 = result[1];
        v34 = &v12[-*result];
        if (v34 < 1)
        {
          goto LABEL_10;
        }

        goto LABEL_144;
      }

      v33 = 1;
      v11 = *result;
      v12 = result[1];
      v34 = &v12[-*result];
      if (v34 < 1)
      {
        goto LABEL_10;
      }

LABEL_144:
      v66 = *v11;
      if ((v66 - 42) < 2 || v66 == 63 || v66 == 123 && v34 != 1 && v11[1] - 48 <= 9)
      {
        v67 = v11 + 1;
        *result = v11 + 1;
        if ((v33 & 1) == 0)
        {
          if (!*(result + 4))
          {
            *(result + 4) = 13;
          }

          *result = &nuls;
          result[1] = &nuls;
          v67 = &nuls;
          v12 = &nuls;
        }

        if (v66 <= 62)
        {
          if (v66 != 42)
          {
            if (v66 == 43)
            {
              doinsert(result, 1207959552, result[5] - v8 + 1, v8);
              if (!*(result + 4))
              {
                v68 = result[4];
                v69 = result[5];
                if (v69 >= v68)
                {
                  v70 = (v68 + 1) / 2;
                  v71 = ((v68 + 1 + ((v68 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
                  if (v68 < v71)
                  {
                    if (v71 >> 61)
                    {
                      goto LABEL_160;
                    }

                    v102 = malloc_type_realloc(result[3], 24 * v70, 0x100004000313F17uLL);
                    if (v102)
                    {
                      result[3] = v102;
                      result[4] = v71;
                    }

                    else
                    {
                      if (!*(result + 4))
                      {
LABEL_160:
                        *(result + 4) = 12;
                      }

                      *result = &nuls;
                      result[1] = &nuls;
                    }
                  }
                }

                v87 = (v69 - v8) | 0x50000000;
LABEL_235:
                v113 = result[3];
                v114 = result[5];
                result[5] = v114 + 1;
                *(v113 + 8 * v114) = v87;
              }
            }

LABEL_297:
            v11 = *result;
            v12 = result[1];
            v137 = &v12[-*result];
            if (v137 >= 1)
            {
              if ((v138 = *v11, (v138 - 42) < 2) || v138 == 63 || (v138 == 123 ? (v139 = v137 == 1) : (v139 = 1), !v139 && v11[1] - 48 <= 9))
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 13;
                }

                *result = &nuls;
                result[1] = &nuls;
                v11 = &nuls;
                v12 = &nuls;
              }
            }

            goto LABEL_10;
          }

          doinsert(result, 1207959552, result[5] - v8 + 1, v8);
          v77 = result[5];
          v78 = v77 - v8;
          if (!*(result + 4))
          {
            v79 = result[4];
            if (v77 >= v79)
            {
              v80 = (v79 + 1) / 2;
              v81 = ((v79 + 1 + ((v79 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v80;
              if (v79 < v81)
              {
                if (v81 >> 61)
                {
                  goto LABEL_175;
                }

                v103 = malloc_type_realloc(result[3], 24 * v80, 0x100004000313F17uLL);
                if (v103)
                {
                  result[3] = v103;
                  result[4] = v81;
                }

                else
                {
                  if (!*(result + 4))
                  {
LABEL_175:
                    *(result + 4) = 12;
                  }

                  *result = &nuls;
                  result[1] = &nuls;
                }
              }
            }

            v104 = result[3];
            v105 = result[5];
            result[5] = v105 + 1;
            *(v104 + 8 * v105) = v78 | 0x50000000;
            v78 = result[5] - v8;
          }

          doinsert(result, 1476395008, v78 + 1, v8);
          if (*(result + 4))
          {
            goto LABEL_297;
          }

          v106 = result[4];
          v107 = result[5];
          if (v107 >= v106)
          {
            v108 = (v106 + 1) / 2;
            v109 = ((v106 + 1 + ((v106 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v108;
            if (v106 < v109)
            {
              if (v109 >> 61)
              {
                goto LABEL_227;
              }

              v112 = malloc_type_realloc(result[3], 24 * v108, 0x100004000313F17uLL);
              if (v112)
              {
                result[3] = v112;
                result[4] = v109;
              }

              else
              {
                if (!*(result + 4))
                {
LABEL_227:
                  *(result + 4) = 12;
                }

                *result = &nuls;
                result[1] = &nuls;
              }
            }
          }

          v87 = (v107 - v8) | 0x60000000;
          goto LABEL_235;
        }

        if (v66 != 63)
        {
          if (v66 != 123)
          {
            goto LABEL_297;
          }

          v72 = v12 - v67;
          if (v12 - v67 < 1)
          {
            v74 = 0;
            goto LABEL_186;
          }

          v73 = 0;
          v74 = 0;
          while (*v67 - 48 <= 9 && v74 <= 255)
          {
            v75 = v67 + 1;
            *result = v67 + 1;
            v74 = (*v67 + 10 * v74 - 48);
            ++v73;
            ++v67;
            if (v72-- <= 1)
            {
              goto LABEL_185;
            }
          }

          v75 = v67;
          if (!v73)
          {
            goto LABEL_186;
          }

LABEL_185:
          if (v74 >= 256)
          {
LABEL_186:
            if (!*(result + 4))
            {
              *(result + 4) = 10;
            }

            *result = &nuls;
            result[1] = &nuls;
            v75 = &nuls;
            v12 = &nuls;
          }

          v88 = v74;
          if (v12 - v75 < 1)
          {
            goto LABEL_240;
          }

          v88 = v74;
          if (*v75 != 44)
          {
            goto LABEL_240;
          }

          v89 = v75 + 1;
          *result = v75 + 1;
          if (v75[1] - 48 > 9)
          {
            v88 = 256;
            goto LABEL_240;
          }

          v90 = (v12 - v89);
          if (v12 - v89 < 1)
          {
            v88 = 0;
          }

          else
          {
            v91 = 0;
            v88 = 0;
            while (1)
            {
              v92 = &v89[v91];
              if (v89[v91] - 48 > 9 || v88 > 255)
              {
                break;
              }

              *result = v92 + 1;
              v88 = (*v92 + 10 * v88 - 48);
              ++v91;
              if (--v90 <= 0)
              {
                LODWORD(v91) = 1;
                break;
              }
            }

            if (v91 && v88 < 256)
            {
              if (v74 <= v88)
              {
                goto LABEL_240;
              }

LABEL_237:
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &nuls;
              result[1] = &nuls;
              goto LABEL_240;
            }
          }

          if (!*(result + 4))
          {
            *(result + 4) = 10;
            *result = &nuls;
            result[1] = &nuls;
            if (v74 <= v88)
            {
              goto LABEL_240;
            }

            goto LABEL_237;
          }

          *result = &nuls;
          result[1] = &nuls;
          if (v74 > v88)
          {
            goto LABEL_237;
          }

LABEL_240:
          repeat(result, v8, v74, v88);
          v116 = *result;
          v115 = result[1];
          if (v115 - *result >= 1)
          {
            if (*v116 == 125)
            {
              *result = v116 + 1;
              goto LABEL_297;
            }

            v117 = (v116 + 1);
            v118 = ~v116 + v115;
            while (1)
            {
              *result = v117;
              if (v118 <= 0)
              {
                break;
              }

              v119 = *v117++;
              --v118;
              if (v119 == 125)
              {
                if (*(result + 4))
                {
                  goto LABEL_251;
                }

                v120 = 10;
                goto LABEL_250;
              }
            }
          }

          if (!*(result + 4))
          {
            v120 = 9;
LABEL_250:
            *(result + 4) = v120;
          }

LABEL_251:
          *result = &nuls;
          result[1] = &nuls;
          goto LABEL_297;
        }

        doinsert(result, 2013265920, result[5] - v8 + 1, v8);
        if (*(result + 4))
        {
          goto LABEL_297;
        }

        v83 = result[4];
        v82 = result[5];
        v84 = v82 - v8;
        if (v82 < v83 || (v85 = (v83 + 1) / 2, v86 = ((v83 + 1 + ((v83 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v85, v83 >= v86))
        {
          v93 = result[3];
          v94 = result[5];
          result[5] = v94 + 1;
          v93[v94] = v84 | 0x80000000;
        }

        else
        {
          if (v86 >> 61)
          {
            goto LABEL_181;
          }

          v93 = malloc_type_realloc(result[3], 24 * v85, 0x100004000313F17uLL);
          if (!v93)
          {
            if (!*(result + 4))
            {
LABEL_181:
              *(result + 4) = 12;
            }

            *result = &nuls;
            result[1] = &nuls;
            v87 = v84 | 0x80000000;
            goto LABEL_235;
          }

          result[3] = v93;
          result[4] = v86;
          v110 = *(result + 4);
          v111 = result[5];
          result[5] = v111 + 1;
          v93[v111] = v84 | 0x80000000;
          if (v110)
          {
            goto LABEL_297;
          }
        }

        v93[v8] = v93[v8] & 0xF8000000 | (result[5] - v8);
        v95 = result[4];
        if (result[5] >= v95)
        {
          v96 = (v95 + 1) / 2;
          v97 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v96;
          if (v95 < v97)
          {
            if (v97 >> 61)
            {
              *(result + 4) = 12;
              *result = &nuls;
              result[1] = &nuls;
              goto LABEL_291;
            }

            v93 = malloc_type_realloc(v93, 24 * v96, 0x100004000313F17uLL);
            if (v93)
            {
              result[3] = v93;
              result[4] = v97;
              v121 = *(result + 4);
              v122 = result[5];
              result[5] = v122 + 1;
              v93[v122] = 2281701376;
              if (v121)
              {
                goto LABEL_297;
              }

LABEL_208:
              v93[result[5] - 1] = v93[result[5] - 1] & 0xF8000000 | 1;
              v99 = result[4];
              if (result[5] >= v99)
              {
                v100 = (v99 + 1) / 2;
                v101 = ((v99 + 1 + ((v99 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v100;
                if (v99 < v101)
                {
                  if (v101 >> 61)
                  {
                    *(result + 4) = 12;
                    *result = &nuls;
                    result[1] = &nuls;
                  }

                  else
                  {
                    v93 = malloc_type_realloc(v93, 24 * v100, 0x100004000313F17uLL);
                    if (v93)
                    {
                      result[3] = v93;
                      result[4] = v101;
                    }

                    else
                    {
                      if (!*(result + 4))
                      {
                        *(result + 4) = 12;
                      }

                      *result = &nuls;
                      result[1] = &nuls;
                      v93 = result[3];
                    }
                  }
                }
              }

              v135 = result[5];
              result[5] = v135 + 1;
              v136 = 2415919106;
            }

            else
            {
              if (!*(result + 4))
              {
                *(result + 4) = 12;
              }

              *result = &nuls;
              result[1] = &nuls;
              v93 = result[3];
LABEL_291:
              v135 = result[5];
              result[5] = v135 + 1;
              v136 = 2281701376;
            }

            v93[v135] = v136;
            goto LABEL_297;
          }
        }

        v98 = result[5];
        result[5] = v98 + 1;
        v93[v98] = 2281701376;
        goto LABEL_208;
      }

LABEL_10:
      if (v12 - v11 <= 0)
      {
        v8 = result[5];
        break;
      }
    }

    if (v8 == v10)
    {
      goto LABEL_314;
    }

LABEL_317:
    if (v12 - v11 >= 1 && *v11 == 124)
    {
      *result = v11 + 1;
      if (v162)
      {
        v10 = v160;
        if (!*(result + 4))
        {
          goto LABEL_321;
        }

LABEL_3:
        v9 = v8;
LABEL_4:
        v160 = v9 - 1;
        v161 = v8;
        v162 = 1;
        continue;
      }

      doinsert(result, 2013265920, v8 - v10 + 1, v10);
      v8 = result[5];
      v161 = v10;
      if (*(result + 4))
      {
        goto LABEL_3;
      }

LABEL_321:
      v140 = result[4];
      if (v8 < v140 || (v141 = (v140 + 1) / 2, v142 = ((v140 + 1 + ((v140 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v141, v140 >= v142))
      {
        v143 = 1;
      }

      else
      {
        if (v142 >> 61)
        {
          v143 = 0;
          *(result + 4) = 12;
          goto LABEL_339;
        }

        v149 = malloc_type_realloc(result[3], 24 * v141, 0x100004000313F17uLL);
        if (v149)
        {
          result[3] = v149;
          result[4] = v142;
          v143 = *(result + 4) == 0;
        }

        else
        {
          if (!*(result + 4))
          {
            *(result + 4) = 12;
          }

          v143 = 0;
LABEL_339:
          *result = &nuls;
          result[1] = &nuls;
        }
      }

      v144 = result[3];
      v145 = result[5];
      result[5] = v145 + 1;
      v144[v145] = (v8 - v10) | 0x80000000;
      v9 = result[5];
      if (v143)
      {
        v144[v161] = v144[v161] & 0xF8000000 | (v9 - v161);
        v146 = result[4];
        v8 = result[5];
        if (v8 >= v146)
        {
          v147 = (v146 + 1) / 2;
          v148 = ((v146 + 1 + ((v146 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v147;
          if (v146 < v148)
          {
            if (v148 >> 61)
            {
              *(result + 4) = 12;
              *result = &nuls;
              result[1] = &nuls;
            }

            else
            {
              v144 = malloc_type_realloc(v144, 24 * v147, 0x100004000313F17uLL);
              if (v144)
              {
                result[3] = v144;
                result[4] = v148;
              }

              else
              {
                if (!*(result + 4))
                {
                  *(result + 4) = 12;
                }

                *result = &nuls;
                result[1] = &nuls;
                v144 = result[3];
              }
            }
          }
        }

        v150 = result[5];
        result[5] = v150 + 1;
        v144[v150] = 2281701376;
      }

      else
      {
        v8 = result[5];
      }

      goto LABEL_4;
    }

    break;
  }

  if ((v162 & 1) != 0 && !*(result + 4))
  {
    v151 = result[3];
    v151[v161] = v151[v161] & 0xF8000000 | (v8 - v161);
    v152 = result[4];
    v153 = result[5];
    v154 = v153 - v160;
    if (v153 >= v152)
    {
      v155 = (v152 + 1) / 2;
      v156 = ((v152 + 1 + ((v152 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v155;
      if (v152 < v156)
      {
        if (v156 >> 61)
        {
          *(result + 4) = 12;
          *result = &nuls;
          result[1] = &nuls;
        }

        else
        {
          v151 = malloc_type_realloc(v151, 24 * v155, 0x100004000313F17uLL);
          if (v151)
          {
            result[3] = v151;
            result[4] = v156;
          }

          else
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &nuls;
            result[1] = &nuls;
            v151 = result[3];
          }
        }
      }
    }

    v157 = result[5];
    result[5] = v157 + 1;
    v151[v157] = v154 | 0x90000000;
  }
}

void p_bre(char *result, int a2, int a3, __n128 a4, int32x4_t a5, int32x4_t a6, int32x4_t a7)
{
  v8 = *(result + 5);
  v9 = *result;
  v10 = *(result + 1);
  v11 = &v10[-*result];
  if (v11 < 1)
  {
    goto LABEL_14;
  }

  if (*v9 == 94)
  {
    *result = ++v9;
    if (*(result + 4))
    {
      goto LABEL_12;
    }

    v13 = *(result + 4);
    if (v8 >= v13)
    {
      v14 = (v13 + 1) / 2;
      v15 = ((v13 + 1 + ((v13 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v14;
      if (v13 < v15)
      {
        if (v15 >> 61)
        {
          goto LABEL_7;
        }

        v16 = malloc_type_realloc(*(result + 3), 24 * v14, 0x100004000313F17uLL);
        if (v16)
        {
          *(result + 3) = v16;
          *(result + 4) = v15;
          v9 = *result;
          v10 = *(result + 1);
          goto LABEL_11;
        }

        if (!*(result + 4))
        {
LABEL_7:
          *(result + 4) = 12;
        }

        *result = &nuls;
        *(result + 1) = &nuls;
        v9 = &nuls;
        v10 = &nuls;
      }
    }

LABEL_11:
    v17 = *(result + 3);
    v18 = *(result + 5);
    *(result + 5) = v18 + 1;
    *(v17 + 8 * v18) = 402653184;
LABEL_12:
    v19 = *(result + 7);
    v20 = v19[9];
    *a5.i8 = vadd_s32(v20, 0x100000001);
    a4.n128_u32[0] = v20.i32[0] | 1;
    a4.n128_u32[1] = a5.u32[1];
    v19[9] = a4.n128_u64[0];
    v11 = v10 - v9;
    if (v10 - v9 >= 1)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (*(result + 5) == v8)
    {
      goto LABEL_227;
    }

    return;
  }

LABEL_13:
  v109 = v8;
  v21 = 0;
  v22 = 0;
  v23 = result + 144;
  v111 = result + 64;
  while (v11 == 1 || *v9 != a2 || v9[1] != a3)
  {
    v27 = *(result + 5);
    v28 = v9 + 1;
    *result = v9 + 1;
    v29 = *v9;
    if (v29 == 92)
    {
      if (v10 - v28 <= 0)
      {
        if (!*(result + 4))
        {
          *(result + 4) = 5;
        }

        *(result + 1) = &nuls;
        v10 = &nuls;
        v28 = &nuls;
      }

      *result = v28 + 1;
      v29 = *v28++ | 0x100;
    }

    if (v29 <= 304)
    {
      if (v29 <= 90)
      {
        if (v29 == 42)
        {
          if (v22)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 13;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }

LABEL_65:
          a4 = ordinary(result, v29, a4.n128_f64[0], a5, a6, a7);
          goto LABEL_138;
        }

        if (v29 != 46)
        {
          goto LABEL_65;
        }

        if ((*(*(result + 7) + 40) & 8) != 0)
        {
          *result = &nonnewline_bracket;
          *(result + 1) = &unk_1A7601C6D;
          p_bracket(result, a4, a5, a6, a7);
          *result = v28;
          *(result + 1) = v10;
          goto LABEL_138;
        }

        if (*(result + 4))
        {
          goto LABEL_138;
        }

        v35 = *(result + 4);
        if (v27 >= v35)
        {
          v36 = (v35 + 1) / 2;
          v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36;
          if (v35 < v37)
          {
            if (v37 >> 61)
            {
              goto LABEL_54;
            }

            v61 = malloc_type_realloc(*(result + 3), 24 * v36, 0x100004000313F17uLL);
            if (v61)
            {
              *(result + 3) = v61;
              *(result + 4) = v37;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_54:
                *(result + 4) = 12;
              }

              *result = &nuls;
              *(result + 1) = &nuls;
            }
          }
        }

        v62 = *(result + 3);
        v63 = *(result + 5);
        *(result + 5) = v63 + 1;
        *(v62 + 8 * v63) = 671088640;
        goto LABEL_138;
      }

      if (v29 == 91)
      {
        p_bracket(result, a4, a5, a6, a7);
        goto LABEL_138;
      }

      if (v29 != 296)
      {
        if (v29 != 297)
        {
          goto LABEL_65;
        }

        goto LABEL_134;
      }

      v41 = *(result + 7);
      v42 = *(v41 + 112) + 1;
      *(v41 + 112) = v42;
      if (v42 > 9)
      {
        if (!*(result + 4))
        {
          goto LABEL_68;
        }
      }

      else
      {
        *&v111[8 * v42] = v27;
        if (!*(result + 4))
        {
LABEL_68:
          v43 = *(result + 4);
          if (*(result + 5) >= v43)
          {
            v44 = (v43 + 1) / 2;
            v45 = ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v44;
            if (v43 < v45)
            {
              if (v45 >> 61)
              {
                *(result + 4) = 12;
                v28 = &nuls;
                v10 = &nuls;
                *result = &nuls;
                *(result + 1) = &nuls;
              }

              else
              {
                v60 = malloc_type_realloc(*(result + 3), 24 * v44, 0x100004000313F17uLL);
                if (v60)
                {
                  *(result + 3) = v60;
                  *(result + 4) = v45;
                  v28 = *result;
                  v10 = *(result + 1);
                }

                else
                {
                  if (!*(result + 4))
                  {
                    *(result + 4) = 12;
                  }

                  *result = &nuls;
                  *(result + 1) = &nuls;
                  v28 = &nuls;
                  v10 = &nuls;
                }
              }
            }
          }

          v64 = *(result + 3);
          v65 = *(result + 5);
          *(result + 5) = v65 + 1;
          *(v64 + 8 * v65) = v42 | 0x68000000;
          v46 = v10 - v28 == 1;
          if (v10 - v28 >= 1)
          {
LABEL_114:
            if (v46 || *v28 != 92 || v28[1] != 41)
            {
              p_bre(result, 92, 41);
            }
          }

LABEL_118:
          if (v42 > 9)
          {
            if (!*(result + 4))
            {
              goto LABEL_120;
            }
          }

          else
          {
            *&v23[8 * v42] = *(result + 5);
            if (!*(result + 4))
            {
LABEL_120:
              v66 = *(result + 4);
              if (*(result + 5) >= v66)
              {
                v67 = (v66 + 1) / 2;
                v68 = ((v66 + 1 + ((v66 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
                if (v66 < v68)
                {
                  if (v68 >> 61)
                  {
                    goto LABEL_123;
                  }

                  v70 = malloc_type_realloc(*(result + 3), 24 * v67, 0x100004000313F17uLL);
                  if (v70)
                  {
                    *(result + 3) = v70;
                    *(result + 4) = v68;
                  }

                  else
                  {
                    if (!*(result + 4))
                    {
LABEL_123:
                      *(result + 4) = 12;
                    }

                    *result = &nuls;
                    *(result + 1) = &nuls;
                  }
                }
              }

              v71 = *(result + 3);
              v72 = *(result + 5);
              *(result + 5) = v72 + 1;
              *(v71 + 8 * v72) = v42 | 0x70000000;
              v69 = *result;
              if ((*(result + 1) - *result) < 2)
              {
                goto LABEL_134;
              }

LABEL_131:
              if (*v69 == 92 && v69[1] == 41)
              {
                *result = v69 + 2;
                goto LABEL_138;
              }

LABEL_134:
              if (!*(result + 4))
              {
                v47 = 8;
                goto LABEL_136;
              }

              goto LABEL_137;
            }
          }

          v69 = *result;
          if ((*(result + 1) - *result) < 2)
          {
            goto LABEL_134;
          }

          goto LABEL_131;
        }
      }

      v46 = v10 - v28 == 1;
      if (v10 - v28 >= 1)
      {
        goto LABEL_114;
      }

      goto LABEL_118;
    }

    if ((v29 - 305) < 9)
    {
      v30 = (v29 & 0xFFFFFEFF) - 48;
      v31 = *&v23[8 * v30];
      v32 = *(result + 4);
      if (!v31)
      {
        if (!v32)
        {
          *(result + 4) = 6;
        }

        *result = &nuls;
        *(result + 1) = &nuls;
        goto LABEL_98;
      }

      if (v32)
      {
        v33 = *&v111[8 * v30] + 1;
        v34 = v31 - v33;
        if (v31 == v33)
        {
          goto LABEL_34;
        }

LABEL_82:
        if (v34 >= 1)
        {
          v52 = *(result + 4) + v34;
          if (v52 >> 61 || (v53 = malloc_type_realloc(*(result + 3), 8 * v52, 0x100004000313F17uLL)) == 0)
          {
            if (!*(result + 4))
            {
              *(result + 4) = 12;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }

          else
          {
            *(result + 3) = v53;
            *(result + 4) = v52;
          }
        }

        memmove((*(result + 3) + 8 * *(result + 5)), (*(result + 3) + 8 * v33), 8 * v34);
        *(result + 5) += v34;
        if (!*(result + 4))
        {
          goto LABEL_90;
        }

LABEL_98:
        *(*(result + 7) + 120) = 1;
        goto LABEL_138;
      }

      v38 = *(result + 4);
      if (v27 >= v38)
      {
        v39 = (v38 + 1) / 2;
        v40 = ((v38 + 1 + ((v38 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v39;
        if (v38 < v40)
        {
          if (v40 >> 61)
          {
            goto LABEL_59;
          }

          v48 = malloc_type_realloc(*(result + 3), 24 * v39, 0x100004000313F17uLL);
          if (v48)
          {
            *(result + 3) = v48;
            *(result + 4) = v40;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_59:
              *(result + 4) = 12;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }
        }
      }

      v49 = *(result + 3);
      v50 = *(result + 5);
      *(result + 5) = v50 + 1;
      *(v49 + 8 * v50) = v30 | 0x38000000;
      v51 = *&v23[8 * v30];
      v33 = *&v111[8 * v30] + 1;
      v34 = v51 - v33;
      if (v51 != v33)
      {
        goto LABEL_82;
      }

LABEL_34:
      if (*(result + 4))
      {
        goto LABEL_98;
      }

LABEL_90:
      v54 = *(result + 4);
      if (*(result + 5) >= v54)
      {
        v55 = (v54 + 1) / 2;
        v56 = ((v54 + 1 + ((v54 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v55;
        if (v54 < v56)
        {
          if (v56 >> 61)
          {
            goto LABEL_93;
          }

          v57 = malloc_type_realloc(*(result + 3), 24 * v55, 0x100004000313F17uLL);
          if (v57)
          {
            *(result + 3) = v57;
            *(result + 4) = v56;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_93:
              *(result + 4) = 12;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }
        }
      }

      v58 = *(result + 3);
      v59 = *(result + 5);
      *(result + 5) = v59 + 1;
      *(v58 + 8 * v59) = v30 | 0x40000000;
      goto LABEL_98;
    }

    if (v29 != 379)
    {
      if (v29 != 381)
      {
        goto LABEL_65;
      }

      goto LABEL_134;
    }

    if (!*(result + 4))
    {
      v47 = 13;
LABEL_136:
      *(result + 4) = v47;
    }

LABEL_137:
    *result = &nuls;
    *(result + 1) = &nuls;
LABEL_138:
    v9 = *result;
    v10 = *(result + 1);
    v11 = &v10[-*result];
    if (v11 < 1)
    {
      goto LABEL_155;
    }

    v73 = *v9;
    if (v73 == 42)
    {
      *result = v9 + 1;
      doinsert(result, 1207959552, *(result + 5) - v27 + 1, v27);
      v74 = *(result + 5);
      v75 = v74 - v27;
      if (!*(result + 4))
      {
        v76 = *(result + 4);
        if (v74 >= v76)
        {
          v77 = (v76 + 1) / 2;
          v78 = ((v76 + 1 + ((v76 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v77;
          if (v76 < v78)
          {
            if (v78 >> 61)
            {
              goto LABEL_144;
            }

            v93 = malloc_type_realloc(*(result + 3), 24 * v77, 0x100004000313F17uLL);
            if (v93)
            {
              *(result + 3) = v93;
              *(result + 4) = v78;
            }

            else
            {
              if (!*(result + 4))
              {
LABEL_144:
                *(result + 4) = 12;
              }

              *result = &nuls;
              *(result + 1) = &nuls;
            }
          }
        }

        v94 = *(result + 3);
        v95 = *(result + 5);
        *(result + 5) = v95 + 1;
        *(v94 + 8 * v95) = v75 | 0x50000000;
        v75 = *(result + 5) - v27;
      }

      doinsert(result, 1476395008, v75 + 1, v27);
      if (*(result + 4))
      {
        goto LABEL_19;
      }

      v96 = *(result + 4);
      v97 = *(result + 5);
      if (v97 >= v96)
      {
        v98 = (v96 + 1) / 2;
        v99 = ((v96 + 1 + ((v96 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v98;
        if (v96 < v99)
        {
          if (v99 >> 61)
          {
            goto LABEL_206;
          }

          v24 = malloc_type_realloc(*(result + 3), 24 * v98, 0x100004000313F17uLL);
          if (v24)
          {
            *(result + 3) = v24;
            *(result + 4) = v99;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_206:
              *(result + 4) = 12;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }
        }
      }

      v25 = *(result + 3);
      v26 = *(result + 5);
      *(result + 5) = v26 + 1;
      *(v25 + 8 * v26) = (v97 - v27) | 0x60000000;
      goto LABEL_19;
    }

    if (v11 != 1 && v73 == 92 && v9[1] == 123)
    {
      v79 = v9 + 2;
      *result = v9 + 2;
      v80 = v10 - (v9 + 2);
      if (v80 < 1)
      {
        v82 = 0;
      }

      else
      {
        v81 = 0;
        v82 = 0;
        while (*v79 - 48 <= 9 && v82 <= 255)
        {
          v83 = v79 + 1;
          *result = v79 + 1;
          v82 = (*v79 + 10 * v82 - 48);
          ++v81;
          --v80;
          ++v79;
          if (v80 <= 0)
          {
            goto LABEL_160;
          }
        }

        v83 = v79;
        if (!v81)
        {
          goto LABEL_161;
        }

LABEL_160:
        if (v82 < 256)
        {
          goto LABEL_164;
        }
      }

LABEL_161:
      if (!*(result + 4))
      {
        *(result + 4) = 10;
      }

      *result = &nuls;
      *(result + 1) = &nuls;
      v83 = &nuls;
      v10 = &nuls;
LABEL_164:
      v84 = v82;
      if (v10 - v83 >= 1)
      {
        v84 = v82;
        if (*v83 == 44)
        {
          v85 = v83 + 1;
          *result = v85;
          v86 = v10 - v85;
          if (v10 - v85 < 1 || *v85 - 48 > 9)
          {
            v84 = 256;
          }

          else
          {
            v87 = 0;
            v84 = 0;
            while (1)
            {
              v88 = &v85[v87];
              if (v85[v87] - 48 > 9 || v84 > 255)
              {
                break;
              }

              *result = v88 + 1;
              v84 = (*v88 + 10 * v84 - 48);
              ++v87;
              if (--v86 <= 0)
              {
                LODWORD(v87) = 1;
                break;
              }
            }

            if (!v87 || v84 >= 256)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &nuls;
              *(result + 1) = &nuls;
            }

            if (v82 > v84)
            {
              if (!*(result + 4))
              {
                *(result + 4) = 10;
              }

              *result = &nuls;
              *(result + 1) = &nuls;
            }
          }
        }
      }

      repeat(result, v27, v82, v84);
      v89 = *result;
      v90 = *(result + 1) - *result;
      if (v90 <= 1)
      {
        if (v90 == 1)
        {
LABEL_188:
          v91 = v89 + 1;
          while (1)
          {
            if (--v90)
            {
              if (*(v91 - 1) == 92 && *v91 == 125)
              {
                break;
              }
            }

            *result = v91++;
            if (v90 <= 0)
            {
              goto LABEL_195;
            }
          }

          if (!*(result + 4))
          {
            v92 = 10;
            goto LABEL_197;
          }
        }

        else
        {
LABEL_195:
          if (!*(result + 4))
          {
            v92 = 9;
LABEL_197:
            *(result + 4) = v92;
          }
        }

        *result = &nuls;
        *(result + 1) = &nuls;
        goto LABEL_19;
      }

      if (*v89 != 92 || v89[1] != 125)
      {
        goto LABEL_188;
      }

      *result = v89 + 2;
LABEL_19:
      v21 = 0;
      v9 = *result;
      v10 = *(result + 1);
      v11 = &v10[-*result];
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }

    else
    {
LABEL_155:
      if (v29 != 36)
      {
        goto LABEL_19;
      }

      v21 = 1;
      v22 = 1;
      if (v11 <= 0)
      {
        break;
      }
    }
  }

  v100 = *(result + 5);
  if (v21)
  {
    v101 = v100 - 1;
    *(result + 5) = v100 - 1;
    if (!*(result + 4))
    {
      v102 = *(result + 4);
      if (v100 > v102)
      {
        v103 = (v102 + 1) / 2;
        v104 = ((v102 + 1 + ((v102 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v103;
        if (v102 < v104)
        {
          if (v104 >> 61)
          {
            goto LABEL_219;
          }

          v105 = malloc_type_realloc(*(result + 3), 24 * v103, 0x100004000313F17uLL);
          if (v105)
          {
            *(result + 3) = v105;
            *(result + 4) = v104;
          }

          else
          {
            if (!*(result + 4))
            {
LABEL_219:
              *(result + 4) = 12;
            }

            *result = &nuls;
            *(result + 1) = &nuls;
          }
        }
      }

      v106 = *(result + 3);
      v107 = *(result + 5);
      *(result + 5) = v107 + 1;
      *(v106 + 8 * v107) = 0x20000000;
      v101 = *(result + 5);
    }

    v108 = *(result + 7);
    *(v108 + 72) |= 2u;
    ++*(v108 + 80);
    if (v101 == v109)
    {
LABEL_227:
      if (!*(result + 4))
      {
        *(result + 4) = 14;
      }

      *result = &nuls;
      *(result + 1) = &nuls;
    }
  }

  else if (v100 == v109)
  {
    goto LABEL_227;
  }
}

void *doinsert(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 4))
  {
    v4 = *(result + 4);
    v5 = *(result + 5);
    v6 = (v4 + 1) / 2;
    v7 = ((v4 + 1 + ((v4 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v6;
    if (v5 < v4 || v4 >= v7)
    {
LABEL_6:
      v9 = *(result + 3);
      v10 = *(result + 5);
      *(result + 5) = v10 + 1;
      *(v9 + 8 * v10) = a3 | a2;
      v11 = *(v9 + 8 * v5);
      v12 = *(result + 9);
      if (v12 >= a4)
      {
        *(result + 9) = v12 + 1;
        v13 = *(result + 19);
        if (v13 < a4)
        {
LABEL_8:
          v14 = *(result + 10);
          if (v14 < a4)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = *(result + 19);
        if (v13 < a4)
        {
          goto LABEL_8;
        }
      }

      *(result + 19) = v13 + 1;
      v14 = *(result + 10);
      if (v14 < a4)
      {
LABEL_9:
        v15 = *(result + 20);
        if (v15 < a4)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      *(result + 10) = v14 + 1;
      v15 = *(result + 20);
      if (v15 < a4)
      {
LABEL_10:
        v16 = *(result + 11);
        if (v16 < a4)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }

LABEL_29:
      *(result + 20) = v15 + 1;
      v16 = *(result + 11);
      if (v16 < a4)
      {
LABEL_11:
        v17 = *(result + 21);
        if (v17 < a4)
        {
          goto LABEL_12;
        }

        goto LABEL_31;
      }

LABEL_30:
      *(result + 11) = v16 + 1;
      v17 = *(result + 21);
      if (v17 < a4)
      {
LABEL_12:
        v18 = *(result + 12);
        if (v18 < a4)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

LABEL_31:
      *(result + 21) = v17 + 1;
      v18 = *(result + 12);
      if (v18 < a4)
      {
LABEL_13:
        v19 = *(result + 22);
        if (v19 < a4)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

LABEL_32:
      *(result + 12) = v18 + 1;
      v19 = *(result + 22);
      if (v19 < a4)
      {
LABEL_14:
        v20 = *(result + 13);
        if (v20 < a4)
        {
          goto LABEL_15;
        }

        goto LABEL_34;
      }

LABEL_33:
      *(result + 22) = v19 + 1;
      v20 = *(result + 13);
      if (v20 < a4)
      {
LABEL_15:
        v21 = *(result + 23);
        if (v21 < a4)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }

LABEL_34:
      *(result + 13) = v20 + 1;
      v21 = *(result + 23);
      if (v21 < a4)
      {
LABEL_16:
        v22 = *(result + 14);
        if (v22 < a4)
        {
          goto LABEL_17;
        }

        goto LABEL_36;
      }

LABEL_35:
      *(result + 23) = v21 + 1;
      v22 = *(result + 14);
      if (v22 < a4)
      {
LABEL_17:
        v23 = *(result + 24);
        if (v23 < a4)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      *(result + 14) = v22 + 1;
      v23 = *(result + 24);
      if (v23 < a4)
      {
LABEL_18:
        v24 = *(result + 15);
        if (v24 < a4)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }

LABEL_37:
      *(result + 24) = v23 + 1;
      v24 = *(result + 15);
      if (v24 < a4)
      {
LABEL_19:
        v25 = *(result + 25);
        if (v25 < a4)
        {
          goto LABEL_20;
        }

        goto LABEL_39;
      }

LABEL_38:
      *(result + 15) = v24 + 1;
      v25 = *(result + 25);
      if (v25 < a4)
      {
LABEL_20:
        v26 = *(result + 16);
        if (v26 < a4)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }

LABEL_39:
      *(result + 25) = v25 + 1;
      v26 = *(result + 16);
      if (v26 < a4)
      {
LABEL_21:
        v27 = *(result + 26);
        if (v27 < a4)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }

LABEL_40:
      *(result + 16) = v26 + 1;
      v27 = *(result + 26);
      if (v27 < a4)
      {
LABEL_22:
        v28 = *(result + 17);
        if (v28 < a4)
        {
          goto LABEL_23;
        }

        goto LABEL_42;
      }

LABEL_41:
      *(result + 26) = v27 + 1;
      v28 = *(result + 17);
      if (v28 < a4)
      {
LABEL_23:
        v29 = *(result + 27);
        if (v29 < a4)
        {
LABEL_25:
          v30 = 8 * a4;
          v31 = result;
          result = memmove((v9 + 8 * a4 + 8), (v9 + 8 * a4), 8 * (*(result + 5) + ~a4));
          *(v31[3] + v30) = v11;
          return result;
        }

LABEL_24:
        *(result + 27) = v29 + 1;
        goto LABEL_25;
      }

LABEL_42:
      *(result + 17) = v28 + 1;
      v29 = *(result + 27);
      if (v29 < a4)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v7 >> 61)
    {
      goto LABEL_45;
    }

    v32 = a2;
    v33 = a3;
    v34 = a4;
    v35 = result;
    v36 = malloc_type_realloc(*(result + 3), 24 * v6, 0x100004000313F17uLL);
    if (v36)
    {
      v37 = v36;
      result = v35;
      *(v35 + 3) = v37;
      *(v35 + 4) = v7;
      a4 = v34;
      a3 = v33;
      a2 = v32;
      goto LABEL_6;
    }

    result = v35;
    a4 = v34;
    a3 = v33;
    a2 = v32;
    if (!*(v35 + 4))
    {
LABEL_45:
      *(result + 4) = 12;
    }

    *result = &nuls;
    *(result + 1) = &nuls;
    goto LABEL_6;
  }

  return result;
}

void p_bracket(uint64_t a1, int32x4_t a2, int32x4_t a3, int32x4_t a4, int32x4_t a5)
{
  v6 = *a1;
  if ((*(a1 + 8) - *a1) >= 6)
  {
    if (strncmp(*a1, "[:<:]]", 6uLL))
    {
      if (strncmp(v6, "[:>:]]", 6uLL))
      {
        goto LABEL_4;
      }

      if (!*(a1 + 16))
      {
        v30 = *(a1 + 32);
        if (*(a1 + 40) < v30)
        {
          goto LABEL_249;
        }

        v31 = (v30 + 1) / 2;
        v32 = ((v30 + 1 + ((v30 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v31;
        if (v30 >= v32)
        {
          goto LABEL_249;
        }

        if (v32 >> 61)
        {
          goto LABEL_30;
        }

        v114 = malloc_type_realloc(*(a1 + 24), 24 * v31, 0x100004000313F17uLL);
        if (v114)
        {
          *(a1 + 24) = v114;
          *(a1 + 32) = v32;
          v6 = *a1;
          goto LABEL_249;
        }

        if (!*(a1 + 16))
        {
LABEL_30:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
LABEL_249:
        v95 = *(a1 + 24);
        v96 = *(a1 + 40);
        *(a1 + 40) = v96 + 1;
        v97 = 2684354560;
        goto LABEL_250;
      }

LABEL_251:
      *a1 = v6 + 6;
      return;
    }

    if (*(a1 + 16))
    {
      goto LABEL_251;
    }

    v27 = *(a1 + 32);
    if (*(a1 + 40) >= v27)
    {
      v28 = (v27 + 1) / 2;
      v29 = ((v27 + 1 + ((v27 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v28;
      if (v27 < v29)
      {
        if (v29 >> 61)
        {
          goto LABEL_24;
        }

        v94 = malloc_type_realloc(*(a1 + 24), 24 * v28, 0x100004000313F17uLL);
        if (v94)
        {
          *(a1 + 24) = v94;
          *(a1 + 32) = v29;
          v6 = *a1;
          goto LABEL_225;
        }

        if (!*(a1 + 16))
        {
LABEL_24:
          *(a1 + 16) = 12;
        }

        v6 = &nuls;
        *(a1 + 8) = &nuls;
      }
    }

LABEL_225:
    v95 = *(a1 + 24);
    v96 = *(a1 + 40);
    *(a1 + 40) = v96 + 1;
    v97 = 2550136832;
LABEL_250:
    *(v95 + 8 * v96) = v97;
    goto LABEL_251;
  }

LABEL_4:
  v7 = *(a1 + 56);
  v8 = *(v7 + 20);
  v9 = *(v7 + 16);
  *(v7 + 20) = v8 + 1;
  v10 = *(a1 + 48);
  if (v8 < v10)
  {
    v11 = *(v7 + 24);
    if (!v11)
    {
      goto LABEL_187;
    }

    goto LABEL_6;
  }

  v21 = (v10 + 8);
  *(a1 + 48) = v21;
  if (v10 < -8)
  {
    goto LABEL_187;
  }

  v22 = malloc_type_realloc(*(v7 + 24), 32 * (v10 + 8), 0x1010040FE74B554uLL);
  v7 = *(a1 + 56);
  if (!v22)
  {
    goto LABEL_187;
  }

  v23 = (v21 >> 3) * v9;
  *(v7 + 24) = v22;
  v24 = malloc_type_realloc(*(v7 + 32), v23, 0x100004077774924uLL);
  v7 = *(a1 + 56);
  if (!v24)
  {
    goto LABEL_187;
  }

  *(v7 + 32) = v24;
  if (v8 >= 1)
  {
    v25 = *(v7 + 24);
    if (v8 == 1)
    {
      v26 = 0;
LABEL_184:
      v81 = (v25 + 32 * v26);
      do
      {
        *v81 = &v24[(v26 >> 3) * v9];
        v81 += 4;
        ++v26;
      }

      while (v8 != v26);
      goto LABEL_186;
    }

    v78 = 0;
    v26 = v8 & 0x7FFFFFFE;
    v79 = (v25 + 32);
    do
    {
      v80 = &v24[(v78 >> 3) * v9];
      *(v79 - 4) = v80;
      *v79 = v80;
      v79 += 8;
      v78 += 2;
    }

    while (v26 != v78);
    if (v26 != v8)
    {
      goto LABEL_184;
    }
  }

LABEL_186:
  bzero(&v24[v23 - v9], v9);
  v7 = *(a1 + 56);
  v11 = *(v7 + 24);
  if (!v11)
  {
    goto LABEL_187;
  }

LABEL_6:
  v12 = *(v7 + 32);
  if (v12)
  {
    v13 = (v11 + 32 * v8);
    v14 = v12 + v9 * (v8 / 8);
    *v13 = v14;
    v15 = 1;
    v16 = 1 << (v8 & 7);
    *(v13 + 4) = v16;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    v17 = *a1;
    v18 = *(a1 + 8);
    if (v18 - *a1 < 1)
    {
      goto LABEL_34;
    }

    v19 = *v17;
    v15 = v19 != 94;
    if (v19 == 94)
    {
      *a1 = ++v17;
      if (v18 - v17 < 1)
      {
        v15 = 0;
        v34 = *a1;
        v33 = *(a1 + 8);
        v35 = &v33[-*a1];
        if (v35 < 1)
        {
          goto LABEL_191;
        }

LABEL_35:
        v36 = "NUL";
        v37 = MEMORY[0x1E69E9830];
        do
        {
          v38 = *v34;
          if (v38 == 93)
          {
            break;
          }

          if (v35 != 1 && v38 == 45)
          {
            if (v34[1] != 93)
            {
LABEL_78:
              if (!*(a1 + 16))
              {
                *(a1 + 16) = 11;
              }

              goto LABEL_38;
            }

            *a1 = v34 + 1;
            *(*v13 + 45) |= v13[8];
            v13[9] += 45;
            v34 = *a1;
            v33 = *(a1 + 8);
            break;
          }

          if (v38 == 45)
          {
            goto LABEL_78;
          }

          if (v38 == 91 && v35 != 1)
          {
            v45 = v34[1];
            if (v45 == 61)
            {
              v53 = v34 + 2;
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v54 = *v53;
              if (v54 == 93 || v54 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 3;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v53 = &nuls;
              }

              v55 = v33 - v53;
              if (v55 < 1)
              {
LABEL_102:
                if (!*(a1 + 16))
                {
                  v61 = 7;
                  goto LABEL_104;
                }

LABEL_105:
                v60 = 0;
                *a1 = &nuls;
                *(a1 + 8) = &nuls;
              }

              else
              {
                v56 = 0;
                v57 = 0;
                while (v55 - 1 == v57 || v53[v57] != 61 || v53[v57 + 1] != 93)
                {
                  *a1 = &v53[++v57];
                  --v56;
                  if (v55 + v56 <= 0)
                  {
                    goto LABEL_102;
                  }
                }

                v58 = &off_1E77C5280;
                while (strncmp(v36, v53, v57) || strlen(v36) != v57)
                {
                  v59 = *v58;
                  v58 += 2;
                  v36 = v59;
                  if (!v59)
                  {
                    if (v57 == 1)
                    {
                      v60 = *v53;
                      v36 = "NUL";
                      goto LABEL_106;
                    }

                    v36 = "NUL";
                    if (!*(a1 + 16))
                    {
                      v61 = 3;
LABEL_104:
                      *(a1 + 16) = v61;
                    }

                    goto LABEL_105;
                  }
                }

                v60 = *(v58 - 8);
                v36 = "NUL";
              }

LABEL_106:
              *(*v13 + v60) |= v13[8];
              v13[9] += v60;
              v62 = *a1;
              v33 = *(a1 + 8);
              if (&v33[-*a1] < 1)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v62 = &nuls;
                v33 = &nuls;
              }

              if (v33 - v62 > 1 && *v62 == 61 && v62[1] == 93)
              {
                goto LABEL_180;
              }

              if (!*(a1 + 16))
              {
                *(a1 + 16) = 3;
              }

              goto LABEL_38;
            }

            if (v45 == 58)
            {
              v46 = (v34 + 2);
              *a1 = v34 + 2;
              if (v33 - (v34 + 2) <= 0)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 7;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              v47 = *v46;
              if (v47 == 93 || v47 == 45)
              {
                if (!*(a1 + 16))
                {
                  *(a1 + 16) = 4;
                }

                *a1 = &nuls;
                *(a1 + 8) = &nuls;
                v33 = &nuls;
                v46 = &nuls;
              }

              if (&v33[-v46] < 1)
              {
                v52 = v46;
                goto LABEL_118;
              }

              v48 = v36;
              v49 = -v46;
              v50 = (v46 + 1);
              while (1)
              {
                v51 = *(v50 - 1);
                if (v51 < 0)
                {
                  if (!__maskrune(*(v50 - 1), 0x100uLL))
                  {
LABEL_116:
                    v52 = *a1;
LABEL_117:
                    v36 = v48;
LABEL_118:
                    v63 = v52 - v46;
                    if (!strncmp("alnum", v46, v52 - v46) && !aAlnum[v63])
                    {
                      v64 = cclasses;
                    }

                    else if (!strncmp("alpha", v46, v63) && !aAlpha_0[v63])
                    {
                      v64 = off_1E77C5150;
                    }

                    else if (!strncmp("blank", v46, v63) && !aBlank[v63])
                    {
                      v64 = off_1E77C5168;
                    }

                    else if (!strncmp("cntrl", v46, v63) && !aCntrl[v63])
                    {
                      v64 = off_1E77C5180;
                    }

                    else if (!strncmp("digit", v46, v63) && !aDigit[v63])
                    {
                      v64 = off_1E77C5198;
                    }

                    else if (!strncmp("graph", v46, v63) && !aGraph[v63])
                    {
                      v64 = off_1E77C51B0;
                    }

                    else if (!strncmp("lower", v46, v63) && !aLower[v63])
                    {
                      v64 = off_1E77C51C8;
                    }

                    else if (!strncmp("print", v46, v63) && !aPrint[v63])
                    {
                      v64 = off_1E77C51E0;
                    }

                    else if (!strncmp("punct", v46, v63) && !aPunct[v63])
                    {
                      v64 = off_1E77C51F8;
                    }

                    else if (!strncmp("space", v46, v63) && !aSpace[v63])
                    {
                      v64 = off_1E77C5210;
                    }

                    else if (!strncmp("upper", v46, v63) && !aUpper[v63])
                    {
                      v64 = off_1E77C5228;
                    }

                    else
                    {
                      if (strncmp("xdigit", v46, v63) || aXdigit[v63])
                      {
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 4;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_173;
                      }

                      v64 = off_1E77C5240;
                    }

                    v65 = v64[1];
                    v66 = *v65;
                    if (*v65)
                    {
                      v67 = (v65 + 1);
                      do
                      {
                        *(*v13 + v66) |= v13[8];
                        v13[9] += v66;
                        v68 = *v67++;
                        v66 = v68;
                      }

                      while (v68);
                    }

                    v69 = v64[2];
                    if (*v69)
                    {
                      do
                      {
                        while (1)
                        {
                          v72 = *(v13 + 2);
                          v73 = v72 + strlen(v69) + 1;
                          *(v13 + 2) = v73;
                          v74 = malloc_type_realloc(*(v13 + 3), v73, 0xBC45E43CuLL);
                          if (!v74)
                          {
                            break;
                          }

                          *(v13 + 3) = v74;
                          llvm_strlcpy(&v74[v72 - 1], v69, *(v13 + 2) - v72 + 1);
                          v70 = &v69[strlen(v69)];
                          v71 = v70[1];
                          v69 = v70 + 1;
                          if (!v71)
                          {
                            goto LABEL_173;
                          }
                        }

                        v75 = *(v13 + 3);
                        if (v75)
                        {
                          free(v75);
                        }

                        *(v13 + 3) = 0;
                        if (!*(a1 + 16))
                        {
                          *(a1 + 16) = 12;
                        }

                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        v76 = &v69[strlen(v69)];
                        v77 = v76[1];
                        v69 = v76 + 1;
                      }

                      while (v77);
                    }

LABEL_173:
                    v62 = *a1;
                    v33 = *(a1 + 8);
                    if (&v33[-*a1] < 1)
                    {
                      if (!*(a1 + 16))
                      {
                        *(a1 + 16) = 7;
                      }

                      *a1 = &nuls;
                      *(a1 + 8) = &nuls;
                      v62 = &nuls;
                      v33 = &nuls;
                    }

                    if (v33 - v62 > 1 && *v62 == 58 && v62[1] == 93)
                    {
LABEL_180:
                      v34 = v62 + 2;
                      *a1 = v34;
                      goto LABEL_39;
                    }

                    if (!*(a1 + 16))
                    {
                      *(a1 + 16) = 4;
                    }

LABEL_38:
                    *a1 = &nuls;
                    *(a1 + 8) = &nuls;
                    v34 = &nuls;
                    v33 = &nuls;
                    goto LABEL_39;
                  }
                }

                else if ((*(v37 + 4 * v51 + 60) & 0x100) == 0)
                {
                  goto LABEL_116;
                }

                *a1 = v50;
                --v49;
                ++v50;
                if (*(a1 + 8) + v49 <= 0)
                {
                  v52 = -v49;
                  goto LABEL_117;
                }
              }
            }
          }

          v40 = p_b_symbol(a1);
          v41 = v40;
          v42 = *a1;
          v43 = *(a1 + 8);
          if (v43 - *a1 >= 2 && *v42 == 45)
          {
            v44 = v42 + 1;
            if (v42[1] != 93)
            {
              *a1 = v44;
              if (v43 - v44 >= 1 && *v44 == 45)
              {
                *a1 = v42 + 2;
                v40 = 45;
              }

              else
              {
                v40 = p_b_symbol(a1);
              }

              if (v41 > v40)
              {
                goto LABEL_78;
              }
            }
          }

          do
          {
            *(*v13 + v41) |= v13[8];
            v13[9] += v41++;
          }

          while (v40 + 1 != v41);
          v34 = *a1;
          v33 = *(a1 + 8);
LABEL_39:
          v35 = v33 - v34;
        }

        while (v33 - v34 > 0);
LABEL_191:
        if (v33 - v34 >= 1 && (*a1 = v34 + 1, *v34 == 93))
        {
          if (!*(a1 + 16))
          {
            v83 = *(a1 + 56);
            if ((*(v83 + 40) & 2) != 0)
            {
              v84 = *(v83 + 16);
              if (v84 >= 1)
              {
                v85 = MEMORY[0x1E69E9830];
                while (1)
                {
                  v86 = v84 - 1;
                  v87 = (v84 - 1);
                  if ((v13[8] & *(*v13 + v87)) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v84 > 0x80)
                  {
                    if (!__maskrune(v84 - 1, 0x100uLL))
                    {
                      goto LABEL_197;
                    }
                  }

                  else if ((*(v85 + 4 * v84 + 56) & 0x100) == 0)
                  {
                    goto LABEL_197;
                  }

                  if (v86 > 0x7Fu)
                  {
                    if (__maskrune(v86, 0x8000uLL))
                    {
LABEL_207:
                      v89 = __tolower(v86);
                      if (v86 != v89)
                      {
                        goto LABEL_214;
                      }

                      goto LABEL_197;
                    }

                    v88 = __maskrune(v86, 0x1000uLL);
                  }

                  else
                  {
                    if ((*(v85 + 4 * v87 + 60) & 0x8000) != 0)
                    {
                      goto LABEL_207;
                    }

                    v88 = *(v85 + 4 * v87 + 60) & 0x1000;
                  }

                  if (v88)
                  {
                    v89 = __toupper(v86);
                    if (v86 != v89)
                    {
                      goto LABEL_214;
                    }
                  }

                  else
                  {
                    v89 = v86;
                    if (v86 != v86)
                    {
LABEL_214:
                      *(*v13 + v89) |= v13[8];
                      v13[9] += v89;
                    }
                  }

LABEL_197:
                  v84 = v86;
                  if (v86 + 1 <= 1)
                  {
                    v83 = *(a1 + 56);
                    break;
                  }
                }
              }
            }

            if (!v15)
            {
              v98 = *(v83 + 16);
              if (v98 >= 1)
              {
                v99 = v98 + 1;
                do
                {
                  while (1)
                  {
                    v100 = v99 - 2;
                    v101 = *v13;
                    v102 = (v99 - 2);
                    v103 = *(*v13 + v102);
                    v104 = v13[8];
                    if ((v104 & v103) == 0)
                    {
                      break;
                    }

                    *(v101 + v102) = v103 & ~v104;
                    v13[9] -= v100;
                    if (--v99 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  *(v101 + v102) = v104 | v103;
                  v13[9] += v100;
                  --v99;
                }

                while (v99 > 1);
LABEL_233:
                v83 = *(a1 + 56);
              }

              if ((*(v83 + 40) & 8) != 0)
              {
                *(*v13 + 10) &= ~v13[8];
                v13[9] -= 10;
                v83 = *(a1 + 56);
              }
            }

            v105 = *(v83 + 16);
            v106 = v105;
            if (!v105)
            {
              v111 = *(v83 + 20);
              if (v111 >= 1)
              {
                v112 = *(v83 + 24);
                v113 = &v112[32 * v111];
                while (v112 == v13 || v112[9] != v13[9])
                {
                  v112 += 32;
                  if (v112 >= v113)
                  {
                    goto LABEL_285;
                  }
                }

                goto LABEL_279;
              }

LABEL_285:
              v112 = v13;
              goto LABEL_286;
            }

            v107 = 0;
            v108 = 0;
            v109 = *v13;
            v110 = v13[8];
            if (v106 >= 4 && (v106 - 257) >= 0xFFFFFFFFFFFFFF00)
            {
              if (v106 < 0x20)
              {
                v108 = 0;
                v107 = 0;
LABEL_259:
                v133 = v107;
                v107 = v106 & 0x1FC;
                a2 = v108;
                *a3.i8 = vdup_n_s16(v110);
                a4.i64[0] = 0x100000001;
                a4.i64[1] = 0x100000001;
                do
                {
                  a5.i32[0] = *(v109 + (v133 & 0xFC));
                  a5 = vandq_s8(vmovl_u16(vtst_s16(*&vmovl_u8(*a5.i8), *a3.i8)), a4);
                  a2 = vaddq_s32(a2, a5);
                  v133 += 4;
                }

                while (v107 != v133);
                a2.i32[0] = vaddvq_s32(a2);
                v108 = a2.i32[0];
                if (v107 == v106)
                {
                  goto LABEL_265;
                }

                goto LABEL_262;
              }

              v115 = 0;
              v116 = vdupq_n_s8(v110);
              v117 = 0uLL;
              v118.i64[0] = 0x100000001;
              v118.i64[1] = 0x100000001;
              v107 = v106 & 0x1E0;
              v119 = 0uLL;
              v120 = 0uLL;
              v121 = 0uLL;
              v122 = 0uLL;
              v123 = 0uLL;
              v124 = 0uLL;
              v125 = 0uLL;
              do
              {
                v126 = (v109 + (v115 & 0xE0));
                v127 = vtstq_s8(*v126, v116);
                v128 = vmovl_u8(*v127.i8);
                v129 = vmovl_high_u8(v127);
                v130 = vtstq_s8(v126[1], v116);
                v131 = vmovl_u8(*v130.i8);
                v132 = vmovl_high_u8(v130);
                v121 = vaddq_s32(v121, vandq_s8(vmovl_high_u16(v129), v118));
                v120 = vaddq_s32(v120, vandq_s8(vmovl_u16(*v129.i8), v118));
                v119 = vaddq_s32(v119, vandq_s8(vmovl_high_u16(v128), v118));
                v117 = vaddq_s32(v117, vandq_s8(vmovl_u16(*v128.i8), v118));
                v125 = vaddq_s32(v125, vandq_s8(vmovl_high_u16(v132), v118));
                v124 = vaddq_s32(v124, vandq_s8(vmovl_u16(*v132.i8), v118));
                v123 = vaddq_s32(v123, vandq_s8(vmovl_high_u16(v131), v118));
                v122 = vaddq_s32(v122, vandq_s8(vmovl_u16(*v131.i8), v118));
                v115 += 32;
              }

              while (v107 != v115);
              a4 = vaddq_s32(v125, v121);
              a5 = vaddq_s32(v124, v120);
              a3 = vaddq_s32(vaddq_s32(v123, v119), a4);
              a2 = vaddq_s32(vaddq_s32(vaddq_s32(v122, v117), a5), a3);
              a2.i32[0] = vaddvq_s32(a2);
              v108 = a2.i32[0];
              if (v107 == v106)
              {
                goto LABEL_265;
              }

              if ((v106 & 0x1C) != 0)
              {
                goto LABEL_259;
              }
            }

            do
            {
LABEL_262:
              if ((*(v109 + v107) & v110) != 0)
              {
                ++v108;
              }

              ++v107;
            }

            while (v106 != v107);
LABEL_265:
            if (v108 == 1)
            {
              v134 = 0;
              v135 = 0;
              while ((*(v109 + v135) & v110) == 0)
              {
                ++v135;
                v134 += 0x1000000;
                if (v106 == v135)
                {
                  v136 = 0;
                  goto LABEL_293;
                }
              }

              v136 = v134 >> 24;
LABEL_293:
              v144 = *(v83 + 88);
              if ((*(v83 + 40) & 2) == 0)
              {
                goto LABEL_310;
              }

              if (v136 > 0x7Fu)
              {
                if (!__maskrune(v136, 0x100uLL))
                {
                  goto LABEL_310;
                }

                if (!__maskrune(v136, 0x8000uLL))
                {
                  v146 = __maskrune(v136, 0x1000uLL);
LABEL_307:
                  v147 = v136;
                  if (v146)
                  {
                    v147 = __toupper(v136);
                  }

LABEL_309:
                  if (v136 != v147)
                  {
                    bothcases(a1, v136, *a2.i64, *a3.i64, *a4.i64, a5);
                    v156 = *(a1 + 56);
                    v152 = *(v156 + 16);
                    v92 = *(v156 + 24) + 32 * *(v156 + 20);
                    if (!v152)
                    {
LABEL_221:
                      if ((v92 - 32) == v13)
                      {
                        --*(*(a1 + 56) + 20);
                      }

                      return;
                    }

LABEL_325:
                    for (i = 0; i != v152; ++i)
                    {
                      *(*v13 + i) &= ~v13[8];
                      v13[9] -= i;
                    }

                    goto LABEL_221;
                  }

LABEL_310:
                  if (*(a1 + 16))
                  {
                    if (*(v144 + v136))
                    {
                      goto LABEL_312;
                    }

                    goto LABEL_324;
                  }

                  v153 = *(a1 + 32);
                  if (*(a1 + 40) >= v153)
                  {
                    v154 = (v153 + 1) / 2;
                    v155 = ((v153 + 1 + ((v153 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v154;
                    if (v153 < v155)
                    {
                      if (v155 >> 61)
                      {
LABEL_317:
                        *(a1 + 16) = 12;
LABEL_318:
                        *a1 = &nuls;
                        *(a1 + 8) = &nuls;
                        goto LABEL_323;
                      }

                      v157 = malloc_type_realloc(*(a1 + 24), 24 * v154, 0x100004000313F17uLL);
                      if (!v157)
                      {
                        if (*(a1 + 16))
                        {
                          goto LABEL_318;
                        }

                        goto LABEL_317;
                      }

                      *(a1 + 24) = v157;
                      *(a1 + 32) = v155;
                    }
                  }

LABEL_323:
                  v158 = *(a1 + 24);
                  v159 = *(a1 + 40);
                  *(a1 + 40) = v159 + 1;
                  *(v158 + 8 * v159) = v136 | 0x10000000u;
                  if (*(v144 + v136))
                  {
LABEL_312:
                    v151 = *(a1 + 56);
                    v152 = *(v151 + 16);
                    v92 = *(v151 + 24) + 32 * *(v151 + 20);
                    if (!v152)
                    {
                      goto LABEL_221;
                    }

                    goto LABEL_325;
                  }

LABEL_324:
                  v160 = *(a1 + 56);
                  v161 = *(v160 + 84);
                  *(v160 + 84) = v161 + 1;
                  *(v144 + v136) = v161;
                  v162 = *(a1 + 56);
                  v152 = *(v162 + 16);
                  v92 = *(v162 + 24) + 32 * *(v162 + 20);
                  if (!v152)
                  {
                    goto LABEL_221;
                  }

                  goto LABEL_325;
                }
              }

              else
              {
                v145 = *(MEMORY[0x1E69E9830] + 4 * v136 + 60);
                if ((v145 & 0x100) == 0)
                {
                  goto LABEL_310;
                }

                if ((v145 & 0x8000) == 0)
                {
                  v146 = *(MEMORY[0x1E69E9830] + 4 * v136 + 60) & 0x1000;
                  goto LABEL_307;
                }
              }

              v147 = __tolower(v136);
              goto LABEL_309;
            }

            v137 = *(v83 + 20);
            if (v137 >= 1)
            {
              v112 = *(v83 + 24);
              v113 = &v112[32 * v137];
              while (1)
              {
                if (v112 != v13 && v112[9] == v13[9])
                {
                  v138 = 0;
                  while (((*(*v112 + v138) & v112[8]) != 0) != ((*(*v13 + v138) & v13[8]) == 0))
                  {
                    if (v106 == ++v138)
                    {
                      goto LABEL_279;
                    }
                  }

                  if (v106 == v138)
                  {
                    break;
                  }
                }

                v112 += 32;
                if (v112 >= v113)
                {
                  goto LABEL_285;
                }
              }

LABEL_279:
              if (v106)
              {
                for (j = 0; j != v106; ++j)
                {
                  *(*v13 + j) &= ~v13[8];
                  v13[9] -= j;
                }

                v83 = *(a1 + 56);
              }

              if (v113 - 32 == v13)
              {
                --*(v83 + 20);
              }

LABEL_286:
              if (*(a1 + 16))
              {
                return;
              }

              v140 = (&v112[-*(v83 + 24)] >> 5);
              v141 = *(a1 + 32);
              if (*(a1 + 40) >= v141)
              {
                v142 = (v141 + 1) / 2;
                v143 = ((v141 + 1 + ((v141 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v142;
                if (v141 < v143)
                {
                  if (v143 >> 61)
                  {
                    goto LABEL_290;
                  }

                  v148 = malloc_type_realloc(*(a1 + 24), 24 * v142, 0x100004000313F17uLL);
                  if (v148)
                  {
                    *(a1 + 24) = v148;
                    *(a1 + 32) = v143;
                    goto LABEL_305;
                  }

                  if (!*(a1 + 16))
                  {
LABEL_290:
                    *(a1 + 16) = 12;
                  }

                  *a1 = &nuls;
                  *(a1 + 8) = &nuls;
                }
              }

LABEL_305:
              v149 = *(a1 + 24);
              v150 = *(a1 + 40);
              *(a1 + 40) = v150 + 1;
              *(v149 + 8 * v150) = v140 | 0x30000000;
              return;
            }

            goto LABEL_285;
          }
        }

        else
        {
          if (!*(a1 + 16))
          {
            *(a1 + 16) = 7;
          }

          *a1 = &nuls;
          *(a1 + 8) = &nuls;
        }

        v90 = *(a1 + 56);
        v91 = *(v90 + 16);
        v92 = *(v90 + 24) + 32 * *(v90 + 20);
        if (v91)
        {
          for (k = 0; k != v91; ++k)
          {
            *(*v13 + k) &= ~v13[8];
            v13[9] -= k;
          }
        }

        goto LABEL_221;
      }

      v19 = *v17;
    }

    if (v19 == 93)
    {
      v20 = 93;
    }

    else
    {
      if (v19 != 45)
      {
        goto LABEL_34;
      }

      v20 = 45;
    }

    *a1 = v17 + 1;
    *(v14 + v20) |= v16;
    v13[9] += v19;
LABEL_34:
    v34 = *a1;
    v33 = *(a1 + 8);
    v35 = &v33[-*a1];
    if (v35 < 1)
    {
      goto LABEL_191;
    }

    goto LABEL_35;
  }

LABEL_187:
  free(*(v7 + 24));
  v82 = *(a1 + 56);
  *(v82 + 24) = 0;
  free(*(v82 + 32));
  *(*(a1 + 56) + 32) = 0;
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 12;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
}

__n128 ordinary(uint64_t a1, int a2, double a3, int32x4_t a4, int32x4_t a5, int32x4_t a6)
{
  v8 = *(a1 + 56);
  v9 = *(v8 + 88);
  v10 = a2;
  if ((*(v8 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v10, 0x8000uLL))
    {
      v14 = __maskrune(v10, 0x1000uLL);
      v12 = a2;
      if (!v14)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v12 = __tolower(v10);
    goto LABEL_12;
  }

  v11 = *(MEMORY[0x1E69E9830] + 4 * a2 + 60);
  if ((v11 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v12 = a2;
  if ((v11 & 0x1000) != 0)
  {
LABEL_11:
    v12 = __toupper(v10);
  }

LABEL_12:
  if (a2 != v12)
  {
    v26 = a2;
    v27 = 93;
    v23 = *a1;
    v25 = *a1;
    *a1 = &v26;
    *(a1 + 8) = &v27 + 1;
    p_bracket(a1, v23, a4, a5, a6);
    result = v25;
    *a1 = v25;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v9 + a2))
    {
      return result;
    }

LABEL_21:
    v21 = *(a1 + 56);
    v22 = *(v21 + 84);
    *(v21 + 84) = v22 + 1;
    *(v9 + a2) = v22;
    return result;
  }

  v15 = *(a1 + 32);
  v16 = (v15 + 1) / 2;
  v17 = ((v15 + 1 + ((v15 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v16;
  if (*(a1 + 40) >= v15 && v15 < v17)
  {
    if (v17 >> 61)
    {
      goto LABEL_24;
    }

    v24 = malloc_type_realloc(*(a1 + 24), 24 * v16, 0x100004000313F17uLL);
    if (v24)
    {
      *(a1 + 24) = v24;
      *(a1 + 32) = v17;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &nuls;
    *(a1 + 8) = &nuls;
  }

LABEL_20:
  v19 = *(a1 + 24);
  v20 = *(a1 + 40);
  *(a1 + 40) = v20 + 1;
  *(v19 + 8 * v20) = v10 | 0x10000000u;
  if (!*(v9 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *repeat(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_127;
              }

              v11 = v13;
LABEL_114:
              v6[5] = v11;
              return result;
            }

LABEL_106:
            doinsert(v6, 2013265920, v11 - v13 + 1, v13);
            result = repeat(v6, v13 + 1, 1, a4);
            if (*(v6 + 4))
            {
              return result;
            }

            v47 = v6[4];
            v46 = v6[5];
            v48 = v46 - v13;
            if (v46 < v47 || (v49 = (v47 + 1) / 2, v50 = ((v47 + 1 + ((v47 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v49, v47 >= v50))
            {
              result = v6[3];
              v52 = v6[5];
              v6[5] = v52 + 1;
              *&result[2 * v52] = v48 | 0x80000000;
            }

            else
            {
              if (v50 >> 61)
              {
LABEL_110:
                *(v6 + 4) = 12;
LABEL_111:
                *v6 = &nuls;
                v6[1] = &nuls;
                v51 = v48 | 0x80000000;
LABEL_148:
                v69 = v6[3];
                v70 = v6[5];
                v6[5] = v70 + 1;
                *(v69 + 8 * v70) = v51;
                return result;
              }

              result = malloc_type_realloc(v6[3], 24 * v49, 0x100004000313F17uLL);
              if (!result)
              {
                if (*(v6 + 4))
                {
                  goto LABEL_111;
                }

                goto LABEL_110;
              }

              v6[3] = result;
              v6[4] = v50;
              v60 = *(v6 + 4);
              v61 = v6[5];
              v6[5] = v61 + 1;
              *&result[2 * v61] = v48 | 0x80000000;
              if (v60)
              {
                return result;
              }
            }

            *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (v6[5] - v13);
            v53 = v6[4];
            if (v6[5] < v53 || (v54 = (v53 + 1) / 2, v55 = ((v53 + 1 + ((v53 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v54, v53 >= v55))
            {
              v56 = v6[5];
              v6[5] = v56 + 1;
              *&result[2 * v56] = 2281701376;
            }

            else
            {
              if (v55 >> 61)
              {
                *(v6 + 4) = 12;
                *v6 = &nuls;
                v6[1] = &nuls;
LABEL_152:
                v71 = v6[5];
                v6[5] = v71 + 1;
                v72 = 2281701376;
LABEL_157:
                *&result[2 * v71] = v72;
                return result;
              }

              result = malloc_type_realloc(result, 24 * v54, 0x100004000313F17uLL);
              if (!result)
              {
                if (!*(v6 + 4))
                {
                  *(v6 + 4) = 12;
                }

                *v6 = &nuls;
                v6[1] = &nuls;
                result = v6[3];
                goto LABEL_152;
              }

              v6[3] = result;
              v6[4] = v55;
              v62 = *(v6 + 4);
              v63 = v6[5];
              v6[5] = v63 + 1;
              *&result[2 * v63] = 2281701376;
              if (v62)
              {
                return result;
              }
            }

            *&result[2 * v6[5] - 2] = *&result[2 * v6[5] - 2] & 0xF8000000 | 1;
            v57 = v6[4];
            if (v6[5] >= v57)
            {
              v58 = (v57 + 1) / 2;
              v59 = ((v57 + 1 + ((v57 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v58;
              if (v57 < v59)
              {
                if (v59 >> 61)
                {
                  *(v6 + 4) = 12;
                  *v6 = &nuls;
                  v6[1] = &nuls;
                }

                else
                {
                  result = malloc_type_realloc(result, 24 * v58, 0x100004000313F17uLL);
                  if (result)
                  {
                    v6[3] = result;
                    v6[4] = v59;
                  }

                  else
                  {
                    if (!*(v6 + 4))
                    {
                      *(v6 + 4) = 12;
                    }

                    *v6 = &nuls;
                    v6[1] = &nuls;
                    result = v6[3];
                  }
                }
              }
            }

            v71 = v6[5];
            v6[5] = v71 + 1;
            v72 = 2415919106;
            goto LABEL_157;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
LABEL_135:
            result = doinsert(v6, 1207959552, v11 - v13 + 1, v13);
            if (*(v6 + 4))
            {
              return result;
            }

            v65 = v6[4];
            v64 = v6[5];
            v66 = v64 - v13;
            if (v64 < v65)
            {
              goto LABEL_147;
            }

            v67 = (v65 + 1) / 2;
            v68 = ((v65 + 1 + ((v65 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v67;
            if (v65 >= v68)
            {
              goto LABEL_147;
            }

            if (v68 >> 61)
            {
              goto LABEL_139;
            }

            result = malloc_type_realloc(v6[3], 24 * v67, 0x100004000313F17uLL);
            if (result)
            {
              v6[3] = result;
              v6[4] = v68;
              goto LABEL_147;
            }

            if (!*(v6 + 4))
            {
LABEL_139:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
LABEL_147:
            v51 = v66 | 0x50000000;
            goto LABEL_148;
          }

          if (v15 != 18)
          {
            goto LABEL_127;
          }

          v7 = v11;
          v26 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_64;
          }

          if (v26 >= 1)
          {
            v27 = v6[4] + v26;
            if (v27 >> 61)
            {
              goto LABEL_50;
            }

            v33 = malloc_type_realloc(v6[3], 8 * v27, 0x100004000313F17uLL);
            if (v33)
            {
              v6[3] = v33;
              v6[4] = v27;
              goto LABEL_63;
            }

            if (!*(v6 + 4))
            {
LABEL_50:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
          }

LABEL_63:
          result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v26);
          v7 = v6[5] + v26;
          v6[5] = v7;
LABEL_64:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!*(v6 + 4))
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = v6[4] + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = malloc_type_realloc(v6[3], 8 * v17, 0x100004000313F17uLL);
          if (!v12)
          {
            if (!*(v6 + 4))
            {
LABEL_22:
              *(v6 + 4) = 12;
            }

            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_12;
          }

          v6[3] = v12;
          v6[4] = v17;
        }

LABEL_12:
        result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13), 8 * v16);
        v7 = v6[5] + v16;
        v6[5] = v7;
        --a3;
        --v10;
        if (*(v6 + 4))
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v23 = 3;
        }

        else
        {
          v23 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v24 = v23;
        }

        else
        {
          v24 = v10;
        }

        v25 = v9 + 8 * v24;
        --v10;
      }

      while (v25 == 19);
      if (v25 <= 8)
      {
        v13 = v11;
        if ((v25 - 1) >= 3)
        {
          if (v25)
          {
            goto LABEL_127;
          }

          goto LABEL_114;
        }

        goto LABEL_106;
      }

      if (v25 > 10)
      {
        if (v25 != 11)
        {
          if (v25 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_64;
          }

LABEL_127:
          *(v6 + 4) = 15;
          *v6 = &nuls;
          v6[1] = &nuls;
          return result;
        }

        v13 = v11;
        goto LABEL_135;
      }

      if (v25 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = v11 - v13;
      result = doinsert(v6, 2013265920, v11 - v13 + 1, v13);
      a2 = v6[5];
      if (*(v6 + 4))
      {
        goto LABEL_83;
      }

      v19 = v6[4];
      if (a2 < v19 || (v20 = (v19 + 1) / 2, v21 = ((v19 + 1 + ((v19 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v20, v19 >= v21))
      {
        v22 = 1;
      }

      else
      {
        if (v21 >> 61)
        {
          v22 = 0;
          *(v6 + 4) = 12;
          goto LABEL_98;
        }

        v38 = v6[5];
        v39 = malloc_type_realloc(v6[3], 24 * v20, 0x100004000313F17uLL);
        if (v39)
        {
          v6[3] = v39;
          v6[4] = v21;
          v22 = *(v6 + 4) == 0;
          a2 = v38;
        }

        else
        {
          a2 = v38;
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          v22 = 0;
LABEL_98:
          *v6 = &nuls;
          v6[1] = &nuls;
        }
      }

      result = v6[3];
      v28 = v6[5];
      v6[5] = v28 + 1;
      *&result[2 * v28] = (a2 - v13) | 0x80000000;
      a2 = v6[5];
      if (!v22)
      {
        goto LABEL_83;
      }

      *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
      v29 = v6[4];
      if (v6[5] < v29 || (v30 = (v29 + 1) / 2, v31 = ((v29 + 1 + ((v29 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v30, v29 >= v31))
      {
        v34 = v6[5];
        v6[5] = v34 + 1;
        *&result[2 * v34] = 2281701376;
        a2 = v6[5];
LABEL_67:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v35 = v6[4];
        if (v6[5] < v35 || (v36 = (v35 + 1) / 2, v37 = ((v35 + 1 + ((v35 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v36, v35 >= v37))
        {
LABEL_81:
          v32 = 2415919106;
        }

        else
        {
          if (v37 >> 61)
          {
            *(v6 + 4) = 12;
            v32 = 2415919106;
LABEL_71:
            *v6 = &nuls;
            v6[1] = &nuls;
            goto LABEL_82;
          }

          result = malloc_type_realloc(result, 24 * v36, 0x100004000313F17uLL);
          if (result)
          {
            v6[3] = result;
            v6[4] = v37;
            goto LABEL_81;
          }

          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
          v32 = 2415919106;
          result = v6[3];
        }

LABEL_82:
        v42 = v6[5];
        v6[5] = v42 + 1;
        *&result[2 * v42] = v32;
        a2 = v6[5];
        goto LABEL_83;
      }

      if (v31 >> 61)
      {
        *(v6 + 4) = 12;
        v32 = 2281701376;
        goto LABEL_71;
      }

      result = malloc_type_realloc(result, 24 * v30, 0x100004000313F17uLL);
      if (!result)
      {
        if (!*(v6 + 4))
        {
          *(v6 + 4) = 12;
        }

        *v6 = &nuls;
        v6[1] = &nuls;
        v32 = 2281701376;
        result = v6[3];
        goto LABEL_82;
      }

      v6[3] = result;
      v6[4] = v31;
      v40 = *(v6 + 4);
      v41 = v6[5];
      v6[5] = v41 + 1;
      *&result[2 * v41] = 2281701376;
      a2 = v6[5];
      if (!v40)
      {
        goto LABEL_67;
      }

LABEL_83:
      if (v11 == v13)
      {
        break;
      }

      v43 = a2;
      if (v18 >= 1)
      {
        v44 = v6[4] + v18;
        if (v44 >> 61 || (v45 = malloc_type_realloc(v6[3], 8 * v44, 0x100004000313F17uLL)) == 0)
        {
          if (!*(v6 + 4))
          {
            *(v6 + 4) = 12;
          }

          *v6 = &nuls;
          v6[1] = &nuls;
        }

        else
        {
          v6[3] = v45;
          v6[4] = v44;
        }
      }

      result = memmove((v6[3] + 8 * v6[5]), (v6[3] + 8 * v13 + 8), 8 * v18);
      v7 = v6[5] + v18;
      v6[5] = v7;
      a3 = 1;
      a2 = v43;
      a4 = (a4 - 1);
      if (*(v6 + 4))
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!*(v6 + 4))
    {
      continue;
    }

    return result;
  }
}

uint64_t p_b_symbol(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2 - *a1 < 1)
  {
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 7;
    }

    v1 = &nuls;
    *a1 = &nuls;
    *(a1 + 8) = &nuls;
    goto LABEL_16;
  }

  v3 = v2 - v1;
  if (v2 - v1 <= 1 || *v1 != 91 || v1[1] != 46)
  {
LABEL_16:
    *a1 = v1 + 1;
    return *v1;
  }

  v4 = v1 + 2;
  *a1 = v1 + 2;
  if (v2 - (v1 + 2) < 1)
  {
LABEL_23:
    if (*(a1 + 16))
    {
      goto LABEL_26;
    }

    v15 = 7;
  }

  else
  {
    v5 = 0;
    v6 = -2;
    while (1)
    {
      v7 = &v1[v5];
      if (v3 - 3 != v5 && v7[2] == 46 && v1[v5 + 3] == 93)
      {
        break;
      }

      *a1 = v7 + 3;
      ++v5;
      --v6;
      if (v3 + v6 <= 0)
      {
        goto LABEL_23;
      }
    }

    v8 = a1;
    v9 = &v1[v5 + 2];
    v10 = "NUL";
    v11 = &off_1E77C5280;
    do
    {
      if (!strncmp(v10, v4, v5) && strlen(v10) == v5)
      {
        v12 = *(v11 - 8);
        a1 = v8;
        if (v2 - v9 <= 1)
        {
          goto LABEL_32;
        }

LABEL_27:
        if (*v9 == 46 && v9[1] == 93)
        {
          *a1 = v9 + 2;
          return v12;
        }

        goto LABEL_32;
      }

      v14 = *v11;
      v11 += 2;
      v10 = v14;
    }

    while (v14);
    if (v5 == 1)
    {
      v12 = *v4;
      a1 = v8;
      if (v2 - v9 <= 1)
      {
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    a1 = v8;
    if (*(v8 + 16))
    {
      goto LABEL_26;
    }

    v15 = 3;
  }

  *(a1 + 16) = v15;
LABEL_26:
  v12 = 0;
  *a1 = &nuls;
  *(a1 + 8) = &nuls;
LABEL_32:
  if (!*(a1 + 16))
  {
    *(a1 + 16) = 3;
  }

  *a1 = &nuls;
  *(a1 + 8) = &nuls;
  return v12;
}

__n128 bothcases(__n128 *a1, char a2, double a3, double a4, double a5, int32x4_t a6)
{
  v10 = a2;
  v11 = 93;
  v7 = *a1;
  v9 = *a1;
  a1->n128_u64[0] = &v10;
  a1->n128_u64[1] = &v11 + 1;
  p_bracket(a1, v7.n128_f64[0], a4, a5, a6);
  result = v9;
  *a1 = v9;
  return result;
}

size_t llvm_regerror(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (!strcmp("REG_NOMATCH", v6))
    {
      v12 = 1;
    }

    else if (!strcmp("REG_BADPAT", v6))
    {
      v12 = 2;
    }

    else if (!strcmp("REG_ECOLLATE", v6))
    {
      v12 = 3;
    }

    else if (!strcmp("REG_ECTYPE", v6))
    {
      v12 = 4;
    }

    else if (!strcmp("REG_EESCAPE", v6))
    {
      v12 = 5;
    }

    else if (!strcmp("REG_ESUBREG", v6))
    {
      v12 = 6;
    }

    else if (!strcmp("REG_EBRACK", v6))
    {
      v12 = 7;
    }

    else if (!strcmp("REG_EPAREN", v6))
    {
      v12 = 8;
    }

    else if (!strcmp("REG_EBRACE", v6))
    {
      v12 = 9;
    }

    else if (!strcmp("REG_BADBR", v6))
    {
      v12 = 10;
    }

    else if (!strcmp("REG_ERANGE", v6))
    {
      v12 = 11;
    }

    else if (!strcmp("REG_ESPACE", v6))
    {
      v12 = 12;
    }

    else if (!strcmp("REG_BADRPT", v6))
    {
      v12 = 13;
    }

    else if (!strcmp("REG_EMPTY", v6))
    {
      v12 = 14;
    }

    else if (!strcmp("REG_ASSERT", v6))
    {
      v12 = 15;
    }

    else
    {
      if (strcmp("REG_INVARG", v6))
      {
        v7 = "0";
        goto LABEL_48;
      }

      v12 = 16;
    }

    v16 = v12;
    v13 = "%d";
  }

  else
  {
    v8 = &rerrs;
    do
    {
      v10 = *v8;
      v8 += 6;
      v9 = v10;
      if (v10)
      {
        v11 = v9 == (a1 & 0xFFFFFEFF);
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    if ((a1 & 0x100) == 0)
    {
      v7 = *(v8 - 1);
      goto LABEL_48;
    }

    if (v9)
    {
      v7 = __str;
      llvm_strlcpy(__str, *(v8 - 2), 50);
      goto LABEL_48;
    }

    v16 = a1 & 0xFFFFFEFF;
    v13 = "REG_0x%x";
  }

  v7 = __str;
  snprintf(__str, 0x32uLL, v13, v16);
LABEL_48:
  v14 = strlen(v7);
  if (a4)
  {
    llvm_strlcpy(a3, v7, a4);
  }

  return v14 + 1;
}

uint64_t llvm_regexec(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v137 = v5;
  v138 = v6;
  v7 = *(a1 + 24);
  if (*v7 != 53829 || (*(v7 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v7 + 48);
  v10 = __s;
  if (v9 > 64)
  {
    v20 = *(v7 + 56);
    v19 = *(v7 + 64);
    if ((*(v7 + 40) & 4) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    v122 = v21;
    if ((a5 & 4) != 0)
    {
      v23 = a4[1];
      v24 = &__s[*a4];
      v25 = &__s[v23];
      if (&__s[v23] < v24)
      {
        return 16;
      }
    }

    else
    {
      v22 = a4;
      v23 = strlen(__s);
      a4 = v22;
      __s = v10;
      v24 = v10;
      v25 = &v10[v23];
      if (&v10[v23] < v10)
      {
        return 16;
      }
    }

    v132 = 0u;
    v131 = 0u;
    v130 = 0u;
    v35 = *(v7 + 96);
    v127 = v25;
    v119 = a4;
    if (v35)
    {
      v36 = v24;
      if (v24 < v25)
      {
        __dsta = v20;
        v116 = v8;
        v37 = v7;
        v38 = *v35;
        v39 = (__s - v24 + v23);
        v113 = &__s[v23];
        v40 = (&__s[v23] - v24);
        v36 = v24;
        do
        {
          if (*v36 == v38)
          {
            v41 = *(v37 + 104);
            if (v40 >= v41)
            {
              v42 = memcmp(v36, v35, v41);
              __s = v10;
              if (!v42)
              {
                goto LABEL_152;
              }
            }
          }

          ++v36;
          --v40;
          --v39;
        }

        while (v39);
        v36 = v113;
LABEL_152:
        v7 = v37;
        v20 = __dsta;
        v25 = v127;
        v8 = v116;
      }

      if (v36 == v25)
      {
        return 1;
      }
    }

    v129 = v7;
    LODWORD(v130) = v8;
    *&v131 = __s;
    *(&v131 + 1) = v24;
    *&v133 = 0;
    *&v132 = v25;
    v76 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v134[0] = v76;
    if (!v76)
    {
      return 12;
    }

    v77 = v20 + 1;
    v134[1] = v76;
    v78 = *(v7 + 48);
    *&v135 = &v76[v78];
    *(&v135 + 1) = &v76[2 * v78];
    *(&v133 + 1) = 4;
    v136 = &v76[2 * v78 + v78];
    bzero(v136, v78);
    v121 = v7;
LABEL_157:
    if (*(&v131 + 1) == v24)
    {
      v79 = 128;
    }

    else
    {
      v79 = *(v24 - 1);
    }

    v80 = v135;
    v81 = v134[1];
    bzero(v134[1], *(v129 + 48));
    v81[v77] = 1;
    lstep(v129, v77, v19, v81, 132, v81);
    memmove(v80, v81, *(v129 + 48));
    v82 = 0;
    if (v24 != v132)
    {
LABEL_161:
      v83 = *v24;
      goto LABEL_163;
    }

    while (1)
    {
      v83 = 128;
LABEL_163:
      v84 = v129;
      if (!memcmp(v81, v80, *(v129 + 48)))
      {
        v82 = v24;
      }

      if (v79 == 128)
      {
        if (v130)
        {
          goto LABEL_168;
        }
      }

      else if (v79 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_168:
        v85 = 0;
        v86 = 0;
        v87 = 130;
        if (v83 == 128)
        {
          goto LABEL_175;
        }

        goto LABEL_169;
      }

      v86 = *(v84 + 76);
      v85 = 129;
      v87 = 131;
      if (v83 == 128)
      {
LABEL_175:
        if ((v130 & 2) != 0)
        {
          goto LABEL_171;
        }

        goto LABEL_176;
      }

LABEL_169:
      if (v83 != 10 || (*(v84 + 40) & 8) == 0)
      {
LABEL_171:
        v87 = v85;
        if (v86 < 1)
        {
          goto LABEL_179;
        }

        goto LABEL_177;
      }

LABEL_176:
      v86 += *(v84 + 80);
      if (v86 < 1)
      {
        goto LABEL_179;
      }

LABEL_177:
      v88 = v86 + 1;
      do
      {
        lstep(v129, v77, v19, v81, v87, v81);
        --v88;
      }

      while (v88 > 1);
LABEL_179:
      if (v87 == 129)
      {
        if (v83 == 128)
        {
          v87 = 129;
          if (v79 == 128)
          {
            goto LABEL_210;
          }
        }

        else
        {
LABEL_190:
          if (v83 > 0x7Fu)
          {
            v91 = __maskrune(v83, 0x500uLL);
            if (v83 == 95 || v91 != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }

          else
          {
            if (v83 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v83 + 60) & 0x500) != 0)
            {
              v87 = 133;
            }

            if (v79 == 128)
            {
              goto LABEL_210;
            }
          }
        }

        v89 = v79;
        goto LABEL_205;
      }

      if (v79 == 128)
      {
        goto LABEL_210;
      }

      v89 = v79;
      if (v79 > 0x7Fu)
      {
        if (__maskrune(v79, 0x500uLL))
        {
          goto LABEL_205;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v79 + 60) & 0x500) != 0)
      {
        goto LABEL_205;
      }

      if (v79 != 95 && v83 != 128)
      {
        goto LABEL_190;
      }

LABEL_205:
      if (v89 > 0x7F)
      {
        if (!__maskrune(v89, 0x500uLL))
        {
LABEL_209:
          if (v79 != 95)
          {
            goto LABEL_210;
          }
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v89 + 60) & 0x500) == 0)
      {
        goto LABEL_209;
      }

      if (v87 == 130 || v83 != 128 && (v83 > 0x7Fu ? (v93 = __maskrune(v83, 0x500uLL)) : (v93 = *(MEMORY[0x1E69E9830] + 4 * v83 + 60) & 0x500), !v93 && v83 != 95))
      {
        v87 = 134;
LABEL_214:
        lstep(v129, v77, v19, v81, v87, v81);
        goto LABEL_215;
      }

LABEL_210:
      if ((v87 - 133) <= 1)
      {
        goto LABEL_214;
      }

LABEL_215:
      if (v24 == v127 || v81[v19])
      {
        *(&v132 + 1) = v82;
        if (!v81[v19])
        {
          free(*(&v130 + 1));
          free(v133);
          v112 = 1;
          goto LABEL_267;
        }

        v94 = v122;
        if (!v122 && !*(v121 + 120))
        {
          goto LABEL_262;
        }

        v95 = lslow(&v129, v82, v127, v77, v19);
        if (!v95)
        {
          v97 = v121;
          do
          {
            ++*(&v132 + 1);
            v98 = lslow(&v129, *(&v132 + 1), v127, v77, v19);
          }

          while (!v98);
          v96 = v98;
          if (v122 == 1)
          {
            goto LABEL_235;
          }

          goto LABEL_236;
        }

        v96 = v95;
        v97 = v121;
        if (v122 != 1)
        {
          goto LABEL_236;
        }

LABEL_235:
        if (!*(v97 + 120))
        {
          goto LABEL_257;
        }

LABEL_236:
        v99 = *(&v130 + 1);
        if (!*(&v130 + 1))
        {
          v99 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v130 + 1) = v99;
          if (!v99)
          {
            v112 = 12;
            goto LABEL_267;
          }
        }

        v100 = *(v129 + 112);
        if (v100)
        {
          if ((v100 + 1) > 2)
          {
            v101 = v100 + 1;
          }

          else
          {
            v101 = 2;
          }

          memset(v99 + 16, 255, 16 * v101 - 16);
        }

        if (*(v97 + 120) || (BYTE1(v130) & 4) != 0)
        {
          v103 = *(v97 + 128);
          v104 = v133;
          if (v103 >= 1 && !v133)
          {
            v104 = malloc_type_malloc(8 * v103 + 8, 0x10040436913F5uLL);
            *&v133 = v104;
            v103 = *(v97 + 128);
          }

          if (v103 < 1 || v104)
          {
            v102 = sbackref(&v129, *(&v132 + 1), v96, v77, v19, 0, 0);
            goto LABEL_252;
          }

          free(*(&v130 + 1));
          v112 = 12;
          goto LABEL_267;
        }

        v102 = ldissect(&v129, *(&v132 + 1), v96, v77, v19);
LABEL_252:
        if (v102)
        {
          goto LABEL_256;
        }

        while (1)
        {
          v105 = *(&v132 + 1);
          if (v96 <= *(&v132 + 1))
          {
            break;
          }

          v96 = lslow(&v129, *(&v132 + 1), v96 - 1, v77, v19);
          v105 = *(&v132 + 1);
          if (!v96)
          {
            break;
          }

          if (sbackref(&v129, *(&v132 + 1), v96, v77, v19, 0, 0))
          {
            goto LABEL_256;
          }
        }

        v24 = v105 + 1;
        if (v105 == v127)
        {
LABEL_256:
          v94 = v122;
          if (v122)
          {
LABEL_257:
            v106 = &v96[-v131];
            *v119 = *(&v132 + 1) - v131;
            v119[1] = v106;
            if (v94 >= 2)
            {
              v107 = v129;
              v108 = (*(&v130 + 1) + 16);
              v109 = v119 + 2;
              for (i = 1; i != v94; ++i)
              {
                while (i > *(v107 + 112))
                {
                  *v109 = -1;
                  v109[1] = -1;
                  v109 += 2;
                  ++i;
                  ++v108;
                  if (v94 == i)
                  {
                    goto LABEL_262;
                  }
                }

                v111 = *v108++;
                *v109 = v111;
                v109 += 2;
              }
            }
          }

LABEL_262:
          if (*(&v130 + 1))
          {
            free(*(&v130 + 1));
          }

          if (v133)
          {
            free(v133);
          }

          v112 = 0;
LABEL_267:
          free(v134[0]);
          return v112;
        }

        goto LABEL_157;
      }

      memmove(*(&v80 + 1), v81, *(v129 + 48));
      memmove(v81, v80, *(v129 + 48));
      lstep(v129, v77, v19, *(&v80 + 1), v83, v81);
      ++v24;
      v79 = v83;
      if (v24 != v132)
      {
        goto LABEL_161;
      }
    }
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  if ((*(v7 + 40) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  if ((a5 & 4) == 0)
  {
    v14 = a4;
    v15 = strlen(__s);
    a4 = v14;
    __s = v10;
    v16 = v10;
    v17 = &v10[v15];
    if (&v10[v15] >= v10)
    {
      goto LABEL_21;
    }

    return 16;
  }

  v15 = a4[1];
  v16 = &__s[*a4];
  v17 = &__s[v15];
  if (&__s[v15] < v16)
  {
    return 16;
  }

LABEL_21:
  v118 = a4;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v26 = *(v7 + 96);
  __dst = v17;
  if (v26)
  {
    v27 = v16;
    if (v16 < v17)
    {
      v126 = v12;
      v115 = v8;
      v28 = v13;
      v29 = v7;
      v30 = *v26;
      v31 = (__s - v16 + v15);
      v123 = &__s[v15];
      v32 = (&__s[v15] - v16);
      v27 = v16;
      while (1)
      {
        if (*v27 == v30)
        {
          v33 = *(v29 + 104);
          if (v32 >= v33)
          {
            v34 = memcmp(v27, v26, v33);
            __s = v10;
            if (!v34)
            {
              break;
            }
          }
        }

        ++v27;
        --v32;
        if (!--v31)
        {
          v27 = v123;
          break;
        }
      }

      v7 = v29;
      v13 = v28;
      v17 = __dst;
      v12 = v126;
      v8 = v115;
    }

    if (v27 == v17)
    {
      return 1;
    }
  }

  v43 = v12 + 1;
  v129 = v7;
  LODWORD(v130) = v8;
  *&v131 = __s;
  *(&v131 + 1) = v16;
  v114 = v13;
  v117 = 1 << (v12 + 1);
  *&v132 = v17;
  v120 = v7;
  *v134 = 0u;
  v135 = 0u;
  while (2)
  {
    if (*(&v131 + 1) == v16)
    {
      v44 = 128;
    }

    else
    {
      v44 = *(v16 - 1);
    }

    v45 = v129;
    v46 = sstep(v129, v43, v11, v117, 132, v117);
    v47 = 0;
    v48 = v46;
    if (v16 != v132)
    {
LABEL_48:
      v49 = *v16;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 == 128)
      {
        goto LABEL_61;
      }

LABEL_51:
      if (v44 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_62;
      }

LABEL_53:
      v50 = 0;
      v51 = 0;
      v52 = 130;
      if (v49 == 128)
      {
        goto LABEL_63;
      }

LABEL_54:
      if (v49 == 10 && (*(v45 + 40) & 8) != 0)
      {
        goto LABEL_64;
      }

LABEL_56:
      v52 = v50;
      if (v51 >= 1)
      {
LABEL_65:
        v53 = v51 + 1;
        do
        {
          v48 = sstep(v45, v43, v11, v48, v52, v48);
          --v53;
        }

        while (v53 > 1);
      }

      goto LABEL_67;
    }

    while (1)
    {
      v49 = 128;
      if (v48 == v46)
      {
        v47 = v16;
      }

      v128 = v47;
      if (v44 != 128)
      {
        goto LABEL_51;
      }

LABEL_61:
      if (v130)
      {
        goto LABEL_53;
      }

LABEL_62:
      v51 = *(v45 + 76);
      v50 = 129;
      v52 = 131;
      if (v49 != 128)
      {
        goto LABEL_54;
      }

LABEL_63:
      if ((v130 & 2) != 0)
      {
        goto LABEL_56;
      }

LABEL_64:
      v51 += *(v45 + 80);
      if (v51 >= 1)
      {
        goto LABEL_65;
      }

LABEL_67:
      if (v52 == 129)
      {
        v54 = __dst;
        if (v49 == 128)
        {
          v52 = 129;
          if (v44 == 128)
          {
            goto LABEL_98;
          }
        }

        else
        {
LABEL_78:
          if (v49 > 0x7Fu)
          {
            v57 = __maskrune(v49, 0x500uLL);
            if (v49 == 95 || v57 != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }

          else
          {
            if (v49 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x500) != 0)
            {
              v52 = 133;
            }

            if (v44 == 128)
            {
              goto LABEL_98;
            }
          }
        }

        v55 = v44;
        goto LABEL_93;
      }

      v54 = __dst;
      if (v44 == 128)
      {
        goto LABEL_98;
      }

      v55 = v44;
      if (v44 > 0x7Fu)
      {
        if (__maskrune(v44, 0x500uLL))
        {
          goto LABEL_93;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x500) != 0)
      {
        goto LABEL_93;
      }

      if (v44 != 95 && v49 != 128)
      {
        goto LABEL_78;
      }

LABEL_93:
      if (v55 > 0x7F)
      {
        if (!__maskrune(v55, 0x500uLL))
        {
LABEL_97:
          if (v44 != 95)
          {
            goto LABEL_98;
          }
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x500) == 0)
      {
        goto LABEL_97;
      }

      if (v52 == 130 || v49 != 128 && (v49 > 0x7Fu ? (v60 = __maskrune(v49, 0x500uLL)) : (v60 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x500), !v60 && v49 != 95))
      {
        v52 = 134;
LABEL_102:
        v48 = sstep(v129, v43, v11, v48, v52, v48);
        goto LABEL_103;
      }

LABEL_98:
      if ((v52 - 133) <= 1)
      {
        goto LABEL_102;
      }

LABEL_103:
      v47 = v128;
      v59 = v48 & (1 << v11);
      if (v16 == v54 || v59)
      {
        break;
      }

      v45 = v129;
      v48 = sstep(v129, v43, v11, v48, v49, v46);
      ++v16;
      v44 = v49;
      if (v16 != v132)
      {
        goto LABEL_48;
      }
    }

    *(&v132 + 1) = v128;
    if (!v59)
    {
      free(*(&v130 + 1));
      free(v133);
      return 1;
    }

    if (!v114 && !*(v120 + 120))
    {
      goto LABEL_147;
    }

    for (j = sslow(&v129, v128, v54, v43, v11); !j; j = sslow(&v129, *(&v132 + 1), v54, v43, v11))
    {
      ++*(&v132 + 1);
    }

    v62 = j;
    if (v114 == 1 && !*(v120 + 120))
    {
      goto LABEL_142;
    }

    v63 = *(&v130 + 1);
    if (!*(&v130 + 1))
    {
      v63 = malloc_type_malloc(16 * *(v129 + 112) + 16, 0x1000040451B5BE8uLL);
      *(&v130 + 1) = v63;
      if (!v63)
      {
        return 12;
      }
    }

    v64 = *(v129 + 112);
    if (v64)
    {
      if ((v64 + 1) > 2)
      {
        v65 = v64 + 1;
      }

      else
      {
        v65 = 2;
      }

      memset(v63 + 16, 255, 16 * v65 - 16);
    }

    if (*(v120 + 120) || (BYTE1(v130) & 4) != 0)
    {
      v67 = *(v120 + 128);
      v68 = v133;
      if (v67 >= 1 && !v133)
      {
        v68 = malloc_type_malloc(8 * v67 + 8, 0x10040436913F5uLL);
        *&v133 = v68;
        v67 = *(v120 + 128);
      }

      if (v67 >= 1 && !v68)
      {
        free(*(&v130 + 1));
        return 12;
      }

      v66 = sbackref(&v129, *(&v132 + 1), v62, v43, v11, 0, 0);
    }

    else
    {
      v66 = sdissect(&v129, *(&v132 + 1), v62, v43, v11);
    }

    if (!v66)
    {
      while (1)
      {
        v69 = *(&v132 + 1);
        if (v62 <= *(&v132 + 1))
        {
          break;
        }

        v62 = sslow(&v129, *(&v132 + 1), v62 - 1, v43, v11);
        v69 = *(&v132 + 1);
        if (!v62)
        {
          break;
        }

        if (sbackref(&v129, *(&v132 + 1), v62, v43, v11, 0, 0))
        {
          goto LABEL_141;
        }
      }

      v16 = v69 + 1;
      if (v69 != v54)
      {
        continue;
      }
    }

    break;
  }

LABEL_141:
  if (!v114)
  {
    goto LABEL_147;
  }

LABEL_142:
  v70 = &v62[-v131];
  *v118 = *(&v132 + 1) - v131;
  v118[1] = v70;
  if (v114 >= 2)
  {
    v71 = v129;
    v72 = (*(&v130 + 1) + 16);
    v73 = v118 + 2;
    for (k = 1; k != v114; ++k)
    {
      while (k > *(v71 + 112))
      {
        *v73 = -1;
        v73[1] = -1;
        v73 += 2;
        ++k;
        ++v72;
        if (v114 == k)
        {
          goto LABEL_147;
        }
      }

      v75 = *v72++;
      *v73 = v75;
      v73 += 2;
    }
  }

LABEL_147:
  if (*(&v130 + 1))
  {
    free(*(&v130 + 1));
  }

  result = v133;
  if (v133)
  {
    free(v133);
    return 0;
  }

  return result;
}

char *sslow(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v26 = a1[12];
      if (a2 == a1[4])
      {
        v13 = 128;
      }

      else
      {
        v13 = *(a2 - 1);
      }

      v14 = *a1;
      v15 = sstep(*a1, v6, a5, 1 << v6, 132, 1 << v6);
      v11 = 0;
      v27 = 1 << a5;
      v16 = a1;
      if (a2 == a1[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      v17 = *a2;
      if (v13 != 128)
      {
LABEL_20:
        if (v13 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = 0;
        v19 = 0;
        v20 = 130;
        if (v17 == 128)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v17 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        v20 = v18;
        if (v19 >= 1)
        {
LABEL_32:
          v21 = v19 + 1;
          do
          {
            v15 = sstep(v14, v6, a5, v15, v20, v15);
            --v21;
          }

          while (v21 > 1);
        }

        goto LABEL_34;
      }

      while (1)
      {
        if (v16[1])
        {
          goto LABEL_22;
        }

LABEL_29:
        v19 = *(v14 + 76);
        v18 = 129;
        v20 = 131;
        if (v17 != 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if ((v16[1] & 2) != 0)
        {
          goto LABEL_25;
        }

LABEL_31:
        v19 += *(v14 + 80);
        if (v19 >= 1)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v20 == 129)
        {
          v16 = a1;
          if (v17 == 128)
          {
            v20 = 129;
            if (v13 == 128)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_45:
            if (v17 > 0x7Fu)
            {
              v24 = __maskrune(v17, 0x500uLL);
              if (v17 == 95 || v24 != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v17 == 95 || (*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x500) != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }
          }

          v22 = v13;
          goto LABEL_60;
        }

        v16 = a1;
        if (v13 == 128)
        {
          goto LABEL_65;
        }

        v22 = v13;
        if (v13 > 0x7Fu)
        {
          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_60;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x500) != 0)
        {
          goto LABEL_60;
        }

        if (v13 != 95 && v17 != 128)
        {
          goto LABEL_45;
        }

LABEL_60:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_70;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        if (v13 != 95)
        {
          goto LABEL_65;
        }

LABEL_70:
        if (v20 == 130)
        {
          goto LABEL_71;
        }

        if (v17 != 128)
        {
          if (v17 > 0x7Fu)
          {
            if (__maskrune(v17, 0x500uLL))
            {
              goto LABEL_65;
            }
          }

          else if ((*(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x500) != 0)
          {
            goto LABEL_65;
          }

          if (v17 != 95)
          {
LABEL_71:
            v20 = 134;
            goto LABEL_72;
          }
        }

LABEL_65:
        if ((v20 - 133) > 1)
        {
          if ((v15 & v27) != 0)
          {
            v11 = a2;
          }

          if (a2 == a3)
          {
            return v11;
          }

          goto LABEL_75;
        }

LABEL_72:
        v15 = sstep(*v16, v6, a5, v15, v20, v15);
        if ((v15 & v27) != 0)
        {
          v11 = a2;
        }

        if (a2 == a3)
        {
          return v11;
        }

LABEL_75:
        if (v15 == v26)
        {
          return v11;
        }

        v14 = *v16;
        v15 = sstep(*v16, v6, a5, v15, v17, v26);
        ++a2;
        v13 = v17;
        if (a2 != v16[5])
        {
          goto LABEL_19;
        }

LABEL_27:
        v17 = 128;
        if (v13 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sdissect(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 >= a5)
            {
              continue;
            }

            v22 = (*(*a1 + 8) + 8 * v16 + 16);
            v23 = v56 - v16;
            v24 = -2 - v16;
            while (1)
            {
              v25 = *(v22 - 2);
              if ((v25 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v22;
              --v24;
              if (!--v23)
              {
                goto LABEL_28;
              }
            }

            if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
            {
              v26 = -v24;
              v27 = v25;
              if (v26 < a5)
              {
                v28 = i;
                while (1)
                {
                  if (v27 == *(v28 - 1))
                  {
                    if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                    {
                      v21 = v28 - 1;
                      goto LABEL_28;
                    }

                    if (*v28 == *v22)
                    {
                      goto LABEL_28;
                    }
                  }

                  --v21;
                  v29 = v28 - 2;
                  --v28;
                  if (v29 == v5)
                  {
                    goto LABEL_38;
                  }
                }
              }

              do
              {
                if (v25 == *v21)
                {
                  goto LABEL_28;
                }

                --v21;
              }

              while (v21 != v5);
LABEL_38:
              v21 = v5;
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sslow(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sdissect(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_89:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sslow(a1, v5, v31, v11, v16 + 1);
            v32 = sslow(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sslow(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sdissect(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sslow(a1, v5, a3, v11, v16 + 1); sslow(a1, i, a3, v16 + 1, a5) != a3; i = sslow(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 >= a5)
          {
            continue;
          }

          v41 = -2 - v16;
          v42 = (*(*a1 + 8) + 8 * v16 + 16);
          v43 = v56 - v16;
          while (1)
          {
            v44 = *(v42 - 2);
            if ((v44 & 0xF8000000) != 0x70000000)
            {
              break;
            }

            ++v42;
            --v41;
            if (!--v43)
            {
              goto LABEL_68;
            }
          }

          if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
          {
            v45 = -v41;
            v46 = v44;
            if (v45 < a5)
            {
              v47 = i;
              while (1)
              {
                if (v46 == *(v47 - 1))
                {
                  if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                  {
                    v40 = v47 - 1;
                    goto LABEL_68;
                  }

                  if (*v47 == *v42)
                  {
                    goto LABEL_68;
                  }
                }

                --v40;
                v48 = v47 - 2;
                --v47;
                if (v48 == v5)
                {
                  goto LABEL_78;
                }
              }
            }

            do
            {
              if (v44 == *v40)
              {
                goto LABEL_68;
              }

              --v40;
            }

            while (v40 != v5);
LABEL_78:
            v40 = v5;
          }

LABEL_68:
          ;
        }

        if (sslow(a1, v5, i, v11 + 1, v16))
        {
          sdissect(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_89;
  }

  return a2;
}