void google::protobuf::internal::ThreadSafeArena::~ThreadSafeArena(google::protobuf::internal::ThreadSafeArena *this, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  google::protobuf::internal::ThreadSafeArena::CleanupList(this, a2);
  v8 = 0;
  v3 = google::protobuf::internal::ThreadSafeArena::Free(this, &v8);
  v5 = *(this + 1);
  if ((v5 & 1) == 0 && v4)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFF8;
    if (v6 && (v7 = *(v6 + 24)) != 0)
    {
      v7(v3);
    }

    else
    {
      operator delete(v3);
    }
  }

  absl::lts_20240722::Mutex::~Mutex((this + 24));
}

uint64_t google::protobuf::internal::ThreadSafeArena::AllocateAlignedWithCleanupFallback(atomic_ullong *this, uint64_t a2, uint64_t a3, uint64_t (*a4)())
{
  SerialArenaFallback = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(this);
  v8 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a3 + *SerialArenaFallback - 1) & -a3;
  _ZF = a4 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord> || a4 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>;
  v11 = 16;
  if (_ZF)
  {
    v11 = 8;
  }

  if (!a4)
  {
    v11 = 0;
  }

  v12 = SerialArenaFallback[1];
  if (v11 + v8 + v9 > v12)
  {

    return google::protobuf::internal::SerialArena::AllocateAlignedWithCleanupFallback(SerialArenaFallback, v8, a3, a4);
  }

  else
  {
    _X9 = v9 + v8;
    *SerialArenaFallback = v9 + v8;
    v14 = 2 * (a4 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
    if (a4 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>)
    {
      v14 = 1;
    }

    v15 = -16;
    if ((v14 - 1) < 2)
    {
      v15 = -8;
    }

    v16 = (v12 + v15);
    SerialArenaFallback[1] = v16;
    _X12 = SerialArenaFallback[3];
    if (v16 - _X12 <= 384)
    {
      v20 = SerialArenaFallback[2];
      if (_X12 > v20)
      {
        if (_X12 >= v16)
        {
          _X12 = v16;
        }

        if (v20 < (_X12 - 48))
        {
          v20 = (_X12 - 48);
        }

        for (; _X12 > v20; _X12 -= 8)
        {
          __asm { PRFM            #0x10, [X12] }
        }

        SerialArenaFallback[3] = _X12;
      }
    }

    if (v14 == 2)
    {
      *v16 = v9 | 2;
    }

    else if (v14 == 1)
    {
      *v16 = v9 | 1;
    }

    else
    {
      *v16 = v9;
      v16[1] = a4;
    }

    v18 = SerialArenaFallback[2];
    if ((v18 - _X9) > 1024)
    {
      return v9;
    }

    v25 = SerialArenaFallback[3];
    if (v18 >= v25)
    {
      return v9;
    }

    else
    {
      if (_X9 < v18)
      {
        _X9 = SerialArenaFallback[2];
      }

      v26 = _X9 + 1024;
      if (_X9 + 1024 >= v25)
      {
        v26 = SerialArenaFallback[3];
      }

      for (; _X9 < v26; _X9 += 64)
      {
        __asm { PRFM            #0x10, [X9] }
      }

      SerialArenaFallback[2] = _X9;
      return v9;
    }
  }
}

char *google::protobuf::internal::ThreadSafeArena::AddCleanup(google::protobuf::internal::ThreadSafeArena *this, void *a2, void (*a3)(void *))
{
  v3 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
  if (*(v3 + 8) == *v6)
  {
    result = *(v3 + 16);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v10 = *(result + 1);
    goto LABEL_14;
  }

  v11 = v4;
  v12 = v5;
  result = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(v6);
  v4 = v11;
  v5 = v12;
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v8 = v5 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord> || v5 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>;
  v9 = 8;
  if (!v8)
  {
    v9 = 16;
  }

  v10 = *(result + 1);
  if (v9 <= v10 - *result)
  {
LABEL_14:
    if (v5 == google::protobuf::internal::cleanup::arena_destruct_object<std::string>)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2 * (v5 == google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>);
    }

    v14 = -16;
    if ((v13 - 1) < 2)
    {
      v14 = -8;
    }

    v15 = (v10 + v14);
    *(result + 1) = v10 + v14;
    if (v10 + v14 - *(result + 3) <= 384)
    {
      v16 = v4;
      v17 = v5;
      result = google::protobuf::internal::ThreadSafeArena::AddCleanup(result, *(result + 3), v15, result + 3);
      v4 = v16;
      v5 = v17;
      if (v13 != 2)
      {
LABEL_21:
        if (v13 == 1)
        {
          *v15 = v4 | 1;
        }

        else
        {
          *v15 = v4;
          v15[1] = v5;
        }

        return result;
      }
    }

    else if (v13 != 2)
    {
      goto LABEL_21;
    }

    *v15 = v4 | 2;
    return result;
  }

  return google::protobuf::internal::SerialArena::AddCleanupFallback(result, v4, v5);
}

atomic_ullong google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(google::protobuf::internal::ThreadSafeArena *this)
{
  v1 = google::protobuf::internal::ThreadSafeArena::thread_cache_();
  if (*(v1 + 8) == *v2)
  {
    SerialArenaFallback = *(v1 + 16);
    v4 = SerialArenaFallback[5];
    if (v4)
    {
LABEL_3:
      v5 = v4 - 24;
      SerialArenaFallback[5] = v5;
      return SerialArenaFallback[4] + v5 + 16;
    }
  }

  else
  {
    SerialArenaFallback = google::protobuf::internal::ThreadSafeArena::GetSerialArenaFallback(v2);
    v4 = SerialArenaFallback[5];
    if (v4)
    {
      goto LABEL_3;
    }
  }

  return google::protobuf::internal::SerialArena::AllocateFromStringBlockFallback(SerialArenaFallback);
}

void google::protobuf::internal::cleanup::arena_destruct_object<std::string>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void google::protobuf::internal::cleanup::arena_destruct_object<absl::lts_20240722::Cord>(absl::lts_20240722::Cord *result, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  if (*result)
  {
    absl::lts_20240722::Cord::DestroyCordSlow(result, a2);
  }
}

atomic_ullong *google::protobuf::internal::LazyString::Init(atomic_ullong *this, uint64_t a2)
{
  if (atomic_load_explicit(byte_2810C19A8, memory_order_acquire))
  {
    absl::lts_20240722::Mutex::Lock(&_MergedGlobals_54, a2);
    explicit = atomic_load_explicit(this + 3, memory_order_acquire);
    if (explicit)
    {
      goto LABEL_10;
    }
  }

  else
  {
    google::protobuf::internal::LazyString::Init();
    absl::lts_20240722::Mutex::Lock(&_MergedGlobals_54, v7);
    explicit = atomic_load_explicit(this + 3, memory_order_acquire);
    if (explicit)
    {
      goto LABEL_10;
    }
  }

  v4 = this[1];
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = *this;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v4;
  if (v4)
  {
    memmove(this, v5, v4);
  }

  *(this + v4) = 0;
  atomic_store(this, this + 3);
  explicit = this;
LABEL_10:
  absl::lts_20240722::Mutex::Unlock(&_MergedGlobals_54);
  return explicit;
}

uint64_t *std::string::basic_string[abi:ne200100](uint64_t *__dst, const void *a2, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    *(v5 + __len) = 0;
    return v4;
  }

  else
  {
    *__dst = 0;
  }

  return __dst;
}

unint64_t google::protobuf::internal::TaggedStringPtr::ForceCopy(google::protobuf::internal::TaggedStringPtr *this, google::protobuf::Arena *a2)
{
  v2 = *this & 0xFFFFFFFFFFFFFFFCLL;
  v3 = *(v2 + 23);
  if (!a2)
  {
    if ((v3 & 0x80) == 0)
    {
      operator new();
    }

    operator new();
  }

  if ((v3 & 0x80) != 0)
  {
    v4 = *v2;
    v3 = *(v2 + 8);
  }

  else
  {
    v4 = (*this & 0xFFFFFFFFFFFFFFFCLL);
  }

  v6 = v3;
  v7 = v4;
  v8 = a2;
  v9 = a2;
  return absl::lts_20240722::utility_internal::IfConstexprElse<false,std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &&)#1},std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &)#2},char const*,unsigned long>(&v9, &v8, &v7, &v6) | 3;
}

uint64_t *google::protobuf::internal::ArenaStringPtr::Set(unint64_t *a1, const void *a2, size_t a3, google::protobuf::internal::ThreadSafeArena *a4)
{
  if ((*a1 & 3) != 0)
  {

    JUMPOUT(0x23EED9030);
  }

  if (!a4)
  {
    operator new();
  }

  v6 = a3;
  v7 = a2;
  v8 = a4;
  v9 = a4;
  result = absl::lts_20240722::utility_internal::IfConstexprElse<false,std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &&)#1},std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &)#2},char const*,unsigned long>(&v9, &v8, &v7, &v6);
  *a1 = result | 3;
  return result;
}

std::string *google::protobuf::internal::ArenaStringPtr::Set<>(unint64_t *a1, const std::string *a2, google::protobuf::internal::ThreadSafeArena *a3)
{
  v3 = *a1;
  if ((*a1 & 3) != 0)
  {

    return std::string::operator=((v3 & 0xFFFFFFFFFFFFFFFCLL), a2);
  }

  else
  {
    v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if (!a3)
    {
      if ((*(&a2->__r_.__value_.__s + 23) & 0x80) == 0)
      {
        operator new();
      }

      operator new();
    }

    if (v5 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a2->__r_.__value_.__l.__size_;
    }

    v9 = size;
    v10 = v7;
    v11 = a3;
    v12 = a3;
    result = absl::lts_20240722::utility_internal::IfConstexprElse<false,std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &&)#1},std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &)#2},char const*,unsigned long>(&v12, &v11, &v10, &v9);
    *a1 = result | 3;
  }

  return result;
}

__n128 google::protobuf::internal::ArenaStringPtr::Set(unint64_t *a1, __n128 *a2, google::protobuf::internal::ThreadSafeArena *this)
{
  v4 = *a1;
  if ((*a1 & 3) != 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    if (*((v4 & 0xFFFFFFFFFFFFFFFCLL) + 23) < 0)
    {
      operator delete(*v5);
    }

    result = *a2;
    *(v5 + 16) = a2[1].n128_u64[0];
    *v5 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
  }

  else
  {
    if (!this)
    {
      operator new();
    }

    v8 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(this);
    result = *a2;
    *(v8 + 16) = a2[1].n128_u64[0];
    *v8 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *a1 = v8 | 3;
  }

  return result;
}

atomic_ullong google::protobuf::internal::ArenaStringPtr::Mutable(google::protobuf::internal::ArenaStringPtr *this, google::protobuf::Arena *a2)
{
  if ((*this & 2) != 0)
  {
    return *this & 0xFFFFFFFFFFFFFFFCLL;
  }

  if (!a2)
  {
    operator new();
  }

  result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(a2);
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *this = result | 3;
  return result;
}

void *google::protobuf::internal::ArenaStringPtr::Destroy(void *this)
{
  v1 = *this ^ 2;
  if (*this != 2 && (v1 & 3) == 0)
  {
    if (*((*this ^ 2) + 0x17) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EED9460);
  }

  return this;
}

void *google::protobuf::internal::ArenaStringPtr::ClearToEmpty(void *this)
{
  if ((*this & 3) != 0)
  {
    v1 = *this & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  return this;
}

std::string *google::protobuf::internal::ArenaStringPtr::ClearToDefault(std::string *result, atomic_ullong *this)
{
  v2 = result->__r_.__value_.__r.__words[0];
  if ((result->__r_.__value_.__r.__words[0] & 3) != 0)
  {
    explicit = atomic_load_explicit(this + 3, memory_order_acquire);
    if (explicit)
    {
      v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
      v5 = explicit;
    }

    else
    {
      v6 = google::protobuf::internal::LazyString::Init(this, this);
      v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
      v5 = v6;
    }

    return std::string::operator=(v4, v5);
  }

  return result;
}

void google::protobuf::internal::EpsCopyInputStream::ReadArenaString(google::protobuf::internal::EpsCopyInputStream *this, google::protobuf::internal *a2, google::protobuf::internal::ArenaStringPtr *a3, google::protobuf::Arena *a4)
{
  v6 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    v7 = a2 + 1;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  v9 = a4;
  google::protobuf::internal::ReadSizeFallback(a2, *a2);
  if (!v10)
  {
    return;
  }

  v7 = v10;
  v6 = v11;
  a4 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(a4);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *a3 = v8 | 3;

  google::protobuf::internal::EpsCopyInputStream::ReadString(this, v7, v6, v8);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, char *a2, int a3, std::string *__dst)
{
  v4 = a3;
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      size = __dst->__r_.__value_.__l.__size_;
      v7 = a3 - size;
      if (a3 <= size)
      {
        v13 = __dst->__r_.__value_.__r.__words[0];
        __dst->__r_.__value_.__l.__size_ = a3;
        *(v13 + a3) = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      v12 = __dst->__r_.__value_.__r.__words[2];
      v8 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v12);
      if (v8 - size >= v7)
      {
LABEL_9:
        if ((v6 & 0x80) != 0)
        {
          v15 = __dst->__r_.__value_.__r.__words[0];
          __dst->__r_.__value_.__l.__size_ = size + v7;
          *(v15 + size + v7) = 0;
          if ((SHIBYTE(__dst->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        *(&__dst->__r_.__value_.__s + 23) = (size + v7) & 0x7F;
        __dst->__r_.__value_.__s.__data_[size + v7] = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_18:
          __dst = __dst->__r_.__value_.__r.__words[0];
        }

LABEL_19:
        v14 = a2;
        memcpy(__dst, a2, v4);
        return &v14[v4];
      }
    }

    else
    {
      v7 = a3 - v6;
      if (a3 <= v6)
      {
        *(&__dst->__r_.__value_.__s + 23) = a3;
        __dst->__r_.__value_.__s.__data_[a3] = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      v8 = 22;
      size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
      if (22 - v6 >= v7)
      {
        goto LABEL_9;
      }
    }

    v10 = a2;
    v11 = __dst;
    std::string::__grow_by(__dst, v8, v7 - v8 + size, size, size, 0, 0);
    __dst = v11;
    a2 = v10;
    v11->__r_.__value_.__l.__size_ = size;
    LOBYTE(v6) = *(&v11->__r_.__value_.__s + 23);
    goto LABEL_9;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
}

uint64_t *absl::lts_20240722::utility_internal::IfConstexprElse<false,std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &&)#1},std::string * google::protobuf::Arena::Create<std::string,char const*,unsigned long>(google::protobuf::Arena*,char const*,unsigned long &&)::{lambda(false &)#2},char const*,unsigned long>(uint64_t a1, google::protobuf::internal::ThreadSafeArena **a2, const void **a3, size_t *a4)
{
  if (!*a2)
  {
    operator new();
  }

  v6 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(*a2);
  v7 = *a4;
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v6;
  v9 = *a3;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  v10 = v6;
  if (v7)
  {
    memmove(v6, v9, v7);
  }

  v10[v7] = 0;
  return v8;
}

uint64_t google::protobuf::internal::arena_delete_object<std::string>(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x23EED9460);
  }

  return result;
}

void google::protobuf::io::CodedInputStream::~CodedInputStream(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    if (*(this + 7) + *(this + 11) + *(this + 2) - *this >= 1)
    {
      (*(*v1 + 24))(*(this + 2));
      v3 = *(this + 6) - *(this + 11) + *this - *(this + 2);
      *(this + 1) = *this;
      *(this + 11) = 0;
      *(this + 3) = v3;
    }
  }
}

uint64_t google::protobuf::io::CodedInputStream::SkipFallback(google::protobuf::io::CodedInputStream *this, int a2, int a3)
{
  if (*(this + 11) < 1)
  {
    v4 = (a2 - a3);
    *this = 0;
    *(this + 1) = 0;
    v5 = *(this + 12);
    if (v5 >= *(this + 10))
    {
      v5 = *(this + 10);
    }

    v6 = v5 - *(this + 6);
    if (v6 >= v4)
    {
      if ((*(**(this + 2) + 32))(*(this + 2), v4))
      {
        *(this + 6) += v4;
        return 1;
      }

      else
      {
        *(this + 6) = (*(**(this + 2) + 40))(*(this + 2));
        return 0;
      }
    }

    else
    {
      if (v6 >= 1)
      {
        *(this + 6) = v5;
        (*(**(this + 2) + 32))(*(this + 2));
      }

      return 0;
    }
  }

  else
  {
    *this += a3;
    return 0;
  }
}

uint64_t google::protobuf::io::CodedInputStream::GetDirectBufferPointer(google::protobuf::io::CodedInputStream *this, const void **a2, int *a3)
{
  v3 = *this;
  if (*(this + 2) == *this)
  {
    v4 = a2;
    v5 = a3;
    v6 = this;
    result = google::protobuf::io::CodedInputStream::Refresh(this);
    if (!result)
    {
      return result;
    }

    this = v6;
    v3 = *v6;
    a3 = v5;
    a2 = v4;
  }

  *a2 = v3;
  *a3 = *(this + 2) - *this;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::Refresh(google::protobuf::io::CodedInputStream *this)
{
  v1 = *(this + 11);
  if (v1 > 0 || *(this + 7) > 0 || *(this + 6) == *(this + 10))
  {
    v2 = *(this + 6) - v1;
    v3 = *(this + 12);
    if (v2 >= v3)
    {
      if (v3 != *(this + 10))
      {
        absl::lts_20240722::log_internal::LogMessage::LogMessage(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/io/coded_stream.cc", 187);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "A protocol message was rejected because it was too big (more than ", 0x42uLL);
        LODWORD(v20) = *(this + 12);
        v13 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v21, &v20);
        absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/io/coded_stream.h.", 0x95uLL);
        absl::lts_20240722::log_internal::LogMessage::~LogMessage(v21);
      }

      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
    v6 = *(this + 2);
    do
    {
      result = (*(*v6 + 16))(v6, &v20, &v19);
      if (!result)
      {
        *this = 0;
        *(this + 1) = 0;
        return result;
      }

      v7 = v19;
    }

    while (!v19);
    v8 = v20 + v19;
    *this = v20;
    *(this + 1) = v8;
    if ((v7 & 0x80000000) != 0)
    {
      google::protobuf::io::CodedInputStream::Refresh(v7, v21);
    }

    v9 = *(this + 6);
    v10 = v9 - (v7 ^ 0x7FFFFFFF);
    if (v9 <= (v7 ^ 0x7FFFFFFF))
    {
      v11 = v7 + v9;
    }

    else
    {
      *(this + 7) = v10;
      v8 -= v10;
      *(this + 1) = v8;
      v11 = 0x7FFFFFFF;
    }

    *(this + 6) = v11;
    v14 = *(this + 10);
    v15 = v8 + *(this + 11);
    *(this + 1) = v15;
    v16 = *(this + 12);
    if (v16 >= v14)
    {
      v16 = v14;
    }

    v17 = __OFSUB__(v11, v16);
    v18 = v11 - v16;
    if ((v18 < 0) ^ v17 | (v18 == 0))
    {
      *(this + 11) = 0;
    }

    else
    {
      *(this + 1) = v15 - v18;
      *(this + 11) = v18;
    }
  }

  return result;
}

void sub_23CD43B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::io::CodedInputStream::ReadString(uint64_t a1, std::string *__dst, size_t __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  if (*(a1 + 8) - *a1 >= __n)
  {
    v5 = __n;
    v6 = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
    if ((v6 & 0x8000000000000000) != 0)
    {
      size = __dst->__r_.__value_.__l.__size_;
      v7 = __n - size;
      if (__n <= size)
      {
        v13 = __dst->__r_.__value_.__r.__words[0];
        __dst->__r_.__value_.__l.__size_ = __n;
        *(v13 + __n) = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      v12 = __dst->__r_.__value_.__r.__words[2];
      v8 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      v6 = HIBYTE(v12);
      if (v8 - size >= v7)
      {
LABEL_11:
        if ((v6 & 0x80) != 0)
        {
          v15 = __dst->__r_.__value_.__r.__words[0];
          __dst->__r_.__value_.__l.__size_ = size + v7;
          *(v15 + size + v7) = 0;
          if ((SHIBYTE(__dst->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        *(&__dst->__r_.__value_.__s + 23) = (size + v7) & 0x7F;
        __dst->__r_.__value_.__s.__data_[size + v7] = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_20:
          __dst = __dst->__r_.__value_.__r.__words[0];
        }

LABEL_21:
        v14 = a1;
        memcpy(__dst, *a1, v5);
        *v14 += v5;
        return 1;
      }
    }

    else
    {
      v7 = __n - v6;
      if (__n <= v6)
      {
        *(&__dst->__r_.__value_.__s + 23) = __n;
        __dst->__r_.__value_.__s.__data_[__n] = 0;
        if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      v8 = 22;
      size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
      if (22 - v6 >= v7)
      {
        goto LABEL_11;
      }
    }

    v10 = a1;
    v11 = __dst;
    std::string::__grow_by(__dst, v8, v7 - v8 + size, size, size, 0, 0);
    __dst = v11;
    a1 = v10;
    v11->__r_.__value_.__l.__size_ = size;
    LOBYTE(v6) = *(&v11->__r_.__value_.__s + 23);
    goto LABEL_11;
  }

  return google::protobuf::io::CodedInputStream::ReadStringFallback(a1, __dst, __n);
}

BOOL google::protobuf::io::CodedInputStream::ReadStringFallback(google::protobuf::io::CodedInputStream *this, std::string *a2, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    if (a2->__r_.__value_.__l.__size_)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&a2->__r_.__value_.__s + 23))
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  v6 = *(this + 12);
  if (v6 >= *(this + 10))
  {
    v6 = *(this + 10);
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - *(this + 6) + *(this + 11) + *(this + 2) - *this;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(a2, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *this;
    v12 = *(this + 1) - *this;
    if (v3 <= v12)
    {
      break;
    }

    if (v12)
    {
      std::string::append(a2, v11, v12);
      *this += v12;
      v3 -= v12;
    }

    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(a2, v11, v3);
  *this += v3;
  return v10 <= v12;
}

uint64_t google::protobuf::io::CodedInputStream::ReadCord(google::protobuf::io::CodedInputStream *this, absl::lts_20240722::Cord *a2, signed int a3)
{
  if (a3 < 0)
  {
    absl::lts_20240722::Cord::Clear(a2, a2);
    return 0;
  }

  v3 = a3;
  if (a3 >= 0x200 && *(this + 2))
  {
    v5 = a2;
    absl::lts_20240722::Cord::Clear(a2, a2);
    if (*(this + 7) + *(this + 11) + *(this + 2) - *this >= 1)
    {
      (*(**(this + 2) + 24))(*(this + 2));
      v6 = *(this + 6) - *(this + 11) + *this - *(this + 2);
      *(this + 1) = *this;
      *(this + 11) = 0;
      *(this + 3) = v6;
    }

    goto LABEL_6;
  }

  v11 = *(this + 2) - *this;
  if (v11 >= a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = *(this + 2) - *this;
  }

  v5 = a2;
  absl::lts_20240722::Cord::operator=(a2, *this, v12);
  *this += v12;
  if (v11 >= v3)
  {
    return 1;
  }

  if (!*(this + 2) || *(this + 7) + *(this + 11) >= 1)
  {
    return 0;
  }

  v3 -= v12;
LABEL_6:
  v7 = *(this + 12);
  if (v7 >= *(this + 10))
  {
    v7 = *(this + 10);
  }

  v8 = *(this + 6);
  if (v3 > v7 - v8)
  {
    *(this + 6) = v7;
    (*(**(this + 2) + 48))(*(this + 2), v5);
    return 0;
  }

  else
  {
    *(this + 6) = v8 + v3;
    v9 = *(**(this + 2) + 48);

    return v9();
  }
}

uint64_t google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(unsigned int **this, unsigned int *a2)
{
  v4 = *this;
  if ((*(this + 2) - *this) <= 3)
  {
    v6 = 4;
    v7 = __dst;
    while (1)
    {
      v8 = *this;
      v9 = this[1] - *this;
      v10 = v6 - v9;
      if (v6 <= v9)
      {
        break;
      }

      v11 = v9;
      memcpy(v7, *this, v9);
      v7 += v11;
      *this = (v8 + v11);
      v12 = google::protobuf::io::CodedInputStream::Refresh(this);
      v6 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = v6;
    memcpy(v7, *this, v6);
    v5 = (v8 + v14);
    v4 = __dst;
  }

  else
  {
    v5 = v4 + 1;
  }

  *this = v5;
  *a2 = *v4;
  return 1;
}

uint64_t google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(const void **this, unint64_t *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = *this;
  if ((*(this + 2) - *this) <= 7)
  {
    v6 = 8;
    v7 = v15;
    while (1)
    {
      v8 = *this;
      v9 = this[1] - *this;
      v10 = v6 - v9;
      if (v6 <= v9)
      {
        break;
      }

      v11 = v9;
      memcpy(v7, *this, v9);
      v7 = (v7 + v11);
      *this = &v8[v11];
      v12 = google::protobuf::io::CodedInputStream::Refresh(this);
      v6 = v10;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    v14 = v6;
    memcpy(v7, *this, v6);
    v5 = &v8[v14];
    v4 = v15;
  }

  else
  {
    v5 = v4 + 1;
  }

  *this = v5;
  *a2 = *v4;
  return 1;
}

unint64_t google::protobuf::io::CodedInputStream::ReadVarint64Fallback(char **this, uint8x8_t a2)
{
  v2 = this;
  v3 = *this;
  v4 = this[1];
  if (v4 - v3 <= 9 && (v4 <= v3 || *(v4 - 1) < 0))
  {
    v20 = 0;
    google::protobuf::io::CodedInputStream::ReadVarint64Slow(v2, &v20);
    return v20;
  }

  v20 = 0;
  v6 = v3[1];
  if ((v3[1] & 0x80000000) == 0)
  {
    v8 = *v3;
    v7 = v3 + 2;
    v9 = v8 + (v6 << 7) - 128;
LABEL_14:
    v20 = v9;
LABEL_15:
    *v2 = v7;
    return v20;
  }

  v11 = v3[2];
  if ((v3[2] & 0x80000000) == 0)
  {
    v12 = *v3;
    v7 = v3 + 3;
    v13 = (v6 << 7) + (v11 << 14);
    v14 = v12 - 16512;
LABEL_13:
    v9 = v13 + v14;
    goto LABEL_14;
  }

  v15 = v3[3];
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = *v3;
    v7 = v3 + 4;
    v13 = (v6 << 7) + (v11 << 14) + (v15 << 21);
    v14 = v16 - 2113664;
    goto LABEL_13;
  }

  v17 = v3[4];
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = *v3;
    v7 = v3 + 5;
    v13 = (v6 << 7) + (v11 << 14) + (v15 << 21) + (v17 << 28);
    v14 = v18 - 270549120;
    goto LABEL_13;
  }

  if ((v3[5] & 0x80000000) == 0)
  {
    v19 = v2;
LABEL_26:
    v2 = v19;
    goto LABEL_15;
  }

  if ((v3[6] & 0x80000000) == 0)
  {
    v19 = v2;
    goto LABEL_26;
  }

  if ((v3[7] & 0x80000000) == 0)
  {
    v19 = v2;
    goto LABEL_26;
  }

  if ((v3[8] & 0x80000000) == 0)
  {
    v19 = v2;
    goto LABEL_26;
  }

  v19 = v2;
  if ((v3[9] & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint32Fallback(google::protobuf::io::CodedInputStream *this, int a2, uint8x8_t a3)
{
  v4 = *this;
  v3 = *(this + 1);
  if ((v3 - *this) <= 9 && (v3 <= v4 || *(v3 - 1) < 0))
  {
    LODWORD(result) = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a3);
    if (v7)
    {
      return result;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v5 = a2 + (*(v4 + 1) << 7) - 128;
    if (*(v4 + 1) < 0)
    {
      v8 = v5 + (*(v4 + 2) << 14) - 0x4000;
      if (*(v4 + 2) < 0)
      {
        v9 = v8 + (*(v4 + 3) << 21) - 0x200000;
        if (*(v4 + 3) < 0)
        {
          v10 = *(v4 + 4);
          v11 = v9 + (v10 << 28) - 0x10000000;
          if (v10 < 0)
          {
            if (*(v4 + 5) < 0)
            {
              if (*(v4 + 6) < 0)
              {
                if (*(v4 + 7) < 0)
                {
                  if (*(v4 + 8) < 0)
                  {
                    if (*(v4 + 9) < 0)
                    {
                      return -1;
                    }

                    else
                    {
                      *this = v4 + 10;
                      return v11;
                    }
                  }

                  else
                  {
                    *this = v4 + 9;
                    return v11;
                  }
                }

                else
                {
                  *this = v4 + 8;
                  return v11;
                }
              }

              else
              {
                *this = v4 + 7;
                return v11;
              }
            }

            else
            {
              *this = v4 + 6;
              return v11;
            }
          }

          else
          {
            *this = v4 + 5;
            return v11;
          }
        }

        else
        {
          *this = v4 + 4;
          return v9;
        }
      }

      else
      {
        *this = v4 + 3;
        return v8;
      }
    }

    else
    {
      *this = v4 + 2;
      return v5;
    }
  }
}

unint64_t google::protobuf::io::CodedInputStream::ReadTagFallback(google::protobuf::io::CodedInputStream *this, int a2, uint8x8_t a3)
{
  v4 = *this;
  v3 = *(this + 1);
  v5 = v3 - *this;
  if (v5 > 9)
  {
LABEL_4:
    if (!a2)
    {
      *this = v4 + 1;
      return 0;
    }

    v6 = a2 + (v4[1] << 7) - 128;
    if ((v4[1] & 0x80000000) == 0)
    {
      *this = v4 + 2;
      return v6;
    }

    v10 = v6 + (v4[2] << 14) - 0x4000;
    if ((v4[2] & 0x80000000) == 0)
    {
      *this = v4 + 3;
      return v10;
    }

    v14 = v10 + (v4[3] << 21) - 0x200000;
    if ((v4[3] & 0x80000000) == 0)
    {
      *this = v4 + 4;
      return v14;
    }

    v16 = v4[4];
    v17 = (v14 + (v16 << 28) - 0x10000000);
    if ((v16 & 0x80000000) == 0)
    {
      *this = v4 + 5;
      return v17;
    }

    if ((v4[5] & 0x80000000) == 0)
    {
      *this = v4 + 6;
      return v17;
    }

    if ((v4[6] & 0x80000000) == 0)
    {
      *this = v4 + 7;
      return v17;
    }

    if ((v4[7] & 0x80000000) == 0)
    {
      *this = v4 + 8;
      return v17;
    }

    if ((v4[8] & 0x80000000) == 0)
    {
      *this = v4 + 9;
      return v17;
    }

    if ((v4[9] & 0x80000000) == 0)
    {
      *this = v4 + 10;
      return v17;
    }

    return 0;
  }

  if (v5 < 1)
  {
    if (!v5)
    {
      v12 = *(this + 11);
      v13 = *(this + 6);
      if ((v12 > 0 || v13 == *(this + 10)) && v13 - v12 < *(this + 12))
      {
        *(this + 36) = 1;
        return 0;
      }
    }
  }

  else if ((*(v3 - 1) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  if (v4 == v3)
  {
    v8 = this;
    if (!google::protobuf::io::CodedInputStream::Refresh(this))
    {
      v15 = *(v8 + 12);
      *(v8 + 36) = *(v8 + 6) - *(v8 + 11) < v15 || *(v8 + 10) == v15;
      return 0;
    }

    this = v8;
    v4 = *v8;
    v3 = *(v8 + 1);
  }

  if (v4 < v3)
  {
    v9 = *v4;
    if ((v9 & 0x80000000) == 0)
    {
      *this = v4 + 1;
      return v9;
    }
  }

  result = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, a3);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  return result;
}

uint64_t google::protobuf::io::CodedInputStream::ReadVarint64Slow(char **this, unint64_t *a2)
{
  while (1)
  {
    v4 = *this;
    if (*this != this[1])
    {
      break;
    }

    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v6 = *v4;
  v7 = *v4 & 0x7F;
  *this = v4 + 1;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v8 = *this;
    if (*this != this[1])
    {
      break;
    }

    if ((google::protobuf::io::CodedInputStream::Refresh(this) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = *v8;
  v10 = v7 | ((v9 & 0x7F) << 7);
  *this = v8 + 1;
  v7 = v10;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v12 = *this;
    if (*this != this[1])
    {
      break;
    }

    v11 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v13 = *v12;
  v14 = v10 | ((v13 & 0x7F) << 14);
  *this = v12 + 1;
  v7 = v14;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v16 = *this;
    if (*this != this[1])
    {
      break;
    }

    v15 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v17 = *v16;
  v18 = v14 | ((v17 & 0x7F) << 21);
  *this = v16 + 1;
  v7 = v18;
  if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v20 = *this;
    if (*this != this[1])
    {
      break;
    }

    v19 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v21 = *v20;
  v22 = v18 | ((v21 & 0x7F) << 28);
  *this = v20 + 1;
  v7 = v22;
  if ((v21 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v24 = *this;
    if (*this != this[1])
    {
      break;
    }

    v23 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v23 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v25 = *v24;
  v26 = v22 | ((v25 & 0x7F) << 35);
  *this = v24 + 1;
  v7 = v26;
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v28 = *this;
    if (*this != this[1])
    {
      break;
    }

    v27 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v27 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v29 = *v28;
  v30 = v26 | ((v29 & 0x7F) << 42);
  *this = v28 + 1;
  v7 = v30;
  if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v32 = *this;
    if (*this != this[1])
    {
      break;
    }

    v31 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v31 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v33 = *v32;
  v34 = v30 | ((v33 & 0x7F) << 49);
  *this = v32 + 1;
  v7 = v34;
  if ((v33 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v36 = *this;
    if (*this != this[1])
    {
      break;
    }

    v35 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v35 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v37 = *v36;
  v38 = v34 | ((v37 & 0x7F) << 56);
  *this = v36 + 1;
  v7 = v38;
  if ((v37 & 0x80000000) == 0)
  {
LABEL_6:
    result = 1;
    *a2 = v7;
    return result;
  }

  while (1)
  {
    v40 = *this;
    if (*this != this[1])
    {
      break;
    }

    v39 = google::protobuf::io::CodedInputStream::Refresh(this);
    result = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v42 = *v40;
  v41 = *v40;
  *this = v40 + 1;
  if ((v42 & 0x80) == 0)
  {
    result = 1;
    *a2 = v38 | (v41 << 63);
    return result;
  }

LABEL_3:
  result = 0;
LABEL_4:
  *a2 = 0;
  return result;
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::Trim(google::protobuf::io::EpsCopyOutputStream *this, unsigned __int8 *a2)
{
  if (*(this + 56))
  {
    return a2;
  }

  v2 = this + 16;
  v4 = this + 32;
  while (2)
  {
    v6 = *this;
    v5 = *(this + 1);
    if (v5)
    {
      v7 = a2 - v6;
      if (a2 <= v6)
      {
        v12 = (a2 - v2);
        v13 = a2;
        memcpy(v5, v2, a2 - v2);
        v14 = *this;
        *(this + 1) += v12;
        v11 = v14 - v13;
      }

      else if (*(this + 6))
      {
        memcpy(v5, v2, v6 - v2);
        v17 = 0;
        do
        {
          v16 = 0;
          if (((*(**(this + 6) + 16))(*(this + 6), &v16, &v17) & 1) == 0)
          {
            *(this + 56) = 1;
            *this = v4;
            goto LABEL_15;
          }

          v8 = v17;
        }

        while (!v17);
        v9 = v16;
        v10 = *this;
        if (v17 < 17)
        {
          *v2 = *v10;
          *this = &v2[v8];
          *(this + 1) = v9;
          a2 = &v2[v7];
          if ((*(this + 56) & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          *v16 = *v10;
          *this = v9 + v8 - 16;
          *(this + 1) = 0;
          a2 = v9 + v7;
          if ((*(this + 56) & 1) == 0)
          {
            continue;
          }
        }

LABEL_15:
        v11 = 0;
      }

      else
      {
        v11 = 0;
        *(this + 56) = 1;
        *this = v4;
      }
    }

    else
    {
      v11 = v6 - a2 + 16;
      *(this + 1) = a2;
    }

    break;
  }

  (*(**(this + 6) + 24))(*(this + 6), v11);
  *this = v2;
  *(this + 1) = v2;
  return v2;
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(google::protobuf::io::EpsCopyOutputStream *this, char *__src, int a3, unsigned __int8 *__dst)
{
  v4 = __dst;
  v5 = a3;
  v7 = *this - __dst + 16;
  if (v7 >= a3)
  {
    goto LABEL_20;
  }

  v9 = (this + 16);
  v10 = this + 32;
LABEL_3:
  while (2)
  {
    memcpy(v4, __src, v7);
    v5 -= v7;
    __src += v7;
    LODWORD(v4) = v4 + v7;
    v11 = *this;
LABEL_6:
    while (1)
    {
      v12 = v11;
      if (*(this + 56))
      {
        break;
      }

      if (!*(this + 6))
      {
        goto LABEL_15;
      }

      v13 = *(this + 1);
      if (v13)
      {
        memcpy(v13, v9, v11 - v9);
        v19 = 0;
        while (1)
        {
          v18 = 0;
          if (((*(**(this + 6) + 16))(*(this + 6), &v18, &v19) & 1) == 0)
          {
            break;
          }

          v14 = v19;
          if (v19)
          {
            v15 = v18;
            v16 = *this;
            if (v19 < 17)
            {
              *v9 = *v16;
              v11 = v9 + v14;
              *this = v11;
              *(this + 1) = v15;
              v4 = v9 + v4 - v12;
              if (v4 >= v11)
              {
                goto LABEL_6;
              }
            }

            else
            {
              *v18 = *v16;
              v11 = v15 + v14 - 16;
              *this = v11;
              *(this + 1) = 0;
              v4 = v15 + v4 - v12;
              if (v4 >= v11)
              {
                goto LABEL_6;
              }
            }

            goto LABEL_17;
          }
        }

LABEL_15:
        *(this + 56) = 1;
        goto LABEL_5;
      }

      *v9 = *v11;
      *(this + 1) = v11;
LABEL_5:
      *this = v10;
      v11 = v10;
      v4 = v9 + v4 - v12;
      if (v4 < v10)
      {
LABEL_17:
        v7 = v11 - v4 + 16;
        if (v5 > v7)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    v4 = v9;
    v7 = v11 - v9 + 16;
    if (v5 > v7)
    {
      continue;
    }

    break;
  }

LABEL_20:
  memcpy(v4, __src, v5);
  return &v4[v5];
}

const absl::lts_20240722::Cord *google::protobuf::io::EpsCopyOutputStream::WriteCord(google::protobuf::io::EpsCopyOutputStream *this, const absl::lts_20240722::Cord *a2, absl::lts_20240722::Cord *__dst)
{
  v5 = *this - __dst + 16;
  v6 = *a2;
  if (!*(this + 6))
  {
    if (v6)
    {
      if (**(a2 + 1) <= v5)
      {
        goto LABEL_14;
      }
    }

    else if ((v6 >> 1) <= v5)
    {
      goto LABEL_14;
    }

LABEL_13:
    *(this + 56) = 1;
    result = (this + 16);
    *this = this + 32;
    return result;
  }

  if (v6)
  {
    v7 = **(a2 + 1);
    if (v7 > v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = v6 >> 1;
    if (v7 > v5)
    {
LABEL_10:
      v8 = google::protobuf::io::EpsCopyOutputStream::Trim(this, __dst);
      if ((*(**(this + 6) + 56))(*(this + 6), a2))
      {
        return v8;
      }

      goto LABEL_13;
    }
  }

  if (v7 > 511)
  {
    goto LABEL_10;
  }

LABEL_14:
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*a1 <= a4)
  {
    v19 = a1;
    v20 = a2;
    v21 = a3;
    v22 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a4);
    a2 = v20;
    a3 = v21;
    a4 = v22;
    a1 = v19;
  }

  if (*(a3 + 23) >= 0)
  {
    v4 = *(a3 + 23);
  }

  else
  {
    v4 = *(a3 + 8);
  }

  v5 = (8 * a2) | 2;
  if ((8 * a2) >= 0x80)
  {
    do
    {
      *a4++ = v5 | 0x80;
      v6 = v5 >> 7;
      v17 = v5 >> 14;
      v5 >>= 7;
    }

    while (v17);
  }

  else
  {
    LOBYTE(v6) = (8 * a2) | 2;
  }

  *a4 = v6;
  v7 = a4 + 1;
  v8 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      *v7++ = v8 | 0x80;
      v18 = v8 >> 14;
      v8 >>= 7;
    }

    while (v18);
    a4 = v7 - 1;
  }

  v9 = a4 + 2;
  *v7 = v8;
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (*(a1 + 57) == 1)
  {
    v11 = v4;
    v12 = *a1 - v9;
    if (v12 + 16 <= v4)
    {
      v13 = a1;
      v14 = v10;
      v15 = google::protobuf::io::EpsCopyOutputStream::Trim(a1, a4 + 2);
      if ((*(**(v13 + 6) + 40))(*(v13 + 6), v14, v4))
      {
        return v15;
      }

      *(v13 + 56) = 1;
      result = v13 + 16;
      *v13 = v13 + 32;
      return result;
    }
  }

  else
  {
    v12 = *a1 - v9;
    v11 = v4;
  }

  if (v12 < v11)
  {
    v23 = a4 + 2;

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, v10, v4, v23);
  }

  else
  {
    memcpy(a4 + 2, v10, v4);
    return &v9[v11];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(google::protobuf::io::EpsCopyOutputStream *a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  if (*a1 <= a4)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a1, a4);
    a2 = v16;
    a3 = v17;
    a4 = v18;
    a1 = v15;
  }

  LODWORD(v4) = *(a3 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 8);
  }

  v5 = (8 * a2) | 2;
  if ((8 * a2) >= 0x80)
  {
    do
    {
      *a4++ = v5 | 0x80;
      v6 = v5 >> 7;
      v13 = v5 >> 14;
      v5 >>= 7;
    }

    while (v13);
  }

  else
  {
    LOBYTE(v6) = (8 * a2) | 2;
  }

  *a4 = v6;
  v7 = a4 + 1;
  v8 = v4;
  if (v4 >= 0x80)
  {
    do
    {
      *v7++ = v8 | 0x80;
      v14 = v8 >> 14;
      v8 >>= 7;
    }

    while (v14);
    a4 = v7 - 1;
  }

  v9 = a4 + 2;
  *v7 = v8;
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  v11 = v4;
  if (*a1 - v9 < v4)
  {
    v19 = a4 + 2;

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a1, v10, v4, v19);
  }

  else
  {
    memcpy(a4 + 2, v10, v4);
    return &v9[v11];
  }
}

const absl::lts_20240722::Cord *google::protobuf::io::EpsCopyOutputStream::WriteCordOutline(google::protobuf::io::EpsCopyOutputStream *this, const absl::lts_20240722::Cord *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (v3)
  {
    v4 = **(a2 + 1);
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 >= 0x80)
  {
    do
    {
      *a3++ = v4 | 0x80;
      v6 = v4 >> 7;
      v7 = v4 >> 14;
      LODWORD(v4) = v4 >> 7;
    }

    while (v7);
    *a3 = v6;
    v5 = (a3 + 1);
  }

  else
  {
    *a3 = v4;
    v5 = (a3 + 1);
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteCord(this, a2, v5);
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<6ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 1);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EEF0), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EEE0))) + (a1[5] << 35) + *a1 - 0x810204080;
  return a1 + 6;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<7ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 2);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EF10), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF00))) + (a1[1] << 7) + (*a1 | (a1[6] << 42)) - 0x40810204080;
  return a1 + 7;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<8ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 3);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EEE0), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF20))) + (a1[2] << 14) + ((a1[7] << 49) | (a1[1] << 7)) + *a1 - 0x2040810204080;
  return a1 + 8;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<9ul>(unsigned __int8 *a1, void *a2)
{
  v2 = vmovl_u8(*(a1 + 1));
  v3 = vmovl_u16(*v2.i8);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  v5 = v4;
  v6 = vmovl_high_u16(v2);
  v4.i64[0] = v6.u32[2];
  v4.i64[1] = v6.u32[3];
  v7 = v4;
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v8 = v4;
  v4.i64[0] = v6.u32[0];
  v4.i64[1] = v6.u32[1];
  *a2 = vaddvq_s64(vaddq_s64(vorrq_s8(vshlq_u64(v8, xmmword_23CE4EEF0), vshlq_u64(v4, xmmword_23CE4EF20)), vorrq_s8(vshlq_u64(v5, xmmword_23CE4EEE0), vshlq_u64(v7, xmmword_23CE4EF30)))) + *a1 - 0x102040810204080;
  return a1 + 9;
}

unsigned __int8 *google::protobuf::io::anonymous namespace::DecodeVarint64KnownSize<10ul>(unsigned __int8 *a1, void *a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 1);
  v3 = vmovl_u16(*&vmovl_u8(a3));
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5.i64[0] = 255;
  v5.i64[1] = 255;
  v6 = vandq_s8(v4, v5);
  v4.i64[0] = v3.u32[2];
  v4.i64[1] = v3.u32[3];
  *a2 = vaddvq_s64(vaddq_s64(vshlq_u64(v6, xmmword_23CE4EF00), vshlq_u64(vandq_s8(v4, v5), xmmword_23CE4EF40))) + (a1[3] << 21) + (a1[2] << 14) + (a1[1] << 7) + (((a1[9] << 63) + (a1[8] << 56)) | *a1) + 0x7EFDFBF7EFDFBF80;
  return a1 + 10;
}

uint64_t absl::lts_20240722::log_internal::LogMessage::operator<<<char const*,0>(uint64_t a1, const char **a2)
{
  absl::lts_20240722::log_internal::LogMessage::OstreamView::OstreamView(v8, *(a1 + 8));
  v4 = absl::lts_20240722::log_internal::LogMessage::OstreamView::stream(v8);
  if (*a2)
  {
    v5 = *a2;
  }

  else
  {
    v5 = "(null)";
  }

  v6 = strlen(v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(v8);
  return a1;
}

void sub_23CD45630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

void sub_23CD45644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::log_internal::LogMessage::OstreamView::~OstreamView(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::GeneratedExtensionFinder::Find(void *a1, unsigned int a2, _OWORD *a3)
{
  if (qword_2810C19D0)
  {
    v3 = 0;
    _X11 = *(qword_2810C19D0 + 16);
    __asm { PRFM            #4, [X11] }

    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1))) + *a1;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a2;
    v11 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
    v12 = *qword_2810C19D0;
    v13 = vdup_n_s8(v11 & 0x7F);
    v14 = ((v11 >> 7) ^ (_X11 >> 12)) & *qword_2810C19D0;
    v15 = *(_X11 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_3:
      v17 = *(qword_2810C19D0 + 24) + 48 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v12);
      if (*v17 == *a1 && *(v17 + 8) == a2)
      {
        v20 = *v17;
        v21 = *(v17 + 32);
        a3[1] = *(v17 + 16);
        a3[2] = v21;
        *a3 = v20;
        return 1;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_8:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v3 += 8;
      v14 = (v3 + v14) & v12;
      v15 = *(_X11 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

__n128 google::protobuf::internal::anonymous namespace::Register(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_2810C19E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C19E0))
  {
    operator new();
  }

  v2 = 0;
  v3 = qword_2810C19D8;
  qword_2810C19D0 = qword_2810C19D8;
  v4 = *(a1 + 8);
  _X10 = *(qword_2810C19D8 + 16);
  __asm { PRFM            #4, [X10] }

  v10 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a1))) + *a1;
  v11 = (((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10)) + v4;
  v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
  v13 = *qword_2810C19D8;
  v14 = vdup_n_s8(v12 & 0x7F);
  v15 = ((v12 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D8;
  v16 = *(_X10 + v15);
  for (i = vceq_s8(v16, v14); i; i &= ((i & 0x8080808080808080) - 1) & 0x8080808080808080)
  {
LABEL_3:
    v18 = *(qword_2810C19D8 + 24) + 48 * ((v15 + (__clz(__rbit64(i)) >> 3)) & v13);
    v19 = *v18;
    v20 = *(v18 + 8);
    if (v19 == *a1 && v20 == v4)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v29, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 78);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v29, "Multiple extension registrations for type ", 0x2BuLL);
      google::protobuf::MessageLite::GetTypeName(&v28, *a1);
      v23 = absl::lts_20240722::log_internal::LogMessage::operator<<(v29, &v28);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v23, ", field number ", 0x10uLL);
      v30 = *(a1 + 8);
      v24 = absl::lts_20240722::log_internal::LogMessage::operator<<<int,0>(v23, &v30);
      absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v24, ".");
      std::string::~string(&v28);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v29);
    }
  }

  while (1)
  {
    v22 = vceq_s8(v16, 0x8080808080808080);
    if (v22)
    {
      break;
    }

    v2 += 8;
    v15 = (v2 + v15) & v13;
    v16 = *(_X10 + v15);
    i = vceq_s8(v16, v14);
    if (i)
    {
      goto LABEL_3;
    }
  }

  result = *a1;
  v27 = *(a1 + 32);
  *(v25 + 16) = *(a1 + 16);
  *(v25 + 32) = v27;
  *v25 = result;
  return result;
}

void sub_23CD45A04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&a15);
}

double google::protobuf::internal::ExtensionSet::RegisterMessageExtension(uint64_t a1, int a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a3 & 0xFE) != 0xA)
  {
    google::protobuf::internal::ExtensionSet::RegisterMessageExtension(&v9);
  }

  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a8;
  v17 = 0;
  v18 = a7;
  v15 = a6;
  v16 = 0;
  return result;
}

void google::protobuf::internal::ExtensionSet::~ExtensionSet(google::protobuf::internal::ExtensionSet *this)
{
  if (!*this)
  {
    v2 = *(this + 5);
    v3 = *(this + 2);
    if (v2 < 0)
    {
      google::protobuf::internal::ExtensionSet::ForEach<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>,google::protobuf::internal::ExtensionSet::~()::$_0>(**v3, 0, *(v3 + 8), *(*(v3 + 8) + 10));
    }

    else if (*(this + 5))
    {
      v4 = 32 * v2;
      v5 = (v3 + 8);
      do
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(v5);
        v5 = (v5 + 32);
        v4 -= 32;
      }

      while (v4);
    }

    v6 = *(this + 2);
    if (*(this + 5) < 0)
    {
      if (v6)
      {
        v7 = *(this + 2);
        absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::clear(v6);
        MEMORY[0x23EED9460](v7, 0x1020C4062D53EE8);
      }
    }

    else
    {
      operator delete[](v6);
    }
  }
}

uint64_t google::protobuf::internal::ExtensionSet::Has(int **this, int a2)
{
  v2 = *(this + 5);
  if (*(this + 5))
  {
    if ((v2 & 0x8000) != 0)
    {
      v10 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!v10)
      {
LABEL_10:
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }

    else
    {
      v3 = this[2];
      v4 = 32 * v2 - 32;
      if (v4)
      {
        v5 = v4 >> 5;
        do
        {
          v6 = v5 >> 1;
          v7 = &v3[8 * (v5 >> 1)];
          v9 = *v7;
          v8 = v7 + 8;
          v5 += ~(v5 >> 1);
          if (v9 < a2)
          {
            v3 = v8;
          }

          else
          {
            v5 = v6;
          }
        }

        while (v5);
      }

      v11 = *v3;
      v10 = (v3 + 2);
      if (v11 != a2)
      {
        goto LABEL_10;
      }
    }

    LOBYTE(v2) = *(v10 + 10) ^ 1;
  }

  return v2 & 1;
}

_DWORD *google::protobuf::internal::ExtensionSet::FindOrNull(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  v10 = v3 + 2;
  if (v11 == a2)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::internal::ExtensionSet::ExtensionSize(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    v10 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (v10)
    {
      goto LABEL_12;
    }

    return 0;
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  v10 = (v3 + 2);
  if (v11 != a2)
  {
    return 0;
  }

LABEL_12:

  return google::protobuf::internal::ExtensionSet::Extension::GetSize(v10);
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::GetSize(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (v1 <= 5)
  {
    if (v1 > 2 || v1 == 1 || v1 == 2)
    {
      return **this;
    }

LABEL_11:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v3, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1500);
    absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v3, "Can't get here.");
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v3);
  }

  if (v1 > 8)
  {
    if (v1 == 9 || v1 == 10)
    {
      return *(*this + 8);
    }

    goto LABEL_11;
  }

  return **this;
}

int *google::protobuf::internal::ExtensionSet::ClearExtension(int *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    return this;
  }

  if ((v2 & 0x8000) != 0)
  {
    this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!this)
    {
      return this;
    }

    goto LABEL_12;
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v10 = *v3;
  this = v3 + 2;
  if (v10 == a2)
  {
LABEL_12:

    return google::protobuf::internal::ExtensionSet::Extension::Clear(this);
  }

  return this;
}

int *google::protobuf::internal::ExtensionSet::Extension::Clear(int *this)
{
  if (*(this + 9) == 1)
  {
    v2 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_19:
        **this = 0;
        return this;
      }

      if (v2 == 9)
      {
        this = *this;
        if (this[2] >= 1)
        {

          return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<std::string>>(this);
        }
      }

      else if (v2 == 10)
      {
        this = *this;
        if (this[2] >= 1)
        {

          return google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(this);
        }
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_19;
    }
  }

  else if ((*(this + 10) & 1) == 0)
  {
    v3 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
    if (v3 == 10)
    {
      v5 = this;
      v6 = **this;
      if ((*(this + 10) & 0x10) != 0)
      {
        (*(v6 + 128))();
      }

      else
      {
        (*(v6 + 24))();
      }

      this = v5;
    }

    else if (v3 == 9)
    {
      v4 = *this;
      if (*(*this + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 1) = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }

    *(this + 10) = *(this + 10) & 0xF0 | 1;
  }

  return this;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetInt32(google::protobuf::internal::ExtensionSet *this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v4 & 0x8000) != 0)
  {
    v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!v12)
    {
      return a3;
    }

    goto LABEL_10;
  }

  v5 = *(this + 2);
  v6 = 32 * v4 - 32;
  if (v6)
  {
    v7 = v6 >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v5 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  v13 = *v5;
  v12 = v5 + 2;
  if (v13 == a2)
  {
LABEL_10:
    if ((*(v12 + 10) & 1) == 0)
    {
      return *v12;
    }
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, int a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MaybeNewExtension(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::FieldDescriptor *a3, google::protobuf::internal::ExtensionSet::Extension **a4)
{
  v6 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *a4 = v6;
  *(v6 + 2) = a3;
  return v7 & 1;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 342);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

void *google::protobuf::internal::ExtensionSet::AddInt32(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, int a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    result[1] = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v16 = HIDWORD(*result);
  v17 = *result;
  if (v17 == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = result[1];
  *result = v17 + 1;
  *(v18 + 4 * v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetInt64(google::protobuf::internal::ExtensionSet *this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v4 & 0x8000) != 0)
  {
    v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!v12)
    {
      return a3;
    }

    goto LABEL_10;
  }

  v5 = *(this + 2);
  v6 = 32 * v4 - 32;
  if (v6)
  {
    v7 = v6 >> 5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v5[8 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 8;
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        v5 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  v13 = *v5;
  v12 = v5 + 2;
  if (v13 == a2)
  {
LABEL_10:
    if ((v12[10] & 1) == 0)
    {
      return *v12;
    }
  }

  return a3;
}

char *google::protobuf::internal::ExtensionSet::SetInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, uint64_t a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 343);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddInt64(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, uint64_t a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 8 * v17) = a5;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt32(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 344);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedUInt64(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 345);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetFloat(google::protobuf::internal::ExtensionSet *this, int a2, float a3)
{
  v3 = *(this + 5);
  if (*(this + 5))
  {
    if ((v3 & 0x8000) != 0)
    {
      return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    }

    else
    {
      v4 = *(this + 2);
      v5 = 32 * v3 - 32;
      if (v5)
      {
        v6 = v5 >> 5;
        do
        {
          v7 = v6 >> 1;
          v8 = &v4[8 * (v6 >> 1)];
          v10 = *v8;
          v9 = v8 + 8;
          v6 += ~(v6 >> 1);
          if (v10 < a2)
          {
            v4 = v9;
          }

          else
          {
            v6 = v7;
          }
        }

        while (v6);
      }

      return (v4 + 2);
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::SetFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, float a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

float google::protobuf::internal::ExtensionSet::GetRepeatedFloat(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 346);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddFloat(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, float a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<int>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 4 * v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetDouble(google::protobuf::internal::ExtensionSet *this, int a2, double a3)
{
  v3 = *(this + 5);
  if (*(this + 5))
  {
    if ((v3 & 0x8000) != 0)
    {
      return google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    }

    else
    {
      v4 = *(this + 2);
      v5 = 32 * v3 - 32;
      if (v5)
      {
        v6 = v5 >> 5;
        do
        {
          v7 = v6 >> 1;
          v8 = &v4[8 * (v6 >> 1)];
          v10 = *v8;
          v9 = v8 + 8;
          v6 += ~(v6 >> 1);
          if (v10 < a2)
          {
            v4 = v9;
          }

          else
          {
            v6 = v7;
          }
        }

        while (v6);
      }

      return (v4 + 2);
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::SetDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, double a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

double google::protobuf::internal::ExtensionSet::GetRepeatedDouble(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 8 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 347);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 8 * a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddDouble(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, double a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<long long>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + 8 * v17) = a5;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    return a3 & 1;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (!v11)
    {
      return a3 & 1;
    }

    goto LABEL_10;
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 == a2)
  {
LABEL_10:
    if ((v11[10] & 1) == 0)
    {
      a3 = *v11;
    }
  }

  return a3 & 1;
}

char *google::protobuf::internal::ExtensionSet::SetBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  result = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(result + 2) = a5;
  if (v9)
  {
    result[8] = a3;
    result[9] = 0;
  }

  result[10] &= 0xF0u;
  *result = a4;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedBool(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 348);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + a3);
}

_DWORD *google::protobuf::internal::ExtensionSet::AddBool(google::protobuf::internal::ExtensionSet *this, int a2, char a3, char a4, char a5, const google::protobuf::FieldDescriptor *a6)
{
  v11 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v12 = v11;
  *(v11 + 2) = a6;
  if (v13)
  {
    v11[8] = a3;
    v11[9] = 1;
    v11[11] = a4;
    v14 = *this;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::Arena::Allocate(*this);
    *result = 0;
    *(result + 1) = v14;
    *v12 = result;
  }

  else
  {
    result = *v11;
  }

  v17 = *result;
  v16 = result[1];
  if (*result == v16)
  {
    v19 = result;
    google::protobuf::RepeatedField<BOOL>::Grow(result, v16, (v16 + 1));
    result = v19;
    v17 = *v19;
  }

  v18 = *(result + 1);
  *result = v17 + 1;
  *(v18 + v17) = a5;
  return result;
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::GetRawRepeatedField(int **this, int a2, google::protobuf::internal::ExtensionSet *a3)
{
  v4 = *(this + 5);
  if (*(this + 5))
  {
    if ((v4 & 0x8000) != 0)
    {
      v12 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
      if (!v12)
      {
        return a3;
      }

      return *v12;
    }

    v5 = this[2];
    v6 = 32 * v4 - 32;
    if (v6)
    {
      v7 = v6 >> 5;
      do
      {
        v8 = v7 >> 1;
        v9 = &v5[8 * (v7 >> 1)];
        v11 = *v9;
        v10 = v9 + 8;
        v7 += ~(v7 >> 1);
        if (v11 < a2)
        {
          v5 = v10;
        }

        else
        {
          v7 = v8;
        }
      }

      while (v7);
    }

    v13 = *v5;
    v12 = (v5 + 2);
    if (v13 == a2)
    {
      return *v12;
    }
  }

  return a3;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(google::protobuf::internal::ExtensionSet *this, int a2, int a3, char a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[9] = 1;
    v9[8] = a3;
    v9[11] = a4;
    v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a3];
    if (v12 > 5)
    {
      if (v12 <= 8)
      {
LABEL_12:
        v15 = *this;
        if (!v15)
        {
          operator new();
        }

        v14 = google::protobuf::Arena::Allocate(v15);
        *v14 = 0;
        v14[1] = v15;
LABEL_14:
        *v10 = v14;
        return *v10;
      }

      if (v12 == 9 || v12 == 10)
      {
        v13 = *this;
        if (!v13)
        {
          operator new();
        }

        v14 = google::protobuf::Arena::Allocate(v13);
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v13;
        goto LABEL_14;
      }
    }

    else if (v12 > 2 || v12 == 1 || v12 == 2)
    {
      goto LABEL_12;
    }
  }

  return *v10;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedEnum(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  if ((v3 & 0x8000) != 0)
  {
    v14 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v14;
    if (v11)
    {
      return *(*(*v11 + 8) + 4 * a3);
    }

LABEL_12:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v15, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 477);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v15);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_12;
  }

  return *(*(*v11 + 8) + 4 * a3);
}

void *google::protobuf::internal::ExtensionSet::MutableString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 0;
    if (!*this)
    {
      operator new();
    }

    result = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(*this);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *v8 = result;
  }

  else
  {
    result = *v7;
  }

  v8[10] &= 0xF0u;
  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedString(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_14;
  }

  if ((v3 & 0x8000) != 0)
  {
    v16 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v16;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_14:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 546);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = *v11;
  v14 = **v11;
  if (v14)
  {
    v13 = (v14 + 8 * a3 + 7);
  }

  return *v13;
}

void *google::protobuf::internal::ExtensionSet::AddString(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4)
{
  v7 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v8 = v7;
  *(v7 + 2) = a4;
  if (v9)
  {
    v7[8] = a3;
    v7[9] = 1;
    v7[11] = 0;
    v10 = *this;
    if (!v10)
    {
      operator new();
    }

    v11 = google::protobuf::Arena::Allocate(v10);
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = v10;
    *v8 = v11;
  }

  else
  {
    v11 = *v7;
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::AddString(v11);
}

const google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::GetMessage(google::protobuf::internal::ExtensionSet *this, int a2, const google::protobuf::MessageLite *a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    return a3;
  }

  if ((v3 & 0x8000) != 0)
  {
    v15 = a3;
    v16 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v15;
    v11 = v16;
    if (!v16)
    {
      return a3;
    }
  }

  else
  {
    v4 = *(this + 2);
    v5 = 32 * v3 - 32;
    if (v5)
    {
      v6 = v5 >> 5;
      do
      {
        v7 = v6 >> 1;
        v8 = &v4[8 * (v6 >> 1)];
        v10 = *v8;
        v9 = v8 + 8;
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v4 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    v12 = *v4;
    v11 = v4 + 2;
    if (v12 != a2)
    {
      return a3;
    }
  }

  if ((v11[10] & 0x10) == 0)
  {
    return *v11;
  }

  v14 = *(**v11 + 24);

  return v14();
}

uint64_t google::protobuf::internal::ExtensionSet::MutableMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  *(v9 + 2) = a5;
  if (v10)
  {
    v9[8] = a3;
    v9[9] = 0;
    v9[10] &= 0xFu;
    v11 = *this;
    v12 = v9;
    result = (*(*a4 + 16))(a4, v11);
    *v12 = result;
    v12[10] &= 0xF0u;
  }

  else
  {
    v14 = v9[10];
    v9[10] = v14 & 0xF0;
    result = *v9;
    if ((v14 & 0x10) != 0)
    {
      v15 = *(*result + 32);

      return v15();
    }
  }

  return result;
}

uint64_t *google::protobuf::internal::ExtensionSet::UnsafeArenaSetAllocatedMessage(uint64_t *this, int a2, char a3, const google::protobuf::FieldDescriptor *a4, google::protobuf::MessageLite *a5)
{
  v5 = this;
  if (a5)
  {
    this = google::protobuf::internal::ExtensionSet::Insert(this, a2);
    this[2] = a4;
    if (v9)
    {
      *(this + 8) = a3;
      *(this + 9) = 0;
      *(this + 10) &= 0xFu;
    }

    else
    {
      if ((*(this + 10) & 0x10) != 0)
      {
        v20 = *v5;
        v21 = this;
        (*(**this + 48))(*this, a5, v20);
        this = v21;
        goto LABEL_22;
      }

      if (!*v5)
      {
        if (*this)
        {
          v19 = this;
          (*(**this + 8))(*this);
          this = v19;
        }
      }
    }

    *this = a5;
LABEL_22:
    *(this + 10) &= 0xF0u;
    return this;
  }

  v10 = *(this + 5);
  if (!*(this + 5))
  {
    return this;
  }

  if ((v10 & 0x8000) != 0)
  {
    this = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (!this)
    {
      return this;
    }

    goto LABEL_13;
  }

  v11 = this[2];
  v12 = 32 * v10 - 32;
  if (v12)
  {
    v13 = v12 >> 5;
    do
    {
      v14 = v13 >> 1;
      v15 = (v11 + 32 * (v13 >> 1));
      v17 = *v15;
      v16 = v15 + 8;
      v13 += ~(v13 >> 1);
      if (v17 < a2)
      {
        v11 = v16;
      }

      else
      {
        v13 = v14;
      }
    }

    while (v13);
  }

  v18 = *v11;
  this = (v11 + 8);
  if (v18 == a2)
  {
LABEL_13:

    return google::protobuf::internal::ExtensionSet::Extension::Clear(this);
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::Erase(uint64_t this, int a2)
{
  v11 = a2;
  v2 = *(this + 10);
  v3 = *(this + 16);
  if (v2 < 0)
  {
    return absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::erase<int>(*(this + 16), &v11);
  }

  v4 = &v3[32 * v2];
  if (*(this + 10))
  {
    v5 = *(this + 10);
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[32 * (v5 >> 1)];
      v9 = *v7;
      v8 = (v7 + 8);
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  if (v3 != v4 && *v3 == a2)
  {
    if (v4 != v3 + 32)
    {
      v10 = this;
      memmove(v3, v3 + 32, v4 - (v3 + 32));
      this = v10;
      LOWORD(v2) = *(v10 + 10);
    }

    *(this + 10) = v2 - 1;
  }

  return this;
}

uint64_t google::protobuf::internal::ExtensionSet::GetRepeatedMessage(google::protobuf::internal::ExtensionSet *this, int a2, int a3)
{
  v3 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_14;
  }

  if ((v3 & 0x8000) != 0)
  {
    v16 = a3;
    v11 = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    a3 = v16;
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_14:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v17, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 764);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v17);
  }

  v4 = *(this + 2);
  v5 = 32 * v3 - 32;
  if (v5)
  {
    v6 = v5 >> 5;
    do
    {
      v7 = v6 >> 1;
      v8 = &v4[8 * (v6 >> 1)];
      v10 = *v8;
      v9 = v8 + 8;
      v6 += ~(v6 >> 1);
      if (v10 < a2)
      {
        v4 = v9;
      }

      else
      {
        v6 = v7;
      }
    }

    while (v6);
  }

  v12 = *v4;
  v11 = (v4 + 2);
  if (v12 != a2)
  {
    goto LABEL_14;
  }

LABEL_10:
  v13 = *v11;
  v14 = **v11;
  if (v14)
  {
    v13 = (v14 + 8 * a3 + 7);
  }

  return *v13;
}

void *google::protobuf::internal::ExtensionSet::AddMessage(google::protobuf::internal::ExtensionSet *this, int a2, char a3, const google::protobuf::MessageLite *a4, const google::protobuf::FieldDescriptor *a5)
{
  v9 = google::protobuf::internal::ExtensionSet::Insert(this, a2);
  v10 = v9;
  *(v9 + 2) = a5;
  if (v11)
  {
    v9[8] = a3;
    v9[9] = 1;
    v12 = *this;
    if (!*this)
    {
      operator new();
    }

    v13 = google::protobuf::Arena::Allocate(*this);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = v12;
    *v10 = v13;
    v14 = *(v13 + 2);
    v15 = *v13;
    if (*v13)
    {
LABEL_4:
      if (v14 >= *(v15 - 1))
      {
        goto LABEL_12;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v13 = *v9;
    v14 = *(*v10 + 8);
    v15 = **v10;
    if (v15)
    {
      goto LABEL_4;
    }
  }

  if (v14 >= (v15 != 0))
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v13 + 2) = v14 + 1;
  v16 = (v15 + 8 * v14 + 7);
  if ((v15 & 1) == 0)
  {
    v16 = v13;
  }

  v17 = *v16;
  if (*v16)
  {
    return v17;
  }

LABEL_12:
  v17 = (*(*a4 + 16))(a4, *this);
  v19 = *v10;
  v20 = v17[1];
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    v21 = v19[2];
    if (v21 != v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v21 = v19[2];
    if (v21 != v20)
    {
LABEL_14:
      google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v19, v17, v20, v21);
      return v17;
    }
  }

  v22 = *v19;
  if ((*v19 & 1) == 0)
  {
    if (v22)
    {
      goto LABEL_14;
    }

    v23 = *(v19 + 2);
    if ((v23 & 0x80000000) == 0)
    {
      v24 = *v10;
      goto LABEL_25;
    }

    v25 = 0;
    v28 = &v19[v23];
    v24 = *v10;
    goto LABEL_24;
  }

  v27 = *(v22 - 1);
  v26 = v22 - 1;
  v25 = v27;
  if (v27 > *(v19 + 3))
  {
    goto LABEL_14;
  }

  v24 = (v26 + 8);
  v23 = *(v19 + 2);
  if (v23 < v25)
  {
    v28 = &v24[v23];
LABEL_24:
    v24[v25] = *v28;
  }

LABEL_25:
  *(v19 + 2) = v23 + 1;
  v24[v23] = v17;
  if ((*v19 & 1) == 0)
  {
    return v17;
  }

  ++*(*v19 - 1);
  return v17;
}

unsigned __int8 *google::protobuf::internal::ExtensionSet::RemoveLast(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (!*(this + 5))
  {
    goto LABEL_31;
  }

  if ((v2 & 0x8000) != 0)
  {
    result = google::protobuf::internal::ExtensionSet::FindOrNullInLargeMap(this, a2);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_31:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v21, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 811);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v21, "Index out-of-bounds (field is empty).", 0x25uLL);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v21);
  }

  v3 = *(this + 2);
  v4 = 32 * v2 - 32;
  if (v4)
  {
    v5 = v4 >> 5;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[8 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 < a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  v11 = *v3;
  result = (v3 + 2);
  if (v11 != a2)
  {
    goto LABEL_31;
  }

LABEL_10:
  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[result[8]];
  if (v12 > 5)
  {
    if (v12 <= 8)
    {
LABEL_24:
      --**result;
      return result;
    }

    if (v12 == 9)
    {
      v17 = *result;
      v18 = *(*result + 8) - 1;
      *(v17 + 8) = v18;
      v19 = *v17 + 8 * v18 + 7;
      if (*v17)
      {
        v17 = v19;
      }

      v20 = *v17;
      if (*(v20 + 23) < 0)
      {
        **v20 = 0;
        *(v20 + 8) = 0;
      }

      else
      {
        *v20 = 0;
        *(v20 + 23) = 0;
      }
    }

    else if (v12 == 10)
    {
      v13 = *result;
      v14 = *(*result + 8) - 1;
      v13[2] = v14;
      v15 = *v13 + 8 * v14 + 7;
      if (*v13)
      {
        v13 = v15;
      }

      v16 = *(**v13 + 24);

      return v16();
    }
  }

  else if (v12 > 2 || v12 == 1 || v12 == 2)
  {
    goto LABEL_24;
  }

  return result;
}

int *google::protobuf::internal::ExtensionSet::Clear(google::protobuf::internal::ExtensionSet *this)
{
  v1 = *(this + 5);
  result = *(this + 2);
  if (v1 < 0)
  {
    return google::protobuf::internal::ExtensionSet::Clear(result);
  }

  if (v1)
  {
    v3 = 32 * v1;
    v4 = result + 2;
    do
    {
      result = google::protobuf::internal::ExtensionSet::Extension::Clear(v4);
      v4 += 8;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t google::protobuf::internal::anonymous namespace::SizeOfUnion<google::protobuf::internal::ExtensionSet::KeyValue *,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>>(char *a1, char *a2, unsigned __int8 *a3, int a4, unsigned __int8 *a5, int a6)
{
  if (a1 != a2)
  {
    v6 = 0;
    while (1)
    {
      if (a3 == a5 && a4 == a6)
      {
        goto LABEL_30;
      }

      v7 = &a3[32 * a4];
      v9 = *(v7 + 4);
      v8 = v7 + 16;
      v10 = *a1 == v9;
      if (*a1 < v9)
      {
        ++v6;
        a1 += 32;
      }

      else
      {
        if (v10)
        {
          ++v6;
          a1 += 32;
          if (a3[11])
          {
            if (++a4 == a3[10])
            {
              v11 = a3;
              while (1)
              {
                v12 = *v11;
                if (*(*v11 + 11))
                {
                  break;
                }

                v13 = v11[8];
                v11 = *v11;
                if (v13 != v12[10])
                {
LABEL_21:
                  a3 = v12;
                  a4 = v13;
                  goto LABEL_4;
                }
              }
            }

            goto LABEL_4;
          }

          v15 = &a3[8 * (a4 + 1) + 240];
          do
          {
            a3 = *v15;
            v16 = *(*v15 + 11);
            v15 = (*v15 + 240);
          }

          while (!v16);
        }

        else
        {
          v6 += (v8[18] & 1) == 0;
          if (a3[11])
          {
            if (++a4 == a3[10])
            {
              v14 = a3;
              while (1)
              {
                v12 = *v14;
                if (*(*v14 + 11))
                {
                  break;
                }

                v13 = v14[8];
                v14 = *v14;
                if (v13 != v12[10])
                {
                  goto LABEL_21;
                }
              }
            }

            goto LABEL_4;
          }

          v17 = &a3[8 * (a4 + 1) + 240];
          do
          {
            a3 = *v17;
            v18 = *(*v17 + 11);
            v17 = (*v17 + 240);
          }

          while (!v18);
        }

        a4 = 0;
      }

LABEL_4:
      if (a1 == a2)
      {
        a1 = a2;
        goto LABEL_30;
      }
    }
  }

  v6 = 0;
LABEL_30:
  result = v6 + ((a2 - a1) >> 5);
  while (a3 != a5 || a6 != a4)
  {
    v20 = a3;
    v21 = a4;
    if (a3[11])
    {
      if (++a4 == a3[10])
      {
        v22 = a3;
        while (1)
        {
          a3 = *v22;
          if (*(*v22 + 11))
          {
            break;
          }

          v23 = v22[8];
          v22 = *v22;
          if (v23 != a3[10])
          {
            a4 = v23;
            goto LABEL_32;
          }
        }
      }

      a3 = v20;
    }

    else
    {
      v24 = &a3[8 * (a4 + 1) + 240];
      do
      {
        a3 = *v24;
        v25 = *(*v24 + 11);
        v24 = (*v24 + 240);
      }

      while (!v25);
      a4 = 0;
    }

LABEL_32:
    result += (v20[32 * v21 + 34] & 1) == 0;
  }

  return result;
}

void google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, int a3, const google::protobuf::internal::ExtensionSet::Extension *a4, google::protobuf::Arena *a5)
{
  if (*(a4 + 9) != 1)
  {
    if (*(a4 + 10))
    {
      return;
    }

    v15 = *(a4 + 8);
    v16 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v15];
    if (v16 <= 5)
    {
      if (v16 <= 2)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            return;
          }

LABEL_73:
          v57 = *a4;
          v58 = *(a4 + 2);
          v59 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
          *(v59 + 2) = v58;
          if (v60)
          {
            v59[8] = v15;
            v59[9] = 0;
          }

          v59[10] &= 0xF0u;
          *v59 = v57;
          return;
        }
      }

      else if (v16 != 3)
      {
        if (v16 != 4)
        {
          v17 = *a4;
          v18 = *(a4 + 2);
          v19 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
          *(v19 + 2) = v18;
          if (v20)
          {
            v19[8] = v15;
            v19[9] = 0;
          }

          v19[10] &= 0xF0u;
          *v19 = v17;
          return;
        }

        goto LABEL_73;
      }

LABEL_76:
      v61 = *a4;
      v62 = *(a4 + 2);
      v63 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
      *(v63 + 2) = v62;
      if (v64)
      {
        v63[8] = v15;
        v63[9] = 0;
      }

      v63[10] &= 0xF0u;
      *v63 = v61;
      return;
    }

    if (v16 <= 7)
    {
      if (v16 == 6)
      {
        v108 = *a4;
        v109 = *(a4 + 2);
        v110 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
        *(v110 + 2) = v109;
        if (v111)
        {
          v110[8] = v15;
          v110[9] = 0;
        }

        v110[10] &= 0xF0u;
        *v110 = v108;
      }

      else
      {
        v65 = *a4;
        v66 = *(a4 + 2);
        v67 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
        *(v67 + 2) = v66;
        if (v68)
        {
          v67[8] = v15;
          v67[9] = 0;
        }

        v67[10] &= 0xF0u;
        *v67 = v65;
      }

      return;
    }

    if (v16 == 8)
    {
      goto LABEL_76;
    }

    if (v16 == 9)
    {
      v197 = *a4;
      if (*(*a4 + 23) < 0)
      {
        v219 = a3;
        std::string::__init_copy_ctor_external(&v247, *v197, *(v197 + 1));
        a3 = v219;
      }

      else
      {
        v198 = *v197;
        v247.__r_.__value_.__r.__words[2] = *(v197 + 2);
        *&v247.__r_.__value_.__l.__data_ = v198;
      }

      v220 = *(a4 + 2);
      v221 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
      v222 = v221;
      *(v221 + 2) = v220;
      if (v223)
      {
        v221[8] = v15;
        v221[9] = 0;
        if (!*this)
        {
          operator new();
        }

        v224 = google::protobuf::internal::ThreadSafeArena::AllocateFromStringBlock(*this);
        *v224 = 0;
        *(v224 + 8) = 0;
        *(v224 + 16) = 0;
        *v222 = v224;
      }

      else
      {
        v224 = *v221;
      }

      v222[10] &= 0xF0u;
      if (*(v224 + 23) < 0)
      {
        operator delete(*v224);
      }

      v225 = *&v247.__r_.__value_.__l.__data_;
      *(v224 + 16) = *(&v247.__r_.__value_.__l + 2);
      *v224 = v225;
      return;
    }

    if (v16 != 10)
    {
      return;
    }

    v28 = *this;
    v29 = *(a4 + 2);
    v30 = a3;
    v31 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
    v32 = v31;
    *(v31 + 2) = v29;
    if (v33)
    {
      v31[8] = *(a4 + 8);
      v31[11] = *(a4 + 11);
      v31[9] = 0;
      v34 = v31[10] & 0xF;
      if ((*(a4 + 10) & 0x10) == 0)
      {
        v31[10] = v34;
        v35 = (*(**a4 + 16))(*a4, v28);
        *v32 = v35;
LABEL_205:
        (*(*v35 + 40))(v35, *a4);
LABEL_219:
        v32[10] &= 0xF0u;
        return;
      }

      v31[10] = v34 | 0x10;
      v31 = (*(**a4 + 16))(*a4, v28);
      v216 = v31;
      *v32 = v31;
LABEL_218:
      PrototypeForLazyMessage = google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(v31, a2, v30);
      (*(*v216 + 112))(v216, PrototypeForLazyMessage, *a4, v28);
      goto LABEL_219;
    }

    v216 = *v31;
    if ((*(a4 + 10) & 0x10) != 0)
    {
      if ((v31[10] & 0x10) != 0)
      {
        goto LABEL_218;
      }

      v217 = (*(**a4 + 24))(*a4, *v31, a5);
      v218 = *v216;
    }

    else
    {
      v217 = *a4;
      v218 = *v216;
      if ((v31[10] & 0x10) != 0)
      {
        v35 = (*(v218 + 32))(*v31, v217, v28);
        goto LABEL_205;
      }
    }

    (*(v218 + 40))(v216, v217);
    goto LABEL_219;
  }

  v7 = *(a4 + 2);
  v8 = google::protobuf::internal::ExtensionSet::Insert(this, a3);
  v10 = v8;
  *(v8 + 2) = v7;
  v11 = *(a4 + 8);
  if (v9)
  {
    v8[8] = v11;
    v8[11] = *(a4 + 11);
    v8[9] = 1;
  }

  v12 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v11];
  if (v12 > 5)
  {
    if (v12 > 7)
    {
      if (v12 == 8)
      {
        if (v9)
        {
          v75 = *this;
          if (!v75)
          {
            operator new();
          }

          v76 = google::protobuf::Arena::Allocate(v75);
          *v76 = 0;
          *(v76 + 1) = v75;
          *v10 = v76;
        }

        else
        {
          v76 = *v8;
        }

        v163 = *a4;
        v164 = **a4;
        if (v164)
        {
          v165 = *v76;
          v166 = (v165 + v164);
          if (v76[1] < v166)
          {
            v244 = v76;
            google::protobuf::RepeatedField<int>::Grow(v76, v165, v166);
            LODWORD(v165) = *v244;
            v167 = *(v244 + 1);
            *v244 += v164;
            if (v164 < 1)
            {
              return;
            }
          }

          else
          {
            v167 = *(v76 + 1);
            *v76 = v166;
            if (v164 < 1)
            {
              return;
            }
          }

          v168 = *(v163 + 8);
          v169 = (v167 + 4 * v165);
          if (v164 < 8)
          {
            goto LABEL_173;
          }

          v170 = 4 * v165 + v167;
          if ((v170 - v168) < 0x20)
          {
            goto LABEL_173;
          }

          v171 = v164;
          v172 = v164 & 0x7FFFFFF8;
          LODWORD(v164) = v164 - (v164 & 0x7FFFFFF8);
          v169 += v172;
          v173 = &v168[v172];
          v174 = (v168 + 4);
          v175 = (v170 + 16);
          v176 = v172;
          do
          {
            v177 = *v174;
            *(v175 - 1) = *(v174 - 1);
            *v175 = v177;
            v174 += 2;
            v175 += 2;
            v176 -= 8;
          }

          while (v176);
          v168 = v173;
          if (v172 != v171)
          {
LABEL_173:
            v178 = v164 + 1;
            do
            {
              v179 = *v168++;
              *v169++ = v179;
              --v178;
            }

            while (v178 > 1);
          }
        }

        return;
      }

      if (v12 == 9)
      {
        if (v9)
        {
          v79 = *this;
          if (!v79)
          {
            operator new();
          }

          v80 = google::protobuf::Arena::Allocate(v79);
          *v80 = 0;
          v80[1] = 0;
          v80[2] = v79;
          *v10 = v80;
        }

        v81 = *a4;
        if (*(*a4 + 8))
        {
          v82 = *v10;

          google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<std::string>(v82, v81);
        }

        return;
      }

      if (v12 != 10)
      {
        return;
      }

      v21 = *this;
      if (v9)
      {
        if (!v21)
        {
          operator new();
        }

        v22 = google::protobuf::Arena::Allocate(v21);
        *v22 = 0;
        v22[1] = 0;
        v22[2] = v21;
        *v10 = v22;
      }

      v23 = *a4;
      if (*(*a4 + 8) < 1)
      {
        return;
      }

      v24 = 0;
      for (i = 8; ; i += 8)
      {
        if (*v23)
        {
          v36 = (*v23 + i - 1);
        }

        else
        {
          v36 = v23;
        }

        v37 = *v10;
        v38 = **v10;
        if (v38)
        {
          v39 = *v36;
          v40 = *(v37 + 8);
          if (v40 >= *(v38 - 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v39 = *v36;
          v40 = *(v37 + 8);
          if (v40 >= (v38 != 0))
          {
            goto LABEL_48;
          }
        }

        *(v37 + 8) = v40 + 1;
        v41 = v38 + 8 * v40 + 7;
        if (v38)
        {
          v37 = v41;
        }

        v42 = *v37;
        if (*v37)
        {
          goto LABEL_37;
        }

LABEL_48:
        v42 = (*(*v39 + 16))(v39, v21);
        v43 = v42[1];
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          v44 = *v10;
          v45 = *(*v10 + 16);
          if (v45 != v43)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v44 = *v10;
          v45 = *(*v10 + 16);
          if (v45 != v43)
          {
            goto LABEL_36;
          }
        }

        v46 = *v44;
        if (*v44)
        {
          v49 = *(v46 - 1);
          v48 = v46 - 1;
          v47 = v49;
          if (v49 <= *(v44 + 3))
          {
            v50 = (v48 + 8);
            v51 = *(v44 + 2);
            if (v51 < v47)
            {
              v52 = &v50[v51];
              goto LABEL_57;
            }

            goto LABEL_58;
          }
        }

        else if (!v46)
        {
          v51 = *(v44 + 2);
          if (v51 < 0)
          {
            v47 = 0;
            v52 = &v44[v51];
            v50 = v44;
LABEL_57:
            v50[v47] = *v52;
          }

          else
          {
            v50 = v44;
          }

LABEL_58:
          *(v44 + 2) = v51 + 1;
          v50[v51] = v42;
          if (*v44)
          {
            ++*(*v44 - 1);
          }

          goto LABEL_37;
        }

LABEL_36:
        google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedSlowWithCopy<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v44, v42, v43, v45);
LABEL_37:
        (*(*v42 + 40))(v42, v39);
        if (++v24 >= *(v23 + 8))
        {
          return;
        }
      }
    }

    if (v12 == 6)
    {
      if (v9)
      {
        v71 = *this;
        if (!v71)
        {
          operator new();
        }

        v72 = google::protobuf::Arena::Allocate(v71);
        *v72 = 0;
        *(v72 + 1) = v71;
        *v10 = v72;
      }

      else
      {
        v72 = *v8;
      }

      v129 = *a4;
      v130 = **a4;
      if (v130)
      {
        v131 = *v72;
        v132 = (v131 + v130);
        if (v72[1] < v132)
        {
          v242 = v72;
          google::protobuf::RepeatedField<int>::Grow(v72, v131, v132);
          LODWORD(v131) = *v242;
          v133 = *(v242 + 1);
          *v242 += v130;
          if (v130 < 1)
          {
            return;
          }
        }

        else
        {
          v133 = *(v72 + 1);
          *v72 = v132;
          if (v130 < 1)
          {
            return;
          }
        }

        v134 = *(v129 + 8);
        v135 = (v133 + 4 * v131);
        if (v130 < 8)
        {
          goto LABEL_149;
        }

        v136 = 4 * v131 + v133;
        if ((v136 - v134) < 0x20)
        {
          goto LABEL_149;
        }

        v137 = v130;
        v138 = v130 & 0x7FFFFFF8;
        LODWORD(v130) = v130 - (v130 & 0x7FFFFFF8);
        v135 += v138;
        v139 = &v134[v138];
        v140 = (v134 + 4);
        v141 = (v136 + 16);
        v142 = v138;
        do
        {
          v143 = *v140;
          *(v141 - 1) = *(v140 - 1);
          *v141 = v143;
          v140 += 2;
          v141 += 2;
          v142 -= 8;
        }

        while (v142);
        v134 = v139;
        if (v138 != v137)
        {
LABEL_149:
          v144 = v130 + 1;
          do
          {
            v145 = *v134++;
            *v135++ = v145;
            --v144;
          }

          while (v144 > 1);
        }
      }

      return;
    }

    if (v9)
    {
      v55 = *this;
      if (!v55)
      {
        operator new();
      }

      v56 = google::protobuf::Arena::Allocate(v55);
      *v56 = 0;
      *(v56 + 1) = v55;
      *v10 = v56;
    }

    else
    {
      v56 = *v8;
    }

    v100 = *a4;
    v101 = **a4;
    if (!v101)
    {
      return;
    }

    v102 = *v56;
    v103 = (v102 + v101);
    if (v56[1] < v103)
    {
      v240 = v56;
      google::protobuf::RepeatedField<BOOL>::Grow(v56, v102, v103);
      LODWORD(v102) = *v240;
      v104 = *(v240 + 1);
      *v240 += v101;
      if (v101 < 1)
      {
        return;
      }
    }

    else
    {
      v104 = *(v56 + 1);
      *v56 = v103;
      if (v101 < 1)
      {
        return;
      }
    }

    v105 = *(v100 + 8);
    v106 = (v104 + v102);
    if (v101 >= 8 && (v106 - v105) >= 0x20)
    {
      if (v101 >= 0x20)
      {
        v107 = v101 & 0x7FFFFFE0;
        v227 = (v105 + 16);
        v228 = (v102 + v104 + 16);
        v229 = v107;
        do
        {
          v230 = *v227;
          *(v228 - 1) = *(v227 - 1);
          *v228 = v230;
          v227 += 2;
          v228 += 2;
          v229 -= 32;
        }

        while (v229);
        if (v107 == v101)
        {
          return;
        }

        if ((v101 & 0x18) == 0)
        {
          v105 += v107;
          v106 += v107;
          LODWORD(v101) = v101 - v107;
          goto LABEL_230;
        }
      }

      else
      {
        v107 = 0;
      }

      v106 += v101 & 0x7FFFFFF8;
      v231 = &v105[v101 & 0x7FFFFFF8];
      v232 = &v105[v107];
      v233 = (v104 + v107 + v102);
      v234 = v107 - (v101 & 0x7FFFFFF8);
      do
      {
        v235 = *v232++;
        *v233++ = v235;
        v234 += 8;
      }

      while (v234);
      v105 = v231;
      v236 = (v101 & 0x7FFFFFF8) == v101;
      LODWORD(v101) = v101 - (v101 & 0x7FFFFFF8);
      if (v236)
      {
        return;
      }
    }

LABEL_230:
    v237 = v101 + 1;
    do
    {
      v238 = *v105++;
      *v106++ = v238;
      --v237;
    }

    while (v237 > 1);
    return;
  }

  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      if (v9)
      {
        v69 = *this;
        if (!v69)
        {
          operator new();
        }

        v70 = google::protobuf::Arena::Allocate(v69);
        *v70 = 0;
        *(v70 + 1) = v69;
        *v10 = v70;
      }

      else
      {
        v70 = *v8;
      }

      v112 = *a4;
      v113 = **a4;
      if (v113)
      {
        v114 = *v70;
        v115 = (v114 + v113);
        if (v70[1] < v115)
        {
          v241 = v70;
          google::protobuf::RepeatedField<int>::Grow(v70, v114, v115);
          LODWORD(v114) = *v241;
          v116 = *(v241 + 1);
          *v241 += v113;
          if (v113 < 1)
          {
            return;
          }
        }

        else
        {
          v116 = *(v70 + 1);
          *v70 = v115;
          if (v113 < 1)
          {
            return;
          }
        }

        v117 = *(v112 + 8);
        v118 = (v116 + 4 * v114);
        if (v113 < 8)
        {
          goto LABEL_137;
        }

        v119 = 4 * v114 + v116;
        if ((v119 - v117) < 0x20)
        {
          goto LABEL_137;
        }

        v120 = v113;
        v121 = v113 & 0x7FFFFFF8;
        LODWORD(v113) = v113 - (v113 & 0x7FFFFFF8);
        v118 += v121;
        v122 = &v117[v121];
        v123 = (v117 + 4);
        v124 = (v119 + 16);
        v125 = v121;
        do
        {
          v126 = *v123;
          *(v124 - 1) = *(v123 - 1);
          *v124 = v126;
          v123 += 2;
          v124 += 2;
          v125 -= 8;
        }

        while (v125);
        v117 = v122;
        if (v121 != v120)
        {
LABEL_137:
          v127 = v113 + 1;
          do
          {
            v128 = *v117++;
            *v118++ = v128;
            --v127;
          }

          while (v127 > 1);
        }
      }
    }

    else if (v12 == 2)
    {
      if (v9)
      {
        v53 = *this;
        if (!v53)
        {
          operator new();
        }

        v54 = google::protobuf::Arena::Allocate(v53);
        *v54 = 0;
        *(v54 + 1) = v53;
        *v10 = v54;
      }

      else
      {
        v54 = *v8;
      }

      v83 = *a4;
      v84 = **a4;
      if (v84)
      {
        v85 = *v54;
        v86 = (v85 + v84);
        if (v54[1] < v86)
        {
          v239 = v54;
          google::protobuf::RepeatedField<long long>::Grow(v54, v85, v86);
          LODWORD(v85) = *v239;
          v87 = *(v239 + 1);
          *v239 += v84;
          if (v84 < 1)
          {
            return;
          }
        }

        else
        {
          v87 = *(v54 + 1);
          *v54 = v86;
          if (v84 < 1)
          {
            return;
          }
        }

        v88 = *(v83 + 8);
        v89 = (v87 + 8 * v85);
        if (v84 < 8)
        {
          goto LABEL_114;
        }

        v90 = 8 * v85 + v87;
        if ((v90 - v88) < 0x20)
        {
          goto LABEL_114;
        }

        v91 = v84;
        v92 = v84 & 0x7FFFFFFC;
        LODWORD(v84) = v84 - (v84 & 0x7FFFFFFC);
        v89 += v92;
        v93 = &v88[v92];
        v94 = (v88 + 2);
        v95 = (v90 + 16);
        v96 = v92;
        do
        {
          v97 = *v94;
          *(v95 - 1) = *(v94 - 1);
          *v95 = v97;
          v94 += 2;
          v95 += 2;
          v96 -= 4;
        }

        while (v96);
        v88 = v93;
        if (v92 != v91)
        {
LABEL_114:
          v98 = v84 + 1;
          do
          {
            v99 = *v88++;
            *v89++ = v99;
            --v98;
          }

          while (v98 > 1);
        }
      }
    }
  }

  else if (v12 == 3)
  {
    if (v9)
    {
      v73 = *this;
      if (!v73)
      {
        operator new();
      }

      v74 = google::protobuf::Arena::Allocate(v73);
      *v74 = 0;
      *(v74 + 1) = v73;
      *v10 = v74;
    }

    else
    {
      v74 = *v8;
    }

    v146 = *a4;
    v147 = **a4;
    if (v147)
    {
      v148 = *v74;
      v149 = (v148 + v147);
      if (v74[1] < v149)
      {
        v243 = v74;
        google::protobuf::RepeatedField<int>::Grow(v74, v148, v149);
        LODWORD(v148) = *v243;
        v150 = *(v243 + 1);
        *v243 += v147;
        if (v147 < 1)
        {
          return;
        }
      }

      else
      {
        v150 = *(v74 + 1);
        *v74 = v149;
        if (v147 < 1)
        {
          return;
        }
      }

      v151 = *(v146 + 8);
      v152 = (v150 + 4 * v148);
      if (v147 < 8)
      {
        goto LABEL_161;
      }

      v153 = 4 * v148 + v150;
      if ((v153 - v151) < 0x20)
      {
        goto LABEL_161;
      }

      v154 = v147;
      v155 = v147 & 0x7FFFFFF8;
      LODWORD(v147) = v147 - (v147 & 0x7FFFFFF8);
      v152 += v155;
      v156 = &v151[v155];
      v157 = (v151 + 4);
      v158 = (v153 + 16);
      v159 = v155;
      do
      {
        v160 = *v157;
        *(v158 - 1) = *(v157 - 1);
        *v158 = v160;
        v157 += 2;
        v158 += 2;
        v159 -= 8;
      }

      while (v159);
      v151 = v156;
      if (v155 != v154)
      {
LABEL_161:
        v161 = v147 + 1;
        do
        {
          v162 = *v151++;
          *v152++ = v162;
          --v161;
        }

        while (v161 > 1);
      }
    }
  }

  else if (v12 == 4)
  {
    if (v9)
    {
      v77 = *this;
      if (!v77)
      {
        operator new();
      }

      v78 = google::protobuf::Arena::Allocate(v77);
      *v78 = 0;
      *(v78 + 1) = v77;
      *v10 = v78;
    }

    else
    {
      v78 = *v8;
    }

    v199 = *a4;
    v200 = **a4;
    if (v200)
    {
      v201 = *v78;
      v202 = (v201 + v200);
      if (v78[1] < v202)
      {
        v246 = v78;
        google::protobuf::RepeatedField<long long>::Grow(v78, v201, v202);
        LODWORD(v201) = *v246;
        v203 = *(v246 + 1);
        *v246 += v200;
        if (v200 < 1)
        {
          return;
        }
      }

      else
      {
        v203 = *(v78 + 1);
        *v78 = v202;
        if (v200 < 1)
        {
          return;
        }
      }

      v204 = *(v199 + 8);
      v205 = (v203 + 8 * v201);
      if (v200 < 8)
      {
        goto LABEL_199;
      }

      v206 = 8 * v201 + v203;
      if ((v206 - v204) < 0x20)
      {
        goto LABEL_199;
      }

      v207 = v200;
      v208 = v200 & 0x7FFFFFFC;
      LODWORD(v200) = v200 - (v200 & 0x7FFFFFFC);
      v205 += v208;
      v209 = &v204[v208];
      v210 = (v204 + 2);
      v211 = (v206 + 16);
      v212 = v208;
      do
      {
        v213 = *v210;
        *(v211 - 1) = *(v210 - 1);
        *v211 = v213;
        v210 += 2;
        v211 += 2;
        v212 -= 4;
      }

      while (v212);
      v204 = v209;
      if (v208 != v207)
      {
LABEL_199:
        v214 = v200 + 1;
        do
        {
          v215 = *v204++;
          *v205++ = v215;
          --v214;
        }

        while (v214 > 1);
      }
    }
  }

  else
  {
    if (v9)
    {
      v13 = *this;
      if (!v13)
      {
        operator new();
      }

      v14 = google::protobuf::Arena::Allocate(v13);
      *v14 = 0;
      *(v14 + 1) = v13;
      *v10 = v14;
    }

    else
    {
      v14 = *v8;
    }

    v180 = *a4;
    v181 = **a4;
    if (v181)
    {
      v182 = *v14;
      v183 = (v182 + v181);
      if (v14[1] < v183)
      {
        v245 = v14;
        google::protobuf::RepeatedField<long long>::Grow(v14, v182, v183);
        LODWORD(v182) = *v245;
        v184 = *(v245 + 1);
        *v245 += v181;
        if (v181 < 1)
        {
          return;
        }
      }

      else
      {
        v184 = *(v14 + 1);
        *v14 = v183;
        if (v181 < 1)
        {
          return;
        }
      }

      v185 = *(v180 + 8);
      v186 = (v184 + 8 * v182);
      if (v181 < 8)
      {
        goto LABEL_185;
      }

      v187 = 8 * v182 + v184;
      if ((v187 - v185) < 0x20)
      {
        goto LABEL_185;
      }

      v188 = v181;
      v189 = v181 & 0x7FFFFFFC;
      LODWORD(v181) = v181 - (v181 & 0x7FFFFFFC);
      v186 += v189;
      v190 = &v185[v189];
      v191 = (v185 + 2);
      v192 = (v187 + 16);
      v193 = v189;
      do
      {
        v194 = *v191;
        *(v192 - 1) = *(v191 - 1);
        *v192 = v194;
        v191 += 2;
        v192 += 2;
        v193 -= 4;
      }

      while (v193);
      v185 = v190;
      if (v189 != v188)
      {
LABEL_185:
        v195 = v181 + 1;
        do
        {
          v196 = *v185++;
          *v186++ = v196;
          --v195;
        }

        while (v195 > 1);
      }
    }
  }
}

void sub_23CD490C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (qword_2810C19D0)
  {
    v3 = 0;
    _X10 = *(qword_2810C19D0 + 16);
    __asm { PRFM            #4, [X10] }

    v9 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a2))) + a2;
    v10 = (((v9 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v9)) + a3;
    v11 = ((v10 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v10);
    v12 = *qword_2810C19D0;
    v13 = vdup_n_s8(v11 & 0x7F);
    v14 = ((v11 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D0;
    v15 = *(_X10 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_3:
      v17 = *(qword_2810C19D0 + 24) + 48 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v12);
      if (*v17 == a2 && *(v17 + 8) == a3)
      {
        v20 = google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[*(v17 + 12)];
        if (v20 == 2)
        {
          v21 = 1;
        }

        else
        {
          v21 = ((v20 - 5) < 0xFFFFFFFD) & *(v17 + 13);
        }

        if (v21)
        {
          return *(v17 + 16);
        }

        else
        {
          return 0;
        }
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_8:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v3 += 8;
      v14 = (v3 + v14) & v12;
      v15 = *(_X10 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_3;
      }
    }
  }

  return 0;
}

uint64_t *google::protobuf::internal::ExtensionSet::InternalSwap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOWORD(v2) = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LOWORD(v2) = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  return result;
}

google::protobuf::internal::RepeatedPtrFieldBase *google::protobuf::internal::ExtensionSet::Extension::Free(google::protobuf::internal::RepeatedPtrFieldBase *this)
{
  v1 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[*(this + 8)];
  if (*(this + 9) == 1)
  {
    if (v1 <= 5)
    {
      if (v1 <= 2 && v1 != 1 && v1 != 2)
      {
        return this;
      }

      goto LABEL_26;
    }

    if (v1 <= 8)
    {
LABEL_26:
      this = *this;
      if (this)
      {
        if (*(this + 1) >= 1)
        {
          v5 = *(this + 1);
          v7 = *(v5 - 8);
          v6 = (v5 - 8);
          if (!v7)
          {
            operator delete(v6);
          }
        }

        goto LABEL_45;
      }

      return this;
    }

    if (v1 == 9)
    {
      v8 = *this;
      if (!*this)
      {
        return this;
      }

      if (*v8 && !v8[2])
      {
        google::protobuf::internal::ExtensionSet::Extension::Free(*v8, v8);
      }
    }

    else
    {
      if (v1 != 10 || !*this)
      {
        return this;
      }

      if (**this)
      {
        google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(*this);
      }
    }

LABEL_45:
    JUMPOUT(0x23EED9460);
  }

  if (v1 == 10)
  {
    v3 = *(this + 10);
    this = *this;
    if ((v3 & 0x10) != 0)
    {
      if (!this)
      {
        return this;
      }

      v4 = *(*this + 8);
    }

    else
    {
      if (!this)
      {
        return this;
      }

      v4 = *(*this + 8);
    }

    return v4();
  }

  if (v1 == 9)
  {
    v2 = *this;
    if (*this)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      goto LABEL_45;
    }
  }

  return this;
}

char *google::protobuf::internal::ExtensionSet::Insert(google::protobuf::internal::ExtensionSet *this, int a2)
{
  v2 = *(this + 5);
  if (v2 < 0)
  {
    v16 = *(this + 2);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v17 = a2;
    absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>::insert_unique<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(v16, &v17, &v21, &v17);
    return (v21 + 32 * v22 + 24);
  }

  else
  {
    v3 = *(this + 2);
    v4 = &v3[32 * v2];
    v5 = *(this + 5);
    if (*(this + 5))
    {
      v6 = *(this + 5);
      do
      {
        v7 = v6 >> 1;
        v8 = &v3[32 * (v6 >> 1)];
        v10 = *v8;
        v9 = (v8 + 8);
        v6 += ~(v6 >> 1);
        if (v10 < a2)
        {
          v3 = v9;
        }

        else
        {
          v6 = v7;
        }
      }

      while (v6);
    }

    if (v3 == v4)
    {
      if (v5 < *(this + 4))
      {
LABEL_15:
        *(this + 5) = v5 + 1;
        *v3 = a2;
        *(v3 + 1) = 0;
        result = v3 + 8;
        *(v3 + 2) = 0;
        *(v3 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v3 == a2)
      {
        return v3 + 8;
      }

      if (v5 < *(this + 4))
      {
        v12 = this;
        v13 = a2;
        memmove(v3 + 32, v3, v4 - v3);
        this = v12;
        a2 = v13;
        LOWORD(v5) = *(v12 + 5);
        goto LABEL_15;
      }
    }

    v14 = a2;
    v15 = this;
    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v2 + 1);
    return google::protobuf::internal::ExtensionSet::Insert(v15, v14);
  }
}

uint64_t google::protobuf::internal::ExtensionSet::IsInitialized(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2)
{
  if ((*(this + 5) & 0x80000000) == 0)
  {
    if (*(this + 5))
    {
      v4 = *(this + 2);
      do
      {
        v6 = *v4;
        v5 = (v4 + 2);
        result = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(v5, a2, a2, v6);
        if ((result & 1) == 0)
        {
          break;
        }

        v4 = v5 + 24;
      }

      while (v4 != (*(this + 2) + 32 * *(this + 5)));
      return result;
    }

    return 1;
  }

  v8 = *(this + 2);
  v9 = **v8;
  v16 = v9;
  v17 = 0;
  v10 = v8[1];
  v11 = *(v10 + 10);
  if (v9 == v10 && v11 == 0)
  {
    return 1;
  }

  v13 = 0;
  do
  {
    IsInitialized = google::protobuf::internal::ExtensionSet::Extension::IsInitialized(&v9[4 * v13 + 3], a2, a2, LODWORD(v9[4 * v13 + 2]));
    if (!IsInitialized)
    {
      break;
    }

    absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(&v16);
    v9 = v16;
    v13 = v17;
  }

  while (v16 != v10 || v17 != v11);
  return IsInitialized;
}

uint64_t google::protobuf::internal::ExtensionSet::Extension::IsInitialized(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[a1[8]] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v5 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v6 = 0;
      v7 = 8;
      do
      {
        if (*v5)
        {
          v5 = (*v5 + v7 - 1);
        }

        result = (*(**v5 + 32))(*v5, a2, a3, a4);
        if ((result & 1) == 0)
        {
          break;
        }

        ++v6;
        v5 = *a1;
        v7 += 8;
      }

      while (v6 < *(*a1 + 8));
      return result;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  if ((a1[10] & 0x10) != 0)
  {
    if (qword_2810C19D0)
    {
      v10 = 0;
      _X10 = *(qword_2810C19D0 + 16);
      __asm { PRFM            #4, [X10] }

      v16 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3))) + a3;
      v17 = (((v16 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v16)) + a4;
      v18 = ((v17 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v17);
      v19 = *qword_2810C19D0;
      v20 = vdup_n_s8(v18 & 0x7F);
      v21 = ((v18 >> 7) ^ (_X10 >> 12)) & *qword_2810C19D0;
      v22 = *(_X10 + v21);
      v23 = vceq_s8(v22, v20);
      if (!v23)
      {
        goto LABEL_23;
      }

LABEL_18:
      while (1)
      {
        v24 = *(qword_2810C19D0 + 24) + 48 * ((v21 + (__clz(__rbit64(v23)) >> 3)) & v19);
        if (*v24 == a3 && *(v24 + 8) == a4)
        {
          break;
        }

        v23 &= ((v23 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v23)
        {
LABEL_23:
          while (!*&vceq_s8(v22, 0x8080808080808080))
          {
            v10 += 8;
            v21 = (v10 + v21) & v19;
            v22 = *(_X10 + v21);
            v23 = vceq_s8(v22, v20);
            if (v23)
            {
              goto LABEL_18;
            }
          }

          break;
        }
      }
    }

    v26 = *(**a1 + 72);

    return v26();
  }

  else
  {
    v9 = *(**a1 + 32);

    return v9();
  }
}

_DWORD *absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(_DWORD *result)
{
  v1 = *result;
  v2 = result[2];
  if (!*(*result + 11))
  {
    goto LABEL_8;
  }

  result[2] = ++v2;
  v3 = v1[10];
  if (v2 < v3)
  {
    return result;
  }

  if (v1[11])
  {
    v9 = *result;
    if (v2 == v3)
    {
      while (1)
      {
        v4 = *v1;
        if (*(*v1 + 11))
        {
          break;
        }

        v5 = v1[8];
        result[2] = v5;
        *result = v4;
        v1 = v4;
        if (v5 != v4[10])
        {
          return result;
        }
      }

      *result = v9;
      result[2] = DWORD2(v9);
    }
  }

  else
  {
LABEL_8:
    v6 = &v1[8 * (v2 + 1) + 240];
    do
    {
      v7 = *v6;
      *result = v7;
      v8 = *(v7 + 11);
      v6 = (v7 + 240);
    }

    while (!v8);
    result[2] = 0;
  }

  return result;
}

google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::_InternalSerializeImpl(google::protobuf::internal::ExtensionSet *this, const google::protobuf::MessageLite *a2, const google::protobuf::internal::ExtensionSet *a3, int a4, google::protobuf::MessageLite *a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v32 = a3;
  v10 = *(this + 5);
  v11 = *(this + 2);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v19 = *(v11 + 1);
    v20 = *(v19 + 10);
    v21 = absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::lower_bound<int>(*(this + 2), &v32);
    v30 = v21;
    v31 = v22;
    if (v19 != v21 || v22 != v20)
    {
      do
      {
        v25 = &v21[4 * v22];
        v28 = *(v25 + 4);
        v27 = v25 + 2;
        v26 = v28;
        if (v28 >= a4)
        {
          break;
        }

        a5 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray((v27 + 1), a2, v23, v26, a5, a6);
        absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>&,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>*>::operator++(&v30);
        v21 = v30;
        LOBYTE(v22) = v31;
      }

      while (v30 != v19 || v31 != v20);
    }
  }

  else
  {
    v12 = &v11[8 * v10];
    if (*(this + 5))
    {
      do
      {
        v13 = v10 >> 1;
        v14 = &v11[8 * (v10 >> 1)];
        v16 = *v14;
        v15 = (v14 + 8);
        v10 += ~(v10 >> 1);
        if (v16 < a3)
        {
          v11 = v15;
        }

        else
        {
          v10 = v13;
        }
      }

      while (v10);
    }

    while (v11 != v12)
    {
      v17 = *v11;
      if (v17 >= a4)
      {
        break;
      }

      a5 = google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray((v11 + 2), a2, a3, v17, a5, a6);
      v11 += 8;
    }
  }

  return a5;
}

uint64_t *absl::lts_20240722::container_internal::btree_container<absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<int,google::protobuf::internal::ExtensionSet::Extension,std::less<int>,std::allocator<std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>,256,false>>>::lower_bound<int>(uint64_t **a1, _DWORD *a2)
{
  result = *a1;
  v4 = *(result + 10);
  if (!*(result + 10))
  {
    goto LABEL_6;
  }

LABEL_2:
  v5 = 0;
  v6 = result + 2;
  do
  {
    v7 = *v6;
    v6 += 4;
    if (v7 >= *a2)
    {
      goto LABEL_7;
    }

    ++v5;
  }

  while (v4 != v5);
  LODWORD(v5) = v4;
LABEL_7:
  while (!*(result + 11))
  {
    result = result[v5 + 30];
    v4 = *(result + 10);
    if (*(result + 10))
    {
      goto LABEL_2;
    }

LABEL_6:
    LODWORD(v5) = 0;
  }

  while (v5 == *(result + 10))
  {
    LODWORD(v5) = *(result + 8);
    result = *result;
    if (*(result + 11))
    {
      return a1[1];
    }
  }

  return result;
}

google::protobuf::MessageLite *google::protobuf::internal::ExtensionSet::Extension::InternalSerializeFieldWithCachedSizesToArray(google::protobuf::internal::ExtensionSet::Extension *this, const google::protobuf::MessageLite *a2, const google::protobuf::internal::ExtensionSet *a3, google::protobuf::internal::WireFormatLite *a4, google::protobuf::MessageLite *a5, google::protobuf::io::EpsCopyOutputStream *a6)
{
  v7 = a5;
  if (*(this + 9) != 1)
  {
    if (*(this + 10))
    {
      return v7;
    }

    switch(*(this + 8))
    {
      case 1:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        do
        {
          *v7 = v18 | 0x80;
          v7 = (v7 + 1);
          v19 = v18 >> 7;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        goto LABEL_277;
      case 2:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        do
        {
          *v7 = v47 | 0x80;
          v7 = (v7 + 1);
          v48 = v47 >> 7;
          v157 = v47 >> 14;
          v47 >>= 7;
        }

        while (v157);
        goto LABEL_312;
      case 3:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v112 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_168;
          }
        }

        else
        {
          v79 = *this;
          v112 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_168:
            LOBYTE(v113) = v112;
            goto LABEL_169;
          }
        }

        do
        {
          *v7 = v112 | 0x80;
          v7 = (v7 + 1);
          v113 = v112 >> 7;
          v291 = v112 >> 14;
          v112 >>= 7;
        }

        while (v291);
LABEL_169:
        *v7 = v113;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v114 = v79 >> 14;
          v79 >>= 7;
        }

        while (v114);
        goto LABEL_500;
      case 4:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v133 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_204;
          }
        }

        else
        {
          v79 = *this;
          v133 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_204:
            LOBYTE(v134) = v133;
            goto LABEL_205;
          }
        }

        do
        {
          *v7 = v133 | 0x80;
          v7 = (v7 + 1);
          v134 = v133 >> 7;
          v292 = v133 >> 14;
          v133 >>= 7;
        }

        while (v292);
LABEL_205:
        *v7 = v134;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v135 = v79 >> 14;
          v79 >>= 7;
        }

        while (v135);
        goto LABEL_500;
      case 5:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v80 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v79 = *this;
          v80 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_114:
            LOBYTE(v81) = v80;
            goto LABEL_115;
          }
        }

        do
        {
          *v7 = v80 | 0x80;
          v7 = (v7 + 1);
          v81 = v80 >> 7;
          v289 = v80 >> 14;
          v80 >>= 7;
        }

        while (v289);
LABEL_115:
        *v7 = v81;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v84 = v79 >> 14;
          v79 >>= 7;
        }

        while (v84);
        goto LABEL_500;
      case 6:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_276;
          }
        }

        do
        {
          *v7 = v18 | 0x80;
          v7 = (v7 + 1);
          v19 = v18 >> 7;
          v295 = v18 >> 14;
          v18 >>= 7;
        }

        while (v295);
        goto LABEL_277;
      case 7:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_311;
          }
        }

        do
        {
          *v7 = v47 | 0x80;
          v7 = (v7 + 1);
          v48 = v47 >> 7;
          v297 = v47 >> 14;
          v47 >>= 7;
        }

        while (v297);
        goto LABEL_312;
      case 8:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v146 = *this;
          v147 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_225;
          }
        }

        else
        {
          v146 = *this;
          v147 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_225:
            LOBYTE(v148) = v147;
            goto LABEL_226;
          }
        }

        do
        {
          *v7 = v147 | 0x80;
          v7 = (v7 + 1);
          v148 = v147 >> 7;
          v293 = v147 >> 14;
          v147 >>= 7;
        }

        while (v293);
LABEL_226:
        *v7 = v148;
        *(v7 + 1) = v146;
        return (v7 + 2);
      case 9:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v57 = *this;
          v58 = *(*this + 23);
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_337;
          }
        }

        else
        {
          v57 = *this;
          v58 = *(*this + 23);
          if ((v58 & 0x8000000000000000) == 0)
          {
            goto LABEL_337;
          }
        }

        v58 = v57[1];
        if (v58 > 127)
        {
          goto LABEL_494;
        }

LABEL_337:
        v215 = 8 * a4;
        v216 = 1;
        v217 = 2;
        v218 = 3;
        v219 = 4;
        if ((8 * a4) >> 28)
        {
          v219 = 5;
        }

        if (v215 >= 0x200000)
        {
          v218 = v219;
        }

        if (v215 >= 0x4000)
        {
          v217 = v218;
        }

        if (v215 >= 0x80)
        {
          v216 = v217;
        }

        if ((*a6 + ~(v7 + v216) + 16) < v58)
        {
          goto LABEL_494;
        }

        v64 = v215 | 2;
        if (v215 < 0x80)
        {
          goto LABEL_347;
        }

        do
        {
          *v7 = v64 | 0x80;
          v7 = (v7 + 1);
          v65 = v64 >> 7;
          v298 = v64 >> 14;
          v64 >>= 7;
        }

        while (v298);
        goto LABEL_348;
      case 0xA:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
        }

        v107 = *this;

        return google::protobuf::internal::WireFormatLite::InternalWriteGroup(a4, v107, v7, a6, a5);
      case 0xB:
        if ((*(this + 10) & 0x10) != 0)
        {
          google::protobuf::internal::ExtensionSet::GetPrototypeForLazyMessage(this, a2, a4);
          v283 = *(**this + 144);

          return v283();
        }

        else
        {
          v206 = *this;
          CachedSize = google::protobuf::MessageLite::GetCachedSize(*this);

          return google::protobuf::internal::WireFormatLite::InternalWriteMessage(a4, v206, CachedSize, v7, a6, v208);
        }

      case 0xC:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v57 = *this;
          v58 = *(*this + 23);
          if (v58 < 0)
          {
LABEL_72:
            v58 = v57[1];
            if (v58 > 127)
            {
              goto LABEL_494;
            }
          }
        }

        else
        {
          v57 = *this;
          v58 = *(*this + 23);
          if (v58 < 0)
          {
            goto LABEL_72;
          }
        }

        v59 = 8 * a4;
        v60 = 1;
        v61 = 2;
        v62 = 3;
        v63 = 4;
        if ((8 * a4) >> 28)
        {
          v63 = 5;
        }

        if (v59 >= 0x200000)
        {
          v62 = v63;
        }

        if (v59 >= 0x4000)
        {
          v61 = v62;
        }

        if (v59 >= 0x80)
        {
          v60 = v61;
        }

        if ((*a6 + ~(v7 + v60) + 16) >= v58)
        {
          v64 = v59 | 2;
          if (v59 < 0x80)
          {
LABEL_347:
            LOBYTE(v65) = v64;
          }

          else
          {
            do
            {
              *v7 = v64 | 0x80;
              v7 = (v7 + 1);
              v65 = v64 >> 7;
              v66 = v64 >> 14;
              v64 >>= 7;
            }

            while (v66);
          }

LABEL_348:
          *v7 = v65;
          *(v7 + 1) = v58;
          if (*(v57 + 23) < 0)
          {
            v57 = *v57;
          }

          memcpy(v7 + 2, v57, v58);
          return (v7 + v58 + 2);
        }

LABEL_494:

        return google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v57, v7);
      case 0xD:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v32 = *this;
          v95 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v32 = *this;
          v95 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_135:
            LOBYTE(v96) = v95;
            goto LABEL_136;
          }
        }

        do
        {
          *v7 = v95 | 0x80;
          v7 = (v7 + 1);
          v96 = v95 >> 7;
          v290 = v95 >> 14;
          v95 >>= 7;
        }

        while (v290);
LABEL_136:
        *v7 = v96;
        v31 = v7 + 1;
        if (v32 < 0x80)
        {
          goto LABEL_137;
        }

        do
        {
          *v31++ = v32 | 0x80;
          v33 = v32 >> 7;
          v286 = v32 >> 14;
          v32 >>= 7;
        }

        while (v286);
        goto LABEL_498;
      case 0xE:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v79 = *this;
          v187 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_291;
          }
        }

        else
        {
          v79 = *this;
          v187 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_291:
            LOBYTE(v188) = v187;
            goto LABEL_292;
          }
        }

        do
        {
          *v7 = v187 | 0x80;
          v7 = (v7 + 1);
          v188 = v187 >> 7;
          v296 = v187 >> 14;
          v187 >>= 7;
        }

        while (v296);
LABEL_292:
        *v7 = v188;
        v82 = v7 + 1;
        if (v79 < 0x80)
        {
          goto LABEL_293;
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v287 = v79 >> 14;
          v79 >>= 7;
        }

        while (v287);
        goto LABEL_500;
      case 0xF:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) >= 0x80)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v46 = *this;
          v47 = (8 * a4) | 5;
          if ((8 * a4) >= 0x80)
          {
            do
            {
LABEL_57:
              *v7 = v47 | 0x80;
              v7 = (v7 + 1);
              v48 = v47 >> 7;
              v49 = v47 >> 14;
              v47 >>= 7;
            }

            while (v49);
LABEL_312:
            *v7 = v48;
            *(v7 + 1) = v46;
            return (v7 + 5);
          }
        }

LABEL_311:
        LOBYTE(v48) = v47;
        goto LABEL_312;
      case 0x10:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) >= 0x80)
          {
            goto LABEL_189;
          }
        }

        else
        {
          v17 = *this;
          v18 = (8 * a4) | 1;
          if ((8 * a4) >= 0x80)
          {
            do
            {
LABEL_189:
              *v7 = v18 | 0x80;
              v7 = (v7 + 1);
              v19 = v18 >> 7;
              v125 = v18 >> 14;
              v18 >>= 7;
            }

            while (v125);
LABEL_277:
            *v7 = v19;
            *(v7 + 1) = v17;
            return (v7 + 9);
          }
        }

LABEL_276:
        LOBYTE(v19) = v18;
        goto LABEL_277;
      case 0x11:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v28 = *this;
          v29 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v28 = *this;
          v29 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_36:
            LOBYTE(v30) = v29;
            goto LABEL_37;
          }
        }

        do
        {
          *v7 = v29 | 0x80;
          v7 = (v7 + 1);
          v30 = v29 >> 7;
          v288 = v29 >> 14;
          v29 >>= 7;
        }

        while (v288);
LABEL_37:
        *v7 = v30;
        v31 = v7 + 1;
        v32 = (2 * v28) ^ (v28 >> 31);
        if (v32 < 0x80)
        {
LABEL_137:
          *v31 = v32;
          return (v31 + 1);
        }

        do
        {
          *v31++ = v32 | 0x80;
          v33 = v32 >> 7;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
LABEL_498:
        *v31 = v33;
        return (v31 + 1);
      case 0x12:
        if (*a6 <= a5)
        {
          v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
          v165 = *this;
          v166 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
            goto LABEL_255;
          }
        }

        else
        {
          v165 = *this;
          v166 = 8 * a4;
          if ((8 * a4) < 0x80)
          {
LABEL_255:
            LOBYTE(v167) = v166;
            goto LABEL_256;
          }
        }

        do
        {
          *v7 = v166 | 0x80;
          v7 = (v7 + 1);
          v167 = v166 >> 7;
          v294 = v166 >> 14;
          v166 >>= 7;
        }

        while (v294);
LABEL_256:
        *v7 = v167;
        v82 = v7 + 1;
        v79 = (2 * v165) ^ (v165 >> 63);
        if (v79 < 0x80)
        {
LABEL_293:
          *v82 = v79;
          return (v82 + 1);
        }

        do
        {
          *v82++ = v79 | 0x80;
          v83 = v79 >> 7;
          v168 = v79 >> 14;
          v79 >>= 7;
        }

        while (v168);
LABEL_500:
        *v82 = v83;
        return (v82 + 1);
      default:
        return v7;
    }
  }

  if (*(this + 11) != 1)
  {
    switch(*(this + 8))
    {
      case 1:
        v21 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v22 = 0;
        v23 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v24 = *(*(*this + 8) + 8 * v22);
            if (v23 >= 0x80)
            {
LABEL_31:
              v26 = (8 * a4) | 1;
              do
              {
                *v7 = v26 | 0x80;
                v7 = (v7 + 1);
                v25 = v26 >> 7;
                v27 = v26 >> 14;
                v26 >>= 7;
              }

              while (v27);
              goto LABEL_28;
            }
          }

          else
          {
            v24 = *(*(v21 + 8) + 8 * v22);
            if (v23 >= 0x80)
            {
              goto LABEL_31;
            }
          }

          LOBYTE(v25) = (8 * a4) | 1;
LABEL_28:
          *v7 = v25;
          *(v7 + 1) = v24;
          v7 = (v7 + 9);
          ++v22;
          v21 = *this;
          if (v22 >= **this)
          {
            return v7;
          }
        }

      case 2:
        v158 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v159 = 0;
        v160 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v161 = *(*(*this + 8) + 4 * v159);
            if (v160 >= 0x80)
            {
LABEL_250:
              v163 = (8 * a4) | 5;
              do
              {
                *v7 = v163 | 0x80;
                v7 = (v7 + 1);
                v162 = v163 >> 7;
                v164 = v163 >> 14;
                v163 >>= 7;
              }

              while (v164);
              goto LABEL_247;
            }
          }

          else
          {
            v161 = *(*(v158 + 8) + 4 * v159);
            if (v160 >= 0x80)
            {
              goto LABEL_250;
            }
          }

          LOBYTE(v162) = (8 * a4) | 5;
LABEL_247:
          *v7 = v162;
          *(v7 + 1) = v161;
          v7 = (v7 + 5);
          ++v159;
          v158 = *this;
          if (v159 >= **this)
          {
            return v7;
          }
        }

      case 3:
        v115 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v116 = 0;
        v117 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v118 = *(*(*this + 8) + 8 * v116);
            if (v117 < 0x80)
            {
LABEL_176:
              LOBYTE(v119) = v117;
              goto LABEL_177;
            }
          }

          else
          {
            v118 = *(*(v115 + 8) + 8 * v116);
            if (v117 < 0x80)
            {
              goto LABEL_176;
            }
          }

          v123 = v117;
          do
          {
            *v7 = v123 | 0x80;
            v7 = (v7 + 1);
            v119 = v123 >> 7;
            v124 = v123 >> 14;
            v123 >>= 7;
          }

          while (v124);
LABEL_177:
          *v7 = v119;
          v120 = v7 + 1;
          if (v118 >= 0x80)
          {
            do
            {
              *v120++ = v118 | 0x80;
              v121 = v118 >> 7;
              v122 = v118 >> 14;
              v118 >>= 7;
            }

            while (v122);
          }

          else
          {
            LOBYTE(v121) = v118;
          }

          *v120 = v121;
          v7 = (v120 + 1);
          ++v116;
          v115 = *this;
          if (v116 >= **this)
          {
            return v7;
          }
        }

      case 4:
        v136 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v137 = 0;
        v138 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v139 = *(*(*this + 8) + 8 * v137);
            if (v138 < 0x80)
            {
LABEL_212:
              LOBYTE(v140) = v138;
              goto LABEL_213;
            }
          }

          else
          {
            v139 = *(*(v136 + 8) + 8 * v137);
            if (v138 < 0x80)
            {
              goto LABEL_212;
            }
          }

          v144 = v138;
          do
          {
            *v7 = v144 | 0x80;
            v7 = (v7 + 1);
            v140 = v144 >> 7;
            v145 = v144 >> 14;
            v144 >>= 7;
          }

          while (v145);
LABEL_213:
          *v7 = v140;
          v141 = v7 + 1;
          if (v139 >= 0x80)
          {
            do
            {
              *v141++ = v139 | 0x80;
              v142 = v139 >> 7;
              v143 = v139 >> 14;
              v139 >>= 7;
            }

            while (v143);
          }

          else
          {
            LOBYTE(v142) = v139;
          }

          *v141 = v142;
          v7 = (v141 + 1);
          ++v137;
          v136 = *this;
          if (v137 >= **this)
          {
            return v7;
          }
        }

      case 5:
        v85 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v86 = 0;
        v87 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v88 = *(*(*this + 8) + 4 * v86);
            if (v87 < 0x80)
            {
LABEL_122:
              LOBYTE(v89) = v87;
              goto LABEL_123;
            }
          }

          else
          {
            v88 = *(*(v85 + 8) + 4 * v86);
            if (v87 < 0x80)
            {
              goto LABEL_122;
            }
          }

          v93 = v87;
          do
          {
            *v7 = v93 | 0x80;
            v7 = (v7 + 1);
            v89 = v93 >> 7;
            v94 = v93 >> 14;
            v93 >>= 7;
          }

          while (v94);
LABEL_123:
          *v7 = v89;
          v90 = v7 + 1;
          if (v88 >= 0x80)
          {
            do
            {
              *v90++ = v88 | 0x80;
              v91 = v88 >> 7;
              v92 = v88 >> 14;
              v88 >>= 7;
            }

            while (v92);
          }

          else
          {
            LOBYTE(v91) = v88;
          }

          *v90 = v91;
          v7 = (v90 + 1);
          ++v86;
          v85 = *this;
          if (v86 >= **this)
          {
            return v7;
          }
        }

      case 6:
        v180 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v181 = 0;
        v182 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v183 = *(*(*this + 8) + 8 * v181);
            if (v182 >= 0x80)
            {
LABEL_286:
              v185 = (8 * a4) | 1;
              do
              {
                *v7 = v185 | 0x80;
                v7 = (v7 + 1);
                v184 = v185 >> 7;
                v186 = v185 >> 14;
                v185 >>= 7;
              }

              while (v186);
              goto LABEL_283;
            }
          }

          else
          {
            v183 = *(*(v180 + 8) + 8 * v181);
            if (v182 >= 0x80)
            {
              goto LABEL_286;
            }
          }

          LOBYTE(v184) = (8 * a4) | 1;
LABEL_283:
          *v7 = v184;
          *(v7 + 1) = v183;
          v7 = (v7 + 9);
          ++v181;
          v180 = *this;
          if (v181 >= **this)
          {
            return v7;
          }
        }

      case 7:
        v199 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v200 = 0;
        v201 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v202 = *(*(*this + 8) + 4 * v200);
            if (v201 >= 0x80)
            {
LABEL_321:
              v204 = (8 * a4) | 5;
              do
              {
                *v7 = v204 | 0x80;
                v7 = (v7 + 1);
                v203 = v204 >> 7;
                v205 = v204 >> 14;
                v204 >>= 7;
              }

              while (v205);
              goto LABEL_318;
            }
          }

          else
          {
            v202 = *(*(v199 + 8) + 4 * v200);
            if (v201 >= 0x80)
            {
              goto LABEL_321;
            }
          }

          LOBYTE(v203) = (8 * a4) | 5;
LABEL_318:
          *v7 = v203;
          *(v7 + 1) = v202;
          v7 = (v7 + 5);
          ++v200;
          v199 = *this;
          if (v200 >= **this)
          {
            return v7;
          }
        }

      case 8:
        v149 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v150 = 0;
        v151 = 8 * a4;
        for (i = a5; ; i += 2)
        {
          if (*a6 <= i)
          {
            i = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, i);
            v153 = *(*(*this + 8) + v150);
            if (v151 >= 0x80)
            {
LABEL_235:
              v155 = v151;
              do
              {
                *i++ = v155 | 0x80;
                v154 = v155 >> 7;
                v156 = v155 >> 14;
                v155 >>= 7;
              }

              while (v156);
              goto LABEL_232;
            }
          }

          else
          {
            v153 = *(*(v149 + 8) + v150);
            if (v151 >= 0x80)
            {
              goto LABEL_235;
            }
          }

          LOBYTE(v154) = v151;
LABEL_232:
          *i = v154;
          v7 = (i + 2);
          i[1] = v153;
          ++v150;
          v149 = *this;
          if (v150 >= **this)
          {
            return v7;
          }
        }

      case 9:
        v220 = *this;
        if (*(*this + 8) < 1)
        {
          return v7;
        }

        v221 = 0;
        v222 = 8 * a4;
        v223 = -3;
        if ((8 * a4) < 0x80)
        {
          v223 = -2;
        }

        v224 = -6;
        if (((a4 >> 25) & 0xF) == 0)
        {
          v224 = -5;
        }

        if (v222 < 0x200000)
        {
          v224 = -4;
        }

        if (v222 >= 0x4000)
        {
          v225 = v224;
        }

        else
        {
          v225 = v223;
        }

        do
        {
          while (1)
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v220 = *this;
            }

            if (*v220)
            {
              v220 = *v220 + 8 * v221 + 7;
            }

            v227 = *v220;
            v228 = *(*v220 + 23);
            if ((v228 & 0x8000000000000000) == 0 || (v228 = v227[1], v228 <= 127))
            {
              if (*a6 + v225 - v7 + 16 >= v228)
              {
                break;
              }
            }

            v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v227, v7);
            ++v221;
            v220 = *this;
            if (v221 >= *(*this + 8))
            {
              return v7;
            }
          }

          if (v222 >= 0x80)
          {
            v230 = (8 * a4) | 2;
            do
            {
              *v7 = v230 | 0x80;
              v7 = (v7 + 1);
              v229 = v230 >> 7;
              v231 = v230 >> 14;
              v230 >>= 7;
            }

            while (v231);
          }

          else
          {
            LOBYTE(v229) = (8 * a4) | 2;
          }

          *v7 = v229;
          *(v7 + 1) = v228;
          if (*(v227 + 23) < 0)
          {
            v227 = *v227;
          }

          v226 = v7 + 2;
          memcpy(v226, v227, v228);
          v7 = &v226[v228];
          ++v221;
          v220 = *this;
        }

        while (v221 < *(*this + 8));
        return v7;
      case 0xA:
        v109 = *this;
        if (*(*this + 8) >= 1)
        {
          v110 = 0;
          v111 = 8;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v109 = *this;
            }

            if (*v109)
            {
              v109 = (*v109 + v111 - 1);
            }

            v7 = google::protobuf::internal::WireFormatLite::InternalWriteGroup(a4, *v109, v7, a6, a5);
            ++v110;
            v109 = *this;
            v111 += 8;
          }

          while (v110 < *(*this + 8));
        }

        return v7;
      case 0xB:
        v209 = *this;
        if (*(*this + 8) >= 1)
        {
          v210 = 0;
          v211 = 8;
          do
          {
            if (*v209)
            {
              v209 = (*v209 + v211 - 1);
            }

            v212 = *v209;
            v213 = google::protobuf::MessageLite::GetCachedSize(*v209);
            v7 = google::protobuf::internal::WireFormatLite::InternalWriteMessage(a4, v212, v213, v7, a6, v214);
            ++v210;
            v209 = *this;
            v211 += 8;
          }

          while (v210 < *(*this + 8));
        }

        return v7;
      case 0xC:
        v67 = *this;
        if (*(*this + 8) < 1)
        {
          return v7;
        }

        v68 = 0;
        v69 = 8 * a4;
        v70 = -3;
        if ((8 * a4) < 0x80)
        {
          v70 = -2;
        }

        v71 = -6;
        if (((a4 >> 25) & 0xF) == 0)
        {
          v71 = -5;
        }

        if (v69 < 0x200000)
        {
          v71 = -4;
        }

        if (v69 >= 0x4000)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        do
        {
          while (1)
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v67 = *this;
            }

            if (*v67)
            {
              v67 = *v67 + 8 * v68 + 7;
            }

            v74 = *v67;
            v75 = *(*v67 + 23);
            if ((v75 & 0x8000000000000000) == 0 || (v75 = v74[1], v75 <= 127))
            {
              if (*a6 + v72 - v7 + 16 >= v75)
              {
                break;
              }
            }

            v7 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a6, a4, v74, v7);
            ++v68;
            v67 = *this;
            if (v68 >= *(*this + 8))
            {
              return v7;
            }
          }

          if (v69 >= 0x80)
          {
            v77 = (8 * a4) | 2;
            do
            {
              *v7 = v77 | 0x80;
              v7 = (v7 + 1);
              v76 = v77 >> 7;
              v78 = v77 >> 14;
              v77 >>= 7;
            }

            while (v78);
          }

          else
          {
            LOBYTE(v76) = (8 * a4) | 2;
          }

          *v7 = v76;
          *(v7 + 1) = v75;
          if (*(v74 + 23) < 0)
          {
            v74 = *v74;
          }

          v73 = v7 + 2;
          memcpy(v73, v74, v75);
          v7 = &v73[v75];
          ++v68;
          v67 = *this;
        }

        while (v68 < *(*this + 8));
        return v7;
      case 0xD:
        v97 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v98 = 0;
        v99 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v100 = *(*(*this + 8) + 4 * v98);
            if (v99 < 0x80)
            {
LABEL_142:
              LOBYTE(v101) = v99;
              goto LABEL_143;
            }
          }

          else
          {
            v100 = *(*(v97 + 8) + 4 * v98);
            if (v99 < 0x80)
            {
              goto LABEL_142;
            }
          }

          v105 = v99;
          do
          {
            *v7 = v105 | 0x80;
            v7 = (v7 + 1);
            v101 = v105 >> 7;
            v106 = v105 >> 14;
            v105 >>= 7;
          }

          while (v106);
LABEL_143:
          *v7 = v101;
          v102 = v7 + 1;
          if (v100 >= 0x80)
          {
            do
            {
              *v102++ = v100 | 0x80;
              v103 = v100 >> 7;
              v104 = v100 >> 14;
              v100 >>= 7;
            }

            while (v104);
          }

          else
          {
            LOBYTE(v103) = v100;
          }

          *v102 = v103;
          v7 = (v102 + 1);
          ++v98;
          v97 = *this;
          if (v98 >= **this)
          {
            return v7;
          }
        }

      case 0xE:
        v189 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v190 = 0;
        v191 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v192 = *(*(*this + 8) + 4 * v190);
            if (v191 < 0x80)
            {
LABEL_298:
              LOBYTE(v193) = v191;
              goto LABEL_299;
            }
          }

          else
          {
            v192 = *(*(v189 + 8) + 4 * v190);
            if (v191 < 0x80)
            {
              goto LABEL_298;
            }
          }

          v197 = v191;
          do
          {
            *v7 = v197 | 0x80;
            v7 = (v7 + 1);
            v193 = v197 >> 7;
            v198 = v197 >> 14;
            v197 >>= 7;
          }

          while (v198);
LABEL_299:
          *v7 = v193;
          v194 = v7 + 1;
          if (v192 >= 0x80)
          {
            do
            {
              *v194++ = v192 | 0x80;
              v195 = v192 >> 7;
              v196 = v192 >> 14;
              v192 >>= 7;
            }

            while (v196);
          }

          else
          {
            LOBYTE(v195) = v192;
          }

          *v194 = v195;
          v7 = (v194 + 1);
          ++v190;
          v189 = *this;
          if (v190 >= **this)
          {
            return v7;
          }
        }

      case 0xF:
        v50 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v51 = 0;
        v52 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v53 = *(*(*this + 8) + 4 * v51);
            if (v52 >= 0x80)
            {
LABEL_67:
              v55 = (8 * a4) | 5;
              do
              {
                *v7 = v55 | 0x80;
                v7 = (v7 + 1);
                v54 = v55 >> 7;
                v56 = v55 >> 14;
                v55 >>= 7;
              }

              while (v56);
              goto LABEL_64;
            }
          }

          else
          {
            v53 = *(*(v50 + 8) + 4 * v51);
            if (v52 >= 0x80)
            {
              goto LABEL_67;
            }
          }

          LOBYTE(v54) = (8 * a4) | 5;
LABEL_64:
          *v7 = v54;
          *(v7 + 1) = v53;
          v7 = (v7 + 5);
          ++v51;
          v50 = *this;
          if (v51 >= **this)
          {
            return v7;
          }
        }

      case 0x10:
        v126 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v127 = 0;
        v128 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v129 = *(*(*this + 8) + 8 * v127);
            if (v128 >= 0x80)
            {
LABEL_199:
              v131 = (8 * a4) | 1;
              do
              {
                *v7 = v131 | 0x80;
                v7 = (v7 + 1);
                v130 = v131 >> 7;
                v132 = v131 >> 14;
                v131 >>= 7;
              }

              while (v132);
              goto LABEL_196;
            }
          }

          else
          {
            v129 = *(*(v126 + 8) + 8 * v127);
            if (v128 >= 0x80)
            {
              goto LABEL_199;
            }
          }

          LOBYTE(v130) = (8 * a4) | 1;
LABEL_196:
          *v7 = v130;
          *(v7 + 1) = v129;
          v7 = (v7 + 9);
          ++v127;
          v126 = *this;
          if (v127 >= **this)
          {
            return v7;
          }
        }

      case 0x11:
        v35 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v36 = 0;
        v37 = 8 * a4;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v38 = *(*(*this + 8) + 4 * v36);
            if (v37 < 0x80)
            {
LABEL_44:
              LOBYTE(v39) = v37;
              goto LABEL_45;
            }
          }

          else
          {
            v38 = *(*(v35 + 8) + 4 * v36);
            if (v37 < 0x80)
            {
              goto LABEL_44;
            }
          }

          v44 = v37;
          do
          {
            *v7 = v44 | 0x80;
            v7 = (v7 + 1);
            v39 = v44 >> 7;
            v45 = v44 >> 14;
            v44 >>= 7;
          }

          while (v45);
LABEL_45:
          *v7 = v39;
          v40 = v7 + 1;
          v41 = (2 * v38) ^ (v38 >> 31);
          if (v41 >= 0x80)
          {
            do
            {
              *v40++ = v41 | 0x80;
              v42 = v41 >> 7;
              v43 = v41 >> 14;
              v41 >>= 7;
            }

            while (v43);
          }

          else
          {
            LOBYTE(v42) = v41;
          }

          *v40 = v42;
          v7 = (v40 + 1);
          ++v36;
          v35 = *this;
          if (v36 >= **this)
          {
            return v7;
          }
        }

      case 0x12:
        v169 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v170 = 0;
        v171 = 8 * a4;
        break;
      default:
        return v7;
    }

    while (1)
    {
      if (*a6 <= v7)
      {
        v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
        v172 = *(*(*this + 8) + 8 * v170);
        if (v171 < 0x80)
        {
LABEL_263:
          LOBYTE(v173) = v171;
          goto LABEL_264;
        }
      }

      else
      {
        v172 = *(*(v169 + 8) + 8 * v170);
        if (v171 < 0x80)
        {
          goto LABEL_263;
        }
      }

      v178 = v171;
      do
      {
        *v7 = v178 | 0x80;
        v7 = (v7 + 1);
        v173 = v178 >> 7;
        v179 = v178 >> 14;
        v178 >>= 7;
      }

      while (v179);
LABEL_264:
      *v7 = v173;
      v174 = v7 + 1;
      v175 = (2 * v172) ^ (v172 >> 63);
      if (v175 >= 0x80)
      {
        do
        {
          *v174++ = v175 | 0x80;
          v176 = v175 >> 7;
          v177 = v175 >> 14;
          v175 >>= 7;
        }

        while (v177);
      }

      else
      {
        LOBYTE(v176) = v175;
      }

      *v174 = v176;
      v7 = (v174 + 1);
      ++v170;
      v169 = *this;
      if (v170 >= **this)
      {
        return v7;
      }
    }
  }

  if (*(this + 3))
  {
    if (*a6 <= a5)
    {
      v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, a5);
      v10 = (8 * a4) | 2;
      if ((8 * a4) < 0x80)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = (8 * a4) | 2;
      if ((8 * a4) < 0x80)
      {
LABEL_6:
        LOBYTE(v11) = v10;
        goto LABEL_7;
      }
    }

    do
    {
      *v7 = v10 | 0x80;
      v7 = (v7 + 1);
      v11 = v10 >> 7;
      v285 = v10 >> 14;
      v10 >>= 7;
    }

    while (v285);
LABEL_7:
    *v7 = v11;
    v12 = v7 + 1;
    v13 = *(this + 3);
    if (v13 >= 0x80)
    {
      do
      {
        *v12++ = v13 | 0x80;
        v14 = v13 >> 7;
        v284 = v13 >> 14;
        v13 >>= 7;
      }

      while (v284);
    }

    else
    {
      LODWORD(v14) = *(this + 3);
    }

    *v12 = v14;
    v7 = (v12 + 1);
    switch(*(this + 8))
    {
      case 1:
        v15 = *this;
        if (**this >= 1)
        {
          v16 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v15 = *this;
            }

            *v7 = *(*(v15 + 8) + 8 * v16);
            v7 = (v7 + 8);
            ++v16;
            v15 = *this;
          }

          while (v16 < **this);
        }

        return v7;
      case 2:
        v270 = *this;
        if (**this >= 1)
        {
          v271 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v270 = *this;
            }

            *v7 = *(*(v270 + 8) + 4 * v271);
            v7 = (v7 + 4);
            ++v271;
            v270 = *this;
          }

          while (v271 < **this);
        }

        return v7;
      case 3:
        v258 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v259 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v260 = *(*(*this + 8) + 8 * v259);
            if (v260 >= 0x80)
            {
              do
              {
LABEL_439:
                *v7 = v260 | 0x80;
                v7 = (v7 + 1);
                v261 = v260 >> 7;
                v262 = v260 >> 14;
                v260 >>= 7;
              }

              while (v262);
              goto LABEL_436;
            }
          }

          else
          {
            v260 = *(*(v258 + 8) + 8 * v259);
            if (v260 >= 0x80)
            {
              goto LABEL_439;
            }
          }

          LOBYTE(v261) = v260;
LABEL_436:
          *v7 = v261;
          v7 = (v7 + 1);
          ++v259;
          v258 = *this;
          if (v259 >= **this)
          {
            return v7;
          }
        }

      case 4:
        v263 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v264 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v265 = *(*(*this + 8) + 8 * v264);
            if (v265 >= 0x80)
            {
              do
              {
LABEL_449:
                *v7 = v265 | 0x80;
                v7 = (v7 + 1);
                v266 = v265 >> 7;
                v267 = v265 >> 14;
                v265 >>= 7;
              }

              while (v267);
              goto LABEL_446;
            }
          }

          else
          {
            v265 = *(*(v263 + 8) + 8 * v264);
            if (v265 >= 0x80)
            {
              goto LABEL_449;
            }
          }

          LOBYTE(v266) = v265;
LABEL_446:
          *v7 = v266;
          v7 = (v7 + 1);
          ++v264;
          v263 = *this;
          if (v264 >= **this)
          {
            return v7;
          }
        }

      case 5:
        v246 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v247 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v248 = *(*(*this + 8) + 4 * v247);
            if (v248 >= 0x80)
            {
              do
              {
LABEL_413:
                *v7 = v248 | 0x80;
                v7 = (v7 + 1);
                v249 = v248 >> 7;
                v250 = v248 >> 14;
                v248 >>= 7;
              }

              while (v250);
              goto LABEL_410;
            }
          }

          else
          {
            v248 = *(*(v246 + 8) + 4 * v247);
            if (v248 >= 0x80)
            {
              goto LABEL_413;
            }
          }

          LOBYTE(v249) = v248;
LABEL_410:
          *v7 = v249;
          v7 = (v7 + 1);
          ++v247;
          v246 = *this;
          if (v247 >= **this)
          {
            return v7;
          }
        }

      case 6:
        v272 = *this;
        if (**this >= 1)
        {
          v273 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v272 = *this;
            }

            *v7 = *(*(v272 + 8) + 8 * v273);
            v7 = (v7 + 8);
            ++v273;
            v272 = *this;
          }

          while (v273 < **this);
        }

        return v7;
      case 7:
        v281 = *this;
        if (**this >= 1)
        {
          v282 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v281 = *this;
            }

            *v7 = *(*(v281 + 8) + 4 * v282);
            v7 = (v7 + 4);
            ++v282;
            v281 = *this;
          }

          while (v282 < **this);
        }

        return v7;
      case 8:
        v268 = *this;
        if (**this >= 1)
        {
          v269 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v268 = *this;
            }

            *v7 = *(*(v268 + 8) + v269);
            v7 = (v7 + 1);
            ++v269;
            v268 = *this;
          }

          while (v269 < **this);
        }

        return v7;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v299, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1744);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v299, "Non-primitive types can't be packed.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v299);
      case 0xD:
        v253 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v254 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v255 = *(*(*this + 8) + 4 * v254);
            if (v255 >= 0x80)
            {
              do
              {
LABEL_429:
                *v7 = v255 | 0x80;
                v7 = (v7 + 1);
                v256 = v255 >> 7;
                v257 = v255 >> 14;
                v255 >>= 7;
              }

              while (v257);
              goto LABEL_426;
            }
          }

          else
          {
            v255 = *(*(v253 + 8) + 4 * v254);
            if (v255 >= 0x80)
            {
              goto LABEL_429;
            }
          }

          LOBYTE(v256) = v255;
LABEL_426:
          *v7 = v256;
          v7 = (v7 + 1);
          ++v254;
          v253 = *this;
          if (v254 >= **this)
          {
            return v7;
          }
        }

      case 0xE:
        v241 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v242 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v243 = *(*(*this + 8) + 4 * v242);
            if (v243 >= 0x80)
            {
              do
              {
LABEL_403:
                *v7 = v243 | 0x80;
                v7 = (v7 + 1);
                v244 = v243 >> 7;
                v245 = v243 >> 14;
                v243 >>= 7;
              }

              while (v245);
              goto LABEL_400;
            }
          }

          else
          {
            v243 = *(*(v241 + 8) + 4 * v242);
            if (v243 >= 0x80)
            {
              goto LABEL_403;
            }
          }

          LOBYTE(v244) = v243;
LABEL_400:
          *v7 = v244;
          v7 = (v7 + 1);
          ++v242;
          v241 = *this;
          if (v242 >= **this)
          {
            return v7;
          }
        }

      case 0xF:
        v251 = *this;
        if (**this >= 1)
        {
          v252 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v251 = *this;
            }

            *v7 = *(*(v251 + 8) + 4 * v252);
            v7 = (v7 + 4);
            ++v252;
            v251 = *this;
          }

          while (v252 < **this);
        }

        return v7;
      case 0x10:
        v239 = *this;
        if (**this >= 1)
        {
          v240 = 0;
          do
          {
            if (*a6 <= v7)
            {
              v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
              v239 = *this;
            }

            *v7 = *(*(v239 + 8) + 8 * v240);
            v7 = (v7 + 8);
            ++v240;
            v239 = *this;
          }

          while (v240 < **this);
        }

        return v7;
      case 0x11:
        v274 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v275 = 0;
        while (1)
        {
          if (*a6 <= v7)
          {
            v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
            v279 = *(*(*this + 8) + 4 * v275);
            v277 = (2 * v279) ^ (v279 >> 31);
            if (v277 >= 0x80)
            {
              do
              {
LABEL_477:
                *v7 = v277 | 0x80;
                v7 = (v7 + 1);
                v278 = v277 >> 7;
                v280 = v277 >> 14;
                v277 >>= 7;
              }

              while (v280);
              goto LABEL_474;
            }
          }

          else
          {
            v276 = *(*(v274 + 8) + 4 * v275);
            v277 = (2 * v276) ^ (v276 >> 31);
            if (v277 >= 0x80)
            {
              goto LABEL_477;
            }
          }

          LOBYTE(v278) = v277;
LABEL_474:
          *v7 = v278;
          v7 = (v7 + 1);
          ++v275;
          v274 = *this;
          if (v275 >= **this)
          {
            return v7;
          }
        }

      case 0x12:
        v232 = *this;
        if (**this < 1)
        {
          return v7;
        }

        v233 = 0;
        break;
      default:
        return v7;
    }

    do
    {
      if (*a6 <= v7)
      {
        v7 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a6, v7);
        v237 = *(*(*this + 8) + 8 * v233);
        v235 = (2 * v237) ^ (v237 >> 63);
        if (v235 >= 0x80)
        {
          do
          {
LABEL_387:
            *v7 = v235 | 0x80;
            v7 = (v7 + 1);
            v236 = v235 >> 7;
            v238 = v235 >> 14;
            v235 >>= 7;
          }

          while (v238);
          goto LABEL_384;
        }
      }

      else
      {
        v234 = *(*(v232 + 8) + 8 * v233);
        v235 = (2 * v234) ^ (v234 >> 63);
        if (v235 >= 0x80)
        {
          goto LABEL_387;
        }
      }

      LOBYTE(v236) = v235;
LABEL_384:
      *v7 = v236;
      v7 = (v7 + 1);
      ++v233;
      v232 = *this;
    }

    while (v233 < **this);
  }

  return v7;
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v8[0] = 0;
  v1 = *(this + 5);
  v2 = *(this + 2);
  if (v1 < 0)
  {
    google::protobuf::internal::ExtensionSet::ByteSize(v8, v2);
    return v8[1];
  }

  else
  {
    v3 = 0;
    if (*(this + 5))
    {
      v4 = (v2 + 32 * v1);
      v5 = *(this + 2);
      do
      {
        v6 = *v5;
        v5 += 8;
        v3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize((v2 + 8), v6);
        v2 = v5;
      }

      while (v5 != v4);
    }

    return v3;
  }
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(uint64_t **this, int a2)
{
  if (*(this + 9) == 1)
  {
    v3 = *(this + 8);
    if (*(this + 11) != 1)
    {
      v6 = v3 - 1;
      v7 = ((352 - 9 * __clz(8 * a2)) >> 6) << (v3 == 10);
      switch(v6)
      {
        case 0:
        case 5:
        case 15:
          v8 = v7 + 8;
          return v8 * **this;
        case 1:
        case 6:
        case 14:
          v8 = v7 + 4;
          return v8 * **this;
        case 2:
          v57 = **this;
          v5 = v7 * v57;
          if (v57 < 1)
          {
            return v5;
          }

          v58 = (*this)[1];
          if (v57 == 1)
          {
            v59 = 0;
          }

          else
          {
            v180 = 0;
            v59 = v57 & 0x7FFFFFFE;
            v181 = (v58 + 8);
            v182 = v59;
            do
            {
              v5 += (640 - 9 * __clz(*(v181 - 1))) >> 6;
              v180 += (640 - 9 * __clz(*v181)) >> 6;
              v181 += 2;
              v182 -= 2;
            }

            while (v182);
            v5 += v180;
            if (v59 == v57)
            {
              return v5;
            }
          }

          v183 = (v58 + 8 * v59);
          v184 = v57 - v59;
          do
          {
            v185 = *v183++;
            v5 += (640 - 9 * __clz(v185)) >> 6;
            --v184;
          }

          while (v184);
          return v5;
        case 3:
          v60 = **this;
          v5 = v7 * v60;
          if (v60 < 1)
          {
            return v5;
          }

          v61 = (*this)[1];
          if (v60 == 1)
          {
            v62 = 0;
          }

          else
          {
            v186 = 0;
            v62 = v60 & 0x7FFFFFFE;
            v187 = (v61 + 8);
            v188 = v62;
            do
            {
              v5 += (640 - 9 * __clz(*(v187 - 1))) >> 6;
              v186 += (640 - 9 * __clz(*v187)) >> 6;
              v187 += 2;
              v188 -= 2;
            }

            while (v188);
            v5 += v186;
            if (v62 == v60)
            {
              return v5;
            }
          }

          v189 = (v61 + 8 * v62);
          v190 = v60 - v62;
          do
          {
            v191 = *v189++;
            v5 += (640 - 9 * __clz(v191)) >> 6;
            --v190;
          }

          while (v190);
          return v5;
        case 4:
          v51 = **this;
          v5 = v7 * v51;
          if (v51 < 1)
          {
            return v5;
          }

          v52 = (*this)[1];
          if (v51 == 1)
          {
            v53 = 0;
          }

          else
          {
            v168 = 0;
            v53 = v51 & 0x7FFFFFFE;
            v169 = (v52 + 4);
            v170 = v53;
            do
            {
              v5 += (640 - 9 * __clz(*(v169 - 1))) >> 6;
              v168 += (640 - 9 * __clz(*v169)) >> 6;
              v169 += 2;
              v170 -= 2;
            }

            while (v170);
            v5 += v168;
            if (v53 == v51)
            {
              return v5;
            }
          }

          v171 = (v52 + 4 * v53);
          v172 = v51 - v53;
          do
          {
            v173 = *v171++;
            v5 += (640 - 9 * __clz(v173)) >> 6;
            --v172;
          }

          while (v172);
          return v5;
        case 7:
          return **this + **this * v7;
        case 8:
          v69 = *this;
          v70 = *(*this + 2);
          v5 = v7 * v70;
          if (v70 < 1)
          {
            return v5;
          }

          v71 = *v69;
          if (v70 == 1)
          {
            v72 = 0;
          }

          else
          {
            v209 = 0;
            v72 = v70 & 0x7FFFFFFE;
            v210 = *v69 + 15;
            v211 = v72;
            do
            {
              v212 = (v210 - 8);
              if (v71)
              {
                v213 = v210;
              }

              else
              {
                v212 = *this;
                v213 = *this;
              }

              v214 = *v212;
              v215 = *v213;
              v216 = *(v214 + 23);
              v217 = *(v215 + 23);
              v218 = *(v214 + 8);
              v219 = *(v215 + 8);
              if ((v216 & 0x80u) == 0)
              {
                v218 = v216;
              }

              if ((v217 & 0x80u) == 0)
              {
                v219 = v217;
              }

              v5 += v218 + ((352 - 9 * __clz(v218)) >> 6);
              v209 += v219 + ((352 - 9 * __clz(v219)) >> 6);
              v210 += 16;
              v211 -= 2;
            }

            while (v211);
            v5 += v209;
            if (v72 == v70)
            {
              return v5;
            }
          }

          v220 = *v69 - 1 + 8 * v72 + 8;
          v221 = v70 - v72;
          do
          {
            if (v71)
            {
              v222 = v220;
            }

            else
            {
              v222 = *this;
            }

            v223 = *v222;
            v224 = *(v223 + 23);
            v225 = *(v223 + 8);
            if ((v224 & 0x80u) == 0)
            {
              v225 = v224;
            }

            v5 += v225 + ((352 - 9 * __clz(v225)) >> 6);
            v220 += 8;
            --v221;
          }

          while (v221);
          return v5;
        case 9:
          v39 = *this;
          v40 = *(*this + 2);
          v5 = v7 * v40;
          if (v40 >= 1)
          {
            v41 = 0;
            v42 = 8;
            do
            {
              if (*v39)
              {
                v39 = *v39 + v42 - 1;
              }

              v5 += (*(**v39 + 48))();
              ++v41;
              v39 = *this;
              v42 += 8;
            }

            while (v41 < *(*this + 2));
          }

          return v5;
        case 10:
          v43 = *this;
          v44 = *(*this + 2);
          v5 = v7 * v44;
          if (v44 >= 1)
          {
            v45 = 0;
            v46 = 8;
            do
            {
              if (*v43)
              {
                v43 = *v43 + v46 - 1;
              }

              v47 = (*(**v43 + 48))();
              v5 += v47 + ((352 - 9 * __clz(v47)) >> 6);
              ++v45;
              v43 = *this;
              v46 += 8;
            }

            while (v45 < *(*this + 2));
          }

          return v5;
        case 11:
          v63 = *this;
          v64 = *(*this + 2);
          v5 = v7 * v64;
          if (v64 < 1)
          {
            return v5;
          }

          v65 = *v63;
          if (v64 == 1)
          {
            v66 = 0;
          }

          else
          {
            v192 = 0;
            v66 = v64 & 0x7FFFFFFE;
            v193 = *v63 + 15;
            v194 = v66;
            do
            {
              v195 = (v193 - 8);
              if (v65)
              {
                v196 = v193;
              }

              else
              {
                v195 = *this;
                v196 = *this;
              }

              v197 = *v195;
              v198 = *v196;
              v199 = *(v197 + 23);
              v200 = *(v198 + 23);
              v201 = *(v197 + 8);
              v202 = *(v198 + 8);
              if ((v199 & 0x80u) == 0)
              {
                v201 = v199;
              }

              if ((v200 & 0x80u) == 0)
              {
                v202 = v200;
              }

              v5 += v201 + ((352 - 9 * __clz(v201)) >> 6);
              v192 += v202 + ((352 - 9 * __clz(v202)) >> 6);
              v193 += 16;
              v194 -= 2;
            }

            while (v194);
            v5 += v192;
            if (v66 == v64)
            {
              return v5;
            }
          }

          v203 = *v63 - 1 + 8 * v66 + 8;
          v204 = v64 - v66;
          do
          {
            if (v65)
            {
              v205 = v203;
            }

            else
            {
              v205 = *this;
            }

            v206 = *v205;
            v207 = *(v206 + 23);
            v208 = *(v206 + 8);
            if ((v207 & 0x80u) == 0)
            {
              v208 = v207;
            }

            v5 += v208 + ((352 - 9 * __clz(v208)) >> 6);
            v203 += 8;
            --v204;
          }

          while (v204);
          return v5;
        case 12:
          v36 = **this;
          v5 = v7 * v36;
          if (v36 < 1)
          {
            return v5;
          }

          v37 = (*this)[1];
          if (v36 >= 8)
          {
            v38 = v36 & 0x7FFFFFF8;
            v149 = 0uLL;
            v150 = v5;
            v151 = (v37 + 16);
            v152.i64[0] = 0x800000008;
            v152.i64[1] = 0x800000008;
            v153 = vdupq_n_s32(0x160u);
            v154 = v38;
            v155 = 0uLL;
            v156 = 0uLL;
            do
            {
              v157 = vshrq_n_u32(vmlaq_s32(v153, vclzq_s32(v151[-1]), v152), 6uLL);
              v158 = vshrq_n_u32(vmlaq_s32(v153, vclzq_s32(*v151), v152), 6uLL);
              v149 = vaddw_high_u32(v149, v157);
              v150 = vaddw_u32(v150, *v157.i8);
              v156 = vaddw_high_u32(v156, v158);
              v155 = vaddw_u32(v155, *v158.i8);
              v151 += 2;
              v154 -= 8;
            }

            while (v154);
            v5 = vaddvq_s64(vaddq_s64(vaddq_s64(v155, v150), vaddq_s64(v156, v149)));
            if (v38 == v36)
            {
              return v5;
            }
          }

          else
          {
            v38 = 0;
          }

          v159 = (v37 + 4 * v38);
          v160 = v36 - v38;
          do
          {
            v161 = *v159++;
            v5 += (352 - 9 * __clz(v161)) >> 6;
            --v160;
          }

          while (v160);
          return v5;
        case 13:
          v48 = **this;
          v5 = v7 * v48;
          if (v48 < 1)
          {
            return v5;
          }

          v49 = (*this)[1];
          if (v48 == 1)
          {
            v50 = 0;
          }

          else
          {
            v162 = 0;
            v50 = v48 & 0x7FFFFFFE;
            v163 = (v49 + 4);
            v164 = v50;
            do
            {
              v5 += (640 - 9 * __clz(*(v163 - 1))) >> 6;
              v162 += (640 - 9 * __clz(*v163)) >> 6;
              v163 += 2;
              v164 -= 2;
            }

            while (v164);
            v5 += v162;
            if (v50 == v48)
            {
              return v5;
            }
          }

          v165 = (v49 + 4 * v50);
          v166 = v48 - v50;
          do
          {
            v167 = *v165++;
            v5 += (640 - 9 * __clz(v167)) >> 6;
            --v166;
          }

          while (v166);
          return v5;
        case 16:
          v32 = **this;
          v5 = v7 * v32;
          if (v32 < 1)
          {
            return v5;
          }

          v33 = (*this)[1];
          if (v32 >= 8)
          {
            v34 = v32 & 0x7FFFFFF8;
            v136 = 0uLL;
            v137 = v5;
            v138 = (v33 + 16);
            v139.i64[0] = 0x800000008;
            v139.i64[1] = 0x800000008;
            v140 = vdupq_n_s32(0x160u);
            v141 = v34;
            v142 = 0uLL;
            v143 = 0uLL;
            do
            {
              v144 = vshrq_n_u32(vmlaq_s32(v140, vclzq_s32(veorq_s8(vaddq_s32(v138[-1], v138[-1]), vcltzq_s32(v138[-1]))), v139), 6uLL);
              v145 = vshrq_n_u32(vmlaq_s32(v140, vclzq_s32(veorq_s8(vaddq_s32(*v138, *v138), vcltzq_s32(*v138))), v139), 6uLL);
              v136 = vaddw_high_u32(v136, v144);
              v137 = vaddw_u32(v137, *v144.i8);
              v143 = vaddw_high_u32(v143, v145);
              v142 = vaddw_u32(v142, *v145.i8);
              v138 += 2;
              v141 -= 8;
            }

            while (v141);
            v5 = vaddvq_s64(vaddq_s64(vaddq_s64(v142, v137), vaddq_s64(v143, v136)));
            if (v34 == v32)
            {
              return v5;
            }
          }

          else
          {
            v34 = 0;
          }

          v146 = (v33 + 4 * v34);
          v147 = v32 - v34;
          do
          {
            v148 = *v146++;
            v5 += (352 - 9 * __clz((2 * v148) ^ (v148 >> 31))) >> 6;
            --v147;
          }

          while (v147);
          return v5;
        case 17:
          v54 = **this;
          v5 = v7 * v54;
          if (v54 < 1)
          {
            return v5;
          }

          v55 = (*this)[1];
          if (v54 == 1)
          {
            v56 = 0;
          }

          else
          {
            v174 = 0;
            v56 = v54 & 0x7FFFFFFE;
            v175 = (v55 + 8);
            v176 = v56;
            do
            {
              v5 += (640 - 9 * __clz((2 * *(v175 - 1)) ^ (*(v175 - 1) >> 63))) >> 6;
              v174 += (640 - 9 * __clz((2 * *v175) ^ (*v175 >> 63))) >> 6;
              v175 += 2;
              v176 -= 2;
            }

            while (v176);
            v5 += v174;
            if (v56 == v54)
            {
              return v5;
            }
          }

          v177 = (v55 + 8 * v56);
          v178 = v54 - v56;
          do
          {
            v179 = *v177++;
            v5 += (640 - 9 * __clz((2 * v179) ^ (v179 >> 63))) >> 6;
            --v178;
          }

          while (v178);
          return v5;
        default:
          return 0;
      }
    }

    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        v4 = 8 * **this;
        goto LABEL_135;
      case 2:
      case 7:
      case 0xF:
        v4 = 4 * **this;
        goto LABEL_135;
      case 3:
        v23 = **this;
        if (v23 < 1)
        {
          goto LABEL_42;
        }

        v24 = (*this)[1];
        if (v23 == 1)
        {
          v25 = 0;
          v4 = 0;
LABEL_121:
          v111 = (v24 + 8 * v25);
          v112 = v23 - v25;
          do
          {
            v113 = *v111++;
            v4 += (640 - 9 * __clz(v113)) >> 6;
            --v112;
          }

          while (v112);
          goto LABEL_135;
        }

        v107 = 0;
        v108 = 0;
        v25 = v23 & 0x7FFFFFFE;
        v109 = (v24 + 8);
        v110 = v25;
        do
        {
          v107 += (640 - 9 * __clz(*(v109 - 1))) >> 6;
          v108 += (640 - 9 * __clz(*v109)) >> 6;
          v109 += 2;
          v110 -= 2;
        }

        while (v110);
        v4 = v108 + v107;
        if (v25 != v23)
        {
          goto LABEL_121;
        }

        goto LABEL_135;
      case 4:
        v26 = **this;
        if (v26 < 1)
        {
          goto LABEL_42;
        }

        v27 = (*this)[1];
        if (v26 == 1)
        {
          v28 = 0;
          v4 = 0;
LABEL_127:
          v118 = (v27 + 8 * v28);
          v119 = v26 - v28;
          do
          {
            v120 = *v118++;
            v4 += (640 - 9 * __clz(v120)) >> 6;
            --v119;
          }

          while (v119);
          goto LABEL_135;
        }

        v114 = 0;
        v115 = 0;
        v28 = v26 & 0x7FFFFFFE;
        v116 = (v27 + 8);
        v117 = v28;
        do
        {
          v114 += (640 - 9 * __clz(*(v116 - 1))) >> 6;
          v115 += (640 - 9 * __clz(*v116)) >> 6;
          v116 += 2;
          v117 -= 2;
        }

        while (v117);
        v4 = v115 + v114;
        if (v28 != v26)
        {
          goto LABEL_127;
        }

        goto LABEL_135;
      case 5:
        v20 = **this;
        if (v20 < 1)
        {
          goto LABEL_42;
        }

        v21 = (*this)[1];
        if (v20 == 1)
        {
          v22 = 0;
          v4 = 0;
LABEL_115:
          v104 = (v21 + 4 * v22);
          v105 = v20 - v22;
          do
          {
            v106 = *v104++;
            v4 += (640 - 9 * __clz(v106)) >> 6;
            --v105;
          }

          while (v105);
          goto LABEL_135;
        }

        v100 = 0;
        v101 = 0;
        v22 = v20 & 0x7FFFFFFE;
        v102 = (v21 + 4);
        v103 = v22;
        do
        {
          v100 += (640 - 9 * __clz(*(v102 - 1))) >> 6;
          v101 += (640 - 9 * __clz(*v102)) >> 6;
          v102 += 2;
          v103 -= 2;
        }

        while (v103);
        v4 = v101 + v100;
        if (v22 != v20)
        {
          goto LABEL_115;
        }

        goto LABEL_135;
      case 8:
        v4 = **this;
        goto LABEL_135;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v226, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/extension_set.cc", 1383);
        absl::lts_20240722::log_internal::LogMessage::operator<<<20>(v226, "Non-primitive types can't be packed.");
        absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v226);
      case 0xD:
        v17 = **this;
        if (v17 < 1)
        {
          goto LABEL_42;
        }

        v18 = (*this)[1];
        if (v17 <= 7)
        {
          v19 = 0;
          v4 = 0;
LABEL_109:
          v97 = (v18 + 4 * v19);
          v98 = v17 - v19;
          do
          {
            v99 = *v97++;
            v4 += (352 - 9 * __clz(v99)) >> 6;
            --v98;
          }

          while (v98);
          goto LABEL_135;
        }

        v19 = v17 & 0x7FFFFFF8;
        v87 = (v18 + 16);
        v88 = 0uLL;
        v89.i64[0] = 0x800000008;
        v89.i64[1] = 0x800000008;
        v90 = vdupq_n_s32(0x160u);
        v91 = v19;
        v92 = 0uLL;
        v93 = 0uLL;
        v94 = 0uLL;
        do
        {
          v95 = vshrq_n_u32(vmlaq_s32(v90, vclzq_s32(v87[-1]), v89), 6uLL);
          v96 = vshrq_n_u32(vmlaq_s32(v90, vclzq_s32(*v87), v89), 6uLL);
          v92 = vaddw_high_u32(v92, v95);
          v88 = vaddw_u32(v88, *v95.i8);
          v94 = vaddw_high_u32(v94, v96);
          v93 = vaddw_u32(v93, *v96.i8);
          v87 += 2;
          v91 -= 8;
        }

        while (v91);
        v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v93, v88), vaddq_s64(v94, v92)));
        if (v19 != v17)
        {
          goto LABEL_109;
        }

        goto LABEL_135;
      case 0xE:
        v14 = **this;
        if (v14 < 1)
        {
          goto LABEL_42;
        }

        v15 = (*this)[1];
        if (v14 == 1)
        {
          v16 = 0;
          v4 = 0;
LABEL_103:
          v84 = (v15 + 4 * v16);
          v85 = v14 - v16;
          do
          {
            v86 = *v84++;
            v4 += (640 - 9 * __clz(v86)) >> 6;
            --v85;
          }

          while (v85);
          goto LABEL_135;
        }

        v80 = 0;
        v81 = 0;
        v16 = v14 & 0x7FFFFFFE;
        v82 = (v15 + 4);
        v83 = v16;
        do
        {
          v80 += (640 - 9 * __clz(*(v82 - 1))) >> 6;
          v81 += (640 - 9 * __clz(*v82)) >> 6;
          v82 += 2;
          v83 -= 2;
        }

        while (v83);
        v4 = v81 + v80;
        if (v16 != v14)
        {
          goto LABEL_103;
        }

        goto LABEL_135;
      case 0x11:
        v29 = **this;
        if (v29 < 1)
        {
          goto LABEL_42;
        }

        v30 = (*this)[1];
        if (v29 <= 7)
        {
          v31 = 0;
          v4 = 0;
LABEL_133:
          v131 = (v30 + 4 * v31);
          v132 = v29 - v31;
          do
          {
            v133 = *v131++;
            v4 += (352 - 9 * __clz((2 * v133) ^ (v133 >> 31))) >> 6;
            --v132;
          }

          while (v132);
          goto LABEL_135;
        }

        v31 = v29 & 0x7FFFFFF8;
        v121 = (v30 + 16);
        v122 = 0uLL;
        v123.i64[0] = 0x800000008;
        v123.i64[1] = 0x800000008;
        v124 = vdupq_n_s32(0x160u);
        v125 = v31;
        v126 = 0uLL;
        v127 = 0uLL;
        v128 = 0uLL;
        do
        {
          v129 = vshrq_n_u32(vmlaq_s32(v124, vclzq_s32(veorq_s8(vaddq_s32(v121[-1], v121[-1]), vcltzq_s32(v121[-1]))), v123), 6uLL);
          v130 = vshrq_n_u32(vmlaq_s32(v124, vclzq_s32(veorq_s8(vaddq_s32(*v121, *v121), vcltzq_s32(*v121))), v123), 6uLL);
          v126 = vaddw_high_u32(v126, v129);
          v122 = vaddw_u32(v122, *v129.i8);
          v128 = vaddw_high_u32(v128, v130);
          v127 = vaddw_u32(v127, *v130.i8);
          v121 += 2;
          v125 -= 8;
        }

        while (v125);
        v4 = vaddvq_s64(vaddq_s64(vaddq_s64(v127, v122), vaddq_s64(v128, v126)));
        if (v31 != v29)
        {
          goto LABEL_133;
        }

        goto LABEL_135;
      case 0x12:
        v11 = **this;
        if (v11 < 1)
        {
          goto LABEL_42;
        }

        v12 = (*this)[1];
        if (v11 == 1)
        {
          v13 = 0;
          v4 = 0;
LABEL_97:
          v77 = (v12 + 8 * v13);
          v78 = v11 - v13;
          do
          {
            v79 = *v77++;
            v4 += (640 - 9 * __clz((2 * v79) ^ (v79 >> 63))) >> 6;
            --v78;
          }

          while (v78);
          goto LABEL_135;
        }

        v73 = 0;
        v74 = 0;
        v13 = v11 & 0x7FFFFFFE;
        v75 = (v12 + 8);
        v76 = v13;
        do
        {
          v73 += (640 - 9 * __clz((2 * *(v75 - 1)) ^ (*(v75 - 1) >> 63))) >> 6;
          v74 += (640 - 9 * __clz((2 * *v75) ^ (*v75 >> 63))) >> 6;
          v75 += 2;
          v76 -= 2;
        }

        while (v76);
        v4 = v74 + v73;
        if (v13 != v11)
        {
          goto LABEL_97;
        }

LABEL_135:
        *(this + 3) = v4;
        v134 = v4 + ((352 - 9 * __clz((8 * a2) | 2)) >> 6) + ((352 - 9 * __clz(v4)) >> 6);
        if (v4)
        {
          v5 = v134;
        }

        else
        {
          v5 = 0;
        }

        break;
      default:
LABEL_42:
        v5 = 0;
        *(this + 3) = 0;
        return v5;
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v5 = ((352 - 9 * __clz(8 * a2)) >> 6) << (*(this + 8) == 10);
    switch(*(this + 8))
    {
      case 1:
      case 6:
      case 0x10:
        v5 += 8;
        return v5;
      case 2:
      case 7:
      case 0xF:
        v5 += 4;
        return v5;
      case 3:
      case 4:
        v10 = *this;
        goto LABEL_74;
      case 5:
      case 0xE:
        v10 = *this;
        goto LABEL_74;
      case 8:
        return ++v5;
      case 9:
      case 0xC:
        v9 = (*this)[1];
        if (*(*this + 23) >= 0)
        {
          v9 = *(*this + 23);
        }

        v5 += v9 + ((352 - 9 * __clz(v9)) >> 6);
        return v5;
      case 0xA:
        v5 += (*(**this + 48))();
        return v5;
      case 0xB:
        v67 = **this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v68 = (*(v67 + 96))();
        }

        else
        {
          v68 = (*(v67 + 48))();
        }

        v5 += v68 + ((352 - 9 * __clz(v68)) >> 6);
        return v5;
      case 0xD:
        v35 = *this;
        goto LABEL_85;
      case 0x11:
        v35 = (2 * *this) ^ (*this >> 31);
LABEL_85:
        v5 += (352 - 9 * __clz(v35)) >> 6;
        break;
      case 0x12:
        v10 = (2 * *this) ^ (*this >> 63);
LABEL_74:
        v5 += (-9 * __clz(v10) + 640) >> 6;
        break;
      default:
        return v5;
    }
  }

  return v5;
}