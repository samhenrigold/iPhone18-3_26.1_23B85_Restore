void sub_23CB008D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_23CB0097C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v10 = *(v9 - 1);
    v9 -= 3;
    if (v10 < 0)
    {
      operator delete(*v9);
    }

    if (v9 == &a9)
    {
      JUMPOUT(0x23CB00958);
    }
  }
}

void operations_research::sat::SharedIncompleteSolutionManager::TableLineStats(std::string *__return_ptr a1@<X8>, operations_research::sat::SharedIncompleteSolutionManager *this@<X0>, uint64_t a3@<X1>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  absl::lts_20240722::Mutex::Lock(this, a3);
  v12[0] = "'";
  v12[1] = 1;
  v11[0] = "pump";
  v11[1] = 4;
  *&v10[0] = "':";
  *(&v10[0] + 1) = 2;
  absl::lts_20240722::StrCat(v12, v11, v10, &v7);
  operations_research::sat::FormatCounter(&v8, *(this + 7), v5);
  operations_research::sat::FormatCounter(&__p, *(this + 8), v6);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(a1, &v7, v10, 3uLL);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    operator delete(v7.__r_.__value_.__l.__data_);
    goto LABEL_4;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  absl::lts_20240722::Mutex::Unlock(this);
}

void sub_23CB00AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_23CB00B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  while (1)
  {
    v10 = *(v9 - 1);
    v9 -= 3;
    if (v10 < 0)
    {
      operator delete(*v9);
    }

    if (v9 == &a9)
    {
      JUMPOUT(0x23CB00B3CLL);
    }
  }
}

void ***std::vector<std::vector<std::string>>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 1);
              v9 -= 3;
              if (v10 < 0)
              {
                operator delete(*v9);
              }
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *std::vector<std::unique_ptr<operations_research::sat::SubSolver>>::~vector[abi:ne200100](void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::anonymous namespace::SharedClasses::~SharedClasses(operations_research::sat::_anonymous_namespace_::SharedClasses *this)
{
  operations_research::sat::SharedStatTables::~SharedStatTables((this + 88));
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    std::default_delete<operations_research::sat::SharedClausesManager>::operator()[abi:ne200100](this + 80, v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    std::deque<std::vector<operations_research::sat::Literal>>::~deque[abi:ne200100](v3 + 8);
    absl::lts_20240722::Mutex::~Mutex(v3);
    MEMORY[0x23EED9460]();
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    v5 = operations_research::sat::SharedSolutionRepository<double>::~SharedSolutionRepository(v4);
    MEMORY[0x23EED9460](v5, 0x1032C40716D7775);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    operations_research::sat::SharedBoundsManager::~SharedBoundsManager(v6);
    MEMORY[0x23EED9460]();
  }
}

operations_research::sat::SharedTreeManager *operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedTreeManager>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

absl::lts_20240722::Mutex **operations_research::sat::Model::Delete<operations_research::sat::SharedTreeManager>::~Delete(absl::lts_20240722::Mutex **a1)
{
  *a1 = &unk_284F3E628;
  std::unique_ptr<operations_research::sat::SharedTreeManager>::reset[abi:ne200100](a1 + 1, 0);
  return a1;
}

void operations_research::sat::Model::Delete<operations_research::sat::SharedTreeManager>::~Delete(absl::lts_20240722::Mutex **a1)
{
  *a1 = &unk_284F3E628;
  std::unique_ptr<operations_research::sat::SharedTreeManager>::reset[abi:ne200100](a1 + 1, 0);

  JUMPOUT(0x23EED9460);
}

absl::lts_20240722::Mutex **std::unique_ptr<operations_research::sat::SharedTreeManager>::reset[abi:ne200100](absl::lts_20240722::Mutex **result, absl::lts_20240722::Mutex *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 19);
    if (v3)
    {
      *(v2 + 20) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      *(v2 + 17) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 11);
    if (v5)
    {
      *(v2 + 12) = v5;
      operator delete(v5);
    }

    std::deque<operations_research::sat::SharedTreeManager::Node>::~deque[abi:ne200100](v2 + 40);
    absl::lts_20240722::Mutex::~Mutex(v2);

    JUMPOUT(0x23EED9460);
  }

  return result;
}

uint64_t std::deque<operations_research::sat::SharedTreeManager::Node>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 36;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 73;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      do
      {
        v7 -= 8;
      }

      while (v7 != v8);
      *(a1 + 16) = v7;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void operations_research::sat::SharedBoundsManager::~SharedBoundsManager(void **this)
{
  if (*(this + 303) < 0)
  {
    operator delete(this[35]);
  }

  v2 = this[32];
  if (v2)
  {
    this[33] = v2;
    operator delete(v2);
  }

  if (this[31])
  {
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(this[29]);
  }

  this[29] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  this[30] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  this[31] = 0;
  std::deque<operations_research::SparseBitset<int>>::clear(this + 23);
  v3 = this[24];
  v4 = this[25];
  if (v3 != v4)
  {
    do
    {
      v5 = *v3++;
      operator delete(v5);
    }

    while (v3 != v4);
    v3 = this[24];
    v4 = this[25];
  }

  if (v4 != v3)
  {
    do
    {
      --v4;
    }

    while (v4 != v3);
    this[25] = v4;
  }

  v6 = this[23];
  if (v6)
  {
    operator delete(v6);
  }

  v7 = this[20];
  if (v7)
  {
    this[21] = v7;
    operator delete(v7);
  }

  v8 = this[17];
  if (v8)
  {
    this[18] = v8;
    operator delete(v8);
  }

  v9 = this[13];
  if (v9)
  {
    this[14] = v9;
    operator delete(v9);
  }

  v10 = this[10];
  if (v10)
  {
    this[11] = v10;
    operator delete(v10);
  }

  v11 = this[6];
  if (v11)
  {
    this[7] = v11;
    operator delete(v11);
  }

  v12 = this[3];
  if (v12)
  {
    this[4] = v12;
    operator delete(v12);
  }

  absl::lts_20240722::Mutex::~Mutex((this + 2));
}

uint64_t absl::lts_20240722::btree_map<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>>::~btree_map(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(*result);
    result = v1;
  }

  *result = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 8) = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::EmptyNode(void)::empty_node;
  *(result + 16) = 0;
  return result;
}

void absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::map_params<std::string,int,std::less<std::string>,std::allocator<std::pair<std::string const,int>>,256,false>>::clear_and_delete(_BYTE *__p)
{
  v1 = __p;
  if (__p[11])
  {
    if (__p[10])
    {
      v2 = __p + 39;
      v3 = 32 * __p[10];
      do
      {
        if (*v2 < 0)
        {
          operator delete(*(v2 - 23));
        }

        v2 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    goto LABEL_12;
  }

  if (!__p[10])
  {
LABEL_12:

    operator delete(v1);
    return;
  }

  v4 = *__p;
  do
  {
    v1 = v1[30];
  }

  while (!*(v1 + 11));
  v5 = *(v1 + 8);
  v6 = *v1;
  v7 = *&v6[8 * v5 + 240];
  if (v7[11])
  {
    goto LABEL_16;
  }

  do
  {
LABEL_18:
    v7 = *(v7 + 30);
  }

  while (!v7[11]);
  v5 = v7[8];
  v6 = *v7;
  v8 = v7[10];
  if (!v7[10])
  {
    goto LABEL_24;
  }

LABEL_20:
  v9 = (v7 + 39);
  v10 = 32 * v8;
  do
  {
    if (*v9 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 += 32;
    v10 -= 32;
  }

  while (v10);
LABEL_24:
  while (1)
  {
    operator delete(v7);
    v11 = v6[10];
    if (v5 >= v11)
    {
      break;
    }

    ++v5;
    v7 = *&v6[8 * v5 + 240];
    if (!v7[11])
    {
      goto LABEL_18;
    }

LABEL_16:
    v8 = v7[10];
    if (v7[10])
    {
      goto LABEL_20;
    }
  }

  while (1)
  {
    v12 = v6[8];
    v13 = *v6;
    if (v11)
    {
      v14 = (v6 + 39);
      v15 = 32 * v11;
      do
      {
        if (*v14 < 0)
        {
          operator delete(*(v14 - 23));
        }

        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }

    operator delete(v6);
    if (v13 == v4)
    {
      break;
    }

    v11 = v13[10];
    v6 = v13;
    if (v12 < v11)
    {
      v6 = v13;
      v5 = v12 + 1;
      v7 = *&v13[8 * v5 + 240];
      if (v7[11])
      {
        goto LABEL_16;
      }

      goto LABEL_18;
    }
  }
}

void std::deque<operations_research::SparseBitset<int>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 < 3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x49];
  v6 = *v5 + 56 * (v4 % 0x49);
  v7 = v2[(a1[5] + v4) / 0x49] + 56 * ((a1[5] + v4) % 0x49);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 4);
      if (v8)
      {
        *(v6 + 5) = v8;
        operator delete(v8);
      }

      v9 = *(v6 + 1);
      if (v9)
      {
        *(v6 + 2) = v9;
        operator delete(v9);
      }

      v6 += 56;
      if (v6 - *v5 == 4088)
      {
        v10 = v5[1];
        ++v5;
        v6 = v10;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
LABEL_13:
      operator delete(*v2);
      v12 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = (v12 - v2) >> 3;
    }

    while (v11 > 2);
  }

LABEL_14:
  if (v11 == 1)
  {
    v13 = 36;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 73;
  }

  a1[4] = v13;
}

uint64_t operations_research::sat::SharedSolutionRepository<double>::~SharedSolutionRepository(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v3 = *(a1 + 128);
    v4 = *(a1 + 120);
    if (v3 == v2)
    {
LABEL_11:
      *(a1 + 128) = v2;
      operator delete(v4);
      goto LABEL_12;
    }

    while (*(v3 - 9) < 0)
    {
      operator delete(*(v3 - 32));
      v5 = *(v3 - 56);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_4:
      v3 -= 64;
      if (v3 == v2)
      {
        v4 = *(a1 + 120);
        goto LABEL_11;
      }
    }

    v5 = *(v3 - 56);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_9:
    *(v3 - 48) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

LABEL_12:
  v6 = *(a1 + 96);
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = *(a1 + 104);
  v8 = *(a1 + 96);
  if (v7 != v6)
  {
    while (*(v7 - 9) < 0)
    {
      operator delete(*(v7 - 32));
      v9 = *(v7 - 56);
      if (v9)
      {
        goto LABEL_20;
      }

LABEL_15:
      v7 -= 64;
      if (v7 == v6)
      {
        v8 = *(a1 + 96);
        goto LABEL_22;
      }
    }

    v9 = *(v7 - 56);
    if (!v9)
    {
      goto LABEL_15;
    }

LABEL_20:
    *(v7 - 48) = v9;
    operator delete(v9);
    goto LABEL_15;
  }

LABEL_22:
  *(a1 + 104) = v6;
  operator delete(v8);
LABEL_23:
  v10 = *(a1 + 72);
  if (v10)
  {
    *(a1 + 80) = v10;
    operator delete(v10);
  }

  absl::lts_20240722::Mutex::~Mutex((a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::default_delete<operations_research::sat::SharedClausesManager>::operator()[abi:ne200100](uint64_t a1, absl::lts_20240722::Mutex *a2)
{
  if (a2)
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<int,std::string>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<std::pair<int const,std::string>>>::~raw_hash_set(a2 + 15);
    v3 = *(a2 + 11);
    if (v3)
    {
      *(a2 + 12) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 8);
    if (v4)
    {
      *(a2 + 9) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 5);
    if (v5)
    {
      *(a2 + 6) = v5;
      operator delete(v5);
    }

    if (*(a2 + 1) >= 2uLL)
    {
      operator delete((*(a2 + 3) - (*(a2 + 2) & 1) - 8));
    }

    absl::lts_20240722::Mutex::~Mutex(a2);

    JUMPOUT(0x23EED9460);
  }
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3E660;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::operator()(uint64_t a1, uint64_t a2)
{
  operations_research::sat::SharedResponseManager::Synchronize(*(*(a1 + 8) + 40), a2);
  operations_research::sat::SharedSolutionRepository<long long>::Synchronize(*(*(a1 + 8) + 40) + 88, v3);
  v5 = *(a1 + 8);
  v6 = v5[7];
  if (v6)
  {
    operations_research::sat::SharedBoundsManager::Synchronize(v6, v4);
    v5 = *(a1 + 8);
  }

  v7 = v5[8];
  if (v7)
  {
    operations_research::sat::SharedSolutionRepository<double>::Synchronize(v7, v4);
    v5 = *(a1 + 8);
  }

  v8 = v5[10];
  if (v8)
  {

    operations_research::sat::SharedClausesManager::Synchronize(v8, v4);
  }
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::SolveCpModelParallel(operations_research::sat::CpModelProto const&,operations_research::sat::Model *)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_120SolveCpModelParallelERKNS0_12CpModelProtoEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::SharedSolutionRepository<long long>::Synchronize(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32), a2);
  v3 = *(a1 + 128);
  v4 = *(a1 + 120);
  if (v4 == v3)
  {
    goto LABEL_25;
  }

  std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution*>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution*>>((a1 + 96), *(a1 + 104), v4, v3, (v3 - v4) >> 6);
  v5 = *(a1 + 120);
  for (i = *(a1 + 128); i != v5; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      v7 = *(i - 56);
      if (!v7)
      {
        continue;
      }

LABEL_9:
      *(i - 48) = v7;
      operator delete(v7);
      continue;
    }

    v7 = *(i - 56);
    if (v7)
    {
      goto LABEL_9;
    }
  }

  *(a1 + 128) = v5;
  gtl::STLStableSortAndRemoveDuplicates<std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>>((a1 + 96));
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 24);
  if (v10 >= (v9 - v8) >> 6)
  {
    if (v8 != v9)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = v8 + (v10 << 6);
  if (v9 != v11)
  {
    while (*(v9 - 9) < 0)
    {
      operator delete(*(v9 - 32));
      v12 = *(v9 - 56);
      if (v12)
      {
        goto LABEL_18;
      }

LABEL_13:
      v9 -= 64;
      if (v9 == v11)
      {
        v8 = *(a1 + 96);
        goto LABEL_22;
      }
    }

    v12 = *(v9 - 56);
    if (!v12)
    {
      goto LABEL_13;
    }

LABEL_18:
    *(v9 - 48) = v12;
    operator delete(v12);
    goto LABEL_13;
  }

LABEL_22:
  *(a1 + 104) = v11;
  if (v8 != v11)
  {
LABEL_23:
    if (dword_2810BD488 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SharedSolutionRepository<long long>::Synchronize(void)::{lambda(void)#1}::operator() const(void)::site, dword_2810BD488))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v16, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.h", 742);
      v13 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v16, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, "Solution pool update:", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v13, " num_solutions=", 0xFuLL);
      v17 = (*(a1 + 104) - *(a1 + 96)) >> 6;
      v14 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v13, &v17);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " min_rank=", 0xAuLL);
      v17 = **(a1 + 96);
      v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v14, &v17);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " max_rank=", 0xAuLL);
      v17 = *(*(a1 + 104) - 64);
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v15, &v17);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v16);
    }
  }

LABEL_24:
  ++*(a1 + 64);
LABEL_25:
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
}

void operations_research::sat::SharedSolutionRepository<double>::Synchronize(uint64_t a1, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock((a1 + 32), a2);
  v3 = *(a1 + 128);
  v4 = *(a1 + 120);
  if (v4 == v3)
  {
    goto LABEL_25;
  }

  std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution*>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution*>>((a1 + 96), *(a1 + 104), v4, v3, (v3 - v4) >> 6);
  v6 = *(a1 + 120);
  for (i = *(a1 + 128); i != v6; i -= 64)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      v8 = *(i - 56);
      if (!v8)
      {
        continue;
      }

LABEL_9:
      *(i - 48) = v8;
      operator delete(v8);
      continue;
    }

    v8 = *(i - 56);
    if (v8)
    {
      goto LABEL_9;
    }
  }

  *(a1 + 128) = v6;
  gtl::STLStableSortAndRemoveDuplicates<std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>>((a1 + 96), v5);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 24);
  if (v11 >= (v10 - v9) >> 6)
  {
    if (v9 != v10)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v12 = v9 + (v11 << 6);
  if (v10 != v12)
  {
    while (*(v10 - 9) < 0)
    {
      operator delete(*(v10 - 32));
      v13 = *(v10 - 56);
      if (v13)
      {
        goto LABEL_18;
      }

LABEL_13:
      v10 -= 64;
      if (v10 == v12)
      {
        v9 = *(a1 + 96);
        goto LABEL_22;
      }
    }

    v13 = *(v10 - 56);
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_18:
    *(v10 - 48) = v13;
    operator delete(v13);
    goto LABEL_13;
  }

LABEL_22:
  *(a1 + 104) = v12;
  if (v9 != v12)
  {
LABEL_23:
    if (dword_27E25CC48 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::SharedSolutionRepository<double>::Synchronize(void)::{lambda(void)#1}::operator() const(void)::site, dword_27E25CC48))
    {
      absl::lts_20240722::log_internal::LogMessage::LogMessage(v17, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/synchronization.h", 742);
      v14 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v17, 2);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, "Solution pool update:", 0x15uLL);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v14, " num_solutions=", 0xFuLL);
      v18 = (*(a1 + 104) - *(a1 + 96)) >> 6;
      v15 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v14, &v18);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v15, " min_rank=", 0xAuLL);
      v18 = **(a1 + 96);
      v16 = absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v15, &v18);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, " max_rank=", 0xAuLL);
      v18 = *(*(a1 + 104) - 64);
      absl::lts_20240722::log_internal::LogMessage::operator<<<long long,0>(v16, &v18);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v17);
    }
  }

LABEL_24:
  ++*(a1 + 64);
LABEL_25:
  absl::lts_20240722::Mutex::Unlock((a1 + 32));
}

uint64_t gtl::STLStableSortAndRemoveDuplicates<std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>>(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v3 - *a1;
  v5 = v4 >> 6;
  if (v4 >> 6 < 1)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v6 = MEMORY[0x277D826F0];
    v7 = v4 >> 6;
    while (1)
    {
      v8 = operator new(v7 << 6, v6);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v2, v3, &v14, v5, v11, v7);
  if (v11)
  {
    operator delete(v11);
  }

  v12 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__equal_to &>(*a1, a1[1]);
  return std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::erase(a1, v12, a1[1]);
}

void sub_23CB02050(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution*>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution*>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v40 = a1;
    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = (a2 - v11) >> 6 << 6;
    __p = 0;
    v37 = v29;
    v38 = v29;
    v39 = 0;
    if ((a5 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v30 = a5 << 6;
      v31 = v29 + (a5 << 6);
      do
      {
        std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(v40, v29, v7);
        v29 += 64;
        v7 += 8;
        v30 -= 64;
      }

      while (v30);
      v29 = v31;
    }

    v38 = v29;
    v5 = std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__swap_out_circular_buffer(a1, &__p, v5);
    v32 = v37;
    while (1)
    {
      while (1)
      {
        v33 = v38;
        if (v38 == v32)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return v5;
        }

        v38 -= 8;
        if (*(v33 - 9) < 0)
        {
          break;
        }

        v34 = *(v33 - 7);
        if (v34)
        {
          goto LABEL_36;
        }
      }

      operator delete(*(v33 - 4));
      v34 = *(v33 - 7);
      if (v34)
      {
LABEL_36:
        *(v33 - 6) = v34;
        operator delete(v34);
      }
    }
  }

  v15 = v10 - a2;
  v16 = (v10 - a2) >> 6;
  if (v16 >= a5)
  {
    v24 = a5 << 6;
    std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__move_range(a1, a2, a1[1], a2 + (a5 << 6));
    v25 = v7 + v24;
    v26 = v5 + 8;
    v27 = v7 + 1;
    do
    {
      v28 = v27 - 1;
      *(v26 - 8) = *(v27 - 1);
      if (v26 != v27)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v26, *v27, v27[1], (v27[1] - *v27) >> 3);
      }

      std::string::operator=((v26 + 24), v27 + 1);
      *(v26 + 48) = *(v27 + 12);
      v26 += 64;
      v27 += 8;
    }

    while (v28 + 8 != v25);
  }

  else
  {
    v18 = (a3 + v15);
    v41 = a1[1];
    v42 = v10;
    __p = a1;
    v37 = &v41;
    v38 = &v42;
    v19 = v10;
    LOBYTE(v39) = 0;
    if ((a3 + v15) != a4)
    {
      v19 = v10;
      v20 = (a3 + v15);
      do
      {
        std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(a1, v19, v20);
        v20 += 8;
        v19 = v42 + 64;
        v42 += 64;
      }

      while (v20 != a4);
    }

    a1[1] = v19;
    if (v16 >= 1)
    {
      std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__move_range(a1, v5, v10, v5 + (a5 << 6));
      if (v10 != v5)
      {
        v21 = v5 + 8;
        v22 = v7 + 1;
        do
        {
          v23 = v22 - 1;
          *(v21 - 8) = *(v22 - 1);
          if (v21 != v22)
          {
            std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v21, *v22, v22[1], (v22[1] - *v22) >> 3);
          }

          std::string::operator=((v21 + 24), v22 + 1);
          *(v21 + 48) = *(v22 + 12);
          v21 += 64;
          v22 += 8;
        }

        while (v23 + 8 != v18);
      }
    }
  }

  return v5;
}

void sub_23CB02370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CB02384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>,operations_research::sat::SharedSolutionRepository<long long>::Solution*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_23CB0239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    *(a1 + 8) = v4;
    if (v4 == a4)
    {
      return result;
    }
  }

  else
  {
    v6 = a2 + v4 - a4;
    v7 = *(a1 + 8);
    do
    {
      v7->n128_u64[0] = *v6;
      v7->n128_u64[1] = 0;
      v7[1].n128_u64[0] = 0;
      v7[1].n128_u64[1] = 0;
      *(v7 + 8) = *(v6 + 8);
      v7[1].n128_u64[1] = *(v6 + 24);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      result = *(v6 + 32);
      v7[3].n128_u64[0] = *(v6 + 48);
      v7[2] = result;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v7[3].n128_u32[2] = *(v6 + 56);
      v6 += 64;
      v7 += 4;
    }

    while (v6 < a3);
    *(a1 + 8) = v7;
    if (v4 == a4)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = a4 - v4;
  do
  {
    v12 = v5 + v9;
    v13 = v4 + v9;
    v15 = (v4 + v9 - 56);
    v14 = *v15;
    *(v4 + v9 - 64) = *(v5 + v9 - 64);
    if (v14)
    {
      *(v13 - 48) = v14;
      operator delete(v14);
      *v15 = 0;
      *(v4 + v9 - 48) = 0;
      *(v4 + v9 - 40) = 0;
    }

    v16 = (v12 - 56);
    *v15 = *(v12 - 56);
    *(v13 - 40) = *(v12 - 40);
    *v16 = 0;
    v16[1] = 0;
    v16[2] = 0;
    v17 = (v13 - 32);
    if (*(v13 - 9) < 0)
    {
      operator delete(*v17);
    }

    v11 = v5 + v9;
    result = *(v5 + v9 - 32);
    *(v13 - 16) = *(v5 + v9 - 16);
    *v17 = result;
    *(v11 - 9) = 0;
    *(v11 - 32) = 0;
    *(v4 + v9 - 8) = *(v5 + v9 - 8);
    v9 -= 64;
  }

  while (v10 != v9);
  return result;
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = *v9;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 8) = *(v9 + 8);
      *(v8 + 24) = *(v9 + 24);
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      v10 = *(v9 + 32);
      *(v8 + 48) = *(v9 + 48);
      *(v8 + 32) = v10;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 32) = 0;
      *(v8 + 56) = *(v9 + 56);
      v9 += 64;
      v8 += 64;
    }

    while (v9 != v7);
    v11 = a3;
    while (*(v11 + 55) < 0)
    {
      operator delete(*(v11 + 32));
      v12 = *(v11 + 8);
      if (v12)
      {
        goto LABEL_10;
      }

LABEL_5:
      v11 += 64;
      if (v11 == v7)
      {
        goto LABEL_11;
      }
    }

    v12 = *(v11 + 8);
    if (!v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    *(v11 + 16) = v12;
    operator delete(v12);
    goto LABEL_5;
  }

LABEL_11:
  v13 = *a1;
  v14 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v15 = v14 + v13 - a3;
  if (v13 != a3)
  {
    v16 = v13;
    v17 = v14 + v13 - a3;
    do
    {
      *v17 = *v16;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      *(v17 + 8) = *(v16 + 8);
      *(v17 + 24) = *(v16 + 24);
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v18 = *(v16 + 32);
      *(v17 + 48) = *(v16 + 48);
      *(v17 + 32) = v18;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      *(v17 + 56) = *(v16 + 56);
      v16 += 64;
      v17 += 64;
    }

    while (v16 != a3);
    while (*(v13 + 55) < 0)
    {
      operator delete(*(v13 + 32));
      v19 = *(v13 + 8);
      if (v19)
      {
        goto LABEL_20;
      }

LABEL_15:
      v13 += 64;
      if (v13 == a3)
      {
        goto LABEL_21;
      }
    }

    v19 = *(v13 + 8);
    if (!v19)
    {
      goto LABEL_15;
    }

LABEL_20:
    *(v13 + 16) = v19;
    operator delete(v19);
    goto LABEL_15;
  }

LABEL_21:
  a2[1] = v15;
  v20 = *a1;
  *a1 = v15;
  a1[1] = v20;
  a2[1] = v20;
  v21 = a1[1];
  a1[1] = a2[2];
  a2[2] = v21;
  v22 = a1[2];
  a1[2] = a2[3];
  a2[3] = v22;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      v4 = *(i - 56);
      if (!v4)
      {
        continue;
      }

LABEL_8:
      *(i - 48) = v4;
      operator delete(v4);
      continue;
    }

    v4 = *(i - 56);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>,operations_research::sat::SharedSolutionRepository<long long>::Solution*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (1)
    {
      if (v3 == v4)
      {
        return a1;
      }

      if (*(v3 - 9) < 0)
      {
        break;
      }

      v5 = *(v3 - 56);
      if (v5)
      {
        goto LABEL_10;
      }

LABEL_4:
      v3 -= 64;
    }

    operator delete(*(v3 - 32));
    v5 = *(v3 - 56);
    if (!v5)
    {
      goto LABEL_4;
    }

LABEL_10:
    *(v3 - 48) = v5;
    operator delete(v5);
    goto LABEL_4;
  }

  return a1;
}

void std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a2 + 8) = 0;
  *a2 = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = a3[1];
  v6 = a3[2];
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (*(a3 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 32), a3[4], a3[5]);
  }

  else
  {
    v8 = *(a3 + 2);
    *(a2 + 48) = a3[6];
    *(a2 + 32) = v8;
  }

  *(a2 + 56) = *(a3 + 14);
}

void sub_23CB028C0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::SharedSolutionRepository<long long>::Solution::~Solution(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::erase(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v5 = a1[1];
    if (a3 == v5)
    {
      v15 = a2;
    }

    else
    {
      v6 = *a1 + a2;
      v7 = -*a1;
      v18 = *a1;
      v8 = *a1 + a3;
      do
      {
        v11 = (v8 + v7 + 8);
        v12 = v6 + v7;
        *(v6 + v7) = *(v8 + v7);
        v14 = (v6 + v7 + 8);
        v13 = *v14;
        if (*v14)
        {
          *(v12 + 16) = v13;
          operator delete(v13);
          *v14 = 0;
          *(v6 + v7 + 16) = 0;
          *(v6 + v7 + 24) = 0;
        }

        *v14 = *v11;
        *(v12 + 24) = *(v8 + v7 + 24);
        *v11 = 0;
        *(v8 + v7 + 16) = 0;
        *(v8 + v7 + 24) = 0;
        if (*(v12 + 55) < 0)
        {
          operator delete(*(v12 + 32));
        }

        v9 = v8 + v7;
        v10 = *(v8 + v7 + 32);
        *(v12 + 48) = *(v8 + v7 + 48);
        *(v12 + 32) = v10;
        *(v9 + 55) = 0;
        *(v9 + 32) = 0;
        *(v6 + v7 + 56) = *(v8 + v7 + 56);
        v6 += 64;
        v8 += 64;
      }

      while (v8 + v7 != v5);
      v5 = a1[1];
      v15 = v6 - v18;
    }

    while (1)
    {
      if (v5 == v15)
      {
        a1[1] = v15;
        return a2;
      }

      if (*(v5 - 9) < 0)
      {
        break;
      }

      v16 = *(v5 - 56);
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_11:
      v5 -= 64;
    }

    operator delete(*(v5 - 32));
    v16 = *(v5 - 56);
    if (!v16)
    {
      goto LABEL_11;
    }

LABEL_17:
    *(v5 - 48) = v16;
    operator delete(v16);
    goto LABEL_11;
  }

  return a2;
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6)
{
  v32 = a1;
  if (a4 < 2)
  {
    return;
  }

  if (a4 == 2)
  {
    v6 = a2[-4].n128_i64[0];
    v31 = a2 - 4;
    if (v6 != a1->n128_u64[0])
    {
      if (v6 >= a1->n128_u64[0])
      {
        return;
      }

LABEL_22:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v32, &v31);
      return;
    }

    v7 = a2[-4].n128_u64[1];
    v8 = a2[-3].n128_u64[0];
    v9 = a1->n128_u64[1];
    v10 = a1[1].n128_u64[0];
    v11 = v8 - v7;
    if (v10 - v9 < v11)
    {
      v11 = v10 - v9;
    }

    if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 8 * v11;
      v13 = &v7[v11];
      while (*v7 == *v9)
      {
        ++v7;
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v7 = v13;
          break;
        }
      }
    }

    if (v9 != v10 && (v7 == v8 || *v7 < *v9))
    {
      goto LABEL_22;
    }
  }

  else if (a4 <= 0)
  {

    std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a1, a2);
  }

  else
  {
    v15 = a4 >> 1;
    v16 = &a1[4 * (a4 >> 1)];
    if (a4 <= a6)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a1, &a1[4 * (a4 >> 1)], a3, a4 >> 1, a5);
      v26 = a4 - v15;
      v27 = &a5[4 * v15];
      std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v16, a2, a3, v26, v27);
      std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<long long>::Solution *,operations_research::sat::SharedSolutionRepository<long long>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a5, v27, v27, &a5[4 * a4], a1);
      if (a5)
      {
        v28 = 0;
        v29 = a5 + 2;
        do
        {
          if (v29[1].n128_i8[7] < 0)
          {
            operator delete(v29->n128_u64[0]);
          }

          v30 = v29[-2].n128_u64[1];
          if (v30)
          {
            v29[-1].n128_u64[0] = v30;
            operator delete(v30);
          }

          ++v28;
          v29 += 4;
        }

        while (v28 < a4);
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a1, &a1[4 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
      v22 = a4 - v15;
      std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v16, a2, a3, v22, a5, a6);

      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a1, v16, a2, a3, v15, v22, a5, a6);
    }
  }
}

void sub_23CB02D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = **a1;
  v13 = *(*a1 + 1);
  v5 = (*a1)[3];
  v2[2] = 0;
  v2[3] = 0;
  v2[1] = 0;
  v7 = (v2 + 4);
  v6 = v2[4];
  *v14 = v2[5];
  *&v14[7] = *(v2 + 47);
  v8 = *(v2 + 55);
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v9 = *(v2 + 14);
  *v2 = *v3;
  v10 = *(v3 + 24);
  *(v2 + 1) = *(v3 + 8);
  v2[3] = v10;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*v7);
  }

  v11 = *(v3 + 32);
  v2[6] = *(v3 + 48);
  *v7 = v11;
  *(v3 + 55) = 0;
  *(v3 + 32) = 0;
  *(v2 + 14) = *(v3 + 56);
  *v3 = v4;
  v12 = *(v3 + 8);
  if (v12)
  {
    *(v3 + 16) = v12;
    operator delete(v12);
  }

  *(v3 + 8) = v13;
  *(v3 + 24) = v5;
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  *(v3 + 32) = v6;
  *(v3 + 40) = *v14;
  *(v3 + 47) = *&v14[7];
  *(v3 + 55) = v8;
  *(v3 + 56) = v9;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 8;
    if (a1 + 8 != a2)
    {
      v4 = a1;
      v30 = a2;
      do
      {
        v5 = v4;
        v4 = v3;
        v6 = *v3;
        if (*v3 == *v5)
        {
          v7 = v5[9];
          v8 = v5[10];
          v9 = v5[1];
          v10 = v5[2];
          if (v10 - v9 >= v8 - v7)
          {
            v11 = v8 - v7;
          }

          else
          {
            v11 = v10 - v9;
          }

          if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
          {
            v12 = 8 * v11;
            v13 = v5[9];
            v14 = &v7[v11];
            while (*v13 == *v9)
            {
              ++v13;
              ++v9;
              v12 -= 8;
              if (!v12)
              {
                v13 = v14;
                break;
              }
            }

            if (v9 == v10)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v13 = v5[9];
            if (v9 == v10)
            {
              goto LABEL_5;
            }
          }

          if (v13 == v8 || *v13 < *v9)
          {
            goto LABEL_22;
          }
        }

        else if (v6 < *v5)
        {
          v7 = v5[9];
          v8 = v5[10];
LABEL_22:
          v15 = v5[11];
          v5[9] = 0;
          v5[10] = 0;
          v5[11] = 0;
          *v33 = *(v5 + 97);
          *&v33[14] = *(v5 + 111);
          v31 = *(v5 + 119);
          v32 = *(v5 + 96);
          v5[12] = 0;
          v5[13] = 0;
          v5[14] = 0;
          v16 = *(v5 + 30);
          v17 = v4;
          v18 = *v5;
          while (1)
          {
            v19 = v5;
            *v17 = v18;
            v20 = v17[1];
            if (v20)
            {
              v17[2] = v20;
              operator delete(v20);
              v17[2] = 0;
              v17[3] = 0;
            }

            *(v17 + 1) = *(v19 + 1);
            v17[3] = v19[3];
            v19[1] = 0;
            v19[2] = 0;
            v19[3] = 0;
            if (*(v17 + 55) < 0)
            {
              operator delete(v17[4]);
            }

            v21 = *(v19 + 2);
            v17[6] = v19[6];
            *(v17 + 2) = v21;
            *(v19 + 55) = 0;
            *(v19 + 32) = 0;
            *(v17 + 14) = *(v19 + 14);
            if (v19 == a1)
            {
              break;
            }

            v5 = v19 - 8;
            v18 = *(v19 - 8);
            if (v6 == v18)
            {
              v22 = *(v19 - 7);
              v23 = *(v19 - 6);
              if (v23 - v22 >= v8 - v7)
              {
                v24 = v8 - v7;
              }

              else
              {
                v24 = v23 - v22;
              }

              if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
              {
                v25 = 8 * v24;
                v26 = v7;
                v27 = &v7[v24];
                while (*v26 == *v22)
                {
                  ++v26;
                  ++v22;
                  v25 -= 8;
                  if (!v25)
                  {
                    v26 = v27;
                    break;
                  }
                }
              }

              else
              {
                v26 = v7;
              }

              if (v22 == v23 || (v17 = v19, v26 != v8) && (v17 = v19, *v26 >= *v22))
              {
LABEL_42:
                v28 = v19;
                *v19 = v6;
                v29 = v19[1];
                if (!v29)
                {
                  goto LABEL_44;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v17 = v19;
              if (v6 >= v18)
              {
                goto LABEL_42;
              }
            }
          }

          v28 = a1;
          *a1 = v6;
          v29 = v19[1];
          if (v29)
          {
LABEL_43:
            v28[2] = v29;
            operator delete(v29);
            v19[2] = 0;
            v19[3] = 0;
          }

LABEL_44:
          v19[1] = v7;
          v28[2] = v8;
          v28[3] = v15;
          if (*(v28 + 55) < 0)
          {
            operator delete(v19[4]);
          }

          *(v19 + 32) = v32;
          *(v19 + 33) = *v33;
          *(v19 + 47) = *&v33[14];
          *(v19 + 55) = v31;
          *(v28 + 14) = v16;
          a2 = v30;
        }

LABEL_5:
        v3 = v4 + 8;
      }

      while (v4 + 8 != a2);
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *result, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5)
{
  switch(a4)
  {
    case 0uLL:
      return v5.n128_f64[0];
    case 2uLL:
      v6 = a2[-4].n128_i64[0];
      if (v6 == result->n128_u64[0])
      {
        v7 = a2[-4].n128_u64[1];
        v8 = a2[-3].n128_u64[0];
        v9 = result->n128_u64[1];
        v10 = result[1].n128_u64[0];
        v11 = v8 - v7;
        if (v10 - v9 < v11)
        {
          v11 = v10 - v9;
        }

        if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v12 = 8 * v11;
          v13 = &v7[v11];
          while (*v7 == *v9)
          {
            ++v7;
            ++v9;
            v12 -= 8;
            if (!v12)
            {
              v7 = v13;
              break;
            }
          }
        }

        if (v9 == v10 || v7 != v8 && *v7 >= *v9)
        {
          goto LABEL_17;
        }
      }

      else if (v6 >= result->n128_u64[0])
      {
LABEL_17:
        a5->n128_u64[0] = result->n128_u64[0];
        a5->n128_u64[1] = 0;
        a5[1].n128_u64[0] = 0;
        a5[1].n128_u64[1] = 0;
        *(a5 + 8) = *(result + 8);
        a5[1].n128_u64[1] = result[1].n128_u64[1];
        result->n128_u64[1] = 0;
        result[1].n128_u64[0] = 0;
        result[1].n128_u64[1] = 0;
        v14 = result[2];
        a5[3].n128_u64[0] = result[3].n128_u64[0];
        a5[2] = v14;
        result[2].n128_u64[1] = 0;
        result[3].n128_u64[0] = 0;
        result[2].n128_u64[0] = 0;
        a5[3].n128_u32[2] = result[3].n128_u32[2];
        v15 = a2[-4].n128_u64[0];
        a5[5].n128_u64[0] = 0;
        a5[5].n128_u64[1] = 0;
        a5[4].n128_u64[0] = v15;
        a5[4].n128_u64[1] = 0;
        *(a5 + 72) = *(a2 - 56);
        a5[5].n128_u64[1] = a2[-3].n128_u64[1];
        a2[-4].n128_u64[1] = 0;
        a2[-3].n128_u64[0] = 0;
        a2[-3].n128_u64[1] = 0;
        v5 = a2[-2];
        a5[7].n128_u64[0] = a2[-1].n128_u64[0];
        a5[6] = v5;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        a2[-2].n128_u64[0] = 0;
        v16 = a2[-1].n128_u32[2];
LABEL_24:
        a5[7].n128_u32[2] = v16;
        return v5.n128_f64[0];
      }

      a5->n128_u64[0] = v6;
      a5->n128_u64[1] = 0;
      a5[1].n128_u64[0] = 0;
      a5[1].n128_u64[1] = 0;
      *(a5 + 8) = *(a2 - 56);
      a5[1].n128_u64[1] = a2[-3].n128_u64[1];
      a2[-4].n128_u64[1] = 0;
      a2[-3].n128_u64[0] = 0;
      a2[-3].n128_u64[1] = 0;
      v17 = a2[-2];
      a5[3].n128_u64[0] = a2[-1].n128_u64[0];
      a5[2] = v17;
      a2[-2].n128_u64[1] = 0;
      a2[-1].n128_u64[0] = 0;
      a2[-2].n128_u64[0] = 0;
      a5[3].n128_u32[2] = a2[-1].n128_u32[2];
      v18 = result->n128_u64[0];
      a5[5].n128_u64[0] = 0;
      a5[5].n128_u64[1] = 0;
      a5[4].n128_u64[0] = v18;
      a5[4].n128_u64[1] = 0;
      *(a5 + 72) = *(result + 8);
      a5[5].n128_u64[1] = result[1].n128_u64[1];
      result->n128_u64[1] = 0;
      result[1].n128_u64[0] = 0;
      result[1].n128_u64[1] = 0;
      v5 = result[2];
      a5[7].n128_u64[0] = result[3].n128_u64[0];
      a5[6] = v5;
      result[2].n128_u64[1] = 0;
      result[3].n128_u64[0] = 0;
      result[2].n128_u64[0] = 0;
      v16 = result[3].n128_u32[2];
      goto LABEL_24;
    case 1uLL:
      a5->n128_u64[0] = result->n128_u64[0];
      a5->n128_u64[1] = 0;
      a5[1].n128_u64[0] = 0;
      a5[1].n128_u64[1] = 0;
      *(a5 + 8) = *(result + 8);
      a5[1].n128_u64[1] = result[1].n128_u64[1];
      result->n128_u64[1] = 0;
      result[1].n128_u64[0] = 0;
      result[1].n128_u64[1] = 0;
      v5 = result[2];
      a5[3].n128_u64[0] = result[3].n128_u64[0];
      a5[2] = v5;
      result[2].n128_u64[1] = 0;
      result[3].n128_u64[0] = 0;
      result[2].n128_u64[0] = 0;
      a5[3].n128_u32[2] = result[3].n128_u32[2];
      break;
    default:
      if (a4 > 8)
      {
        v19 = a4 >> 1;
        v20 = a4 >> 1 << 6;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(result, result + v20, a3, v19, a5, v19);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>((result->n128_u64 + v20), a2, a3, a4 - v19, a5 + v20, a4 - v19);

        v5.n128_u64[0] = std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(result, (result + v20), (result->n128_u64 + v20), a2->n128_u64, a5).n128_u64[0];
      }

      else
      {

        v5.n128_u64[0] = std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(result, a2, a5).n128_u64[0];
      }

      break;
  }

  return v5.n128_f64[0];
}

__n128 std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<long long>::Solution *,operations_research::sat::SharedSolutionRepository<long long>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  if (a1 == a2)
  {
LABEL_26:
    if (a3 != a4)
    {
      v21 = v5 + 32;
      do
      {
        v22 = *(v21 - 24);
        *(v21 - 32) = *a3;
        if (v22)
        {
          *(v21 - 16) = v22;
          operator delete(v22);
          *(v21 - 24) = 0;
          *(v21 - 16) = 0;
          *(v21 - 8) = 0;
        }

        *(v21 - 24) = *(a3 + 8);
        *(v21 - 8) = *(a3 + 24);
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        if (*(v21 + 23) < 0)
        {
          operator delete(*v21);
        }

        result = *(a3 + 32);
        *(v21 + 16) = *(a3 + 48);
        *v21 = result;
        *(a3 + 55) = 0;
        *(a3 + 32) = 0;
        *(v21 + 24) = *(a3 + 56);
        a3 += 64;
        v21 += 64;
      }

      while (a3 != a4);
    }

    return result;
  }

  v9 = a1;
  v10 = a5 + 32;
  while (a3 != a4)
  {
    if (*a3 == v9->n128_u64[0])
    {
      v12 = *(a3 + 8);
      v13 = *(a3 + 16);
      v14 = v9->n128_u64[1];
      v15 = v9[1].n128_u64[0];
      v16 = v13 - v12;
      if (v15 - v14 < v16)
      {
        v16 = v15 - v14;
      }

      if ((v16 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = 8 * v16;
        v18 = &v12[v16];
        while (*v12 == *v14)
        {
          ++v12;
          ++v14;
          v17 -= 8;
          if (!v17)
          {
            v12 = v18;
            break;
          }
        }
      }

      if (v14 == v15 || v12 != v13 && *v12 >= *v14)
      {
        goto LABEL_16;
      }

LABEL_21:
      *v5 = *a3;
      v20 = *(v5 + 8);
      if (v20)
      {
        *(v5 + 16) = v20;
        operator delete(v20);
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      *(v5 + 8) = *(a3 + 8);
      *(v5 + 24) = *(a3 + 24);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      result = *(a3 + 32);
      *(v5 + 48) = *(a3 + 48);
      *(v5 + 32) = result;
      *(a3 + 55) = 0;
      *(a3 + 32) = 0;
      *(v5 + 56) = *(a3 + 56);
      a3 += 64;
      v5 += 64;
      v10 += 64;
      if (v9 == a2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (*a3 < v9->n128_u64[0])
      {
        goto LABEL_21;
      }

LABEL_16:
      *v5 = v9->n128_u64[0];
      v19 = *(v5 + 8);
      if (v19)
      {
        *(v5 + 16) = v19;
        operator delete(v19);
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      *(v5 + 8) = *(v9 + 8);
      *(v5 + 24) = v9[1].n128_u64[1];
      v9->n128_u64[1] = 0;
      v9[1].n128_u64[0] = 0;
      v9[1].n128_u64[1] = 0;
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      result = v9[2];
      *(v5 + 48) = v9[3].n128_u64[0];
      *(v5 + 32) = result;
      v9[3].n128_u8[7] = 0;
      v9[2].n128_u8[0] = 0;
      *(v5 + 56) = v9[3].n128_u32[2];
      v9 += 4;
      v5 += 64;
      v10 += 64;
      if (v9 == a2)
      {
        goto LABEL_26;
      }
    }
  }

  while (v9 != a2)
  {
    v23 = *(v10 - 24);
    *(v10 - 32) = v9->n128_u64[0];
    if (v23)
    {
      *(v10 - 16) = v23;
      operator delete(v23);
      *(v10 - 24) = 0;
      *(v10 - 16) = 0;
      *(v10 - 8) = 0;
    }

    *(v10 - 24) = *(v9 + 8);
    *(v10 - 8) = v9[1].n128_u64[1];
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9[1].n128_u64[1] = 0;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    result = v9[2];
    *(v10 + 16) = v9[3].n128_u64[0];
    *v10 = result;
    v9[3].n128_u8[7] = 0;
    v9[2].n128_u8[0] = 0;
    *(v10 + 24) = v9[3].n128_u32[2];
    v9 += 4;
    v10 += 64;
  }

  return result;
}

uint64_t *std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      for (i = v2 + 32; *(i + 23) < 0; i += 64)
      {
        operator delete(*i);
        v6 = *(i - 24);
        if (v6)
        {
          goto LABEL_9;
        }

LABEL_4:
        if (++v4 >= *v3)
        {
          return a1;
        }
      }

      v6 = *(i - 24);
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(i - 16) = v6;
      operator delete(v6);
      goto LABEL_4;
    }
  }

  return a1;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, uint64_t a8)
{
  v54 = a2;
  v55 = a1;
  if (!a6)
  {
    return;
  }

  v9 = a6;
  v12 = a2;
  v13 = a1;
LABEL_3:
  if (v9 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v14 = a2->n128_u64[0];
    while (1)
    {
      if (v14 == v13->n128_u64[0])
      {
        v15 = a2->n128_u64[1];
        v16 = a2[1].n128_i64[0];
        v17 = v13->n128_u64[1];
        v18 = v13[1].n128_u64[0];
        v19 = (v16 - v15) >> 3;
        if (v18 - v17 < v19)
        {
          v19 = v18 - v17;
        }

        if ((v19 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v20 = 8 * v19;
          v21 = &v15[v19];
          while (*v15 == *v17)
          {
            ++v15;
            ++v17;
            v20 -= 8;
            if (!v20)
            {
              v15 = v21;
              break;
            }
          }
        }

        if (v17 != v18 && (v15 == v16 || *v15 < *v17))
        {
LABEL_20:
          v55 = v13;
          if (a5 < v9)
          {
            v22 = v9 / 2;
            v23 = &v12[8 * (v9 / 2)];
            if (v12 == v13)
            {
LABEL_22:
              v24 = v12;
              v25 = (v12 - v13) >> 6;
              v12 = v23;
              goto LABEL_67;
            }

            v38 = (v12 - v13) >> 6;
            v39 = *v23;
            v40 = v23[1];
            v41 = v23[2];
            v12 = v13;
            while (2)
            {
              v42 = v38 >> 1;
              v43 = &v12[8 * (v38 >> 1)];
              if (v39 == *v43)
              {
                v44 = v43[1];
                v45 = v43[2];
                if (v45 - v44 >= (v41 - v40) >> 3)
                {
                  v46 = (v41 - v40) >> 3;
                }

                else
                {
                  v46 = v45 - v44;
                }

                if ((v46 & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  v47 = 8 * v46;
                  v48 = v23[1];
                  v49 = (v40 + 8 * v46);
                  while (*v48 == *v44)
                  {
                    ++v48;
                    ++v44;
                    v47 -= 8;
                    if (!v47)
                    {
                      v48 = v49;
                      break;
                    }
                  }

                  if (v44 == v45)
                  {
LABEL_46:
                    v12 = v43 + 8;
                    v42 = v38 + ~v42;
                    goto LABEL_47;
                  }
                }

                else
                {
                  v48 = v23[1];
                  if (v44 == v45)
                  {
                    goto LABEL_46;
                  }
                }

                if (v48 != v41 && *v48 >= *v44)
                {
                  goto LABEL_46;
                }
              }

              else if (v39 >= *v43)
              {
                goto LABEL_46;
              }

LABEL_47:
              v38 = v42;
              if (!v42)
              {
                goto LABEL_22;
              }

              continue;
            }
          }

          if (a5 == 1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v55, &v54);
            return;
          }

          v25 = a5 / 2;
          v24 = &v13[4 * (a5 / 2)];
          if (a3 != a2)
          {
            v26 = (a3 - a2) >> 6;
            v27 = *v24;
            v28 = v24[1];
            v29 = v24[2];
            v12 = a2;
            while (1)
            {
              v30 = v26 >> 1;
              v31 = &v12[8 * (v26 >> 1)];
              if (*v31 == v27)
              {
                v32 = v31[1];
                v33 = v31[2];
                if ((v29 - v28) >> 3 >= v33 - v32)
                {
                  v34 = v33 - v32;
                }

                else
                {
                  v34 = (v29 - v28) >> 3;
                }

                if ((v34 & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  v35 = 8 * v34;
                  v36 = v24[1];
                  v37 = &v32[v34];
                  while (*v32 == *v36)
                  {
                    ++v32;
                    ++v36;
                    v35 -= 8;
                    if (!v35)
                    {
                      v32 = v37;
                      break;
                    }
                  }

                  if (v36 == v29)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  v36 = v24[1];
                  if (v28 == v29)
                  {
                    goto LABEL_27;
                  }
                }

                if (v32 != v33 && *v32 >= *v36)
                {
                  goto LABEL_27;
                }
              }

              else if (*v31 >= v27)
              {
                goto LABEL_27;
              }

              v12 = v31 + 8;
              v30 = v26 + ~v30;
LABEL_27:
              v26 = v30;
              if (!v30)
              {
                goto LABEL_66;
              }
            }
          }

          v12 = a3;
LABEL_66:
          v22 = (v12 - a2) >> 6;
LABEL_67:
          a5 -= v25;
          v9 -= v22;
          v50 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v24, a2, v12);
          v51 = v50;
          if (v25 + v22 >= a5 + v9)
          {
            std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v50, v12, a3, a4, a5, v9, a7, a8);
            v12 = v24;
            v9 = v22;
            a5 = v25;
            a3 = v51;
            v54 = v24;
            a2 = v24;
            if (!v22)
            {
              return;
            }
          }

          else
          {
            std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v13, v24, v50, a4, v25, v22, a7, a8);
            v54 = v12;
            v55 = v51;
            v13 = v51;
            a2 = v12;
            if (!v9)
            {
              return;
            }
          }

          goto LABEL_3;
        }
      }

      else if (v14 < v13->n128_u64[0])
      {
        goto LABEL_20;
      }

      v13 += 4;
      if (!--a5)
      {
        return;
      }
    }
  }

  std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v13, a2, a3, a4, a5, v9, a7);
}

__n128 std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = a1->n128_u64[0];
    a3[1] = 0uLL;
    *(a3 + 8) = *(a1 + 8);
    a3[1].n128_u64[1] = a1[1].n128_u64[1];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1[1].n128_u64[1] = 0;
    result = a1[2];
    a3[3].n128_u64[0] = a1[3].n128_u64[0];
    a3[2] = result;
    a1[2].n128_u64[1] = 0;
    a1[3].n128_u64[0] = 0;
    a1[2].n128_u64[0] = 0;
    a3[3].n128_u32[2] = a1[3].n128_u32[2];
    v7 = a1 + 4;
    if (&a1[4] != a2)
    {
      v8 = a3;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v12 = v9->n128_u64[0];
          v9 += 4;
          v11 = v12;
          v13 = v10->n128_u64[0] < v12;
          if (v10->n128_u64[0] == v12)
          {
            break;
          }

          if (!v13)
          {
            goto LABEL_4;
          }

          v16 = v8->n128_u64[1];
          v17 = v8[1].n128_u64[0];
LABEL_22:
          v8[4].n128_u64[0] = v11;
          v8[4].n128_u64[1] = v16;
          v22 = v8[1].n128_u64[1];
          v8[5].n128_u64[0] = v17;
          v8[5].n128_u64[1] = v22;
          v8->n128_u64[1] = 0;
          v8[1].n128_u64[0] = 0;
          v23 = v8[2];
          v8[1].n128_u64[1] = 0;
          v8[2].n128_u64[0] = 0;
          v8[6] = v23;
          v8[7].n128_u64[0] = v8[3].n128_u64[0];
          v8[2].n128_u64[1] = 0;
          v8[3].n128_u64[0] = 0;
          v24 = a3;
          v8[7].n128_u32[2] = v8[3].n128_u32[2];
          if (v8 != a3)
          {
            v25 = v8;
            while (1)
            {
              v27 = v25[-4].n128_i64[0];
              v25 -= 4;
              v26 = v27;
              v28 = v10->n128_u64[0] < v27;
              if (v10->n128_u64[0] == v27)
              {
                v29 = v5[4].n128_u64[1];
                v30 = v5[5].n128_u64[0];
                v31 = v8[-4].n128_u64[1];
                v32 = v8[-3].n128_u64[0];
                v33 = v30 - v29;
                if (v32 - v31 < v33)
                {
                  v33 = v32 - v31;
                }

                if ((v33 & 0x1FFFFFFFFFFFFFFFLL) != 0)
                {
                  v34 = 8 * v33;
                  v35 = &v29[v33];
                  while (*v29 == *v31)
                  {
                    ++v29;
                    ++v31;
                    v34 -= 8;
                    if (!v34)
                    {
                      v29 = v35;
                      break;
                    }
                  }
                }

                if (v31 == v32)
                {
                  v24 = v8;
                  break;
                }

                if (v29 != v30 && *v29 >= *v31)
                {
LABEL_45:
                  v24 = v8;
                  v8->n128_u64[0] = v10->n128_u64[0];
                  v40 = v8->n128_u64[1];
                  v39 = &v8->n128_u64[1];
                  v38 = v40;
                  if (v40)
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_50;
                }
              }

              else if (!v28)
              {
                goto LABEL_45;
              }

              v8->n128_u64[0] = v26;
              v36 = v8->n128_u64[1];
              if (v36)
              {
                v8[1].n128_u64[0] = v36;
                operator delete(v36);
              }

              v37 = &v8[-4].n128_u64[1];
              *(v8 + 8) = *(v8 - 56);
              v8[1].n128_u64[1] = v8[-3].n128_u64[1];
              v37[1] = 0;
              v37[2] = 0;
              *v37 = 0;
              if (v8[3].n128_i8[7] < 0)
              {
                operator delete(v8[2].n128_u64[0]);
              }

              v8[2] = v8[-2];
              v8[3].n128_u64[0] = v8[-1].n128_u64[0];
              v8[-1].n128_u8[7] = 0;
              v8[-2].n128_u8[0] = 0;
              v8[3].n128_u32[2] = v8[-1].n128_u32[2];
              v8 = v25;
              if (v25 == a3)
              {
                v24 = a3;
                a3->n128_u64[0] = v10->n128_u64[0];
                v39 = &a3->n128_u64[1];
                v38 = a3->n128_u64[1];
                if (v38)
                {
                  goto LABEL_49;
                }

                goto LABEL_50;
              }
            }
          }

          v24->n128_u64[0] = v10->n128_u64[0];
          v39 = &v24->n128_u64[1];
          v38 = v24->n128_u64[1];
          if (v38)
          {
LABEL_49:
            v24[1].n128_u64[0] = v38;
            operator delete(v38);
            *v39 = 0;
            v39[1] = 0;
            v39[2] = 0;
          }

LABEL_50:
          *(v24 + 8) = *(v5 + 72);
          v24[1].n128_u64[1] = v5[5].n128_u64[1];
          v5[4].n128_u64[1] = 0;
          v5[5].n128_u64[0] = 0;
          v5[5].n128_u64[1] = 0;
          if (v24[3].n128_i8[7] < 0)
          {
            operator delete(v24[2].n128_u64[0]);
          }

          result = v5[6];
          v24[3].n128_u64[0] = v5[7].n128_u64[0];
          v24[2] = result;
          v5[7].n128_u8[7] = 0;
          v5[6].n128_u8[0] = 0;
          v24[3].n128_u32[2] = v5[7].n128_u32[2];
          v7 = v10 + 4;
          v8 = v9;
          v5 = v10;
          if (&v10[4] == a2)
          {
            return result;
          }
        }

        v14 = v5[4].n128_u64[1];
        v15 = v5[5].n128_u64[0];
        v16 = v8->n128_u64[1];
        v17 = v8[1].n128_u64[0];
        if ((v17 - v16) >> 3 >= v15 - v14)
        {
          v18 = v15 - v14;
        }

        else
        {
          v18 = (v17 - v16) >> 3;
        }

        if ((v18 & 0x1FFFFFFFFFFFFFFFLL) != 0)
        {
          v19 = 8 * v18;
          v20 = v8->n128_u64[1];
          v21 = &v14[v18];
          while (*v14 == *v20)
          {
            ++v14;
            ++v20;
            v19 -= 8;
            if (!v19)
            {
              v14 = v21;
              break;
            }
          }

          if (v20 == v17)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v20 = v8->n128_u64[1];
          if (v16 == v17)
          {
            goto LABEL_4;
          }
        }

        if (v14 == v15 || *v14 < *v20)
        {
          goto LABEL_22;
        }

LABEL_4:
        v8[4].n128_u64[0] = v10->n128_u64[0];
        v8[4].n128_u64[1] = 0;
        v8[5].n128_u64[0] = 0;
        v8[5].n128_u64[1] = 0;
        *(v8 + 72) = *(v5 + 72);
        v8[5].n128_u64[1] = v5[5].n128_u64[1];
        v5[4].n128_u64[1] = 0;
        v5[5].n128_u64[0] = 0;
        v5[5].n128_u64[1] = 0;
        result = v5[6];
        v8[7].n128_u64[0] = v5[7].n128_u64[0];
        v8[6] = result;
        v5[6].n128_u64[1] = 0;
        v5[7].n128_u64[0] = 0;
        v5[6].n128_u64[0] = 0;
        v8[7].n128_u32[2] = v5[7].n128_u32[2];
        v7 = v10 + 4;
        v8 = v9;
        v5 = v10;
      }

      while (&v10[4] != a2);
    }
  }

  return result;
}

__n128 std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, unint64_t *a3, unint64_t *a4, __n128 *a5)
{
  if (a1 == a2)
  {
LABEL_21:
    while (a3 != a4)
    {
      *a5 = *a3;
      a5[1] = 0uLL;
      *(a5 + 8) = *(a3 + 1);
      a5[1].n128_u64[1] = a3[3];
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      result = *(a3 + 2);
      a5[3].n128_u64[0] = a3[6];
      a5[2] = result;
      a3[5] = 0;
      a3[6] = 0;
      a3[4] = 0;
      a5[3].n128_u32[2] = *(a3 + 14);
      a3 += 8;
      a5 += 4;
    }

    return result;
  }

  while (a3 != a4)
  {
    v6 = *a3 < a1->n128_u64[0];
    if (*a3 != a1->n128_u64[0])
    {
      goto LABEL_16;
    }

    v7 = a3[1];
    v8 = a3[2];
    v9 = a1->n128_u64[1];
    v10 = a1[1].n128_u64[0];
    v11 = v8 - v7;
    if ((v10 - v9) >> 3 < v11)
    {
      v11 = (v10 - v9) >> 3;
    }

    if ((v11 & 0x1FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = 8 * v11;
      v13 = &v7[v11];
      while (*v7 == *v9)
      {
        ++v7;
        ++v9;
        v12 -= 8;
        if (!v12)
        {
          v7 = v13;
          break;
        }
      }
    }

    if (v9 == v10)
    {
      goto LABEL_3;
    }

    if (v7 == v8)
    {
LABEL_18:
      *a5 = *a3;
      a5[1] = 0uLL;
      *(a5 + 8) = *(a3 + 1);
      a5[1].n128_u64[1] = a3[3];
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      result = *(a3 + 2);
      a5[3].n128_u64[0] = a3[6];
      a5[2] = result;
      a3[5] = 0;
      a3[6] = 0;
      a3[4] = 0;
      a5[3].n128_u32[2] = *(a3 + 14);
      a3 += 8;
      a5 += 4;
      if (a1 == a2)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *v7 < *v9;
LABEL_16:
      if (v6)
      {
        goto LABEL_18;
      }

LABEL_3:
      *a5 = a1->n128_u64[0];
      a5[1] = 0uLL;
      *(a5 + 8) = *(a1 + 8);
      a5[1].n128_u64[1] = a1[1].n128_u64[1];
      *(a1 + 8) = 0uLL;
      a1[1].n128_u64[1] = 0;
      result = a1[2];
      a5[3].n128_u64[0] = a1[3].n128_u64[0];
      a5[2] = result;
      *(&a1[2] + 8) = 0uLL;
      a1[2].n128_u64[0] = 0;
      a5[3].n128_u32[2] = a1[3].n128_u32[2];
      a1 += 4;
      a5 += 4;
      if (a1 == a2)
      {
        goto LABEL_21;
      }
    }
  }

  if (a1 != a2)
  {
    v14 = 0;
    do
    {
      v15 = &a5[v14];
      v16 = &a1[v14];
      v15->n128_u64[0] = a1[v14].n128_u64[0];
      v15->n128_u64[1] = 0;
      v15[1].n128_u64[0] = 0;
      v15[1].n128_u64[1] = 0;
      *(v15 + 8) = *(&a1[v14] + 8);
      v15[1].n128_u64[1] = a1[v14 + 1].n128_u64[1];
      v16->n128_u64[1] = 0;
      v16[1].n128_u64[0] = 0;
      v16[1].n128_u64[1] = 0;
      result = a1[v14 + 2];
      v15[3].n128_u64[0] = a1[v14 + 3].n128_u64[0];
      v15[2] = result;
      v16[2].n128_u64[1] = 0;
      v16[3].n128_u64[0] = 0;
      v16[2].n128_u64[0] = 0;
      v15[3].n128_u32[2] = a1[v14 + 3].n128_u32[2];
      v14 += 4;
    }

    while (&v16[4] != a2);
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7)
{
  v21 = 0;
  if (a5 > a6)
  {
    v10 = a7;
    if (a2 != a3)
    {
      v11 = 0;
      v10 = a7;
      v12 = a2;
      do
      {
        v10->n128_u64[0] = v12->n128_u64[0];
        v10->n128_u64[1] = 0;
        v10[1].n128_u64[0] = 0;
        v10[1].n128_u64[1] = 0;
        *(v10 + 8) = *(v12 + 8);
        v10[1].n128_u64[1] = v12[1].n128_u64[1];
        v12->n128_u64[1] = 0;
        v12[1].n128_u64[0] = 0;
        v12[1].n128_u64[1] = 0;
        v13 = v12[2];
        v10[3].n128_u64[0] = v12[3].n128_u64[0];
        v10[2] = v13;
        v12[2].n128_u64[1] = 0;
        v12[3].n128_u64[0] = 0;
        v12[2].n128_u64[0] = 0;
        v10[3].n128_u32[2] = v12[3].n128_u32[2];
        ++v11;
        v12 += 4;
        v10 += 4;
      }

      while (v12 != a3);
      v21 = v11;
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>>(v10, v10, a7, a7, a2, a2, a1, a1, a3, a3);
    if (!a7)
    {
      return;
    }

    goto LABEL_13;
  }

  v14 = a7;
  if (a1 != a2)
  {
    v15 = 0;
    v14 = a7;
    v16 = a1;
    do
    {
      v14->n128_u64[0] = *v16;
      v14->n128_u64[1] = 0;
      v14[1].n128_u64[0] = 0;
      v14[1].n128_u64[1] = 0;
      *(v14 + 8) = *(v16 + 8);
      v14[1].n128_u64[1] = *(v16 + 24);
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = *(v16 + 32);
      v14[3].n128_u64[0] = *(v16 + 48);
      v14[2] = v17;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 32) = 0;
      v14[3].n128_u32[2] = *(v16 + 56);
      ++v15;
      v16 += 64;
      v14 += 4;
    }

    while (v16 != a2);
    v21 = v15;
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<long long>::Solution *,operations_research::sat::SharedSolutionRepository<long long>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(a7, v14, a2, a3, a1);
  if (a7)
  {
LABEL_13:
    if (!v21)
    {
      return;
    }

    v18 = 0;
    for (i = a7 + 2; i[1].n128_i8[7] < 0; i += 4)
    {
      operator delete(i->n128_u64[0]);
      v20 = i[-2].n128_u64[1];
      if (v20)
      {
        goto LABEL_20;
      }

LABEL_15:
      if (++v18 >= v21)
      {
        return;
      }
    }

    v20 = i[-2].n128_u64[1];
    if (!v20)
    {
      goto LABEL_15;
    }

LABEL_20:
    i[-1].n128_u64[0] = v20;
    operator delete(v20);
    goto LABEL_15;
  }
}

void sub_23CB04360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB04374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3;
  if (a1 != a2)
  {
    v5 = a2;
    if (a2 == a3)
    {
      return a1;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      while (1)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v11, &v10);
        v4 = v11 + 8;
        v6 = v10 + 8;
        v10 = v6;
        v11 += 8;
        if (v6 == a3)
        {
          break;
        }

        if (v4 == v5)
        {
          v5 = v6;
        }
      }

      if (v4 != v5)
      {
        do
        {
          v10 = v5;
          while (1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v11, &v10);
            v8 = v11 + 8;
            v9 = v10 + 8;
            v10 = v9;
            v11 += 8;
            if (v9 == a3)
            {
              break;
            }

            if (v8 == v5)
            {
              v5 = v9;
            }
          }
        }

        while (v8 != v5);
      }
    }
  }

  return v4;
}

__n128 std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<long long>::Solution *,operations_research::sat::SharedSolutionRepository<long long>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5)
{
  if (a1 == a2)
  {
    return result;
  }

  v5 = a5;
  v9 = a1;
  v10 = a5 + 32;
  while (a3 != a4)
  {
    if (a3->n128_u64[0] == v9->n128_u64[0])
    {
      v12 = a3->n128_u64[1];
      v13 = a3[1].n128_u64[0];
      v14 = v9->n128_u64[1];
      v15 = v9[1].n128_u64[0];
      v16 = (v13 - v12) >> 3;
      if (v15 - v14 < v16)
      {
        v16 = v15 - v14;
      }

      if ((v16 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v17 = 8 * v16;
        v18 = &v12[v16];
        while (*v12 == *v14)
        {
          ++v12;
          ++v14;
          v17 -= 8;
          if (!v17)
          {
            v12 = v18;
            break;
          }
        }
      }

      if (v14 == v15 || v12 != v13 && *v12 >= *v14)
      {
        goto LABEL_16;
      }

LABEL_21:
      *v5 = a3->n128_u64[0];
      v20 = *(v5 + 8);
      if (v20)
      {
        *(v5 + 16) = v20;
        operator delete(v20);
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      *(v5 + 8) = *(a3 + 8);
      *(v5 + 24) = a3[1].n128_u64[1];
      a3->n128_u64[1] = 0;
      a3[1].n128_u64[0] = 0;
      a3[1].n128_u64[1] = 0;
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      result = a3[2];
      *(v5 + 48) = a3[3].n128_u64[0];
      *(v5 + 32) = result;
      a3[3].n128_u8[7] = 0;
      a3[2].n128_u8[0] = 0;
      *(v5 + 56) = a3[3].n128_u32[2];
      a3 += 4;
      v5 += 64;
      v10 += 64;
      if (v9 == a2)
      {
        return result;
      }
    }

    else
    {
      if (a3->n128_u64[0] < v9->n128_u64[0])
      {
        goto LABEL_21;
      }

LABEL_16:
      *v5 = v9->n128_u64[0];
      v19 = *(v5 + 8);
      if (v19)
      {
        *(v5 + 16) = v19;
        operator delete(v19);
        *(v5 + 8) = 0;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      *(v5 + 8) = *(v9 + 8);
      *(v5 + 24) = v9[1].n128_u64[1];
      v9->n128_u64[1] = 0;
      v9[1].n128_u64[0] = 0;
      v9[1].n128_u64[1] = 0;
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      result = v9[2];
      *(v5 + 48) = v9[3].n128_u64[0];
      *(v5 + 32) = result;
      v9[3].n128_u8[7] = 0;
      v9[2].n128_u8[0] = 0;
      *(v5 + 56) = v9[3].n128_u32[2];
      v9 += 4;
      v5 += 64;
      v10 += 64;
      if (v9 == a2)
      {
        return result;
      }
    }
  }

  do
  {
    v21 = *(v10 - 24);
    *(v10 - 32) = v9->n128_u64[0];
    if (v21)
    {
      *(v10 - 16) = v21;
      operator delete(v21);
      *(v10 - 24) = 0;
      *(v10 - 16) = 0;
      *(v10 - 8) = 0;
    }

    *(v10 - 24) = *(v9 + 8);
    *(v10 - 8) = v9[1].n128_u64[1];
    v9->n128_u64[1] = 0;
    v9[1].n128_u64[0] = 0;
    v9[1].n128_u64[1] = 0;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    result = v9[2];
    *(v10 + 16) = v9[3].n128_u64[0];
    *v10 = result;
    v9[3].n128_u8[7] = 0;
    v9[2].n128_u8[0] = 0;
    *(v10 + 24) = v9[3].n128_u32[2];
    v9 += 4;
    v10 += 64;
  }

  while (v9 != a2);
  return result;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  while (a6 != a8)
  {
    v17 = a6 - 64;
    v16 = *(a6 - 64);
    v19 = v13 - 64;
    v18 = *(v13 - 64);
    if (v18 == v16)
    {
      v20 = *(v13 - 56);
      v21 = *(v13 - 48);
      v22 = *(a6 - 56);
      v23 = *(a6 - 48);
      v24 = v21 - v20;
      if (v23 - v22 < v24)
      {
        v24 = v23 - v22;
      }

      if ((v24 & 0x1FFFFFFFFFFFFFFFLL) != 0)
      {
        v25 = 8 * v24;
        v26 = &v20[v24];
        while (*v20 == *v22)
        {
          ++v20;
          ++v22;
          v25 -= 8;
          if (!v25)
          {
            v20 = v26;
            break;
          }
        }
      }

      if (v22 == v23 || v20 != v21 && *v20 >= *v22)
      {
LABEL_17:
        v27 = *(a10 - 56);
        *(a10 - 64) = v18;
        if (v27)
        {
          *(a10 - 48) = v27;
          operator delete(v27);
          *(a10 - 56) = 0;
          *(a10 - 48) = 0;
          *(a10 - 40) = 0;
        }

        v28 = (v13 - 56);
        *(a10 - 56) = *(v13 - 56);
        *(a10 - 40) = *(v13 - 40);
        *v28 = 0;
        v28[1] = 0;
        v28[2] = 0;
        v29 = a10 - 32;
        v30 = v13;
        v17 = a6;
        v13 -= 64;
        if ((*(a10 - 9) & 0x80000000) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_3;
      }
    }

    else if (v18 >= v16)
    {
      goto LABEL_17;
    }

    v31 = *(a10 - 56);
    *(a10 - 64) = v16;
    if (v31)
    {
      *(a10 - 48) = v31;
      operator delete(v31);
      *(a10 - 56) = 0;
      *(a10 - 48) = 0;
      *(a10 - 40) = 0;
    }

    v32 = (a6 - 56);
    *(a10 - 56) = *(a6 - 56);
    *(a10 - 40) = *(a6 - 40);
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v29 = a10 - 32;
    v30 = a6;
    v19 = v13;
    a6 -= 64;
    if ((*(a10 - 9) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    operator delete(*v29);
    a6 = v17;
    v13 = v19;
LABEL_4:
    v15 = *(v30 - 32);
    *(v29 + 16) = *(v30 - 16);
    *v29 = v15;
    *(v30 - 9) = 0;
    *(v30 - 32) = 0;
    *(a10 - 8) = *(v30 - 8);
    a10 -= 64;
    if (v13 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v33 = 0;
    do
    {
      v36 = v13 + v33;
      v37 = a10 + v33;
      v39 = (a10 + v33 - 56);
      v38 = *v39;
      *(a10 + v33 - 64) = *(v13 + v33 - 64);
      if (v38)
      {
        *(v37 - 48) = v38;
        operator delete(v38);
        *v39 = 0;
        *(a10 + v33 - 48) = 0;
        *(a10 + v33 - 40) = 0;
      }

      v40 = (v36 - 56);
      *v39 = *(v36 - 56);
      *(v37 - 40) = *(v36 - 40);
      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
      v41 = (v37 - 32);
      if (*(v37 - 9) < 0)
      {
        operator delete(*v41);
      }

      v34 = v13 + v33;
      v35 = *(v13 + v33 - 32);
      *(v37 - 16) = *(v13 + v33 - 16);
      *v41 = v35;
      *(v34 - 9) = 0;
      *(v34 - 32) = 0;
      *(a10 + v33 - 8) = *(v13 + v33 - 8);
      v33 -= 64;
    }

    while (v13 + v33 != a4);
  }
}

uint64_t *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v5 = a1 + 8;
    result = a2;
    if (a1 + 8 != a2)
    {
      v6 = *a1;
      while (1)
      {
        v7 = v6;
        v6 = *v5;
        if (v7 == *v5)
        {
          v8 = *(v5 - 7);
          v9 = *(v5 - 6) - v8;
          v10 = v5[1];
          if (v9 == v5[2] - v10 && !memcmp(v8, v10, v9))
          {
            break;
          }
        }

        v5 += 8;
        if (v5 == a2)
        {
          return a2;
        }
      }

      v11 = v5 - 8;
      result = a2;
      if (v11 != a2)
      {
        if (v11 + 16 != a2)
        {
          v12 = v11 + 23;
          do
          {
            v15 = *(v12 - 7);
            if (*v11 != v15 || (v16 = v11[1], v17 = v11[2] - v16, v18 = *(v12 - 6), v17 != *(v12 - 5) - v18) || memcmp(v16, v18, v17))
            {
              v11[8] = v15;
              v19 = v11[9];
              if (v19)
              {
                v11[10] = v19;
                operator delete(v19);
                v11[9] = 0;
                v11[10] = 0;
                v11[11] = 0;
              }

              v20 = v12 - 12;
              *(v11 + 9) = *(v12 - 3);
              v11[11] = *(v12 - 4);
              *v20 = 0;
              v20[1] = 0;
              v20[2] = 0;
              if (*(v11 + 119) < 0)
              {
                operator delete(v11[12]);
              }

              v13 = *(v12 - 6);
              v11[14] = *(v12 - 1);
              *(v11 + 6) = v13;
              *(v12 - 1) = 0;
              *(v12 - 24) = 0;
              *(v11 + 30) = *v12;
              v11 += 8;
            }

            v14 = (v12 + 2);
            v12 += 16;
          }

          while (v14 != a2);
        }

        return v11 + 8;
      }
    }
  }

  return result;
}

uint64_t gtl::STLStableSortAndRemoveDuplicates<std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>>(__n128 **a1, __n128 a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 >> 6;
  if (v5 >> 6 < 1)
  {
    v12 = 0;
    v8 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D826F0];
    v8 = v5 >> 6;
    while (1)
    {
      v9 = operator new(v8 << 6, v7);
      if (v9)
      {
        break;
      }

      v10 = v8 >> 1;
      v11 = v8 > 1;
      v8 >>= 1;
      if (!v11)
      {
        v12 = 0;
        v8 = v10;
        goto LABEL_8;
      }
    }

    v12 = v9;
  }

LABEL_8:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v3, v4, &v15, v6, v12, v8, a2);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__equal_to &>(*a1, a1[1]);
  return std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::erase(a1, v13, a1[1]);
}

void sub_23CB04BC4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<operations_research::sat::SharedSolutionRepository<double>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<double>::Solution>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution*>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution*>>(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 6)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 6);
    if (v12 >> 58)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - v11;
    if (v13 >> 5 > v12)
    {
      v12 = v13 >> 5;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFC0)
    {
      v14 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v40 = a1;
    if (v14)
    {
      if (!(v14 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v29 = (a2 - v11) >> 6 << 6;
    __p = 0;
    v37 = v29;
    v38 = v29;
    v39 = 0;
    if ((a5 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v30 = a5 << 6;
      v31 = v29 + (a5 << 6);
      do
      {
        std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(v40, v29, v7);
        v29 += 64;
        v7 += 8;
        v30 -= 64;
      }

      while (v30);
      v29 = v31;
    }

    v38 = v29;
    v5 = std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__swap_out_circular_buffer(a1, &__p, v5);
    v32 = v37;
    while (1)
    {
      while (1)
      {
        v33 = v38;
        if (v38 == v32)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return v5;
        }

        v38 -= 8;
        if (*(v33 - 9) < 0)
        {
          break;
        }

        v34 = *(v33 - 7);
        if (v34)
        {
          goto LABEL_36;
        }
      }

      operator delete(*(v33 - 4));
      v34 = *(v33 - 7);
      if (v34)
      {
LABEL_36:
        *(v33 - 6) = v34;
        operator delete(v34);
      }
    }
  }

  v15 = v10 - a2;
  v16 = (v10 - a2) >> 6;
  if (v16 >= a5)
  {
    v24 = a5 << 6;
    std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__move_range(a1, a2, a1[1], a2 + (a5 << 6));
    v25 = v7 + v24;
    v26 = v5 + 8;
    v27 = v7 + 1;
    do
    {
      v28 = v27 - 1;
      *(v26 - 8) = *(v27 - 1);
      if (v26 != v27)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v26, *v27, v27[1], (v27[1] - *v27) >> 3);
      }

      std::string::operator=((v26 + 24), v27 + 1);
      *(v26 + 48) = *(v27 + 12);
      v26 += 64;
      v27 += 8;
    }

    while (v28 + 8 != v25);
  }

  else
  {
    v18 = a3 + v15;
    v41 = a1[1];
    v42 = v10;
    __p = a1;
    v37 = &v41;
    v38 = &v42;
    v19 = v10;
    LOBYTE(v39) = 0;
    if ((a3 + v15) != a4)
    {
      v19 = v10;
      v20 = (a3 + v15);
      do
      {
        std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>::construct[abi:ne200100]<operations_research::sat::SharedSolutionRepository<long long>::Solution,operations_research::sat::SharedSolutionRepository<long long>::Solution&>(a1, v19, v20);
        v20 += 8;
        v19 = v42 + 64;
        v42 += 64;
      }

      while (v20 != a4);
    }

    a1[1] = v19;
    if (v16 >= 1)
    {
      std::vector<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>>::__move_range(a1, v5, v10, v5 + (a5 << 6));
      if (v10 != v5)
      {
        v21 = v5 + 8;
        v22 = v7 + 1;
        do
        {
          v23 = v22 - 1;
          *(v21 - 8) = *(v22 - 1);
          if (v21 != v22)
          {
            std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v21, *v22, v22[1], (v22[1] - *v22) >> 3);
          }

          std::string::operator=((v21 + 24), v22 + 1);
          *(v21 + 48) = *(v22 + 12);
          v21 += 64;
          v22 += 8;
        }

        while (v23 + 8 != v18);
      }
    }
  }

  return v5;
}

void sub_23CB04EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CB04EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution>,operations_research::sat::SharedSolutionRepository<long long>::Solution*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_23CB04F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::allocator<operations_research::sat::SharedSolutionRepository<long long>::Solution> &>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, uint64_t a3, unint64_t a4, __n128 *a5, int64_t a6, __n128 a7)
{
  v36 = a1;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = a2[-4].n128_i64[0];
      v35 = a2 - 4;
      if (v7 == a1->n128_u64[0])
      {
        v9 = a1->n128_i64[1];
        v8 = a1[1].n128_i64[0];
        if (v9 == v8)
        {
          return;
        }

        v10 = a2[-4].n128_u64[1];
        v11 = v9 + 8;
        while (v10 != a2[-3].n128_u64[0])
        {
          v12 = *v10;
          v13 = *(v11 - 8);
          if (*v10 < v13)
          {
            break;
          }

          ++v10;
          v14 = v13 < v12 || v11 == v8;
          v11 += 8;
          if (v14)
          {
            return;
          }
        }
      }

      else if (v7 >= a1->n128_u64[0])
      {
        return;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v36, &v35);
      return;
    }

    if (a4 <= 0)
    {

      std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a1, a2);
    }

    else
    {
      v16 = a4 >> 1;
      v17 = &a1[4 * (a4 >> 1)];
      if (a4 <= a6)
      {
        v28.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a1, a1[4 * (a4 >> 1)].n128_u64, a3, a4 >> 1, a5, a7);
        v29 = a4 - v16;
        v30 = &a5[4 * v16];
        v31.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v17, a2->n128_u64, a3, v29, v30, v28);
        std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<double>::Solution *,operations_research::sat::SharedSolutionRepository<double>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a5, v30, v30, &a5[4 * a4], a1, v31);
        if (a5)
        {
          v32 = 0;
          v33 = a5 + 2;
          do
          {
            if (v33[1].n128_i8[7] < 0)
            {
              operator delete(v33->n128_u64[0]);
            }

            v34 = v33[-2].n128_u64[1];
            if (v34)
            {
              v33[-1].n128_u64[0] = v34;
              operator delete(v34);
            }

            ++v32;
            v33 += 4;
          }

          while (v32 < a4);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a1, &a1[4 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v23 = a4 - v16;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v17, a2, a3, v23, a5, a6);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a1, v17, a2, a3, v16, v23, a5, a6, v24);
      }
    }
  }
}

void sub_23CB0516C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 8;
    if (a1 + 8 != a2)
    {
      v4 = a1;
      v33 = a2;
      do
      {
        v5 = v4;
        v4 = v3;
        v6 = *v3;
        if (*v3 == *v5)
        {
          v8 = v5[1];
          v7 = v5[2];
          if (v8 != v7)
          {
            v9 = v5[9];
            v10 = v5[10];
            v11 = v8 + 8;
            v12 = v9;
            while (v12 != v10)
            {
              v13 = *v12;
              v14 = *(v11 - 8);
              if (*v12 < v14)
              {
                break;
              }

              ++v12;
              v15 = v14 < v13 || v11 == v7;
              v11 += 8;
              if (v15)
              {
                goto LABEL_5;
              }
            }

            goto LABEL_19;
          }
        }

        else if (v6 < *v5)
        {
          v9 = v5[9];
          v10 = v5[10];
LABEL_19:
          v16 = v5[11];
          v5[9] = 0;
          v5[10] = 0;
          v5[11] = 0;
          v34 = *(v5 + 96);
          *v35 = *(v5 + 97);
          *&v35[14] = *(v5 + 111);
          v17 = *(v5 + 119);
          v5[12] = 0;
          v5[13] = 0;
          v5[14] = 0;
          v18 = *(v5 + 30);
          v19 = v4;
          v20 = *v5;
          while (1)
          {
LABEL_21:
            v21 = v5;
            *v19 = v20;
            v22 = v19[1];
            if (v22)
            {
              v19[2] = v22;
              operator delete(v22);
              v19[2] = 0;
              v19[3] = 0;
            }

            *(v19 + 1) = *(v21 + 1);
            v19[3] = v21[3];
            v21[1] = 0;
            v21[2] = 0;
            v21[3] = 0;
            if (*(v19 + 55) < 0)
            {
              operator delete(v19[4]);
            }

            v23 = *(v21 + 2);
            v19[6] = v21[6];
            *(v19 + 2) = v23;
            *(v21 + 55) = 0;
            *(v21 + 32) = 0;
            *(v19 + 14) = *(v21 + 14);
            if (v21 == a1)
            {
              break;
            }

            v5 = v21 - 8;
            v20 = *(v21 - 8);
            if (v6 == v20)
            {
              v25 = *(v21 - 7);
              v24 = *(v21 - 6);
              if (v25 == v24)
              {
LABEL_39:
                v31 = v21;
                *v21 = v6;
                v32 = v21[1];
                if (!v32)
                {
                  goto LABEL_41;
                }

                goto LABEL_40;
              }

              v26 = v25 + 8;
              v27 = v9;
              while (1)
              {
                if (v27 == v10)
                {
                  v19 = v21;
                  goto LABEL_21;
                }

                v28 = *v27;
                v29 = *(v26 - 8);
                if (*v27 < v29)
                {
                  break;
                }

                ++v27;
                v30 = v29 < v28 || v26 == v24;
                v26 += 8;
                if (v30)
                {
                  goto LABEL_39;
                }
              }

              v19 = v21;
            }

            else
            {
              v19 = v21;
              if (v6 >= v20)
              {
                goto LABEL_39;
              }
            }
          }

          v31 = a1;
          *a1 = v6;
          v32 = v21[1];
          if (v32)
          {
LABEL_40:
            v31[2] = v32;
            operator delete(v32);
            v21[2] = 0;
            v21[3] = 0;
          }

LABEL_41:
          v21[1] = v9;
          v31[2] = v10;
          v31[3] = v16;
          if (*(v31 + 55) < 0)
          {
            operator delete(v21[4]);
          }

          *(v21 + 32) = v34;
          *(v21 + 33) = *v35;
          *(v21 + 47) = *&v35[14];
          *(v21 + 55) = v17;
          *(v31 + 14) = v18;
          a2 = v33;
        }

LABEL_5:
        v3 = v4 + 8;
      }

      while (v4 + 8 != a2);
    }
  }
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *result, unint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5, __n128 a6)
{
  switch(a4)
  {
    case 0uLL:
      return a6.n128_f64[0];
    case 2uLL:
      v6 = *(a2 - 8);
      if (v6 == result->n128_u64[0])
      {
        v8 = result->n128_u64[1];
        v7 = result[1].n128_u64[0];
        if (v8 != v7)
        {
          v9 = *(a2 - 7);
          v10 = v8 + 8;
          while (v9 != *(a2 - 6))
          {
            v11 = *v9;
            v12 = *(v10 - 8);
            if (*v9 < v12)
            {
              break;
            }

            ++v9;
            v13 = v12 < v11 || v10 == v7;
            v10 += 8;
            if (v13)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_22;
        }
      }

      else if (v6 < result->n128_u64[0])
      {
LABEL_22:
        *a5 = v6;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        *(a5 + 8) = *(a2 - 7);
        *(a5 + 24) = *(a2 - 5);
        *(a2 - 7) = 0;
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        v14 = *(a2 - 2);
        *(a5 + 48) = *(a2 - 2);
        *(a5 + 32) = v14;
        *(a2 - 3) = 0;
        *(a2 - 2) = 0;
        *(a2 - 4) = 0;
        *(a5 + 56) = *(a2 - 2);
        v15 = result->n128_u64[0];
        *(a5 + 80) = 0;
        *(a5 + 88) = 0;
        *(a5 + 64) = v15;
        *(a5 + 72) = 0;
        *(a5 + 72) = *(result + 8);
        *(a5 + 88) = result[1].n128_u64[1];
        result->n128_u64[1] = 0;
        result[1].n128_u64[0] = 0;
        result[1].n128_u64[1] = 0;
        a6 = result[2];
        *(a5 + 112) = result[3].n128_u64[0];
        *(a5 + 96) = a6;
        result[2].n128_u64[1] = 0;
        result[3].n128_u64[0] = 0;
        result[2].n128_u64[0] = 0;
        v16 = result[3].n128_u32[2];
LABEL_24:
        *(a5 + 120) = v16;
        return a6.n128_f64[0];
      }

LABEL_23:
      *a5 = result->n128_u64[0];
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 8) = *(result + 8);
      *(a5 + 24) = result[1].n128_u64[1];
      result->n128_u64[1] = 0;
      result[1].n128_u64[0] = 0;
      result[1].n128_u64[1] = 0;
      v17 = result[2];
      *(a5 + 48) = result[3].n128_u64[0];
      *(a5 + 32) = v17;
      result[2].n128_u64[1] = 0;
      result[3].n128_u64[0] = 0;
      result[2].n128_u64[0] = 0;
      *(a5 + 56) = result[3].n128_u32[2];
      v18 = *(a2 - 8);
      *(a5 + 80) = 0;
      *(a5 + 88) = 0;
      *(a5 + 64) = v18;
      *(a5 + 72) = 0;
      *(a5 + 72) = *(a2 - 7);
      *(a5 + 88) = *(a2 - 5);
      *(a2 - 7) = 0;
      *(a2 - 6) = 0;
      *(a2 - 5) = 0;
      a6 = *(a2 - 2);
      *(a5 + 112) = *(a2 - 2);
      *(a5 + 96) = a6;
      *(a2 - 3) = 0;
      *(a2 - 2) = 0;
      *(a2 - 4) = 0;
      v16 = *(a2 - 2);
      goto LABEL_24;
    case 1uLL:
      *a5 = result->n128_u64[0];
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 8) = *(result + 8);
      *(a5 + 24) = result[1].n128_u64[1];
      result->n128_u64[1] = 0;
      result[1].n128_u64[0] = 0;
      result[1].n128_u64[1] = 0;
      a6 = result[2];
      *(a5 + 48) = result[3].n128_u64[0];
      *(a5 + 32) = a6;
      result[2].n128_u64[1] = 0;
      result[3].n128_u64[0] = 0;
      result[2].n128_u64[0] = 0;
      *(a5 + 56) = result[3].n128_u32[2];
      break;
    default:
      if (a4 > 8)
      {
        v19 = a4 >> 1;
        v20 = a4 >> 1 << 6;
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(result, result + v20, a3, v19, a5, v19);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>((result + v20), a2, a3, a4 - v19, a5 + v20, a4 - v19);

        a6.n128_u64[0] = std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(result, (result + v20), (result->n128_u64 + v20), a2, a5, v26).n128_u64[0];
      }

      else
      {

        a6.n128_u64[0] = std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(result, a2, a5, a6).n128_u64[0];
      }

      break;
  }

  return a6.n128_f64[0];
}

__n128 std::__merge_move_assign[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<double>::Solution *,operations_research::sat::SharedSolutionRepository<double>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = a5;
  if (a1 == a2)
  {
LABEL_33:
    if (a3 != a4)
    {
      v22 = v6 + 32;
      do
      {
        v23 = *(v22 - 24);
        *(v22 - 32) = *a3;
        if (v23)
        {
          *(v22 - 16) = v23;
          operator delete(v23);
          *(v22 - 24) = 0;
          *(v22 - 16) = 0;
          *(v22 - 8) = 0;
        }

        *(v22 - 24) = *(a3 + 8);
        *(v22 - 8) = *(a3 + 24);
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        if (*(v22 + 23) < 0)
        {
          operator delete(*v22);
        }

        result = *(a3 + 32);
        *(v22 + 16) = *(a3 + 48);
        *v22 = result;
        *(a3 + 55) = 0;
        *(a3 + 32) = 0;
        *(v22 + 24) = *(a3 + 56);
        a3 += 64;
        v22 += 64;
      }

      while (a3 != a4);
    }

    return result;
  }

  v10 = a1;
  v11 = a5 + 32;
  while (a3 != a4)
  {
    if (*a3 == v10->n128_u64[0])
    {
      v13 = v10->n128_u64[1];
      v12 = v10[1].n128_u64[0];
      if (v13 != v12)
      {
        v14 = *(a3 + 8);
        v15 = v13 + 8;
        while (v14 != *(a3 + 16))
        {
          v16 = *v14;
          v17 = *(v15 - 8);
          if (*v14 < v17)
          {
            break;
          }

          ++v14;
          v18 = v17 < v16 || v15 == v12;
          v15 += 8;
          if (v18)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_17;
      }

LABEL_23:
      *v6 = v10->n128_u64[0];
      v20 = *(v6 + 8);
      if (v20)
      {
        *(v6 + 16) = v20;
        operator delete(v20);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
      }

      *(v6 + 8) = *(v10 + 8);
      *(v6 + 24) = v10[1].n128_u64[1];
      v10->n128_u64[1] = 0;
      v10[1].n128_u64[0] = 0;
      v10[1].n128_u64[1] = 0;
      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      result = v10[2];
      *(v6 + 48) = v10[3].n128_u64[0];
      *(v6 + 32) = result;
      v10[3].n128_u8[7] = 0;
      v10[2].n128_u8[0] = 0;
      *(v6 + 56) = v10[3].n128_u32[2];
      v10 += 4;
      v6 += 64;
      v11 += 64;
      if (v10 == a2)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (*a3 >= v10->n128_u64[0])
      {
        goto LABEL_23;
      }

LABEL_17:
      *v6 = *a3;
      v19 = *(v6 + 8);
      if (v19)
      {
        *(v6 + 16) = v19;
        operator delete(v19);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
      }

      *(v6 + 8) = *(a3 + 8);
      *(v6 + 24) = *(a3 + 24);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      result = *(a3 + 32);
      *(v6 + 48) = *(a3 + 48);
      *(v6 + 32) = result;
      *(a3 + 55) = 0;
      *(a3 + 32) = 0;
      *(v6 + 56) = *(a3 + 56);
      a3 += 64;
      v6 += 64;
      v11 += 64;
      if (v10 == a2)
      {
        goto LABEL_33;
      }
    }
  }

  while (v10 != a2)
  {
    v21 = *(v11 - 24);
    *(v11 - 32) = v10->n128_u64[0];
    if (v21)
    {
      *(v11 - 16) = v21;
      operator delete(v21);
      *(v11 - 24) = 0;
      *(v11 - 16) = 0;
      *(v11 - 8) = 0;
    }

    *(v11 - 24) = *(v10 + 8);
    *(v11 - 8) = v10[1].n128_u64[1];
    v10->n128_u64[1] = 0;
    v10[1].n128_u64[0] = 0;
    v10[1].n128_u64[1] = 0;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    result = v10[2];
    *(v11 + 16) = v10[3].n128_u64[0];
    *v11 = result;
    v10[3].n128_u8[7] = 0;
    v10[2].n128_u8[0] = 0;
    *(v11 + 24) = v10[3].n128_u32[2];
    v10 += 4;
    v11 += 64;
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, uint64_t a8, __n128 a9)
{
  v57 = a2;
  v58 = a1;
  if (!a6)
  {
    return;
  }

  v10 = a6;
  v13 = a2;
  v14 = a1;
LABEL_4:
  if (v10 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v15 = a2->n128_u64[0];
    while (1)
    {
      if (v15 == v14->n128_u64[0])
      {
        v17 = v14->n128_u64[1];
        v16 = v14[1].n128_u64[0];
        if (v17 != v16)
        {
          v18 = a2->n128_u64[1];
          v19 = v17 + 8;
          while (v18 != a2[1].n128_u64[0])
          {
            v20 = *v18;
            v21 = *(v19 - 8);
            if (*v18 < v21)
            {
              break;
            }

            ++v18;
            v22 = v21 < v20 || v19 == v16;
            v19 += 8;
            if (v22)
            {
              goto LABEL_20;
            }
          }

LABEL_22:
          v58 = v14;
          if (a5 < v10)
          {
            v23 = v10 / 2;
            v24 = &v13[8 * (v10 / 2)];
            if (v13 == v14)
            {
LABEL_24:
              v25 = v13;
              v26 = (v13 - v14) >> 6;
              v13 = v24;
              goto LABEL_68;
            }

            v34 = (v13 - v14) >> 6;
            v35 = *v24;
            v13 = v14;
            while (2)
            {
              v36 = v34 >> 1;
              v37 = &v13[8 * (v34 >> 1)];
              if (v35 == *v37)
              {
                v39 = v37[1];
                v38 = v37[2];
                if (v39 != v38)
                {
                  v40 = v39 + 8;
                  v41 = v24[1];
                  while (v41 != v24[2])
                  {
                    v42 = *v41;
                    v43 = *(v40 - 8);
                    if (*v41 < v43)
                    {
                      break;
                    }

                    ++v41;
                    v44 = v43 < v42 || v40 == v38;
                    v40 += 8;
                    if (v44)
                    {
                      goto LABEL_37;
                    }
                  }

LABEL_38:
                  v34 = v36;
                  if (!v36)
                  {
                    goto LABEL_24;
                  }

                  continue;
                }
              }

              else if (v35 < *v37)
              {
                goto LABEL_38;
              }

              break;
            }

LABEL_37:
            v13 = v37 + 8;
            v36 = v34 + ~v36;
            goto LABEL_38;
          }

          if (a5 == 1)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *> &>(&v58, &v57);
            return;
          }

          v26 = a5 / 2;
          v25 = &v14[4 * (a5 / 2)];
          v13 = a2;
          if (a3 != a2)
          {
            v27 = (a3 - a2) >> 6;
            v28 = *v25;
            v29 = v25[2];
            v30 = v25[1];
            if (v30 == v29)
            {
              v13 = a2;
              do
              {
                v31 = v27 >> 1;
                v32 = &v13[8 * (v27 >> 1)];
                if (*v32 != v28 && *v32 < v28)
                {
                  v13 = v32 + 8;
                  v31 = v27 + ~v31;
                }

                v27 = v31;
              }

              while (v31);
              goto LABEL_67;
            }

            v45 = v30 + 8;
            v13 = a2;
            while (2)
            {
              v46 = v27 >> 1;
              v47 = &v13[8 * (v27 >> 1)];
              if (*v47 == v28)
              {
                v48 = v47[1];
                v49 = v45;
                while (v48 != v47[2])
                {
                  v50 = *v48;
                  v51 = *(v49 - 8);
                  if (*v48 < v51)
                  {
                    break;
                  }

                  ++v48;
                  v52 = v51 < v50 || v49 == v29;
                  v49 += 8;
                  if (v52)
                  {
                    goto LABEL_54;
                  }
                }

LABEL_53:
                v13 = v47 + 8;
                v46 = v27 + ~v46;
              }

              else if (*v47 < v28)
              {
                goto LABEL_53;
              }

LABEL_54:
              v27 = v46;
              if (!v46)
              {
                break;
              }

              continue;
            }
          }

LABEL_67:
          v23 = (v13 - a2) >> 6;
LABEL_68:
          a5 -= v26;
          v10 -= v23;
          v53 = std::__rotate[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<long long>::Solution *>>(v25, a2, v13);
          v54 = v53;
          if (v26 + v23 >= a5 + v10)
          {
            std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v53, v13, a3, a4, a5, v10, a7, a8);
            v13 = v25;
            v10 = v23;
            a5 = v26;
            a3 = v54;
            v57 = v25;
            a2 = v25;
            if (!v23)
            {
              return;
            }
          }

          else
          {
            std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v14, v25, v53, a4, v26, v23, a7, a8);
            v57 = v13;
            v58 = v54;
            v14 = v54;
            a2 = v13;
            if (!v10)
            {
              return;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v15 < v14->n128_u64[0])
      {
        goto LABEL_22;
      }

LABEL_20:
      v14 += 4;
      if (!--a5)
      {
        return;
      }
    }
  }

  std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(v14, a2, a3, a4, a5, v10, a7, a9);
}

__n128 std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(int64_t *a1, unint64_t *a2, __n128 *a3, __n128 result)
{
  if (a1 != a2)
  {
    v6 = a1;
    *a3 = *a1;
    a3[1] = 0uLL;
    *(a3 + 8) = *(a1 + 1);
    a3[1].n128_u64[1] = a1[3];
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0;
    result = *(a1 + 2);
    a3[3].n128_u64[0] = a1[6];
    a3[2] = result;
    a1[5] = 0;
    a1[6] = 0;
    a1[4] = 0;
    a3[3].n128_u32[2] = *(a1 + 14);
    v7 = (a1 + 8);
    if (a1 + 8 != a2)
    {
      v8 = a3;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v12 = v9->n128_u64[0];
          v9 += 4;
          v11 = v12;
          v13 = *v10 < v12;
          if (*v10 == v12)
          {
            break;
          }

          if (v13)
          {
            v15 = v8->n128_u64[1];
            v14 = v8[1].n128_u64[0];
            goto LABEL_19;
          }

LABEL_4:
          v8[4].n128_u64[0] = *v10;
          v8[4].n128_u64[1] = 0;
          v8[5].n128_u64[0] = 0;
          v8[5].n128_u64[1] = 0;
          *(v8 + 72) = *(v6 + 9);
          v8[5].n128_u64[1] = v6[11];
          v6[9] = 0;
          v6[10] = 0;
          v6[11] = 0;
          result = *(v6 + 6);
          v8[7].n128_u64[0] = v6[14];
          v8[6] = result;
          v6[13] = 0;
          v6[14] = 0;
          v6[12] = 0;
          v8[7].n128_u32[2] = *(v6 + 30);
          v7 = v10 + 8;
          v8 = v9;
          v6 = v10;
          if (v10 + 8 == a2)
          {
            return result;
          }
        }

        v15 = v8->n128_u64[1];
        v14 = v8[1].n128_u64[0];
        if (v15 == v14)
        {
          goto LABEL_4;
        }

        v16 = v6[9];
        v17 = v15 + 8;
        while (v16 != v6[10])
        {
          v18 = *v16;
          v19 = *(v17 - 8);
          if (*v16 < v19)
          {
            break;
          }

          ++v16;
          v20 = v19 < v18 || v17 == v14;
          v17 += 8;
          if (v20)
          {
            goto LABEL_4;
          }
        }

LABEL_19:
        v8[4].n128_u64[0] = v11;
        v8[4].n128_u64[1] = v15;
        v21 = v8[1].n128_u64[1];
        v8[5].n128_u64[0] = v14;
        v8[5].n128_u64[1] = v21;
        v8->n128_u64[1] = 0;
        v8[1].n128_u64[0] = 0;
        v22 = v8[2];
        v8[1].n128_u64[1] = 0;
        v8[2].n128_u64[0] = 0;
        v8[6] = v22;
        v8[7].n128_u64[0] = v8[3].n128_u64[0];
        v8[2].n128_u64[1] = 0;
        v8[3].n128_u64[0] = 0;
        v23 = a3;
        v8[7].n128_u32[2] = v8[3].n128_u32[2];
        if (v8 != a3)
        {
          v24 = v8;
          do
          {
            v26 = v24[-4].n128_i64[0];
            v24 -= 4;
            v25 = v26;
            v27 = *v10 < v26;
            if (*v10 == v26)
            {
              v29 = v8[-4].n128_u64[1];
              v28 = v8[-3].n128_u64[0];
              if (v29 == v28)
              {
                goto LABEL_39;
              }

              v30 = v6[9];
              v31 = v29 + 8;
              while (v30 != v6[10])
              {
                v32 = *v30;
                v33 = *(v31 - 8);
                if (*v30 < v33)
                {
                  break;
                }

                ++v30;
                v34 = v33 < v32 || v31 == v28;
                v31 += 8;
                if (v34)
                {
                  goto LABEL_39;
                }
              }
            }

            else if (!v27)
            {
LABEL_39:
              v23 = v8;
              goto LABEL_40;
            }

            v8->n128_u64[0] = v25;
            v35 = v8->n128_u64[1];
            if (v35)
            {
              v8[1].n128_u64[0] = v35;
              operator delete(v35);
            }

            v36 = &v8[-4].n128_u64[1];
            *(v8 + 8) = *(v8 - 56);
            v8[1].n128_u64[1] = v8[-3].n128_u64[1];
            v36[1] = 0;
            v36[2] = 0;
            *v36 = 0;
            if (v8[3].n128_i8[7] < 0)
            {
              operator delete(v8[2].n128_u64[0]);
            }

            v8[2] = v8[-2];
            v8[3].n128_u64[0] = v8[-1].n128_u64[0];
            v8[-1].n128_u8[7] = 0;
            v8[-2].n128_u8[0] = 0;
            v8[3].n128_u32[2] = v8[-1].n128_u32[2];
            v8 = v24;
          }

          while (v24 != a3);
          v23 = a3;
          a3->n128_u64[0] = *v10;
          v38 = &a3->n128_u64[1];
          v37 = a3->n128_u64[1];
          if (!v37)
          {
            goto LABEL_42;
          }

LABEL_41:
          v23[1].n128_u64[0] = v37;
          operator delete(v37);
          *v38 = 0;
          v38[1] = 0;
          v38[2] = 0;
          goto LABEL_42;
        }

LABEL_40:
        v23->n128_u64[0] = *v10;
        v38 = &v23->n128_u64[1];
        v37 = v23->n128_u64[1];
        if (v37)
        {
          goto LABEL_41;
        }

LABEL_42:
        *(v23 + 8) = *(v6 + 9);
        v23[1].n128_u64[1] = v6[11];
        v6[9] = 0;
        v6[10] = 0;
        v6[11] = 0;
        if (v23[3].n128_i8[7] < 0)
        {
          operator delete(v23[2].n128_u64[0]);
        }

        result = *(v6 + 6);
        v23[3].n128_u64[0] = v6[14];
        v23[2] = result;
        *(v6 + 119) = 0;
        *(v6 + 96) = 0;
        v23[3].n128_u32[2] = *(v6 + 30);
        v7 = v10 + 8;
        v8 = v9;
        v6 = v10;
      }

      while (v10 + 8 != a2);
    }
  }

  return result;
}

__n128 std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, unint64_t *a3, unint64_t *a4, __n128 *a5, __n128 result)
{
  if (a1 == a2)
  {
LABEL_20:
    while (a3 != a4)
    {
      *a5 = *a3;
      a5[1] = 0uLL;
      *(a5 + 8) = *(a3 + 1);
      a5[1].n128_u64[1] = a3[3];
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      result = *(a3 + 2);
      a5[3].n128_u64[0] = a3[6];
      a5[2] = result;
      a3[5] = 0;
      a3[6] = 0;
      a3[4] = 0;
      a5[3].n128_u32[2] = *(a3 + 14);
      a3 += 8;
      a5 += 4;
    }

    return result;
  }

  while (a3 != a4)
  {
    if (*a3 == a1->n128_u64[0])
    {
      v7 = a1->n128_u64[1];
      v6 = a1[1].n128_u64[0];
      if (v7 != v6)
      {
        v8 = a3[1];
        v9 = v7 + 8;
        while (v8 != a3[2])
        {
          v10 = *v8;
          v11 = *(v9 - 8);
          if (*v8 < v11)
          {
            break;
          }

          ++v8;
          v12 = v11 < v10 || v9 == v6;
          v9 += 8;
          if (v12)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_17;
      }

LABEL_3:
      *a5 = a1->n128_u64[0];
      a5[1] = 0uLL;
      *(a5 + 8) = *(a1 + 8);
      a5[1].n128_u64[1] = a1[1].n128_u64[1];
      *(a1 + 8) = 0uLL;
      a1[1].n128_u64[1] = 0;
      result = a1[2];
      a5[3].n128_u64[0] = a1[3].n128_u64[0];
      a5[2] = result;
      *(&a1[2] + 8) = 0uLL;
      a1[2].n128_u64[0] = 0;
      a5[3].n128_u32[2] = a1[3].n128_u32[2];
      a1 += 4;
      a5 += 4;
      if (a1 == a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (*a3 >= a1->n128_u64[0])
      {
        goto LABEL_3;
      }

LABEL_17:
      *a5 = *a3;
      a5[1] = 0uLL;
      *(a5 + 8) = *(a3 + 1);
      a5[1].n128_u64[1] = a3[3];
      a3[1] = 0;
      a3[2] = 0;
      a3[3] = 0;
      result = *(a3 + 2);
      a5[3].n128_u64[0] = a3[6];
      a5[2] = result;
      a3[5] = 0;
      a3[6] = 0;
      a3[4] = 0;
      a5[3].n128_u32[2] = *(a3 + 14);
      a3 += 8;
      a5 += 4;
      if (a1 == a2)
      {
        goto LABEL_20;
      }
    }
  }

  if (a1 != a2)
  {
    v13 = 0;
    do
    {
      v14 = &a5[v13];
      v15 = &a1[v13];
      v14->n128_u64[0] = a1[v13].n128_u64[0];
      v14->n128_u64[1] = 0;
      v14[1].n128_u64[0] = 0;
      v14[1].n128_u64[1] = 0;
      *(v14 + 8) = *(&a1[v13] + 8);
      v14[1].n128_u64[1] = a1[v13 + 1].n128_u64[1];
      v15->n128_u64[1] = 0;
      v15[1].n128_u64[0] = 0;
      v15[1].n128_u64[1] = 0;
      result = a1[v13 + 2];
      v14[3].n128_u64[0] = a1[v13 + 3].n128_u64[0];
      v14[2] = result;
      v15[2].n128_u64[1] = 0;
      v15[3].n128_u64[0] = 0;
      v15[2].n128_u64[0] = 0;
      v14[3].n128_u32[2] = a1[v13 + 3].n128_u32[2];
      v13 += 4;
    }

    while (&v15[4] != a2);
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 *a7, __n128 a8)
{
  v21 = 0;
  if (a5 > a6)
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v11 = a7;
      v13 = a2;
      do
      {
        v11->n128_u64[0] = v13->n128_u64[0];
        v11->n128_u64[1] = 0;
        v11[1].n128_u64[0] = 0;
        v11[1].n128_u64[1] = 0;
        *(v11 + 8) = *(v13 + 8);
        v11[1].n128_u64[1] = v13[1].n128_u64[1];
        v13->n128_u64[1] = 0;
        v13[1].n128_u64[0] = 0;
        v13[1].n128_u64[1] = 0;
        v14 = v13[2];
        v11[3].n128_u64[0] = v13[3].n128_u64[0];
        v11[2] = v14;
        v13[2].n128_u64[1] = 0;
        v13[3].n128_u64[0] = 0;
        v13[2].n128_u64[0] = 0;
        v11[3].n128_u32[2] = v13[3].n128_u32[2];
        ++v12;
        v13 += 4;
        v11 += 4;
      }

      while (v13 != a3);
      v21 = v12;
    }

    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>>(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
    if (!a7)
    {
      return;
    }

    goto LABEL_13;
  }

  v15 = a7;
  if (a1 != a2)
  {
    v16 = 0;
    v15 = a7;
    v17 = a1;
    do
    {
      v15->n128_u64[0] = *v17;
      v15->n128_u64[1] = 0;
      v15[1].n128_u64[0] = 0;
      v15[1].n128_u64[1] = 0;
      *(v15 + 8) = *(v17 + 8);
      v15[1].n128_u64[1] = *(v17 + 24);
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
      *(v17 + 24) = 0;
      a8 = *(v17 + 32);
      v15[3].n128_u64[0] = *(v17 + 48);
      v15[2] = a8;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = 0;
      v15[3].n128_u32[2] = *(v17 + 56);
      ++v16;
      v17 += 64;
      v15 += 4;
    }

    while (v17 != a2);
    v21 = v16;
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<double>::Solution *,operations_research::sat::SharedSolutionRepository<double>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(a7, v15, a2, a3, a1, a8);
  if (a7)
  {
LABEL_13:
    if (!v21)
    {
      return;
    }

    v18 = 0;
    for (i = a7 + 2; i[1].n128_i8[7] < 0; i += 4)
    {
      operator delete(i->n128_u64[0]);
      v20 = i[-2].n128_u64[1];
      if (v20)
      {
        goto LABEL_20;
      }

LABEL_15:
      if (++v18 >= v21)
      {
        return;
      }
    }

    v20 = i[-2].n128_u64[1];
    if (!v20)
    {
      goto LABEL_15;
    }

LABEL_20:
    i[-1].n128_u64[0] = v20;
    operator delete(v20);
    goto LABEL_15;
  }
}

void sub_23CB063E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23CB063F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::unique_ptr<operations_research::sat::SharedSolutionRepository<long long>::Solution,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::SharedSolutionRepository<double>::Solution *,operations_research::sat::SharedSolutionRepository<double>::Solution *,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5, __n128 result)
{
  if (a1 == a2)
  {
    return result;
  }

  v6 = a5;
  v10 = a1;
  v11 = a5 + 32;
  while (a3 != a4)
  {
    if (a3->n128_u64[0] == v10->n128_u64[0])
    {
      v13 = v10->n128_u64[1];
      v12 = v10[1].n128_u64[0];
      if (v13 != v12)
      {
        v14 = a3->n128_u64[1];
        v15 = v13 + 8;
        while (v14 != a3[1].n128_u64[0])
        {
          v16 = *v14;
          v17 = *(v15 - 8);
          if (*v14 < v17)
          {
            break;
          }

          ++v14;
          v18 = v17 < v16 || v15 == v12;
          v15 += 8;
          if (v18)
          {
            goto LABEL_23;
          }
        }

        goto LABEL_17;
      }

LABEL_23:
      *v6 = v10->n128_u64[0];
      v20 = *(v6 + 8);
      if (v20)
      {
        *(v6 + 16) = v20;
        operator delete(v20);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
      }

      *(v6 + 8) = *(v10 + 8);
      *(v6 + 24) = v10[1].n128_u64[1];
      v10->n128_u64[1] = 0;
      v10[1].n128_u64[0] = 0;
      v10[1].n128_u64[1] = 0;
      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      result = v10[2];
      *(v6 + 48) = v10[3].n128_u64[0];
      *(v6 + 32) = result;
      v10[3].n128_u8[7] = 0;
      v10[2].n128_u8[0] = 0;
      *(v6 + 56) = v10[3].n128_u32[2];
      v10 += 4;
      v6 += 64;
      v11 += 64;
      if (v10 == a2)
      {
        return result;
      }
    }

    else
    {
      if (a3->n128_u64[0] >= v10->n128_u64[0])
      {
        goto LABEL_23;
      }

LABEL_17:
      *v6 = a3->n128_u64[0];
      v19 = *(v6 + 8);
      if (v19)
      {
        *(v6 + 16) = v19;
        operator delete(v19);
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 24) = 0;
      }

      *(v6 + 8) = *(a3 + 8);
      *(v6 + 24) = a3[1].n128_u64[1];
      a3->n128_u64[1] = 0;
      a3[1].n128_u64[0] = 0;
      a3[1].n128_u64[1] = 0;
      if (*(v6 + 55) < 0)
      {
        operator delete(*(v6 + 32));
      }

      result = a3[2];
      *(v6 + 48) = a3[3].n128_u64[0];
      *(v6 + 32) = result;
      a3[3].n128_u8[7] = 0;
      a3[2].n128_u8[0] = 0;
      *(v6 + 56) = a3[3].n128_u32[2];
      a3 += 4;
      v6 += 64;
      v11 += 64;
      if (v10 == a2)
      {
        return result;
      }
    }
  }

  do
  {
    v21 = *(v11 - 24);
    *(v11 - 32) = v10->n128_u64[0];
    if (v21)
    {
      *(v11 - 16) = v21;
      operator delete(v21);
      *(v11 - 24) = 0;
      *(v11 - 16) = 0;
      *(v11 - 8) = 0;
    }

    *(v11 - 24) = *(v10 + 8);
    *(v11 - 8) = v10[1].n128_u64[1];
    v10->n128_u64[1] = 0;
    v10[1].n128_u64[0] = 0;
    v10[1].n128_u64[1] = 0;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    result = v10[2];
    *(v11 + 16) = v10[3].n128_u64[0];
    *v11 = result;
    v10[3].n128_u8[7] = 0;
    v10[2].n128_u8[0] = 0;
    *(v11 + 24) = v10[3].n128_u32[2];
    v10 += 4;
    v11 += 64;
  }

  while (v10 != a2);
  return result;
}

void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<std::__less<void,void> &>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::reverse_iterator<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>,std::reverse_iterator<std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a2 == a4)
  {
    return;
  }

  v13 = a2;
  while (a6 != a8)
  {
    v17 = a6 - 64;
    v16 = *(a6 - 64);
    v19 = v13 - 64;
    v18 = *(v13 - 64);
    if (v18 == v16)
    {
      v21 = *(a6 - 56);
      v20 = *(a6 - 48);
      if (v21 == v20)
      {
        goto LABEL_22;
      }

      v22 = *(v13 - 56);
      v23 = v21 + 8;
      while (v22 != *(v13 - 48))
      {
        v24 = *v22;
        v25 = *(v23 - 8);
        if (*v22 < v25)
        {
          break;
        }

        ++v22;
        v26 = v25 < v24 || v23 == v20;
        v23 += 8;
        if (v26)
        {
          goto LABEL_22;
        }
      }
    }

    else if (v18 >= v16)
    {
LABEL_22:
      v31 = *(a10 - 56);
      *(a10 - 64) = v18;
      if (v31)
      {
        *(a10 - 48) = v31;
        operator delete(v31);
        *(a10 - 56) = 0;
        *(a10 - 48) = 0;
        *(a10 - 40) = 0;
      }

      v32 = (v13 - 56);
      *(a10 - 56) = *(v13 - 56);
      *(a10 - 40) = *(v13 - 40);
      *v32 = 0;
      v32[1] = 0;
      v32[2] = 0;
      v29 = a10 - 32;
      v30 = v13;
      v17 = a6;
      v13 -= 64;
      if ((*(a10 - 9) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v27 = *(a10 - 56);
    *(a10 - 64) = v16;
    if (v27)
    {
      *(a10 - 48) = v27;
      operator delete(v27);
      *(a10 - 56) = 0;
      *(a10 - 48) = 0;
      *(a10 - 40) = 0;
    }

    v28 = (a6 - 56);
    *(a10 - 56) = *(a6 - 56);
    *(a10 - 40) = *(a6 - 40);
    *v28 = 0;
    v28[1] = 0;
    v28[2] = 0;
    v29 = a10 - 32;
    v30 = a6;
    v19 = v13;
    a6 -= 64;
    if ((*(a10 - 9) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    operator delete(*v29);
    a6 = v17;
    v13 = v19;
LABEL_4:
    v15 = *(v30 - 32);
    *(v29 + 16) = *(v30 - 16);
    *v29 = v15;
    *(v30 - 9) = 0;
    *(v30 - 32) = 0;
    *(a10 - 8) = *(v30 - 8);
    a10 -= 64;
    if (v13 == a4)
    {
      return;
    }
  }

  if (a4 != v13)
  {
    v33 = 0;
    do
    {
      v36 = v13 + v33;
      v37 = a10 + v33;
      v39 = (a10 + v33 - 56);
      v38 = *v39;
      *(a10 + v33 - 64) = *(v13 + v33 - 64);
      if (v38)
      {
        *(v37 - 48) = v38;
        operator delete(v38);
        *v39 = 0;
        *(a10 + v33 - 48) = 0;
        *(a10 + v33 - 40) = 0;
      }

      v40 = (v36 - 56);
      *v39 = *(v36 - 56);
      *(v37 - 40) = *(v36 - 40);
      *v40 = 0;
      v40[1] = 0;
      v40[2] = 0;
      v41 = (v37 - 32);
      if (*(v37 - 9) < 0)
      {
        operator delete(*v41);
      }

      v34 = v13 + v33;
      v35 = *(v13 + v33 - 32);
      *(v37 - 16) = *(v13 + v33 - 16);
      *v41 = v35;
      *(v34 - 9) = 0;
      *(v34 - 32) = 0;
      *(a10 + v33 - 8) = *(v13 + v33 - 8);
      v33 -= 64;
    }

    while (v13 + v33 != a4);
  }
}

void *std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__wrap_iter<operations_research::sat::SharedSolutionRepository<double>::Solution *>,std::__equal_to &>(void *a1, void *a2)
{
  v3 = a1;
  if (a1 == a2)
  {
LABEL_10:
    if (v3 == a2)
    {
      return v3;
    }

    v11 = v3 + 16;
    if (v3 + 16 == a2)
    {
LABEL_25:
      v3 += 8;
      return v3;
    }

    v12 = v3 + 8;
    while (1)
    {
      v14 = v12;
      v12 = v11;
      v15 = *v11;
      if (*v3 != v15)
      {
        goto LABEL_21;
      }

      v17 = v3[1];
      v16 = v3[2];
      v18 = v14[9];
      if (v16 - v17 != v14[10] - v18)
      {
        goto LABEL_21;
      }

      if (v17 != v16)
      {
        break;
      }

LABEL_14:
      v11 = v12 + 8;
      if (v12 + 8 == a2)
      {
        goto LABEL_25;
      }
    }

    while (*v17 == *v18)
    {
      ++v17;
      ++v18;
      if (v17 == v16)
      {
        goto LABEL_14;
      }
    }

LABEL_21:
    v3[8] = v15;
    v19 = v3[9];
    if (v19)
    {
      v3[10] = v19;
      operator delete(v19);
      v3[9] = 0;
      v3[10] = 0;
      v3[11] = 0;
    }

    *(v3 + 9) = *(v14 + 9);
    v3[11] = v14[11];
    v14[9] = 0;
    v14[10] = 0;
    v14[11] = 0;
    if (*(v3 + 119) < 0)
    {
      operator delete(v3[12]);
    }

    v13 = *(v14 + 6);
    v3[14] = v14[14];
    *(v3 + 6) = v13;
    *(v14 + 119) = 0;
    *(v14 + 96) = 0;
    *(v3 + 30) = *(v14 + 30);
    v3 += 8;
    goto LABEL_14;
  }

  v4 = a1 + 8;
  if (a1 + 8 != a2)
  {
    v5 = *a1;
    v6 = a1;
    do
    {
      v3 = v6;
      v6 = v4;
      v7 = v5;
      v5 = *v6;
      if (v7 == *v6)
      {
        v9 = v3[1];
        v8 = v3[2];
        v10 = v3[9];
        if (v8 - v9 == v3[10] - v10)
        {
          if (v9 == v8)
          {
            goto LABEL_10;
          }

          while (*v9 == *v10)
          {
            ++v9;
            ++v10;
            if (v9 == v8)
            {
              goto LABEL_10;
            }
          }
        }
      }

      v4 = v6 + 8;
    }

    while (v6 + 8 != a2);
  }

  return a2;
}

void operations_research::sat::SynchronizationPoint::~SynchronizationPoint(operations_research::sat::SynchronizationPoint *this)
{
  *this = &unk_284F3E6F0;
  v2 = this + 256;
  v3 = *(this + 35);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *this = &unk_284F3CEE8;
  *(this + 19) = &unk_284F3A5F8;
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(*(this + 1));
      return;
    }
  }

  else
  {
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(this + 7));
  if (*(this + 31) < 0)
  {
    goto LABEL_11;
  }
}

{
  *this = &unk_284F3E6F0;
  v2 = this + 256;
  v3 = *(this + 35);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *this = &unk_284F3CEE8;
  *(this + 19) = &unk_284F3A5F8;
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(this + 31) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_13:
      operator delete(*(this + 1));
LABEL_8:

      JUMPOUT(0x23EED9460);
    }
  }

  else
  {
    *(this + 6) = &unk_284F3A5F8;
    if ((*(this + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*(this + 7));
  if ((*(this + 31) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_13;
}

uint64_t operations_research::sat::SynchronizationPoint::Synchronize(operations_research::sat::SynchronizationPoint *this)
{
  v2 = *(this + 35);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t operations_research::sat::anonymous namespace::FullProblemSolver::FullProblemSolver(uint64_t a1, std::string *p_p, std::string::size_type size, const operations_research::sat::SatParameters *a4, char a5, void *a6, int a7)
{
  v106 = *MEMORY[0x277D85DE8];
  if (a7)
  {
    v103 = "fs_";
    v104 = 3;
    v102.__r_.__value_.__r.__words[0] = p_p;
    v102.__r_.__value_.__l.__size_ = size;
    absl::lts_20240722::StrCat(&v103, &v102, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }
  }

  operations_research::sat::SubSolver::SubSolver(a1, p_p, size, a7);
  if (a7 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_284F3E748;
  *(a1 + 256) = a6;
  *(a1 + 264) = a5;
  *(a1 + 265) = a7;
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v102, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v102 = *(a1 + 8);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 272), v102.__r_.__value_.__l.__data_, v102.__r_.__value_.__l.__size_);
    v13 = SHIBYTE(v102.__r_.__value_.__r.__words[2]);
    v12 = (a1 + 296);
    *(a1 + 296) = xmmword_23CE306D0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 328) = 0;
    if (v13 < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *(a1 + 272) = v102;
    v12 = (a1 + 296);
    *(a1 + 296) = xmmword_23CE306D0;
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 328) = 0;
  }

  *(a1 + 352) = 1;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 376) = 1;
  v14 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>((a1 + 272));
  operations_research::sat::SatParameters::CopyFrom(v14, a4);
  v15 = *(*(a1 + 256) + 16);
  v16 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>((a1 + 272));
  absl::lts_20240722::Mutex::Lock(v15, v17);
  operations_research::TimeLimit::MergeWithGlobalTimeLimit(v16, *(v15 + 8));
  absl::lts_20240722::Mutex::Unlock(v15);
  if (a7)
  {
    *(operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>((a1 + 272)) + 16) = *(*(a1 + 256) + 40) + 680;
  }

  v18 = a6[5];
  if (v18)
  {
    v101 = &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d;
    v19 = *v12;
    if (*v12 > 1)
    {
      v40 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v47 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d));
      v48 = vdup_n_s8(v47 & 0x7F);
      v49 = ((v47 >> 7) ^ (_X11 >> 12)) & v19;
      v50 = *(_X11 + v49);
      v51 = vceq_s8(v50, v48);
      if (!v51)
      {
        goto LABEL_71;
      }

      do
      {
LABEL_69:
        if (*(*(a1 + 320) + 16 * ((v49 + (__clz(__rbit64(v51)) >> 3)) & v19)) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
        {
          goto LABEL_114;
        }

        v51 &= ((v51 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v51);
LABEL_71:
      while (!*&vceq_s8(v50, 0x8080808080808080))
      {
        v40 += 8;
        v49 = (v40 + v49) & v19;
        v50 = *(_X11 + v49);
        v51 = vceq_s8(v50, v48);
        if (v51)
        {
          goto LABEL_69;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedResponseManager>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v20 = v104;
      *v104 = v101;
      *(v20 + 8) = 0;
    }

    *(v104 + 8) = v18;
  }

  v21 = a6[8];
  if (v21)
  {
    v101 = &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d;
    v22 = *v12;
    if (*v12 > 1)
    {
      v52 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v55 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d));
      v56 = vdup_n_s8(v55 & 0x7F);
      v57 = ((v55 >> 7) ^ (_X11 >> 12)) & v22;
      v58 = *(_X11 + v57);
      v59 = vceq_s8(v58, v56);
      if (!v59)
      {
        goto LABEL_77;
      }

      do
      {
LABEL_75:
        if (*(*(a1 + 320) + 16 * ((v57 + (__clz(__rbit64(v59)) >> 3)) & v22)) == &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
        {
          goto LABEL_114;
        }

        v59 &= ((v59 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v59);
LABEL_77:
      while (!*&vceq_s8(v58, 0x8080808080808080))
      {
        v52 += 8;
        v57 = (v52 + v57) & v22;
        v58 = *(_X11 + v57);
        v59 = vceq_s8(v58, v56);
        if (v59)
        {
          goto LABEL_75;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedLPSolutionRepository>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v23 = v104;
      *v104 = v101;
      *(v23 + 8) = 0;
    }

    *(v104 + 8) = v21;
  }

  v24 = a6[9];
  if (v24)
  {
    v101 = &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d;
    v25 = *v12;
    if (*v12 > 1)
    {
      v60 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v63 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d));
      v64 = vdup_n_s8(v63 & 0x7F);
      v65 = ((v63 >> 7) ^ (_X11 >> 12)) & v25;
      v66 = *(_X11 + v65);
      v67 = vceq_s8(v66, v64);
      if (!v67)
      {
        goto LABEL_83;
      }

      do
      {
LABEL_81:
        if (*(*(a1 + 320) + 16 * ((v65 + (__clz(__rbit64(v67)) >> 3)) & v25)) == &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d)
        {
          goto LABEL_114;
        }

        v67 &= ((v67 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v67);
LABEL_83:
      while (!*&vceq_s8(v66, 0x8080808080808080))
      {
        v60 += 8;
        v65 = (v60 + v65) & v25;
        v66 = *(_X11 + v65);
        v67 = vceq_s8(v66, v64);
        if (v67)
        {
          goto LABEL_81;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedIncompleteSolutionManager>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v26 = v104;
      *v104 = v101;
      *(v26 + 8) = 0;
    }

    *(v104 + 8) = v24;
  }

  v27 = a6[7];
  if (v27)
  {
    v101 = &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d;
    v28 = *v12;
    if (*v12 > 1)
    {
      v68 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v71 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d));
      v72 = vdup_n_s8(v71 & 0x7F);
      v73 = ((v71 >> 7) ^ (_X11 >> 12)) & v28;
      v74 = *(_X11 + v73);
      v75 = vceq_s8(v74, v72);
      if (!v75)
      {
        goto LABEL_90;
      }

      do
      {
LABEL_88:
        if (*(*(a1 + 320) + 16 * ((v73 + (__clz(__rbit64(v75)) >> 3)) & v28)) == &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d)
        {
          goto LABEL_114;
        }

        v75 &= ((v75 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v75);
LABEL_90:
      while (!*&vceq_s8(v74, 0x8080808080808080))
      {
        v68 += 8;
        v73 = (v68 + v73) & v28;
        v74 = *(_X11 + v73);
        v75 = vceq_s8(v74, v72);
        if (v75)
        {
          goto LABEL_88;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedBoundsManager>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v29 = v104;
      *v104 = v101;
      *(v29 + 8) = 0;
    }

    *(v104 + 8) = v27;
  }

  v30 = a6[10];
  if (v30)
  {
    v101 = &gtl::FastTypeId<operations_research::sat::SharedClausesManager>(void)::d;
    v31 = *v12;
    if (*v12 > 1)
    {
      v84 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v87 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedClausesManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedClausesManager>(void)::d));
      v88 = vdup_n_s8(v87 & 0x7F);
      v89 = ((v87 >> 7) ^ (_X11 >> 12)) & v31;
      v90 = *(_X11 + v89);
      v91 = vceq_s8(v90, v88);
      if (!v91)
      {
        goto LABEL_103;
      }

      do
      {
LABEL_101:
        if (*(*(a1 + 320) + 16 * ((v89 + (__clz(__rbit64(v91)) >> 3)) & v31)) == &gtl::FastTypeId<operations_research::sat::SharedClausesManager>(void)::d)
        {
          goto LABEL_114;
        }

        v91 &= ((v91 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v91);
LABEL_103:
      while (!*&vceq_s8(v90, 0x8080808080808080))
      {
        v84 += 8;
        v89 = (v84 + v89) & v31;
        v90 = *(_X11 + v89);
        v91 = vceq_s8(v90, v88);
        if (v91)
        {
          goto LABEL_101;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedClausesManager>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v32 = v104;
      *v104 = v101;
      *(v32 + 8) = 0;
    }

    *(v104 + 8) = v30;
  }

  if (*(a4 + 323) == 1)
  {
    v33 = a6[6];
    v101 = &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d;
    v34 = *v12;
    if (*v12 > 1)
    {
      v92 = 0;
      _X11 = *(a1 + 312);
      __asm { PRFM            #4, [X11] }

      v95 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d));
      v96 = vdup_n_s8(v95 & 0x7F);
      v97 = ((v95 >> 7) ^ (_X11 >> 12)) & v34;
      v98 = *(_X11 + v97);
      v99 = vceq_s8(v98, v96);
      if (!v99)
      {
        goto LABEL_111;
      }

      do
      {
LABEL_109:
        if (*(*(a1 + 320) + 16 * ((v97 + (__clz(__rbit64(v99)) >> 3)) & v34)) == &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d)
        {
          goto LABEL_114;
        }

        v99 &= ((v99 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v99);
LABEL_111:
      while (!*&vceq_s8(v98, 0x8080808080808080))
      {
        v92 += 8;
        v97 = (v92 + v97) & v34;
        v98 = *(_X11 + v97);
        v99 = vceq_s8(v98, v96);
        if (v99)
        {
          goto LABEL_109;
        }
      }
    }

    else if (*(a1 + 304) >= 2uLL && *(a1 + 312) == &gtl::FastTypeId<operations_research::sat::SharedTreeManager>(void)::d)
    {
      goto LABEL_114;
    }

    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
    if (v105 == 1)
    {
      v35 = v104;
      *v104 = v101;
      *(v35 + 8) = 0;
    }

    *(v104 + 8) = v33;
  }

  v36 = *(*(a1 + 256) + 32);
  v101 = &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d;
  v37 = *(a1 + 296);
  if (v37 <= 1)
  {
    if (*(a1 + 304) < 2uLL || *(a1 + 312) != &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
    {
      goto LABEL_65;
    }

LABEL_114:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(&v103, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/model.h", 184);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(&v103);
  }

  v76 = 0;
  _X11 = *(a1 + 312);
  __asm { PRFM            #4, [X11] }

  v79 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d));
  v80 = vdup_n_s8(v79 & 0x7F);
  v81 = ((v79 >> 7) ^ (_X11 >> 12)) & v37;
  v82 = *(_X11 + v81);
  v83 = vceq_s8(v82, v80);
  if (!v83)
  {
    goto LABEL_97;
  }

  do
  {
LABEL_95:
    if (*(*(a1 + 320) + 16 * ((v81 + (__clz(__rbit64(v83)) >> 3)) & v37)) == &gtl::FastTypeId<operations_research::sat::SharedStatistics>(void)::d)
    {
      goto LABEL_114;
    }

    v83 &= ((v83 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v83);
LABEL_97:
  while (!*&vceq_s8(v82, 0x8080808080808080))
  {
    v76 += 8;
    v81 = (v76 + v81) & v37;
    v82 = *(_X11 + v81);
    v83 = vceq_s8(v82, v80);
    if (v83)
    {
      goto LABEL_95;
    }
  }

LABEL_65:
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(v12, &v101, &v103);
  if (v105 == 1)
  {
    v38 = v104;
    *v104 = v101;
    *(v38 + 8) = 0;
  }

  *(v104 + 8) = v36;
  return a1;
}

void sub_23CB07868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  *v21 = &unk_284F3CEE8;
  *(v21 + 152) = &unk_284F3A5F8;
  if (*(v21 + 183) < 0)
  {
    operator delete(*(v21 + 160));
    *(v21 + 48) = &unk_284F3A5F8;
    if ((*(v21 + 79) & 0x80000000) == 0)
    {
LABEL_5:
      if (*(v21 + 31) < 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *(v21 + 48) = &unk_284F3A5F8;
    if ((*(v21 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*(v21 + 56));
  if (*(v21 + 31) < 0)
  {
LABEL_6:
    operator delete(*(v21 + 8));
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::FullProblemSolver::~FullProblemSolver(operations_research::sat::_anonymous_namespace_::FullProblemSolver *this)
{
  *this = &unk_284F3E748;
  operations_research::sat::CpSolverResponse::CpSolverResponse(v3, 0);
  operations_research::sat::FillSolveStatsInResponse(this + 34, v3, v2);
  operations_research::sat::SharedResponseManager::AppendResponseToBeMerged(*(*(this + 32) + 40), v3);
  operations_research::sat::SharedStatTables::AddTimingStat((*(this + 32) + 88), this);
}

{
}

void operations_research::sat::anonymous namespace::FullProblemSolver::Synchronize(atomic_ullong *this, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(this + 45, a2);
  v4 = *(this + 46);
  if (v4 > 0.0)
  {
    *(this + 5) = v4 + *(this + 5);
    operations_research::TimeDistribution::AddTimeInSec((this + 19), v4);
    v4 = *(this + 46);
  }

  v5 = *(this[32] + 16);
  absl::lts_20240722::Mutex::Lock(v5, v3);
  *(v5[1] + 112) = v4 + *(v5[1] + 112);
  absl::lts_20240722::Mutex::Unlock(v5);
  this[46] = 0;
  absl::lts_20240722::Mutex::Unlock(this + 45);
}

uint64_t operations_research::sat::anonymous namespace::FullProblemSolver::IsDone(operations_research::sat::_anonymous_namespace_::FullProblemSolver *this)
{
  if (*(this + 265) != 1)
  {
    return 0;
  }

  v1 = atomic_load((*(*(this + 32) + 40) + 680));
  return v1 & 1;
}

BOOL operations_research::sat::anonymous namespace::FullProblemSolver::TaskIsAvailable(atomic_ullong *this)
{
  if ((*(*this + 24))(this))
  {
    return 0;
  }

  {
    return 0;
  }

  absl::lts_20240722::Mutex::Lock(this + 45, v4);
  v5 = *(this + 376) == 1 && ((this[44] & 1) != 0 || (this[33] & 1) != 0);
  absl::lts_20240722::Mutex::Unlock(this + 45);
  return v5;
}

void operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(atomic_ullong *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this + 45, a2);
  *(this + 376) = 0;
  absl::lts_20240722::Mutex::Unlock(this + 45);
  *a3 = &unk_284F3E7A0;
  a3[1] = this;
  a3[3] = a3;
}

uint64_t operations_research::sat::anonymous namespace::SharedClasses::SearchIsDone(operations_research::sat::SharedResponseManager **this, uint64_t a2)
{
  IsSolved = operations_research::sat::SharedResponseManager::ProblemIsSolved(this[5], a2);
  v4 = this[2];
  absl::lts_20240722::Mutex::Lock(v4, v5);
  if (IsSolved)
  {
    v6 = 1;
    atomic_store(1u, *(v4 + 3));
  }

  else
  {
    v6 = operations_research::TimeLimit::LimitReached(*(v4 + 1));
  }

  absl::lts_20240722::Mutex::Unlock(v4);
  return v6;
}

void operations_research::SharedTimeLimit::Stop(operations_research::SharedTimeLimit *this, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(this, a2);
  atomic_store(1u, *(this + 3));
  absl::lts_20240722::Mutex::Unlock(this);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3E7A0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1, uint64_t a2, operations_research::sat::Model *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (*(v3 + 352) != 1)
  {
    goto LABEL_51;
  }

  v4 = (v3 + 272);
  v6 = *(v3 + 256);
  v7 = *(v6 + 56);
  if (v7)
  {
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>((v3 + 272));
    v9 = *(v3 + 296);
    if (v9 > 1)
    {
      v11 = 0;
      _X10 = *(v3 + 312);
      __asm { PRFM            #4, [X10] }

      v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::Trail>(void)::d));
      v19 = vdup_n_s8(v18 & 0x7F);
      v20 = ((v18 >> 7) ^ (_X10 >> 12)) & v9;
      v21 = *(_X10 + v20);
      v22 = vceq_s8(v21, v19);
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_9:
      v23 = *(v3 + 320);
      while (1)
      {
        v24 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v9;
        if (*(v23 + 16 * v24) == &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
        {
          break;
        }

        v22 &= ((v22 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v22)
        {
LABEL_12:
          while (!*&vceq_s8(v21, 0x8080808080808080))
          {
            v11 += 8;
            v20 = (v11 + v20) & v9;
            v21 = *(_X10 + v20);
            v22 = vceq_s8(v21, v19);
            if (v22)
            {
              goto LABEL_9;
            }
          }

LABEL_22:
          v25 = 0;
          if (v9 > 1)
          {
LABEL_23:
            v27 = 0;
            _X10 = *(v3 + 312);
            __asm { PRFM            #4, [X10] }

            v30 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d));
            v31 = vdup_n_s8(v30 & 0x7F);
            v32 = ((v30 >> 7) ^ (_X10 >> 12)) & v9;
            v33 = *(_X10 + v32);
            v34 = vceq_s8(v33, v31);
            if (!v34)
            {
              goto LABEL_27;
            }

LABEL_24:
            v35 = *(v3 + 320);
            while (1)
            {
              v36 = (v32 + (__clz(__rbit64(v34)) >> 3)) & v9;
              if (*(v35 + 16 * v36) == &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
              {
                break;
              }

              v34 &= ((v34 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v34)
              {
LABEL_27:
                while (!*&vceq_s8(v33, 0x8080808080808080))
                {
                  v27 += 8;
                  v32 = (v27 + v32) & v9;
                  v33 = *(_X10 + v32);
                  v34 = vceq_s8(v33, v31);
                  if (v34)
                  {
                    goto LABEL_24;
                  }
                }

LABEL_31:
                v26 = 0;
                v55 = xmmword_23CE306D0;
                if (*(v3 + 295) < 0)
                {
LABEL_32:
                  std::string::__init_copy_ctor_external(&v54, *(v3 + 272), *(v3 + 280));
LABEL_33:
                  v57 = v8;
                  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(v58, &v55, v56);
                  v58[4] = v26;
                  *v59 = 0u;
                  *v60 = 0u;
                  v61 = 0u;
                  memset(v62, 0, sizeof(v62));
                  v63 = v25;
                  v64 = v7;
                  v65 = v3 + 272;
                  v38 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>((v3 + 272));
                  v39 = *(v38 + 6) - *(v38 + 5);
                  if (!(v39 >> 3))
                  {
                    if ((v39 >> 3) >= 1)
                    {
                      operator new();
                    }

                    operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>((v3 + 272));
                    v56[22] = 0;
                    operator new();
                  }

                  if (!((v39 >> 3) >> 62))
                  {
                    operator new();
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

LABEL_20:
                *&v54.__r_.__value_.__l.__data_ = *&v4->__r_.__value_.__l.__data_;
                v54.__r_.__value_.__r.__words[2] = *(v3 + 288);
                goto LABEL_33;
              }
            }

            v37 = v35 + 16 * v36;
            if (!(_X10 + v36))
            {
              goto LABEL_31;
            }

LABEL_19:
            v26 = *(v37 + 8);
            v55 = xmmword_23CE306D0;
            if (*(v3 + 295) < 0)
            {
              goto LABEL_32;
            }

            goto LABEL_20;
          }

LABEL_17:
          if (*(v3 + 304) < 2uLL)
          {
            goto LABEL_31;
          }

          v37 = v3 + 312;
          v42 = &absl::lts_20240722::container_internal::kSooControl;
          if (*(v3 + 312) != &gtl::FastTypeId<operations_research::sat::IntegerTrail>(void)::d)
          {
            v42 = 0;
            v37 = 0;
          }

          if (!v42)
          {
            goto LABEL_31;
          }

          goto LABEL_19;
        }
      }

      v10 = v23 + 16 * v24;
      if (!(_X10 + v24))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (*(v3 + 304) < 2uLL)
      {
        goto LABEL_22;
      }

      if (*(v3 + 312) != &gtl::FastTypeId<operations_research::sat::Trail>(void)::d)
      {
        goto LABEL_22;
      }

      v10 = v3 + 312;
      if (!&absl::lts_20240722::container_internal::kSooControl)
      {
        goto LABEL_22;
      }
    }

    v25 = *(v10 + 8);
    if (v9 > 1)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v40 = *(v6 + 80);
  if (v40)
  {
    v41 = operations_research::sat::SharedClausesManager::RegisterNewId(v40, v5);
    operations_research::sat::SharedClausesManager::SetWorkerNameForId(*(*(v3 + 256) + 80), v41, v4);
    if (*(*(v3 + 256) + 80))
    {
      operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(v4);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(v4);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::BinaryImplicationGraph>(v4);
      operations_research::sat::Model::GetOrCreate<operations_research::sat::LevelZeroCallbackHelper>(v4);
      operator new();
    }
  }

  v44 = *(operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v4) + 342);
  v45 = **(v3 + 256);
  if (v44 == 1)
  {
  }

  else
  {
  }

  *(v3 + 352) = 0;
  if (*(v3 + 264) == 1)
  {
    absl::lts_20240722::Mutex::Lock((v3 + 360), v46);
    *(v3 + 376) = 1;
    absl::lts_20240722::Mutex::Unlock((v3 + 360));
  }

  else
  {
LABEL_51:
    v48 = operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>((v3 + 272));
    if (*(v3 + 264) == 1)
    {
      v49 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>((v3 + 272));
      v49[67] = 0x3FF0000000000000;
      *(v49 + 7) |= 0x100000u;
      operations_research::TimeLimit::ResetTimers(v48, *(v49 + 56), 1.0);
      v50 = *(*(v3 + 256) + 16);
      absl::lts_20240722::Mutex::Lock(v50, v51);
      operations_research::TimeLimit::MergeWithGlobalTimeLimit(v48, *(v50 + 8));
      absl::lts_20240722::Mutex::Unlock(v50);
    }

    v52 = v48[14];
    absl::lts_20240722::Mutex::Lock((v3 + 360), v53);
    *(v3 + 376) = 1;
    *(v3 + 368) = *(v3 + 368) + v48[14] - v52;
    absl::lts_20240722::Mutex::Unlock((v3 + 360));
  }
}

void sub_23CB08B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a18 >= 2)
  {
    operator delete((a20 - (a19 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::FullProblemSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_117FullProblemSolver12GenerateTaskExEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_117FullProblemSolver12GenerateTaskExEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_117FullProblemSolver12GenerateTaskExEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_117FullProblemSolver12GenerateTaskExEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::_anonymous_namespace_ *this, atomic_ullong *a2, std::string *a3, operations_research::sat::Model *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, a3->__r_.__value_.__l.__data_, a3->__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = *a3;
    }

    v7 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a3);
    v8 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a3);
    v9 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatSolver>(a3);
    v10 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CpModelMapping>(a3);
    v12 = operations_research::sat::SharedBoundsManager::RegisterNewId(a2, v11);
    v18[0] = this;
    v18[1] = a2;
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      v13 = v12;
      std::string::__init_copy_ctor_external(&v19, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      v12 = v13;
    }

    else
    {
      v19 = v23;
    }

    *&v20 = v9;
    *(&v20 + 1) = v7;
    *&v21 = v8;
    DWORD2(v21) = v12;
    v22 = v10;
    operations_research::sat::Model::GetOrCreate<operations_research::sat::LevelZeroCallbackHelper>(a3);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v19;
    }

    v15 = v20;
    v16 = v21;
    v17 = v22;
    v24 = 0;
    operator new();
  }
}

void sub_23CB08FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  operator delete(v29);
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v30 - 105) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((*(v30 - 105) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v30 - 128));
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0::operator()(uint64_t a1, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v6 = *v5 & 0xFFFFFFFFFFFFFFFELL;
      v7 = *(*a1 + 96);
      if (v6 < (*(*a1 + 104) - v7) >> 2)
      {
        v36 = *(v7 + 4 * v6);
        if (v36 != -1)
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>((a1 + 8), &v36, &v33);
          if (v35 == 1)
          {
            *v34 = v36;
            v8 = *(*(a1 + 40) + 152);
            v32 = *(v8 + 24 * v6);
            v31 = -*(v8 + 24 * (v6 | 1));
            std::vector<int>::push_back[abi:ne200100](a1 + 48, &v36);
            std::vector<long long>::push_back[abi:ne200100](a1 + 72, &v32);
            std::vector<long long>::push_back[abi:ne200100](a1 + 96, &v31);
          }
        }
      }

      ++v5;
    }

    while (v5 != a3);
  }

  v9 = *(a1 + 120);
  for (i = *(a1 + 128); v9 < *(i + 12); *(a1 + 120) = v9)
  {
    v11 = *(*(i + 48) + 4 * v9);
    v12 = *(*a1 + 72);
    if (v11 >> 1 < ((*(*a1 + 80) - v12) >> 2))
    {
      LODWORD(v31) = *(v12 + 4 * (v11 >> 1));
      if (v31 != -1)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>((a1 + 8), &v31, &v33);
        if (v35 == 1)
        {
          *v34 = v31;
          std::vector<int>::push_back[abi:ne200100](a1 + 48, &v31);
          if (v11)
          {
            v32 = 0;
            std::vector<long long>::push_back[abi:ne200100]((a1 + 72), &v32);
            v32 = 0;
          }

          else
          {
            v32 = 1;
            std::vector<long long>::push_back[abi:ne200100]((a1 + 72), &v32);
            v32 = 1;
          }

          std::vector<long long>::push_back[abi:ne200100]((a1 + 96), &v32);
        }

        v9 = *(a1 + 120);
        i = *(a1 + 128);
      }
    }

    ++v9;
  }

  if (*(a1 + 48) == *(a1 + 56))
  {
    return;
  }

  operations_research::sat::SharedBoundsManager::ReportPotentialNewBounds(*(a1 + 136), *(a1 + 144), (a1 + 48), (a1 + 72), (a1 + 96));
  v14 = *(a1 + 8);
  *(a1 + 56) = *(a1 + 48);
  *(a1 + 80) = *(a1 + 72);
  *(a1 + 104) = *(a1 + 96);
  if (v14 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray((a1 + 8), &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::GetPolicyFunctions(void)::value, v14 < 0x80, 1u);
    v15 = *(a1 + 144);
    v16 = v15[3];
    if (v16 > 1)
    {
LABEL_22:
      v17 = 0;
      _X12 = v15[5];
      __asm { PRFM            #4, [X12] }

      v24 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d));
      v25 = vdup_n_s8(v24 & 0x7F);
      v26 = ((v24 >> 7) ^ (_X12 >> 12)) & v16;
      v27 = *(_X12 + v26);
      v28 = vceq_s8(v27, v25);
      if (!v28)
      {
        goto LABEL_26;
      }

LABEL_23:
      v29 = v15[6];
      while (1)
      {
        v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v16;
        if (*(v29 + 16 * v30) == &gtl::FastTypeId<operations_research::sat::SatParameters>(void)::d)
        {
          break;
        }

        v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v28)
        {
LABEL_26:
          while (!*&vceq_s8(v27, 0x8080808080808080))
          {
            v17 += 8;
            v26 = (v17 + v26) & v16;
            v27 = *(_X12 + v26);
            v28 = vceq_s8(v27, v25);
            if (v28)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_32;
        }
      }

      if ((*(*(v29 + 16 * v30 + 8) + 280) & 1) == 0)
      {
        goto LABEL_33;
      }

      return;
    }
  }

  else
  {
    *(a1 + 16) = 0;
    v15 = *(a1 + 144);
    v16 = v15[3];
    if (v16 > 1)
    {
      goto LABEL_22;
    }
  }

  if (v15[4] >= 2uLL)
  {
    v15 += 5;
  }

LABEL_32:
  if ((*(v15[1] + 280) & 1) == 0)
  {
LABEL_33:
    operations_research::sat::SharedBoundsManager::Synchronize(*(a1 + 136), v13);
  }
}

uint64_t operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0::$_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set((a1 + 8), (a2 + 8), &v13);
  v4 = *(a2 + 40);
  *(a1 + 48) = 0;
  *(a1 + 40) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 48);
  v5 = *(a2 + 56);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v10 = *(a2 + 96);
  v9 = *(a2 + 104);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v11;
  return a1;
}

void sub_23CB0958C(_Unwind_Exception *exception_object)
{
  v7 = *v5;
  if (*v5)
  {
    v1[13] = v7;
    operator delete(v7);
    v8 = *v4;
    if (!*v4)
    {
LABEL_3:
      v9 = *v3;
      if (!*v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[10] = v8;
  operator delete(v8);
  v9 = *v3;
  if (!*v3)
  {
LABEL_4:
    if (*v2 < 2uLL)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[7] = v9;
  operator delete(v9);
  if (*v2 < 2uLL)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete((v1[3] - (v1[2] & 1) - 8));
  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0::~$_0(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    a1[13] = v2;
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    a1[7] = v4;
    operator delete(v4);
  }

  if (a1[1] >= 2uLL)
  {
    operator delete((a1[3] - (a1[2] & 1) - 8));
  }

  return a1;
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v5 = a2[1] >> 1;
  if (v5 == 7)
  {
    v6 = 8;
  }

  else
  {
    v6 = (v5 - 1) / 7 + v5;
  }

  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::raw_hash_set(a1, v6);
  v7 = a2[1];
  if (v7 >= 2)
  {
    if (v7 > 3)
    {
      v11 = v7 >> 1;
      v12 = *a1;
      if (*a1 > 8)
      {
        v24 = *a2;
        v27 = a2 + 2;
        v25 = a2[2];
        v26 = v27[1];
        if (v24 >= 7)
        {
          v45 = v7 >> 1;
          do
          {
            v46 = *v25 & 0x8080808080808080;
            if (v46 != 0x8080808080808080)
            {
              v47 = v46 ^ 0x8080808080808080;
              do
              {
                v48 = __clz(__rbit64(v47)) >> 3;
                v49 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v26 + 4 * v48);
                first_non = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, ((v49 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v49));
                v51 = *(v25 + v48);
                v52 = a1[2];
                *(v52 + first_non) = v51;
                *(v52 + (*a1 & (first_non - 7)) + (*a1 & 7)) = v51;
                *(a1[3] + 4 * first_non) = *(v26 + 4 * v48);
                --v45;
                v47 &= v47 - 1;
              }

              while (v47);
            }

            ++v25;
            v26 += 32;
          }

          while (v45);
        }

        else
        {
          v28 = *(v25 + v24) & 0x8080808080808080;
          if (v28 != 0x8080808080808080)
          {
            v29 = v25 - 1;
            v30 = v26 - 4;
            v31 = v28 ^ 0x8080808080808080;
            do
            {
              v32 = __clz(__rbit64(v31)) >> 3;
              v33 = &absl::lts_20240722::hash_internal::MixingHashState::kSeed + *(v30 + 4 * v32);
              v34 = absl::lts_20240722::container_internal::find_first_non_full<void>(a1, ((v33 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v33));
              v35 = v29[v32];
              v36 = a1[2];
              *(v36 + v34) = v35;
              *(v36 + (*a1 & (v34 - 7)) + (*a1 & 7)) = v35;
              *(a1[3] + 4 * v34) = *(v30 + 4 * v32);
              v31 &= v31 - 1;
            }

            while (v31);
          }
        }
      }

      else
      {
        v13 = (a1[2] >> 12) | 1;
        v15 = a2[2];
        v14 = a2[3];
        if (*a2 >= 7)
        {
          v39 = *a1;
          do
          {
            v40 = *v15 & 0x8080808080808080;
            if (v40 != 0x8080808080808080)
            {
              v41 = v40 ^ 0x8080808080808080;
              do
              {
                v42 = __clz(__rbit64(v41)) >> 3;
                v39 = (v39 + v13) & v12;
                v43 = *(v15 + v42);
                v44 = a1[2];
                *(v44 + v39) = v43;
                *(v44 + (v12 & (v39 - 7)) + (v12 & 7)) = v43;
                *(a1[3] + 4 * v39) = *(v14 + 4 * v42);
                --v11;
                v41 &= v41 - 1;
              }

              while (v41);
            }

            ++v15;
            v14 += 32;
          }

          while (v11);
        }

        else
        {
          v16 = *(v15 + *a2) & 0x8080808080808080;
          if (v16 != 0x8080808080808080)
          {
            v17 = v15 - 1;
            v18 = v14 - 4;
            v19 = v16 ^ 0x8080808080808080;
            v20 = *a1;
            do
            {
              v21 = __clz(__rbit64(v19)) >> 3;
              v20 = (v20 + v13) & v12;
              v22 = v17[v21];
              v23 = a1[2];
              *(v23 + v20) = v22;
              *(v23 + (v12 & (v20 - 7)) + (v12 & 7)) = v22;
              *(a1[3] + 4 * v20) = *(v18 + 4 * v21);
              v19 &= v19 - 1;
            }

            while (v19);
          }
        }
      }

      v37 = a1[2];
      a1[1] = v7 & 0xFFFFFFFFFFFFFFFELL | a1[1] & 1;
      *(v37 - 8) -= v7 >> 1;
    }

    else
    {
      a1[1] = 2;
      v8 = a2 + 2;
      if (*a2 >= 2)
      {
        v9 = a2[2];
        v8 = a2[3];
        if (*v9 <= -2)
        {
          do
          {
            v10 = __clz(__rbit64((*v9 | ~(*v9 >> 7)) & 0x101010101010101)) >> 3;
            v9 = (v9 + v10);
            v8 = (v8 + 4 * v10);
          }

          while (*v9 < -1);
        }
      }

      *(a1 + 4) = *v8;
    }
  }

  return a1;
}

void sub_23CB09AE4(_Unwind_Exception *exception_object)
{
  if (*v1 >= 2uLL)
  {
    operator delete((v1[2] - (v1[1] & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t std::vector<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::__emplace_back_slow_path<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 32 * v2;
  __p = 0;
  v15 = v7;
  v16 = v7;
  v17 = 0;
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      *(v7 + 24) = v7;
      (*(*v8 + 24))(v8, v7);
      goto LABEL_15;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(v7 + 24) = v8;
LABEL_15:
  v16 += 32;
  std::vector<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v15;
  while (1)
  {
    v11 = v16;
    if (v16 == v10)
    {
      break;
    }

    v16 -= 32;
    v12 = *(v11 - 8);
    if (v12 == v11 - 32)
    {
      (*(*v12 + 32))(v12);
    }

    else if (v12)
    {
      (*(*v12 + 40))(v12);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_23CB09D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = *(v9 + 24);
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = (v9 + 24);
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = v8 - 3;
    (*(**(v9 + 24) + 24))();
LABEL_5:
    v9 += 32;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::~__func(void *a1)
{
  *a1 = &unk_284F3E810;
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  if (a1[2] >= 2uLL)
  {
    operator delete((a1[4] - (a1[3] & 1) - 8));
  }

  return a1;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::~__func(void *a1)
{
  *a1 = &unk_284F3E810;
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  if (a1[2] >= 2uLL)
  {
    operator delete((a1[4] - (a1[3] & 1) - 8));
  }

  JUMPOUT(0x23EED9460);
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::destroy(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  if (a1[2] >= 2uLL)
  {
    v5 = (a1[4] - (a1[3] & 1) - 8);

    operator delete(v5);
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[13];
  if (v2)
  {
    __p[14] = v2;
    operator delete(v2);
  }

  v3 = __p[10];
  if (v3)
  {
    __p[11] = v3;
    operator delete(v3);
  }

  v4 = __p[7];
  if (v4)
  {
    __p[8] = v4;
    operator delete(v4);
  }

  if (__p[2] >= 2uLL)
  {
    operator delete((__p[4] - (__p[3] & 1) - 8));
  }

  operator delete(__p);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroExport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,void ()(std::vector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroExportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroExportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroExportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroExportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *operations_research::sat::Model::GetOrCreate<operations_research::sat::LevelZeroCallbackHelper>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LevelZeroCallbackHelper>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::LevelZeroCallbackHelper>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::LevelZeroCallbackHelper>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::LevelZeroCallbackHelper>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::LevelZeroCallbackHelper>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void *operations_research::sat::Model::Delete<operations_research::sat::LevelZeroCallbackHelper>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F3E8A0;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;
      if (v4 != v3)
      {
        v6 = v4 - 32;
        do
        {
          v7 = *(v4 - 1);
          v4 -= 32;
          if (v4 == v7)
          {
            (*(*v7 + 32))(v7);
          }

          else if (v7)
          {
            (*(*v7 + 40))(v7);
          }

          v6 -= 32;
        }

        while (v4 != v3);
        v5 = *v1;
      }

      v1[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x23EED9460](v1, 0x20C40960023A9);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::LevelZeroCallbackHelper>::~Delete(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_284F3E8A0;
  a1[1] = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
      if (v3 != v2)
      {
        v5 = v3 - 32;
        do
        {
          v6 = *(v3 - 1);
          v3 -= 32;
          if (v3 == v6)
          {
            (*(*v6 + 32))(v6);
          }

          else if (v6)
          {
            (*(*v6 + 40))(v6);
          }

          v5 -= 32;
        }

        while (v3 != v2);
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    MEMORY[0x23EED9460](v1, 0x20C40960023A9);
  }

  JUMPOUT(0x23EED9460);
}

uint64_t std::vector<std::function<BOOL ()(void)>>::__emplace_back_slow_path<std::function<BOOL ()(void)>>(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v8 = 32 * v2;
  __p = 0;
  v17 = 32 * v2;
  v18 = 32 * v2;
  v19 = 0;
  v10 = (a2 + 24);
  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      *(32 * v2 + 0x18) = 32 * v2;
      (*(*v9 + 24))(v9);
      v8 = v18;
      goto LABEL_16;
    }

    *(32 * v2 + 0x18) = v9;
  }

  else
  {
    v10 = (v8 + 24);
  }

  *v10 = 0;
LABEL_16:
  v18 = v8 + 32;
  std::vector<std::function<BOOL ()(void)>>::__swap_out_circular_buffer(a1, &__p);
  v11 = a1[1];
  v12 = v17;
  while (1)
  {
    v13 = v18;
    if (v18 == v12)
    {
      break;
    }

    v18 -= 32;
    v14 = *(v13 - 8);
    if (v14 == v13 - 32)
    {
      (*(*v14 + 32))(v14);
    }

    else if (v14)
    {
      (*(*v14 + 40))(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_23CB0AA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::function<BOOL ()(void)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::function<BOOL ()(void)>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v5 - *result;
  if (v5 == *result)
  {
    goto LABEL_15;
  }

  v8 = (v4 - 32 * ((v5 - *result) >> 5) + 24);
  v9 = *result;
  do
  {
    v11 = *(v9 + 24);
    v10 = v8;
    if (!v11)
    {
      goto LABEL_4;
    }

    if (v9 != v11)
    {
      *v8 = v11;
      v10 = (v9 + 24);
LABEL_4:
      *v10 = 0;
      goto LABEL_5;
    }

    *v8 = v8 - 3;
    (*(**(v9 + 24) + 24))();
LABEL_5:
    v9 += 32;
    v8 += 4;
  }

  while (v9 != v5);
  v12 = v6;
  do
  {
    result = v6[3];
    if (v6 == result)
    {
      result = (*(*result + 32))(result);
    }

    else if (result)
    {
      result = (*(*result + 40))(result);
    }

    v6 += 4;
    v12 += 4;
  }

  while (v6 != v5);
LABEL_15:
  a2[1] = v4 - v7;
  v13 = *v3;
  *v3 = v4 - v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<std::function<BOOL ()(void)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    while (1)
    {
      *(a1 + 16) = i - 32;
      v4 = *(i - 8);
      if (v4 != i - 32)
      {
        break;
      }

      (*(*v4 + 32))(v4);
      i = *(a1 + 16);
      if (i == v3)
      {
        goto LABEL_8;
      }
    }

    if (v4)
    {
      (*(*v4 + 40))(v4);
    }
  }

LABEL_8:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t result)
{
  *result = &unk_284F3E8D8;
  if (*(result + 47) < 0)
  {
    v1 = result;
    operator delete(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284F3E8D8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x23EED9460);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E8D8;
  *(a2 + 8) = *(a1 + 8);
  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v4 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v4;
  }

  result = *(a1 + 48);
  v6 = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 48) = result;
  *(a2 + 64) = v6;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::destroy_deallocate(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

  operator delete(a1);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  v60[6] = *MEMORY[0x277D85DE8];
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  __p = 0;
  v49 = 0;
  v50 = 0;
  operations_research::sat::SharedBoundsManager::GetChangedBounds(*(a1 + 16), *(a1 + 72), &v54, &v51, &__p);
  v2 = v54;
  if (v55 != v54)
  {
    v3 = 0;
    v4 = 0;
    v5 = 1;
    while (1)
    {
      v6 = v2[v3];
      v7 = *(a1 + 80);
      v8 = ~v6 <= v6 ? v6 : ~v6;
      v9 = *(v7[6] + 4 * v8);
      if (v9 == -1)
      {
        break;
      }

      v10 = __PAIR64__(v9, v6) >> 31;
      v11 = v10 ^ (*(__p + v3) == 0);
      v12 = *(a1 + 64);
      v13 = v10 >> 6;
      v14 = *(*(v12 + 24) + 8 * v13);
      if (((1 << v11) & v14) != 0)
      {
        goto LABEL_4;
      }

      if ((v14 >> (v11 & 0x3F ^ 1u)))
      {
        v41 = 0;
        *(*(a1 + 48) + 528) = 1;
        goto LABEL_41;
      }

      v15 = *(v12 + 12);
      *(v12 + 8) = *(v12 + 8) & 0xFFFFFFF | 0x10000000;
      *(*(v12 + 48) + 4 * v15) = v11;
      *(*(v12 + 96) + 8 * (v10 >> 1)) = *(v12 + 8);
      *(*(v12 + 24) + 8 * v13) |= 1 << v11;
      ++*(v12 + 12);
LABEL_3:
      v4 = 1;
LABEL_4:
      v3 = v5;
      v2 = v54;
      ++v5;
      if (v3 >= (v55 - v54) >> 2)
      {
        if ((v4 & 1) != 0 && (operations_research::sat::SatSolver::FinishPropagation(*(a1 + 48)) & 1) == 0)
        {
LABEL_48:
          v41 = 0;
          goto LABEL_41;
        }

        goto LABEL_40;
      }
    }

    v16 = *(*v7 + 4 * v8);
    if (v16 == -1)
    {
      goto LABEL_4;
    }

    v17 = v16 ^ (v6 >> 31);
    v18 = *(v51 + v3);
    v47 = v18;
    v19 = *(__p + v3);
    v46 = v19;
    v20 = *(*(a1 + 56) + 40);
    v21 = 8 * v17;
    v22 = *(v20 + v21);
    v45 = v22;
    v23 = -*(v20 + (v21 ^ 8));
    v44 = v23;
    if (v18 <= v22 && v19 >= v23)
    {
      goto LABEL_4;
    }

    {
LABEL_19:
      if (v18 > v22 && !operations_research::sat::IntegerTrail::Enqueue(*(a1 + 56), v17, v47, 0, 0, 0, 0))
      {
        goto LABEL_48;
      }

      if (v19 < v23)
      {
        v25 = v46 >= 0x8000000000000002 ? -v46 : 0x7FFFFFFFFFFFFFFFLL;
        if ((operations_research::sat::IntegerTrail::Enqueue(*(a1 + 56), v17 ^ 1, v25, 0, 0, 0, 0) & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      goto LABEL_3;
    }

    v27 = *(a1 + 8);
    v29 = *(v27 + 24);
    v28 = v27 + 24;
    v30 = v29 + 8 * v6 + 7;
    if (v29)
    {
      v28 = v30;
    }

    v31 = *(*v28 + 40) & 0xFFFFFFFFFFFFFFFCLL;
    if (*(v31 + 23) < 0)
    {
      v26 = *(v31 + 8);
      if (v26)
      {
        std::string::__init_copy_ctor_external(&v43, *v31, v26);
        goto LABEL_36;
      }
    }

    else if (*(v31 + 23))
    {
      v33 = *v31;
      v43.__r_.__value_.__r.__words[2] = *(v31 + 16);
      *&v43.__r_.__value_.__l.__data_ = v33;
LABEL_36:
      v34 = absl::lts_20240722::log_internal::LogMessage::LogMessage(v60, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 1310);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v34, "  '", 3uLL);
      v35 = absl::lts_20240722::log_internal::LogMessage::operator<<(v60, (a1 + 24));
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v35, "' imports new bounds for ", 0x19uLL);
      v36 = absl::lts_20240722::log_internal::LogMessage::operator<<(v35, &v43);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v36, ": from [", 8uLL);
      v37 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v36, &v45);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v37, ", ", 2uLL);
      v38 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v37, &v44);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v38, "] to [", 6uLL);
      v39 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v38, &v47);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v39, ", ", 2uLL);
      v40 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v39, &v46);
      absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v40, "]", 1uLL);
      absl::lts_20240722::log_internal::LogMessage::~LogMessage(v60);
      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      goto LABEL_19;
    }

    v60[0] = "anonymous_var(";
    v60[1] = 14;
    v32 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, v59, v26);
    v58[0] = v59;
    v58[1] = v32 - v59;
    v57[0] = ")";
    v57[1] = 1;
    absl::lts_20240722::StrCat(v60, v58, v57, &v43);
    goto LABEL_36;
  }

LABEL_40:
  v41 = 1;
LABEL_41:
  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  return v41;
}

void sub_23CB0B39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    v28 = a24;
    if (a24)
    {
LABEL_7:
      operator delete(v28);
      v29 = a27;
      if (a27)
      {
LABEL_8:
        operator delete(v29);
        _Unwind_Resume(exception_object);
      }

LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v28 = a24;
    if (a24)
    {
      goto LABEL_7;
    }
  }

  v29 = a27;
  if (a27)
  {
    goto LABEL_8;
  }

  goto LABEL_4;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterVariableBoundsLevelZeroImport(operations_research::sat::CpModelProto const&,operations_research::sat::SharedBoundsManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_137RegisterVariableBoundsLevelZeroImportERKNS0_12CpModelProtoEPNS0_19SharedBoundsManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E968;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::operator()(uint64_t a1)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  operations_research::sat::SharedClausesManager::GetUnseenBinaryClauses(*(a1 + 8), *(a1 + 16), &__p);
  v2 = *(a1 + 40);
  *(v2 + 844) = 0;
  v3 = __p;
  v4 = v13;
  if (__p == v13)
  {
LABEL_5:
    v9 = 1;
    *(v2 + 844) = 1;
    v10 = __p;
    if (!__p)
    {
      return v9;
    }

LABEL_6:
    v13 = v10;
    operator delete(v10);
    return v9;
  }

  while (1)
  {
    v5 = *(*(a1 + 24) + 48);
    v6 = vmax_s32(vmvn_s8(*v3), *v3);
    HIDWORD(v8) = *(v5 + 4 * v6.i32[0]);
    LODWORD(v8) = *v3;
    v7 = v8 >> 31;
    HIDWORD(v8) = *(v5 + 4 * v6.i32[1]);
    LODWORD(v8) = HIDWORD(*v3);
    if ((operations_research::sat::SatSolver::AddBinaryClause(*(a1 + 32), v7, v8 >> 31) & 1) == 0)
    {
      break;
    }

    if (++v3 == v4)
    {
      v2 = *(a1 + 40);
      goto LABEL_5;
    }
  }

  v9 = 0;
  v10 = __p;
  if (__p)
  {
    goto LABEL_6;
  }

  return v9;
}

void sub_23CB0B64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesLevelZeroImport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_130RegisterClausesLevelZeroImportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__value_func<void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23CB0B968(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284F3E9E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::operator()(uint64_t result, int *a2, int *a3)
{
  v3 = *a2 >> 1;
  v4 = *(*(result + 8) + 72);
  v5 = (*(*(result + 8) + 80) - v4) >> 2;
  if (v5 > v3)
  {
    v6 = *(v4 + 4 * v3);
    if (v6 != -1)
    {
      v7 = *a3 >> 1;
      if (v5 > v7)
      {
        v8 = *(v4 + 4 * v7);
        if (v8 != -1)
        {
          operations_research::sat::SharedClausesManager::AddBinaryClause(*(result + 24), *(result + 16), v6 ^ -(*a2 & 1), v8 ^ -(*a3 & 1));
        }
      }
    }
  }
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0,std::allocator<operations_research::sat::anonymous namespace::RegisterClausesExport(int,operations_research::sat::SharedClausesManager *,operations_research::sat::Model *)::$_0>,void ()(operations_research::sat::Literal,operations_research::sat::Literal)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_121RegisterClausesExportEiPNS0_20SharedClausesManagerEPNS0_5ModelEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

operations_research::sat::Model **std::unique_ptr<operations_research::sat::Model>::~unique_ptr[abi:ne200100](operations_research::sat::Model **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    operations_research::sat::Model::~Model(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::~ObjectiveShavingSolver(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this)
{
  *this = &unk_284F3EA88;
  operations_research::sat::SharedStatTables::AddTimingStat((*(this + 155) + 88), this);
}

{
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::Synchronize(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this, uint64_t a2)
{
  absl::lts_20240722::Mutex::Lock(this + 201, a2);
  if (*(this + 1624) == 1)
  {
    v4 = atomic_load(this + 1248);
    if ((v4 & 1) == 0)
    {
      {
        atomic_store(1u, this + 1248);
      }

      if (operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(*(this + 155) + 40), v5) > *(this + 202))
      {
        atomic_store(1u, this + 1248);
      }
    }
  }

  absl::lts_20240722::Mutex::Unlock(this + 201);
}

uint64_t operations_research::sat::anonymous namespace::ObjectiveShavingSolver::TaskIsAvailable(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this, uint64_t a2)
{
  {
    return 0;
  }

  absl::lts_20240722::Mutex::Lock(this + 201, v3);
  v5 = *(this + 1624);
  absl::lts_20240722::Mutex::Unlock(this + 201);
  return (v5 ^ 1) & 1;
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(operations_research::sat::_anonymous_namespace_::ObjectiveShavingSolver *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  absl::lts_20240722::Mutex::Lock(this + 201, a2);
  atomic_store(0, this + 1248);
  *(this + 1624) = 1;
  *(this + 202) = operations_research::sat::SharedResponseManager::GetInnerObjectiveLowerBound(*(*(this + 155) + 40), v5);
  absl::lts_20240722::Mutex::Unlock(this + 201);
  *a3 = &unk_284F3EAE0;
  a3[1] = this;
  a3[3] = a3;
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284F3EAE0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v2 = *(v1 + 8);
    v3.__r_.__value_.__r.__words[2] = *(v1 + 24);
    *&v3.__r_.__value_.__l.__data_ = v2;
  }

  operator new();
}

void sub_23CB0CA70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1},std::allocator<operations_research::sat::anonymous namespace::ObjectiveShavingSolver::GenerateTask(long long)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN19operations_research3sat12_GLOBAL__N_122ObjectiveShavingSolver12GenerateTaskExEUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *std::vector<long long>::vector[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,0>(uint64_t *a1, char *a2, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a2)
  {
    if (((a3 - a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void sub_23CB0CDD0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::anonymous namespace::PostsolveResponseWrapper(char a1, int a2, uint64_t a3, uint64_t *a4, char **a5, __n128 a6)
{
  if (a1)
  {
    v9 = operations_research::sat::CpModelProto::CpModelProto(v31, 0, a3);
    v48 = 0;
    v46 = 1;
    CurrentTimeNanos = absl::lts_20240722::GetCurrentTimeNanos(v9);
    v10 = *a5;
    if (a5[1] != *a5)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = (v32 + 8 * *(*a4 + 4 * v11) + 7);
        if ((v32 & 1) == 0)
        {
          v13 = &v32;
        }

        v14 = *v13;
        v15 = *v13;
        *(v15 + 16) = 0;
        v16 = (v15 + 16);
        v17 = *&v10[8 * v11];
        v18 = *(v14 + 20);
        if (v18)
        {
          v19 = 0;
        }

        else
        {
          google::protobuf::RepeatedField<long long>::Grow(v16, v18, 1);
          v10 = *a5;
          v19 = *(v14 + 16);
          v18 = *(v14 + 20);
        }

        v20 = *(v14 + 24);
        v21 = v19 + 1;
        *(v14 + 16) = v19 + 1;
        *(v20 + 8 * v19) = v17;
        v22 = *&v10[8 * v11];
        if (v19 + 1 == v18)
        {
          google::protobuf::RepeatedField<long long>::Grow(v16, v18, (v18 + 1));
          v21 = *(v14 + 16);
          v20 = *(v14 + 24);
          v10 = *a5;
        }

        *v16 = v21 + 1;
        *(v20 + 8 * v21) = v22;
        v11 = v12++;
      }

      while (v11 < (a5[1] - v10) >> 3);
    }

    memset(v41, 0, sizeof(v41));
    v42 = xmmword_23CE306D0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v33.__r_.__value_.__r.__words[0] = &gtl::FastTypeId<WallTimer>(void)::d;
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<unsigned long,void *>,absl::lts_20240722::hash_internal::Hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<std::pair<unsigned long const,void *>>>::find_or_prepare_insert<unsigned long>(&v42, &v33, &v35);
    if (v37 == 1)
    {
      v23 = v36;
      *v36 = v33.__r_.__value_.__r.__words[0];
      v23[1] = 0;
    }

    v36[1] = &v46;
    v24 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(v41);
    v24[143] = 0;
    v25 = v24[8];
    v24[147] = 0;
    v24[8] = v25 | 0x110;
    v26 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SharedResponseManager>(v41);
    operations_research::sat::SharedResponseManager::InitializeObjective(v26, v31, v27);
    operations_research::sat::SharedResponseManager::GetResponse(&v35, v26, v30);
    if (v40 != 2 && v40 != 4)
    {
      absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(v34, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/cp_model_solver.cc", 2239);
      operations_research::sat::CpSolverResponseStats(&v35, 1, &v33);
      absl::lts_20240722::log_internal::LogMessage::operator<<(v34, &v33);
      std::string::~string(&v33);
      absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(v34);
    }

    if (v38 < a2)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(a2, v38, "num_variables_in_original_model <= postsolve_response.solution().size()");
    }

    std::vector<long long>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,google::protobuf::internal::RepeatedIterator<long long const>>(a5, v39, &v39[8 * a2], a2);
    operations_research::sat::CpSolverResponse::~CpSolverResponse(&v35);
    operations_research::sat::Model::~Model(v41);
    operations_research::sat::CpModelProto::~CpModelProto(v31);
  }

  else
  {

    operations_research::sat::PostsolveResponse(a2, a3, a4, a5, a6);
  }
}

void sub_23CB0D10C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, char a37)
{
  operations_research::sat::CpSolverResponse::~CpSolverResponse(&a37);
  operations_research::sat::Model::~Model((v37 - 184));
  operations_research::sat::CpModelProto::~CpModelProto(&a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::anonymous namespace::ObjectiveShavingSolver::Info(std::string *this, uint64_t a2, char *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 1296), v15, a3);
  *&v14 = v15;
  *(&v14 + 1) = v7 - v15;
  v9 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a2 + 1320), v13, v8);
  v11 = v13;
  v12 = v9 - v13;
  v16[0] = p_p;
  v16[1] = size;
  v16[2] = " (vars=";
  v16[3] = 7;
  v17 = v14;
  v18 = " csts=";
  v19 = 6;
  v20 = v13;
  v21 = v9 - v13;
  v22 = ")";
  v23 = 1;
  absl::lts_20240722::strings_internal::CatPieces(v16, 6, this);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23CB0D2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<long long>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedIterator<long long const>,google::protobuf::internal::RepeatedIterator<long long const>>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  v7 = *a1;
  result = v7;
  if (a4 > (v6 - v7) >> 3)
  {
    if (v7)
    {
      a1[1] = v7;
      v9 = a4;
      operator delete(v7);
      a4 = v9;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v10 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v10 = a4;
      }

      v11 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v10;
      }

      if (!(v12 >> 61))
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1];
  if (a4 <= (v13 - v7) >> 3)
  {
    if (a2 != a3)
    {
      v34 = a3 - a2 - 8;
      if (v34 < 0x18)
      {
        goto LABEL_40;
      }

      if ((v7 - a2) < 0x20)
      {
        goto LABEL_40;
      }

      v35 = (v34 >> 3) + 1;
      v36 = 8 * (v35 & 0x3FFFFFFFFFFFFFFCLL);
      result = &v7[v36];
      v37 = &a2[v36];
      v38 = (a2 + 16);
      v39 = v7 + 16;
      v40 = v35 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = *v38;
        *(v39 - 1) = *(v38 - 1);
        *v39 = v41;
        v38 += 2;
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      v4 = v37;
      if (v35 != (v35 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_40:
        do
        {
          v42 = *v4;
          v4 += 8;
          *result = v42;
          result += 8;
        }

        while (v4 != a3);
      }
    }

    a1[1] = result;
  }

  else
  {
    v14 = &a2[v13 - v7];
    if (v13 != v7)
    {
      v15 = v13 - v7 - 8;
      if (v15 < 0x18)
      {
        goto LABEL_41;
      }

      if ((v7 - a2) < 0x20)
      {
        goto LABEL_41;
      }

      v16 = (v15 >> 3) + 1;
      v17 = 8 * (v16 & 0x3FFFFFFFFFFFFFFCLL);
      result = &v7[v17];
      v18 = &a2[v17];
      v19 = (a2 + 16);
      v20 = v7 + 16;
      v21 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v19;
        *(v20 - 1) = *(v19 - 1);
        *v20 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      v4 = v18;
      if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_41:
        do
        {
          v23 = *v4;
          v4 += 8;
          *result = v23;
          result += 8;
        }

        while (v4 != v14);
      }
    }

    if (v14 == a3)
    {
      a1[1] = v13;
    }

    else
    {
      v24 = v14;
      v25 = a3 - v14 - 8;
      if (v25 < 0x18)
      {
        goto LABEL_25;
      }

      if ((v13 - v14) < 0x20)
      {
        goto LABEL_25;
      }

      v26 = (v25 >> 3) + 1;
      v27 = 8 * (v26 & 0x3FFFFFFFFFFFFFFCLL);
      v24 = &v14[v27];
      v28 = &v13[v27];
      v29 = v13 + 16;
      v30 = (v14 + 16);
      v31 = v26 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v30;
        *(v29 - 1) = *(v30 - 1);
        *v29 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      v13 = v28;
      if (v26 != (v26 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_25:
        v28 = v13;
        do
        {
          v33 = *v24;
          v24 += 8;
          *v28 = v33;
          v28 += 8;
        }

        while (v24 != a3);
      }

      a1[1] = v28;
    }
  }

  return result;
}