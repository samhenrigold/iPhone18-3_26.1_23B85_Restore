void RIO_MTLX::GraphIterator::extendPathUpstream(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  std::__tree<std::shared_ptr<RIO_MTLX::Element>>::__emplace_unique_key_args<std::shared_ptr<RIO_MTLX::Element>,std::shared_ptr<RIO_MTLX::Element> const&>((a1 + 4), a2, a2);
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[1];
  *a1 = v7;
  a1[1] = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a1[3];
  a1[2] = v10;
  a1[3] = v9;
  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void RIO_MTLX::GraphIterator::returnPathDownstream(void *a1, unint64_t a2)
{
  v4 = a1 + 5;
  v3 = a1[5];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      v7 = v6[4];
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v5 = v6;
      }

      v6 = v6[v9];
    }

    while (v6);
    if (v5 != v4 && v5[4] <= a2)
    {
      v10 = v5[1];
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
        v12 = v5;
        do
        {
          v11 = v12[2];
          v13 = *v11 == v12;
          v12 = v11;
        }

        while (!v13);
      }

      if (a1[4] == v5)
      {
        a1[4] = v11;
      }

      --a1[6];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);
      v14 = v5[5];
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      operator delete(v5);
    }
  }

  v15 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v16)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

uint64_t RIO_MTLX::InheritanceIterator::operator++(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 40) = v2 - 1;
  }

  else
  {
    v4 = *a1;
    if (*a1)
    {
      InheritString = RIO_MTLX::Element::getInheritString(*a1);
      RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(v4, InheritString, &v26);
      v6 = v26;
      if (!v26)
      {
        goto LABEL_24;
      }

      v7 = *a1;
      v8 = *(v26 + 47);
      if (v8 >= 0)
      {
        v9 = *(v26 + 47);
      }

      else
      {
        v9 = *(v26 + 32);
      }

      v10 = *(v7 + 47);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v7 + 4);
      }

      if (v9 == v10 && (v8 >= 0 ? (v12 = (v26 + 24)) : (v12 = *(v26 + 24)), (v15 = *(v7 + 3), v13 = v7 + 24, v14 = v15, v11 >= 0) ? (v16 = v13) : (v16 = v14), !memcmp(v12, v16, v9)) || (v17 = v27, v26 = 0, v27 = 0, v17) && (std::__shared_weak_count::__release_shared[abi:ne200100](v17), (v6 = v26) != 0))
      {
        v18 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          v6 = v26;
          v19 = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v19 = 0;
        }

        v21 = *(a1 + 24);
        if (!v21)
        {
LABEL_32:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v22 = v21;
            v23 = v21[4];
            if (v23 <= v6)
            {
              break;
            }

            v21 = *v22;
            if (!*v22)
            {
              goto LABEL_32;
            }
          }

          if (v23 >= v6)
          {
            break;
          }

          v21 = v22[1];
          if (!v21)
          {
            goto LABEL_32;
          }
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v20 = v26;
      }

      else
      {
LABEL_24:
        v20 = 0;
      }

      v24 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = *(a1 + 8);
      *a1 = v20;
      *(a1 + 8) = v24;
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }
  }

  return a1;
}

void sub_2476FA70C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void *std::pair<std::shared_ptr<RIO_MTLX::Element>,unsigned long>::operator=[abi:ne200100](void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  a1[2] = a2[2];
  return a1;
}

void realityio::MaterialXStandalone::makeSource(uint64_t *__return_ptr a1@<X8>, realityio::MaterialXStandalone *this@<X0>, const __CFURL *a3@<X1>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a3);
  realityio::mtlx::mtlxToDataSource(__p, this, &v8);
  v5 = v8;
  v8 = 0uLL;
  *a1 = 1;
  *(a1 + 1) = v5;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2476FA7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void realityio::MaterialXStandalone::makeSource(uint64_t *__return_ptr a1@<X8>, realityio::MaterialXStandalone *this@<X0>, char *__s@<X2>)
{
  std::string::basic_string[abi:ne200100]<0>(v20, __s);
  realityio::stringFromCFData(this, &__p);
  realityio::mtlx::mtlxToDataSource(v20, &__p, &v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  v6 = v24;
  if (v24)
  {
    v7 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = 1;
    a1[1] = v6;
    a1[2] = v7;
    if (v7)
    {
LABEL_9:
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "Error reading material ");
    v8 = std::system_category();
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v10 = strlen(__s);
    v11 = &v17;
    std::string::basic_string[abi:ne200100](&v17, size + v10);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v17.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v11, p_p, size);
    }

    v13 = v11 + size;
    if (v10)
    {
      memmove(v13, __s, v10);
    }

    v13[v10] = 0;
    v14 = std::string::append(&v17, "");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v19 = v14->__r_.__value_.__r.__words[2];
    *v18 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    realityio::DetailedError::DetailedError(v20, 0, v8, v18);
    *(a1 + 1) = *v20;
    v16 = v22;
    a1[3] = v21;
    a1[4] = v16;
    *(a1 + 39) = *(&v22 + 7);
    LOBYTE(v16) = HIBYTE(v22);
    v22 = 0uLL;
    v21 = 0;
    *a1 = 0;
    *(a1 + 47) = v16;
    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v7 = v25;
    if (v25)
    {
      goto LABEL_9;
    }
  }
}

void sub_2476FAA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  v34 = *(v32 - 64);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void realityio::MaterialXStandalone::generateSyncOnEngineQueue(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<__CFData const* ()(char const*)>::__value_func[abi:ne200100](v9, a3);
  v8[0] = v7;
  v8[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<__CFData const* ()(char const*)>::__value_func[abi:ne200100](&v11, v9);
  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](&v11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    v10[0] = &unk_28595D758;
    std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](v9);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v10[0] = &unk_28595D758;
    std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](v9);
  }

  dispatch_assert_queue_V2(v10[8]);
  realityio::buildMaterialXAsset(v10, v10[6], &v11);
  *a4 = v11;
  v11 = 0;
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(v12);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v11);
}

void sub_2476FABDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](v6 - 72);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](va);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void sub_2476FB16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *realityio::anonymous namespace::Standalone::Standalone(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  *a1 = &unk_28595D7D8;
  std::__function::__value_func<__CFData const* ()(char const*)>::__value_func[abi:ne200100]((a1 + 1), a4);
  a1[5] = a2;
  if (a2)
  {
    RERetain();
  }

  v7 = a3[1];
  a1[6] = *a3;
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  v11 = REEngineConfigurationCreateFromEngine();
  v8 = REEngineConfigurationGetEngineQueue();
  v9 = a1[8];
  a1[8] = v8;

  realityio::WrappedRERef<REEngineConfigurationWrapper *>::~WrappedRERef(&v11);
  return a1;
}

uint64_t realityio::anonymous namespace::StandaloneSynchronous::performBlockSyncOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v4 = *(*v3 + 48);

  return v4();
}

void realityio::anonymous namespace::Standalone::resolveImageAssets(uint64_t a1@<X0>, pxrInternal__aapl__pxrReserved__::SdfPath **a2@<X1>, uint64_t *a3@<X8>)
{
  v28[0] = &unk_28595D828;
  v28[1] = a1;
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v16 = 0;
  }

  else
  {
    do
    {
      v7 = *(a1 + 48);
      pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(&v27, v4);
      v8 = realityio::mtlx::NeoDataSource::primFromPath(v7, &v27);
      v10 = v9;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v27);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(v4);
      v24 = v8;
      v25 = v10;
      v12 = *NameToken;
      v26 = v12;
      if ((v12 & 7) != 0)
      {
        v13 = (v12 & 0xFFFFFFFFFFFFFFF8);
        if ((atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed) & 1) == 0)
        {
          v26 = v13;
        }
      }

      pxrInternal__aapl__pxrReserved__::SdfAssetPath::SdfAssetPath(&v22);
      (*(**(a1 + 48) + 224))(v20);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
      }

      else
      {
        v17 = v22;
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v23;
      }

      realityio::TextureBuilder::createStandaloneTextureAsset(v28, &v17, v20, &v19);
      v14 = a3[1];
      if (v14 >= a3[2])
      {
        v15 = std::vector<realityio::WrappedRERef<REAsset *>>::__emplace_back_slow_path<realityio::WrappedRERef<REAsset *>>(a3, &v19);
      }

      else
      {
        *v14 = v19;
        v15 = (v14 + 1);
        v19 = 0;
      }

      a3[1] = v15;
      realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v19);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }

      if ((v26 & 7) != 0)
      {
        atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v4 = (v4 + 8);
    }

    while (v4 != v5);
    v16 = v30[0];
  }

  v28[0] = &unk_28595D828;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(&v29, v16);
}

void sub_2476FB63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  pxrInternal__aapl__pxrReserved__::SdfAssetPath::~SdfAssetPath(&a29);
  if ((a37 & 7) != 0)
  {
    atomic_fetch_add_explicit((a37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  std::vector<realityio::WrappedRERef<REAsset *>>::__destroy_vector::operator()[abi:ne200100](&a29);
  *(v37 - 128) = a10;
  std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::destroy(v37 - 112, *(v37 - 104));
  _Unwind_Resume(a1);
}

void realityio::anonymous namespace::StandaloneSynchronous::~StandaloneSynchronous(realityio::_anonymous_namespace_::StandaloneSynchronous *this)
{

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::anonymous namespace::LocalTextureContext::getTextureAssetWithKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result + 24;
  v5 = *(result + 24);
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = *(a2 + 23);
  v7 = v6 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v8 = v6 >= 0 ? a2 : *a2;
  v9 = result + 24;
  do
  {
    v10 = *(v5 + 55);
    if (v10 >= 0)
    {
      v11 = *(v5 + 55);
    }

    else
    {
      v11 = *(v5 + 40);
    }

    if (v10 >= 0)
    {
      v12 = (v5 + 32);
    }

    else
    {
      v12 = *(v5 + 32);
    }

    if (v7 >= v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = v7;
    }

    result = memcmp(v12, v8, v13);
    v14 = v11 < v7;
    if (result)
    {
      v14 = result < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v9 = v5;
    }

    v5 = *(v5 + v16);
  }

  while (v5);
  if (v9 == v4)
  {
    goto LABEL_40;
  }

  v17 = *(v9 + 55);
  if (v17 >= 0)
  {
    v18 = *(v9 + 55);
  }

  else
  {
    v18 = *(v9 + 40);
  }

  if (v17 >= 0)
  {
    v19 = (v9 + 32);
  }

  else
  {
    v19 = *(v9 + 32);
  }

  if (v18 >= v7)
  {
    v20 = v7;
  }

  else
  {
    v20 = v18;
  }

  result = memcmp(v8, v19, v20);
  v21 = v7 < v18;
  if (result)
  {
    v21 = result < 0;
  }

  if (v21)
  {
LABEL_40:
    *a3 = 0;
  }

  else
  {
    result = *(v9 + 56);
    *a3 = result;
    if (result)
    {

      return RERetain();
    }
  }

  return result;
}

void sub_2476FB8F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *realityio::anonymous namespace::LocalTextureContext::insertTextureIntoCache(uint64_t a1, const void **a2, uint64_t *a3)
{
  v7 = a2;
  v4 = std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 16), a2, &std::piecewise_construct, &v7, &v6);
  return realityio::WrappedRERef<REAsset *>::operator=(v4 + 7, a3);
}

uint64_t realityio::anonymous namespace::LocalTextureContext::dataFromRawPath@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  result = *(*(a1 + 8) + 32);
  if (result)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = v5;
    result = (*(*result + 48))(result, &v6);
    *a3 = result;
  }

  return result;
}

void realityio::anonymous namespace::Standalone::~Standalone(realityio::_anonymous_namespace_::Standalone *this)
{
  *this = &unk_28595D7D8;

  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  realityio::WrappedRERef<REEngine *>::~WrappedRERef(this + 5);
  std::__function::__value_func<__CFData const* ()(char const*)>::~__value_func[abi:ne200100](this + 8);
}

void ___ZN9realityio12_GLOBAL__N_115StandaloneAsync7executeENSt3__18functionIFvNS_12WrappedRERefIP7REAssetEEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  realityio::buildMaterialXAsset(v1, *(v1 + 48), &v5);
  v2 = *(v1 + 224);
  if (v2 != v5)
  {
    *(v1 + 224) = v5;
    v5 = v2;
  }

  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v5);
  v3 = *(v1 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN9realityio12_GLOBAL__N_115StandaloneAsync7executeENSt3__18functionIFvNS_12WrappedRERefIP7REAssetEEEEE_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v3, block);
}

void ___ZN9realityio12_GLOBAL__N_115StandaloneAsync7executeENSt3__18functionIFvNS_12WrappedRERefIP7REAssetEEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 9);
  v3 = (**v1)(v1);

  realityio::AssetLoadTracker::loadAssets(v2, v3, 0);
}

uint64_t std::__function::__value_func<__CFData const* ()(char const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::__shared_ptr_emplace<realityio::anonymous namespace::StandaloneAsync>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28595D888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1A91B0);
}

uint64_t realityio::anonymous namespace::StandaloneAsync::performBlockSyncOnEngineQueue(uint64_t a1, uint64_t a2)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (*(a1 + 184))
  {
    v3 = *(a2 + 24);
    if (!v3)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v4 = *(*v3 + 48);

    return v4();
  }

  else
  {
    v7 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3321888768;
    v8[2] = ___ZN9realityio12_GLOBAL__N_115StandaloneAsync29performBlockSyncOnEngineQueueENSt3__18functionIFvvEEE_block_invoke;
    v8[3] = &__block_descriptor_72_ea8_40c27_ZTSNSt3__18functionIFvvEEE_e5_v8__0l;
    v8[4] = a1;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v9, a2);
    dispatch_sync(v7, v8);

    return std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v9);
  }
}

void sub_2476FBF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

void realityio::anonymous namespace::StandaloneAsync::~StandaloneAsync(realityio::_anonymous_namespace_::StandaloneAsync *this)
{
  *this = &unk_28595D8D8;
  *(this + 9) = &unk_28595D930;
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 28);
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](this + 192);

  *(this + 9) = &unk_28595BAB0;
  v2 = (this + 144);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::recursive_mutex::~recursive_mutex((this + 80));
}

{
  *this = &unk_28595D8D8;
  *(this + 9) = &unk_28595D930;
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(this + 28);
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](this + 192);

  *(this + 9) = &unk_28595BAB0;
  v2 = (this + 144);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::recursive_mutex::~recursive_mutex((this + 80));
  MEMORY[0x24C1A91B0]();
}

uint64_t realityio::anonymous namespace::StandaloneAsync::onComplete(id *this)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = this + 24;
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::__value_func[abi:ne200100](v8, (this + 24));
  v3 = this[8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3321888768;
  v6[2] = ___ZN9realityio12_GLOBAL__N_115StandaloneAsync10onCompleteEv_block_invoke;
  v6[3] = &__block_descriptor_72_ea8_40c63_ZTSNSt3__18functionIFvN9realityio12WrappedRERefIP7REAssetEEEEE_e5_v8__0l;
  v6[4] = this;
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::__value_func[abi:ne200100](v7, v8);
  dispatch_async(v3, v6);

  v4 = this[27];
  this[27] = 0;
  if (v4 == v2)
  {
    (*(*v4 + 4))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 5))(v4);
  }

  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](v7);
  return std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](v8);
}

void sub_2476FC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN9realityio12_GLOBAL__N_115StandaloneAsync29performBlockSyncOnEngineQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(v1 + 184);
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2);
  --*(v1 + 184);
  return result;
}

void *___ZN9realityio12_GLOBAL__N_115StandaloneAsync10onCompleteEv_block_invoke(uint64_t a1)
{
  v4 = *(*(a1 + 32) + 224);
  if (v4)
  {
    RERetain();
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v2 + 48))(v2, &v4);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v4);
}

void sub_2476FC3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::~__func(void *a1)
{
  *a1 = &unk_28595D9E0;
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::~__func(void *a1)
{
  *a1 = &unk_28595D9E0;
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100]((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x24C1A91B0);
}

void sub_2476FC51C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_28595D9E0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::__value_func[abi:ne200100]((a2 + 3), a1 + 24);
}

void sub_2476FC5A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void *std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v6 = v3;
  v7 = v3;
  *a2 = 0;
  if (v3)
  {
    RERetain();
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v4 + 48))(v4, &v7);
  realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v7);
  return realityio::WrappedRERef<REAsset *>::~WrappedRERef(&v6);
}

uint64_t std::__function::__func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__alloc_func<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0,std::allocator<realityio::MaterialXStandalone::generateAsync(REEngine *,std::shared_ptr<realityio::mtlx::NeoDataSource>,std::function<__CFData const* ()(char const*)>,std::function<void ()(realityio::WrappedRERef<REAsset *>)>)::$_0>,void ()(realityio::WrappedRERef<REAsset *>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<void ()(realityio::WrappedRERef<REAsset *>)>::~__value_func[abi:ne200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ___ZN9realityio16AssetLoadTracker5Asset10setTrackerEPS0__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  std::recursive_mutex::lock((v2 + 8));
  v3 = (**v1)(v1);
  *(v1 + 16) = 1;
  ++*(v2 + 96);
  v4 = *(realityio::logObjects(v3) + 16);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    v8 = *(v1 + 8);
    v9 = *(v2 + 96);
    v10 = (*(v2 + 80) - *(v2 + 72)) >> 4;
    v11 = 134218496;
    v12 = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 2048;
    v16 = v10;
    _os_log_debug_impl(&dword_247485000, v4, OS_LOG_TYPE_DEBUG, "AssetLoadTracker::complete @ %p -- assets completed: %d / %zu\n", &v11, 0x1Cu);
  }

  if (*(v2 + 96) == (*(v2 + 80) - *(v2 + 72)) >> 4)
  {
    v6 = *(realityio::logObjects(v5) + 16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_DEFAULT, "AssetLoadTracker::complete - onComplete\n", &v11, 2u);
    }

    *(v2 + 100) = 2;
    (**v2)(v2);
  }

  std::recursive_mutex::unlock((v2 + 8));
  result = *(v1 + 32);
  if (result)
  {
    result = RERelease();
  }

  *(v1 + 32) = 0;
  return result;
}

void realityio::AssetLoadTracker::add(uint64_t a1, __int128 *a2)
{
  std::recursive_mutex::lock((a1 + 8));
  std::vector<std::shared_ptr<realityio::AssetLoadTracker::Asset>>::push_back[abi:ne200100]((a1 + 72), a2);

  std::recursive_mutex::unlock((a1 + 8));
}

void realityio::AssetLoadTracker::loadAssets(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x277D85DE8];
  std::recursive_mutex::lock((a1 + 8));
  *(a1 + 100) = 1;
  v6 = *(realityio::logObjects(v5) + 16);
  RequestAddAsset = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (RequestAddAsset)
  {
    v8 = (*(a1 + 80) - *(a1 + 72)) >> 4;
    LODWORD(v15) = 134217984;
    *(&v15 + 4) = v8;
    _os_log_impl(&dword_247485000, v6, OS_LOG_TYPE_DEFAULT, "AssetLoadTracker::loadAssets -- asset count = %zu\n", &v15, 0xCu);
  }

  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  if (v9 == v10)
  {
    goto LABEL_13;
  }

  do
  {
    v11 = *v9;
    *(*v9 + 24) = a1;
    REAssetGetAssetManager();
    AssetRequest = REAssetManagerCreateAssetRequest();
    if (*(v11 + 32))
    {
      RERelease();
    }

    *(v11 + 32) = AssetRequest;
    *&v15 = MEMORY[0x277D85DD0];
    *(&v15 + 1) = 3221225472;
    v16 = ___ZN9realityio16AssetLoadTracker5Asset10setTrackerEPS0__block_invoke;
    v17 = &__block_descriptor_40_e8_v12__0B8l;
    v18 = v11;
    REAssetLoadRequestSetCompletionHandler();
    REAssetLoadRequestSetLoadAndWaitForResourceSharingClients();
    RequestAddAsset = REAssetLoadRequestAddAsset();
    v9 += 2;
  }

  while (v9 != v10);
  if (*(a1 + 80) == *(a1 + 72))
  {
LABEL_13:
    v14 = *(realityio::logObjects(RequestAddAsset) + 16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_247485000, v14, OS_LOG_TYPE_DEFAULT, "AssetLoadTracker::loadAssets - onComplete due to zero-size asset list\n", &v15, 2u);
    }

    *(a1 + 100) = 2;
    (**a1)(a1);
  }

  else if (*(a1 + 100) != 2 && a3)
  {
    ServiceLocator = REEngineGetServiceLocator();
    MEMORY[0x24C1A4230](ServiceLocator);
    while (*(a1 + 100) == 1)
    {
      REAssetManagerUpdate();
    }
  }

  std::recursive_mutex::unlock((a1 + 8));
}

void realityio::AssetLoadTracker::clear(realityio::AssetLoadTracker *this)
{
  std::recursive_mutex::lock((this + 8));
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](this + 9);
  *(this + 12) = 0;

  std::recursive_mutex::unlock((this + 8));
}

void realityio::mtlx::UsdMtlxRead(RIO_MTLX::Element **a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, pxrInternal__aapl__pxrReserved__::SdfPath *a4)
{
  v604 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v4 = a2;
    v5 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const(a2);
    if (v6 & 1 | v5)
    {
      if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a3))
      {
        if (pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath(a4))
        {
          v7 = v4[1];
          v525 = *v4;
          v526 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
          }

          MEMORY[0x24C1A5DE0](&v592, "Collections");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v527, a3, &v592);
          if ((v592 & 7) != 0)
          {
            atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](&v592, "Looks");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v528, a3, &v592);
          if ((v592 & 7) != 0)
          {
            atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](&v592, "Materials");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v529, a3, &v592);
          if ((v592 & 7) != 0)
          {
            atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](&v592, "NodeGraphs");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v530, a3, &v592);
          if ((v592 & 7) != 0)
          {
            atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          MEMORY[0x24C1A5DE0](&v592, "Shaders");
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v531, a3, &v592);
          if ((v592 & 7) != 0)
          {
            atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          v533[1] = 0;
          v534 = 0;
          v532 = v533;
          v533[0] = 0;
          v535 = 0;
          v536 = 0;
          v537 = v538;
          v538[0] = 0;
          v540[0] = 0;
          v540[1] = 0;
          v538[1] = 0;
          v539 = v540;
          v541 = v542;
          v542[0] = 0;
          v544[0] = 0;
          v544[1] = 0;
          v542[1] = 0;
          v543 = v544;
          v545[0] = 0;
          v544[2] = v545;
          v547[0] = 0;
          v547[1] = 0;
          v545[1] = 0;
          v546 = v547;
          __val = 1;
          v549 = 0;
          v550 = 0;
          LODWORD(v592) = 1;
          *(&v592 + 1) = 0;
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
          *(&v593 + 1) = 0;
          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
          v551 = MEMORY[0x277D86758] + 16;
          if ((BYTE8(v593) & 7) != 0)
          {
            atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
          v8 = *(&v592 + 1);
          if (*(&v592 + 1))
          {
            v8 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
          }

          v10 = *(v592 + 23);
          if (v10 < 0)
          {
            v10 = *(v592 + 8);
          }

          if (v10)
          {
            v11 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4);
            MEMORY[0x24C1A5E00](__src, v592);
            v9 = pxrInternal__aapl__pxrReserved__::UsdStage::SetColorManagementSystem(v11, __src);
            if ((__src[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((__src[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }
          }

          v12 = *(__src[0] + 23);
          if (v12 < 0)
          {
            v12 = *(__src[0] + 1);
          }

          if (v12)
          {
            v13 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4);
            MEMORY[0x24C1A4E40](&v592, __src[0]);
            pxrInternal__aapl__pxrReserved__::UsdStage::SetColorConfiguration(v13, &v592);
            if (SHIBYTE(v594) < 0)
            {
              operator delete(*(&v593 + 1));
            }

            if (SBYTE7(v593) < 0)
            {
              operator delete(v592);
            }
          }

          ActiveColorSpace = RIO_MTLX::Element::getActiveColorSpace(*a1);
          v15 = *(ActiveColorSpace + 23);
          if ((v15 & 0x80u) != 0)
          {
            v15 = ActiveColorSpace[1];
          }

          if (v15)
          {
            v591.__first_ = 0;
            __src[1] = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<std::string>(void)::ti;
            pxrInternal__aapl__pxrReserved__::VtValue::_RemoteTypeInfo<std::string>::_PlaceCopy(__src, ActiveColorSpace);
          }

          v17 = *a1;
          v16 = a1[1];
          if (v16)
          {
            atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
          }

          v502 = v16;
          v18 = RIO_MTLX::EMPTY_STRING(ActiveColorSpace);
          RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::NodeGraph>(v17, v18, &v591);
          first = v591.__first_;
          for (i = v591.__begin_; first != i; first = (first + 16))
          {
            if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
            {
              v22 = (first->first.__r_.__value_.__r.__words[0] + 48);
              if (*(first->first.__r_.__value_.__r.__words[0] + 71) < 0)
              {
                v22 = *v22;
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Read node graph %s\n", v21, v22);
            }

            v24 = first->first.__r_.__value_.__r.__words[0];
            size = first->first.__r_.__value_.__l.__size_;
            __p[0] = first->first.__r_.__value_.__l.__data_;
            __p[1] = size;
            if (size)
            {
              atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            IsValid = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v25);
            if (v24)
            {
              v27 = IsValid;
            }

            else
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
              RIO_MTLX::NodeGraph::getNodeDef(&v555, v24);
              if (v555)
              {
                if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
                {
                  v29 = v555 + 48;
                  if (*(v555 + 71) < 0)
                  {
                    v29 = *v29;
                  }

                  pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Add mtlxNodeDef %s\n", v28, v29);
                }

                v30 = v555;
                v31 = v556;
                if (v556)
                {
                  atomic_fetch_add_explicit(&v556->__shared_owners_, 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v32 = *(&v592 + 1);
                *&v592 = v30;
                *(&v592 + 1) = v31;
                if (v32)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                }

                if (v31)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v31);
                }

                if (size)
                {
                  atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
                  atomic_fetch_add_explicit(&size->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v33 = *(&v593 + 1);
                *&v593 = v24;
                *(&v593 + 1) = size;
                if (v33)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                }

                if (size)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](size);
                }

                v34 = v555;
                v35 = v556;
                if (v556)
                {
                  atomic_fetch_add_explicit(&v556->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v35)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                }
              }

              if (v556)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v556);
              }
            }

            LODWORD(__src[0]) = *v25;
            v36 = v25[1];
            __src[1] = v36;
            if (v36)
            {
              atomic_fetch_add_explicit(v36 + 6, 1uLL, memory_order_relaxed);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v583, v25 + 4);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(v583 + 1, v25 + 5);
            v37 = v25[3];
            *(&v583[0] + 1) = v37;
            if ((v37 & 7) != 0 && (atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *(&v583[0] + 1) &= 0xFFFFFFFFFFFFFFF8;
            }

            std::map<std::string,pxrInternal__aapl__pxrReserved__::TfToken>::map[abi:ne200100](&v583[1], v25 + 4);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v585, v25 + 14);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v585 + 1, v25 + 15);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v585);
            std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(*(&v583[1] + 1));
            if ((BYTE8(v583[0]) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
            if (__src[1])
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
            }

            if (__p[1])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
            }
          }

          *&v592 = &v591;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
          v38 = v502;
          if (v502)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v502);
          }

          v40 = *a1;
          v39 = a1[1];
          if (v39)
          {
            atomic_fetch_add_explicit(v39 + 1, 1uLL, memory_order_relaxed);
          }

          v496 = v39;
          v41 = RIO_MTLX::MATERIAL_TYPE_STRING(v38);
          RIO_MTLX::GraphElement::getNodesOfType(&v578, v40, v41);
          v492 = v40;
          v503 = v578.__r_.__value_.__l.__size_;
          v42 = v578.__r_.__value_.__r.__words[0];
          for (j = v4; v42 != v503; v42 += 2)
          {
            if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
            {
              v44 = &(*v42)[2];
              if (SHIBYTE((*v42)[2].__r_.__value_.__r.__words[2]) < 0)
              {
                v44 = v44->__words[0];
              }

              pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding mtlxMaterial '%s'\n", v43, v44);
            }

            v45 = *v42;
            v46 = v42[1];
            if (v46)
            {
              atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!v552 || (v552[2].__shared_owners_ & 0x800) != 0 || !(*(v551 + 32))(&v551) || (*&v592 = "CoreRealityIO/mtlxToUsdShade.cpp", *(&v592 + 1) = "BeginMaterial", *&v593 = 1357, *(&v593 + 1) = "UsdShadeMaterial realityio::mtlx::(anonymous namespace)::_Context::BeginMaterial(const mx::ConstNodePtr &)", LOBYTE(v594) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper() & 1) != 0))
            {
              if (v46)
              {
                atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v45)
              {
              }

              else
              {
                *&v592 = 0;
              }

              pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(v508, &v529, &v592);
              if ((v592 & 7) != 0)
              {
                atomic_fetch_add_explicit((v592 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              if (v46)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v46);
              }

              pxrInternal__aapl__pxrReserved__::UsdShadeMaterial::Define();
              if (v556 && (v556[2].__shared_owners_ & 0x800) == 0 && (*(v555 + 4))(&v555))
              {
                v47 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v592, &v556, &v557);
                __src[0] = v45;
                __src[1] = v46;
                if (v46)
                {
                  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v46)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v46);
                }

                if ((BYTE8(v593) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
                if (*(&v592 + 1))
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
                }

                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                *(&v583[0] + 1) = 0;
                __src[0] = (MEMORY[0x277D867A8] + 16);
                *&v592 = v45 + 2;
                v48 = std::__tree<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v546, &v45[2].__r_.__value_.__l.__data_, &v592);
                std::string::basic_string[abi:ne200100]<0>(__p, "");
                v49 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>((v48 + 7), &v517, __p);
                if (!v49)
                {
                  operator new();
                }

                v50 = __src[1];
                if (__src[1])
                {
                  atomic_fetch_add_explicit(__src[1] + 6, 1uLL, memory_order_relaxed);
                }

                v51 = *(v49 + 64);
                if (v51)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v51);
                }

                *(v49 + 64) = v50;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v49 + 72, v583);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v49 + 76, v583 + 1);
                pxrInternal__aapl__pxrReserved__::TfToken::operator=((v49 + 80), v583 + 1);
                if (SBYTE7(v575) < 0)
                {
                  operator delete(__p[0]);
                }

                MEMORY[0x24C1A5890](__src);
                v4 = j;
                if (v46)
                {
                  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v52 = v550;
                v549 = v45;
                v550 = v46;
                if (v52)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                }

                v53 = v556;
                if (v556)
                {
                  atomic_fetch_add_explicit(&v556[2], 1uLL, memory_order_relaxed);
                }

                if (v552)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v552);
                }

                v552 = v53;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v553, &v557);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v554, &v557 + 1);
              }

              MEMORY[0x24C1A5510](&v555);
              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v508);
            }

            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
            v572.__r_.__value_.__r.__words[0] = MEMORY[0x277D86758] + 16;
            if (v46)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v46);
            }

            if (v572.__r_.__value_.__l.__size_ && (*(v572.__r_.__value_.__l.__size_ + 57) & 8) == 0 && (v54 = (*(v572.__r_.__value_.__r.__words[0] + 32))(&v572), v54))
            {
              v55 = RIO_MTLX::SURFACE_SHADER_TYPE_STRING(v54);
              v57 = RIO_MTLX::VOLUME_SHADER_TYPE_STRING(v56);
              v59 = RIO_MTLX::DISPLACEMENT_SHADER_TYPE_STRING(v58);
              v61 = RIO_MTLX::LIGHT_SHADER_TYPE_STRING(v60);
              if (v552 && (v552[2].__shared_owners_ & 0x800) == 0 && ((*(v551 + 32))(&v551) & 1) != 0 || (*&v592 = "CoreRealityIO/mtlxToUsdShade.cpp", *(&v592 + 1) = "EndMaterial", *&v593 = 1375, *(&v593 + 1) = "void realityio::mtlx::(anonymous namespace)::_Context::EndMaterial()", LOBYTE(v594) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper() & 1) != 0))
              {
                v62 = v549;
                v63 = v540[0];
                if (!v540[0])
                {
                  goto LABEL_164;
                }

                v64 = v540;
                while (1)
                {
                  while (1)
                  {
                    v65 = v63;
                    if (!std::less<std::string>::operator()[abi:ne200100](&v539, &v62[2].__r_.__value_.__l.__data_, v63 + 4))
                    {
                      break;
                    }

                    v63 = *v65;
                    v64 = v65;
                    if (!*v65)
                    {
                      goto LABEL_164;
                    }
                  }

                  if (!std::less<std::string>::operator()[abi:ne200100](&v539, v65 + 4, &v62[2].__r_.__value_.__l.__data_))
                  {
                    break;
                  }

                  v64 = (v65 + 1);
                  v63 = v65[1];
                  if (!v63)
                  {
                    goto LABEL_164;
                  }
                }

                v67 = *v64;
                if (!*v64)
                {
LABEL_164:
                  operator new();
                }

                v68 = v552;
                if (v552)
                {
                  atomic_fetch_add_explicit(&v552[2], 1uLL, memory_order_relaxed);
                }

                v69 = *(v67 + 64);
                if (v69)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v69);
                }

                *(v67 + 64) = v68;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v67 + 72, &v553);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v67 + 76, &v554);
                v70 = v550;
                v549 = 0;
                v550 = 0;
                if (v70)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                }

                LODWORD(v592) = 1;
                *(&v592 + 1) = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                *(&v593 + 1) = 0;
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                __src[0] = (MEMORY[0x277D86758] + 16);
                v71 = __src[1];
                if (__src[1])
                {
                  atomic_fetch_add_explicit(__src[1] + 6, 1uLL, memory_order_relaxed);
                }

                if (v552)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v552);
                }

                v552 = v71;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v553, v583);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v554, v583 + 1);
                MEMORY[0x24C1A5510](__src);
                if ((BYTE8(v593) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
                if (*(&v592 + 1))
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
                }
              }
            }

            else
            {
              *&v592 = "CoreRealityIO/mtlxToUsdShade.cpp";
              *(&v592 + 1) = "ReadMaterials";
              *&v593 = 2142;
              *(&v593 + 1) = "void realityio::mtlx::(anonymous namespace)::ReadMaterials(mx::ConstDocumentPtr, _Context &)";
              LOBYTE(v594) = 0;
              v66 = &(*v42)[2];
              if (SHIBYTE((*v42)[2].__r_.__value_.__r.__words[2]) < 0)
              {
                v66 = *v66;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v592, "Failed to create material '%s'", v66);
            }

            MEMORY[0x24C1A5510](&v572);
          }

          *&v592 = &v578;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
          v73 = RIO_MTLX::MATERIAL_TYPE_STRING(v72);
          RIO_MTLX::GraphElement::getNodesOfType(&v591, v492, v73);
          v74 = v591.__first_;
          for (k = v591.__begin_; v74 != k; v74 = (v74 + 16))
          {
            if (v556)
            {
              if ((v556[2].__shared_owners_ & 0x800) == 0)
              {
                v76 = (*(v555 + 4))(&v555);
                if (v76)
                {
                  if ((*(v578.__r_.__value_.__r.__words[0] + 23) & 0x8000000000000000) != 0)
                  {
                    if (*(v578.__r_.__value_.__r.__words[0] + 8))
                    {
LABEL_191:
                      if (__p[1] && (*(__p[1] + 57) & 8) == 0 && (*(__p[0] + 4))(__p))
                      {
                        pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(__src, &v556, &v557);
                        pxrInternal__aapl__pxrReserved__::UsdPrim::GetSpecializes(&v592, __src);
                        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v572, __p);
                        MEMORY[0x24C1A5290](&v592, &v572, 1);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v572);
                        if ((BYTE8(v593) & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
                        if (*(&v592 + 1))
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
                        }

                        if ((BYTE8(v583[0]) & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                        if (__src[1])
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                        }

                        if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
                        {
                          v78 = (v74->first.__r_.__value_.__r.__words[0] + 48);
                          if (*(v74->first.__r_.__value_.__r.__words[0] + 71) < 0)
                          {
                            v78 = *v78;
                          }

                          v79 = v578.__r_.__value_.__r.__words[0];
                          if (*(v578.__r_.__value_.__r.__words[0] + 23) < 0)
                          {
                            v79 = *v578.__r_.__value_.__l.__data_;
                          }

                          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Material '%s' inherit from  '%s'\n", v77, v78, v79);
                        }
                      }

                      else
                      {
                        *&v592 = "CoreRealityIO/mtlxToUsdShade.cpp";
                        *(&v592 + 1) = "ReadMaterials";
                        *&v593 = 2162;
                        *(&v593 + 1) = "void realityio::mtlx::(anonymous namespace)::ReadMaterials(mx::ConstDocumentPtr, _Context &)";
                        LOBYTE(v594) = 0;
                        v80 = (v74->first.__r_.__value_.__r.__words[0] + 48);
                        if (*(v74->first.__r_.__value_.__r.__words[0] + 71) < 0)
                        {
                          v80 = *v80;
                        }

                        v81 = v578.__r_.__value_.__r.__words[0];
                        if (*(v578.__r_.__value_.__r.__words[0] + 23) < 0)
                        {
                          v81 = *v578.__r_.__value_.__l.__data_;
                        }

                        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v592, "Material '%s' attempted to inherit from unknown material '%s'", v80, v81);
                      }

                      MEMORY[0x24C1A5510](__p);
                    }
                  }

                  else if (*(v578.__r_.__value_.__r.__words[0] + 23))
                  {
                    goto LABEL_191;
                  }
                }
              }
            }

            MEMORY[0x24C1A5510](&v555);
          }

          *&v592 = &v591;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
          v82 = v496;
          if (v496)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v496);
          }

          v83 = *a1;
          v84 = RIO_MTLX::EMPTY_STRING(v82);
          RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Look>(v83, v84, &v592);
          v85 = v592;
          __src[0] = &v592;
          std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
          if (v85 != *(&v85 + 1))
          {
            v88 = *a1;
            v87 = a1[1];
            if (v87)
            {
              atomic_fetch_add_explicit(v87 + 1, 1uLL, memory_order_relaxed);
            }

            v484 = v87;
            __src[1] = 0;
            __src[0] = 0;
            *&v583[0] = 0;
            v90 = *(v88 + 17);
            v91 = *(v88 + 18);
            if (v90 != v91)
            {
              v92 = 0;
              do
              {
                v93 = *v90;
                v94 = *(*v90 + 47);
                if (v94 >= 0)
                {
                  v95 = *(*v90 + 47);
                }

                else
                {
                  v95 = *(*v90 + 32);
                }

                v96 = byte_27EE53BC7;
                if (byte_27EE53BC7 < 0)
                {
                  v96 = qword_27EE53BB8;
                }

                if (v95 == v96)
                {
                  v97 = v92;
                  if (v94 >= 0)
                  {
                    v98 = (v93 + 24);
                  }

                  else
                  {
                    v98 = *(v93 + 24);
                  }

                  if (byte_27EE53BC7 >= 0)
                  {
                    v99 = &qword_27EE53BB0;
                  }

                  else
                  {
                    v99 = qword_27EE53BB0;
                  }

                  v89 = memcmp(v98, v99, v95);
                  if (v89)
                  {
                    v92 = v97;
                  }

                  else
                  {
                    if (v97 >= *&v583[0])
                    {
                      v101 = (v97 - __src[0]) >> 4;
                      if ((v101 + 1) >> 60)
                      {
                        std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                      }

                      v102 = (*&v583[0] - __src[0]) >> 3;
                      if (v102 <= v101 + 1)
                      {
                        v102 = v101 + 1;
                      }

                      if (*&v583[0] - __src[0] >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v103 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v103 = v102;
                      }

                      *&v594 = __src;
                      if (v103)
                      {
                        std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(__src, v103);
                      }

                      v104 = (16 * v101);
                      *v104 = v93;
                      v105 = v90[1];
                      v104[1] = v105;
                      if (v105)
                      {
                        atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
                      }

                      v106 = v104 + 2;
                      v107 = v104 - (__src[1] - __src[0]);
                      memcpy(v107, __src[0], __src[1] - __src[0]);
                      v108 = __src[0];
                      v109 = *&v583[0];
                      __src[0] = v107;
                      __src[1] = v106;
                      *&v583[0] = 0;
                      *&v593 = v108;
                      *(&v593 + 1) = v109;
                      *&v592 = v108;
                      *(&v592 + 1) = v108;
                      v89 = std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v592);
                      v92 = v106;
                    }

                    else
                    {
                      *v97 = v93;
                      v100 = v90[1];
                      v97[1] = v100;
                      if (v100)
                      {
                        atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
                      }

                      v92 = v97 + 2;
                    }

                    __src[1] = v92;
                  }
                }

                v90 += 2;
              }

              while (v90 != v91);
              v493 = __src[0];
              if (__src[0] != v92)
              {
                v489 = v92;
                do
                {
                  v591.__begin_ = 0;
                  v591.__end_ = 0;
                  v591.__first_ = &v591.__begin_;
                  v556 = 0;
                  v555 = 0;
                  v557 = 0;
                  v110 = *(*v493 + 136);
                  v111 = *(*v493 + 144);
                  if (v110 != v111)
                  {
                    v504 = 0;
                    do
                    {
                      v112 = *v110;
                      v113 = *(*v110 + 47);
                      if (v113 >= 0)
                      {
                        v114 = *(*v110 + 47);
                      }

                      else
                      {
                        v114 = *(*v110 + 32);
                      }

                      v115 = byte_27EE53B97;
                      if (byte_27EE53B97 < 0)
                      {
                        v115 = qword_27EE53B88;
                      }

                      if (v114 == v115)
                      {
                        v116 = v113 >= 0 ? (v112 + 24) : *(v112 + 24);
                        v117 = byte_27EE53B97 >= 0 ? &qword_27EE53B80 : qword_27EE53B80;
                        if (!memcmp(v116, v117, v114))
                        {
                          if (v504 >= v557)
                          {
                            v120 = (v504 - v555) >> 4;
                            if ((v120 + 1) >> 60)
                            {
                              std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                            }

                            v121 = (v557 - v555) >> 3;
                            if (v121 <= v120 + 1)
                            {
                              v121 = v120 + 1;
                            }

                            if (v557 - v555 >= 0x7FFFFFFFFFFFFFF0)
                            {
                              v122 = 0xFFFFFFFFFFFFFFFLL;
                            }

                            else
                            {
                              v122 = v121;
                            }

                            *&v594 = &v555;
                            if (v122)
                            {
                              std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v555, v122);
                            }

                            v123 = (16 * v120);
                            *v123 = v112;
                            v124 = v110[1];
                            v123[1] = v124;
                            if (v124)
                            {
                              atomic_fetch_add_explicit((v124 + 8), 1uLL, memory_order_relaxed);
                            }

                            v119 = (v123 + 2);
                            v125 = v123 - (v556 - v555);
                            memcpy(v125, v555, v556 - v555);
                            v126 = v555;
                            v127 = v557;
                            v555 = v125;
                            v556 = v119;
                            v557 = 0;
                            *&v593 = v126;
                            *(&v593 + 1) = v127;
                            *&v592 = v126;
                            *(&v592 + 1) = v126;
                            std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v592);
                          }

                          else
                          {
                            *v504 = v112;
                            v118 = v110[1];
                            v504[1] = v118;
                            if (v118)
                            {
                              atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
                            }

                            v119 = (v504 + 2);
                          }

                          v504 = &v119->__vftable;
                          v556 = v119;
                        }
                      }

                      v110 += 2;
                    }

                    while (v110 != v111);
                    v128 = v555;
                    if (v555 != v504)
                    {
                      do
                      {
                        __p[1] = 0;
                        *&v575 = 0;
                        __p[0] = &__p[1];
                        memset(&v578, 0, sizeof(v578));
                        v129 = *(*v128 + 136);
                        v130 = *(*v128 + 144);
                        if (v129 != v130)
                        {
                          do
                          {
                            RIO_MTLX::Element::asA<RIO_MTLX::ValueElement>(*v129, &v572);
                            if (v572.__r_.__value_.__r.__words[0])
                            {
                              v131 = v578.__r_.__value_.__l.__size_;
                              if (v578.__r_.__value_.__l.__size_ >= v578.__r_.__value_.__r.__words[2])
                              {
                                v133 = v578.__r_.__value_.__r.__words[0];
                                v134 = v578.__r_.__value_.__l.__size_ - v578.__r_.__value_.__r.__words[0];
                                v135 = (v578.__r_.__value_.__l.__size_ - v578.__r_.__value_.__r.__words[0]) >> 4;
                                v136 = v135 + 1;
                                if ((v135 + 1) >> 60)
                                {
                                  std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                                }

                                v137 = v578.__r_.__value_.__r.__words[2] - v578.__r_.__value_.__r.__words[0];
                                if ((v578.__r_.__value_.__r.__words[2] - v578.__r_.__value_.__r.__words[0]) >> 3 > v136)
                                {
                                  v136 = v137 >> 3;
                                }

                                if (v137 >= 0x7FFFFFFFFFFFFFF0)
                                {
                                  v136 = 0xFFFFFFFFFFFFFFFLL;
                                }

                                *&v594 = &v578;
                                if (v136)
                                {
                                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>>(&v578, v136);
                                }

                                v138 = (v578.__r_.__value_.__l.__size_ - v578.__r_.__value_.__r.__words[0]) >> 4;
                                v139 = (16 * v135);
                                *v139 = *&v572.__r_.__value_.__l.__data_;
                                *&v572.__r_.__value_.__l.__data_ = 0uLL;
                                v132 = 16 * v135 + 16;
                                v140 = &v139[-v138];
                                memcpy(v140, v133, v134);
                                v141 = v578.__r_.__value_.__r.__words[0];
                                v142 = v578.__r_.__value_.__r.__words[2];
                                v578.__r_.__value_.__r.__words[0] = v140;
                                *&v578.__r_.__value_.__r.__words[1] = v132;
                                *&v593 = v141;
                                *(&v593 + 1) = v142;
                                *&v592 = v141;
                                *(&v592 + 1) = v141;
                                std::__split_buffer<std::shared_ptr<realityio::MeshModelDescriptorBuilder::MeshModelDataT>>::~__split_buffer(&v592);
                                v4 = j;
                              }

                              else
                              {
                                *v578.__r_.__value_.__l.__size_ = v572.__r_.__value_.__r.__words[0];
                                *(v131 + 8) = v572.__r_.__value_.__l.__size_;
                                *&v572.__r_.__value_.__l.__data_ = 0uLL;
                                v132 = v131 + 16;
                              }

                              v578.__r_.__value_.__l.__size_ = v132;
                            }

                            if (v572.__r_.__value_.__l.__size_)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v572.__r_.__value_.__l.__size_);
                            }

                            v129 += 2;
                          }

                          while (v129 != v130);
                          v143 = v578.__r_.__value_.__l.__size_;
                          for (m = v578.__r_.__value_.__r.__words[0]; m != v143; m += 2)
                          {
                            v145 = *m;
                            v146 = __p[1];
                            if (!__p[1])
                            {
                              goto LABEL_315;
                            }

                            v147 = &__p[1];
                            while (1)
                            {
                              while (1)
                              {
                                v148 = v146;
                                if (!std::less<std::string>::operator()[abi:ne200100](__p, (v145 + 48), v146 + 4))
                                {
                                  break;
                                }

                                v146 = *v148;
                                v147 = v148;
                                if (!*v148)
                                {
                                  goto LABEL_315;
                                }
                              }

                              if (!std::less<std::string>::operator()[abi:ne200100](__p, v148 + 4, (v145 + 48)))
                              {
                                break;
                              }

                              v147 = (v148 + 1);
                              v146 = v148[1];
                              if (!v146)
                              {
                                goto LABEL_315;
                              }
                            }

                            v149 = *v147;
                            if (!*v147)
                            {
LABEL_315:
                              operator new();
                            }

                            v151 = *m;
                            v150 = m[1];
                            if (v150)
                            {
                              atomic_fetch_add_explicit((v150 + 8), 1uLL, memory_order_relaxed);
                            }

                            v152 = *(v149 + 8);
                            *(v149 + 7) = v151;
                            *(v149 + 8) = v150;
                            if (v152)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
                            }
                          }
                        }

                        *&v592 = &v578;
                        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
                        if (v575)
                        {
                          v153 = *v128;
                          begin = v591.__begin_;
                          if (!v591.__begin_)
                          {
                            goto LABEL_332;
                          }

                          p_begin = &v591.__begin_;
                          while (1)
                          {
                            while (1)
                            {
                              v156 = begin;
                              if (!std::less<std::string>::operator()[abi:ne200100](&v591, (v153 + 48), &begin->second.__r_.__value_.__l.__size_))
                              {
                                break;
                              }

                              begin = v156->first.__r_.__value_.__r.__words[0];
                              p_begin = v156;
                              if (!v156->first.__r_.__value_.__r.__words[0])
                              {
                                goto LABEL_332;
                              }
                            }

                            if (!std::less<std::string>::operator()[abi:ne200100](&v591, &v156->second.__r_.__value_.__l.__size_, (v153 + 48)))
                            {
                              break;
                            }

                            p_begin = &v156->first.__r_.__value_.__l.__size_;
                            begin = v156->first.__r_.__value_.__l.__size_;
                            if (!begin)
                            {
                              goto LABEL_332;
                            }
                          }

                          v159 = *p_begin;
                          if (!*p_begin)
                          {
LABEL_332:
                            operator new();
                          }

                          v160 = &v159[1].first.__r_.__value_.__s.__data_[16];
                          std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(v159[1].first.__r_.__value_.__r.__words[2]);
                          v157 = __p[1];
                          v159[1].first.__r_.__value_.__l.__size_ = __p[0];
                          v159[1].first.__r_.__value_.__r.__words[2] = v157;
                          v161 = v575;
                          v159[1].second.__r_.__value_.__r.__words[0] = v575;
                          v158 = v504;
                          if (v161)
                          {
                            v157[2] = v160;
                            __p[0] = &__p[1];
                            __p[1] = 0;
                            *&v575 = 0;
                            v157 = 0;
                          }

                          else
                          {
                            v159[1].first.__r_.__value_.__l.__size_ = v160;
                          }
                        }

                        else
                        {
                          v157 = __p[1];
                          v158 = v504;
                        }

                        std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(v157);
                        v128 += 16;
                      }

                      while (v128 != v158);
                    }
                  }

                  *&v592 = &v555;
                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
                  if (v591.__end_)
                  {
                    v162 = *v493;
                    v163 = v533[0];
                    if (!v533[0])
                    {
                      goto LABEL_347;
                    }

                    v164 = v533;
                    while (1)
                    {
                      while (1)
                      {
                        v165 = v163;
                        if (!std::less<std::string>::operator()[abi:ne200100](&v532, (v162 + 48), v163 + 4))
                        {
                          break;
                        }

                        v163 = *v165;
                        v164 = v165;
                        if (!*v165)
                        {
                          goto LABEL_347;
                        }
                      }

                      if (!std::less<std::string>::operator()[abi:ne200100](&v532, v165 + 4, (v162 + 48)))
                      {
                        break;
                      }

                      v164 = (v165 + 1);
                      v163 = v165[1];
                      if (!v163)
                      {
                        goto LABEL_347;
                      }
                    }

                    v166 = *v164;
                    if (!*v164)
                    {
LABEL_347:
                      operator new();
                    }

                    v167 = v166 + 64;
                    std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(*(v166 + 64));
                    v168 = v591.__begin_;
                    *(v166 + 56) = v591.__first_;
                    *(v166 + 64) = v168;
                    end = v591.__end_;
                    *(v166 + 72) = v591.__end_;
                    if (end)
                    {
                      v168->first.__r_.__value_.__r.__words[2] = v167;
                      v591.__first_ = &v591.__begin_;
                      v591.__begin_ = 0;
                      v591.__end_ = 0;
                    }

                    else
                    {
                      *(v166 + 56) = v167;
                    }

                    std::vector<std::string>::push_back[abi:ne200100](&v534, (v162 + 48));
                  }

                  std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(v591.__begin_->first.__r_.__value_.__r.__words);
                  v493 += 16;
                }

                while (v493 != v489);
              }
            }

            *&v592 = __src;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
            v170 = v484;
            if (v484)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v484);
            }

            v172 = *a1;
            v171 = a1[1];
            if (v171)
            {
              atomic_fetch_add_explicit(v171 + 1, 1uLL, memory_order_relaxed);
            }

            v478 = v171;
            v173 = RIO_MTLX::EMPTY_STRING(v170);
            v174 = *(v172 + 17);
            v175 = *(v172 + 18);
            __src[1] = 0;
            __src[0] = 0;
            *&v583[0] = 0;
            if (v174 == v175)
            {
              goto LABEL_389;
            }

            v176 = v173;
            do
            {
              v177 = *v174;
              v178 = v174[1];
              if (v178)
              {
                atomic_fetch_add_explicit(&v178->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              RIO_MTLX::Element::asA<RIO_MTLX::Collection>(v177, &v592);
              if (v592)
              {
                v179 = *(v176 + 23);
                v180 = v179 >= 0 ? *(v176 + 23) : v176[1];
                if (!v180)
                {
                  goto LABEL_376;
                }

                v181 = *(v177 + 47);
                v182 = v181;
                if ((v181 & 0x80u) != 0)
                {
                  v181 = *(v177 + 32);
                }

                if (v181 == v180)
                {
                  v185 = *(v177 + 24);
                  v184 = v177 + 24;
                  v183 = v185;
                  v186 = (v182 >= 0 ? v184 : v183);
                  v187 = v179 >= 0 ? v176 : *v176;
                  if (!memcmp(v186, v187, v180))
                  {
LABEL_376:
                    std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](__src, &v592);
                  }
                }
              }

              if (*(&v592 + 1))
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*(&v592 + 1));
              }

              if (v178)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v178);
              }

              v174 += 2;
            }

            while (v174 != v175);
            v188 = __src[0];
            v189 = __src[1];
            if (__src[0] == __src[1])
            {
LABEL_389:
              v485 = 1;
            }

            else
            {
              do
              {
                v190 = *(v188 + 1);
                v591.__first_ = *v188;
                v591.__begin_ = v190;
                if (v190)
                {
                  atomic_fetch_add_explicit(&v190->first.__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                }

                *(&v592 + 1) = 0;
                *&v593 = 0;
                *&v592 = &v592 + 8;
                std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(*(&v592 + 1));
                MEMORY[0x24C1A5470](__p);
                if (v190)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v190);
                }

                v188 += 16;
              }

              while (v188 != v189);
              v485 = 0;
            }

            *&v592 = __src;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
            v192 = RIO_MTLX::EMPTY_STRING(v191);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Look>(v172, v192, &Name);
            v194 = Name;
            v479 = v571;
            if (Name != v571)
            {
LABEL_391:
              v483 = v194;
              v195 = *v194;
              v196 = RIO_MTLX::EMPTY_STRING(v193);
              RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::MaterialAssign>(v195, v196, &v567);
              v197 = v567;
              v198 = v568;
              for (n = v568; ; v198 = n)
              {
                if (v197 == v198)
                {
                  *&v592 = &v567;
                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
                  v194 = v483 + 2;
                  if (v483 + 2 == v479)
                  {
                    break;
                  }

                  goto LABEL_391;
                }

                v199 = *v197;
                v200 = *(v197 + 1);
                if (v200)
                {
                  atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                LODWORD(v592) = 1;
                *(&v592 + 1) = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                *(&v593 + 1) = 0;
                __src[0] = 0;
                pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::UsdAPISchemaBase(&v591, &v592, __src);
                v591.__first_ = (MEMORY[0x277D86730] + 16);
                if ((BYTE8(v593) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
                v201 = *(&v592 + 1);
                if (*(&v592 + 1))
                {
                  v201 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
                }

                v203 = v522;
                if ((*(v522 + 23) & 0x8000000000000000) != 0)
                {
                  if (v522[1])
                  {
LABEL_401:
                    v204 = v542[0];
                    if (!v542[0])
                    {
                      goto LABEL_414;
                    }

                    v205 = v542;
                    do
                    {
                      v206 = v205;
                      v207 = (v204 + 32);
                      v208 = std::less<std::string>::operator()[abi:ne200100](&v541, (v204 + 32), v203);
                      if (v208)
                      {
                        v209 = 8;
                      }

                      else
                      {
                        v209 = 0;
                      }

                      if (!v208)
                      {
                        v205 = v204;
                      }

                      v204 = *(v204 + v209);
                    }

                    while (v204);
                    if (v205 == v542 || (!v208 ? (v210 = v207) : (v210 = (v206 + 4)), std::less<std::string>::operator()[abi:ne200100](&v541, v203, v210)))
                    {
LABEL_414:
                      *&v592 = "CoreRealityIO/mtlxToUsdShade.cpp";
                      *(&v592 + 1) = "AddGeometryReference";
                      *&v593 = 1588;
                      *(&v593 + 1) = "UsdCollectionAPI realityio::mtlx::(anonymous namespace)::_Context::AddGeometryReference(const mx::ConstGeomElementPtr &)";
                      LOBYTE(v594) = 0;
                      v211 = v522;
                      if (*(v522 + 23) < 0)
                      {
                        v211 = *v522;
                      }

                      v4 = j;
                      v556 = 0;
                      v555 = 0;
                      RIO_MTLX::Element::getNamePath(v199, &v555, __src);
                      v212 = __src;
                      if (SBYTE7(v583[0]) < 0)
                      {
                        v212 = __src[0];
                      }

                      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v592, "Unknown collection '%s' in %s", v211, v212);
                      if (SBYTE7(v583[0]) < 0)
                      {
                        operator delete(__src[0]);
                      }

                      if (v556)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v556);
                      }
                    }

                    else
                    {
                      v226 = v205[8];
                      if (v226)
                      {
                        atomic_fetch_add_explicit(&v226[1], 1uLL, memory_order_relaxed);
                      }

                      if (v591.__begin_)
                      {
                        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v591.__begin_);
                      }

                      v591.__begin_ = v226;
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v591.__end_, v205 + 18);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v591.__end_ + 4, v205 + 19);
                      pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v591.__end_cap_.__value_, v205 + 10);
                      v4 = j;
                    }

                    goto LABEL_479;
                  }
                }

                else if (*(v522 + 23))
                {
                  goto LABEL_401;
                }

                v214 = v566[0];
                if ((*(v566[0] + 23) & 0x8000000000000000) != 0)
                {
                  if (v566[0][1])
                  {
LABEL_425:
                    v215 = RIO_MTLX::ARRAY_VALID_SEPARATORS(v213);
                    RIO_MTLX::splitString(&v517, v214, v215);
                    v216 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v518 - v517) >> 3));
                    if (v518 == v517)
                    {
                      v217 = 0;
                    }

                    else
                    {
                      v217 = v216;
                    }

                    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v517, v518, v217, 1);
                    v218 = v517;
                    v219 = v518;
                    if (v517 != v518)
                    {
                      do
                      {
                        v220 = v218 + 1;
                        if (&v218[1] == v219)
                        {
                          v218 = v219;
                          goto LABEL_452;
                        }

                        v221 = std::equal_to<std::string>::operator()[abi:ne200100](&v592, &v218->__r_.__value_.__l.__data_, &v218[1].__r_.__value_.__l.__data_);
                        v218 = v220;
                      }

                      while (!v221);
                      v222 = v220 + 1;
                      v223 = v220 - 1;
                      if (v222 == v219)
                      {
                        p_data = &v223->__r_.__value_.__l.__data_;
                      }

                      else
                      {
                        do
                        {
                          if (std::equal_to<std::string>::operator()[abi:ne200100](&v592, &v223->__r_.__value_.__l.__data_, &v222->__r_.__value_.__l.__data_))
                          {
                            p_data = &v223->__r_.__value_.__l.__data_;
                          }

                          else
                          {
                            p_data = &v223[1].__r_.__value_.__l.__data_;
                            if (SHIBYTE(v223[1].__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(*p_data);
                            }

                            v225 = *&v222->__r_.__value_.__l.__data_;
                            v223[1].__r_.__value_.__r.__words[2] = v222->__r_.__value_.__r.__words[2];
                            *p_data = v225;
                            *(&v222->__r_.__value_.__s + 23) = 0;
                            v222->__r_.__value_.__s.__data_[0] = 0;
                            ++v223;
                          }

                          ++v222;
                        }

                        while (v222 != v219);
                      }

                      v218 = (p_data + 3);
                    }

LABEL_452:
                    if (v218 != v518)
                    {
                      std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(__src, v518, v518, v218);
                      v228 = v227;
                      v229 = v518;
                      while (v229 != v228)
                      {
                        v230 = SHIBYTE(v229[-1].__r_.__value_.__r.__words[2]);
                        --v229;
                        if (v230 < 0)
                        {
                          operator delete(v229->__r_.__value_.__l.__data_);
                        }
                      }

                      v518 = v228;
                    }

                    pxrInternal__aapl__pxrReserved__::TfStringJoin();
                    LODWORD(__src[0]) = 1;
                    __src[1] = 0;
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                    *(&v583[0] + 1) = 0;
                    v564 = 0;
                    pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::UsdAPISchemaBase(&v592, __src, &v564);
                    *&v592 = MEMORY[0x277D86730] + 16;
                    v231 = *std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(&v543, &v577, v508);
                    if (!v231)
                    {
                      operator new();
                    }

                    MEMORY[0x24C1A5470](&v592);
                    if ((BYTE8(v583[0]) & 7) != 0)
                    {
                      atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                    if (__src[1])
                    {
                      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                    }

                    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                    v232 = *(v231 + 80);
                    v555 = (MEMORY[0x277D86728] + 16);
                    v558 = v232;
                    if ((v232 & 7) != 0 && (atomic_fetch_add_explicit((v232 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                    {
                      v558 &= 0xFFFFFFFFFFFFFFF8;
                    }

                    v555 = (MEMORY[0x277D86730] + 16);
                    if (SHIBYTE(v509) < 0)
                    {
                      operator delete(v508[0]);
                    }

                    *&v592 = &v517;
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v592);
                    goto LABEL_470;
                  }
                }

                else if (*(v566[0] + 23))
                {
                  goto LABEL_425;
                }

                LODWORD(v592) = 1;
                *(&v592 + 1) = 0;
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                *(&v593 + 1) = 0;
                __src[0] = 0;
                pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::UsdAPISchemaBase(&v555, &v592, __src);
                v555 = (MEMORY[0x277D86730] + 16);
                if ((BYTE8(v593) & 7) != 0)
                {
                  atomic_fetch_add_explicit((*(&v593 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                }

                pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v593);
                if (*(&v592 + 1))
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v592 + 1));
                }

LABEL_470:
                if (v556 && (v556[2].__shared_owners_ & 0x800) == 0 && (*(v555 + 4))(&v555))
                {
                  v233 = v556;
                  if (v556)
                  {
                    atomic_fetch_add_explicit(&v556[2], 1uLL, memory_order_relaxed);
                  }

                  if (v591.__begin_)
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v591.__begin_);
                  }

                  v591.__begin_ = v233;
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v591.__end_, &v557);
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v591.__end_ + 4, &v557 + 1);
                  pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v591.__end_cap_.__value_, &v558);
                }

                MEMORY[0x24C1A5470](&v555);
LABEL_479:
                v234 = v545[0];
LABEL_480:
                if (!v234)
                {
LABEL_486:
                  operator new();
                }

                while (1)
                {
                  v235 = v234;
                  v236 = v234[4];
                  if (v236 > v199)
                  {
                    v234 = *v235;
                    goto LABEL_480;
                  }

                  if (v236 >= v199)
                  {
                    break;
                  }

                  v234 = v235[1];
                  if (!v234)
                  {
                    goto LABEL_486;
                  }
                }

                v237 = v591.__begin_;
                if (v591.__begin_)
                {
                  atomic_fetch_add_explicit(&v591.__begin_[1], 1uLL, memory_order_relaxed);
                }

                v238 = v235[7];
                if (v238)
                {
                  pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v238);
                }

                v235[7] = v237;
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v235 + 8), &v591.__end_);
                pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v235 + 68, &v591.__end_ + 1);
                pxrInternal__aapl__pxrReserved__::TfToken::operator=(v235 + 9, &v591.__end_cap_.__value_);
                pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                v239 = v235[9];
                v578.__r_.__value_.__r.__words[0] = MEMORY[0x277D86728] + 16;
                v579 = v239;
                if ((v239 & 7) != 0 && (atomic_fetch_add_explicit((v239 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                {
                  v579 &= 0xFFFFFFFFFFFFFFF8;
                }

                v578.__r_.__value_.__r.__words[0] = MEMORY[0x277D86730] + 16;
                MEMORY[0x24C1A5470](&v591);
                MEMORY[0x24C1A5470](&v578);
                if (v200)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v200);
                }

                v197 += 16;
              }
            }

            *&v592 = &Name;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
            v240 = v478;
            if (v478)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v478);
            }

            v523 = 0;
            v524 = 0;
            v522 = &v523;
            v241 = *a1;
            v242 = RIO_MTLX::EMPTY_STRING(v240);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Look>(v241, v242, __p);
            v243 = __p[0];
            v487 = __p[1];
            if (__p[0] != __p[1])
            {
LABEL_501:
              v596 = 0;
              v597 = 0;
              v592 = 0u;
              v593 = 0u;
              v594 = 0u;
              v599 = 0;
              v600 = 0;
              v598 = 0;
              v602 = 0;
              v603 = 0;
              v595 = &v596;
              v601 = &v602;
              v244 = *(v243 + 1);
              __src[0] = *v243;
              __src[1] = v244;
              if (v244)
              {
                atomic_fetch_add_explicit(&v244->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v244)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v244);
              }

              v490 = v243;
              v246 = *v243;
              v247 = RIO_MTLX::EMPTY_STRING(v245);
              RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::MaterialAssign>(v246, v247, &v578);
              v248 = v578.__r_.__value_.__l.__size_;
              v494 = v578.__r_.__value_.__l.__size_;
              for (ii = v578.__r_.__value_.__r.__words[0]; ; ii += 2)
              {
                if (ii == v248)
                {
                  __src[0] = &v578;
                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
                  std::__tree<std::string>::destroy(&v601, v602);
                  __src[0] = &v598;
                  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__src);
                  std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::less<std::shared_ptr<RIO_MTLX::MaterialAssign const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>>>::destroy(v596);
                  __src[0] = &v593 + 8;
                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
                  __src[0] = &v592;
                  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
                  v243 = v490 + 16;
                  if (v490 + 16 == v487)
                  {
                    goto LABEL_553;
                  }

                  goto LABEL_501;
                }

                v585 = 0uLL;
                *__src = 0u;
                memset(v583, 0, sizeof(v583));
                v587 = 0;
                v586 = 0uLL;
                v589 = 0;
                v590 = 0;
                v584 = &v585;
                v588 = &v589;
                v250 = ii[1];
                v572.__r_.__value_.__r.__words[0] = *ii;
                v572.__r_.__value_.__l.__size_ = v250;
                if (v250)
                {
                  atomic_fetch_add_explicit(&v250->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v251 = v555;
                v252 = v556;
                v253 = v556 - v555;
                if (v556 - v555 >= 1)
                {
                  v254 = *(&v586 + 1);
                  if (v587 - *(&v586 + 1) >= v253)
                  {
                    v517 = *(&v586 + 1);
                    v508[0] = *(&v586 + 1);
                    v591.__first_ = &v586;
                    v591.__begin_ = v508;
                    v591.__end_ = &v517;
                    if (v555 == v556)
                    {
                      v257 = *(&v586 + 1);
                    }

                    else
                    {
                      v257 = *(&v586 + 1);
                      do
                      {
                        v258 = v251->std::__shared_count;
                        *(v254 + 16) = v251->__shared_weak_owners_;
                        *v254 = v258;
                        v251->__shared_owners_ = 0;
                        v251->__shared_weak_owners_ = 0;
                        v251->__vftable = 0;
                        v259 = v251[1].std::__shared_count;
                        *(v254 + 40) = v251[1].__shared_weak_owners_;
                        *(v254 + 24) = v259;
                        v251[1].__shared_owners_ = 0;
                        v251[1].__shared_weak_owners_ = 0;
                        v251[1].__vftable = 0;
                        v251 += 2;
                        v254 += 48;
                        v257 += 48;
                      }

                      while (v251 != v252);
                      v517 = v254;
                    }

                    LOBYTE(v591.__end_cap_.__value_) = 1;
                    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,std::string>>,std::pair<std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](&v591);
                    *(&v586 + 1) = v257;
                  }

                  else
                  {
                    v255 = 0xAAAAAAAAAAAAAAABLL * ((*(&v586 + 1) - v586) >> 4) - 0x5555555555555555 * (v253 >> 4);
                    if (v255 > 0x555555555555555)
                    {
                      std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                    }

                    if (0x5555555555555556 * ((v587 - v586) >> 4) > v255)
                    {
                      v255 = 0x5555555555555556 * ((v587 - v586) >> 4);
                    }

                    if (0xAAAAAAAAAAAAAAABLL * ((v587 - v586) >> 4) >= 0x2AAAAAAAAAAAAAALL)
                    {
                      v256 = 0x555555555555555;
                    }

                    else
                    {
                      v256 = v255;
                    }

                    v591.__end_cap_.__value_ = &v586;
                    if (v256)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(&v586, v256);
                    }

                    v260 = 16 * ((*(&v586 + 1) - v586) >> 4);
                    v261 = (v260 + v253);
                    v262 = v260;
                    do
                    {
                      v263 = v251->std::__shared_count;
                      *(v262 + 2) = v251->__shared_weak_owners_;
                      *v262 = v263;
                      v251->__shared_owners_ = 0;
                      v251->__shared_weak_owners_ = 0;
                      v251->__vftable = 0;
                      v264 = v251[1].std::__shared_count;
                      *(v262 + 5) = v251[1].__shared_weak_owners_;
                      *(v262 + 24) = v264;
                      v251[1].__shared_owners_ = 0;
                      v251[1].__shared_weak_owners_ = 0;
                      v251[1].__vftable = 0;
                      v262 += 48;
                      v251 += 2;
                    }

                    while (v262 != v261);
                    memcpy(v261, v254, *(&v586 + 1) - v254);
                    v265 = &v261[*(&v586 + 1) - v254];
                    *(&v586 + 1) = v254;
                    v266 = v254 - v586;
                    v267 = (v260 - (v254 - v586));
                    memcpy(v267, v586, v266);
                    v268 = v586;
                    v269 = v587;
                    *&v586 = v267;
                    *(&v586 + 1) = v265;
                    v587 = 0;
                    v591.__end_ = v268;
                    v591.__end_cap_.__value_ = v269;
                    v591.__begin_ = v268;
                    v591.__first_ = v268;
                    std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(&v591);
                    v4 = j;
                  }
                }

                v591.__first_ = &v555;
                std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v591);
                if (v250)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v250);
                }

                v271 = *ii;
                v270 = ii[1];
                if (v270)
                {
                  atomic_fetch_add_explicit(&v270->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v272 = v523;
LABEL_533:
                if (!v272)
                {
LABEL_540:
                  operator new();
                }

                while (1)
                {
                  v273 = v272;
                  v274 = *(v272 + 4);
                  if (v271 < v274)
                  {
                    v272 = v273->__begin_;
                    goto LABEL_533;
                  }

                  if (v274 >= v271)
                  {
                    break;
                  }

                  v272 = v273->__end_;
                  if (!v272)
                  {
                    goto LABEL_540;
                  }
                }

                v275 = v273;
                std::vector<std::string>::__vdeallocate(v273 + 2);
                *&v273[2].__begin_ = *__src;
                v277 = &v273[3].__begin_;
                v276 = v273[3].__begin_;
                v273[2].__end_cap_.__value_ = *&v583[0];
                *&v583[0] = 0;
                __src[1] = 0;
                __src[0] = 0;
                if (v276)
                {
                  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::clear[abi:ne200100](&v273[3]);
                  operator delete(*v277);
                  *v277 = 0;
                  v273[3].__end_ = 0;
                  v273[3].__end_cap_.__value_ = 0;
                }

                p_end = &v273[4].__end_;
                v278 = v275[4].__end_;
                *&v275[3].__begin_ = *(v583 + 8);
                v275[3].__end_cap_.__value_ = *(&v583[1] + 1);
                memset(v583 + 8, 0, 24);
                std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::less<std::shared_ptr<RIO_MTLX::MaterialAssign const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>>>::destroy(v278);
                v280 = v585;
                v275[4].__begin_ = v584;
                v275[4].__end_ = v280;
                v281 = *(&v585 + 1);
                v275[4].__end_cap_.__value_ = *(&v585 + 1);
                if (v281)
                {
                  v280->__r_.__value_.__r.__words[2] = p_end;
                  v584 = &v585;
                  v585 = 0uLL;
                }

                else
                {
                  v275[4].__begin_ = p_end;
                }

                std::vector<std::pair<std::string,std::string>>::__vdeallocate(&v275[5]);
                *&v275[5].__begin_ = v586;
                v283 = v275[6].__end_;
                v282 = &v275[6].__end_;
                *(v282 - 2) = &v587->first;
                v587 = 0;
                v586 = 0uLL;
                std::__tree<std::string>::destroy((v282 - 1), v283);
                v284 = v589;
                *(v282 - 1) = v588;
                *v282 = v284;
                v285 = v590;
                v282[1] = v590;
                if (v285)
                {
                  break;
                }

                *(v282 - 1) = v282;
                if (v270)
                {
                  goto LABEL_548;
                }

LABEL_549:
                std::__tree<std::string>::destroy(&v588, v284);
                v591.__first_ = &v586;
                std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v591);
                std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::less<std::shared_ptr<RIO_MTLX::MaterialAssign const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>>>::destroy(v585);
                v591.__first_ = (v583 + 8);
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v591);
                v591.__first_ = __src;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v591);
                v248 = v494;
              }

              v284->__r_.__value_.__r.__words[2] = v282;
              v284 = 0;
              v588 = &v589;
              v589 = 0;
              v590 = 0;
              if (!v270)
              {
                goto LABEL_549;
              }

LABEL_548:
              std::__shared_weak_count::__release_shared[abi:ne200100](v270);
              v284 = v589;
              goto LABEL_549;
            }

LABEL_553:
            *&v592 = __p;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v592);
            v592 = 0u;
            v593 = 0u;
            v594 = 0u;
            v595 = &v596;
            v596 = 0;
            v597 = 0;
            v598 = 0;
            v599 = 0;
            v600 = 0;
            v602 = 0;
            v603 = 0;
            v601 = &v602;
            std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v592, v534, v535, 0xAAAAAAAAAAAAAAABLL * ((v535 - v534) >> 3));
            v287 = v522;
            if (v522 != &v523)
            {
              do
              {
                v288 = v596;
                if (!v596)
                {
LABEL_561:
                  operator new();
                }

                v289 = v287[4];
                while (1)
                {
                  while (1)
                  {
                    v290 = v288;
                    v291 = v288[4];
                    if (v291 <= v289)
                    {
                      break;
                    }

                    v288 = *v290;
                    if (!*v290)
                    {
                      goto LABEL_561;
                    }
                  }

                  if (v291 >= v289)
                  {
                    break;
                  }

                  v288 = v290[1];
                  if (!v288)
                  {
                    goto LABEL_561;
                  }
                }

                if (*(__src[0] + 23) < 0)
                {
                  std::string::__init_copy_ctor_external(&v591, *__src[0], *(__src[0] + 1));
                }

                else
                {
                  v292 = *__src[0];
                  v591.__end_ = *(__src[0] + 2);
                  *&v591.__first_ = v292;
                }

                v293 = v594;
                if (v594 >= *(&v594 + 1))
                {
                  v296 = (v594 - *(&v593 + 1)) >> 4;
                  v297 = v296 + 1;
                  if ((v296 + 1) >> 60)
                  {
                    std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
                  }

                  v298 = *(&v594 + 1) - *(&v593 + 1);
                  if ((*(&v594 + 1) - *(&v593 + 1)) >> 3 > v297)
                  {
                    v297 = v298 >> 3;
                  }

                  if (v298 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v299 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v299 = v297;
                  }

                  if (v299)
                  {
                    if (!(v299 >> 60))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v300 = 16 * v296;
                  v301 = *(v287 + 2);
                  *(16 * v296) = v301;
                  if (*(&v301 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v301 + 1) + 8), 1uLL, memory_order_relaxed);
                  }

                  v295 = v300 + 16;
                  v302 = *(&v593 + 1);
                  v303 = (v300 - (v594 - *(&v593 + 1)));
                  v286 = memcpy(v303, *(&v593 + 1), v594 - *(&v593 + 1));
                  *(&v593 + 1) = v303;
                  v594 = v295;
                  if (v302)
                  {
                    operator delete(v302);
                  }
                }

                else
                {
                  *v594 = v287[4];
                  v294 = v287[5];
                  *(v293 + 8) = v294;
                  if (v294)
                  {
                    atomic_fetch_add_explicit((v294 + 8), 1uLL, memory_order_relaxed);
                  }

                  v295 = v293 + 16;
                }

                *&v594 = v295;
                if (v287[15] != v287[16])
                {
                  operator new();
                }

                if (SHIBYTE(v591.__end_) < 0)
                {
                  operator delete(v591.__first_);
                }

                v304 = v287[1];
                if (v304)
                {
                  do
                  {
                    v305 = v304;
                    v304 = *v304;
                  }

                  while (v304);
                }

                else
                {
                  do
                  {
                    v305 = v287[2];
                    v306 = *v305 == v287;
                    v287 = v305;
                  }

                  while (!v306);
                }

                v287 = v305;
              }

              while (v305 != &v523);
            }

            v523 = 0;
            v524 = 0;
            v522 = &v523;
            v498 = *(&v593 + 1);
            for (jj = v594; v498 != jj; v4 = j)
            {
              if (*(__src[0] + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v578, *__src[0], *(__src[0] + 1));
              }

              else
              {
                v308 = *__src[0];
                v578.__r_.__value_.__r.__words[2] = *(__src[0] + 2);
                *&v578.__r_.__value_.__l.__data_ = v308;
              }

              memset(&v572, 0, sizeof(v572));
              std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v572, v592, *(&v592 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v592 + 1) - v592) >> 3));
              v309 = v572.__r_.__value_.__l.__size_;
              v495 = v572.__r_.__value_.__l.__size_;
              for (kk = v572.__r_.__value_.__r.__words[0]; kk != v309; kk += 24)
              {
                v312 = *VariantSelections;
                v505 = VariantSelections + 1;
                if (*VariantSelections != VariantSelections + 1)
                {
                  do
                  {
                    v313 = v547[0];
                    if (v547[0])
                    {
                      v314 = v547;
                      do
                      {
                        v315 = v314;
                        v316 = v313 + 4;
                        v317 = std::less<std::string>::operator()[abi:ne200100](&v546, v313 + 4, &v578.__r_.__value_.__l.__data_);
                        v318 = v317;
                        if (!v317)
                        {
                          v314 = v313;
                        }

                        v313 = v313[v318];
                      }

                      while (v313);
                      if (v314 != v547)
                      {
                        v319 = (v317 ? v315 + 4 : v316);
                        if (!std::less<std::string>::operator()[abi:ne200100](&v546, &v578.__r_.__value_.__l.__data_, v319))
                        {
                          v320 = v533[0];
                          if (v533[0])
                          {
                            v321 = v533;
                            do
                            {
                              v322 = v321;
                              v323 = v320 + 4;
                              v324 = std::less<std::string>::operator()[abi:ne200100](&v532, v320 + 4, kk);
                              v325 = v324;
                              if (!v324)
                              {
                                v321 = v320;
                              }

                              v320 = v320[v325];
                            }

                            while (v320);
                            if (v321 != v533)
                            {
                              v326 = (v324 ? v322 + 4 : v323);
                              if (!std::less<std::string>::operator()[abi:ne200100](&v532, kk, v326))
                              {
                                v329 = v321[8];
                                v327 = v321 + 8;
                                v328 = v329;
                                if (v329)
                                {
                                  v330 = v327;
                                  do
                                  {
                                    v331 = std::less<std::string>::operator()[abi:ne200100]((v327 - 1), (v328 + 32), v312 + 7);
                                    if (v331)
                                    {
                                      v332 = 8;
                                    }

                                    else
                                    {
                                      v332 = 0;
                                    }

                                    if (!v331)
                                    {
                                      v330 = v328;
                                    }

                                    v328 = *(v328 + v332);
                                  }

                                  while (v328);
                                  if (v330 != v327 && !std::less<std::string>::operator()[abi:ne200100]((v327 - 1), v312 + 7, v330 + 4))
                                  {
                                    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(__src, &__p[1], &v575);
                                    pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSet();
                                    if ((BYTE8(v583[0]) & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                                    if (__src[1])
                                    {
                                      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                                    }

                                    if (pxrInternal__aapl__pxrReserved__::UsdVariantSet::AddVariant())
                                    {
                                      pxrInternal__aapl__pxrReserved__::UsdVariantSet::SetVariantSelection();
                                      v517 = 0;
                                      v518 = 0;
                                      pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantEditContext();
                                      MEMORY[0x24C1A51B0](__src, &v591);
                                      pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(&v591.__end_cap_.std::__compressed_pair_elem<std::allocator<std::pair<std::string, std::string>> &, 1, false>);
                                      value = v591.__end_cap_.__value_;
                                      if (v591.__end_cap_.__value_ && atomic_fetch_add_explicit(&v591.__end_cap_.__value_->first.__r_.__value_.__r.__words[1], 0xFFFFFFFF, memory_order_release) == 1)
                                      {
                                        (*(value->first.__r_.__value_.__r.__words[0] + 8))(value);
                                      }

                                      v334 = v591.__begin_;
                                      if (v591.__begin_ && atomic_fetch_add_explicit(&v591.__begin_->first.__r_.__value_.__r.__words[1], 0xFFFFFFFF, memory_order_release) == 1)
                                      {
                                        (*(v334->first.__r_.__value_.__r.__words[0] + 8))(v334);
                                      }

                                      v335 = v518;
                                      if (v518 && atomic_fetch_add_explicit(&v518->__r_.__value_.__r.__words[1], 0xFFFFFFFF, memory_order_release) == 1)
                                      {
                                        (*(v335->__r_.__value_.__r.__words[0] + 8))(v335);
                                      }

                                      std::string::basic_string[abi:ne200100]<0>(&v591, "");
                                      v338 = v314[8];
                                      v337 = (v314 + 8);
                                      v336 = v338;
                                      if (!v338)
                                      {
                                        goto LABEL_659;
                                      }

                                      v339 = v337;
                                      do
                                      {
                                        v340 = std::less<std::string>::operator()[abi:ne200100]((v337 - 1), v336 + 4, &v591.__first_);
                                        v341 = v340;
                                        if (!v340)
                                        {
                                          v339 = v336;
                                        }

                                        v336 = v336[v341];
                                      }

                                      while (v336);
                                      if (v339 == v337 || std::less<std::string>::operator()[abi:ne200100]((v337 - 1), &v591.__first_, v339 + 4))
                                      {
LABEL_659:
                                        v339 = v337;
                                      }

                                      if (SHIBYTE(v591.__end_) < 0)
                                      {
                                        operator delete(v591.__first_);
                                      }

                                      if (v337 != v339)
                                      {
                                        v342 = v330[7];
                                        v343 = v330 + 8;
                                        if (v342 != v343)
                                        {
                                          do
                                          {
                                            v344 = v342[8];
                                            v517 = v342[7];
                                            v518 = v344;
                                            if (v344)
                                            {
                                              atomic_fetch_add_explicit(&v344->__r_.__value_.__l.__size_, 1uLL, memory_order_relaxed);
                                            }

                                            if ((v591.__end_cap_.__value_ & 7) != 0)
                                            {
                                              atomic_fetch_add_explicit((v591.__end_cap_.__value_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                            }

                                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591.__end_);
                                            if (v591.__begin_)
                                            {
                                              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v591.__begin_);
                                            }

                                            if (v518)
                                            {
                                              std::__shared_weak_count::__release_shared[abi:ne200100](v518);
                                            }

                                            v345 = v342[1];
                                            if (v345)
                                            {
                                              do
                                              {
                                                v346 = v345;
                                                v345 = *v345;
                                              }

                                              while (v345);
                                            }

                                            else
                                            {
                                              do
                                              {
                                                v346 = v342[2];
                                                v306 = *v346 == v342;
                                                v342 = v346;
                                              }

                                              while (!v306);
                                            }

                                            v342 = v346;
                                          }

                                          while (v346 != v343);
                                        }
                                      }

                                      MEMORY[0x24C1A51C0](__src);
                                      pxrInternal__aapl__pxrReserved__::UsdVariantSet::ClearVariantSelection(&v555);
                                    }

                                    else
                                    {
                                      __src[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
                                      __src[1] = "AddMaterialVariant";
                                      *&v583[0] = 1556;
                                      *(&v583[0] + 1) = "void realityio::mtlx::(anonymous namespace)::_Context::AddMaterialVariant(const std::string &, const VariantSetName &, const VariantName &) const";
                                      LOBYTE(v583[1]) = 0;
                                      if (*(v312 + 79) >= 0)
                                      {
                                        v347 = (v312 + 7);
                                      }

                                      else
                                      {
                                        v347 = v312[7];
                                      }

                                      if (*(kk + 23) >= 0)
                                      {
                                        v348 = kk;
                                      }

                                      else
                                      {
                                        v348 = *kk;
                                      }

                                      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v591, __p);
                                      Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v591);
                                      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__src, 1, "Failed to author material variant '%s' in variant set '%s' on <%s>", v347, v348, Text);
                                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591);
                                    }

                                    if (v560 < 0)
                                    {
                                      operator delete(v559);
                                    }

                                    if ((v558 & 7) != 0)
                                    {
                                      atomic_fetch_add_explicit((v558 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                                    }

                                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v557);
                                    if (v556)
                                    {
                                      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v556);
                                    }

                                    MEMORY[0x24C1A5510](__p);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }

                    v350 = v312[1];
                    if (v350)
                    {
                      do
                      {
                        v351 = v350;
                        v350 = *v350;
                      }

                      while (v350);
                    }

                    else
                    {
                      do
                      {
                        v351 = v312[2];
                        v306 = *v351 == v312;
                        v312 = v351;
                      }

                      while (!v306);
                    }

                    v312 = v351;
                  }

                  while (v351 != v505);
                }

                v309 = v495;
              }

              __src[0] = &v572;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
              if (SHIBYTE(v578.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v578.__r_.__value_.__l.__data_);
              }

              v498 += 2;
            }

            MEMORY[0x24C1A5DE0](__src, "Looks");
            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v521, a3, __src);
            if ((__src[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((__src[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            v352 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4);
            __src[0] = 0;
            pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v517, v352, a4, __src);
            if ((__src[0] & 7) != 0)
            {
              atomic_fetch_add_explicit((__src[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSets(__src, &v517);
            std::string::basic_string[abi:ne200100]<0>(&v591, "LookVariant");
            pxrInternal__aapl__pxrReserved__::UsdVariantSets::AddVariantSet();
            if (SHIBYTE(v591.__end_) < 0)
            {
              operator delete(v591.__first_);
            }

            if ((BYTE8(v583[0]) & 7) != 0)
            {
              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
            v353 = __src[1];
            if (__src[1])
            {
              v353 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
            }

            v354 = *a1;
            v355 = RIO_MTLX::EMPTY_STRING(v353);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Look>(v354, v355, &v515);
            v356 = v515;
            v486 = v516;
            if (v515 != v516)
            {
              do
              {
                v512 = 0;
                v513 = 0;
                v514 = 0;
                __src[1] = 0;
                *&v583[0] = 0;
                __src[0] = &__src[1];
                v357 = v356;
                RIO_MTLX::Element::getDocument(&v591, *v356);
                v358 = *v357;
                v359 = v357[1];
                v488 = v357;
                __p[0] = *v357;
                __p[1] = v359;
                if (v359)
                {
                  atomic_fetch_add_explicit(v359 + 1, 1uLL, memory_order_relaxed);
                }

                while (v358)
                {
                  v360 = __src[1];
LABEL_717:
                  if (!v360)
                  {
LABEL_723:
                    operator new();
                  }

                  while (1)
                  {
                    v361 = v360;
                    v362 = v360[4];
                    if (v362 > v358)
                    {
                      v360 = *v361;
                      goto LABEL_717;
                    }

                    if (v362 >= v358)
                    {
                      break;
                    }

                    v360 = v361[1];
                    if (!v360)
                    {
                      goto LABEL_723;
                    }
                  }

                  v363 = std::vector<std::shared_ptr<RIO_MTLX::Element>>::push_back[abi:ne200100](&v512, __p);
                  v364 = v591.__first_;
                  v365 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(__p[0] + 20, &qword_27EE53970);
                  if (v365)
                  {
                    v366 = (v365 + 40);
                  }

                  else
                  {
                    v365 = RIO_MTLX::EMPTY_STRING(0);
                    v366 = v365;
                  }

                  v367 = *(v366 + 23);
                  if ((v367 & 0x80u) != 0)
                  {
                    v367 = v366[1];
                  }

                  if (!v367)
                  {
                    v366 = RIO_MTLX::EMPTY_STRING(v365);
                  }

                  v368 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v364[2].first.__r_.__value_.__r.__words, v366);
                  v369 = v368;
                  if (v368)
                  {
                    v370 = v368[5];
                    v371 = v369[6];
                    if (v371)
                    {
                      atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v370)
                    {
                      v372 = 0;
                      if (v370)
                      {
                        v373 = 0;
                      }

                      else
                      {
                        v373 = v371;
                      }

                      if (v371 && v370)
                      {
                        atomic_fetch_add_explicit(&v371->__shared_owners_, 1uLL, memory_order_relaxed);
                        v372 = v371;
                      }

                      else
                      {
                        v371 = v373;
                      }
                    }

                    else
                    {
                      v372 = 0;
                    }
                  }

                  else
                  {
                    v371 = 0;
                    v372 = 0;
                    v370 = 0;
                  }

                  v374 = __p[1];
                  __p[0] = v370;
                  __p[1] = v372;
                  if (v374)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v374);
                  }

                  if (v371)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v371);
                  }

                  v358 = __p[0];
                }

                if (__p[1])
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
                }

                v375 = v512;
                if (v512 != v513)
                {
                  v376 = v513 - 16;
                  if (v513 - 16 > v512)
                  {
                    do
                    {
                      v377 = *v375;
                      *v375 = *v376;
                      *v376 = v377;
                      v378 = *(v375 + 1);
                      *(v375 + 1) = *(v376 + 1);
                      *(v376 + 1) = v378;
                      v375 += 16;
                      v376 -= 16;
                    }

                    while (v375 < v376);
                  }
                }

                if (v591.__begin_)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v591.__begin_);
                }

                std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(__src[1]);
                v379 = v512;
                v380 = v513;
                v501 = v513;
                while (v379 != v380)
                {
                  v506 = v379;
                  v381 = *v379;
                  if (*(v381 + 71) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v511, *(v381 + 48), *(v381 + 56));
                  }

                  else
                  {
                    v511 = *(v381 + 48);
                  }

                  v382 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(v4);
                  MEMORY[0x24C1A5E00](&v591, &v511);
                  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(__src, &v521, &v591);
                  __p[0] = 0;
                  pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(v508, v382, __src, __p);
                  if ((__p[0] & 7) != 0)
                  {
                    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__src);
                  if ((v591.__first_ & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v591.__first_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  if ((pxrInternal__aapl__pxrReserved__::UsdPrim::HasAuthoredReferences(v508) & 1) == 0)
                  {
                    v383 = *(v506 + 1);
                    v507 = *v506;
                    if (v383)
                    {
                      atomic_fetch_add_explicit(&v383->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if ((atomic_load_explicit(&qword_27EE537C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE537C0))
                    {
                      MEMORY[0x24C1A5DE0](&unk_27EE537B8, "Materials");
                      __cxa_guard_release(&qword_27EE537C0);
                    }

                    __src[0] = v507;
                    __src[1] = v383;
                    if (v383)
                    {
                      atomic_fetch_add_explicit(&v383->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v383)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v383);
                    }

                    v385 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v507 + 20, &qword_27EE53970);
                    if (v385)
                    {
                      v386 = (v385 + 40);
                    }

                    else
                    {
                      v385 = RIO_MTLX::EMPTY_STRING(0);
                      v386 = v385;
                    }

                    v387 = *(v386 + 23);
                    if ((v387 & 0x80u) == 0)
                    {
                      v388 = *(v386 + 23);
                    }

                    else
                    {
                      v388 = v386[1];
                    }

                    if (v388)
                    {
                      if ((v387 & 0x80) == 0)
                      {
                        goto LABEL_782;
                      }

LABEL_785:
                      if (v386[1])
                      {
                        goto LABEL_786;
                      }
                    }

                    else
                    {
                      v386 = RIO_MTLX::EMPTY_STRING(v385);
                      v387 = *(v386 + 23);
                      if ((v387 & 0x80) != 0)
                      {
                        goto LABEL_785;
                      }

LABEL_782:
                      if (v387)
                      {
LABEL_786:
                        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v591, v508);
                        pxrInternal__aapl__pxrReserved__::SdfPath::GetParentPath(__src, &v591);
                        pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v578, __src, __p);
                        if ((__p[0] & 7) != 0)
                        {
                          atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__src);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591);
                        pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(__src, v508);
                        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v591, 0.0, 1.0);
                        pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
                        if ((BYTE8(v583[0]) & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                        if (__src[1])
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v578);
                      }
                    }

                    if ((v485 & 1) == 0)
                    {
                      pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(__src, v508);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(__p, &v527);
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(__p + 1, &v527 + 1);
                      pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v591, 0.0, 1.0);
                      pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
                      if ((BYTE8(v583[0]) & 7) != 0)
                      {
                        atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                      if (__src[1])
                      {
                        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                      }
                    }

                    pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(__src, v508);
                    v389 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(__src);
                    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(__p, v508);
                    pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v591, __p, &unk_27EE537B8);
                    v572.__r_.__value_.__r.__words[0] = 0;
                    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&v578, v389, &v591, &v572);
                    if ((v572.__r_.__value_.__s.__data_[0] & 7) != 0)
                    {
                      atomic_fetch_add_explicit((v572.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__p);
                    v390 = __src[1];
                    if (__src[1] && atomic_fetch_add_explicit(__src[1] + 2, 0xFFFFFFFF, memory_order_release) == 1)
                    {
                      v390 = (*(*v390 + 8))(v390);
                    }

                    v499 = v383;
                    *&v577.__r_.__value_.__r.__words[1] = 0uLL;
                    v577.__r_.__value_.__r.__words[0] = &v577.__r_.__value_.__l.__size_;
                    v391 = RIO_MTLX::EMPTY_STRING(v390);
                    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::MaterialAssign>(v507, v391, __src);
                    v392 = __src[0];
                    v393 = __src[1];
                    while (v392 != v393)
                    {
                      v394 = *v392;
                      v395 = v392[1];
                      if (v395)
                      {
                        atomic_fetch_add_explicit(&v395->__shared_owners_, 1uLL, memory_order_relaxed);
                      }

                      if (v394)
                      {
                        v396 = __p[0];
                      }

                      else
                      {
                        v396 = 0;
                        __p[0] = 0;
                      }

                      v397 = *std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__find_equal<pxrInternal__aapl__pxrReserved__::TfToken>(&v577, &v591, v396);
                      if (!v397)
                      {
                        operator new();
                      }

                      *(v397 + 40) = 0;
                      if ((__p[0] & 7) != 0)
                      {
                        atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      if (v395)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v395);
                      }

                      v392 += 2;
                    }

                    v591.__first_ = __src;
                    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v591);
                    UsdPrimAllPrimsPredicate = pxrInternal__aapl__pxrReserved__::GetUsdPrimAllPrimsPredicate(v398);
                    v401 = *UsdPrimAllPrimsPredicate;
                    v400 = *(UsdPrimAllPrimsPredicate + 8);
                    v402 = *(UsdPrimAllPrimsPredicate + 16);
                    if ((pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL() & 1) == 0 && ((v401 & 0x2000) != 0 || (v400 & 0x2000) == 0))
                    {
                      v401 |= 0x2000uLL;
                      v400 &= ~0x2000uLL;
                    }

                    v591.__first_ = v401;
                    v591.__begin_ = v400;
                    v591.__end_ = v402;
                    pxrInternal__aapl__pxrReserved__::UsdPrim::_MakeSiblingRange(&v578, &v591, __src);
                    v591.__first_ = __src[0];
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v591.__begin_, &__src[1]);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&v591.__begin_ + 1, &__src[1] + 1);
                    *&v591.__end_ = v583[0];
                    __p[0] = *(&v583[1] + 1);
                    v591.__end_cap_.__value_ = *&v583[1];
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p[1], &v584);
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(&__p[1] + 1, &v584 + 1);
                    v575 = v585;
                    v576 = v586;
                    v4 = j;
                    while (v591.__first_ != __p[0] || v591.__begin_ != __p[1] || !pxrInternal__aapl__pxrReserved__::operator==(&v591.__end_, &v575))
                    {
                      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(&v572, &v591);
                      Name = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(&v572);
                      *(std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&v577, *Name, &Name) + 40) = 1;
                      if ((v573 & 7) != 0)
                      {
                        atomic_fetch_add_explicit((v573 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                      }

                      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v572.__r_.__value_.__r.__words[2]);
                      if (v572.__r_.__value_.__l.__size_)
                      {
                        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v572.__r_.__value_.__l.__size_);
                      }

                      pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(&v591);
                    }

                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__p[1]);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591.__begin_);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v584);
                    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__src[1]);
                    pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Apply();
                    PropertyOrder = pxrInternal__aapl__pxrReserved__::UsdPrim::GetPropertyOrder(&Name, v508);
                    v568 = 0;
                    v567 = 0;
                    v569 = 0;
                    v404 = RIO_MTLX::EMPTY_STRING(PropertyOrder);
                    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::MaterialAssign>(v507, v404, v566);
                    v406 = v566[0];
                    v407 = v566[1];
                    while (2)
                    {
                      if (v406 == v407)
                      {
                        __src[0] = v566;
                        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
                        v459 = v568;
                        if (v567 != v568)
                        {
                          v460 = Name;
                          v461 = v571;
                          v462 = v571 - Name;
                          v463 = v571 - Name;
                          if (v463 >= 1)
                          {
                            if (v569 - v568 >= v462)
                            {
                              if (Name == v571)
                              {
                                v467 = v568;
                              }

                              else
                              {
                                v467 = v568;
                                do
                                {
                                  v468 = *v460;
                                  *v459 = *v460;
                                  if ((v468 & 7) != 0 && (atomic_fetch_add_explicit((v468 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                                  {
                                    *v459 &= 0xFFFFFFFFFFFFFFF8;
                                  }

                                  ++v460;
                                  v459 += 8;
                                  v467 += 8;
                                }

                                while (v460 != v461);
                              }

                              v568 = v467;
                            }

                            else
                            {
                              v464 = v463 + ((v568 - v567) >> 3);
                              if (v464 >> 61)
                              {
                                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__throw_length_error[abi:ne200100]();
                              }

                              v465 = v569 - v567;
                              if ((v569 - v567) >> 2 > v464)
                              {
                                v464 = v465 >> 2;
                              }

                              if (v465 >= 0x7FFFFFFFFFFFFFF8)
                              {
                                v466 = 0x1FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v466 = v464;
                              }

                              *&v583[1] = &v567;
                              if (v466)
                              {
                                std::__allocate_at_least[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>(&v567, v466);
                              }

                              v469 = (8 * ((v568 - v567) >> 3));
                              __src[0] = 0;
                              __src[1] = v469;
                              *(&v583[0] + 1) = 0;
                              v470 = v469 + v462;
                              do
                              {
                                v471 = *v460;
                                *v469 = *v460;
                                if ((v471 & 7) != 0 && (atomic_fetch_add_explicit((v471 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                                {
                                  *v469 &= 0xFFFFFFFFFFFFFFF8;
                                }

                                ++v469;
                                ++v460;
                                v462 -= 8;
                              }

                              while (v462);
                              *&v583[0] = v470;
                              std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__swap_out_circular_buffer(&v567, __src, v459);
                              std::__split_buffer<pxrInternal__aapl__pxrReserved__::TfToken>::~__split_buffer(__src);
                            }
                          }

                          pxrInternal__aapl__pxrReserved__::UsdPrim::SetPropertyOrder(v508, &v567);
                        }

                        __src[0] = &v567;
                        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](__src);
                        __src[0] = &Name;
                        std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__destroy_vector::operator()[abi:ne200100](__src);
                        MEMORY[0x24C1A5AA0](&v591);
                        std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::destroy(v577.__r_.__value_.__l.__size_);
                        if ((v579 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v579 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v578.__r_.__value_.__r.__words[2]);
                        if (v578.__r_.__value_.__l.__size_)
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v578.__r_.__value_.__l.__size_);
                        }

                        if (v499)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v499);
                        }

                        if (pxrInternal__aapl__pxrReserved__::UsdVariantSet::AddVariant())
                        {
                          pxrInternal__aapl__pxrReserved__::UsdVariantSet::SetVariantSelection();
                          __p[1] = 0;
                          __p[0] = 0;
                          pxrInternal__aapl__pxrReserved__::UsdVariantSet::GetVariantEditContext();
                          MEMORY[0x24C1A51B0](__src, &v591);
                          pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data(&v591.__end_cap_.std::__compressed_pair_elem<std::allocator<std::pair<std::string, std::string>> &, 1, false>);
                          v472 = v591.__end_cap_.__value_;
                          if (v591.__end_cap_.__value_ && atomic_fetch_add_explicit(&v591.__end_cap_.__value_->first.__r_.__value_.__r.__words[1], 0xFFFFFFFF, memory_order_release) == 1)
                          {
                            (*(v472->first.__r_.__value_.__r.__words[0] + 8))(v472);
                          }

                          v473 = v591.__begin_;
                          if (v591.__begin_ && atomic_fetch_add_explicit(&v591.__begin_->first.__r_.__value_.__r.__words[1], 0xFFFFFFFF, memory_order_release) == 1)
                          {
                            (*(v473->first.__r_.__value_.__r.__words[0] + 8))(v473);
                          }

                          v474 = __p[1];
                          if (__p[1] && atomic_fetch_add_explicit(__p[1] + 2, 0xFFFFFFFF, memory_order_release) == 1)
                          {
                            (*(*v474 + 8))(v474);
                          }

                          pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v591, &v517);
                          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v578, v508);
                          pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(__p, 0.0, 1.0);
                          pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v578);
                          if ((v591.__end_cap_.__value_ & 7) != 0)
                          {
                            atomic_fetch_add_explicit((v591.__end_cap_.__value_ & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591.__end_);
                          if (v591.__begin_)
                          {
                            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v591.__begin_);
                          }

                          MEMORY[0x24C1A51C0](__src);
                        }

                        else
                        {
                          __src[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
                          __src[1] = "UsdMtlxRead";
                          *&v583[0] = 2457;
                          *(&v583[0] + 1) = "void realityio::mtlx::UsdMtlxRead(const MaterialX::ConstDocumentPtr &, const UsdStagePtr &, const SdfPath &, const SdfPath &)";
                          LOBYTE(v583[1]) = 0;
                          if ((v511.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v475 = &v511;
                          }

                          else
                          {
                            v475 = v511.__r_.__value_.__r.__words[0];
                          }

                          if (v560 >= 0)
                          {
                            v476 = &v559;
                          }

                          else
                          {
                            v476 = v559;
                          }

                          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v591, &v517);
                          v477 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v591);
                          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__src, 1, "Failed to author look variant '%s' in variant set '%s' on <%s>", v475, v476, v477);
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v591);
                        }

                        break;
                      }

                      v408 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*v406 + 160), &qword_27EE539D0);
                      if (v408)
                      {
                        v409 = (v408 + 40);
                      }

                      else
                      {
                        v408 = RIO_MTLX::EMPTY_STRING(0);
                        v409 = v408;
                      }

                      v410 = *(v409 + 23);
                      if ((v410 & 0x80u) != 0)
                      {
                        v410 = v409[1];
                      }

                      if (!v410)
                      {
                        v409 = RIO_MTLX::EMPTY_STRING(v408);
                      }

                      if (v565 && (*(v565 + 57) & 8) == 0 && ((*(v564 + 32))(&v564) & 1) != 0)
                      {
                        v411 = *v406;
                        v412 = v406[1];
                        if (v412)
                        {
                          atomic_fetch_add_explicit(&v412->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        if (v411)
                        {
                          if (v412)
                          {
                            goto LABEL_846;
                          }
                        }

                        else
                        {
                          v563 = 0;
                          if (v412)
                          {
LABEL_846:
                            std::__shared_weak_count::__release_shared[abi:ne200100](v412);
                          }
                        }

                        v572.__r_.__value_.__r.__words[0] = &v563;
                        v413 = std::__tree<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::__map_value_compare<pxrInternal__aapl__pxrReserved__::TfToken,std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>,std::less<pxrInternal__aapl__pxrReserved__::TfToken>,true>,std::allocator<std::__value_type<pxrInternal__aapl__pxrReserved__::TfToken,int>>>::__emplace_unique_key_args<pxrInternal__aapl__pxrReserved__::TfToken,std::piecewise_construct_t const&,std::tuple<pxrInternal__aapl__pxrReserved__::TfToken const&>,std::tuple<>>(&v577, v563, &v572);
                        v414 = v413;
                        if (*(v413 + 40))
                        {
                          pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v561, &v578);
                          v415 = v407;
                          Path = pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v581, &v578);
                          v417 = __p;
                          if ((v563 & 0xFFFFFFFFFFFFFFF8) != 0)
                          {
                            EmptyString = (v563 & 0xFFFFFFFFFFFFFFF8) + 16;
                          }

                          else
                          {
                            EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(Path);
                          }

                          if (*(EmptyString + 23) >= 0)
                          {
                            v419 = *(EmptyString + 23);
                          }

                          else
                          {
                            v419 = *(EmptyString + 8);
                          }

                          std::string::basic_string[abi:ne200100](__p, v419 + 1);
                          if (SBYTE7(v575) < 0)
                          {
                            v417 = __p[0];
                          }

                          if (v419)
                          {
                            if (*(EmptyString + 23) >= 0)
                            {
                              v420 = EmptyString;
                            }

                            else
                            {
                              v420 = *EmptyString;
                            }

                            memmove(v417, v420, v419);
                          }

                          *(v417 + v419) = 95;
                          v4 = j;
                          v407 = v415;
                          do
                          {
                            v421 = *(v414 + 40);
                            *(v414 + 40) = v421 + 1;
                            std::to_string(&v572, v421);
                            if ((SBYTE7(v575) & 0x80u) == 0)
                            {
                              v422 = __p;
                            }

                            else
                            {
                              v422 = __p[0];
                            }

                            if ((SBYTE7(v575) & 0x80u) == 0)
                            {
                              v423 = BYTE7(v575);
                            }

                            else
                            {
                              v423 = __p[1];
                            }

                            v424 = std::string::insert(&v572, 0, v422, v423);
                            v425 = *&v424->__r_.__value_.__l.__data_;
                            *&v583[0] = *(&v424->__r_.__value_.__l + 2);
                            *__src = v425;
                            v424->__r_.__value_.__l.__size_ = 0;
                            v424->__r_.__value_.__r.__words[2] = 0;
                            v424->__r_.__value_.__r.__words[0] = 0;
                            MEMORY[0x24C1A5E00](&v580, __src);
                            if ((v563 & 7) != 0)
                            {
                              atomic_fetch_add_explicit((v563 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            v563 = v580;
                            v580 = 0;
                            if (SBYTE7(v583[0]) < 0)
                            {
                              operator delete(__src[0]);
                            }

                            if (SHIBYTE(v572.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v572.__r_.__value_.__l.__data_);
                            }

                            v426 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v561);
                            pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v572, &v581, &v563);
                            pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(__src, v426, &v572);
                            v427 = pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(__src);
                            if ((BYTE8(v583[0]) & 7) != 0)
                            {
                              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                            if (__src[1])
                            {
                              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                            }

                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v572);
                          }

                          while ((v427 & 1) != 0);
                          if (SBYTE7(v575) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v581);
                          v428 = v562;
                          if (v562 && atomic_fetch_add_explicit((v562 + 8), 0xFFFFFFFF, memory_order_release) == 1)
                          {
                            (*(*v428 + 8))(v428);
                          }
                        }

                        else
                        {
                          *(v413 + 40) = 1;
                        }

                        pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(__src, &v578);
                        v429 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(__src);
                        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v561, &v578);
                        pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v572, &v561, &v563);
                        v581 = 0;
                        pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(__p, v429, &v572, &v581);
                        if ((v581 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v581 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v572);
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v561);
                        v430 = __src[1];
                        if (__src[1] && atomic_fetch_add_explicit(__src[1] + 2, 0xFFFFFFFF, memory_order_release) == 1)
                        {
                          (*(*v430 + 8))(v430);
                        }

                        v431 = v406[1];
                        __src[0] = *v406;
                        __src[1] = v431;
                        if (v431)
                        {
                          atomic_fetch_add_explicit(&v431->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        if (v431)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v431);
                        }

                        pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(__src, __p);
                        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::GetPath(&v561, &v564);
                        pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v572, 0.0, 1.0);
                        pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v561);
                        if ((BYTE8(v583[0]) & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                        if (__src[1])
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                        }

                        v432 = *v406;
                        v433 = v406[1];
                        if (v433)
                        {
                          atomic_fetch_add_explicit(&v433->__shared_owners_, 1uLL, memory_order_relaxed);
                          std::__shared_weak_count::__release_shared[abi:ne200100](v433);
                        }

                        else
                        {
                        }

                        v437 = *v434;
                        v435 = v434 + 1;
                        v436 = v437;
                        if (v437 != v435)
                        {
                          do
                          {
                            pxrInternal__aapl__pxrReserved__::UsdPrim::GetVariantSet();
                            pxrInternal__aapl__pxrReserved__::UsdVariantSet::SetVariantSelection();
                            if (SHIBYTE(v584) < 0)
                            {
                              operator delete(*&v583[1]);
                            }

                            if ((BYTE8(v583[0]) & 7) != 0)
                            {
                              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                            if (__src[1])
                            {
                              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                            }

                            v438 = v436[1];
                            if (v438)
                            {
                              do
                              {
                                v439 = v438;
                                v438 = *v438;
                              }

                              while (v438);
                            }

                            else
                            {
                              do
                              {
                                v439 = v436[2];
                                v306 = *v439 == v436;
                                v436 = v439;
                              }

                              while (!v306);
                            }

                            v436 = v439;
                          }

                          while (v439 != v435);
                        }

                        v440 = *v406;
                        v441 = v406[1];
                        if (v441)
                        {
                          atomic_fetch_add_explicit(&v441->__shared_owners_, 1uLL, memory_order_relaxed);
                        }

                        v442 = v545[0];
                        if (!v545[0])
                        {
                          goto LABEL_926;
                        }

                        v443 = v545;
                        do
                        {
                          v444 = v442[4];
                          v445 = v444 >= v440;
                          v446 = v444 < v440;
                          if (v445)
                          {
                            v443 = v442;
                          }

                          v442 = v442[v446];
                        }

                        while (v442);
                        if (v443 != v545 && v440 >= v443[4])
                        {
                          if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v508))
                          {
                            pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::GetCollectionPath(&v561, (v443 + 6));
                            pxrInternal__aapl__pxrReserved__::SdfPath::GetPrimPath(__src, &v561);
                            pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v580, v508);
                            pxrInternal__aapl__pxrReserved__::SdfPath::ReplacePrefix(&v581, &v561, __src, &v580);
                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v580);
                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(__src);
                            if (pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL())
                            {
                              pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(__src, v508);
                              pxrInternal__aapl__pxrReserved__::UsdCollectionAPI::GetCollection();
                              v457 = __src[1];
                              if (__src[1] && atomic_fetch_add_explicit(__src[1] + 2, 0xFFFFFFFF, memory_order_release) == 1)
                              {
                                (*(*v457 + 8))(v457);
                              }
                            }

                            else
                            {
                              LODWORD(__src[0]) = 1;
                              __src[1] = 0;
                              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                              *(&v583[0] + 1) = 0;
                              v580 = 0;
                              pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::UsdAPISchemaBase(&v572, __src, &v580);
                              v572.__r_.__value_.__r.__words[0] = MEMORY[0x277D86730] + 16;
                              if ((BYTE8(v583[0]) & 7) != 0)
                              {
                                atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                              }

                              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                              if (__src[1])
                              {
                                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                              }
                            }

                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v581);
                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v561);
                          }

                          else
                          {
                            pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                            v458 = v443[9];
                            v572.__r_.__value_.__r.__words[0] = MEMORY[0x277D86728] + 16;
                            v573 = v458;
                            if ((v458 & 7) != 0 && (atomic_fetch_add_explicit((v458 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
                            {
                              v573 &= 0xFFFFFFFFFFFFFFF8;
                            }

                            v572.__r_.__value_.__r.__words[0] = MEMORY[0x277D86730] + 16;
                          }
                        }

                        else
                        {
LABEL_926:
                          LODWORD(__src[0]) = 1;
                          __src[1] = 0;
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
                          *(&v583[0] + 1) = 0;
                          v561 = 0;
                          pxrInternal__aapl__pxrReserved__::UsdAPISchemaBase::UsdAPISchemaBase(&v572, __src, &v561);
                          v572.__r_.__value_.__r.__words[0] = MEMORY[0x277D86730] + 16;
                          if ((BYTE8(v583[0]) & 7) != 0)
                          {
                            atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                          }

                          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                          if (__src[1])
                          {
                            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                          }
                        }

                        if (v441)
                        {
                          std::__shared_weak_count::__release_shared[abi:ne200100](v441);
                        }

                        if (v572.__r_.__value_.__l.__size_ && (*(v572.__r_.__value_.__l.__size_ + 57) & 8) == 0 && (*(v572.__r_.__value_.__r.__words[0] + 32))(&v572))
                        {
                          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                          __src[0] = (MEMORY[0x277D86758] + 16);
                          v447 = atomic_load(MEMORY[0x277D86568]);
                          if (!v447)
                          {
                            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                          }

                          v448 = atomic_load(MEMORY[0x277D86568]);
                          if (!v448)
                          {
                            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                          }

                          v449 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Bind(&v591, &v572, __src, &v563, (v447 + 40), v448);
                          MEMORY[0x24C1A5510](__src);
                          if (v449)
                          {
                            v450 = atomic_load(MEMORY[0x277D86568]);
                            if (!v450)
                            {
                              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                            }

                            pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetCollectionBindingRel(__src, &v591, &v563, v450);
                            v451 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(__src);
                            std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v567, v451);
                            if ((BYTE8(v583[0]) & 7) != 0)
                            {
                              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

                            goto LABEL_948;
                          }
                        }

                        else
                        {
                          pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
                          __src[0] = (MEMORY[0x277D86758] + 16);
                          v452 = atomic_load(MEMORY[0x277D86568]);
                          if (!v452)
                          {
                            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                          }

                          v453 = atomic_load(MEMORY[0x277D86568]);
                          if (!v453)
                          {
                            pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                          }

                          v454 = pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::Bind(&v591, __src, (v452 + 40), v453);
                          MEMORY[0x24C1A5510](__src);
                          if (v454)
                          {
                            v455 = atomic_load(MEMORY[0x277D86568]);
                            if (!v455)
                            {
                              pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType,pxrInternal__aapl__pxrReserved__::Tf_StaticDataDefaultFactory<pxrInternal__aapl__pxrReserved__::UsdShadeTokensType>>::_TryToCreateData(MEMORY[0x277D86568]);
                            }

                            pxrInternal__aapl__pxrReserved__::UsdShadeMaterialBindingAPI::GetDirectBindingRel(__src, &v591, v455);
                            v456 = pxrInternal__aapl__pxrReserved__::UsdObject::GetName(__src);
                            std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::push_back[abi:ne200100](&v567, v456);
                            if ((BYTE8(v583[0]) & 7) != 0)
                            {
                              atomic_fetch_add_explicit((*(&v583[0] + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                            }

LABEL_948:
                            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v583);
                            if (__src[1])
                            {
                              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__src[1]);
                            }
                          }
                        }

                        MEMORY[0x24C1A5470](&v572);
                        if ((BYTE8(v575) & 7) != 0)
                        {
                          atomic_fetch_add_explicit((*(&v575 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }

                        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v575);
                        if (__p[1])
                        {
                          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__p[1]);
                        }

                        if ((v563 & 7) != 0)
                        {
                          atomic_fetch_add_explicit((v563 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                        }
                      }

                      v405 = MEMORY[0x24C1A5510](&v564);
                      v406 += 2;
                      continue;
                    }
                  }

                  if ((v510 & 7) != 0)
                  {
                    atomic_fetch_add_explicit((v510 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
                  }

                  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
                  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v509);
                  if (v508[1])
                  {
                    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v508[1]);
                  }

                  if (SHIBYTE(v511.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v511.__r_.__value_.__l.__data_);
                  }

                  v379 = v506 + 16;
                  v380 = v501;
                }

                __src[0] = &v512;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
                v356 = v488 + 2;
              }

              while (v488 + 2 != v486);
            }

            __src[0] = &v515;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
            pxrInternal__aapl__pxrReserved__::UsdVariantSet::ClearVariantSelection(&v555);
            if (v560 < 0)
            {
              operator delete(v559);
            }

            if ((v558 & 7) != 0)
            {
              atomic_fetch_add_explicit((v558 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v557);
            if (v556)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v556);
            }

            if ((v520 & 7) != 0)
            {
              atomic_fetch_add_explicit((v520 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v519);
            if (v518)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v518);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v521);
            std::__tree<std::string>::destroy(&v601, v602);
            __src[0] = &v598;
            std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](__src);
            std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::less<std::shared_ptr<RIO_MTLX::MaterialAssign const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>>>::destroy(v596);
            __src[0] = &v593 + 8;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](__src);
            __src[0] = &v592;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__src);
          }
        }

        else
        {
          v525 = "CoreRealityIO/mtlxToUsdShade.cpp";
          v526 = "UsdMtlxRead";
          v527 = 2356;
          v528 = "void realityio::mtlx::UsdMtlxRead(const MaterialX::ConstDocumentPtr &, const UsdStagePtr &, const SdfPath &, const SdfPath &)";
          LOBYTE(v529) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v525, 1, "Invalid external prim path");
        }
      }

      else
      {
        v525 = "CoreRealityIO/mtlxToUsdShade.cpp";
        v526 = "UsdMtlxRead";
        v527 = 2352;
        v528 = "void realityio::mtlx::UsdMtlxRead(const MaterialX::ConstDocumentPtr &, const UsdStagePtr &, const SdfPath &, const SdfPath &)";
        LOBYTE(v529) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v525, 1, "Invalid internal prim path");
      }
    }

    else
    {
      v525 = "CoreRealityIO/mtlxToUsdShade.cpp";
      v526 = "UsdMtlxRead";
      v527 = 2348;
      v528 = "void realityio::mtlx::UsdMtlxRead(const MaterialX::ConstDocumentPtr &, const UsdStagePtr &, const SdfPath &, const SdfPath &)";
      LOBYTE(v529) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v525, 1, "Invalid stage");
    }
  }

  else
  {
    v525 = "CoreRealityIO/mtlxToUsdShade.cpp";
    v526 = "UsdMtlxRead";
    v527 = 2344;
    v528 = "void realityio::mtlx::UsdMtlxRead(const MaterialX::ConstDocumentPtr &, const UsdStagePtr &, const SdfPath &, const SdfPath &)";
    LOBYTE(v529) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v525, 1, "Invalid MaterialX document");
  }
}

void sub_2477026B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char *a53, uint64_t a54, uint64_t a55)
{
  __cxa_guard_abort(&qword_27EE537C0);
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a31);
  if (a40 < 0)
  {
    operator delete(__p);
  }

  STACK[0x350] = &a41;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x350]);
  STACK[0x350] = &a44;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x350]);
  pxrInternal__aapl__pxrReserved__::UsdVariantSet::~UsdVariantSet(&STACK[0x280]);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a47);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(&a51);
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_names(realityio::mtlx::_anonymous_namespace_ *this)
{
  {
    if (v1)
    {
    }
  }
}

uint64_t **realityio::mtlx::anonymous namespace::_Attr::_Attr<RIO_MTLX::Document const>(uint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((a2 + 160), a3);
  if (v4)
  {
    v5 = (v4 + 5);
  }

  else
  {
    v5 = RIO_MTLX::EMPTY_STRING(0);
  }

  v6 = *(v5 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v5[1];
  }

  if (!v6)
  {
    v5 = RIO_MTLX::EMPTY_STRING(v5);
  }

  *a1 = v5;
  return a1;
}

uint64_t *RIO_MTLX::Element::getActiveColorSpace(RIO_MTLX::Element *this)
{
  v1 = std::shared_ptr<RIO_MTLX::Element>::shared_ptr[abi:ne200100]<RIO_MTLX::Element,0>(&v10, this + 1);
  ColorSpace = v10;
  if (v10)
  {
    while (1)
    {
      v3 = RIO_MTLX::Element::COLOR_SPACE_ATTRIBUTE(v1);
      v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(ColorSpace + 20, v3);
      v5 = v10;
      if (v4)
      {
        break;
      }

      v1 = *(v10 + 29);
      if (v1 && (v1 = std::__shared_weak_count::lock(v1)) != 0)
      {
        ColorSpace = *(v5 + 28);
      }

      else
      {
        ColorSpace = 0;
      }

      v6 = v11;
      v10 = ColorSpace;
      v11 = v1;
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        ColorSpace = v10;
      }

      if (!ColorSpace)
      {
        goto LABEL_10;
      }
    }

    ColorSpace = RIO_MTLX::Element::getColorSpace(v10);
    v7 = 0;
  }

  else
  {
LABEL_10:
    v7 = 1;
  }

  v8 = v11;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    return RIO_MTLX::EMPTY_STRING(v8);
  }

  return ColorSpace;
}

void sub_247703B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::anonymous namespace::VariantAssignments::AddInherited(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = &v11;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](v8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *a2;
  InheritString = RIO_MTLX::Element::getInheritString(*a2);
  RIO_MTLX::Element::resolveRootNameReference<RIO_MTLX::Element>(v5, InheritString, &v11);
  if (v11)
  {
    RIO_MTLX::Element::asA<RIO_MTLX::Look>(v11, &v9);
    if (v9)
    {
      v7 = v10;
      v8[0] = v9;
      v8[1] = &v10->__vftable;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_247703C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, std::__shared_weak_count *a15)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::anonymous namespace::VariantAssignments::~VariantAssignments(char **this)
{
  std::__tree<std::string>::destroy((this + 12), this[13]);
  v2 = (this + 9);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>,std::less<std::shared_ptr<RIO_MTLX::MaterialAssign const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::MaterialAssign const>,std::set<std::pair<std::string,std::string>>>>>::destroy(this[7]);
  v2 = (this + 3);
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void *std::pair<pxrInternal__aapl__pxrReserved__::TfWeakPtr<pxrInternal__aapl__pxrReserved__::UsdStage>,pxrInternal__aapl__pxrReserved__::UsdEditTarget>::~pair(void *a1)
{
  pxrInternal__aapl__pxrReserved__::PcpMapFunction::_Data::~_Data((a1 + 4));
  v2 = a1[3];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3 && atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void realityio::mtlx::anonymous namespace::_Context::~_Context(realityio::mtlx::_anonymous_namespace_::_Context *this)
{
  MEMORY[0x24C1A5510](this + 272);
  v2 = *(this + 33);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__tree<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>>::destroy(*(this + 29));
  std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::GeomElement const>,std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::shared_ptr<RIO_MTLX::GeomElement const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(*(this + 26));
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(*(this + 23));
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(*(this + 20));
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>>>::destroy(*(this + 17));
  v4 = (this + 80);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  std::__tree<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>>::destroy(*(this + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 48);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 40);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 32);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    if (atomic_fetch_add_explicit(v3 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI>,0>(uint64_t a1)
{
  MEMORY[0x24C1A5890](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::GeomElement const>,std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::shared_ptr<RIO_MTLX::GeomElement const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::GeomElement const>,std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::shared_ptr<RIO_MTLX::GeomElement const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(*a1);
    std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::GeomElement const>,std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::shared_ptr<RIO_MTLX::GeomElement const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::GeomElement const>,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::GeomElement const> const,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<RIO_MTLX::GeomElement const> const,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,0>(uint64_t a1)
{
  MEMORY[0x24C1A5470](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdCollectionAPI>,0>(uint64_t a1)
{
  MEMORY[0x24C1A5470](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::UsdShadeMaterial>,0>(uint64_t a1)
{
  MEMORY[0x24C1A5510](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::NodeGraph const>,realityio::mtlx::anonymous namespace::_NodeGraph>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::NodeGraph const>,std::__value_type<std::shared_ptr<RIO_MTLX::NodeGraph const>,realityio::mtlx::anonymous namespace::_NodeGraph>,std::less<std::shared_ptr<RIO_MTLX::NodeGraph const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::NodeGraph const>,realityio::mtlx::anonymous namespace::_NodeGraph>>>::destroy(void *a1)
{
  if (a1)
  {
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 13));
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1[11]);
    v2 = a1[9];
    if ((v2 & 7) != 0)
    {
      atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((a1 + 8));
    v3 = a1[7];
    if (v3)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
    }

    v4 = a1[5];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a1);
  }
}

void realityio::mtlx::anonymous namespace::_NodeGraph::~_NodeGraph(realityio::mtlx::_anonymous_namespace_::_NodeGraph *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 56);
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(*(this + 5));
  v2 = *(this + 3);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(this + 16);
  v3 = *(this + 1);
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v3);
  }
}

void std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::TfToken>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::TfToken>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,pxrInternal__aapl__pxrReserved__::TfToken>,0>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::map<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>,0>(uint64_t a1)
{
  std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<RIO_MTLX::ValueElement const>>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,0>((a1 + 4));

    operator delete(a1);
  }
}

void *realityio::mtlx::anonymous namespace::_AttributeNames::_AttributeNames(realityio::mtlx::_anonymous_namespace_::_AttributeNames *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&qword_27EE53820, "channels");
  std::string::basic_string[abi:ne200100]<0>(v1 + 3, "cms");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53850, "cmsconfig");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53868, "collection");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53880, "context");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53898, "default");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE538B0, "doc");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE538C8, "enum");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE538E0, "enumvalues");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE538F8, "excludegeom");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53910, "geom");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53928, "helptext");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53940, "includegeom");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53958, "includecollection");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53970, "inherit");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53988, "interfacename");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE539A0, "isdefaultversion");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE539B8, "look");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE539D0, "material");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE539E8, "member");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A00, "nodedef");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A18, "nodegraph");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A30, "nodename");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A48, "node");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A60, "output");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A78, "semantic");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53A90, "token");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53AA8, "type");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53AC0, "uicolor");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53AD8, "uifolder");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53AF0, "uimax");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B08, "uimin");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B20, "uiname");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B38, "value");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B50, "valuecurve");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B68, "valuerange");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B80, "variant");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53B98, "variantassign");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53BB0, "variantset");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53BC8, "version");
  std::string::basic_string[abi:ne200100]<0>(&qword_27EE53BE0, "xpos");
  return std::string::basic_string[abi:ne200100]<0>(qword_27EE53BF8, "ypos");
}

void sub_247704918(_Unwind_Exception *exception_object)
{
  if (byte_27EE53BF7 < 0)
  {
    operator delete(qword_27EE53BE0);
  }

  if (byte_27EE53BDF < 0)
  {
    operator delete(qword_27EE53BC8);
  }

  if (byte_27EE53BC7 < 0)
  {
    operator delete(qword_27EE53BB0);
  }

  if (byte_27EE53BAF < 0)
  {
    operator delete(qword_27EE53B98);
  }

  if (byte_27EE53B97 < 0)
  {
    operator delete(qword_27EE53B80);
  }

  if (byte_27EE53B7F < 0)
  {
    operator delete(qword_27EE53B68);
  }

  if (byte_27EE53B67 < 0)
  {
    operator delete(qword_27EE53B50);
  }

  if (byte_27EE53B4F < 0)
  {
    operator delete(qword_27EE53B38);
  }

  if (byte_27EE53B37 < 0)
  {
    operator delete(qword_27EE53B20);
  }

  if (byte_27EE53B1F < 0)
  {
    operator delete(qword_27EE53B08);
  }

  if (byte_27EE53B07 < 0)
  {
    operator delete(qword_27EE53AF0);
  }

  if (byte_27EE53AEF < 0)
  {
    operator delete(qword_27EE53AD8);
  }

  if (byte_27EE53AD7 < 0)
  {
    operator delete(qword_27EE53AC0);
  }

  if (byte_27EE53ABF < 0)
  {
    operator delete(qword_27EE53AA8);
  }

  if (byte_27EE53AA7 < 0)
  {
    operator delete(qword_27EE53A90);
  }

  if (byte_27EE53A8F < 0)
  {
    operator delete(qword_27EE53A78);
  }

  if (byte_27EE53A77 < 0)
  {
    operator delete(qword_27EE53A60);
  }

  if (byte_27EE53A5F < 0)
  {
    operator delete(qword_27EE53A48);
  }

  if (byte_27EE53A47 < 0)
  {
    operator delete(qword_27EE53A30);
  }

  if (byte_27EE53A2F < 0)
  {
    operator delete(qword_27EE53A18);
  }

  if (byte_27EE53A17 < 0)
  {
    operator delete(qword_27EE53A00);
  }

  if (byte_27EE539FF < 0)
  {
    operator delete(qword_27EE539E8);
  }

  if (byte_27EE539E7 < 0)
  {
    operator delete(qword_27EE539D0);
  }

  if (byte_27EE539CF < 0)
  {
    operator delete(qword_27EE539B8);
  }

  if (byte_27EE539B7 < 0)
  {
    operator delete(qword_27EE539A0);
  }

  if (byte_27EE5399F < 0)
  {
    operator delete(qword_27EE53988);
  }

  if (byte_27EE53987 < 0)
  {
    operator delete(qword_27EE53970);
  }

  if (byte_27EE5396F < 0)
  {
    operator delete(qword_27EE53958);
  }

  if (byte_27EE53957 < 0)
  {
    operator delete(qword_27EE53940);
  }

  if (byte_27EE5393F < 0)
  {
    operator delete(qword_27EE53928);
  }

  if (byte_27EE53927 < 0)
  {
    operator delete(qword_27EE53910);
  }

  if (byte_27EE5390F < 0)
  {
    operator delete(qword_27EE538F8);
  }

  if (byte_27EE538F7 < 0)
  {
    operator delete(qword_27EE538E0);
  }

  if (byte_27EE538DF < 0)
  {
    operator delete(qword_27EE538C8);
  }

  if (byte_27EE538C7 < 0)
  {
    operator delete(qword_27EE538B0);
  }

  if (byte_27EE538AF < 0)
  {
    operator delete(qword_27EE53898);
  }

  if (byte_27EE53897 < 0)
  {
    operator delete(qword_27EE53880);
  }

  if (byte_27EE5387F < 0)
  {
    operator delete(qword_27EE53868);
  }

  if (byte_27EE53867 < 0)
  {
    operator delete(qword_27EE53850);
  }

  if (byte_27EE5384F < 0)
  {
    operator delete(qword_27EE53838);
  }

  if (byte_27EE53837 < 0)
  {
    operator delete(qword_27EE53820);
  }

  _Unwind_Resume(exception_object);
}

BOOL pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>()
{
  v0 = pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>::nodes();
  v1 = atomic_load(v0);
  if (!v1)
  {
    v3 = v0;
    pxrInternal__aapl__pxrReserved__::TfDebug::_Data<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>::nodes();
    pxrInternal__aapl__pxrReserved__::TfDebug::_InitializeNode();
    v1 = atomic_load(v3);
  }

  return v1 == 2;
}

uint64_t *std::map<std::shared_ptr<RIO_MTLX::NodeGraph const>,realityio::mtlx::anonymous namespace::_NodeGraph>::operator[](uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 6;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

realityio::mtlx::_anonymous_namespace_::_NodeGraphBuilder *realityio::mtlx::anonymous namespace::_NodeGraphBuilder::_NodeGraphBuilder(realityio::mtlx::_anonymous_namespace_::_NodeGraphBuilder *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 8) = 0;
  *(this + 7) = this + 64;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 10) = this + 88;
  *(this + 15) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 112;
  return this;
}

uint64_t realityio::mtlx::anonymous namespace::_NodeGraphBuilder::SetTarget(uint64_t a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfPath *a3, std::string *a4)
{
  if (a4)
  {
  }

  else
  {
    v8 = 0;
  }

  pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v9, a3, &v8);
  *(a1 + 32) = *a2;
  pxrInternal__aapl__pxrReserved__::TfRefPtr<pxrInternal__aapl__pxrReserved__::Tf_Remnant>::operator=((a1 + 40), (a2 + 8));
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 48, &v9);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 52, &v9 + 1);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  result = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return result;
}

void sub_2477050B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath(va);
  if ((a3 & 7) != 0)
  {
    atomic_fetch_add_explicit((a3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(a1);
}

uint64_t realityio::mtlx::anonymous namespace::_NodeGraph::SetImplementation(uint64_t a1, uint64_t *a2)
{
  if (pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v7))
  {
    *a1 = v7;
    v3 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 48), 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4);
    }

    *(a1 + 8) = v3;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 16, &v9);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 20, &v10);
    pxrInternal__aapl__pxrReserved__::TfToken::operator=((a1 + 24), &v11);
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 56, &v6);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(a1 + 60, &v6 + 1);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v6);
  }

  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
  result = v8;
  if (v8)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
  }

  return result;
}

void sub_247705200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_NodeGraphBuilder::~_NodeGraphBuilder(char **this)
{
  std::__tree<std::__value_type<std::string,std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>>>>::destroy(this[14]);
  std::__tree<std::__value_type<std::shared_ptr<RIO_MTLX::Input const>,pxrInternal__aapl__pxrReserved__::UsdShadeInput>,std::__map_value_compare<std::shared_ptr<RIO_MTLX::Input const>,std::__value_type<std::shared_ptr<RIO_MTLX::Input const>,pxrInternal__aapl__pxrReserved__::UsdShadeInput>,std::less<std::shared_ptr<RIO_MTLX::Input const>>,true>,std::allocator<std::__value_type<std::shared_ptr<RIO_MTLX::Input const>,pxrInternal__aapl__pxrReserved__::UsdShadeInput>>>::destroy(this[11]);
  std::__tree<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeInput>,std::__map_value_compare<std::string,std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeInput>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::UsdShadeInput>>>::destroy(this[8]);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl((this + 6));
  v2 = this[5];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = this[3];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

realityio::mtlx::_anonymous_namespace_::_NodeGraph *realityio::mtlx::anonymous namespace::_NodeGraph::_NodeGraph(realityio::mtlx::_anonymous_namespace_::_NodeGraph *this)
{
  *this = 1;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  *(this + 4) = this + 40;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  return this;
}

void realityio::mtlx::anonymous namespace::_MakeName(uint64_t a1, std::string *this)
{
  v4 = std::string::find(this, 58, 0);
  if (v4 == -1)
  {

    JUMPOUT(0x24C1A5E00);
  }

  v5 = v4;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *this;
  }

  std::string::replace(&__p, v5, 1uLL, "__");
  MEMORY[0x24C1A5E00](a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_247705404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::UsdPrim *realityio::mtlx::anonymous namespace::_NodeGraphBuilder::Build(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v189 = *MEMORY[0x277D85DE8];
  v4 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator pxrInternal__aapl__pxrReserved__::UsdStage* (pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::*)(void)const(a2 + 4);
  if (!(v5 & 1 | v4))
  {
    __str.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
    __str.__r_.__value_.__l.__size_ = "Build";
    __str.__r_.__value_.__r.__words[2] = 689;
    v187 = "UsdPrim realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::Build(ShaderNamesByOutputName *)";
    v188 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper() & 1) == 0)
    {
      return pxrInternal__aapl__pxrReserved__::UsdPrim::UsdPrim(a1);
    }
  }

  if (!pxrInternal__aapl__pxrReserved__::SdfPath::IsAbsolutePath((a2 + 6)) || (IsPrimPath = pxrInternal__aapl__pxrReserved__::SdfPath::IsPrimPath((a2 + 6)), (IsPrimPath & 1) == 0))
  {
    __str.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
    __str.__r_.__value_.__l.__size_ = "Build";
    __str.__r_.__value_.__r.__words[2] = 692;
    v187 = "UsdPrim realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::Build(ShaderNamesByOutputName *)";
    v188 = 0;
    IsPrimPath = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper();
    if ((IsPrimPath & 1) == 0)
    {
      return pxrInternal__aapl__pxrReserved__::UsdPrim::UsdPrim(a1);
    }
  }

  v7 = a2[2];
  v149 = a2 + 2;
  v8 = RIO_MTLX::EMPTY_STRING(IsPrimPath);
  v9 = RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(v7, v8);
  data = 1;
  size = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  v162 = 0;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::Define();
    if (!v166 || (*(v166 + 57) & 8) != 0 || ((*(v165 + 32))(&v165) & 1) == 0)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      *(a1 + 24) = 0;
      MEMORY[0x24C1A5610](&v165);
      if ((v162 & 7) != 0)
      {
        atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      goto LABEL_361;
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&__str, &v166, &v167);
    data = __str.__r_.__value_.__l.__data_;
    size = __str.__r_.__value_.__l.__size_;
    __str.__r_.__value_.__l.__size_ = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v160, &__str.__r_.__value_.__r.__words[2]);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v161, &__str.__r_.__value_.__r.__words[2] + 1);
    if ((v162 & 7) != 0)
    {
      atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v162 = v187;
    v187 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
    if (__str.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
    }

    if (*a2)
    {
      v144 = v9;
      v11 = v163;
      for (i = v164; v11 != i; v11 += 2)
      {
        v13 = *v11;
        v14 = v11[1];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::ConnectableAPI(&v181, &v165);
        v16 = RIO_MTLX::EMPTY_STRING(v15);
        RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(v13, v16, &v169);
        v17 = v169;
        v18 = v170;
        while (v17 != v18)
        {
          v19 = *v17;
          v20 = v17[1];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v180.__r_.__value_.__r.__words[0] = v19;
          v180.__r_.__value_.__l.__size_ = v20;
          if ((v187 & 7) != 0)
          {
            atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
          if (__str.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
          }

          if (v180.__r_.__value_.__l.__size_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v180.__r_.__value_.__l.__size_);
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v17 += 2;
        }

        v180.__r_.__value_.__r.__words[0] = &v169;
        std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v180);
        MEMORY[0x24C1A5890](&v181);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      __str.__r_.__value_.__r.__words[0] = &v163;
      std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&__str);
      v9 = v144;
    }

    v21 = *v149;
    v22 = RIO_MTLX::EMPTY_STRING(v10);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(v21, v22, &v181);
    v23 = v181;
    for (j = v182; v23 != j; v23 += 16)
    {
      v25 = *v23;
      v26 = *(v23 + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v169 = v25;
      v170 = v26;
      pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::ConnectableAPI(&__str, &v165);
      if ((v157 & 7) != 0)
      {
        atomic_fetch_add_explicit((v157 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v156);
      if (v155)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v155);
      }

      MEMORY[0x24C1A5890](&__str);
      if (v170)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v170);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    __str.__r_.__value_.__r.__words[0] = &v181;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__str);
    v27 = MEMORY[0x24C1A5610](&v165);
  }

  else
  {
    v28 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(a2 + 4);
    v181 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(&__str, v28, (a2 + 6), &v181);
    data = __str.__r_.__value_.__l.__data_;
    size = __str.__r_.__value_.__l.__size_;
    __str.__r_.__value_.__l.__size_ = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v160, &__str.__r_.__value_.__r.__words[2]);
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v161, &__str.__r_.__value_.__r.__words[2] + 1);
    if ((v162 & 7) != 0)
    {
      atomic_fetch_add_explicit((v162 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v162 = v187;
    v187 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
    v27 = __str.__r_.__value_.__l.__size_;
    if (__str.__r_.__value_.__l.__size_)
    {
      v27 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
    }

    if ((v181 & 7) != 0)
    {
      atomic_fetch_add_explicit((v181 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v145 = v9;
  v29 = *v149;
  v30 = RIO_MTLX::EMPTY_STRING(v27);
  RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Node>(v29, v30, &v152);
  v32 = v152;
  v33 = v153;
  if (v152 != v153)
  {
    v147 = v153;
    do
    {
      v34 = __str.__r_.__value_.__r.__words[0];
      if (*(__str.__r_.__value_.__r.__words[0] + 23) < 0)
      {
        v36 = *(__str.__r_.__value_.__r.__words[0] + 8);
        if (v36 == 8)
        {
          v34 = *__str.__r_.__value_.__l.__data_;
LABEL_68:
          if (*v34 != 0x6C6169726574616DLL)
          {
            goto LABEL_69;
          }

          goto LABEL_269;
        }

        if (v36 != 13)
        {
          goto LABEL_69;
        }

        v34 = *__str.__r_.__value_.__l.__data_;
      }

      else
      {
        v35 = *(__str.__r_.__value_.__r.__words[0] + 23);
        if (v35 == 8)
        {
          goto LABEL_68;
        }

        if (v35 != 13)
        {
          goto LABEL_69;
        }
      }

      v37 = *v34;
      v38 = *(v34 + 5);
      v39 = v37 == 0x7365636166727573 && v38 == 0x7265646168736563;
      if (!v39)
      {
LABEL_69:
        v40 = v32[1];
        *&v151 = *v32;
        *(&v151 + 1) = v40;
        if (v40)
        {
          atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
        }

        if (__str.__r_.__value_.__r.__words[0])
        {
          MEMORY[0x24C1A5E00](&v176, __str.__r_.__value_.__r.__words[0] + 48);
        }

        else
        {
          v176 = 0;
        }

        if (__str.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
        }

        if (!v176 && *a2)
        {
          goto LABEL_267;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v174, &data);
        LODWORD(__str.__r_.__value_.__l.__data_) = 1;
        __str.__r_.__value_.__l.__size_ = 0;
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
        v187 = 0;
        pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
        v185 = 0;
        v181 = MEMORY[0x277D867A8] + 16;
        if ((v187 & 7) != 0)
        {
          atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
        if (__str.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
        }

        v41 = v173;
        if (!v173)
        {
          goto LABEL_189;
        }

        v42 = *(&v173 + 1);
        *&__str.__r_.__value_.__l.__data_ = v173;
        if (*(&v173 + 1))
        {
          atomic_fetch_add_explicit((*(&v173 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        SourceURI = realityio::mtlx::UsdMtlxGetSourceURI(&__str);
        if (SHIBYTE(SourceURI->__shared_weak_owners_) < 0)
        {
          std::string::__init_copy_ctor_external(&v180, SourceURI->__vftable, SourceURI->__shared_owners_);
        }

        else
        {
          v44 = SourceURI->std::__shared_count;
          v180.__r_.__value_.__r.__words[2] = SourceURI->__shared_weak_owners_;
          *&v180.__r_.__value_.__l.__data_ = v44;
        }

        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        IsRelativePath = pxrInternal__aapl__pxrReserved__::TfIsRelativePath();
        if (IsRelativePath)
        {
          v46 = *(v41 + 232);
          if (v46)
          {
            v47 = std::__shared_weak_count::lock(v46);
            if (v47)
            {
              v48 = *(v41 + 224);
            }

            else
            {
              v48 = 0;
            }
          }

          else
          {
            v48 = 0;
            v47 = 0;
          }

          v179.__r_.__value_.__r.__words[0] = v48;
          v179.__r_.__value_.__l.__size_ = v47;
          v49 = realityio::mtlx::UsdMtlxGetSourceURI(&v179);
          if (SHIBYTE(v49->__shared_weak_owners_) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, v49->__vftable, v49->__shared_owners_);
          }

          else
          {
            v50 = v49->std::__shared_count;
            __str.__r_.__value_.__r.__words[2] = v49->__shared_weak_owners_;
            *&__str.__r_.__value_.__l.__data_ = v50;
          }

          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47);
          }

          v51 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = __str.__r_.__value_.__l.__size_;
          }

          if (v51)
          {
            v53 = p_str + v51;
            v54 = p_str;
            v55 = v53;
            do
            {
              v56 = v54;
              v57 = v54;
              while (1)
              {
                v58 = *v57++;
                if (v58 == 47)
                {
                  break;
                }

                v56 = v57;
                if (v57 == v53)
                {
                  v56 = v55;
                  goto LABEL_114;
                }
              }

              v54 = (&v56->__r_.__value_.__l.__data_ + 1);
              v55 = v56;
            }

            while (v57 != v53);
LABEL_114:
            if (v56 != v53)
            {
              v59 = v56 - p_str;
              if (v59 != -1)
              {
                std::string::basic_string(&v179, &__str, 0, v59 + 1, &v177);
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }

                __str = v179;
              }
            }
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__str.__r_.__value_.__l.__data_, &v180.__r_.__value_.__l.__data_, &v177);
          IsRelativePath = pxrInternal__aapl__pxrReserved__::ArchNormPath();
          if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v180.__r_.__value_.__l.__data_);
          }

          v180 = v179;
          *(&v179.__r_.__value_.__s + 23) = 0;
          v179.__r_.__value_.__s.__data_[0] = 0;
          if (v178 < 0)
          {
            operator delete(v177);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if ((atomic_load_explicit(&qword_27EE53798, memory_order_acquire) & 1) == 0)
        {
          IsRelativePath = __cxa_guard_acquire(&qword_27EE53798);
          if (IsRelativePath)
          {
            qword_27EE537E8 = 0;
            qword_27EE537E0 = 0;
            qword_27EE537D8 = &qword_27EE537E0;
            __cxa_guard_release(&qword_27EE53798);
          }
        }

        if ((atomic_load_explicit(&qword_27EE537A0, memory_order_acquire) & 1) == 0)
        {
          IsRelativePath = __cxa_guard_acquire(&qword_27EE537A0);
          if (IsRelativePath)
          {
            v110 = std::string::basic_string[abi:ne200100]<0>(&__str, "");
            realityio::mtlx::UsdMtlxGetDocument(v110, &v179);
            RIO_MTLX::Document::getReferencedSourceUris(v179.__r_.__value_.__l.__data_, &unk_27EE537F0);
            if (v179.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v179.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

            __cxa_guard_release(&qword_27EE537A0);
          }
        }

        v60 = qword_27EE537F8;
        if (!qword_27EE537F8)
        {
          goto LABEL_137;
        }

        v61 = &qword_27EE537F8;
        do
        {
          IsRelativePath = std::less<std::string>::operator()[abi:ne200100](&unk_27EE537F0, (v60 + 32), &v180.__r_.__value_.__l.__data_);
          if (IsRelativePath)
          {
            v62 = 8;
          }

          else
          {
            v62 = 0;
          }

          if (!IsRelativePath)
          {
            v61 = v60;
          }

          v60 = *(v60 + v62);
        }

        while (v60);
        if (v61 == &qword_27EE537F8 || (IsRelativePath = std::less<std::string>::operator()[abi:ne200100](&unk_27EE537F0, &v180.__r_.__value_.__l.__data_, v61 + 4), IsRelativePath))
        {
LABEL_137:
          v63 = qword_27EE537D8;
          v64 = v173;
          v65 = (v173 + 48);
          if (qword_27EE537D8 == &qword_27EE537E0)
          {
LABEL_157:
            v74 = RIO_MTLX::EMPTY_STRING(IsRelativePath);
            RIO_MTLX::NodeDef::getImplementation(v64, v74, &__str);
            v76 = __str.__r_.__value_.__r.__words[0];
            if (__str.__r_.__value_.__r.__words[0] && (v77 = RIO_MTLX::EMPTY_STRING(v75), RIO_MTLX::Element::isA<RIO_MTLX::NodeGraph>(v76, v77)))
            {
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&qword_27EE537D8, v65, v65);
              if (__str.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
              }

              v78 = 1;
            }

            else
            {
              if (__str.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__str.__r_.__value_.__l.__size_);
              }

              __str.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
              __str.__r_.__value_.__l.__size_ = "_IsLocalCustomNode";
              __str.__r_.__value_.__r.__words[2] = 805;
              v187 = "BOOL realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_IsLocalCustomNode(const mx::ConstNodeDefPtr &)";
              v188 = 0;
              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__str, "Locally defined custom nodes without nodegraph implementations are not currently supported.");
              v78 = 0;
            }
          }

          else
          {
            v66 = *(v173 + 71);
            if (v66 >= 0)
            {
              v67 = *(v173 + 71);
            }

            else
            {
              v67 = *(v173 + 56);
            }

            if (v66 >= 0)
            {
              v68 = (v173 + 48);
            }

            else
            {
              v68 = *(v173 + 48);
            }

            while (1)
            {
              v69 = *(v63 + 55);
              v70 = v69;
              if ((v69 & 0x80u) != 0)
              {
                v69 = *(v63 + 40);
              }

              if (v69 == v67)
              {
                v71 = v70 >= 0 ? (v63 + 32) : *(v63 + 32);
                IsRelativePath = memcmp(v71, v68, v67);
                if (!IsRelativePath)
                {
                  break;
                }
              }

              v72 = *(v63 + 8);
              if (v72)
              {
                do
                {
                  v73 = v72;
                  v72 = *v72;
                }

                while (v72);
              }

              else
              {
                do
                {
                  v73 = *(v63 + 16);
                  v39 = *v73 == v63;
                  v63 = v73;
                }

                while (!v39);
              }

              v63 = v73;
              if (v73 == &qword_27EE537E0)
              {
                goto LABEL_157;
              }
            }

            v78 = 1;
          }
        }

        else
        {
          v78 = 0;
        }

        if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v180.__r_.__value_.__l.__data_);
          if (!v78)
          {
            goto LABEL_189;
          }

LABEL_169:
          pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&__str, &data);
          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v180, &__str);
          MEMORY[0x24C1A5E00](&v179, v173 + 48);
          pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v177, &v180, &v179);
          if ((v179.__r_.__value_.__s.__data_[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v179.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v180);
          if ((v187 & 7) != 0)
          {
            atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
          if (__str.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
          }

          pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::Get();
          pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::ConnectableAPI(&__str, &v180);
          v79 = __str.__r_.__value_.__l.__size_;
          if (__str.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 48), 1uLL, memory_order_relaxed);
          }

          if (v182)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v182);
          }

          v182 = v79;
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v183, &__str.__r_.__value_.__r.__words[2]);
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v184, &__str.__r_.__value_.__r.__words[2] + 1);
          pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v185, &v187);
          v80 = MEMORY[0x24C1A5890](&__str);
          v81 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v80, &v180.__r_.__value_.__l.__size_, &v180.__r_.__value_.__r.__words[2]);
          v82 = *(&v151 + 1);
          *&v179.__r_.__value_.__l.__data_ = v151;
          if (*(&v151 + 1))
          {
            atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }

          if ((v187 & 7) != 0)
          {
            atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
          if (__str.__r_.__value_.__l.__size_)
          {
            pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
          }

          MEMORY[0x24C1A5610](&v180);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          goto LABEL_230;
        }

        if (v78)
        {
          goto LABEL_169;
        }

LABEL_189:
        if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
        {
          v83 = (v151 + 48);
          if (*(v151 + 71) < 0)
          {
            v83 = *v83;
          }

          pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__str, &data);
          Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&__str);
          pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Processing shader node (%s) to be added under parent (%s).\n", v85, v83, Text);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str);
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&__str, &data);
        v86 = v151;
        if (*(&v151 + 1))
        {
          atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v86)
        {
        }

        else
        {
          v180.__r_.__value_.__r.__words[0] = 0;
        }

        pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v177, &__str, &v180);
        if ((v180.__r_.__value_.__s.__data_[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v180.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        if (*(&v86 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v86 + 1));
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str);
        pxrInternal__aapl__pxrReserved__::UsdShadeShader::Define();
        v87 = v176;
        if (!v176)
        {
          goto LABEL_217;
        }

        if ((v176 & 7) != 0)
        {
          if ((atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            v87 &= 0xFFFFFFFFFFFFFFF8;
          }

          __str.__r_.__value_.__r.__words[0] = v87;
          __str.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
          if ((v87 & 7) != 0)
          {
            v88 = 0;
            if ((atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              __str.__r_.__value_.__r.__words[0] &= 0xFFFFFFFFFFFFFFF8;
            }

LABEL_211:
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::CreateIdAttr(&v169, &v180, &__str);
            if ((v172 & 7) != 0)
            {
              atomic_fetch_add_explicit((v172 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v171);
            if (v170)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v170);
            }

            pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&__str);
            if ((v88 & 1) == 0)
            {
              atomic_fetch_add_explicit((v87 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

LABEL_217:
            pxrInternal__aapl__pxrReserved__::UsdShadeShader::ConnectableAPI(&__str, &v180);
            v89 = __str.__r_.__value_.__l.__size_;
            if (__str.__r_.__value_.__l.__size_)
            {
              atomic_fetch_add_explicit((__str.__r_.__value_.__l.__size_ + 48), 1uLL, memory_order_relaxed);
            }

            if (v182)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v182);
            }

            v182 = v89;
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v183, &__str.__r_.__value_.__r.__words[2]);
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v184, &__str.__r_.__value_.__r.__words[2] + 1);
            pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v185, &v187);
            v90 = MEMORY[0x24C1A5890](&__str);
            v91 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(v90, &v180.__r_.__value_.__l.__size_, &v180.__r_.__value_.__r.__words[2]);
            v92 = *(&v151 + 1);
            *&v179.__r_.__value_.__l.__data_ = v151;
            if (*(&v151 + 1))
            {
              atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            if (v92)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v92);
            }

            if ((v187 & 7) != 0)
            {
              atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
            pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
            if (__str.__r_.__value_.__l.__size_)
            {
              pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
            }

            MEMORY[0x24C1A5280](&v180);
            pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
LABEL_230:
            v93 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v177);
            v94 = v151;
            v95 = RIO_MTLX::EMPTY_STRING(v93);
            RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Input>(v94, v95, &__str);
            v97 = __str.__r_.__value_.__l.__size_;
            for (k = __str.__r_.__value_.__r.__words[0]; k != v97; k += 2)
            {
              v98 = *k;
              v99 = k[1];
              if (v99)
              {
                atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v180.__r_.__value_.__r.__words[0] = v98;
              v180.__r_.__value_.__l.__size_ = v99;
              if ((v168 & 7) != 0)
              {
                atomic_fetch_add_explicit((v168 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v167);
              if (v166)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v166);
              }

              if (v180.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v180.__r_.__value_.__l.__size_);
              }

              if (v99)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v99);
              }
            }

            v180.__r_.__value_.__r.__words[0] = &__str;
            std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v180);
            if (v173)
            {
              v150 = v32;
              v101 = __str.__r_.__value_.__l.__size_;
              for (m = __str.__r_.__value_.__r.__words[0]; m != v101; m += 2)
              {
                v103 = *m;
                v104 = m[1];
                if (v104)
                {
                  atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v105 = RIO_MTLX::EMPTY_STRING(v100);
                RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(v103, v105, &v180);
                if (v180.__r_.__value_.__r.__words[0] != v180.__r_.__value_.__l.__size_)
                {
                  v106 = *v180.__r_.__value_.__l.__data_;
                  v107 = *(v180.__r_.__value_.__r.__words[0] + 8);
                  if (v107)
                  {
                    atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
                    atomic_fetch_add_explicit((v107 + 8), 1uLL, memory_order_relaxed);
                  }

                  v179.__r_.__value_.__r.__words[0] = v106;
                  v179.__r_.__value_.__l.__size_ = v107;
                  v177 = v151;
                  if (*(&v151 + 1))
                  {
                    atomic_fetch_add_explicit((*(&v151 + 1) + 8), 1uLL, memory_order_relaxed);
                  }
                }

                v179.__r_.__value_.__r.__words[0] = &v180;
                std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&v179);
                if (v104)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v104);
                }
              }

              v180.__r_.__value_.__r.__words[0] = &__str;
              std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&v180);
              v32 = v150;
              v33 = v147;
            }

            else
            {
              __str.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
              __str.__r_.__value_.__l.__size_ = "_AddNode";
              __str.__r_.__value_.__r.__words[2] = 874;
              v187 = "void realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_AddNode(const mx::ConstNodePtr &, const UsdPrim &)";
              v188 = 0;
              v108 = (v151 + 48);
              if (*(v151 + 71) < 0)
              {
                v108 = *v108;
              }

              pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__str, "Unable to find the nodedef for '%s' node, outputs not added.", v108);
            }

            MEMORY[0x24C1A5890](&v181);
            if (*(&v173 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v173 + 1));
            }

            v109 = v175;
            if (v175 && atomic_fetch_add_explicit((v175 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              (*(*v109 + 8))(v109);
            }

            if ((v176 & 7) != 0)
            {
              atomic_fetch_add_explicit((v176 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

LABEL_267:
            v31 = *(&v151 + 1);
            if (*(&v151 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v151 + 1));
            }

            goto LABEL_269;
          }
        }

        else
        {
          __str.__r_.__value_.__r.__words[0] = v176;
          __str.__r_.__value_.__l.__size_ = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::TfToken>(void)::ti + 1;
        }

        v88 = 1;
        goto LABEL_211;
      }

LABEL_269:
      v32 += 2;
    }

    while (v32 != v33);
  }

  __str.__r_.__value_.__r.__words[0] = &v152;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__str);
  v112 = a2[10];
  if (v112 != a2 + 11)
  {
    do
    {
      v114 = v112[4];
      v113 = v112[5];
      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if ((*(v181 + 23) & 0x8000000000000000) != 0)
      {
        if (!*(v181 + 8))
        {
          goto LABEL_318;
        }
      }

      else if (!*(v181 + 23))
      {
        goto LABEL_318;
      }

      v115 = std::__tree<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<realityio::UntypedInputOutputWrapperObject>>>>::find<std::string>((a2 + 13), v181);
      if (a2 + 14 == v115)
      {
        __str.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
        __str.__r_.__value_.__l.__size_ = "_ConnectPorts";
        __str.__r_.__value_.__r.__words[2] = 979;
        v187 = "void realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_ConnectPorts(const mx::ConstPortElementPtr &, const D &) [D = pxrInternal__aapl__pxrReserved__::UsdShadeInput]";
        v188 = 0;
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v169, (v112 + 6));
        v119 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v169);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&__str, "Output for <%s> missing", v119);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        v111 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v169);
        goto LABEL_318;
      }

      v116 = v115;
      v117 = v115[7];
      if ((v115[8] - v117) < 0x21)
      {
        if (v113)
        {
          atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
          v117 = v115[7];
        }

        if (!v113)
        {
          goto LABEL_320;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
LABEL_319:
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        goto LABEL_320;
      }

      LODWORD(__str.__r_.__value_.__l.__data_) = 3;
      __str.__r_.__value_.__l.__size_ = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
      v118 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
      v187 = 0;
      if ((*(v169 + 23) & 0x8000000000000000) != 0)
      {
        if (v169[1])
        {
LABEL_297:
          v121 = v116[7];
          v120 = v116[8];
          while (v121 != v120)
          {
            pxrInternal__aapl__pxrReserved__::UsdShadeOutput::GetBaseName(&v165, v121);
            MEMORY[0x24C1A5E00](&v163, v169);
            v122 = v165;
            v123 = v163;
            if ((v163 & 7) != 0)
            {
              atomic_fetch_add_explicit((v163 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v165 & 7) != 0)
            {
              atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
            }

            if ((v123 ^ v122) <= 7)
            {
              LODWORD(__str.__r_.__value_.__l.__data_) = *v121;
              v124 = *(v121 + 8);
              if (v124)
              {
                atomic_fetch_add_explicit((v124 + 48), 1uLL, memory_order_relaxed);
              }

              if (__str.__r_.__value_.__l.__size_)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
              }

              __str.__r_.__value_.__l.__size_ = v124;
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__str.__r_.__value_.__r.__words[2], (v121 + 16));
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&__str.__r_.__value_.__r.__words[2] + 4, (v121 + 20));
              pxrInternal__aapl__pxrReserved__::TfToken::operator=(&v187, (v121 + 24));
              break;
            }

            v121 += 32;
          }
        }
      }

      else if (*(v169 + 23))
      {
        goto LABEL_297;
      }

      if (v113)
      {
        atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v113)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v113);
      }

      if ((v187 & 7) != 0)
      {
        atomic_fetch_add_explicit((v187 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&__str.__r_.__value_.__r.__words[2]);
      v111 = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        v111 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(__str.__r_.__value_.__l.__size_);
      }

LABEL_318:
      if (v113)
      {
        goto LABEL_319;
      }

LABEL_320:
      v125 = v112[1];
      if (v125)
      {
        do
        {
          v126 = v125;
          v125 = *v125;
        }

        while (v125);
      }

      else
      {
        do
        {
          v126 = v112[2];
          v39 = *v126 == v112;
          v112 = v126;
        }

        while (!v39);
      }

      v112 = v126;
    }

    while (v126 != a2 + 11);
  }

  if (v145)
  {
    v127 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v172 = 0;
    v169 = (MEMORY[0x277D867A8] + 16);
    v128 = *v149;
    v129 = RIO_MTLX::EMPTY_STRING(v127);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(v128, v129, &v165);
    v130 = v165;
    if (v165 != v166)
    {
      v131 = *(v165 + 8);
      if (v131)
      {
        atomic_fetch_add_explicit((v131 + 8), 1uLL, memory_order_relaxed);
        v132 = *(v130 + 8);
        v163 = *v130;
        v164 = v132;
        if (v132)
        {
          atomic_fetch_add_explicit(v132 + 1, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v163 = *v165;
        v164 = 0;
      }
    }

    __str.__r_.__value_.__r.__words[0] = &v165;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__str);
    MEMORY[0x24C1A5890](&v169);
    goto LABEL_360;
  }

  if (a3)
  {
    v133 = *v149;
    v134 = RIO_MTLX::EMPTY_STRING(v111);
    RIO_MTLX::Element::getChildrenOfType<RIO_MTLX::Output>(v133, v134, &v181);
    v136 = v181;
    v137 = v182;
    while (v136 != v137)
    {
      v135 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*v136 + 160), &qword_27EE53A30);
      if (v135)
      {
        v138 = v135 + 40;
      }

      else
      {
        v135 = RIO_MTLX::EMPTY_STRING(0);
        v138 = v135;
      }

      v139 = v138[23];
      if ((v139 & 0x80u) == 0)
      {
        v140 = v138[23];
      }

      else
      {
        v140 = *(v138 + 1);
      }

      if (v140)
      {
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_346;
        }
      }

      else
      {
        v135 = RIO_MTLX::EMPTY_STRING(v135);
        v138 = v135;
        v139 = v135[23];
        if ((v139 & 0x80) == 0)
        {
LABEL_346:
          if (v139)
          {
            goto LABEL_350;
          }

          goto LABEL_358;
        }
      }

      if (*(v138 + 1))
      {
LABEL_350:
        MEMORY[0x24C1A5E00](&v165, v138);
        v135 = std::__tree<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::__map_value_compare<std::string,std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,realityio::WrappedRERef<REAsset *>>>>::__find_equal<std::string>(a3, &v169, (*v136 + 48));
        v141 = *v135;
        if (!*v135)
        {
          operator new();
        }

        v142 = (v141 + 56);
        if (&v165 == (v141 + 56))
        {
          if ((v165 & 7) != 0)
          {
            atomic_fetch_add_explicit((v165 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }
        }

        else
        {
          if ((*v142 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v142 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          *v142 = v165;
        }
      }

LABEL_358:
      v136 += 16;
    }

    __str.__r_.__value_.__r.__words[0] = &v181;
    std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100](&__str);
  }

LABEL_360:
  *a1 = data;
  *(a1 + 8) = size;
  size = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), &v160);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), &v161);
  *(a1 + 24) = v162;
  v162 = 0;
LABEL_361:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v160);
  result = size;
  if (size)
  {
    return pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(size);
  }

  return result;
}

void sub_247706FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = *(v48 - 224);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
  }

  __cxa_guard_abort(&qword_27EE537A0);
  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  MEMORY[0x24C1A5890](v48 - 176);
  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  v51 = a47;
  if (a47 && atomic_fetch_add_explicit((a47 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    (*(*v51 + 8))(v51);
  }

  if ((a48 & 7) != 0)
  {
    atomic_fetch_add_explicit((a48 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  *(v48 - 176) = &a21;
  std::vector<std::shared_ptr<realityio::DirtyStageDescriptor const>>::__destroy_vector::operator()[abi:ne200100]((v48 - 176));
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a28);
  _Unwind_Resume(a1);
}

uint64_t **realityio::mtlx::anonymous namespace::_SetCoreUIAttributes(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v15, (a1 + 8), (a1 + 16));
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    v14 = 0;
    v12 = MEMORY[0x277D86798] + 16;
    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v17);
    if (v16)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
    }

    if (v13)
    {
      if ((*(v13 + 57) & 8) == 0)
      {
        v5 = (*(v12 + 32))(&v12);
        if (v5)
        {
          v11 = 0;
          if (v6)
          {
            if (v6)
            {
              v16 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec2f>(void)::ti + 3;
              v15 = __PAIR64__(v11, HIDWORD(v11));
              pxrInternal__aapl__pxrReserved__::UsdUINodeGraphNodeAPI::CreatePosAttr(&v7, &v12, &v15);
              if ((v10 & 7) != 0)
              {
                atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
              }

              pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
              pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v9);
              if (v8)
              {
                pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v8);
              }

              pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(&v15);
            }
          }

          if (std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*a2 + 160), &qword_27EE53AC0))
          {
            RIO_MTLX::fromValueString<RIO_MTLX::Vector3>(v15);
            v16 = &pxrInternal__aapl__pxrReserved__::VtValue::GetTypeInfo<pxrInternal__aapl__pxrReserved__::GfVec3f>(void)::ti + 2;
            operator new();
          }
        }
      }
    }

    return MEMORY[0x24C1A5820](&v12);
  }

  return result;
}

void sub_24770792C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::anonymous namespace::_GetInheritanceStack<RIO_MTLX::NodeDef const>(RIO_MTLX::Element ***a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  RIO_MTLX::Element::getDocument(&v34, *a2);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    while (1)
    {
      v7 = v37[0];
      if (!v37[0])
      {
LABEL_10:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v8 = v7;
          v9 = v7[4];
          if (v9 <= v6)
          {
            break;
          }

          v7 = *v8;
          if (!*v8)
          {
            goto LABEL_10;
          }
        }

        if (v9 >= v6)
        {
          break;
        }

        v7 = v8[1];
        if (!v7)
        {
          goto LABEL_10;
        }
      }

      v10 = a1[1];
      v11 = a1[2];
      if (v10 >= v11)
      {
        v13 = *a1;
        v14 = v10 - *a1;
        v15 = v14 >> 4;
        v16 = (v14 >> 4) + 1;
        if (v16 >> 60)
        {
          std::vector<pxrInternal__aapl__pxrReserved__::UsdShadeOutput>::__throw_length_error[abi:ne200100]();
        }

        v17 = v11 - v13;
        if (v17 >> 3 > v16)
        {
          v16 = v17 >> 3;
        }

        if (v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v18 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (!(v18 >> 60))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = (16 * v15);
        *v19 = v6;
        v19[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *a1;
          v14 = a1[1] - *a1;
          v15 = v14 >> 4;
        }

        v12 = v19 + 2;
        v20 = &v19[-2 * v15];
        v4 = memcpy(v20, v13, v14);
        *a1 = v20;
        a1[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v10 = v6;
        v10[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v10 + 2;
      }

      a1[1] = v12;
      v21 = v34;
      v22 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(v6 + 20, &qword_27EE53970);
      if (v22)
      {
        v23 = (v22 + 40);
      }

      else
      {
        v22 = RIO_MTLX::EMPTY_STRING(0);
        v23 = v22;
      }

      v24 = *(v23 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = v23[1];
      }

      if (!v24)
      {
        v23 = RIO_MTLX::EMPTY_STRING(v22);
      }

      v4 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v21 + 96), v23);
      v25 = v4;
      if (v4)
      {
        v4 = *(v4 + 5);
        v26 = *(v25 + 6);
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          v6 = v4;
          v27 = 0;
          if (v4)
          {
            v28 = 0;
          }

          else
          {
            v28 = v26;
          }

          if (v26 && v4)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            v27 = v26;
            if (!v5)
            {
              goto LABEL_49;
            }
          }

          else
          {
            v26 = v28;
            if (!v5)
            {
              goto LABEL_49;
            }
          }

LABEL_48:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_49;
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = 0;
      v6 = 0;
      if (v5)
      {
        goto LABEL_48;
      }

LABEL_49:
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v5 = v27;
      if (!v6)
      {
        goto LABEL_56;
      }
    }
  }

  v27 = v5;
LABEL_56:
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v29 = *a1;
  v30 = a1[1];
  if (*a1 != v30)
  {
    for (i = v30 - 2; v29 < i; i -= 2)
    {
      v32 = *v29;
      *v29 = *i;
      *i = v32;
      v33 = *(v29 + 1);
      *(v29 + 1) = i[1];
      i[1] = v33;
      v29 += 16;
    }
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(v37[0]);
}

void sub_247707D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void *a13)
{
  std::__tree<std::shared_ptr<RIO_MTLX::Collection>>::destroy(a13);
  std::vector<std::shared_ptr<realityio::SkeletalAnimationAggregationBuilder::SkeletalAnimationSceneDataT>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_NodeGraphBuilder::_AddInput(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v10 = *a3;
  v9 = a3[1];
  v93 = *a3;
  v94 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
  {
    v11 = (v10 + 48);
    if (*(v10 + 71) < 0)
    {
      v11 = *v11;
    }

    v12 = pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v113, (a4 + 8), (a4 + 16));
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v101, v12);
    Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v101);
    pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("Adding input (%s) to connectable prim: (%s)\n", v14, v11, Text);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
    if ((v114 & 7) != 0)
    {
      atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113.__r_.__value_.__r.__words[2]);
    if (v113.__r_.__value_.__l.__size_)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v113.__r_.__value_.__l.__size_);
    }

    v10 = v93;
    v9 = v94;
  }

  v113.__r_.__value_.__r.__words[0] = v10;
  v113.__r_.__value_.__l.__size_ = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v108 = v10;
  v109 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v113.__r_.__value_.__r.__words[0] + 23) & 0x8000000000000000) == 0)
  {
    if (!*(v113.__r_.__value_.__r.__words[0] + 23))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(v113.__r_.__value_.__r.__words[0] + 8))
  {
LABEL_21:
    v16 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::SetDocumentation();
  }

LABEL_22:
  memset(&v110, 0, sizeof(v110));
  v17 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((v10 + 160), &qword_27EE538C8);
  if (v17)
  {
    RIO_MTLX::fromValueString<std::vector<std::string>>(v112, &v113);
    std::vector<std::string>::__vdeallocate(&v110);
    v110 = v113;
    memset(&v113, 0, sizeof(v113));
    *&v101 = &v113;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v101);
    if (v110.__begin_ != v110.__end_)
    {
      pxrInternal__aapl__pxrReserved__::UsdProperty::GetPropertyStack();
      v18 = *v113.__r_.__value_.__l.__data_;
      *&v101 = v18;
      if (v18)
      {
        atomic_fetch_add(v18, 1u);
        v112 = v101;
        if (v101)
        {
          atomic_fetch_add(v101, 1u);
        }
      }

      else
      {
        v112 = 0;
      }

      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v101);
      *&v101 = &v113;
      std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__destroy_vector::operator()[abi:ne200100](&v101);
      v103 = 0;
      v101 = 0u;
      v102 = 0u;
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::reserve(&v101, 0xAAAAAAAAAAAAAAABLL * ((v110.__end_ - v110.__begin_) >> 3));
      begin = v110.__begin_;
      end = v110.__end_;
      if (v110.__begin_ != v110.__end_)
      {
        while (1)
        {
          MEMORY[0x24C1A5E00](&v107, begin);
          if (DWORD2(v101))
          {
            v113.__r_.__value_.__r.__words[0] = "vt/array.h";
            v113.__r_.__value_.__l.__size_ = "emplace_back";
            v113.__r_.__value_.__r.__words[2] = 416;
            v114 = "void pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::emplace_back(Args &&...) [T = pxrInternal__aapl__pxrReserved__::TfToken, Args = <pxrInternal__aapl__pxrReserved__::TfToken>]";
            v115 = 0;
            if (v102)
            {
              v32 = 4;
            }

            else
            {
              v32 = 3;
            }

            if (HIDWORD(v101))
            {
              v33 = v32;
            }

            else
            {
              v33 = 2;
            }

            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v113, 1, "Array rank %u != 1", v33);
            goto LABEL_38;
          }

          v21 = v101;
          v22 = v103;
          if (*(&v102 + 1))
          {
            break;
          }

          if (v103)
          {
            v23 = atomic_load(v103 - 2);
            v22 = v103;
            if (v23 != 1)
            {
              break;
            }

            v24 = *(v103 - 1);
          }

          else
          {
            v24 = 0;
          }

          if (v101 == v24)
          {
            break;
          }

          v22[v101] = v107;
          v107 = 0;
LABEL_37:
          *&v101 = v101 + 1;
LABEL_38:
          if ((v107 & 7) != 0)
          {
            atomic_fetch_add_explicit((v107 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          if (++begin == end)
          {
            goto LABEL_58;
          }
        }

        v25 = 1;
        do
        {
          v26 = v25;
          v25 *= 2;
        }

        while (v26 < v101 + 1);
        New = pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_AllocateNew(&v101, v26);
        if (v21)
        {
          v28 = 8 * v21;
          v29 = New;
          do
          {
            v30 = *v22;
            *v29 = *v22;
            if ((v30 & 7) != 0 && (atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
            {
              *v29 &= 0xFFFFFFFFFFFFFFF8;
            }

            ++v22;
            ++v29;
            v28 -= 8;
          }

          while (v28);
        }

        New[v21] = v107;
        v107 = 0;
        v31 = New;
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v101);
        v103 = v31;
        goto LABEL_37;
      }

LABEL_58:
      pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfAttributeSpec>::operator->(&v112);
      pxrInternal__aapl__pxrReserved__::SdfAttributeSpec::SetAllowedTokens();
      pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>::_DecRef(&v101);
      pxrInternal__aapl__pxrReserved__::SdfSpec::~SdfSpec(&v112);
    }
  }

  v34 = v108;
  if (*(v101 + 23) < 0)
  {
    v37 = *(v101 + 8);
    if (!v37)
    {
      goto LABEL_72;
    }

    std::string::__init_copy_ctor_external(&v113, *v101, v37);
  }

  else
  {
    if (!*(v101 + 23))
    {
      goto LABEL_72;
    }

    v36 = *v101;
    v113.__r_.__value_.__r.__words[2] = *(v101 + 16);
    *&v113.__r_.__value_.__l.__data_ = v36;
  }

  size = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  v39 = &v113;
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v113.__r_.__value_.__l.__size_;
    v39 = v113.__r_.__value_.__r.__words[0];
  }

  for (; size; --size)
  {
    if (v39->__r_.__value_.__s.__data_[0] == 47)
    {
      v39->__r_.__value_.__s.__data_[0] = 58;
    }

    v39 = (v39 + 1);
  }

  v35 = pxrInternal__aapl__pxrReserved__::UsdProperty::SetDisplayGroup();
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

LABEL_72:
  if ((*(v113.__r_.__value_.__r.__words[0] + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v113.__r_.__value_.__r.__words[0] + 8))
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  if (*(v113.__r_.__value_.__r.__words[0] + 23))
  {
LABEL_76:
    pxrInternal__aapl__pxrReserved__::UsdObject::SetDisplayName();
  }

LABEL_77:
  v113.__r_.__value_.__r.__words[0] = &v110;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v113);
  v40 = v109;
  if (v109)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v109);
  }

  if (!a5)
  {
    v45 = v100;
    if ((*(v100 + 23) & 0x8000000000000000) != 0)
    {
      if (!v100[1])
      {
        goto LABEL_112;
      }
    }

    else if (!*(v100 + 23))
    {
      goto LABEL_112;
    }

    v46 = *(a2 + 64);
    if (!v46)
    {
      goto LABEL_102;
    }

    v47 = a2 + 64;
    do
    {
      v48 = std::less<std::string>::operator()[abi:ne200100](a2 + 56, (v46 + 32), v45);
      if (v48)
      {
        v49 = 8;
      }

      else
      {
        v49 = 0;
      }

      if (!v48)
      {
        v47 = v46;
      }

      v46 = *(v46 + v49);
    }

    while (v46);
    if (v47 == a2 + 64 || std::less<std::string>::operator()[abi:ne200100](a2 + 56, v45, (v47 + 32)))
    {
LABEL_102:
      v113.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
      v113.__r_.__value_.__l.__size_ = "_AddInputCommon";
      v113.__r_.__value_.__r.__words[2] = 908;
      v114 = "UsdShadeInput realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_AddInputCommon(const mx::ConstValueElementPtr &, const UsdShadeConnectableAPI &, BOOL)";
      v115 = 0;
      v50 = v100;
      if (*(v100 + 23) < 0)
      {
        v50 = *v100;
      }

      v51 = (v93 + 48);
      if (*(v93 + 71) < 0)
      {
        v51 = *v51;
      }

      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v113, "No interface name '%s' for node '%s'", v50, v51);
      goto LABEL_112;
    }

    v65 = v93;
    v66 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    RIO_MTLX::Element::asA<RIO_MTLX::Input>(v65, &v101);
    if (v101)
    {
      data = v110.__begin_;
      v70 = SHIBYTE(v110.__begin_->__r_.__value_.__r.__words[2]);
      if ((v70 & 0x8000000000000000) != 0)
      {
        v70 = v110.__begin_->__r_.__value_.__l.__size_;
      }

      if (v70)
      {
        v113.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
        v113.__r_.__value_.__l.__size_ = "_ConnectPorts";
        v113.__r_.__value_.__r.__words[2] = 1013;
        v114 = "void realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_ConnectPorts(const mx::ConstElementPtr &, const U &, const D &) [U = pxrInternal__aapl__pxrReserved__::UsdShadeInput, D = pxrInternal__aapl__pxrReserved__::UsdShadeInput]";
        v115 = 0;
        if (SHIBYTE(v110.__begin_->__r_.__value_.__r.__words[2]) < 0)
        {
          data = v110.__begin_->__r_.__value_.__l.__data_;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v108, (v47 + 56));
        v71 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v108);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v112, &v95);
        v72 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v112);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v113, "Dropped member %s between <%s> -> <%s>", data, v71, v72);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        v68 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      }

      v73 = v110.__begin_;
      v74 = SHIBYTE(v110.__begin_->__r_.__value_.__r.__words[2]);
      if ((v74 & 0x8000000000000000) != 0)
      {
        v74 = v110.__begin_->__r_.__value_.__l.__size_;
      }

      if (v74)
      {
        v113.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
        v113.__r_.__value_.__l.__size_ = "_ConnectPorts";
        v113.__r_.__value_.__r.__words[2] = 1021;
        v114 = "void realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_ConnectPorts(const mx::ConstElementPtr &, const U &, const D &) [U = pxrInternal__aapl__pxrReserved__::UsdShadeInput, D = pxrInternal__aapl__pxrReserved__::UsdShadeInput]";
        v115 = 0;
        if (SHIBYTE(v110.__begin_->__r_.__value_.__r.__words[2]) < 0)
        {
          v73 = v110.__begin_->__r_.__value_.__l.__data_;
        }

        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v108, (v47 + 56));
        v75 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v108);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v112, &v95);
        v76 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v112);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v113, "Dropped swizzle %s between <%s> -> <%s>", v73, v75, v76);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
      }
    }

    if (*(&v101 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v101 + 1));
    }

    if (pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
    {
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v113, (v47 + 56));
      v77 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v113);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v101, &v95);
      v78 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v101);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg(" - Getting referencedPrim for (%s) under (%s).\n", v79, v77, v78);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v101);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
    }

    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v112, (v47 + 56));
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v101, &v96, &v97);
    pxrInternal__aapl__pxrReserved__::UsdObject::UsdObject(&v110, (v47 + 64), (v47 + 72));
    pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v113, &v101);
    if (LODWORD(v113.__r_.__value_.__l.__data_) == LODWORD(v110.__begin_) && *&v113.__r_.__value_.__r.__words[1] == *&v110.__end_ && (v80 = v114, (v111 ^ v114) < 8))
    {
      v81 = 0;
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v108 = MEMORY[0x277D86778] + 16;
      if (!v109 || (v109[2].__shared_owners_ & 0x800) != 0)
      {
        v81 = 0;
      }

      else
      {
        v81 = (*(MEMORY[0x277D86778] + 48))(&v108);
      }

      MEMORY[0x24C1A5610](&v108);
      v80 = v114;
    }

    if ((v80 & 7) != 0)
    {
      atomic_fetch_add_explicit((v80 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113.__r_.__value_.__r.__words[2]);
    v82 = v113.__r_.__value_.__l.__size_;
    if (v113.__r_.__value_.__l.__size_)
    {
      v82 = pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v113.__r_.__value_.__l.__size_);
    }

    if (v81)
    {
      pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v82);
      pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
      if (pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA())
      {
        pxrInternal__aapl__pxrReserved__::UsdPrim::GetParent(&v113, &v101);
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v108, &v113);
        if ((v114 & 7) != 0)
        {
          atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113.__r_.__value_.__r.__words[2]);
        if (v113.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v113.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v108, &v101);
      }

      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v113, &v110);
      NameToken = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v113);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendChild(&v107, &v108, NameToken);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v84 = pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v105, &v113);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v104, (v47 + 56));
      v85 = pxrInternal__aapl__pxrReserved__::SdfPath::GetNameToken(&v104);
      pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(&v106, &v105, v85);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v112, &v106);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(&v112 + 4, &v106 + 1);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v106);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v104);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v105);
      if ((v114 & 7) != 0)
      {
        atomic_fetch_add_explicit((v114 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v113.__r_.__value_.__r.__words[2]);
      if (v113.__r_.__value_.__l.__size_)
      {
        pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v113.__r_.__value_.__l.__size_);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v107);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v108);
    }

    if (MEMORY[0x24C1A73C0](&v95, &v112))
    {
      if (!pxrInternal__aapl__pxrReserved__::TfDebug::IsEnabled<pxrInternal__aapl__pxrReserved__::RIO_USDMTLX_READER__DebugCodes>())
      {
LABEL_188:
        if ((v111 & 7) != 0)
        {
          atomic_fetch_add_explicit((v111 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v110.__end_cap_);
        if (v110.__end_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v110.__end_);
        }

        if ((BYTE8(v102) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v102 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v102);
        if (*(&v101 + 1))
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(*(&v101 + 1));
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v112);
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }

        goto LABEL_112;
      }

      v86 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v112);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v113, &v95);
      v87 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v113);
      pxrInternal__aapl__pxrReserved__::TfDebug::Helper::Msg("    + Connected <%s> -> <%s>\n", v88, v86, v87);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v89 = &v113;
    }

    else
    {
      v113.__r_.__value_.__r.__words[0] = "CoreRealityIO/mtlxToUsdShade.cpp";
      v113.__r_.__value_.__l.__size_ = "_ConnectPorts";
      v113.__r_.__value_.__r.__words[2] = 1054;
      v114 = "void realityio::mtlx::(anonymous namespace)::_NodeGraphBuilder::_ConnectPorts(const mx::ConstElementPtr &, const U &, const D &) [U = pxrInternal__aapl__pxrReserved__::UsdShadeInput, D = pxrInternal__aapl__pxrReserved__::UsdShadeInput]";
      v115 = 0;
      v90 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v112);
      pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v108, &v95);
      v91 = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(&v108);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v113, "Failed to connect <%s> -> <%s>", v90, v91);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      v89 = &v108;
    }

    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(v89);
    goto LABEL_188;
  }

  v42 = (a2 + 64);
  v41 = *(a2 + 64);
  v43 = v93;
  if (!v41)
  {
    goto LABEL_90;
  }

  while (1)
  {
    while (1)
    {
      v44 = v41;
      if (!std::less<std::string>::operator()[abi:ne200100](a2 + 56, (v43 + 48), v41 + 4))
      {
        break;
      }

      v41 = *v44;
      v42 = v44;
      if (!*v44)
      {
        goto LABEL_90;
      }
    }

    if (!std::less<std::string>::operator()[abi:ne200100](a2 + 56, v44 + 4, (v43 + 48)))
    {
      break;
    }

    v42 = (v44 + 1);
    v41 = v44[1];
    if (!v41)
    {
      goto LABEL_90;
    }
  }

  v64 = *v42;
  if (!*v42)
  {
LABEL_90:
    operator new();
  }

  *(v64 + 56) = v95;
  v52 = v96;
  if (v96)
  {
    atomic_fetch_add_explicit((v96 + 48), 1uLL, memory_order_relaxed);
  }

  v53 = *(v64 + 64);
  if (v53)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v53);
  }

  *(v64 + 64) = v52;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v64 + 72, &v97);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v64 + 76, &v98);
  pxrInternal__aapl__pxrReserved__::TfToken::operator=((v64 + 80), &v99);
LABEL_112:
  v54 = *(a2 + 88);
  if (!v54)
  {
LABEL_119:
    operator new();
  }

  v55 = *a3;
  while (1)
  {
    while (1)
    {
      v56 = v54;
      v57 = v54[4];
      if (v57 <= v55)
      {
        break;
      }

      v54 = *v56;
      if (!*v56)
      {
        goto LABEL_119;
      }
    }

    if (v57 >= v55)
    {
      break;
    }

    v54 = v56[1];
    if (!v54)
    {
      goto LABEL_119;
    }
  }

  v58 = v56;
  *(v56 + 12) = v95;
  v59 = (v56 + 6);
  v60 = v58[7];
  if (v60)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v60);
  }

  v58[7] = v96;
  v96 = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=((v58 + 8), &v97);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(v58 + 68, &v98);
  if (&v95 != v59)
  {
    v61 = v58[9];
    if ((v61 & 7) != 0)
    {
      atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v58[9] = v99;
    v99 = 0;
  }

  *a1 = *(v58 + 12);
  v62 = v58[7];
  *(a1 + 8) = v62;
  if (v62)
  {
    atomic_fetch_add_explicit((v62 + 48), 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 16), v58 + 16);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl((a1 + 20), v58 + 17);
  v63 = v58[9];
  *(a1 + 24) = v63;
  if ((v63 & 7) != 0 && (atomic_fetch_add_explicit((v63 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 24) &= 0xFFFFFFFFFFFFFFF8;
  }

  if ((v99 & 7) != 0)
  {
    atomic_fetch_add_explicit((v99 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v97);
  if (v96)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v96);
  }

  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }
}

void sub_247708D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(va);
  pxrInternal__aapl__pxrReserved__::UsdPrim::~UsdPrim(&a21);
  pxrInternal__aapl__pxrReserved__::SdfPath::~SdfPath((v33 - 152));
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeInput::~UsdShadeInput(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(a1);
}

uint64_t **realityio::mtlx::anonymous namespace::_SetGlobalCoreUIAttributes(realityio::mtlx::_anonymous_namespace_ *a1, uint64_t *a2)
{
  v4 = *(v5 + 23);
  if (v4 < 0)
  {
    v4 = v5[1];
  }

  if (v4)
  {
    return pxrInternal__aapl__pxrReserved__::UsdObject::SetDocumentation();
  }

  return result;
}

BOOL realityio::mtlx::anonymous namespace::_Value<float>(_DWORD *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>((*a2 + 160), a3);
  if (v6)
  {
    v9 = 0;
    *a1 = v9;
  }

  return v6 != 0;
}

void realityio::mtlx::anonymous namespace::_MakeInput<pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI const>(realityio::mtlx::_anonymous_namespace_ *a1, pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI *a2, std::string **a3)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::find<std::string>(&(*a3)[6].__r_.__value_.__r.__words[2], &qword_27EE53AA8);
  if (v6)
  {
    v7 = (v6 + 40);
  }

  else
  {
    v6 = RIO_MTLX::EMPTY_STRING(0);
    v7 = v6;
  }

  v8 = *(v7 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = v7[1];
  }

  if (v8)
  {
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    if (v7[1])
    {
      goto LABEL_9;
    }

LABEL_23:
    *a1 = 3;
    *(a1 + 1) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(a1 + 3) = 0;
    return;
  }

  v7 = RIO_MTLX::EMPTY_STRING(v6);
  v9 = *(v7 + 23);
  if (v9 < 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if (!v9)
  {
    goto LABEL_23;
  }

LABEL_9:
  v16 = 0;
  realityio::mtlx::UsdMtlxGetUsdType(v7, &v13);
  v15 = v13;
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::_IsEmpty(&v15))
  {
    Data = atomic_load(MEMORY[0x277D86578]);
    if (!Data)
    {
      Data = pxrInternal__aapl__pxrReserved__::TfStaticData<pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType const,pxrInternal__aapl__pxrReserved__::Sdf_ValueTypeNamesType::_Init>::_TryToCreateData(MEMORY[0x277D86578]);
    }

    v15 = *(Data + 11);
    MEMORY[0x24C1A5E00](&v13, v7);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v16 = v13;
  }

  v11 = *a3;
  v12 = a3[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
  }

  else
  {
    v13 = 0;
  }

  pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::CreateInput(a2, &v13, &v15);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v16)
  {
    pxrInternal__aapl__pxrReserved__::UsdShadeInput::SetRenderType(a1, &v16);
    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_247709324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if ((a14 & 7) != 0)
  {
    atomic_fetch_add_explicit((a14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void realityio::mtlx::anonymous namespace::_CopyValue(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  __p = *a2;
  v54 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  realityio::mtlx::UsdMtlxGetUsdValue(&__p, 0, v64);
  v5 = v54;
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v65)
  {
    v5 = pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
  }

  if ((*(v63 + 23) & 0x8000000000000000) != 0)
  {
    if (!v63[1])
    {
      goto LABEL_53;
    }
  }

  else if (!*(v63 + 23))
  {
    goto LABEL_53;
  }

  if ((*(v62 + 23) & 0x8000000000000000) != 0)
  {
    if (!v62[1])
    {
      goto LABEL_53;
    }

LABEL_15:
    realityio::mtlx::UsdMtlxGetPackedUsdValues(__p, &v60);
    if (v60 == v61)
    {
      __p = "CoreRealityIO/mtlxToUsdShade.cpp";
      v54 = "_CopyValue";
      v55 = 474;
      v56 = "void realityio::mtlx::(anonymous namespace)::_CopyValue(const UsdShadeInput &, const mx::ConstValueElementPtr &)";
      v57 = 0;
      v14 = v63;
      if (*(v63 + 23) < 0)
      {
        v14 = *v63;
      }

      v15 = *a2;
      v41 = 0;
      v42 = 0;
      RIO_MTLX::Element::getNamePath(v15, &v41, v51);
      if (v52 >= 0)
      {
        v17 = v51;
      }

      else
      {
        v17 = v51[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf(v58, "Failed to parse valuecurve '%s' on '%s';  ignoring", v16, v14, v17);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper();
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }

      goto LABEL_52;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "integer");
    realityio::mtlx::UsdMtlxGetPackedUsdValues(&__p, v58);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
    }

    if ((v58[1] - v58[0]) == 32)
    {
      v8 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>(v58[0]);
      v9 = *pxrInternal__aapl__pxrReserved__::VtValue::Get<int>((v58[0] + 16));
      if (v9 >= v8)
      {
        v35 = v60;
        v36 = v61;
        v37 = (v61 - v60) >> 4;
        if (v37 == v9 - v8 + 1)
        {
          while (v35 != v36)
          {
            pxrInternal__aapl__pxrReserved__::UsdAttribute::Set();
            LODWORD(v8) = v8 + 1;
            v35 += 16;
          }

          goto LABEL_51;
        }

        __p = "CoreRealityIO/mtlxToUsdShade.cpp";
        v54 = "_CopyValue";
        v55 = 461;
        v56 = "void realityio::mtlx::(anonymous namespace)::_CopyValue(const UsdShadeInput &, const mx::ConstValueElementPtr &)";
        v57 = 0;
        v38 = *a2;
        v45 = 0;
        v46 = 0;
        RIO_MTLX::Element::getNamePath(v38, &v45, v49);
        if (v50 >= 0)
        {
          v40 = v49;
        }

        else
        {
          v40 = v49[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf(v51, "valuerange [%d,%d] doesn't match valuecurve size %zd on '%s';  ignoring", v39, v8, v9, v37, v40);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper();
        if (v52 < 0)
        {
          operator delete(v51[0]);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        v13 = v46;
        if (!v46)
        {
          goto LABEL_51;
        }
      }

      else
      {
        __p = "CoreRealityIO/mtlxToUsdShade.cpp";
        v54 = "_CopyValue";
        v55 = 454;
        v56 = "void realityio::mtlx::(anonymous namespace)::_CopyValue(const UsdShadeInput &, const mx::ConstValueElementPtr &)";
        v57 = 0;
        v10 = *a2;
        v47 = 0;
        v48 = 0;
        RIO_MTLX::Element::getNamePath(v10, &v47, v49);
        if (v50 >= 0)
        {
          v12 = v49;
        }

        else
        {
          v12 = v49[0];
        }

        pxrInternal__aapl__pxrReserved__::TfStringPrintf(v51, "Invalid valuerange [%d,%d] on '%s';  ignoring", v11, v8, v9, v12);
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper();
        if (v52 < 0)
        {
          operator delete(v51[0]);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        v13 = v48;
        if (!v48)
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      __p = "CoreRealityIO/mtlxToUsdShade.cpp";
      v54 = "_CopyValue";
      v55 = 470;
      v56 = "void realityio::mtlx::(anonymous namespace)::_CopyValue(const UsdShadeInput &, const mx::ConstValueElementPtr &)";
      v57 = 0;
      v18 = v62;
      if (*(v62 + 23) < 0)
      {
        v18 = *v62;
      }

      v19 = *a2;
      v43 = 0;
      v44 = 0;
      RIO_MTLX::Element::getNamePath(v19, &v43, v49);
      if (v50 >= 0)
      {
        v21 = v49;
      }

      else
      {
        v21 = v49[0];
      }

      pxrInternal__aapl__pxrReserved__::TfStringPrintf(v51, "Malformed valuerange '%s' on '%s';  ignoring", v20, v18, v21);
      pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper();
      if (v52 < 0)
      {
        operator delete(v51[0]);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      v13 = v44;
      if (!v44)
      {
        goto LABEL_51;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_51:
    __p = v58;
    std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_52:
    __p = &v60;
    std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&__p);
    goto LABEL_53;
  }

  if (*(v62 + 23))
  {
    goto LABEL_15;
  }

LABEL_53:
  ActiveColorSpace = RIO_MTLX::Element::getActiveColorSpace(*a2);
  v23 = ActiveColorSpace;
  v24 = *(ActiveColorSpace + 23);
  if ((v24 & 0x80u) != 0)
  {
    v24 = ActiveColorSpace[1];
  }

  if (v24)
  {
    RIO_MTLX::Element::getDocument(&__p, *a2);
    v25 = RIO_MTLX::Element::getActiveColorSpace(__p);
    v26 = *(v23 + 23);
    if (v26 >= 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v23[1];
    }

    v28 = *(v25 + 23);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = v25[1];
    }

    if (v27 == v28)
    {
      v30 = v26 >= 0 ? v23 : *v23;
      v31 = v29 >= 0 ? v25 : *v25;
      v32 = memcmp(v30, v31, v27) != 0;
    }

    else
    {
      v32 = 1;
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (v32)
    {
      v33 = (*(**a2 + 56))();
      if (std::string::compare(v33, 0, 5uLL, "color"))
      {
        v34 = *(v33 + 23);
        if (v34 < 0)
        {
          if (*(v33 + 8) != 8)
          {
            goto LABEL_82;
          }

          v33 = *v33;
        }

        else if (v34 != 8)
        {
          goto LABEL_82;
        }

        if (*v33 != 0x656D616E656C6966)
        {
          goto LABEL_82;
        }
      }

      MEMORY[0x24C1A5E00](&__p, v23);
      pxrInternal__aapl__pxrReserved__::UsdAttribute::SetColorSpace(a1, &__p);
      if ((__p & 7) != 0)
      {
        atomic_fetch_add_explicit((__p & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }
  }

LABEL_82:
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue(v64);
}

void sub_2477099B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  a33 = (v38 - 152);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&a33);
  a33 = (v38 - 128);
  std::vector<pxrInternal__aapl__pxrReserved__::VtValue>::__destroy_vector::operator()[abi:ne200100](&a33);
  pxrInternal__aapl__pxrReserved__::VtValue::~VtValue((v38 - 88));
  _Unwind_Resume(a1);
}

void realityio::mtlx::anonymous namespace::_AddReference(realityio::mtlx::_anonymous_namespace_ *this, const pxrInternal__aapl__pxrReserved__::UsdPrim *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  if ((pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(a2) & 1) == 0)
  {
    *this = 1;
    *(this + 1) = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    *(this + 3) = 0;
    return;
  }

  pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v29, a2);
  v6 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v29);
  pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v24, v6, a3);
  if (!pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v24))
  {
    goto LABEL_19;
  }

  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v19 = MEMORY[0x277D86778] + 16;
  if (!v20 || (v20[57] & 8) != 0)
  {
    MEMORY[0x24C1A5610](&v19);
  }

  else
  {
    v7 = (*(MEMORY[0x277D86778] + 48))(&v19);
    MEMORY[0x24C1A5610](&v19);
    if (v7)
    {
      *this = v24;
      *(this + 1) = v25;
      v25 = 0;
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 4, &v26);
      pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::Sdf_PathNodeHandleImpl(this + 5, &v27);
      *(this + 3) = v28;
      v28 = 0;
      goto LABEL_36;
    }
  }

  v9 = v25;
  if (!v25 || (*(v25 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v25, v8);
  }

  if (!**(v9 + 3))
  {
LABEL_19:
    if ((v28 & 7) != 0)
    {
      atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
    if (v25)
    {
      pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v25);
    }

    v15 = pxrInternal__aapl__pxrReserved__::TfWeakPtrFacade<pxrInternal__aapl__pxrReserved__::TfWeakPtr,pxrInternal__aapl__pxrReserved__::UsdStage>::operator->(&v29);
    v19 = 0;
    pxrInternal__aapl__pxrReserved__::UsdStage::DefinePrim(this, v15, a3, &v19);
    if ((v19 & 7) != 0)
    {
      atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::UsdPrim::GetReferences(&v19, this);
    pxrInternal__aapl__pxrReserved__::UsdObject::GetPath(&v18, a2);
    pxrInternal__aapl__pxrReserved__::SdfLayerOffset::SdfLayerOffset(&v24, 0.0, 1.0);
    pxrInternal__aapl__pxrReserved__::UsdReferences::AddInternalReference();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v18);
    if ((v22 & 7) != 0)
    {
      atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v21);
    v16 = v20;
    if (!v20)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = "CoreRealityIO/mtlxToUsdShade.cpp";
  v20 = "_AddReference";
  v21 = 603;
  v22 = "UsdPrim realityio::mtlx::(anonymous namespace)::_AddReference(const UsdPrim &, const SdfPath &)";
  v23 = 0;
  Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText(a3);
  v12 = v25;
  if (!v25 || (*(v25 + 57) & 8) != 0)
  {
    pxrInternal__aapl__pxrReserved__::Usd_ThrowExpiredPrimAccessError(v25, v10);
  }

  v13 = **(v12 + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v13)
  {
    v14 = (v13 + 16);
    if (*(v13 + 39) < 0)
    {
      v14 = *v14;
    }
  }

  else
  {
    v14 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v19, "Can't create node graph at <%s>; a '%s' already exists", Text, v14);
  *this = 1;
  *(this + 1) = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
  *(this + 3) = 0;
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

LABEL_36:
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::~Sdf_PathNodeHandleImpl(&v26);
  v16 = v25;
  if (v25)
  {
LABEL_28:
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v16);
  }

LABEL_29:
  v17 = v30;
  if (v30)
  {
    if (atomic_fetch_add_explicit((v30 + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*v17 + 8))(v17);
    }
  }
}