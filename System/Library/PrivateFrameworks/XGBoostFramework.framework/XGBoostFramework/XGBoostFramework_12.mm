void sub_274D902A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::gbm::GBTree::~GBTree(xgboost::gbm::GBTree *this, float a2, __n128 a3)
{
  xgboost::gbm::GBTree::~GBTree((this - 8), a2, a3);
}

{
  xgboost::gbm::GBTree::~GBTree((this - 8), a2, a3);

  JUMPOUT(0x277C69180);
}

xgboost::RegTree *xgboost::RegTree::RegTree(xgboost::RegTree *this)
{
  *this = &unk_2883E5FE0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0u;
  *(this + 132) = 0u;
  *(this + 148) = 0;
  *(this + 10) = 0u;
  v2 = (this + 160);
  *(this + 13) = 0u;
  v3 = (this + 208);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 1) = 0x100000001;
  *(this + 4) = 0;
  std::vector<xgboost::RegTree::Node>::resize(this + 20, 1uLL);
  std::vector<std::pair<double,double>>::resize(v3, *(this + 3));
  v4 = *(this + 3);
  v14 = 0;
  v5 = *(this + 29);
  v6 = *(this + 30) - v5;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v8 != 0 && v7)
  {
    std::vector<xgboost::FeatureType>::__append(this + 29, v8, &v14);
    v4 = *(this + 3);
  }

  else if (!v7)
  {
    *(this + 30) = v5 + v4;
  }

  std::vector<std::pair<double,double>>::resize(this + 35, v4);
  if (*(this + 3) >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = *v2;
    do
    {
      v12 = v11 + v9;
      *(v12 + 16) = 0;
      *(v12 + 4) = -1;
      v11 = *(this + 20);
      *(v11 + v9) = -1;
      ++v10;
      v9 += 20;
    }

    while (v10 < *(this + 3));
  }

  return this;
}

void sub_274D9055C(_Unwind_Exception *exception_object)
{
  v5 = v1[35];
  if (v5)
  {
    v1[36] = v5;
    operator delete(v5);
  }

  v6 = v1[32];
  if (v6)
  {
    v1[33] = v6;
    operator delete(v6);
  }

  v7 = v1[29];
  if (v7)
  {
    v1[30] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[27] = v8;
    operator delete(v8);
  }

  v9 = v1[23];
  if (v9)
  {
    v1[24] = v9;
    operator delete(v9);
  }

  v10 = *v2;
  if (*v2)
  {
    v1[21] = v10;
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::RegTree::Node>::resize(void *result, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::RegTree::Node>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 20 * a2;
  }
}

void std::vector<xgboost::RegTree::Node>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = (v4 + 20 * a2);
      v11 = 20 * a2;
      do
      {
        *v4 = xmmword_274E25720;
        v4 = (v4 + 20);
        v11 -= 20;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(a1, v9);
    }

    v12 = 20 * v6;
    v13 = 20 * v6 + 20 * a2;
    v14 = 20 * a2;
    v15 = v12;
    do
    {
      *v15 = xmmword_274E25720;
      v15 = (v15 + 20);
      v14 -= 20;
    }

    while (v14);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<xgboost::FeatureType>::__append(char **a1, size_t __len, unsigned __int8 *a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (v5 - v6 >= __len)
  {
    if (__len)
    {
      memset(a1[1], *a3, __len);
      v6 += __len;
    }

    a1[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = (v6 - *a1);
    v9 = &v8[__len];
    if (&v8[__len] < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = v6 - *a1;
    memset(v8, *a3, __len);
    memcpy(&v8[v7 - v6], v7, v12);
    *a1 = &v8[v7 - v6];
    a1[1] = &v8[__len];
    a1[2] = 0;
    if (v7)
    {

      operator delete(v7);
    }
  }
}

void std::vector<std::unique_ptr<xgboost::TreeUpdater>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<xgboost::TreeUpdater>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void xgboost::gbm::GBTreeModel::~GBTreeModel(xgboost::gbm::GBTreeModel *this)
{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

{
  *this = &unk_2883E73A0;
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = (this + 200);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 176);
  std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v3);
  MEMORY[0x277C69180](this, 0x10F1C406709006FLL);
}

void *std::endl[abi:ne200100]<char,std::char_traits<char>>(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_274D90C28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<int>::push_back(unint64_t *result, _DWORD *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<int>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v8 & 0x3FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<int>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<int *>::emplace_back<int *&>(a1, &v9);
}

void sub_274D90E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<int *>::emplace_back<int *&>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v11);
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

void std::__split_buffer<int *>::emplace_front<int *>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1, v9);
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

void std::__split_buffer<int *>::emplace_back<int *>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1[4], v11);
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

void std::__split_buffer<int *>::emplace_front<int *&>(const void **a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a1[4], v9);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<int>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 7) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x400)
  {
    a2 = 1;
  }

  if (v5 < 0x800)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t std::deque<int>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<int *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<xgboost::RegTree>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::pair<std::string,std::string>>::__vdeallocate(std::vector<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  if (this->__begin_)
  {
    end = this->__end_;
    v4 = this->__begin_;
    if (end != begin)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != begin);
      v4 = this->__begin_;
    }

    this->__end_ = begin;
    operator delete(v4);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::pair<std::string,std::string>::pair[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 2;
      v11 += 2;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<std::pair<std::string,std::string> *,std::pair<std::string,std::string> *,std::pair<std::string,std::string> *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      this += 2;
      v5 += 2;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<std::vector<std::unique_ptr<xgboost::RegTree>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::unique_ptr<xgboost::RegTree>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<xgboost::RegTree>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<dmlc::parameter::FieldAccessEntry *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<xgboost::RegTree>>::~__split_buffer(v14);
  }
}

void dmlc::LogCheckFormat<int,unsigned int>(void *a1, unsigned int *a2, unsigned int *a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68E20](v5, *a2);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68E30](v7, *a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274D91A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::RegTree::Node>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::RegTree::Node>>(a1, a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91B18(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::FeatureType>::__init_with_size[abi:ne200100]<xgboost::FeatureType*,xgboost::FeatureType*>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::FeatureType>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::RegTree::Segment>::__init_with_size[abi:ne200100]<xgboost::RegTree::Segment*,xgboost::RegTree::Segment*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::tree::GradStats>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D91C10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::parameter::FieldEntry<xgboost::TreeProcessType>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::parameter::FieldEntry<xgboost::PredictorType>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::parameter::FieldEntry<xgboost::TreeMethod>::~FieldEntry(uint64_t a1)
{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));

  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);
}

{
  *a1 = &unk_2883DEAC8;
  std::__tree<std::__value_type<int,std::string>,std::__map_value_compare<int,std::__value_type<int,std::string>,std::less<int>,true>,std::allocator<std::__value_type<int,std::string>>>::destroy(a1 + 152, *(a1 + 160));
  std::__tree<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::__map_value_compare<std::string,std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dmlc::parameter::FieldAccessEntry *>>>::destroy(a1 + 128, *(a1 + 136));
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

void dmlc::parameter::FieldEntry<BOOL>::~FieldEntry(void **a1)
{
  dmlc::parameter::FieldAccessEntry::~FieldAccessEntry(a1);

  JUMPOUT(0x277C69180);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::SetDefault(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((*(result + 8) & 1) == 0)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v18);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Required parameter ", 19);
    v4 = *(v2 + 47);
    if (v4 >= 0)
    {
      v5 = v2 + 24;
    }

    else
    {
      v5 = *(v2 + 24);
    }

    if (v4 >= 0)
    {
      v6 = *(v2 + 47);
    }

    else
    {
      v6 = *(v2 + 32);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " of ", 4);
    v11 = *(v2 + 48);
    v10 = v2 + 48;
    v9 = v11;
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not presented", 17);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &v17);
    exception->__vftable = &unk_2883DE2B0;
  }

  *(a2 + *(result + 96)) = *(result + 104);
  return result;
}

void sub_274D92054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void dmlc::parameter::FieldEntry<BOOL>::Set(uint64_t a1, uint64_t a2, char *a3)
{
  memset(&v40, 0, sizeof(v40));
  if (a3[23] >= 0)
  {
    v6 = a3[23];
  }

  else
  {
    v6 = *(a3 + 1);
  }

  std::string::resize(&v40, v6, 0);
  v7 = a3[23];
  if (v7 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = a3[23];
  }

  else
  {
    v9 = *(a3 + 1);
  }

  v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  if (v9)
  {
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v40;
    }

    else
    {
      v11 = v40.__r_.__value_.__r.__words[0];
    }

    do
    {
      v11->__r_.__value_.__s.__data_[0] = __tolower(*v8);
      v11 = (v11 + 1);
      ++v8;
      --v9;
    }

    while (v9);
    v10 = HIBYTE(v40.__r_.__value_.__r.__words[2]);
  }

  v12 = *(a1 + 96);
  if (v10 < 0)
  {
    if (v40.__r_.__value_.__l.__size_ == 1)
    {
      v15 = v40.__r_.__value_.__r.__words[0];
      v18 = *v40.__r_.__value_.__l.__data_;
      if (v18 == 48)
      {
LABEL_64:
        v17 = 0;
        goto LABEL_65;
      }

      if (v18 != 49)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (v40.__r_.__value_.__l.__size_ != 4)
      {
        if (v40.__r_.__value_.__l.__size_ != 5 || ((v15 = v40.__r_.__value_.__r.__words[0], *v40.__r_.__value_.__l.__data_ == 1936482662) ? (v16 = *(v40.__r_.__value_.__r.__words[0] + 4) == 101) : (v16 = 0), !v16))
        {
LABEL_45:
          std::ostringstream::basic_ostringstream[abi:ne200100](v39);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Invalid Parameter format for ", 29);
          v20 = *(a1 + 47);
          if (v20 >= 0)
          {
            v21 = a1 + 24;
          }

          else
          {
            v21 = *(a1 + 24);
          }

          if (v20 >= 0)
          {
            v22 = *(a1 + 47);
          }

          else
          {
            v22 = *(a1 + 32);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " expect ", 8);
          v27 = *(a1 + 48);
          v26 = a1 + 48;
          v25 = v27;
          v28 = *(v26 + 23);
          if (v28 >= 0)
          {
            v29 = v26;
          }

          else
          {
            v29 = v25;
          }

          if (v28 >= 0)
          {
            v30 = *(v26 + 23);
          }

          else
          {
            v30 = *(v26 + 8);
          }

          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v29, v30);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " but value='", 12);
          v33 = a3[23];
          if (v33 >= 0)
          {
            v34 = a3;
          }

          else
          {
            v34 = *a3;
          }

          if (v33 >= 0)
          {
            v35 = a3[23];
          }

          else
          {
            v35 = *(a3 + 1);
          }

          v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
          v38.__r_.__value_.__s.__data_[0] = 39;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v38, 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::runtime_error::runtime_error(exception, &v38);
          exception->__vftable = &unk_2883DE2B0;
        }

        goto LABEL_64;
      }

      v15 = v40.__r_.__value_.__r.__words[0];
      if (*v40.__r_.__value_.__l.__data_ != 1702195828)
      {
        goto LABEL_45;
      }
    }

    v17 = 1;
LABEL_65:
    *(a2 + v12) = v17;
    operator delete(v15);
    return;
  }

  if (v10 != 1)
  {
    if (v10 != 4)
    {
      if (v10 != 5)
      {
        goto LABEL_45;
      }

      if (LODWORD(v40.__r_.__value_.__l.__data_) != 1936482662 || v40.__r_.__value_.__s.__data_[4] != 101)
      {
        goto LABEL_45;
      }

      v14 = 0;
      goto LABEL_40;
    }

    if (LODWORD(v40.__r_.__value_.__l.__data_) != 1702195828)
    {
      goto LABEL_45;
    }

LABEL_39:
    v14 = 1;
LABEL_40:
    *(a2 + v12) = v14;
    return;
  }

  if (v40.__r_.__value_.__s.__data_[0] == 49)
  {
    goto LABEL_39;
  }

  if (v40.__r_.__value_.__s.__data_[0] != 48)
  {
    goto LABEL_45;
  }

  *(a2 + v12) = 0;
}

void sub_274D9238C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      if (*(v18 - 65) < 0)
      {
        operator delete(*(v18 - 88));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::GetStringValue(void *a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
  (*(*a1 + 64))(a1, &v6, *(a2 + a1[12]));
  std::stringbuf::str();
  v6 = *MEMORY[0x277D82828];
  *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
  v7 = MEMORY[0x277D82878] + 16;
  if (v9 < 0)
  {
    operator delete(v8[7].__locale_);
  }

  v7 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v8);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v10);
}

void sub_274D92578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t dmlc::parameter::FieldEntryBase<dmlc::parameter::FieldEntry<BOOL>,BOOL>::GetFieldInfo@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  std::string::operator=(a2, (a1 + 24));
  std::string::operator=((a2 + 24), (a1 + 48));
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = a1 + 48;
  }

  else
  {
    v5 = *(a1 + 48);
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 71);
  }

  else
  {
    v6 = *(a1 + 56);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, v5, v6);
  if (*(a1 + 8) == 1)
  {
    LOBYTE(v9) = 44;
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, &v9, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " optional, default=", 19);
    (*(*a1 + 56))(a1, &v11);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, ", required", 10);
  }

  std::stringbuf::str();
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v9;
  *(a2 + 64) = v10;
  std::string::operator=((a2 + 72), (a1 + 72));
  v11 = *MEMORY[0x277D82828];
  *(&v11 + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::ostream::~ostream();
  return MEMORY[0x277C690D0](&v15);
}

void sub_274D927C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::ostringstream::~ostringstream(va);
  dmlc::ParamFieldInfo::~ParamFieldInfo(v7);
  _Unwind_Resume(a1);
}

uint64_t xgboost::gbm::GBTree::GBTree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2883E4258;
  *(a1 + 8) = &unk_2883E4320;
  *(a1 + 16) = a3;
  *(a1 + 24) = &unk_2883E73A0;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 44) = 1;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 272) = a3;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  *(a1 + 328) = 0;
  *(a1 + 330) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  xgboost::common::Monitor::Monitor((a1 + 392));
  return a1;
}

void sub_274D92A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v3 + 384);
  *(v3 + 384) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6, a2);
  }

  std::vector<std::unique_ptr<xgboost::TreeUpdater>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 311) < 0)
  {
    operator delete(*(v3 + 288));
  }

  xgboost::gbm::GBTreeModel::~GBTreeModel(v4);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<xgboost::gbm::$_1,std::allocator<xgboost::gbm::$_1>,xgboost::GradientBooster * ()(xgboost::LearnerModelParam const*,xgboost::GenericParameter const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void xgboost::gbm::Dart::~Dart(xgboost::gbm::Dart *this)
{
  *this = &unk_2883E45C0;
  *(this + 1) = &unk_2883E4688;
  v6 = (this + 536);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 64);
  if (v4)
  {
    *(this + 65) = v4;
    operator delete(v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    *(this + 62) = v5;
    operator delete(v5);
  }

  xgboost::gbm::GBTree::~GBTree(this, v2, v3);
}

{
  *this = &unk_2883E45C0;
  *(this + 1) = &unk_2883E4688;
  v6 = (this + 536);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 64);
  if (v4)
  {
    *(this + 65) = v4;
    operator delete(v4);
  }

  v5 = *(this + 61);
  if (v5)
  {
    *(this + 62) = v5;
    operator delete(v5);
  }

  xgboost::gbm::GBTree::~GBTree(this, v2, v3);
  MEMORY[0x277C69180]();
}

float xgboost::gbm::Dart::LoadModel(xgboost::gbm::Dart *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v4 = (*(**a2 + 24))(*a2, __p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = (v5 + 16);
  v7 = v5[39];
  if (v7 < 0)
  {
    if (*(v5 + 3) != 4)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = (v5 + 16);
    if (v7 != 4)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [5]>(v6, "dart");
    }
  }

  if (*v8 != 1953653092)
  {
    goto LABEL_7;
  }

  v26 = 0;
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v26)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(__p);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 680);
    v10 = dmlc::LogMessageFatal::GetEntry(__p);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Check failed: ", 14);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "get<String>(in[name]) == dart", 33);
    v13 = *(v26 + 23);
    v14 = v13 >= 0 ? v26 : *v26;
    v15 = v13 >= 0 ? *(v26 + 23) : *(v26 + 8);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(__p);
    v17 = v26;
    v26 = 0;
    if (v17)
    {
      std::default_delete<std::string>::operator()[abi:ne200100](&v26, v17);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "gbtree");
  v18 = (*(**a2 + 24))(*a2, __p);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  xgboost::gbm::GBTree::LoadModel(this, v18);
  std::string::basic_string[abi:ne200100]<0>(__p, "weight_drop");
  v19 = (*(**a2 + 24))(*a2, __p);
  v20 = xgboost::Cast<xgboost::JsonArray const,xgboost::Value const>(*v19);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  std::vector<float>::resize((this + 488), (v20[3] - v20[2]) >> 3);
  if (*(this + 62) != *(this + 61))
  {
    v22 = 0;
    do
    {
      result = *(xgboost::Cast<xgboost::JsonNumber const,xgboost::Value const>(*(v20[2] + 8 * v22)) + 4);
      v23 = *(this + 61);
      *(v23 + 4 * v22++) = result;
    }

    while (v22 < (*(this + 62) - v23) >> 2);
  }

  return result;
}

void sub_274D92FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::gbm::Dart::SaveModel(xgboost::gbm::Dart *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v5, "dart");
  v7[0] = &unk_2883E6F38;
  v7[1] = 0;
  *v8 = *v5;
  v9 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "name");
  v3 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v3, v7);
}

void sub_274D93424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void **a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a12);
  a24 = &a18;
  std::vector<xgboost::Json>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::Configure(uint64_t a1, std::string **a2)
{
  xgboost::gbm::GBTree::Configure(a1, a2);
  if (*(a1 + 456) == 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v4);
    dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B08, a1 + 456, *a2, a2[1], 0, &v5, 0);
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v4);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(&stru_280AF6B08, a1 + 456, *a2, a2[1], &v5, 0);
    *(a1 + 456) = 1;
  }

  v8 = &v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v8);
}

void sub_274D935A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::Load(xgboost::gbm::Dart *this, dmlc::Stream *a2)
{
  xgboost::gbm::GBTree::Load(this, a2);
  std::vector<float>::resize((this + 488), *(this + 10));
  if (*(this + 10))
  {
    __sz = 0;
    if ((**a2)(a2, &__sz, 8) == 8)
    {
      v4 = __sz;
      std::vector<float>::resize((this + 488), __sz);
      if (__sz)
      {
        (**a2)(a2, *(this + 61), 4 * v4);
      }
    }
  }
}

uint64_t xgboost::gbm::Dart::Save(xgboost::gbm::Dart *this, dmlc::Stream *a2)
{
  result = xgboost::gbm::GBTreeModel::Save(this + 24, a2);
  v5 = *(this + 62) - *(this + 61);
  if (v5)
  {
    v6 = v5 >> 2;
    result = (*(*a2 + 8))(a2, &v6, 8);
    if (v6)
    {
      return (*(*a2 + 8))(a2, *(this + 61), *(this + 62) - *(this + 61));
    }
  }

  return result;
}

void xgboost::gbm::Dart::Slice(xgboost::gbm::Dart *this, int a2, int a3, int a4, xgboost::GradientBooster *a5, BOOL *a6)
{
  LODWORD(v9) = a3;
  xgboost::gbm::GBTree::Slice(this, a2, a3, a4, a5, a6);
  if (!*a6)
  {
    {
      v13 = v12;
      if (v12[61] != v12[62])
      {
        Entry = dmlc::LogMessageFatal::GetEntry(&v34);
        dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 659);
        v26 = dmlc::LogMessageFatal::GetEntry(&v34);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Check failed: p_dart->weight_drop_.empty()", 42);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ": ", 2);
        dmlc::LogMessageFatal::~LogMessageFatal(&v34);
      }

      v14 = *(*(this + 4) + 8);
      v15 = *(this + 11);
      v16 = xgboost::gbm::detail::LayerToTree((this + 24), a2, v9);
      v17 = HIDWORD(v16);
      v36 = HIDWORD(v16);
      v18 = (*(this + 26) - *(this + 25)) >> 3;
      if (v18 >= HIDWORD(v16))
      {
        v19 = (v15 * v14);
        if (!v9)
        {
          v9 = v18 / v19;
        }

        v35 = v16;
        v33 = (v9 - a2) / a4;
        if (v33)
        {
          v20 = 0;
          v32 = v19 * (a4 - 1);
          v31 = v15 * v14;
          do
          {
            if (v19)
            {
              v21 = v16;
              v22 = 4 * v16;
              v23 = v19;
              do
              {
                if (v21 >= v17)
                {
                  dmlc::LogCheckFormat<int,unsigned int>(&v34, &v35, &v36);
                }

                v24 = *(this + 61);
                if (v21 >= (*(this + 62) - v24) >> 2)
                {
                  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_out_of_range[abi:ne200100]();
                }

                std::vector<float>::push_back[abi:ne200100](v13 + 61, (v24 + v22));
                LODWORD(v16) = v21 + 1;
                v35 = v21 + 1;
                v22 += 4;
                ++v21;
                --v23;
              }

              while (v23);
              LODWORD(v19) = v31;
            }

            LODWORD(v16) = v16 + v32;
            v35 = v16;
            ++v20;
          }

          while (v20 != v33);
        }
      }
    }

    else
    {
      v28 = dmlc::LogMessageFatal::GetEntry(&v34);
      dmlc::LogMessageFatal::Entry::Init(v28, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 658);
      v29 = dmlc::LogMessageFatal::GetEntry(&v34);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Check failed: p_dart", 20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v34);
      __break(1u);
    }
  }
}

void sub_274D93A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::PredictBatch(xgboost::gbm::Dart *this, xgboost::DMatrix *a2, uint64_t **a3, int a4, unsigned int a5, int a6)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *(this + 65) = *(this + 64);
    v10 = dmlc::ThreadLocalStore<xgboost::common::RandomThreadLocalEntry>::Get();
    v11 = v10;
    if (*(this + 119) <= 0.0 || (v12 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v10), (v12 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11) * 4294967300.0) * 5.42101086e-20 >= *(this + 119)))
    {
      if (*(this + 115) == 1)
      {
        v13 = *(this + 61);
        v14 = *(this + 62);
        if (v13 == v14)
        {
          v20 = 0;
          v19 = *(this + 61);
        }

        else
        {
          v15 = 0.0;
          do
          {
            v16 = *v13++;
            v15 = v15 + v16;
          }

          while (v13 != v14);
          v50.__ptr_ = 0;
          do
          {
            v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            v18 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            v19 = *(this + 61);
            v13 = *(this + 62);
            v20 = v13 - v19;
            ptr = v50.__ptr_;
            if ((v17 + v18 * 4294967300.0) * 5.42101086e-20 < ((v19[v50.__ptr_] * (*(this + 117) * v20)) / v15))
            {
              std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v50);
              ptr = v50.__ptr_;
              v19 = *(this + 61);
              v13 = *(this + 62);
              v20 = v13 - v19;
            }

            v50.__ptr_ = ptr + 1;
          }

          while ((ptr + 1) < v20);
        }

        if ((*(this + 472) & 1) != 0 && v19 != v13 && *(this + 64) == *(this + 65))
        {
          __p = 0;
          v49 = 0uLL;
          if (v20 >= 2)
          {
            if (!((v20 - 1) >> 61))
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v20 - 1);
            }

            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v29 = a3;
          v30 = __p;
          v31 = v49;
          v32 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
          v33 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
          if (v49 != __p)
          {
            v34 = (v49 - __p) >> 3;
            do
            {
              v35 = v34 >> 1;
              v36 = &v30[8 * (v34 >> 1)];
              v38 = *v36;
              v37 = v36 + 1;
              v34 += ~(v34 >> 1);
              if ((v32 + v33 * 4294967300.0) * 5.42101086e-20 < v38)
              {
                v34 = v35;
              }

              else
              {
                v30 = v37;
              }
            }

            while (v34);
            v31 = v30;
          }

          v47 = (v31 - __p) >> 3;
          std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v47);
          a3 = v29;
        }
      }

      else
      {
        v50.__ptr_ = 0;
        v22 = *(this + 62);
        if (v22 == *(this + 61))
        {
          v25 = 0;
          v24 = *(this + 62);
        }

        else
        {
          do
          {
            v23 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11);
            if ((v23 + std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(v11) * 4294967300.0) * 5.42101086e-20 < *(this + 117))
            {
              std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v50);
            }

            ++v50.__ptr_;
            v24 = *(this + 61);
            v22 = *(this + 62);
          }

          while (v50.__ptr_ < (v22 - v24) >> 2);
          v25 = (v22 - v24) >> 2;
        }

        if ((*(this + 472) & 1) != 0 && v24 != v22 && *(this + 64) == *(this + 65))
        {
          if (v25 == 1)
          {
            v26 = 0;
          }

          else if (v25)
          {
            v27 = __clz(v25);
            v28 = 63;
            if (((v25 << v27) & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v28 = 64;
            }

            std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(&v50, v11, v28 - v27);
            do
            {
              v26 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(&v50);
            }

            while (v26 >= v25);
          }

          else
          {
            std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(&v50, v11, 0x40uLL);
            v26 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(&v50);
          }

          v50.__ptr_ = v26;
          std::vector<unsigned long>::push_back[abi:ne200100](this + 64, &v50);
        }
      }
    }
  }

  Predictor = xgboost::gbm::GBTree::GetPredictor(this, a3, a2);
  v39 = *Predictor;
  if (!*Predictor)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v50);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 725);
    v43 = dmlc::LogMessageFatal::GetEntry(&v50);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Check failed: predictor", 23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v50);
    v39 = *Predictor;
  }

  v40 = (**a2)(a2);
  xgboost::Predictor::InitOutPredictions(v39, v40, a3, this + 24, v41);
  *(a3 + 2) = 0;
  xgboost::gbm::detail::LayerToTree((this + 24), a5, a6);
  xgboost::HostDeviceVector<float>::HostDeviceVector();
}

void sub_274D94640(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x274D94638);
}

void xgboost::gbm::Dart::InplacePredict(uint64_t a1, uint64_t a2, void *a3, uint64_t **a4, xgboost::gbm::GBTreeModel *a5, int a6, float a7)
{
  v11 = *MEMORY[0x277D85DE8];
  xgboost::gbm::detail::LayerToTree((a1 + 24), a5, a6);
  v9 = *(a1 + 384);
  memset(__p, 0, sizeof(__p));
  std::vector<xgboost::Predictor const*>::__init_with_size[abi:ne200100]<xgboost::Predictor const* const*,xgboost::Predictor const* const*>(__p, &v9, v10);
}

uint64_t xgboost::gbm::Dart::PredictInstance(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  Predictor = xgboost::gbm::GBTree::GetPredictor(a1, 0, 0);
  xgboost::gbm::detail::LayerToTree((a1 + 24), a4, a5);
  v9 = *(**Predictor + 40);

  return v9();
}

uint64_t xgboost::gbm::Dart::PredictContribution(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 881);
    v15 = dmlc::LogMessageFatal::GetEntry(&v17);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  return (*(**(a1 + 384) + 56))(*(a1 + 384), a2, a3, a1 + 24, HIDWORD(v12), a1 + 488, a6, 0, 0);
}

uint64_t xgboost::gbm::Dart::PredictInteractionContributions(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::gbm::GBTreeModel *a4, int a5, uint64_t a6)
{
  v8 = a4;
  if ((*(a1 + 330) & 1) == 0)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v17);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc", 891);
    v15 = dmlc::LogMessageFatal::GetEntry(&v17);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Check failed: configured_", 25);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v17);
  }

  v12 = xgboost::gbm::detail::LayerToTree((a1 + 24), v8, a5);
  return (*(**(a1 + 384) + 64))(*(a1 + 384), a2, a3, a1 + 24, HIDWORD(v12), a1 + 488, a6);
}

void xgboost::gbm::Dart::LoadConfig(xgboost::gbm::Dart *this, const xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v4 = (*(**a2 + 24))(*a2, &__p);
  v5 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(*v4);
  v6 = (v5 + 16);
  v7 = v5[39];
  if (v7 < 0)
  {
    if (*(v5 + 3) != 4)
    {
      goto LABEL_7;
    }

    v8 = *v6;
  }

  else
  {
    v8 = (v5 + 16);
    if (v7 != 4)
    {
LABEL_7:
      dmlc::LogCheckFormat<std::string,char [5]>(v6, "dart");
    }
  }

  if (*v8 != 1953653092)
  {
    goto LABEL_7;
  }

  v19[0] = 0;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "gbtree");
  v9 = (*(**a2 + 24))(*a2, &__p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p);
  }

  xgboost::gbm::GBTree::LoadConfig(this, v9);
  std::string::basic_string[abi:ne200100]<0>(v19, "dart_train_param");
  v10 = (*(**a2 + 24))(*a2, v19);
  v11 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*v10);
  v25 = 0;
  v26 = 0;
  __p = &v25;
  v12 = *(v11 + 2);
  v13 = (v11 + 24);
  if (v12 != (v11 + 24))
  {
    do
    {
      v14 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v12[7]);
      v28 = v12 + 4;
      v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&__p, v12 + 4, &std::piecewise_construct, &v28, &v27);
      v11 = std::string::operator=((v15 + 7), (v14 + 16));
      v16 = v12[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v12[2];
          v18 = *v17 == v12;
          v12 = v17;
        }

        while (!v18);
      }

      v12 = v17;
    }

    while (v17 != v13);
  }

  if (*(this + 456) == 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v11);
    dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B08, this + 456, __p, &v25, 0, &v21, 0);
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    xgboost::gbm::DartTrainParam::__MANAGER__(v11);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(&stru_280AF6B08, this + 456, __p, &v25, &v21, 0);
    *(this + 456) = 1;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&__p, v25);
  __p = &v21;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v20 < 0)
  {
    operator delete(v19[0]);
  }
}

void sub_274D952E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, int a21, __int16 a22, char a23, char a24)
{
  *(v24 - 56) = &a16;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100]((v24 - 56));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a19, a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void xgboost::gbm::Dart::SaveConfig(xgboost::gbm::Dart *this, xgboost::Json *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "dart");
  v6[0] = &unk_2883E6F38;
  v6[1] = 0;
  *v7 = *v4;
  v8 = v5;
  v4[0] = 0;
  v4[1] = 0;
  v5 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "name");
  v3 = (*(**a2 + 24))(*a2, &__p);
  xgboost::Json::operator=(v3, v6);
}

void xgboost::gbm::Dart::CommitModel(uint64_t a1, void *a2, float a3, __n128 a4)
{
  if (*(*(a1 + 32) + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *a2 + v6;
      v8 += (*(v9 + 8) - *v9) >> 3;
      xgboost::gbm::GBTreeModel::CommitModel(a1 + 24, v9, v7++);
      v6 += 24;
    }

    while (v7 < *(*(a1 + 32) + 8));
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 520);
  v12 = *(a1 + 512);
  v13 = v11 - v12;
  if (v11 == v12)
  {
    for (; v10; --v10)
    {
      LODWORD(v27[0].__locale_) = 1065353216;
      std::vector<float>::push_back[abi:ne200100]((a1 + 488), v27);
    }
  }

  else
  {
    v14 = *(a1 + 480) / v10;
    if (*(a1 + 464) == 1)
    {
      a4.n128_u64[0] = 1.0;
      a3 = 1.0 / (v14 + 1.0);
      *&v27[0].__locale_ = a3;
      v15 = *(a1 + 488);
      do
      {
        v16 = *v12++;
        a4.n128_f32[0] = *(v15 + 4 * v16) * a3;
        *(v15 + 4 * v16) = a4.n128_u32[0];
      }

      while (v12 != v11);
      for (; v10; --v10)
      {
        std::vector<float>::push_back[abi:ne200100]((a1 + 488), v27);
      }
    }

    else
    {
      a3 = v14 + v13;
      a4.n128_f64[0] = v13 / a3;
      a4.n128_f32[0] = a4.n128_f64[0];
      v17 = *(a1 + 488);
      do
      {
        v18 = *v12++;
        *(v17 + 4 * v18) = *(v17 + 4 * v18) * a4.n128_f32[0];
      }

      while (v12 != v11);
      if (v10)
      {
        v19 = 1.0 / a3;
        do
        {
          *&v27[0].__locale_ = v19;
          std::vector<float>::push_back[abi:ne200100]((a1 + 488), v27);
          --v10;
        }

        while (v10);
      }
    }
  }

  *(a1 + 520) = *(a1 + 512);
  if (*(dmlc::ThreadLocalStore<xgboost::GlobalConfiguration>::Get(void)::inst(a3, a4) + 4) > 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/gbm/gbtree.cc");
    xgboost::ConsoleLogger::ConsoleLogger(v27, __p, 909, 2);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "drop ", 5);
    v21 = MEMORY[0x277C68E50](v20, v13);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " trees, ", 8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "weight = ", 9);
    std::ostream::operator<<();
    xgboost::ConsoleLogger::~ConsoleLogger(v27, v23, v24);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_274D95A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void non-virtual thunk toxgboost::gbm::Dart::~Dart(xgboost::gbm::Dart *this)
{
  v2 = (this - 8);
  *(this - 1) = &unk_2883E45C0;
  *this = &unk_2883E4688;
  v7 = (this + 528);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *(this + 63);
  if (v5)
  {
    *(this + 64) = v5;
    operator delete(v5);
  }

  v6 = *(this + 60);
  if (v6)
  {
    *(this + 61) = v6;
    operator delete(v6);
  }

  xgboost::gbm::GBTree::~GBTree(v2, v3, v4);
}

{
  v2 = (this - 8);
  *(this - 1) = &unk_2883E45C0;
  *this = &unk_2883E4688;
  v7 = (this + 528);
  std::vector<xgboost::RegTree::FVec>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = *(this + 63);
  if (v5)
  {
    *(this + 64) = v5;
    operator delete(v5);
  }

  v6 = *(this + 60);
  if (v6)
  {
    *(this + 61) = v6;
    operator delete(v6);
  }

  xgboost::gbm::GBTree::~GBTree(v2, v3, v4);
  MEMORY[0x277C69180]();
}

void dmlc::LogCheckFormat<std::string,char [5]>(uint64_t **a1, const char *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, " (", 2);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " vs. ", 5);
  v11 = strlen(a2);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, a2, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") ", 2);
  operator new();
}

void sub_274D95DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void xgboost::PredictionCacheEntry::~PredictionCacheEntry(xgboost::PredictionCacheEntry *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  xgboost::HostDeviceVector<float>::~HostDeviceVector();
}

void std::__function::__func<xgboost::tree::$_0,std::allocator<xgboost::tree::$_0>,xgboost::TreeUpdater * ()(xgboost::ObjInfo)>::operator()(uint64_t a1, __int16 *a2)
{
  operator new();
}

{
  operator new();
}

void sub_274D95FB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v15 + 256);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](v19, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](v18, 0);
  xgboost::common::Monitor::~Monitor((v15 + 152), v22, v23);
  xgboost::tree::TrainParam::~TrainParam(v17);
  MEMORY[0x277C69180](v15, v16);
  _Unwind_Resume(a1);
}

void xgboost::tree::GlobalApproxUpdater::~GlobalApproxUpdater(xgboost::tree::GlobalApproxUpdater *this)
{
  *this = &unk_2883E47D8;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 28, 0);
  xgboost::common::Monitor::~Monitor(this + 19, v3, v4);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }
}

{
  *this = &unk_2883E47D8;
  v2 = *(this + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 29, 0);
  std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](this + 28, 0);
  xgboost::common::Monitor::~Monitor(this + 19, v3, v4);
  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  v5 = *(this + 12);
  if (v5)
  {
    *(this + 13) = v5;
    operator delete(v5);
  }

  JUMPOUT(0x277C69180);
}

void xgboost::tree::GlobalApproxUpdater::LoadConfig(xgboost::tree::GlobalApproxUpdater *this, const xgboost::Json *a2)
{
  v3 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v4 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::TrainParam>(v4, (this + 16), v9);
  v10 = v9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "hist_param");
  v5 = std::map<std::string,xgboost::Json>::at(v3 + 16, __p);
  xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(v5, (this + 216), v6);
  v10 = v6;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274D9627C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::GlobalApproxUpdater::SaveConfig(xgboost::tree::GlobalApproxUpdater *this, xgboost::Json *a2)
{
  xgboost::ToJson<xgboost::tree::TrainParam>((this + 16), v5);
  std::string::basic_string[abi:ne200100]<0>(__p, "train_param");
  v3 = (*(**a2 + 24))(*a2, __p);
  xgboost::Json::operator=(v3, v5);
}

void xgboost::tree::GlobalApproxUpdater::Configure(uint64_t a1, uint64_t *a2)
{
  xgboost::XGBoostParameter<xgboost::tree::TrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v5, (a1 + 16), a2);
  v6 = v5;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(v4, (a1 + 216), a2);
  v6 = v4;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void xgboost::tree::GlobalApproxUpdater::Update(uint64_t a1, uint64_t *a2, void (***a3)(void), void *a4)
{
  *(a1 + 20) = *(a1 + 20) / ((a4[1] - *a4) >> 3);
  v4 = *(a1 + 217);
  (**a3)(a3);
  if (v4 == 1)
  {
    operator new();
  }

  operator new();
}

void sub_274D98B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  dmlc::LogMessageFatal::~LogMessageFatal(&a65);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::GlobalApproxUpdater::UpdatePredictionCache(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  if (*(a1 + 240) != a2)
  {
    return 0;
  }

  v87 = *(a1 + 224);
  if (*(a1 + 224) == 0)
  {
    return 0;
  }

  if (*(a1 + 217) == 1)
  {
    v5 = *a3;
    v6 = a3[2];
    v8 = a3[4];
    v7 = a3[5];
    v9 = *(a3 + 12);
    std::string::basic_string[abi:ne200100]<0>(&v97, "UpdatePredictionCache");
    xgboost::common::Monitor::Start(v10, v11);
    if (v98.__m_.__opaque[7] < 0)
    {
      operator delete(v97.__ptr_);
    }

    v95[0] = v7;
    v12 = (*(*a2 + 24))(a2);
    if (v7 != *v12)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(v95, v12);
    }

    v89 = *(v87 + 928);
    v95[0] = v7;
    LODWORD(v91[0]) = 0;
    if (!v7)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v95, v91);
    }

    if (!v89)
    {
      Entry = dmlc::LogMessageFatal::GetEntry(&v97);
      dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 387);
      v80 = dmlc::LogMessageFatal::GetEntry(&v97);
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Check failed: p_last_tree", 25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v97);
    }

    xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v87 + 304), v95);
    LODWORD(v91[0]) = v9;
    v96.i32[0] = -1;
    if (v9 != -1)
    {
      dmlc::LogCheckFormat<int,int>(v91, &v96);
    }

    v94 = 0xCCCCCCCCCCCCCCCDLL * ((*(v89 + 168) - *(v89 + 160)) >> 2);
    v13 = *(v87 + 904);
    for (i = *(v87 + 912); v13 != i; v13 += 136)
    {
      v91[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v13 + 112) - *(v13 + 104)) >> 3));
      if (v91[0] != v94)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(v91, &v94);
      }

      v14 = *(v13 + 104);
      v15 = *(v13 + 112);
      *v91 = 0u;
      *__p = 0u;
      v93 = 0u;
      v16 = v15 - v14;
      if (v16)
      {
        v17 = 0;
        v18 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
        do
        {
          v19 = *(*(v13 + 104) + 24 * v17 + 8) - *(*(v13 + 104) + 24 * v17);
          v20 = v19 >> 3;
          if ((v19 & 0x1FF8) != 0)
          {
            v21 = ((v19 >> 3) >> 10) + 1;
          }

          else
          {
            v21 = (v19 >> 3) >> 10;
          }

          if (v21)
          {
            v22 = 0;
            do
            {
              v23 = v22 + 1024;
              if (v20 >= v22 + 1024)
              {
                v24 = v22 + 1024;
              }

              else
              {
                v24 = v20;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v91, v17, v22, v24);
              v22 = v23;
              --v21;
            }

            while (v21);
          }

          ++v17;
        }

        while (v17 != v18);
        v97.__ptr_ = 0;
        v98.__m_.__sig = 850045863;
        memset(v98.__m_.__opaque, 0, sizeof(v98.__m_.__opaque));
        if (v91[1] != v91[0])
        {
          v25 = 0;
          if (((v91[1] - v91[0]) >> 4) <= 1)
          {
            v26 = 1;
          }

          else
          {
            v26 = (v91[1] - v91[0]) >> 4;
          }

          do
          {
            FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v91, v25);
            Range = xgboost::common::BlockedSpace2d::GetRange(v91, v25);
            v31 = *(v89 + 160) + 20 * FirstDimension;
            if (*(v31 + 12) != -1 && *(v31 + 4) == -1)
            {
              v32 = Range;
              v33 = v29;
              v34 = *(v13 + 104);
              v96 = *(*(v87 + 448) + 24 * FirstDimension);
              v35 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v95, FirstDimension, v87, v96.i64, v96, v30);
              if (v32 < v33)
              {
                v36 = *(v34 + 24 * FirstDimension);
                v37 = v35 * *(v87 + 4);
                v38 = v36 + 8 * v33;
                v39 = (v36 + 8 * v32);
                do
                {
                  v40 = *v39 * v5;
                  if (v40 >= v6)
                  {
                    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                  }

                  *(v8 + 4 * v40) = v37 + *(v8 + 4 * v40);
                  ++v39;
                }

                while (v39 < v38);
              }
            }

            ++v25;
          }

          while (v25 != v26);
        }
      }

      else
      {
        v97.__ptr_ = 0;
        v98.__m_.__sig = 850045863;
        memset(v98.__m_.__opaque, 0, sizeof(v98.__m_.__opaque));
      }

      dmlc::OMPException::Rethrow(&v97);
      std::mutex::~mutex(&v98);
      std::exception_ptr::~exception_ptr(&v97);
      if (__p[1])
      {
        *&v93 = __p[1];
        operator delete(__p[1]);
      }

      if (v91[0])
      {
        v91[1] = v91[0];
        operator delete(v91[0]);
      }
    }
  }

  else
  {
    v41 = *a3;
    v42 = a3[2];
    v44 = a3[4];
    v43 = a3[5];
    v45 = *(a3 + 12);
    v88 = *(a1 + 232);
    std::string::basic_string[abi:ne200100]<0>(&v97, "UpdatePredictionCache");
    xgboost::common::Monitor::Start(v46, v47);
    if (v98.__m_.__opaque[7] < 0)
    {
      operator delete(v97.__ptr_);
    }

    v95[0] = v43;
    v48 = (*(*a2 + 24))(a2);
    if (v43 != *v48)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned long long>(v95, v48);
    }

    v90 = *(v88 + 928);
    v95[0] = v43;
    LODWORD(v91[0]) = 0;
    if (!v43)
    {
      dmlc::LogCheckFormat<unsigned long,unsigned int>(v95, v91);
    }

    if (!v90)
    {
      v82 = dmlc::LogMessageFatal::GetEntry(&v97);
      dmlc::LogMessageFatal::Entry::Init(v82, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 387);
      v83 = dmlc::LogMessageFatal::GetEntry(&v97);
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Check failed: p_last_tree", 25);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, ": ", 2);
      dmlc::LogMessageFatal::~LogMessageFatal(&v97);
    }

    xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((v88 + 304), v95);
    LODWORD(v91[0]) = v45;
    v96.i32[0] = -1;
    if (v45 != -1)
    {
      dmlc::LogCheckFormat<int,int>(v91, &v96);
    }

    v94 = 0xCCCCCCCCCCCCCCCDLL * ((*(v90 + 168) - *(v90 + 160)) >> 2);
    v49 = *(v88 + 904);
    for (j = *(v88 + 912); v49 != j; v49 += 136)
    {
      v91[0] = (0xAAAAAAAAAAAAAAABLL * ((*(v49 + 112) - *(v49 + 104)) >> 3));
      if (v91[0] != v94)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(v91, &v94);
      }

      v50 = *(v49 + 104);
      v51 = *(v49 + 112);
      *v91 = 0u;
      *__p = 0u;
      v93 = 0u;
      v52 = v51 - v50;
      if (v52)
      {
        v53 = 0;
        v54 = 0xAAAAAAAAAAAAAAABLL * (v52 >> 3);
        do
        {
          v55 = *(*(v49 + 104) + 24 * v53 + 8) - *(*(v49 + 104) + 24 * v53);
          v56 = v55 >> 3;
          if ((v55 & 0x1FF8) != 0)
          {
            v57 = ((v55 >> 3) >> 10) + 1;
          }

          else
          {
            v57 = (v55 >> 3) >> 10;
          }

          if (v57)
          {
            v58 = 0;
            do
            {
              v59 = v58 + 1024;
              if (v56 >= v58 + 1024)
              {
                v60 = v58 + 1024;
              }

              else
              {
                v60 = v56;
              }

              xgboost::common::BlockedSpace2d::AddBlock(v91, v53, v58, v60);
              v58 = v59;
              --v57;
            }

            while (v57);
          }

          ++v53;
        }

        while (v53 != v54);
        v97.__ptr_ = 0;
        v98.__m_.__sig = 850045863;
        memset(v98.__m_.__opaque, 0, sizeof(v98.__m_.__opaque));
        if (v91[1] != v91[0])
        {
          v61 = 0;
          if (((v91[1] - v91[0]) >> 4) <= 1)
          {
            v62 = 1;
          }

          else
          {
            v62 = (v91[1] - v91[0]) >> 4;
          }

          do
          {
            v63 = xgboost::common::BlockedSpace2d::GetFirstDimension(v91, v61);
            v64 = xgboost::common::BlockedSpace2d::GetRange(v91, v61);
            v67 = *(v90 + 160) + 20 * v63;
            if (*(v67 + 12) != -1 && *(v67 + 4) == -1)
            {
              v68 = v64;
              v69 = v65;
              v70 = *(v49 + 104);
              v96 = *(*(v88 + 448) + 24 * v63);
              v71 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v95, v63, v88, v96.i64, v96, v66);
              if (v68 < v69)
              {
                v72 = *(v70 + 24 * v63);
                v73 = v71 * *(v88 + 4);
                v74 = v72 + 8 * v69;
                v75 = (v72 + 8 * v68);
                do
                {
                  v76 = *v75 * v41;
                  if (v76 >= v42)
                  {
                    __assert_rtn("operator()", "linalg.h", 412, "offset < data_.size() && Out of bound access.");
                  }

                  *(v44 + 4 * v76) = v73 + *(v44 + 4 * v76);
                  ++v75;
                }

                while (v75 < v74);
              }
            }

            ++v61;
          }

          while (v61 != v62);
        }
      }

      else
      {
        v97.__ptr_ = 0;
        v98.__m_.__sig = 850045863;
        memset(v98.__m_.__opaque, 0, sizeof(v98.__m_.__opaque));
      }

      dmlc::OMPException::Rethrow(&v97);
      std::mutex::~mutex(&v98);
      std::exception_ptr::~exception_ptr(&v97);
      if (__p[1])
      {
        *&v93 = __p[1];
        operator delete(__p[1]);
      }

      if (v91[0])
      {
        v91[1] = v91[0];
        operator delete(v91[0]);
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v97, "UpdatePredictionCache");
  xgboost::common::Monitor::Stop(v77, v78);
  if (v98.__m_.__opaque[7] < 0)
  {
    operator delete(v97.__ptr_);
  }

  return 1;
}

void sub_274D99FC0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FCC()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FDC()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D99FE8()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 160));
  std::exception_ptr::~exception_ptr((v0 - 168));
  xgboost::common::Index::~Index(&v1);
  JUMPOUT(0x274D9A154);
}

void sub_274D9A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  v9 = *(v8 - 168);
  *(v8 - 168) = 0;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8 - 168, v9);
  }

  JUMPOUT(0x274D9A154);
}

void sub_274D9A0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274D9A104);
}

void sub_274D9A11C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_274D9A12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    JUMPOUT(0x274D9A150);
  }

  _Unwind_Resume(a1);
}

void *_ZNSt3__120__shared_ptr_emplaceIN7xgboost6common13ColumnSamplerENS_9allocatorIS3_EEEC2B8ne200100IJES5_Li0EEES5_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2883E4848;
  xgboost::common::ColumnSampler::ColumnSampler((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<xgboost::common::ColumnSampler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883E4848;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

void std::__shared_ptr_emplace<xgboost::common::ColumnSampler>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>>>::destroy(a1 + 40, *(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::unique_ptr<xgboost::tree::GloablApproxBuilder<double>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    xgboost::tree::GloablApproxBuilder<double>::~GloablApproxBuilder(result);
  }

  return result;
}

void std::vector<xgboost::tree::ApproxRowPartitioner>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 136;
        std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 48);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }
}

uint64_t xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(uint64_t a1)
{
  v5 = (a1 + 48);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t xgboost::tree::HistogramBuilder<double,xgboost::tree::CPUExpandEntry>::~HistogramBuilder(uint64_t a1)
{
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 296, *(a1 + 304));
  v2 = *(a1 + 272);
  if (v2)
  {
    *(a1 + 280) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    *(a1 + 232) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    *(a1 + 208) = v5;
    operator delete(v5);
  }

  v9 = (a1 + 176);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v6 = *(a1 + 104);
  if (v6)
  {
    *(a1 + 112) = v6;
    operator delete(v6);
  }

  v9 = (a1 + 80);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  v7 = *(a1 + 40);
  if (v7)
  {
    *(a1 + 48) = v7;
    operator delete(v7);
  }

  v9 = (a1 + 16);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v9);
  return a1;
}

uint64_t xgboost::common::HistCollection<double>::~HistCollection(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 16);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t xgboost::common::ParallelGHistBuilder<double>::~ParallelGHistBuilder(uint64_t a1)
{
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 160, *(a1 + 168));
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 40);
  std::vector<std::vector<unsigned long>>::__destroy_vector::operator()[abi:ne200100](&v7);
  return a1;
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::~HistEvaluator(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  v3 = (a1 + 240);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 216);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 192);
  std::vector<std::unordered_set<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  xgboost::HostDeviceVector<int>::~HostDeviceVector();
}

void xgboost::FromJson<xgboost::tree::CPUHistMakerTrainParam>(_DWORD **a1@<X0>, xgboost::tree::CPUHistMakerTrainParam *a2@<X1>, void *a3@<X8>)
{
  v5 = xgboost::Cast<xgboost::JsonObject const,xgboost::Value const>(*a1);
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v6 = v5[2];
  v7 = (v5 + 3);
  if (v6 != v5 + 3)
  {
    do
    {
      v8 = xgboost::Cast<xgboost::JsonString const,xgboost::Value const>(v6[7]);
      v16 = v6 + 4;
      v9 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v13, v6 + 4, &std::piecewise_construct, &v16, &v15);
      std::string::operator=((v9 + 7), (v8 + 16));
      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != v7);
  }

  xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(a2, &v13, a3);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, v14[0]);
}

void xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::CPUHistMakerTrainParam *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(this, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, this, *a2, (a2 + 8), a3, 0);
    *this = 1;
  }
}

void sub_274D9AA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::map<std::string,std::string>>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::RunUpdate<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>>(v6, a1, *a2, (a2 + 8), 0, a3, 0);
}

void sub_274D9AA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::ToJson<xgboost::tree::CPUHistMakerTrainParam>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0x300000000;
  *a2 = &unk_2883E6E50;
  *(a2 + 24) = 0;
  *(a2 + 16) = a2 + 24;
  *(a2 + 32) = 0;
  v3 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  dmlc::parameter::ParamManager::GetDict(v6, v3);
  std::map<std::string,std::string>::map[abi:ne200100]<std::__wrap_iter<std::pair<std::string,std::string> *>>(&v7, v6[0], v6[1]);
  v10 = v6;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v4 = v7;
  if (v7 != &v8)
  {
    xgboost::JsonString::JsonString(v6, (v7 + 7));
    v10 = (v4 + 4);
    v5 = std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a2 + 16), v4 + 4, &std::piecewise_construct, &v10, &v9);
    xgboost::Json::operator=(v5 + 7, v6);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v8);
}

void sub_274D9AC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  a21 = &a9;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a21);
  *v21 = v22;
  std::__tree<std::__value_type<std::string,xgboost::Json>,std::__map_value_compare<std::string,std::__value_type<std::string,xgboost::Json>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xgboost::Json>>>::destroy(v23, *(v21 + 24));
  _Unwind_Resume(a1);
}

void xgboost::XGBoostParameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(uint64_t *__return_ptr a1@<X8>, xgboost::tree::CPUHistMakerTrainParam *this@<X0>, uint64_t *a3@<X1>)
{
  if (*this == 1)
  {

    dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>(this, a3, a1);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(this);
    dmlc::parameter::ParamManager::RunInit<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, this, *a3, a3[1], a1, 0);
    *this = 1;
  }
}

void sub_274D9AD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *dmlc::Parameter<xgboost::tree::CPUHistMakerTrainParam>::UpdateAllowUnknown<std::vector<std::pair<std::string,std::string>>>@<X0>(xgboost::tree::CPUHistMakerTrainParam *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = xgboost::tree::CPUHistMakerTrainParam::__MANAGER__(a1);
  return dmlc::parameter::ParamManager::RunUpdate<std::__wrap_iter<std::pair<std::string,std::string> const*>>(v6, a1, *a2, a2[1], 0, a3, 0);
}

void sub_274D9AD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::HistEvaluator(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = *a2;
  v9 = *(a2 + 20);
  v10 = *(a2 + 36);
  v11 = *(a2 + 52);
  v12 = *(a2 + 62);
  v13 = *(a2 + 4);
  *(a1 + 80) = 0;
  v14 = (a1 + 80);
  *(a1 + 4) = v13;
  *(a1 + 62) = v12;
  *(a1 + 52) = v11;
  *(a1 + 36) = v10;
  *(a1 + 20) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v15 = *(a2 + 104);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 120);
    *&v14[1].__r_.__value_.__l.__data_ = v15;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  xgboost::tree::TreeEvaluator::TreeEvaluator((a1 + 152), a2, *(a3 + 8), -1);
}

void sub_274D9AF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 88) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t rabit::ReducerAlignImpl<xgboost::detail::GradientPairInternal<float>,&xgboost::detail::GradientPairInternal<float>::Reduce>(float32x2_t *a1, float32x2_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = vadd_f32(v4, *a2);
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void xgboost::tree::HistEvaluator<double,xgboost::tree::CPUExpandEntry>::HistEvaluator(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *a1 = *a2;
  v9 = *(a2 + 20);
  v10 = *(a2 + 36);
  v11 = *(a2 + 52);
  v12 = *(a2 + 62);
  v13 = *(a2 + 4);
  *(a1 + 80) = 0;
  v14 = (a1 + 80);
  *(a1 + 4) = v13;
  *(a1 + 62) = v12;
  *(a1 + 52) = v11;
  *(a1 + 36) = v10;
  *(a1 + 20) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 80), *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external(v14 + 1, *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v15 = *(a2 + 104);
    v14[1].__r_.__value_.__r.__words[2] = *(a2 + 120);
    *&v14[1].__r_.__value_.__l.__data_ = v15;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  xgboost::tree::TreeEvaluator::TreeEvaluator((a1 + 152), a2, *(a3 + 8), -1);
}

void sub_274D9B148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *v12;
  if (*v12)
  {
    *(v11 + 88) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

float64x2_t rabit::ReducerSafeImpl<xgboost::detail::GradientPairInternal<double>,&xgboost::detail::GradientPairInternal<double>::Reduce>(float64x2_t *a1, float64x2_t *a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      v4 = *a1++;
      result = vaddq_f64(*a2, v4);
      *a2++ = result;
      --v3;
    }

    while (v3);
  }

  return result;
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__append(result, a2 - v2);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Push(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100]((a1 + 8), a2);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v6, a1 + 32);
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v3, v4, v6, 0x2E8BA2E8BA2E8BA3 * ((v4 - v3) >> 3));
  return std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v6);
}

void sub_274D9B408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Pop(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3 == *(a1 + 16))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    if (*a1 == 1)
    {
      v5 = *(v3 + 4);
      v6 = v3[1];
      v29 = *v3;
      v30 = v6;
      v31 = v5;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v32, v3[3], v3[4], (v3[4] - v3[3]) >> 2);
      v7 = *(v3 + 3);
      v8 = *(v3 + 4);
      v37 = v3[10];
      v36 = v8;
      v35 = v7;
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v38, a1 + 32);
      std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v9, v10, v38, 0x2E8BA2E8BA2E8BA3 * ((v10 - v9) >> 3));
      std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v38);
      v11 = *(a1 + 16);
      v12 = *(v11 - 64);
      if (v12)
      {
        *(v11 - 56) = v12;
        operator delete(v12);
      }

      *(a1 + 16) = v11 - 88;
      v38[0] = v29;
      v38[1] = v30;
      v39 = v31;
      v41 = 0;
      v42 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v32, v33, (v33 - v32) >> 2);
      v43 = v35;
      v44 = v36;
      v45 = v37;
      a2[1] = 0;
      a2[2] = 0;
      *a2 = 0;
      std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(a2, v38, &v46, 1uLL);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v13 = *(v3 + 4);
      v14 = v3[1];
      v29 = *v3;
      v30 = v14;
      v31 = v13;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v32, v3[3], v3[4], (v3[4] - v3[3]) >> 2);
      v15 = *(v3 + 3);
      v16 = *(v3 + 4);
      v37 = v3[10];
      v36 = v16;
      v35 = v15;
      v17 = HIDWORD(v29);
      do
      {
        v18 = *(a1 + 16);
        v19 = *(a1 + 8);
        if (v19 == v18)
        {
          break;
        }

        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v38, a1 + 32);
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v19, v18, v38, 0x2E8BA2E8BA2E8BA3 * ((v18 - v19) >> 3));
        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v38);
        v20 = *(a1 + 16);
        v21 = *(v20 - 64);
        if (v21)
        {
          *(v20 - 56) = v21;
          operator delete(v21);
        }

        *(a1 + 16) = v20 - 88;
        v22 = a2[1];
        if (v22 >= a2[2])
        {
          v23 = std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry&>(a2, &v29);
        }

        else
        {
          std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry&>(a2, &v29);
          v23 = v22 + 88;
        }

        a2[1] = v23;
        v24 = *(a1 + 8);
        if (v24 != *(a1 + 16))
        {
          v25 = v24[1];
          v29 = *v24;
          v26 = *(v24 + 4);
          v30 = v25;
          v31 = v26;
          if (&v29 != v24)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v32, v24[3], v24[4], (v24[4] - v24[3]) >> 2);
          }

          v27 = *(v24 + 3);
          v28 = *(v24 + 4);
          v37 = v24[10];
          v35 = v27;
          v36 = v28;
        }
      }

      while (HIDWORD(v29) == v17);
    }

    if (v32)
    {
      v33 = v32;
      operator delete(v32);
    }
  }
}

void sub_274D9B730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL xgboost::tree::CPUExpandEntry::IsValid(xgboost::tree::CPUExpandEntry *this, const xgboost::tree::TrainParam *a2, int a3)
{
  v3 = *(this + 2);
  if (v3 <= 0.000001 || *(this + 8) == 0.0)
  {
    return 0;
  }

  if (*(this + 10) == 0.0 || v3 < *(a2 + 2))
  {
    return 0;
  }

  v5 = *(a2 + 3);
  if (v5 >= 1 && *(this + 1) == v5)
  {
    return 0;
  }

  v7 = *(a2 + 4);
  return v7 < 1 || v7 != a3;
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::ApplyTreeSplit(uint64_t a1, int *a2, xgboost::RegTree *a3)
{
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v52);
  v6 = a2 + 14;
  v7 = *a2;
  v8 = a2 + 18;
  v9 = *(a2 + 18);
  v48 = vaddq_f64(*(a2 + 14), v9);
  *&v51.__begin_ = v48;
  v10 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v7, a1, &v51, v48, v9);
  v11 = *a2;
  *&v51.__begin_ = *(a2 + 14);
  v13 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v11, a1, &v51, *&v51.__begin_, v12);
  v14 = *a2;
  *&v51.__begin_ = *(a2 + 18);
  v17 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v14, a1, &v51, *&v51.__begin_, v15);
  if (*(a2 + 48) == 1)
  {
    memset(&v51, 0, sizeof(v51));
    v18 = *(a2 + 3);
    v19 = *(a2 + 4);
    if (v18 == v19)
    {
      v25 = *(a2 + 4);
      if (v25 < 0.0 || v25 >= 16777000.0)
      {
        xgboost::common::InvalidCategory(v16);
        v25 = *(a2 + 4);
      }

      v26 = v25;
      __x = 0;
      std::vector<unsigned int>::resize(&v51, vcvtpd_u64_f64(vcvtd_n_f64_u32((v26 & ~(v26 >> 31)) + 1, 5uLL)), &__x);
      begin = v51.__begin_;
      end = v51.__end_;
      v27 = v26 >> 5;
      if (v27 >= v51.__end_ - v51.__begin_)
      {
        std::terminate();
      }

      v51.__begin_[v27] |= 1 << ~v26;
    }

    else if (&v51 == (a2 + 6))
    {
      begin = 0;
      end = 0;
    }

    else
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v51, v18, v19, (v19 - v18) >> 2);
      begin = v51.__begin_;
      end = v51.__end_;
    }

    v28 = *a2;
    v29 = a2[3];
    v49[0] = end - begin;
    v49[1] = begin;
    v30 = *&v48.i64[1];
    v31 = *(a2 + 8);
    v32 = *(a2 + 10);
    xgboost::RegTree::ExpandCategorical(a3, v28, v29 & 0x7FFFFFFF, v49, v29 >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v30, v31, v32);
    if (v51.__begin_)
    {
      v51.__end_ = v51.__begin_;
      operator delete(v51.__begin_);
    }
  }

  else
  {
    v22 = *&v48.i64[1];
    v23 = *(a2 + 8);
    v24 = *(a2 + 10);
    xgboost::RegTree::ExpandNode(a3, *a2, a2[3] & 0x7FFFFFFF, *(a2 + 4), a2[3] >> 31, v10, v13 * *(a1 + 4), v17 * *(a1 + 4), *(a2 + 2), v22, v23, v24, -1);
  }

  v33 = (*(a3 + 20) + 20 * *a2);
  v34 = v33[1];
  v35 = v33[2];
  xgboost::tree::TreeEvaluator::AddSplit<false>(a1 + 152, *a2, v34, v35, v33[3] & 0x7FFFFFFF, v13, v17);
  std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize((a1 + 296), 0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 21) - *(a3 + 20)) >> 2));
  v37 = *(a1 + 296);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v37) >> 3) <= v34 || (*(v37 + 24 * v34) = *v6, v38 = *a2, *&v51.__begin_ = *v6, v39 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v38, a1, &v51, *&v51.__begin_, v36), v40 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v39), v42 = *(a1 + 296), v43 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v42) >> 3), v43 <= v34) || (*(v42 + 24 * v34 + 16) = v40, v43 <= v35) || (*(v42 + 24 * v35) = *v8, v44 = *a2, *&v51.__begin_ = *v8, v45 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v52, v44, a1, &v51, *&v51.__begin_, v41), v46 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v52, a1, &v51, v45), v47 = *(a1 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 304) - v47) >> 3) <= v35))
  {
    std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v47 + 24 * v35 + 16) = v46;
  if (*(a1 + 292) == 1)
  {
    xgboost::FeatureInteractionConstraintHost::SplitImpl((a1 + 192), *a2, *(*(a3 + 20) + 20 * *a2 + 12) & 0x7FFFFFFF, v34, v35);
  }
}

void sub_274D9BC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry const&>(a1, a2);
  }

  else
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry const&>(a1, a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

uint64_t xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator!=(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 442);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 32))(v2) ^ 1;
}

uint64_t xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator*(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 437);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  return (*(*v2 + 16))(v2);
}

void xgboost::tree::ApproxRowPartitioner::UpdatePosition(const void **a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v130 = *MEMORY[0x277D85DE8];
  v7 = *a3;
  v6 = a3[1];
  v101 = *(a2 + 120);
  v98 = *(a2 + 128);
  *v108 = 0u;
  v109 = 0u;
  *v107 = 0u;
  v8 = v6 - v7;
  v9 = 0x2E8BA2E8BA2E8BA3 * (v8 >> 3);
  if (v8)
  {
    v10 = 0;
    do
    {
      v11 = *a3 + 88 * v10;
      v123.__ptr_ = *v11;
      v12 = *(v11 + 8);
      LODWORD(v125) = *(v11 + 16);
      v124 = v12;
      v126 = 0uLL;
      *(&v125 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v125 + 1, *(v11 + 24), *(v11 + 32), (*(v11 + 32) - *(v11 + 24)) >> 2);
      v13 = *(v11 + 48);
      v14 = *(v11 + 64);
      v129 = *(v11 + 80);
      v127 = v13;
      v128 = v14;
      v15 = (a1[13] + 24 * LODWORD(v123.__ptr_));
      v17 = *v15;
      v16 = v15[1];
      if (*(&v125 + 1))
      {
        *&v126 = *(&v125 + 1);
        operator delete(*(&v125 + 1));
      }

      v18 = v16 - v17;
      v19 = (v16 - v17) >> 3;
      if ((v18 & 0x3FF8) != 0)
      {
        v20 = (v19 >> 11) + 1;
      }

      else
      {
        v20 = v19 >> 11;
      }

      if (v20)
      {
        v21 = 0;
        do
        {
          v22 = v21 + 2048;
          if (v19 >= v21 + 2048)
          {
            v23 = v21 + 2048;
          }

          else
          {
            v23 = v19;
          }

          xgboost::common::BlockedSpace2d::AddBlock(v107, v10, v21, v23);
          v21 = v22;
          --v20;
        }

        while (v20);
      }

      ++v10;
    }

    while (v10 != v9);
    v24 = (v107[1] - v107[0]) >> 4;
  }

  else
  {
    v24 = 0;
  }

  std::vector<std::pair<double,double>>::resize(a1, v9);
  std::vector<unsigned long>::resize(a1 + 3, v9 + 1);
  v102 = v24;
  *a1[3] = 0;
  v97 = a1;
  if (v9 + 1 >= 2)
  {
    v25 = 0;
    v26 = 0;
    v27 = 8;
    do
    {
      v28 = *a3 + v25;
      v123.__ptr_ = *v28;
      v29 = *(v28 + 8);
      LODWORD(v125) = *(v28 + 16);
      v124 = v29;
      v126 = 0uLL;
      *(&v125 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v125 + 1, *(v28 + 24), *(v28 + 32), (*(v28 + 32) - *(v28 + 24)) >> 2);
      v30 = *(v28 + 48);
      v31 = *(v28 + 64);
      v129 = *(v28 + 80);
      v127 = v30;
      v128 = v31;
      v32 = (v97[13] + 24 * LODWORD(v123.__ptr_));
      v33 = *v32;
      v34 = v32[1];
      if (*(&v125 + 1))
      {
        *&v126 = *(&v125 + 1);
        operator delete(*(&v125 + 1));
      }

      v35 = (v34 - v33) >> 3;
      if (((v34 - v33) & 0x3FF8) != 0)
      {
        v26 += (v35 >> 11) + 1;
      }

      else
      {
        v26 += v35 >> 11;
      }

      a1 = v97;
      *(v97[3] + v27) = v26;
      v27 += 8;
      v25 += 88;
      --v9;
    }

    while (v9);
  }

  if (a1[9] < v102)
  {
    std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(a1 + 6, v102);
    a1[9] = v102;
  }

  v36 = a4[32];
  v37 = a4[36];
  v103 = a4[35];
  v106[0] = (a4[33] - v36) >> 2;
  v106[1] = v36;
  v123.__ptr_ = 0;
  v124 = 850045863;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  *&v128 = 0;
  v38 = v107[1] - v107[0];
  if (v107[1] != v107[0])
  {
    v39 = 0;
    v100 = (v37 - v103) >> 4;
    v40 = v38 >> 4;
    if ((v38 >> 4) <= 1)
    {
      v40 = 1;
    }

    v94 = v40;
    while (1)
    {
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(v107, v39);
      Range = xgboost::common::BlockedSpace2d::GetRange(v107, v39);
      v44 = v43;
      v45 = *a3 + 88 * FirstDimension;
      v110 = *v45;
      v46 = *(v45 + 8);
      v112 = *(v45 + 16);
      v111 = v46;
      v114 = 0;
      v115 = 0;
      __p = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(v45 + 24), *(v45 + 32), (*(v45 + 32) - *(v45 + 24)) >> 2);
      v47 = *(v45 + 48);
      v48 = *(v45 + 64);
      v118 = *(v45 + 80);
      v116 = v47;
      v117 = v48;
      v49 = v47;
      v50 = v110;
      v51 = HIDWORD(v111);
      xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(a1, *(a1[3] + FirstDimension) + (Range >> 11));
      v52 = Range >> 11;
      v53 = a1[3];
      v54 = v53[FirstDimension] + (Range >> 11);
      v55 = a1[6];
      v56 = (a1[7] - v55) >> 4;
      if (v56 <= v54)
      {
LABEL_82:
        std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__throw_out_of_range[abi:ne200100]();
      }

      v57 = FirstDimension;
      if (v44 != Range)
      {
        break;
      }

      v58 = 0;
      v59 = 0;
LABEL_59:
      if (v56 <= v54)
      {
        goto LABEL_82;
      }

      **&v55[16 * v54] = v59;
      v76 = v53[v57] + v52;
      if (v56 <= v76)
      {
        goto LABEL_82;
      }

      *(*&v55[16 * v76] + 8) = v58;
      if (__p)
      {
        v114 = __p;
        operator delete(__p);
      }

      ++v39;
      a1 = v97;
      if (v39 == v94)
      {
        goto LABEL_64;
      }
    }

    v91 = FirstDimension;
    v92 = Range >> 11;
    v93 = v39;
    v59 = 0;
    v58 = 0;
    v60 = v51 & 0x7FFFFFFF;
    v61 = (*(v97[13] + 3 * v50) + 8 * Range);
    v62 = v44 - Range;
    v63 = *&v55[16 * v54];
    v64 = v63 + 32;
    v65 = v63 + 16416;
    v99 = (v51 & 0x7FFFFFFF) + 1;
    while (1)
    {
      v67 = *v61++;
      v66 = v67;
      if (*(a2 + 192) == 1)
      {
        v68 = xgboost::common::Index::operator[]((a2 + 24), *(*a2 + 8 * (v66 - *(a2 + 152))) + v60);
      }

      else
      {
        v69 = (*a2 + 8 * (v66 - *(a2 + 152)));
        v68 = xgboost::common::BinarySearchBin<xgboost::common::Index>(*v69, v69[1], (a2 + 24), *(*v98 + 4 * v60), *(*v98 + 4 * v99));
      }

      if (v68 != -1)
      {
        v70 = *(*v101 + 4 * v68);
        if (v100 <= v110)
        {
          goto LABEL_81;
        }

        xgboost::common::Span<float,18446744073709551615ul>::subspan(v106, *(v103 + 16 * v110), *(v103 + 16 * v110 + 8), v119);
        if (!v49)
        {
          v74 = v70 <= v112;
          goto LABEL_55;
        }

        if (v70 >= 0.0 && v70 < 16777000.0 && v70 < (32 * v119[0]))
        {
          if (v119[0] <= v70 >> 5)
          {
            v74 = 1;
          }

          else
          {
            v73 = v70 >> 5;
            if (v73 >= v119[0])
            {
LABEL_81:
              std::terminate();
            }

            v74 = ((*(v119[1] + 4 * v73) >> ~v70) & 1) == 0;
          }

          goto LABEL_55;
        }
      }

      v74 = HIDWORD(v111) >> 31;
LABEL_55:
      v75 = (v65 + 8 * v58);
      if (v74)
      {
        v75 = (v64 + 8 * v59);
      }

      *v75 = v66;
      v59 += v74;
      v58 += v74 ^ 1;
      if (!--v62)
      {
        v53 = v97[3];
        v55 = v97[6];
        v56 = (v97[7] - v55) >> 4;
        v57 = v91;
        v52 = v92;
        v54 = v53[v91] + v92;
        v39 = v93;
        goto LABEL_59;
      }
    }
  }

LABEL_64:
  dmlc::OMPException::Rethrow(&v123);
  std::mutex::~mutex(&v124);
  std::exception_ptr::~exception_ptr(&v123);
  xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(a1);
  v121.__ptr_ = 0;
  v122.__m_.__sig = 850045863;
  memset(v122.__m_.__opaque, 0, sizeof(v122.__m_.__opaque));
  if (v107[1] != v107[0])
  {
    v77 = 0;
    if (((v107[1] - v107[0]) >> 4) <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = (v107[1] - v107[0]) >> 4;
    }

    do
    {
      v79 = xgboost::common::BlockedSpace2d::GetFirstDimension(v107, v77);
      v80 = xgboost::common::BlockedSpace2d::GetRange(v107, v77);
      v81 = *a3 + 88 * v79;
      v123.__ptr_ = *v81;
      v82 = *(v81 + 8);
      LODWORD(v125) = *(v81 + 16);
      v124 = v82;
      v126 = 0uLL;
      *(&v125 + 1) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v125 + 1, *(v81 + 24), *(v81 + 32), (*(v81 + 32) - *(v81 + 24)) >> 2);
      v83 = *(v81 + 48);
      v84 = *(v81 + 64);
      v129 = *(v81 + 80);
      v127 = v83;
      v128 = v84;
      xgboost::common::PartitionBuilder<2048ul>::MergeToArray(a1, v79, v80, *(a1[13] + 3 * LODWORD(v123.__ptr_)));
      if (*(&v125 + 1))
      {
        *&v126 = *(&v125 + 1);
        operator delete(*(&v125 + 1));
      }

      ++v77;
    }

    while (v78 != v77);
  }

  dmlc::OMPException::Rethrow(&v121);
  std::mutex::~mutex(&v122);
  std::exception_ptr::~exception_ptr(&v121);
  v85 = *a3;
  if (a3[1] != *a3)
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    do
    {
      v89 = *(v85 + v86);
      v104 = *(*v97 + (v87 >> 28));
      v120 = vaddvq_s64(v104);
      v105 = (*(v97[13] + 3 * v89 + 1) - *(v97[13] + 3 * v89)) >> 3;
      if (v120 != v105)
      {
        dmlc::LogCheckFormat<unsigned long,unsigned long>(&v120, &v105);
      }

      v90 = a4[20] + 20 * v89;
      xgboost::common::RowSetCollection::AddSplit((v97 + 10), v89, *(v90 + 4), *(v90 + 8), v104.i64[0], v104.i64[1]);
      ++v88;
      v85 = *a3;
      v87 += 0x100000000;
      v86 += 88;
    }

    while (v88 < 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3));
  }

  if (v108[1])
  {
    *&v109 = v108[1];
    operator delete(v108[1]);
  }

  if (v107[0])
  {
    v107[1] = v107[0];
    operator delete(v107[0]);
  }
}

void sub_274D9C8D4()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 200));
  std::exception_ptr::~exception_ptr((v0 - 208));
  JUMPOUT(0x274D9C74CLL);
}

void sub_274D9C8E0()
{
  __cxa_end_catch();
  std::mutex::~mutex((v0 - 200));
  std::exception_ptr::~exception_ptr((v0 - 208));
  JUMPOUT(0x274D9C74CLL);
}

uint64_t *xgboost::BatchIterator<xgboost::GHistIndexMatrix>::operator++(uint64_t *a1)
{
  v2 = *a1;
  if (!v2)
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v7);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/xgboost/data.h", 431);
    v5 = dmlc::LogMessageFatal::GetEntry(&v7);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Check failed: impl_ != nullptr", 30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v7);
    v2 = *a1;
  }

  (*(*v2 + 24))(v2);
  return a1;
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::vector[abi:ne200100](v67, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3));
  v9 = a6[1];
  if (v9 == *a6)
  {
    v18 = a6[1];
  }

  else
  {
    v10 = 0;
    v9 = *a6;
    do
    {
      v11 = *(v9 + 88 * v10);
      v12 = *(a5 + 160);
      v13 = *(v12 + 20 * v11);
      if (v13 == -1)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          ++v14;
          v13 = *(v12 + 20 * (v13 & 0x7FFFFFFF));
        }

        while (v13 != -1);
      }

      xgboost::common::ColumnSampler::GetFeatureSet(&v55, *(a1 + 136), v14);
      v15 = v67[0] + 16 * v10;
      v16 = v55;
      v55 = 0uLL;
      v17 = *(v15 + 8);
      *v15 = v16;
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (*(&v55 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
      }

      ++v10;
      v9 = *a6;
      v18 = a6[1];
    }

    while (v10 < 0x2E8BA2E8BA2E8BA3 * ((v18 - *a6) >> 3));
  }

  v19 = v67[0];
  if (v67[0] == v67[1])
  {
    Entry = dmlc::LogMessageFatal::GetEntry(&v55);
    dmlc::LogMessageFatal::Entry::Init(Entry, "/Library/Caches/com.apple.xbs/Sources/CoreML/xgboost/src/tree/hist/evaluate_splits.h", 214);
    v50 = dmlc::LogMessageFatal::GetEntry(&v55);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Check failed: !features.empty()", 31);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ": ", 2);
    dmlc::LogMessageFatal::~LogMessageFatal(&v55);
    v19 = v67[0];
    v9 = *a6;
    v18 = a6[1];
  }

  v20 = ((*(**v19 + 8) - ***v19) >> 2) / *(a1 + 184);
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(v64, 0x2E8BA2E8BA2E8BA3 * ((v18 - v9) >> 3), v67, v21);
  std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](v63, 0x2E8BA2E8BA2E8BA3 * ((a6[1] - *a6) >> 3) * *(a1 + 184));
  v23 = *a6;
  v22 = a6[1];
  if (v22 != *a6)
  {
    v24 = 0;
    v25 = 0;
    LODWORD(v26) = *(a1 + 184);
    do
    {
      if (v26 >= 1)
      {
        v27 = 0;
        v28 = 0;
        do
        {
          v29 = *a6 + 88 * v25;
          v30 = v63[0] + v24 * v26 + v27;
          *v30 = *v29;
          v31 = *(v29 + 8);
          *(v30 + 16) = *(v29 + 16);
          *(v30 + 8) = v31;
          if (v30 != v29)
          {
            std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v30 + 24), *(v29 + 24), *(v29 + 32), (*(v29 + 32) - *(v29 + 24)) >> 2);
          }

          v32 = *(v29 + 48);
          v33 = *(v29 + 64);
          *(v30 + 80) = *(v29 + 80);
          *(v30 + 48) = v32;
          *(v30 + 64) = v33;
          ++v28;
          v26 = *(a1 + 184);
          v27 += 88;
        }

        while (v28 < v26);
        v23 = *a6;
        v22 = a6[1];
      }

      ++v25;
      v24 += 88;
    }

    while (v25 < 0x2E8BA2E8BA2E8BA3 * ((v22 - v23) >> 3));
  }

  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v62);
  v34 = *(a3 + 16);
  v35 = *(a1 + 184);
  *&v55 = v63;
  *(&v55 + 1) = a1;
  v56 = a2;
  v57 = v67;
  v58 = a4;
  v59 = v34;
  v60 = a3;
  v61 = v62;
  xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v64, v35, &v55);
  v37 = *a6;
  v36 = a6[1];
  if (v36 == *a6)
  {
    goto LABEL_44;
  }

  v38 = 0;
  v39 = 0;
  v40 = *(a1 + 184);
  do
  {
    if (v40 < 1)
    {
      goto LABEL_43;
    }

    for (i = 0; i < v40; ++i)
    {
      v42 = v63[0] + 88 * (i + v39 * v40);
      v44 = *(v42 + 8);
      v43 = v42 + 8;
      v45 = v44;
      if (fabsf(v44) == INFINITY)
      {
        continue;
      }

      v46 = *a6 + 88 * v38 + 8;
      v47 = *(v43 + 4);
      v48 = *v46;
      if ((*(*a6 + 88 * v38 + 12) & 0x7FFFFFFFu) <= (v47 & 0x7FFFFFFFu))
      {
        if (v48 >= v45)
        {
          continue;
        }
      }

      else if (v48 > v45)
      {
        continue;
      }

      *v46 = v45;
      *(v46 + 4) = v47;
      *(v46 + 8) = *(v43 + 8);
      *(v46 + 40) = *(v43 + 40);
      if (v46 != v43)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>((v46 + 16), *(v43 + 16), *(v43 + 24), (*(v43 + 24) - *(v43 + 16)) >> 2);
      }

      *(v46 + 48) = *(v43 + 48);
      *(v46 + 64) = *(v43 + 64);
      v40 = *(a1 + 184);
    }

    v37 = *a6;
    v36 = a6[1];
LABEL_43:
    v38 = ++v39;
  }

  while (0x2E8BA2E8BA2E8BA3 * ((v36 - v37) >> 3) > v39);
LABEL_44:
  *&v55 = v63;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v55);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  *&v55 = v67;
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&v55);
}

void sub_274D9CE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  a21 = (v21 - 112);
  std::vector<std::shared_ptr<xgboost::DMatrix>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Push<std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      if (*(v4 + 8) > 0.000001)
      {
        std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100]((v5 + 8), v4);
        v6 = *(v5 + 8);
        v7 = *(v5 + 16);
        std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](v8, v5 + 32);
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(v6, v7, v8, 0x2E8BA2E8BA2E8BA3 * ((v7 - v6) >> 3));
        result = std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v8);
      }

      v4 += 88;
    }

    while (v4 != a3);
  }

  return result;
}

void sub_274D9CF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::~Driver(uint64_t a1)
{
  v2 = (a1 + 8);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](a1 + 32);
  v4 = v2;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::Reset(uint64_t a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, char a6)
{
  v9 = 1;
  v10 = a4;
  if (a4 < 1)
  {
    dmlc::LogCheckFormat<int,int>(&v10, &v9);
  }

  *(a1 + 392) = a4;
  *(a1 + 400) = a5;
  *(a1 + 352) = *a3;
  *(a1 + 360) = *(a3 + 8);
  *(a1 + 368) = *(a3 + 16);
  *(a1 + 376) = *(a3 + 24);
  if (*a1 != a2)
  {
    *a1 = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 16));
  }

  *(a1 + 48) = *(a1 + 40);
  *(a1 + 4) = 0;
  if (*(a1 + 64) != a2)
  {
    *(a1 + 64) = a2;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 80));
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 68) = 0;
  xgboost::common::ParallelGHistBuilder<float>::Init(a1 + 136, a2);
  *(a1 + 128) = a2;
  *(a1 + 408) = a6;
}

void sub_274D9D148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  v12 = a9;
  a9 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v12);
  }

  _Unwind_Resume(exception_object);
}

xgboost::tree::ApproxRowPartitioner *std::vector<xgboost::tree::ApproxRowPartitioner>::__emplace_back_slow_path<unsigned long,unsigned long const&>(xgboost::tree::ApproxRowPartitioner **a1, unint64_t *a2, unint64_t *a3)
{
  v3 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v4;
  }

  v21 = a1;
  if (v6)
  {
    if (v6 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = 0;
  v18 = 136 * v3;
  v19 = 136 * v3;
  v20 = 0;
  xgboost::tree::ApproxRowPartitioner::ApproxRowPartitioner((136 * v3), *a2, *a3);
  v7 = (136 * v3 + 136);
  v19 = v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = (136 * v3 + *a1 - v9);
  if (*a1 != v9)
  {
    v11 = (v18 + *a1 - v9);
    v12 = *a1;
    do
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      *v11 = *v12;
      v11[2] = *(v12 + 2);
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      v11[3] = 0;
      v11[4] = 0;
      v11[5] = 0;
      *(v11 + 3) = *(v12 + 24);
      v11[5] = *(v12 + 5);
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      v11[6] = 0;
      v11[7] = 0;
      v11[8] = 0;
      *(v11 + 3) = *(v12 + 3);
      v13 = *(v12 + 9);
      v11[8] = *(v12 + 8);
      *(v12 + 7) = 0;
      *(v12 + 8) = 0;
      *(v12 + 6) = 0;
      v11[11] = 0;
      v11[12] = 0;
      v11[9] = v13;
      v11[10] = 0;
      *(v11 + 5) = *(v12 + 5);
      v11[12] = *(v12 + 12);
      *(v12 + 10) = 0;
      *(v12 + 11) = 0;
      *(v12 + 12) = 0;
      v11[13] = 0;
      v11[14] = 0;
      v11[15] = 0;
      *(v11 + 13) = *(v12 + 104);
      v14 = *(v12 + 16);
      v11[15] = *(v12 + 15);
      *(v12 + 13) = 0;
      *(v12 + 14) = 0;
      *(v12 + 15) = 0;
      v11[16] = v14;
      v12 = (v12 + 136);
      v11 += 17;
    }

    while (v12 != v9);
    do
    {
      std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(v8);
      v8 += 136;
    }

    while (v8 != v9);
    v8 = *a1;
    v7 = v19;
  }

  *a1 = v10;
  a1[1] = v7;
  v15 = a1[2];
  a1[2] = v20;
  v19 = v8;
  v20 = v15;
  v17 = v8;
  v18 = v8;
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(&v17);
  return v7;
}

void sub_274D9D38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

xgboost::tree::ApproxRowPartitioner *xgboost::tree::ApproxRowPartitioner::ApproxRowPartitioner(xgboost::tree::ApproxRowPartitioner *this, unint64_t a2, uint64_t a3)
{
  *(this + 5) = 0u;
  v4 = (this + 80);
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 16) = a3;
  std::vector<unsigned long>::resize(this + 10, a2);
  v6 = *(this + 10);
  v5 = *(this + 11);
  if (v6 != v5)
  {
    v7 = 0;
    v8 = *(this + 16);
    v9 = (v5 - v6 - 8) >> 3;
    v10 = vdupq_n_s64(v9);
    v11 = (v6 + 8);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_274E1F3B0)));
      if (v12.i8[0])
      {
        *(v11 - 1) = v8 + v7;
      }

      if (v12.i8[4])
      {
        *v11 = v8 + v7 + 1;
      }

      v7 += 2;
      v11 += 2;
    }

    while (((v9 + 2) & 0x3FFFFFFFFFFFFFFELL) != v7);
  }

  xgboost::common::RowSetCollection::Init(v4);
  return this;
}

void sub_274D9D478(_Unwind_Exception *a1)
{
  xgboost::common::Index::~Index(v2);
  xgboost::common::PartitionBuilder<2048ul>::~PartitionBuilder(v1);
  _Unwind_Resume(a1);
}

void xgboost::common::RowSetCollection::Init(xgboost::common::RowSetCollection *this)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = (this + 24);
  v30 = 0;
  v5 = v3 - v2;
  v31 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  if (v5)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v31, &v30);
  }

  v7 = *this;
  v6 = *(this + 1);
  if (*this == v6)
  {
    v11 = *(this + 4);
    v12 = *(this + 5);
    if (v11 < v12)
    {
      v10 = v11 + 24;
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      goto LABEL_26;
    }

    v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v4) >> 3);
    v18 = v17 + 1;
    if (v17 + 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      v19 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *v4) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x555555555555555)
      {
        v20 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(v4, v20);
      }

      v26 = 24 * v17;
      v10 = 24 * v17 + 24;
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      v27 = *(this + 3);
      v28 = *(this + 4) - v27;
      v29 = v26 - v28;
      memcpy((v26 - v28), v27, v28);
      v25 = *(this + 3);
      *(this + 3) = v29;
      *(this + 4) = v10;
      *(this + 5) = 0;
      if (v25)
      {
        goto LABEL_25;
      }

      goto LABEL_26;
    }

LABEL_29:
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v9 < v8)
  {
    *v9 = v7;
    *(v9 + 8) = v6;
    v10 = v9 + 24;
    *(v9 + 16) = 0;
    goto LABEL_26;
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *v4) >> 3);
  v14 = v13 + 1;
  if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_29;
  }

  v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v4) >> 3);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0x555555555555555)
  {
    v16 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(v4, v16);
  }

  v21 = 24 * v13;
  *v21 = v7;
  *(v21 + 8) = v6;
  *(v21 + 16) = 0;
  v10 = 24 * v13 + 24;
  v22 = *(this + 3);
  v23 = *(this + 4) - v22;
  v24 = (24 * v13 - v23);
  memcpy(v24, v22, v23);
  v25 = *(this + 3);
  *(this + 3) = v24;
  *(this + 4) = v10;
  *(this + 5) = 0;
  if (v25)
  {
LABEL_25:
    operator delete(v25);
  }

LABEL_26:
  *(this + 4) = v10;
}

void sub_274D9D734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  v13 = a12;
  a12 = 0;
  if (v13)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a12, v13);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<xgboost::tree::ApproxRowPartitioner>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::allocator_traits<std::allocator<xgboost::tree::ApproxRowPartitioner>>::destroy[abi:ne200100]<xgboost::tree::ApproxRowPartitioner,0>(i - 136);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void xgboost::common::ParallelGHistBuilder<float>::Init(uint64_t a1, uint64_t a2)
{
  if (*a1 != a2)
  {
    if (*(a1 + 24) != a2)
    {
      *(a1 + 24) = a2;
      std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 40));
    }

    *(a1 + 72) = *(a1 + 64);
    *(a1 + 28) = 0;
    *a1 = a2;
  }
}

_DWORD *xgboost::tree::Driver<xgboost::tree::CPUExpandEntry>::Driver(_DWORD *a1, int a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v3 = a1 + 2;
  v4 = xgboost::tree::LossGuide<xgboost::tree::CPUExpandEntry>;
  if (!a2)
  {
    v4 = xgboost::tree::DepthWise<xgboost::tree::CPUExpandEntry>;
  }

  v6[0] = &unk_2883E4898;
  v6[1] = v4;
  v6[3] = v6;
  std::priority_queue<xgboost::tree::CPUExpandEntry,std::vector<xgboost::tree::CPUExpandEntry>,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>>::priority_queue[abi:ne200100](v3, v6);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](v6);
  return a1;
}

void sub_274D9D920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL xgboost::tree::LossGuide<xgboost::tree::CPUExpandEntry>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return *a1 > *a2;
  }

  else
  {
    return v2 < v3;
  }
}

uint64_t std::__function::__func<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&),std::allocator<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&)>,BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2883E4898;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&),std::allocator<BOOL (*)(xgboost::tree::CPUExpandEntry const&,xgboost::tree::CPUExpandEntry const&)>,BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::priority_queue<xgboost::tree::CPUExpandEntry,std::vector<xgboost::tree::CPUExpandEntry>,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>>::priority_queue[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100]((a1 + 3), a2);
  return a1;
}

void sub_274D9DAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>::~__value_func[abi:ne200100](uint64_t a1)
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

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = a1 + 88 * (v4 >> 1);
    v8 = *(v7 + 16);
    v9 = *(v7 + 8);
    v70[0] = *v7;
    v70[1] = v9;
    v71 = v8;
    v73 = 0;
    v74 = 0;
    v72 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v72, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
    v10 = *(v7 + 48);
    v11 = *(v7 + 64);
    v77 = *(v7 + 80);
    v75 = v10;
    v76 = v11;
    v12 = (a2 - 88);
    v62[0] = *(a2 - 88);
    v13 = *(a2 - 80);
    v63 = *(a2 - 72);
    v62[1] = v13;
    v65 = 0;
    v66 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a2 - 64), *(a2 - 56), (*(a2 - 56) - *(a2 - 64)) >> 2);
    v14 = *(a2 - 40);
    v15 = *(a2 - 24);
    v69 = *(a2 - 8);
    v67 = v14;
    v68 = v15;
    v16 = *(a3 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v17 = (*(*v16 + 48))(v16, v70, v62);
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    if (v17)
    {
      v19 = *(a2 - 88);
      v78 = *(a2 - 80);
      v79 = *(a2 - 72);
      v20 = *(a2 - 64);
      v21 = *(a2 - 56);
      *(a2 - 64) = 0;
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v22 = *(a2 - 40);
      v23 = *(a2 - 24);
      v61 = *(a2 - 8);
      v39 = v21;
      v24 = v21;
      v40 = v20;
      v25 = (v21 - v20) >> 2;
      v59 = v22;
      v60 = v23;
      do
      {
        v26 = v12;
        v12 = v7;
        *v26 = *v7;
        v28 = v7 + 8;
        v27 = *(v7 + 8);
        *(v26 + 4) = *(v7 + 16);
        v26[1] = v27;
        std::vector<float>::__move_assign((v26 + 3), (v7 + 24));
        v29 = *(v7 + 48);
        v30 = *(v7 + 64);
        v26[10] = *(v7 + 80);
        *(v26 + 3) = v29;
        *(v26 + 4) = v30;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = a1 + 88 * v6;
        v31 = *(v7 + 8);
        v51[0] = *v7;
        v32 = *(v7 + 16);
        v51[1] = v31;
        v52 = v32;
        v54 = 0;
        v55 = 0;
        v53 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v53, *(v7 + 24), *(v7 + 32), (*(v7 + 32) - *(v7 + 24)) >> 2);
        v33 = *(v7 + 48);
        v34 = *(v7 + 64);
        v58 = *(v7 + 80);
        v56 = v33;
        v57 = v34;
        v43[0] = v19;
        v43[1] = v78;
        v44 = v79;
        v46 = 0;
        v47 = 0;
        v45 = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v45, v40, v24, v25);
        v48 = v59;
        v49 = v60;
        v50 = v61;
        v35 = *(a3 + 24);
        if (!v35)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v36 = (*(*v35 + 48))(v35, v51, v43);
        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        if (v53)
        {
          v54 = v53;
          operator delete(v53);
        }
      }

      while ((v36 & 1) != 0);
      *v12 = v19;
      *v28 = v78;
      *(v28 + 8) = v79;
      v37 = v12[3];
      if (v37)
      {
        v12[4] = v37;
        operator delete(v37);
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = 0;
      }

      v12[3] = v40;
      *(v12 + 2) = v39;
      result = *&v59;
      v38 = v60;
      *(v28 + 40) = v59;
      *(v28 + 56) = v38;
      *(v28 + 72) = v61;
    }
  }

  return result;
}

void sub_274D9DF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  v48 = *(v46 - 184);
  if (v48)
  {
    *(v46 - 176) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::ConstructHistSpace<std::vector<xgboost::tree::ApproxRowPartitioner>>(xgboost::common::BlockedSpace2d *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3);
  v28[0] = 0;
  std::vector<unsigned long>::vector[abi:ne200100](v36, v6, v28);
  v8 = *a2;
  for (i = a2[1]; v8 != i; v8 += 136)
  {
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      v11 = 0;
      do
      {
        v12 = *(v9 + 8);
        v28[0] = *v9;
        v13 = *(v9 + 16);
        v28[1] = v12;
        v29 = v13;
        v31 = 0;
        v32 = 0;
        __p = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(v9 + 24), *(v9 + 32), (*(v9 + 32) - *(v9 + 24)) >> 2);
        v14 = *(v9 + 48);
        v15 = *(v9 + 64);
        v35 = *(v9 + 80);
        v33 = v14;
        v34 = v15;
        v16 = *(*(v8 + 104) + 24 * LODWORD(v28[0]) + 8) - *(*(v8 + 104) + 24 * LODWORD(v28[0]));
        if (*(v36[0] + v11) <= (v16 >> 3))
        {
          v17 = v16 >> 3;
        }

        else
        {
          v17 = *(v36[0] + v11);
        }

        *(v36[0] + v11) = v17;
        if (__p)
        {
          v31 = __p;
          operator delete(__p);
        }

        v9 += 88;
        v11 += 8;
      }

      while (v9 != v10);
    }
  }

  v19 = *a3;
  v18 = a3[1];
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  v20 = v18 - v19;
  if (v20)
  {
    v21 = 0;
    v22 = 0x2E8BA2E8BA2E8BA3 * (v20 >> 3);
    do
    {
      v23 = *(v36[0] + v21);
      if (v23)
      {
        v24 = (v23 >> 8) + 1;
      }

      else
      {
        v24 = v23 >> 8;
      }

      if (v24)
      {
        v25 = 0;
        do
        {
          v26 = v25 + 256;
          if (v23 >= v25 + 256)
          {
            v27 = v25 + 256;
          }

          else
          {
            v27 = v23;
          }

          xgboost::common::BlockedSpace2d::AddBlock(a1, v21, v25, v27);
          v25 = v26;
          --v24;
        }

        while (v24);
      }

      ++v21;
    }

    while (v21 != v22);
  }

  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

void sub_274D9E190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 + 24);
  if (v23)
  {
    *(v21 + 32) = v23;
    operator delete(v23);
  }

  v24 = *v21;
  if (*v21)
  {
    *(v21 + 8) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildHist(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int **a7, int **a8, uint64_t a9)
{
  v28 = 0;
  v29 = 0x7FFFFFFF;
  if (!a2)
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRows(a1, &v29, &v28, a7, a8, a5);
  }

  if (*(a4 + 192) == 1)
  {
    memset(v24, 0, sizeof(v24));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v24, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
    __p = 0;
    v26 = 0;
    v27 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&__p, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 3);
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(a1, a2, v24, a4, a7, a6, a9);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    v17 = v24[0];
    if (v24[0])
    {
      v18 = v24;
LABEL_12:
      v18[1] = v17;
      operator delete(v17);
    }
  }

  else
  {
    memset(v20, 0, sizeof(v20));
    std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(v20, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v21, *(a3 + 24), *(a3 + 32), (*(a3 + 32) - *(a3 + 24)) >> 3);
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(a1, a2, v20, a4, a7, a6, a9);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    v17 = v20[0];
    if (v20[0])
    {
      v18 = v20;
      goto LABEL_12;
    }
  }

  v19 = 1;
  if (!*(a1 + 400))
  {
    dmlc::LogCheckFormat<unsigned long,int>((a1 + 400), &v19);
  }

  if (*(a1 + 400) - 1 == a2)
  {
    if (*(a1 + 408) == 1)
    {
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(a1, a5, a7, a8, v29, v28);
    }

    else
    {
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(a1, a5, a7, a8);
    }
  }
}

float xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::InitRoot(uint64_t a1, int8x16_t *a2)
{
  std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize((a1 + 296), 1uLL);
  xgboost::tree::TreeEvaluator::GetEvaluator<xgboost::tree::TrainParam>((a1 + 152), v12);
  v4 = *(a1 + 296);
  *v4 = *a2;
  v11 = *v4;
  v6 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v12, 0, a1, v11.i64, v11, v5);
  v7 = xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcGainGivenWeight(v12, a1, v11.i64, v6);
  v8 = *(a1 + 296);
  *(v8 + 16) = v7;
  return xgboost::tree::TreeEvaluator::SplitEvaluator<xgboost::tree::TrainParam>::CalcWeight(v12, 0, a1, v11.i64, *v8, v9);
}

uint64_t *std::vector<xgboost::tree::CPUExpandEntry>::__init_with_size[abi:ne200100]<xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274D9E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry const*,xgboost::tree::CPUExpandEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      *(v4 + 24) = 0;
      *(v4 + 16) = v8;
      *(v4 + 8) = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v4 + 24), *(v6 + 24), *(v6 + 32), (*(v6 + 32) - *(v6 + 24)) >> 2);
      v9 = *(v6 + 48);
      v10 = *(v6 + 64);
      *(v4 + 80) = *(v6 + 80);
      *(v4 + 48) = v9;
      *(v4 + 64) = v10;
      v6 += 88;
      v4 = v15 + 88;
      v15 += 88;
    }

    while (v6 != a3);
  }

  v13 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](v12);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 64);
    if (v3)
    {
      *(v1 - 56) = v3;
      operator delete(v3);
    }

    v1 -= 88;
  }
}

void std::vector<xgboost::tree::CPUExpandEntry>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<xgboost::tree::CPUExpandEntry>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    v4 = *(i - 64);
    if (v4)
    {
      *(i - 56) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void xgboost::common::BlockedSpace2d::AddBlock(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = *(this + 4);
  v8 = *(this + 5);
  if (v9 >= v8)
  {
    v11 = *(this + 3);
    v12 = v9 - v11;
    v13 = (v9 - v11) >> 3;
    v14 = v13 + 1;
    if ((v13 + 1) >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v15 = v8 - v11;
    if (v15 >> 2 > v14)
    {
      v14 = v15 >> 2;
    }

    v16 = v15 >= 0x7FFFFFFFFFFFFFF8;
    v17 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v16)
    {
      v17 = v14;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 24, v17);
    }

    v18 = (v9 - v11) >> 3;
    v19 = (8 * v13);
    v20 = (8 * v13 - 8 * v18);
    *v19 = a2;
    v10 = v19 + 1;
    memcpy(v20, v11, v12);
    v21 = *(this + 3);
    *(this + 3) = v20;
    *(this + 4) = v10;
    *(this + 5) = 0;
    if (v21)
    {
      operator delete(v21);
    }
  }

  else
  {
    *v9 = a2;
    v10 = v9 + 8;
  }

  *(this + 4) = v10;
  v23 = *(this + 1);
  v22 = *(this + 2);
  if (v23 >= v22)
  {
    v25 = (v23 - *this) >> 4;
    if ((v25 + 1) >> 60)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v26 = v22 - *this;
    v27 = v26 >> 3;
    if (v26 >> 3 <= (v25 + 1))
    {
      v27 = v25 + 1;
    }

    if (v26 >= 0x7FFFFFFFFFFFFFF0)
    {
      v28 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v27;
    }

    if (v28)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(this, v28);
    }

    v29 = xgboost::common::Range1d::Range1d((16 * v25), a3, a4);
    v24 = v29 + 16;
    v30 = *(this + 1) - *this;
    v31 = v29 - v30;
    memcpy(v29 - v30, *this, v30);
    v32 = *this;
    *this = v31;
    *(this + 1) = v24;
    *(this + 2) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    xgboost::common::Range1d::Range1d(*(this + 1), a3, a4);
    v24 = (v23 + 16);
    *(this + 1) = v23 + 16;
  }

  *(this + 1) = v24;
}

void sub_274D9EA68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

xgboost::common::Range1d *xgboost::common::Range1d::Range1d(xgboost::common::Range1d *this, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  *this = a2;
  *(this + 1) = a3;
  if (a2 >= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return this;
}

void sub_274D9EB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRows(unsigned int *a1, int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  if (*(a1 + 408) == 1)
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(a1, a2, a3, a4, a5, a6);
  }

  else
  {
    xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(a1, a2, a3, a4, a5);
  }
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<float>::operator[](a1, *(*a5 + v17), &v23);
      v20 = (__p[0] + v18);
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<float>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274D9ED9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(uint64_t a1, uint64_t a2, xgboost::common::BlockedSpace2d *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v15 = *a5;
  v14 = a5[1];
  LODWORD(__p[0]) = 0;
  v16 = v14 - v15;
  v29 = 0x2E8BA2E8BA2E8BA3 * (v16 >> 3);
  if (!v16)
  {
    dmlc::LogCheckFormat<unsigned long,int>(&v29, __p);
  }

  std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](__p, v29);
  if (v29)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    do
    {
      xgboost::common::HistCollection<float>::operator[](a1, *(*a5 + v17), &v23);
      v20 = (__p[0] + v18);
      *v20 = v23;
      v20[1] = v24;
      ++v19;
      v21 = v29;
      v18 += 16;
      v17 += 88;
    }

    while (v19 < v29);
    if (a2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if (a2)
    {
      goto LABEL_10;
    }
  }

  xgboost::common::ParallelGHistBuilder<float>::Reset(a1 + 136, *(a1 + 392), v21, a3, __p);
LABEL_10:
  v22 = *(a1 + 392);
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a7;
  v27 = a4;
  xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(a3, v22, &v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_274D9EFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v17);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(unsigned int *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v7 = a5;
  v23 = a2;
  v22 = a1[32];
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v19, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v22, 0x400uLL);
  v11 = a1[98];
  v14 = a3;
  v15 = a1;
  v16 = &v23;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v11, &v14);
  xgboost::common::HistCollection<float>::operator[](a1, v7, &v14);
  rabit::engine::ReduceHandle::Allreduce((a1 + 80), v15, 8, a1[32] * a6, 0, 0);
  v24[0] = v23;
  v12 = a1[98];
  v14 = a3;
  v15 = v24;
  v16 = a1;
  __p = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v19, v12, &v14);
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(&v14, 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3), &v22, 0x400uLL);
  v24[3] = a3;
  v25 = v23;
  v13 = a1[98];
  v24[0] = a4;
  v24[1] = &v25;
  v24[2] = a1;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(&v14, v13, v24);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }
}

void sub_274D9F19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  xgboost::common::Index::~Index(va);
  xgboost::common::Index::~Index(va1);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v12 = *(a1 + 128);
  v13 = a2;
  xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(v9, 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3), &v12, 0x400uLL);
  v7 = *(a1 + 392);
  v8[0] = a3;
  v8[1] = a1;
  v8[2] = &v13;
  v8[3] = a4;
  xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(v9, v7, v8);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_274D9F278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  xgboost::common::Index::~Index(va);
  _Unwind_Resume(a1);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsDistributed(unsigned int *a1, int *a2, int *a3, int **a4, int **a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = 0x2E8BA2E8BA2E8BA3 * ((v11 - *a4) >> 3);
  v14 = *a5;
  v31 = a5[1];
  v15 = 0x2E8BA2E8BA2E8BA3 * ((v31 - *a5) >> 3);
  std::vector<int>::vector[abi:ne200100](&__p, v15 + v13);
  v16 = __p;
  if (v11 != v12)
  {
    v17 = *a4;
    if (v13 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v13;
    }

    v19 = __p;
    do
    {
      v20 = *v17;
      v17 += 22;
      *v19++ = v20;
      --v18;
    }

    while (v18);
  }

  if (v31 != v14)
  {
    v21 = *a5;
    v22 = &v16[4 * v13];
    if (v15 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v15;
    }

    do
    {
      v24 = *v21;
      v21 += 22;
      *v22 = v24;
      v22 += 4;
      --v23;
    }

    while (v23);
  }

  std::__sort<std::__less<int,int> &,int *>();
  v25 = __p;
  v26 = v33;
  if (__p == v33)
  {
    v27 = 0;
  }

  else
  {
    v27 = 0;
    do
    {
      if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) != 0)
      {
        xgboost::common::HistCollection<float>::AddHistRow(a1, *v25);
        v28 = *a2;
        if (*a2 >= *v25)
        {
          v28 = *v25;
        }

        *a2 = v28;
        xgboost::common::HistCollection<float>::AddHistRow((a1 + 16), *v25);
        ++v27;
      }

      ++v25;
    }

    while (v25 != v26);
    v25 = __p;
    v26 = v33;
  }

  for (; v25 != v26; ++v25)
  {
    if ((*(*(a6 + 160) + 20 * *v25) & 0x80000000) == 0)
    {
      xgboost::common::HistCollection<float>::AddHistRow(a1, *v25);
      xgboost::common::HistCollection<float>::AddHistRow((a1 + 16), *v25);
    }
  }

  xgboost::common::HistCollection<float>::AllocateAllData(a1);
  xgboost::common::HistCollection<float>::AllocateAllData(a1 + 16);
  if (v27 <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = v27;
  }

  *a3 = v29;
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_274D9F464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::AddHistRowsLocal(unsigned int *a1, int *a2, _DWORD *a3, char **a4, unsigned int **a5)
{
  v8 = *a4;
  v9 = a4[1];
  if (*a4 == v9)
  {
    v15 = *a4;
  }

  else
  {
    do
    {
      v13 = *v8;
      v8 += 22;
      v12 = v13;
      xgboost::common::HistCollection<float>::AddHistRow(a1, v13);
      v14 = *a2;
      if (*a2 >= v13)
      {
        v14 = v12;
      }

      *a2 = v14;
    }

    while (v8 != v9);
    v8 = *a4;
    v15 = a4[1];
  }

  *a3 = -1171354717 * ((v15 - v8) >> 3);
  v17 = *a5;
  v16 = a5[1];
  while (v17 != v16)
  {
    v18 = *v17;
    v17 += 22;
    xgboost::common::HistCollection<float>::AddHistRow(a1, v18);
  }

  xgboost::common::HistCollection<float>::AllocateAllData(a1);
}

void xgboost::common::HistCollection<float>::AddHistRow(uint64_t a1, unsigned int a2)
{
  v11 = -1;
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = (a1 + 40);
  if (a2 >= ((*(a1 + 48) - v5) >> 3))
  {
    v10 = 0xFFFFFFFFLL;
    std::vector<unsigned long>::resize((a1 + 40), a2 + 1, &v10);
    v5 = *v6;
  }

  v7 = (v5 + 8 * v4);
  if (*v7 != 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(v7, &v11);
  }

  v8 = a2 + 1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3) < v8)
  {
    std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::resize((a1 + 16), v8);
  }

  v9 = *(a1 + 4);
  *(*(a1 + 40) + 8 * v4) = v9;
  *(a1 + 4) = v9 + 1;
}

void sub_274D9F6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14)
{
  v15 = a14;
  a14 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a14, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::HistCollection<float>::AllocateAllData(unsigned int *a1)
{
  v2 = *a1;
  v4 = a1 + 4;
  v3 = *(a1 + 2);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 1) - v3) >> 3) * v2;
  *(a1 + 8) = 1;
  if (v5 != (v3[1] - *v3) >> 3)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v3, v5);
  }
}

uint64_t *std::vector<int>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274D9F794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<xgboost::detail::GradientPairInternal<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<xgboost::tree::GradStats>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<xgboost::tree::GradStats>>::~__split_buffer(v18);
  }
}

void xgboost::common::HistCollection<float>::operator[](unsigned int *a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v8 = -1;
  v4 = *(a1 + 5);
  if (a2 >= ((*(a1 + 6) - v4) >> 3))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(v4 + 8 * a2);
  if (v7 == 0xFFFFFFFFLL)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned int>(&v7, &v8);
  }

  if (*(a1 + 8) == 1)
  {
    v5 = *a1;
    v6 = **(a1 + 2) + 8 * v7 * v5;
  }

  else
  {
    v6 = *(*(a1 + 2) + 24 * v7);
    v5 = *a1;
  }

  *a3 = v5;
  a3[1] = v6;
  if (v5)
  {
    if (!v6)
    {
      std::terminate();
    }
  }
}

void sub_274D9FB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13)
{
  v14 = a13;
  a13 = 0;
  if (v14)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a13, v14);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<float>::Reset(uint64_t a1, uint64_t a2, uint64_t a3, xgboost::common::BlockedSpace2d *a4, char **a5)
{
  v15 = a3;
  if (*(a1 + 24) != *a1)
  {
    *(a1 + 24) = *a1;
    std::vector<std::vector<unsigned long>>::clear[abi:ne200100]((a1 + 40));
  }

  v10 = *(a1 + 168);
  *(a1 + 72) = *(a1 + 64);
  *(a1 + 28) = 0;
  std::__tree<dmlc::parameter::FieldAccessEntry *>::destroy(a1 + 160, v10);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 120) = 0;
  if ((a1 + 136) != a5)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__assign_with_size[abi:ne200100]<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*>((a1 + 136), *a5, a5[1], (a5[1] - *a5) >> 4);
  }

  v14 = (a5[1] - *a5) >> 4;
  if (v14 != a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v15, &v14);
  }

  v11 = v15;
  *(a1 + 8) = a2;
  *(a1 + 16) = v11;
  xgboost::common::ParallelGHistBuilder<float>::MatchThreadsToNodes(a1, a4);
  xgboost::common::ParallelGHistBuilder<float>::AllocateAdditionalHistograms(a1);
  xgboost::common::ParallelGHistBuilder<float>::MatchNodeNidPairToHist(a1);
  std::vector<int>::resize((a1 + 88), *(a1 + 16) * a2);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96) - v12;
  if (v13 >= 1)
  {
    bzero(v12, v13);
  }
}

void sub_274D9FCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

uint64_t *std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_274D9FF6C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void xgboost::common::ParallelGHistBuilder<float>::MatchThreadsToNodes(void *a1, xgboost::common::BlockedSpace2d *a2)
{
  v4 = (*(a2 + 1) - *a2) >> 4;
  v5 = a1[1];
  if (v4 % v5)
  {
    v6 = v4 / v5 + 1;
  }

  else
  {
    v6 = v4 / v5;
  }

  std::vector<BOOL>::resize(a1 + 14, a1[2] * v5, 0);
  if (a1[1])
  {
    v7 = 0;
    do
    {
      v8 = v7 * v6;
      if (v7 * v6 < v4)
      {
        if (v4 >= v8 + v6)
        {
          v9 = v8 + v6;
        }

        else
        {
          v9 = v4;
        }

        FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(a2, v8);
        v11 = xgboost::common::BlockedSpace2d::GetFirstDimension(a2, v9 - 1);
        if (FirstDimension <= v11)
        {
          v12 = a1[14];
          do
          {
            *(v12 + (((FirstDimension + v7 * a1[2]) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (FirstDimension + v7 * *(a1 + 16));
            ++FirstDimension;
          }

          while (FirstDimension <= v11);
        }
      }

      ++v7;
    }

    while (v7 < a1[1]);
  }
}

void xgboost::common::ParallelGHistBuilder<float>::AllocateAdditionalHistograms(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = 0;
      if (result[1])
      {
        v7 = v3;
        v8 = result[1];
        do
        {
          v6 += (*(result[14] + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1;
          v7 += v1;
          --v8;
        }

        while (v8);
      }

      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v4 = v5 + (v9 - 1);
      ++v3;
    }

    while (v3 != v1);
    if (v4)
    {
      v10 = 0;
      if (v6 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v6;
      }

      v12 = v5 + (v11 - 1);
      do
      {
        xgboost::common::HistCollection<float>::AddHistRow((result + 3), v10++);
      }

      while (v12 != v10);
    }
  }
}

uint64_t xgboost::common::ParallelGHistBuilder<float>::MatchNodeNidPairToHist(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    v4 = 0;
    v5 = *(result + 8);
    do
    {
      if (v5)
      {
        v6 = 0;
        v7 = 1;
        do
        {
          if ((*(*(v2 + 112) + (((v4 + *(v2 + 16) * v6) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 + *(v2 + 16) * v6)))
          {
            v8[0] = v6;
            v8[1] = v4;
            v9 = v8;
            if (v7)
            {
              result = std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((v2 + 160), v8, &std::piecewise_construct, &v9);
              v7 = 0;
              *(result + 48) = -1;
            }

            else
            {
              result = std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>((v2 + 160), v8, &std::piecewise_construct, &v9);
              v7 = 0;
              *(result + 48) = v3++;
            }
          }

          ++v6;
          v5 = *(v2 + 8);
        }

        while (v6 < v5);
        v1 = *(v2 + 16);
      }

      ++v4;
    }

    while (v4 < v1);
  }

  return result;
}

char *std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__assign_with_size[abi:ne200100]<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*,xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>*>(uint64_t *a1, char *a2, uint64_t *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v21 = *v5;
      v22 = v5[1];
      v5 += 2;
      *result = v21;
      *(result + 1) = v22;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = &a2[v11 - result];
    if (v11 != result)
    {
      v13 = result;
      v14 = a2;
      do
      {
        v15 = *v14;
        v16 = *(v14 + 1);
        v14 += 16;
        *v13 = v15;
        *(v13 + 1) = v16;
        v13 += 16;
      }

      while (v14 != v12);
    }

    if (v12 == a3)
    {
      v18 = v11;
    }

    else
    {
      v17 = a2 - result;
      v18 = v11;
      do
      {
        v20 = *(v17 + v18 + 8);
        v19 = (v17 + v18 + 16);
        *v11 = *(v17 + v18);
        *(v11 + 8) = v20;
        v11 += 16;
        v18 += 16;
      }

      while (v19 != a3);
    }

    a1[1] = v18;
  }

  return result;
}

uint64_t xgboost::common::BlockedSpace2d::GetFirstDimension(xgboost::common::BlockedSpace2d *this, unint64_t a2)
{
  v4 = a2;
  v3 = (*(this + 4) - *(this + 3)) >> 3;
  if (v3 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return *(*(this + 3) + 8 * v4);
}

void sub_274DA0504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__emplace_unique_key_args<std::pair<unsigned long,unsigned long>,std::piecewise_construct_t const&,std::tuple<std::pair<unsigned long,unsigned long>&&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = v8[5];
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<false>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(void *result, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v16);
      if (8 * v15 != 8 * v14)
      {
        xgboost::common::GHistBuilder<float>::BuildHist<false>();
      }
    }
  }
}

uint64_t xgboost::common::BlockedSpace2d::GetRange(xgboost::common::BlockedSpace2d *this, unint64_t a2)
{
  v4 = a2;
  v3 = (*(this + 1) - *this) >> 4;
  if (v3 <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v4, &v3);
  }

  return *(*this + 16 * v4);
}

void sub_274DA0904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  v12 = a11;
  a11 = 0;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a11, v12);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a3;
  v11 = a2;
  if (*(a1 + 16) <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v10, (a1 + 16));
  }

  if (*(a1 + 8) <= a2)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v11, (a1 + 8));
  }

  v9[0] = v11;
  v9[1] = v10;
  v6 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, v9);
  if ((v6 & 0x80000000) == 0)
  {
    xgboost::common::HistCollection<float>::AllocateData((a1 + 24), v6);
LABEL_8:
    xgboost::common::HistCollection<float>::operator[]((a1 + 24), v6, a4);
    v7 = v10;
    goto LABEL_9;
  }

  if (v6 != -1)
  {
    goto LABEL_8;
  }

  v7 = v10;
  v8 = (*(a1 + 136) + 16 * v10);
  *a4 = *v8;
  *(a4 + 8) = v8[1];
LABEL_9:
  if (!*(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v7))
  {
    bzero(*(a4 + 8), 8 * *a4);
    *(*(a1 + 88) + 4 * *(a1 + 16) * v11 + 4 * v10) = 1;
  }
}

void sub_274DA0B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = a10;
  a10 = 0;
  if (v16)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::map<std::pair<unsigned long,unsigned long>,int>::at(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::__map_value_compare<std::pair<unsigned long,unsigned long>,std::__value_type<std::pair<unsigned long,unsigned long>,int>,std::less<std::pair<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::pair<unsigned long,unsigned long>,int>>>::__find_equal<std::pair<unsigned long,unsigned long>>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 48;
}

void xgboost::common::HistCollection<float>::AllocateData(unsigned int *a1, unsigned int a2)
{
  v5 = (*(a1 + 2) + 24 * *(*(a1 + 5) + 8 * a2));
  if (v5[1] == *v5)
  {
    v7[1] = v2;
    v7[2] = v3;
    v6 = *a1;
    v7[0] = 0;
    std::vector<xgboost::detail::GradientPairInternal<float>>::resize(v5, v6, v7);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::resize(void *result, unint64_t a2, void *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__append(result, a2 - v3, a3);
  }
}

void std::vector<xgboost::detail::GradientPairInternal<float>>::__append(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 8;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v6 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v14 = 8 * v9;
    v15 = 8 * v9 + 8 * a2;
    v16 = 8 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 8;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::BuildLocalHistograms<true>(unsigned long,xgboost::common::BlockedSpace2d,xgboost::GHistIndexMatrix const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::common::RowSetCollection const&,std::vector<xgboost::detail::GradientPairInternal<float>> const&)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = (*(*(v8 + 8) + 24) + 24 * *(**v8 + 88 * FirstDimension));
      v13 = (v12[1] - *v12) >> 3;
      if (v13 >= Range)
      {
        v14 = Range;
      }

      else
      {
        v14 = v13;
      }

      if (v13 >= v11)
      {
        v15 = v11;
      }

      else
      {
        v15 = v13;
      }

      xgboost::common::ParallelGHistBuilder<float>::GetInitializedHist(*(v8 + 16) + 136, 0, FirstDimension, &v16);
      if (8 * v15 != 8 * v14)
      {
        xgboost::common::GHistBuilder<float>::BuildHist<true>();
      }
    }
  }
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA1404(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

void xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * a2);
  xgboost::common::HistCollection<float>::operator[](v8, *v9, &v34);
  xgboost::common::ParallelGHistBuilder<float>::ReduceHist((v8 + 34), a2, a3, a4);
  xgboost::common::HistCollection<float>::operator[](v8 + 16, *v9, v33);
  v10 = 2 * a3;
  v11 = 2 * a4;
  if (v11 > 2 * a3)
  {
    v12 = v11 - v10;
    v13 = (v33[1] + 8 * a3);
    v14 = (v35 + 8 * a3);
    do
    {
      v15 = *v14++;
      *v13++ = v15;
      --v12;
    }

    while (v12);
  }

  v16 = *(*(**(a1 + 16) + 160) + 20 * *v9);
  if (v16 != -1)
  {
    v17 = *(**(a1 + 24) + 88 * a2);
    xgboost::common::HistCollection<float>::operator[](v8 + 16, v16 & 0x7FFFFFFF, v32);
    xgboost::common::HistCollection<float>::operator[](v8, v17, &v30);
    v18 = v11 - v10;
    if (v11 <= v10)
    {
      xgboost::common::HistCollection<float>::operator[](v8 + 16, v17, v29);
    }

    else
    {
      v19 = (v31 + 8 * a3);
      v20 = (v35 + 8 * a3);
      v21 = (v32[1] + 8 * a3);
      v22 = v11 - v10;
      do
      {
        v23 = *v21++;
        v24 = v23;
        v25 = *v20++;
        *v19++ = v24 - v25;
        --v22;
      }

      while (v22);
      xgboost::common::HistCollection<float>::operator[](v8 + 16, v17, v29);
      v26 = (v29[1] + 8 * a3);
      v27 = (v31 + 8 * a3);
      do
      {
        v28 = *v27++;
        *v26++ = v28;
        --v18;
      }

      while (v18);
    }
  }
}

void xgboost::common::ParallelGHistBuilder<float>::ReduceHist(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v22 = a3;
  v23 = a2;
  v21 = a4;
  if (a4 <= a3)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v21, &v22);
  }

  if (v23 >= *(a1 + 16))
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v23, (a1 + 16));
  }

  v5 = *(*(a1 + 136) + 16 * v23 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (2)
    {
      v9 = *(a1 + 16);
      v10 = (*(a1 + 88) + 4 * v8 * v9 + 4 * v23);
      v11 = 4 * v9;
      while (!*v10)
      {
        v10 = (v10 + v11);
        if (++v8 >= v6)
        {
          if (v7)
          {
            return;
          }

          goto LABEL_21;
        }
      }

      v19 = v8;
      v20 = v23;
      v12 = *std::map<std::pair<unsigned long,unsigned long>,int>::at(a1 + 160, &v19);
      if (v12 == -1)
      {
        v13 = (*(a1 + 136) + 16 * v23 + 8);
      }

      else
      {
        xgboost::common::HistCollection<float>::operator[]((a1 + 24), v12, &v19);
        v13 = &v20;
      }

      v14 = *v13;
      if (v5 != *v13 && 2 * v21 > 2 * v22)
      {
        v15 = 2 * v21 - 2 * v22;
        v16 = (v5 + 8 * v22);
        v17 = (v14 + 8 * v22);
        do
        {
          v18 = *v17++;
          *v16 = v18 + *v16;
          ++v16;
          --v15;
        }

        while (v15);
      }

      v6 = *(a1 + 8);
      ++v8;
      v7 = 1;
      if (v8 < v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_21:
    bzero((v5 + 8 * v22), 8 * (v21 - v22));
  }
}

void sub_274DA19B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = a9;
  a9 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a9, v15);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::ParallelSubtractionHist(xgboost::common::BlockedSpace2d const&,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,xgboost::RegTree const*)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = v11;
      v13 = (**v8 + 88 * FirstDimension);
      if ((*(*(**(v8 + 8) + 160) + 20 * *v13) & 0x80000000) == 0)
      {
        v14 = Range;
        v15 = *(v8 + 16);
        xgboost::common::HistCollection<float>::operator[](v15, *v13, v27);
        v16 = *(*(**(v8 + 8) + 160) + 20 * *v13);
        if (v16 != -1)
        {
          v17 = *(**(v8 + 24) + 88 * FirstDimension);
          xgboost::common::HistCollection<float>::operator[](v15, v16 & 0x7FFFFFFF, v26);
          xgboost::common::HistCollection<float>::operator[](v15, v17, v25);
          if (2 * v12 > (2 * v14))
          {
            v18 = 2 * v12 - 2 * v14;
            v19 = (v27[1] + 8 * v14);
            v20 = (v25[1] + 8 * v14);
            v21 = (v26[1] + 8 * v14);
            do
            {
              v22 = *v21++;
              v23 = v22;
              v24 = *v20++;
              *v19++ = v23 - v24;
              --v18;
            }

            while (v18);
          }
        }
      }
    }
  }
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramDistributed(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#2}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA1EBC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = *a3;
      if (*a3 % a4)
      {
        v10 = *a3 / a4 + 1;
      }

      else
      {
        v10 = *a3 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA2184(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistogramBuilder<float,xgboost::tree::CPUExpandEntry>::SyncHistogramLocal(xgboost::RegTree *,std::vector<xgboost::tree::CPUExpandEntry> const&,std::vector<xgboost::tree::CPUExpandEntry> const&,int,int)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      v12 = v11;
      v13 = *(v8 + 8);
      v14 = (**v8 + 88 * FirstDimension);
      xgboost::common::HistCollection<float>::operator[](v13, *v14, v26);
      xgboost::common::ParallelGHistBuilder<float>::ReduceHist((v13 + 34), FirstDimension, Range, v12);
      v15 = *(*(**(v8 + 16) + 160) + 20 * *v14);
      if (v15 != -1)
      {
        v16 = *(**(v8 + 24) + 88 * FirstDimension);
        xgboost::common::HistCollection<float>::operator[](v13, v15 & 0x7FFFFFFF, v25);
        xgboost::common::HistCollection<float>::operator[](v13, v16, v24);
        if (2 * v12 > 2 * Range)
        {
          v17 = 2 * v12 - 2 * Range;
          v18 = (v24[1] + 8 * Range);
          v19 = (v26[1] + 8 * Range);
          v20 = (v25[1] + 8 * Range);
          do
          {
            v21 = *v20++;
            v22 = v21;
            v23 = *v19++;
            *v18++ = v22 - v23;
            --v17;
          }

          while (v17);
        }
      }
    }
  }
}

uint64_t *std::vector<xgboost::common::Range1d>::__init_with_size[abi:ne200100]<xgboost::common::Range1d*,xgboost::common::Range1d*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<xgboost::common::Range1d>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_274DA2428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<xgboost::common::Range1d>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::WQSummary<float,float>::Entry>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

void std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void std::vector<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry,std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::NodeEntry>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)>,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = *a1;
    v7 = a1[1];
    v25 = *(a1 + 4);
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[5];
    a1[3] = 0;
    a1[4] = 0;
    a1[5] = 0;
    v21 = *(a1 + 3);
    v22 = *(a1 + 4);
    v23 = a1[10];
    v24 = v7;
    v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(a1, a3, a4);
    v13 = v12;
    if (a2 - 88 == v12)
    {
      *v12 = v8;
      *(v12 + 8) = v24;
      *(v12 + 16) = v25;
      v20 = (v12 + 24);
      v19 = *(v12 + 24);
      if (v19)
      {
        *(v13 + 32) = v19;
        operator delete(v19);
        *v20 = 0;
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
      }

      *(v13 + 24) = v9;
      *(v13 + 32) = v10;
      *(v13 + 40) = v11;
      *(v13 + 48) = v21;
      *(v13 + 64) = v22;
      *(v13 + 80) = v23;
    }

    else
    {
      *v12 = *(a2 - 88);
      v14 = *(a2 - 80);
      *(v12 + 16) = *(a2 - 72);
      *(v12 + 8) = v14;
      std::vector<float>::__move_assign(v12 + 24, (a2 - 64));
      v15 = *(a2 - 40);
      v16 = *(a2 - 24);
      *(v13 + 80) = *(a2 - 8);
      *(v13 + 48) = v15;
      *(v13 + 64) = v16;
      v17 = v13 + 88;
      *(a2 - 88) = v8;
      *(a2 - 80) = v24;
      *(a2 - 72) = v25;
      v18 = *(a2 - 64);
      if (v18)
      {
        *(a2 - 56) = v18;
        operator delete(v18);
        *(a2 - 64) = 0;
        *(a2 - 56) = 0;
        *(a2 - 48) = 0;
      }

      *(a2 - 64) = v9;
      *(a2 - 56) = v10;
      *(a2 - 48) = v11;
      *(a2 - 40) = v21;
      *(a2 - 24) = v22;
      *(a2 - 8) = v23;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(a1, v17, a3, 0x2E8BA2E8BA2E8BA3 * ((v17 - a1) >> 3));
    }
  }
}

void sub_274DA284C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::function<BOOL ()(xgboost::tree::CPUExpandEntry,xgboost::tree::CPUExpandEntry)> &,std::__wrap_iter<xgboost::tree::CPUExpandEntry*>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 88 * v5 + 88;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v8 + 2 >= a3)
    {
      goto LABEL_9;
    }

    v31[0] = *a1;
    v10 = *(a1 + 8);
    v32 = *(a1 + 16);
    v31[1] = v10;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v33, *(a1 + 24), *(a1 + 32), (*(a1 + 32) - *(a1 + 24)) >> 2);
    v11 = *(a1 + 48);
    v12 = *(a1 + 64);
    v38 = *(a1 + 80);
    v36 = v11;
    v37 = v12;
    v23[0] = *(a1 + 88);
    v13 = *(a1 + 104);
    v23[1] = *(a1 + 96);
    v24 = v13;
    v26 = 0;
    v27 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, *(a1 + 112), *(a1 + 120), (*(a1 + 120) - *(a1 + 112)) >> 2);
    v14 = *(a1 + 136);
    v15 = *(a1 + 152);
    v30 = *(a1 + 168);
    v28 = v14;
    v29 = v15;
    v16 = *(a2 + 24);
    if (!v16)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v17 = (*(*v16 + 48))(v16, v31, v23);
    if (__p)
    {
      v26 = __p;
      operator delete(__p);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
      if ((v17 & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_8:
      a1 += 88;
      v5 = v9;
      goto LABEL_9;
    }

    if (v17)
    {
      goto LABEL_8;
    }

LABEL_9:
    *v7 = *a1;
    v18 = *(a1 + 8);
    *(v7 + 16) = *(a1 + 16);
    *(v7 + 8) = v18;
    std::vector<float>::__move_assign(v7 + 24, (a1 + 24));
    v19 = *(a1 + 48);
    v20 = *(a1 + 64);
    *(v7 + 80) = *(a1 + 80);
    *(v7 + 48) = v19;
    *(v7 + 64) = v20;
  }

  while (v5 <= v6);
  return a1;
}

void sub_274DA2A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 8) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v4 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  result = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v7 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v17);
  return v16;
}

void sub_274DA2C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 8) = v7;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      v8 = *(v6 + 48);
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 48) = v8;
      *(a4 + 64) = v9;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    do
    {
      v10 = *(v5 + 24);
      if (v10)
      {
        *(v5 + 32) = v10;
        operator delete(v10);
      }

      v5 += 88;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<xgboost::tree::CPUExpandEntry>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 88;
    v5 = *(v2 - 64);
    if (v5)
    {
      *(v2 - 56) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 88;
    }
  }
}

__n128 std::vector<xgboost::tree::CPUExpandEntry>::__construct_one_at_end[abi:ne200100]<xgboost::tree::CPUExpandEntry const&>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  v5 = *(a2 + 8);
  *(v4 + 16) = *(a2 + 16);
  *(v4 + 8) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v4 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  result = *(a2 + 48);
  v7 = *(a2 + 64);
  *(v4 + 80) = *(a2 + 80);
  *(v4 + 48) = result;
  *(v4 + 64) = v7;
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t std::vector<xgboost::tree::CPUExpandEntry>::__emplace_back_slow_path<xgboost::tree::CPUExpandEntry const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(a1, v6);
  }

  v7 = 88 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 16) = *(a2 + 16);
  *(v7 + 8) = v8;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((v7 + 24), *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 48) = v9;
  *(v7 + 64) = v10;
  *&v19 = v19 + 88;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v17);
  return v16;
}

void sub_274DA3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *xgboost::common::PartitionBuilder<2048ul>::CalculateRowOffsets(uint64_t *result)
{
  v1 = result[3];
  v2 = ((result[4] - v1) >> 3) - 1;
  if ((result[4] - v1) >> 3 != 1)
  {
    v3 = 0;
    v4 = *result;
    do
    {
      v5 = *(v1 + 8 * v3);
      v6 = v3 + 1;
      v7 = *(v1 + 8 * (v3 + 1));
      if (v5 >= v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = (result[6] + 16 * v5);
        do
        {
          v10 = *v9;
          v9 += 2;
          v10[2] = v8;
          v8 += *v10;
          ++v5;
          v7 = *(v1 + 8 * v6);
        }

        while (v5 < v7);
        v5 = *(v1 + 8 * v3);
      }

      if (v5 >= v7)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = (result[6] + 16 * v5);
        do
        {
          v13 = *v12;
          v12 += 2;
          *(v13 + 24) = v11 + v8;
          v11 += *(v13 + 8);
          ++v5;
        }

        while (v5 < *(v1 + 8 * v6));
      }

      v14 = (v4 + 16 * v3);
      *v14 = v8;
      v14[1] = v11;
      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

void xgboost::common::RowSetCollection::AddSplit(xgboost::common::RowSetCollection *this, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v28 = a6;
  v10 = (this + 24);
  v11 = *(this + 3) + 24 * a2;
  v12 = *(v11 + 16);
  v26 = *v11;
  v27 = v12;
  v13 = v26;
  if (v26)
  {
    v14 = v26;
  }

  else
  {
    LODWORD(v25) = 0;
    if (a5)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v29, &v25);
    }

    LODWORD(v25) = 0;
    if (v28)
    {
      dmlc::LogCheckFormat<unsigned long,int>(&v28, &v25);
    }

    v14 = 0;
    a5 = v29;
    a6 = 0;
    v13 = v26;
  }

  v24 = (*(&v26 + 1) - v13) >> 3;
  v25 = a5 + a6;
  if (a5 + a6 != v24)
  {
    dmlc::LogCheckFormat<unsigned long,unsigned long>(&v25, &v24);
  }

  v25 = v14 + 8 * v29;
  if (v25 > *(&v26 + 1))
  {
    dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(&v25, &v26 + 1);
  }

  v25 = v14 + 8 * v29 + 8 * v28;
  if (v25 != *(&v26 + 1))
  {
    dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(&v25, &v26 + 1);
  }

  v15 = *(this + 3);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v15) >> 3);
  if (v16 <= a3)
  {
    v22 = 0uLL;
    v23 = -1;
    std::vector<xgboost::common::RowSetCollection::Elem>::resize(v10, a3 + 1, &v22);
    v15 = *(this + 3);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - v15) >> 3);
  }

  if (v16 <= a4)
  {
    v22 = 0uLL;
    v23 = -1;
    std::vector<xgboost::common::RowSetCollection::Elem>::resize(v10, a4 + 1, &v22);
    v15 = *v10;
  }

  v17 = v14 + 8 * v29;
  v18 = v15 + 24 * a3;
  *v18 = v14;
  *(v18 + 8) = v17;
  *(v18 + 16) = a3;
  v19 = *(&v26 + 1);
  v20 = *v10 + 24 * a4;
  *v20 = v17;
  *(v20 + 8) = v19;
  *(v20 + 16) = a4;
  v21 = *v10 + 24 * a2;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = -1;
}

void sub_274DA35D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v15 = a10;
  a10 = 0;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](&a10, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_274DA3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void sub_274DA3630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void sub_274DA3640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  dmlc::LogMessageFatal::~LogMessageFatal(va);
  JUMPOUT(0x274DA3604);
}

void std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::resize(const void **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 4;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 16 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 1);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v3 -= 16;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__append(a1, v5);
  }
}

void std::vector<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(a1[1], 16 * a2);
      v5 += 16 * a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v16[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = a1[1] - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v11;
    v15 = a1[2];
    a1[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__split_buffer(v16);
  }
}

void **std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t xgboost::common::PartitionBuilder<2048ul>::AllocateForTask(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 48) + 16 * a2))
  {
    operator new();
  }

  return result;
}

void sub_274DA3994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    MEMORY[0x277C69180](v1, 0x1000C402BCDB82FLL);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x277C69180);
}

uint64_t std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    JUMPOUT(0x277C69180);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<xgboost::common::PartitionBuilder<2048ul>::BlockInfo *,std::shared_ptr<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>::__shared_ptr_default_delete<xgboost::common::PartitionBuilder<2048ul>::BlockInfo,xgboost::common::PartitionBuilder<2048ul>::BlockInfo>,std::allocator<xgboost::common::PartitionBuilder<2048ul>::BlockInfo>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t xgboost::common::Index::operator[](uint64_t *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = a1[4];
  if (v2 != v3)
  {
    return *(a1[3] + 4 * (a2 % ((v3 - v2) >> 2))) + (a1[7])(*a1);
  }

  v5 = a1[7];
  v6 = *a1;

  return v5(v6, a2);
}

uint64_t xgboost::common::BinarySearchBin<xgboost::common::Index>(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a2 == a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  v10 = a1;
  v11 = -1;
  do
  {
    v12 = v11;
    v11 = v10 + ((v9 - v10) >> 1);
    if (v11 == v12)
    {
      break;
    }

    result = xgboost::common::Index::operator[](a3, v10 + ((v9 - v10) >> 1));
    if (result >= a4 && result < a5)
    {
      return result;
    }

    if (result < a4)
    {
      v10 += (v9 - v10) >> 1;
    }

    else
    {
      v9 = v10 + ((v9 - v10) >> 1);
    }
  }

  while (v9 != v10);
  return 0xFFFFFFFFLL;
}

void *xgboost::common::PartitionBuilder<2048ul>::MergeToArray(void *result, int a2, unint64_t a3, uint64_t a4)
{
  v5 = 16 * (*(result[3] + 8 * a2) + (a3 >> 11));
  v6 = *(result[6] + v5);
  v7 = v6[3];
  if (*v6)
  {
    v8 = result;
    result = memmove((a4 + 8 * v6[2]), v6 + 4, 8 * *v6);
    v9 = *(v8[6] + v5);
  }

  else
  {
    v9 = *(result[6] + v5);
  }

  v10 = *(v9 + 8);
  if (v10)
  {

    return memmove((a4 + 8 * v7), v6 + 2052, 8 * v10);
  }

  return result;
}

void std::vector<xgboost::common::RowSetCollection::Elem>::resize(void *result, unint64_t a2, __int128 *a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v5 != 0 && v4)
  {
    std::vector<xgboost::common::RowSetCollection::Elem>::__append(result, v5, a3);
  }

  else if (!v4)
  {
    result[1] = *result + 24 * a2;
  }
}

void dmlc::LogCheckFormat<unsigned long *,unsigned long const*>(void *a1, void *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v9);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, " (", 2);
  v6 = MEMORY[0x277C68DE0](v5, *a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " vs. ", 5);
  v8 = MEMORY[0x277C68DE0](v7, *a2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") ", 2);
  operator new();
}

void sub_274DA3E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x277C69180](v3, 0x1012C40EC159624);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<xgboost::common::RowSetCollection::Elem>::__append(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = v5 + 24 * a2;
      v12 = 24 * a2;
      do
      {
        v13 = *a3;
        *(v5 + 16) = *(a3 + 2);
        *v5 = v13;
        v5 += 24;
        v12 -= 24;
      }

      while (v12);
      v5 = v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::common::RowSetCollection::Elem>>(a1, v10);
    }

    v14 = 24 * v7;
    v15 = 3 * a2;
    v16 = 24 * v7 + 24 * a2;
    v17 = 8 * v15;
    v18 = 24 * v7;
    do
    {
      v19 = *a3;
      *(v18 + 16) = *(a3 + 2);
      *v18 = v19;
      v18 += 24;
      v17 -= 24;
    }

    while (v17);
    v20 = *(a1 + 8) - *a1;
    v21 = v14 - v20;
    memcpy((v14 - v20), *a1, v20);
    v22 = *a1;
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v22)
    {

      operator delete(v22);
    }
  }
}

uint64_t *std::vector<xgboost::tree::CPUExpandEntry>::push_back[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v10 = 0x2E8BA2E8BA2E8BA3 * ((v4 - *result) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x2E8BA2E8BA2E8BA3 * ((v5 - *result) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v13 = v11;
    }

    v26 = result;
    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>>(result, v13);
    }

    v14 = 88 * v10;
    v23 = 0;
    v24 = v14;
    *(&v25 + 1) = 0;
    *v14 = *a2;
    v15 = *(a2 + 8);
    *(v14 + 16) = *(a2 + 16);
    *(v14 + 8) = v15;
    *(v14 + 32) = 0;
    *(v14 + 40) = 0;
    *(v14 + 24) = 0;
    *(v14 + 24) = *(a2 + 24);
    *(v14 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    *(v14 + 80) = *(a2 + 80);
    *(v14 + 48) = v16;
    *(v14 + 64) = v17;
    *&v25 = 88 * v10 + 88;
    v18 = result[1];
    v19 = 88 * v10 + *result - v18;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<xgboost::tree::CPUExpandEntry>,xgboost::tree::CPUExpandEntry*>(result, *result, v18, v19);
    v20 = *v3;
    *v3 = v19;
    v21 = v3[2];
    v22 = v25;
    *(v3 + 1) = v25;
    *&v25 = v20;
    *(&v25 + 1) = v21;
    v23 = v20;
    v24 = v20;
    result = std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(&v23);
    v9 = v22;
  }

  else
  {
    *v4 = *a2;
    v6 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 16);
    *(v4 + 8) = v6;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = 0;
    *(v4 + 24) = *(a2 + 24);
    *(v4 + 40) = *(a2 + 40);
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    v7 = *(a2 + 48);
    v8 = *(a2 + 64);
    *(v4 + 80) = *(a2 + 80);
    *(v4 + 48) = v7;
    *(v4 + 64) = v8;
    v9 = v4 + 88;
  }

  v3[1] = v9;
  return result;
}

void sub_274DA4178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<xgboost::tree::CPUExpandEntry>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(void *a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = (a1[1] - *a1) >> 4;
  LODWORD(v3[0]) = a2;
  v5 = a2;
  v6 = 1;
  if (a2 < 1)
  {
    dmlc::LogCheckFormat<int,int>(v3, &v6);
  }

  v7.__ptr_ = 0;
  v8.__m_.__sig = 850045863;
  memset(v8.__m_.__opaque, 0, sizeof(v8.__m_.__opaque));
  v3[0] = &v4;
  v3[1] = &v5;
  v3[2] = a3;
  v3[3] = a1;
  dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(&v7, v3);
  dmlc::OMPException::Rethrow(&v7);
  std::mutex::~mutex(&v8);
  std::exception_ptr::~exception_ptr(&v7);
}

uint64_t *std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::vector<std::shared_ptr<xgboost::HostDeviceVector<unsigned int>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<xgboost::DMatrix>>>(a1, a2);
  }

  std::vector<xgboost::detail::GradientPairInternal<float>>::__throw_length_error[abi:ne200100]();
}

xgboost::common::BlockedSpace2d *xgboost::common::BlockedSpace2d::BlockedSpace2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long)#1}>(xgboost::common::BlockedSpace2d *this, uint64_t a2, void *a3, unint64_t a4)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      v9 = (*(**(*a3 + 16 * i) + 8) - ***(*a3 + 16 * i)) >> 2;
      if (v9 % a4)
      {
        v10 = v9 / a4 + 1;
      }

      else
      {
        v10 = v9 / a4;
      }

      if (v10)
      {
        v11 = 0;
        for (j = 0; j < v10; ++j)
        {
          if (v9 >= a4 + v11)
          {
            v13 = a4 + v11;
          }

          else
          {
            v13 = v9;
          }

          xgboost::common::BlockedSpace2d::AddBlock(this, i, v11, v13);
          v11 += a4;
        }
      }
    }
  }

  return this;
}

void sub_274DA44FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<xgboost::tree::CPUExpandEntry>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<xgboost::tree::CPUExpandEntry>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void dmlc::OMPException::Run<void xgboost::common::ParallelFor2d<xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}>(xgboost::common::BlockedSpace2d const&,int,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1})::{lambda(void)#1}>(uint64_t a1, uint64_t a2)
{
  v2 = **a2;
  v3 = **(a2 + 8);
  if (v2 % v3)
  {
    v4 = v2 / v3 + 1;
  }

  else
  {
    v4 = v2 / v3;
  }

  if (v2 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = **a2;
  }

  if (v5)
  {
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      FirstDimension = xgboost::common::BlockedSpace2d::GetFirstDimension(*(a2 + 24), i);
      Range = xgboost::common::BlockedSpace2d::GetRange(*(a2 + 24), i);
      xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(v8, FirstDimension, Range, v11);
    }
  }
}

void xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator()(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = *(a1 + 8);
  v9 = (**a1 + 88 * *(v8 + 184) * a2);
  v12 = *v9;
  v10 = (v9 + 2);
  v11 = v12;
  xgboost::common::HistCollection<float>::operator[](*(a1 + 16), v12, v46);
  if (a3 < a4)
  {
    v13 = **(**(a1 + 24) + 16 * a2);
    v14 = *v13;
    v15 = v13[1] - *v13;
    if (a3 <= v15 >> 2)
    {
      v16 = v15 >> 2;
    }

    else
    {
      v16 = a3;
    }

    v35 = vdupq_n_s64(2uLL);
    do
    {
      if (a3 == v16)
      {
LABEL_31:
        std::terminate();
      }

      v17 = *(v14 + 4 * a3);
      v18 = *(a1 + 32);
      if (*v18)
      {
        if (*v18 <= v17)
        {
          goto LABEL_31;
        }

        v19 = *(v18[1] + v17);
        if (!xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
        {
          goto LABEL_29;
        }

        if (v19 != 1)
        {
LABEL_15:
          v37[0] = 0;
          v37[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v37, v46, v17, v11, *(a1 + 56), v10);
          v24 = (*(v8 + 296) + 24 * v11);
          if (v25 != *v24 || v23 != v24[1])
          {
            v36[0] = 0;
            v36[1] = 0;
            xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)0>(v8, *(a1 + 48), v36, v46, v17, v11, *(a1 + 56), v10);
          }

          goto LABEL_29;
        }

        v20 = (v17 + 1);
        v21 = **(a1 + 40);
        if (v20 >= (*(*(a1 + 40) + 8) - v21) >> 2)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v22 = (*(v21 + 4 * v20) - *(v21 + 4 * v17));
        if (v22 >= *(v8 + 28))
        {
          std::vector<unsigned long>::vector[abi:ne200100](&__p, v22);
          v27 = __p;
          if (__p != v43)
          {
            v28 = 0;
            v29 = (v43 - __p - 8) >> 3;
            v30 = vdupq_n_s64(v29);
            v31 = xmmword_274E1F3B0;
            do
            {
              v32 = vmovn_s64(vcgeq_u64(v30, v31));
              if (v32.i8[0])
              {
                v27[v28] = v28;
              }

              if (v32.i8[4])
              {
                v27[v28 + 1] = v28 + 1;
              }

              v28 += 2;
              v31 = vaddq_s64(v31, v35);
            }

            while (((v29 + 2) & 0x3FFFFFFFFFFFFFFELL) != v28);
          }

          xgboost::common::Span<xgboost::detail::GradientPairInternal<float>,18446744073709551615ul>::subspan(v46, *(**(a1 + 40) + 4 * v17), v22, v41);
          v40[0] = *(a1 + 56);
          v40[1] = v8;
          v40[2] = v41;
          std::__stable_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned long *>,xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EvaluateSplits(xgboost::common::HistCollection<float> const&,xgboost::common::HistogramCuts const&,xgboost::common::Span<xgboost::FeatureType const,18446744073709551615ul>,xgboost::RegTree const&,std::vector<xgboost::tree::CPUExpandEntry> *)::{lambda(unsigned long,xgboost::common::Range1d)#1}::operator() const(unsigned long,xgboost::common::Range1d)::{lambda(unsigned long,unsigned long)#1}>(__p, v43, v40, v33, v34);
          v39[0] = (v43 - __p) >> 3;
          v39[1] = __p;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v39, v46, v17, v11, *(a1 + 56), v10);
          v38[0] = (v43 - __p) >> 3;
          v38[1] = __p;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)2>(v8, *(a1 + 48), v38, v46, v17, v11, *(a1 + 56), v10);
          if (__p)
          {
            v43 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v45[0] = 0;
          v45[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v45, v46, v17, v11, *(a1 + 56), v10);
          v44[0] = 0;
          v44[1] = 0;
          xgboost::tree::HistEvaluator<float,xgboost::tree::CPUExpandEntry>::EnumerateSplit<-1,(xgboost::tree::SplitType)1>(v8, *(a1 + 48), v44, v46, v17, v11, *(a1 + 56), v10);
        }
      }

      else if (xgboost::FeatureInteractionConstraintHost::Query((v8 + 192), v11, *(v14 + 4 * a3)))
      {
        goto LABEL_15;
      }

LABEL_29:
      ++a3;
    }

    while (a3 != a4);
  }
}